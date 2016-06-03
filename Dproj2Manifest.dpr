program Dproj2Manifest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  ActiveX,
  IOUtils,
  Classes,
  Windows,
  AppManifestXML in 'AppManifestXML.pas',
  DprojXML in 'DprojXML.pas',
  XMLDoc,
  XMLIntf;

function GetParamList: TStringList;
var
  ii: Integer;
begin
  Result := nil;
  Result := TStringList.Create();
  for ii := 0 to ParamCount do
  begin
    Result.Add(ParamStr(ii));
  end;
end;

function TryGetDProjFilePath(const ParamList: TStringList; var Path: string): Boolean;
var
  Idx: Integer;
begin
  Result := False;
  Path := EmptyStr;
  Idx := ParamList.IndexOf('-dproj');
  if Idx < 0 then
  begin
    Exit();
  end;

  if ParamList.Count < (Idx + 2) then
  begin
    Exit();
  end;

  Result := TFile.Exists(ParamList[Idx + 1]);
  if Result then
  begin
    Path := ParamList[Idx + 1];
  end;
end;

function TryGetManifestFilePath(const ParamList: TStringList; var Path: string): Boolean;
var
  Idx: Integer;
begin
  Result := False;
  Path := EmptyStr;
  Idx := ParamList.IndexOf('-manifest');
  if Idx < 0 then
  begin
    Exit();
  end;

  if ParamList.Count < (Idx + 2) then
  begin
    Exit();
  end;

  Result := TFile.Exists(ParamList[Idx + 1]);
  if Result then
  begin
    Path := ParamList[Idx + 1];
  end;
end;

procedure SyncVersionInfo(const FromDprojFile: string; const ToManifestFile: string);
var
  DprojXML: TXMLDocument;
  ManifestXML: TXMLDocument;
  Dproj: IXMLProjectType;
  Manifest: IXMLAssemblyType;
  CurrentVerInfo: IXMLVersionInfoKeysType;
  ii: Integer;
begin
  Dproj := nil;
  Manifest := nil;
  CurrentVerInfo := nil;

  DprojXML := TXMLDocument.Create(FromDprojFile);
  ManifestXML := TXMLDocument.Create(ToManifestFile);

  Dproj := GetProject(DprojXML as IXMLDocument);
  Manifest := Getassembly(ManifestXML as IXMLDocument);
  for ii := 0 to Dproj.ProjectExtensions.BorlandProject.DelphiPersonality.VersionInfoKeys.ChildNodes.Count - 1 do
  begin
    CurrentVerInfo := Dproj.ProjectExtensions.BorlandProject.DelphiPersonality.VersionInfoKeys.ChildNodes.Get(ii) as IXMLVersionInfoKeysType;
    if SameText(CurrentVerInfo.Attributes['Name'], 'FileVersion')
       and (not SameText(Manifest.AssemblyIdentity.Version, CurrentVerInfo.NodeValue))then
    begin
      Manifest.AssemblyIdentity.Version := CurrentVerInfo.NodeValue;
      ManifestXML.SaveToFile();
      Break;
    end;
  end;
end;

var
  ParamList: TStringList = nil;
  DprojPath: string = '';
  ManifestPath: string = '';
begin
  try
    CoInitialize(nil);
    try
      ParamList := GetParamList;

      if not (TryGetDProjFilePath(ParamList, DprojPath)) then
      begin
        ExitCode := 1;
        Writeln('Can''t find .dproj file');
        Exit();
      end;

      if not (TryGetManifestFilePath(ParamList, ManifestPath)) then
      begin
        ExitCode := 2;
        Writeln('Can''t find .manifest file');
        Exit();
      end;

      SyncVersionInfo(DprojPath, ManifestPath);
    finally
      FreeAndNil(ParamList);
      CoUninitialize();
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

