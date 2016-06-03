unit AppManifestXML;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ 前方宣言 }

  IXMLAssemblyType = interface;
  IXMLAssemblyIdentityType = interface;
  IXMLDependencyType = interface;
  IXMLDependentAssemblyType = interface;
  IXMLTrustInfoType = interface;
  IXMLSecurityType = interface;
  IXMLRequestedPrivilegesType = interface;
  IXMLRequestedExecutionLevelType = interface;
  IXMLCompatibilityType = interface;
  IXMLApplicationType = interface;
  IXMLSupportedOSType = interface;

{ IXMLAssemblyType }

  IXMLAssemblyType = interface(IXMLNode)
    ['{74560E80-DF1B-4393-8C82-849258083B4D}']
    { プロパティ参照関数 }
    function Get_Xmlns: UnicodeString;
    function Get_ManifestVersion: UnicodeString;
    function Get_AssemblyIdentity: IXMLAssemblyIdentityType;
    function Get_Description: Integer;
    function Get_Dependency: IXMLDependencyType;
    function Get_TrustInfo: IXMLTrustInfoType;
    function Get_Compatibility: IXMLCompatibilityType;
    procedure Set_Xmlns(Value: UnicodeString);
    procedure Set_ManifestVersion(Value: UnicodeString);
    procedure Set_Description(Value: Integer);
    { メソッドとプロパティ }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property ManifestVersion: UnicodeString read Get_ManifestVersion write Set_ManifestVersion;
    property AssemblyIdentity: IXMLAssemblyIdentityType read Get_AssemblyIdentity;
    property Description: Integer read Get_Description write Set_Description;
    property Dependency: IXMLDependencyType read Get_Dependency;
    property TrustInfo: IXMLTrustInfoType read Get_TrustInfo;
    property Compatibility: IXMLCompatibilityType read Get_Compatibility;
  end;

{ IXMLAssemblyIdentityType }

  IXMLAssemblyIdentityType = interface(IXMLNode)
    ['{71DC963C-87FA-4568-B352-F029B274ECA3}']
    { プロパティ参照関数 }
    function Get_Version: UnicodeString;
    function Get_ProcessorArchitecture: Integer;
    function Get_Name: Integer;
    function Get_Type_: Integer;
    function Get_PublicKeyToken: Integer;
    function Get_Language: Integer;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_ProcessorArchitecture(Value: Integer);
    procedure Set_Name(Value: Integer);
    procedure Set_Type_(Value: Integer);
    procedure Set_PublicKeyToken(Value: Integer);
    procedure Set_Language(Value: Integer);
    { メソッドとプロパティ }
    property Version: UnicodeString read Get_Version write Set_Version;
    property ProcessorArchitecture: Integer read Get_ProcessorArchitecture write Set_ProcessorArchitecture;
    property Name: Integer read Get_Name write Set_Name;
    property Type_: Integer read Get_Type_ write Set_Type_;
    property PublicKeyToken: Integer read Get_PublicKeyToken write Set_PublicKeyToken;
    property Language: Integer read Get_Language write Set_Language;
  end;

{ IXMLDependencyType }

  IXMLDependencyType = interface(IXMLNode)
    ['{8C9F078E-00CA-496B-A1BA-52F1FD839C70}']
    { プロパティ参照関数 }
    function Get_DependentAssembly: IXMLDependentAssemblyType;
    { メソッドとプロパティ }
    property DependentAssembly: IXMLDependentAssemblyType read Get_DependentAssembly;
  end;

{ IXMLDependentAssemblyType }

  IXMLDependentAssemblyType = interface(IXMLNode)
    ['{B9004C27-7B68-4B12-945D-4463B9BC2214}']
    { プロパティ参照関数 }
    function Get_AssemblyIdentity: IXMLAssemblyIdentityType;
    { メソッドとプロパティ }
    property AssemblyIdentity: IXMLAssemblyIdentityType read Get_AssemblyIdentity;
  end;

{ IXMLTrustInfoType }

  IXMLTrustInfoType = interface(IXMLNode)
    ['{3FD7030D-D7B0-4E62-B12C-31A245D332F3}']
    { プロパティ参照関数 }
    function Get_Xmlns: UnicodeString;
    function Get_Security: IXMLSecurityType;
    procedure Set_Xmlns(Value: UnicodeString);
    { メソッドとプロパティ }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Security: IXMLSecurityType read Get_Security;
  end;

{ IXMLSecurityType }

  IXMLSecurityType = interface(IXMLNode)
    ['{15657C78-BB20-4454-8A50-6EE15BBFC86F}']
    { プロパティ参照関数 }
    function Get_RequestedPrivileges: IXMLRequestedPrivilegesType;
    { メソッドとプロパティ }
    property RequestedPrivileges: IXMLRequestedPrivilegesType read Get_RequestedPrivileges;
  end;

{ IXMLRequestedPrivilegesType }

  IXMLRequestedPrivilegesType = interface(IXMLNode)
    ['{E8ECC4EA-6476-4994-BF12-65CAA1AED7EE}']
    { プロパティ参照関数 }
    function Get_RequestedExecutionLevel: IXMLRequestedExecutionLevelType;
    { メソッドとプロパティ }
    property RequestedExecutionLevel: IXMLRequestedExecutionLevelType read Get_RequestedExecutionLevel;
  end;

{ IXMLRequestedExecutionLevelType }

  IXMLRequestedExecutionLevelType = interface(IXMLNode)
    ['{B1D11EDB-A929-4E81-A306-FEA6B74A03BF}']
    { プロパティ参照関数 }
    function Get_Level: Integer;
    function Get_UiAccess: Integer;
    procedure Set_Level(Value: Integer);
    procedure Set_UiAccess(Value: Integer);
    { メソッドとプロパティ }
    property Level: Integer read Get_Level write Set_Level;
    property UiAccess: Integer read Get_UiAccess write Set_UiAccess;
  end;

{ IXMLCompatibilityType }

  IXMLCompatibilityType = interface(IXMLNode)
    ['{EBFBF1B3-1A0B-4E95-BE9F-4C222FDDA469}']
    { プロパティ参照関数 }
    function Get_Xmlns: UnicodeString;
    function Get_Application: IXMLApplicationType;
    procedure Set_Xmlns(Value: UnicodeString);
    { メソッドとプロパティ }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property Application: IXMLApplicationType read Get_Application;
  end;

{ IXMLApplicationType }

  IXMLApplicationType = interface(IXMLNodeCollection)
    ['{B45FFF24-37E6-4E10-9C81-21B6423E703C}']
    { プロパティ参照関数 }
    function Get_SupportedOS(Index: Integer): IXMLSupportedOSType;
    { メソッドとプロパティ }
    function Add: IXMLSupportedOSType;
    function Insert(const Index: Integer): IXMLSupportedOSType;
    property SupportedOS[Index: Integer]: IXMLSupportedOSType read Get_SupportedOS; default;
  end;

{ IXMLSupportedOSType }

  IXMLSupportedOSType = interface(IXMLNode)
    ['{3CECD8F6-B895-4FDA-A589-6DF09411A19A}']
    { プロパティ参照関数 }
    function Get_Id: Integer;
    procedure Set_Id(Value: Integer);
    { メソッドとプロパティ }
    property Id: Integer read Get_Id write Set_Id;
  end;

{ 前方宣言 }

  TXMLAssemblyType = class;
  TXMLAssemblyIdentityType = class;
  TXMLDependencyType = class;
  TXMLDependentAssemblyType = class;
  TXMLTrustInfoType = class;
  TXMLSecurityType = class;
  TXMLRequestedPrivilegesType = class;
  TXMLRequestedExecutionLevelType = class;
  TXMLCompatibilityType = class;
  TXMLApplicationType = class;
  TXMLSupportedOSType = class;

{ TXMLAssemblyType }

  TXMLAssemblyType = class(TXMLNode, IXMLAssemblyType)
  protected
    { IXMLAssemblyType }
    function Get_Xmlns: UnicodeString;
    function Get_ManifestVersion: UnicodeString;
    function Get_AssemblyIdentity: IXMLAssemblyIdentityType;
    function Get_Description: Integer;
    function Get_Dependency: IXMLDependencyType;
    function Get_TrustInfo: IXMLTrustInfoType;
    function Get_Compatibility: IXMLCompatibilityType;
    procedure Set_Xmlns(Value: UnicodeString);
    procedure Set_ManifestVersion(Value: UnicodeString);
    procedure Set_Description(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAssemblyIdentityType }

  TXMLAssemblyIdentityType = class(TXMLNode, IXMLAssemblyIdentityType)
  protected
    { IXMLAssemblyIdentityType }
    function Get_Version: UnicodeString;
    function Get_ProcessorArchitecture: Integer;
    function Get_Name: Integer;
    function Get_Type_: Integer;
    function Get_PublicKeyToken: Integer;
    function Get_Language: Integer;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_ProcessorArchitecture(Value: Integer);
    procedure Set_Name(Value: Integer);
    procedure Set_Type_(Value: Integer);
    procedure Set_PublicKeyToken(Value: Integer);
    procedure Set_Language(Value: Integer);
  end;

{ TXMLDependencyType }

  TXMLDependencyType = class(TXMLNode, IXMLDependencyType)
  protected
    { IXMLDependencyType }
    function Get_DependentAssembly: IXMLDependentAssemblyType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDependentAssemblyType }

  TXMLDependentAssemblyType = class(TXMLNode, IXMLDependentAssemblyType)
  protected
    { IXMLDependentAssemblyType }
    function Get_AssemblyIdentity: IXMLAssemblyIdentityType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTrustInfoType }

  TXMLTrustInfoType = class(TXMLNode, IXMLTrustInfoType)
  protected
    { IXMLTrustInfoType }
    function Get_Xmlns: UnicodeString;
    function Get_Security: IXMLSecurityType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSecurityType }

  TXMLSecurityType = class(TXMLNode, IXMLSecurityType)
  protected
    { IXMLSecurityType }
    function Get_RequestedPrivileges: IXMLRequestedPrivilegesType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRequestedPrivilegesType }

  TXMLRequestedPrivilegesType = class(TXMLNode, IXMLRequestedPrivilegesType)
  protected
    { IXMLRequestedPrivilegesType }
    function Get_RequestedExecutionLevel: IXMLRequestedExecutionLevelType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRequestedExecutionLevelType }

  TXMLRequestedExecutionLevelType = class(TXMLNode, IXMLRequestedExecutionLevelType)
  protected
    { IXMLRequestedExecutionLevelType }
    function Get_Level: Integer;
    function Get_UiAccess: Integer;
    procedure Set_Level(Value: Integer);
    procedure Set_UiAccess(Value: Integer);
  end;

{ TXMLCompatibilityType }

  TXMLCompatibilityType = class(TXMLNode, IXMLCompatibilityType)
  protected
    { IXMLCompatibilityType }
    function Get_Xmlns: UnicodeString;
    function Get_Application: IXMLApplicationType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLApplicationType }

  TXMLApplicationType = class(TXMLNodeCollection, IXMLApplicationType)
  protected
    { IXMLApplicationType }
    function Get_SupportedOS(Index: Integer): IXMLSupportedOSType;
    function Add: IXMLSupportedOSType;
    function Insert(const Index: Integer): IXMLSupportedOSType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSupportedOSType }

  TXMLSupportedOSType = class(TXMLNode, IXMLSupportedOSType)
  protected
    { IXMLSupportedOSType }
    function Get_Id: Integer;
    procedure Set_Id(Value: Integer);
  end;

{ グローバル関数 }

function Getassembly(Doc: IXMLDocument): IXMLAssemblyType;
function Loadassembly(const FileName: string): IXMLAssemblyType;
function Newassembly: IXMLAssemblyType;

const
  TargetNamespace = 'urn:schemas-microsoft-com:asm.v1';

implementation

{ グローバル関数 }

function Getassembly(Doc: IXMLDocument): IXMLAssemblyType;
begin
  Result := Doc.GetDocBinding('assembly', TXMLAssemblyType, TargetNamespace) as IXMLAssemblyType;
end;

function Loadassembly(const FileName: string): IXMLAssemblyType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('assembly', TXMLAssemblyType, TargetNamespace) as IXMLAssemblyType;
end;

function Newassembly: IXMLAssemblyType;
begin
  Result := NewXMLDocument.GetDocBinding('assembly', TXMLAssemblyType, TargetNamespace) as IXMLAssemblyType;
end;

{ TXMLAssemblyType }

procedure TXMLAssemblyType.AfterConstruction;
begin
  RegisterChildNode('assemblyIdentity', TXMLAssemblyIdentityType);
  RegisterChildNode('dependency', TXMLDependencyType);
  RegisterChildNode('trustInfo', TXMLTrustInfoType);
  RegisterChildNode('compatibility', TXMLCompatibilityType);
  inherited;
end;

function TXMLAssemblyType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLAssemblyType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLAssemblyType.Get_ManifestVersion: UnicodeString;
begin
  Result := AttributeNodes['manifestVersion'].Text;
end;

procedure TXMLAssemblyType.Set_ManifestVersion(Value: UnicodeString);
begin
  SetAttribute('manifestVersion', Value);
end;

function TXMLAssemblyType.Get_AssemblyIdentity: IXMLAssemblyIdentityType;
begin
  Result := ChildNodes['assemblyIdentity'] as IXMLAssemblyIdentityType;
end;

function TXMLAssemblyType.Get_Description: Integer;
begin
  Result := ChildNodes['description'].NodeValue;
end;

procedure TXMLAssemblyType.Set_Description(Value: Integer);
begin
  ChildNodes['description'].NodeValue := Value;
end;

function TXMLAssemblyType.Get_Dependency: IXMLDependencyType;
begin
  Result := ChildNodes['dependency'] as IXMLDependencyType;
end;

function TXMLAssemblyType.Get_TrustInfo: IXMLTrustInfoType;
begin
  Result := ChildNodes['trustInfo'] as IXMLTrustInfoType;
end;

function TXMLAssemblyType.Get_Compatibility: IXMLCompatibilityType;
begin
  Result := ChildNodes['compatibility'] as IXMLCompatibilityType;
end;

{ TXMLAssemblyIdentityType }

function TXMLAssemblyIdentityType.Get_Version: UnicodeString;
begin
  Result := AttributeNodes['version'].Text;
end;

procedure TXMLAssemblyIdentityType.Set_Version(Value: UnicodeString);
begin
  SetAttribute('version', Value);
end;

function TXMLAssemblyIdentityType.Get_ProcessorArchitecture: Integer;
begin
  Result := AttributeNodes['processorArchitecture'].NodeValue;
end;

procedure TXMLAssemblyIdentityType.Set_ProcessorArchitecture(Value: Integer);
begin
  SetAttribute('processorArchitecture', Value);
end;

function TXMLAssemblyIdentityType.Get_Name: Integer;
begin
  Result := AttributeNodes['name'].NodeValue;
end;

procedure TXMLAssemblyIdentityType.Set_Name(Value: Integer);
begin
  SetAttribute('name', Value);
end;

function TXMLAssemblyIdentityType.Get_Type_: Integer;
begin
  Result := AttributeNodes['type'].NodeValue;
end;

procedure TXMLAssemblyIdentityType.Set_Type_(Value: Integer);
begin
  SetAttribute('type', Value);
end;

function TXMLAssemblyIdentityType.Get_PublicKeyToken: Integer;
begin
  Result := AttributeNodes['publicKeyToken'].NodeValue;
end;

procedure TXMLAssemblyIdentityType.Set_PublicKeyToken(Value: Integer);
begin
  SetAttribute('publicKeyToken', Value);
end;

function TXMLAssemblyIdentityType.Get_Language: Integer;
begin
  Result := AttributeNodes['language'].NodeValue;
end;

procedure TXMLAssemblyIdentityType.Set_Language(Value: Integer);
begin
  SetAttribute('language', Value);
end;

{ TXMLDependencyType }

procedure TXMLDependencyType.AfterConstruction;
begin
  RegisterChildNode('dependentAssembly', TXMLDependentAssemblyType);
  inherited;
end;

function TXMLDependencyType.Get_DependentAssembly: IXMLDependentAssemblyType;
begin
  Result := ChildNodes['dependentAssembly'] as IXMLDependentAssemblyType;
end;

{ TXMLDependentAssemblyType }

procedure TXMLDependentAssemblyType.AfterConstruction;
begin
  RegisterChildNode('assemblyIdentity', TXMLAssemblyIdentityType);
  inherited;
end;

function TXMLDependentAssemblyType.Get_AssemblyIdentity: IXMLAssemblyIdentityType;
begin
  Result := ChildNodes['assemblyIdentity'] as IXMLAssemblyIdentityType;
end;

{ TXMLTrustInfoType }

procedure TXMLTrustInfoType.AfterConstruction;
begin
  RegisterChildNode('security', TXMLSecurityType);
  inherited;
end;

function TXMLTrustInfoType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLTrustInfoType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLTrustInfoType.Get_Security: IXMLSecurityType;
begin
  Result := ChildNodes['security'] as IXMLSecurityType;
end;

{ TXMLSecurityType }

procedure TXMLSecurityType.AfterConstruction;
begin
  RegisterChildNode('requestedPrivileges', TXMLRequestedPrivilegesType);
  inherited;
end;

function TXMLSecurityType.Get_RequestedPrivileges: IXMLRequestedPrivilegesType;
begin
  Result := ChildNodes['requestedPrivileges'] as IXMLRequestedPrivilegesType;
end;

{ TXMLRequestedPrivilegesType }

procedure TXMLRequestedPrivilegesType.AfterConstruction;
begin
  RegisterChildNode('requestedExecutionLevel', TXMLRequestedExecutionLevelType);
  inherited;
end;

function TXMLRequestedPrivilegesType.Get_RequestedExecutionLevel: IXMLRequestedExecutionLevelType;
begin
  Result := ChildNodes['requestedExecutionLevel'] as IXMLRequestedExecutionLevelType;
end;

{ TXMLRequestedExecutionLevelType }

function TXMLRequestedExecutionLevelType.Get_Level: Integer;
begin
  Result := AttributeNodes['level'].NodeValue;
end;

procedure TXMLRequestedExecutionLevelType.Set_Level(Value: Integer);
begin
  SetAttribute('level', Value);
end;

function TXMLRequestedExecutionLevelType.Get_UiAccess: Integer;
begin
  Result := AttributeNodes['uiAccess'].NodeValue;
end;

procedure TXMLRequestedExecutionLevelType.Set_UiAccess(Value: Integer);
begin
  SetAttribute('uiAccess', Value);
end;

{ TXMLCompatibilityType }

procedure TXMLCompatibilityType.AfterConstruction;
begin
  RegisterChildNode('application', TXMLApplicationType);
  inherited;
end;

function TXMLCompatibilityType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLCompatibilityType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLCompatibilityType.Get_Application: IXMLApplicationType;
begin
  Result := ChildNodes['application'] as IXMLApplicationType;
end;

{ TXMLApplicationType }

procedure TXMLApplicationType.AfterConstruction;
begin
  RegisterChildNode('supportedOS', TXMLSupportedOSType);
  ItemTag := 'supportedOS';
  ItemInterface := IXMLSupportedOSType;
  inherited;
end;

function TXMLApplicationType.Get_SupportedOS(Index: Integer): IXMLSupportedOSType;
begin
  Result := List[Index] as IXMLSupportedOSType;
end;

function TXMLApplicationType.Add: IXMLSupportedOSType;
begin
  Result := AddItem(-1) as IXMLSupportedOSType;
end;

function TXMLApplicationType.Insert(const Index: Integer): IXMLSupportedOSType;
begin
  Result := AddItem(Index) as IXMLSupportedOSType;
end;

{ TXMLSupportedOSType }

function TXMLSupportedOSType.Get_Id: Integer;
begin
  Result := AttributeNodes['Id'].NodeValue;
end;

procedure TXMLSupportedOSType.Set_Id(Value: Integer);
begin
  SetAttribute('Id', Value);
end;

end.