unit DprojXML;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ 前方宣言 }

  IXMLProjectType = interface;
  IXMLPropertyGroupType = interface;
  IXMLPropertyGroupTypeList = interface;
  IXMLConfigType = interface;
  IXMLItemGroupType = interface;
  IXMLDelphiCompileType = interface;
  IXMLRcCompileType = interface;
  IXMLDCCReferenceType = interface;
  IXMLDCCReferenceTypeList = interface;
  IXMLBuildConfigurationType = interface;
  IXMLBuildConfigurationTypeList = interface;
  IXMLImportType = interface;
  IXMLProjectExtensionsType = interface;
  IXMLBorlandProjectType = interface;
  IXMLDelphiPersonalityType = interface;
  IXMLSourceType = interface;
  IXMLParametersType = interface;
  IXMLVersionInfoType = interface;
  IXMLVersionInfoKeysType = interface;
  IXMLExcluded_PackagesType = interface;
  IXMLDCCReferenceType2 = interface;
  IXMLVersionInfoKeysType2 = interface;
  IXMLIntegerList = interface;

{ IXMLProjectType }

  IXMLProjectType = interface(IXMLNode)
    ['{77F932D1-4222-4AE8-82AC-2466695AE89C}']
    { プロパティ参照関数 }
    function Get_Xmlns: UnicodeString;
    function Get_PropertyGroup: IXMLPropertyGroupTypeList;
    function Get_ItemGroup: IXMLItemGroupType;
    function Get_Import: IXMLImportType;
    function Get_ProjectExtensions: IXMLProjectExtensionsType;
    procedure Set_Xmlns(Value: UnicodeString);
    { メソッドとプロパティ }
    property Xmlns: UnicodeString read Get_Xmlns write Set_Xmlns;
    property PropertyGroup: IXMLPropertyGroupTypeList read Get_PropertyGroup;
    property ItemGroup: IXMLItemGroupType read Get_ItemGroup;
    property Import: IXMLImportType read Get_Import;
    property ProjectExtensions: IXMLProjectExtensionsType read Get_ProjectExtensions;
  end;

{ IXMLPropertyGroupType }

  IXMLPropertyGroupType = interface(IXMLNode)
    ['{59A8DCC7-AEEF-4626-9784-E2E1F8951494}']
    { プロパティ参照関数 }
    function Get_Condition: Integer;
    function Get_ProjectGuid: Integer;
    function Get_ProjectVersion: UnicodeString;
    function Get_MainSource: UnicodeString;
    function Get_Config: IXMLConfigType;
    function Get_DCC_DCCCompiler: Integer;
    function Get_Base: Integer;
    function Get_Cfg_1: Integer;
    function Get_CfgParent: Integer;
    function Get_Cfg_2: Integer;
    function Get_DCC_DcuOutput: UnicodeString;
    function Get_DCC_UsePackage: Integer;
    function Get_DCC_MapFile: Integer;
    function Get_DCC_ExeOutput: UnicodeString;
    function Get_DCC_Define: Integer;
    function Get_DCC_DependencyCheckOutputName: UnicodeString;
    function Get_DCC_ImageBase: Integer;
    function Get_DCC_UnitAlias: Integer;
    function Get_DCC_Platform: Integer;
    function Get_DCC_E: Integer;
    function Get_DCC_N: Integer;
    function Get_DCC_S: Integer;
    function Get_DCC_F: Integer;
    function Get_DCC_K: Integer;
    function Get_DCC_LocalDebugSymbols: Integer;
    function Get_DCC_SymbolReferenceInfo: Integer;
    function Get_DCC_DebugInformation: Integer;
    procedure Set_Condition(Value: Integer);
    procedure Set_ProjectGuid(Value: Integer);
    procedure Set_ProjectVersion(Value: UnicodeString);
    procedure Set_MainSource(Value: UnicodeString);
    procedure Set_DCC_DCCCompiler(Value: Integer);
    procedure Set_Base(Value: Integer);
    procedure Set_Cfg_1(Value: Integer);
    procedure Set_CfgParent(Value: Integer);
    procedure Set_Cfg_2(Value: Integer);
    procedure Set_DCC_DcuOutput(Value: UnicodeString);
    procedure Set_DCC_UsePackage(Value: Integer);
    procedure Set_DCC_MapFile(Value: Integer);
    procedure Set_DCC_ExeOutput(Value: UnicodeString);
    procedure Set_DCC_Define(Value: Integer);
    procedure Set_DCC_DependencyCheckOutputName(Value: UnicodeString);
    procedure Set_DCC_ImageBase(Value: Integer);
    procedure Set_DCC_UnitAlias(Value: Integer);
    procedure Set_DCC_Platform(Value: Integer);
    procedure Set_DCC_E(Value: Integer);
    procedure Set_DCC_N(Value: Integer);
    procedure Set_DCC_S(Value: Integer);
    procedure Set_DCC_F(Value: Integer);
    procedure Set_DCC_K(Value: Integer);
    procedure Set_DCC_LocalDebugSymbols(Value: Integer);
    procedure Set_DCC_SymbolReferenceInfo(Value: Integer);
    procedure Set_DCC_DebugInformation(Value: Integer);
    { メソッドとプロパティ }
    property Condition: Integer read Get_Condition write Set_Condition;
    property ProjectGuid: Integer read Get_ProjectGuid write Set_ProjectGuid;
    property ProjectVersion: UnicodeString read Get_ProjectVersion write Set_ProjectVersion;
    property MainSource: UnicodeString read Get_MainSource write Set_MainSource;
    property Config: IXMLConfigType read Get_Config;
    property DCC_DCCCompiler: Integer read Get_DCC_DCCCompiler write Set_DCC_DCCCompiler;
    property Base: Integer read Get_Base write Set_Base;
    property Cfg_1: Integer read Get_Cfg_1 write Set_Cfg_1;
    property CfgParent: Integer read Get_CfgParent write Set_CfgParent;
    property Cfg_2: Integer read Get_Cfg_2 write Set_Cfg_2;
    property DCC_DcuOutput: UnicodeString read Get_DCC_DcuOutput write Set_DCC_DcuOutput;
    property DCC_UsePackage: Integer read Get_DCC_UsePackage write Set_DCC_UsePackage;
    property DCC_MapFile: Integer read Get_DCC_MapFile write Set_DCC_MapFile;
    property DCC_ExeOutput: UnicodeString read Get_DCC_ExeOutput write Set_DCC_ExeOutput;
    property DCC_Define: Integer read Get_DCC_Define write Set_DCC_Define;
    property DCC_DependencyCheckOutputName: UnicodeString read Get_DCC_DependencyCheckOutputName write Set_DCC_DependencyCheckOutputName;
    property DCC_ImageBase: Integer read Get_DCC_ImageBase write Set_DCC_ImageBase;
    property DCC_UnitAlias: Integer read Get_DCC_UnitAlias write Set_DCC_UnitAlias;
    property DCC_Platform: Integer read Get_DCC_Platform write Set_DCC_Platform;
    property DCC_E: Integer read Get_DCC_E write Set_DCC_E;
    property DCC_N: Integer read Get_DCC_N write Set_DCC_N;
    property DCC_S: Integer read Get_DCC_S write Set_DCC_S;
    property DCC_F: Integer read Get_DCC_F write Set_DCC_F;
    property DCC_K: Integer read Get_DCC_K write Set_DCC_K;
    property DCC_LocalDebugSymbols: Integer read Get_DCC_LocalDebugSymbols write Set_DCC_LocalDebugSymbols;
    property DCC_SymbolReferenceInfo: Integer read Get_DCC_SymbolReferenceInfo write Set_DCC_SymbolReferenceInfo;
    property DCC_DebugInformation: Integer read Get_DCC_DebugInformation write Set_DCC_DebugInformation;
  end;

{ IXMLPropertyGroupTypeList }

  IXMLPropertyGroupTypeList = interface(IXMLNodeCollection)
    ['{EF3933F0-DD23-474D-AE49-BE3276746FFA}']
    { メソッドとプロパティ }
    function Add: IXMLPropertyGroupType;
    function Insert(const Index: Integer): IXMLPropertyGroupType;

    function Get_Item(Index: Integer): IXMLPropertyGroupType;
    property Items[Index: Integer]: IXMLPropertyGroupType read Get_Item; default;
  end;

{ IXMLConfigType }

  IXMLConfigType = interface(IXMLNode)
    ['{B683B876-7C08-4B26-8462-CB7A7F72BB5B}']
    { プロパティ参照関数 }
    function Get_Condition: Integer;
    procedure Set_Condition(Value: Integer);
    { メソッドとプロパティ }
    property Condition: Integer read Get_Condition write Set_Condition;
  end;

{ IXMLItemGroupType }

  IXMLItemGroupType = interface(IXMLNode)
    ['{5803BE81-2996-4EC8-87A3-853FDEE3F55E}']
    { プロパティ参照関数 }
    function Get_DelphiCompile: IXMLDelphiCompileType;
    function Get_RcCompile: IXMLRcCompileType;
    function Get_DCCReference: IXMLDCCReferenceTypeList;
    function Get_BuildConfiguration: IXMLBuildConfigurationTypeList;
    { メソッドとプロパティ }
    property DelphiCompile: IXMLDelphiCompileType read Get_DelphiCompile;
    property RcCompile: IXMLRcCompileType read Get_RcCompile;
    property DCCReference: IXMLDCCReferenceTypeList read Get_DCCReference;
    property BuildConfiguration: IXMLBuildConfigurationTypeList read Get_BuildConfiguration;
  end;

{ IXMLDelphiCompileType }

  IXMLDelphiCompileType = interface(IXMLNode)
    ['{87D43353-E050-4943-B0F7-FF6038F2FEDD}']
    { プロパティ参照関数 }
    function Get_Include: UnicodeString;
    function Get_MainSource: Integer;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_MainSource(Value: Integer);
    { メソッドとプロパティ }
    property Include: UnicodeString read Get_Include write Set_Include;
    property MainSource: Integer read Get_MainSource write Set_MainSource;
  end;

{ IXMLRcCompileType }

  IXMLRcCompileType = interface(IXMLNode)
    ['{1E3F7BE4-24BE-4044-9A50-A6FDA720D9B9}']
    { プロパティ参照関数 }
    function Get_Include: UnicodeString;
    function Get_ContainerId: IXMLIntegerList;
    function Get_Form: UnicodeString;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_Form(Value: UnicodeString);
    { メソッドとプロパティ }
    property Include: UnicodeString read Get_Include write Set_Include;
    property ContainerId: IXMLIntegerList read Get_ContainerId;
    property Form: UnicodeString read Get_Form write Set_Form;
  end;

{ IXMLDCCReferenceType }

  IXMLDCCReferenceType = interface(IXMLNode)
    ['{B19778B2-B103-47A5-A300-8BED89D0709B}']
    { プロパティ参照関数 }
    function Get_Include: UnicodeString;
    function Get_Form: Integer;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_Form(Value: Integer);
    { メソッドとプロパティ }
    property Include: UnicodeString read Get_Include write Set_Include;
    property Form: Integer read Get_Form write Set_Form;
  end;

{ IXMLDCCReferenceTypeList }

  IXMLDCCReferenceTypeList = interface(IXMLNodeCollection)
    ['{E2A11E71-2725-499C-ADE9-AA4AAAE2C7D6}']
    { メソッドとプロパティ }
    function Add: IXMLDCCReferenceType;
    function Insert(const Index: Integer): IXMLDCCReferenceType;

    function Get_Item(Index: Integer): IXMLDCCReferenceType;
    property Items[Index: Integer]: IXMLDCCReferenceType read Get_Item; default;
  end;

{ IXMLBuildConfigurationType }

  IXMLBuildConfigurationType = interface(IXMLNode)
    ['{B98280EB-65C2-4161-A315-3903F9653F30}']
    { プロパティ参照関数 }
    function Get_Include: Integer;
    function Get_Key: Integer;
    function Get_CfgParent: Integer;
    procedure Set_Include(Value: Integer);
    procedure Set_Key(Value: Integer);
    procedure Set_CfgParent(Value: Integer);
    { メソッドとプロパティ }
    property Include: Integer read Get_Include write Set_Include;
    property Key: Integer read Get_Key write Set_Key;
    property CfgParent: Integer read Get_CfgParent write Set_CfgParent;
  end;

{ IXMLBuildConfigurationTypeList }

  IXMLBuildConfigurationTypeList = interface(IXMLNodeCollection)
    ['{2B71A9E7-80FF-4E1D-AF5A-F052F663AA92}']
    { メソッドとプロパティ }
    function Add: IXMLBuildConfigurationType;
    function Insert(const Index: Integer): IXMLBuildConfigurationType;

    function Get_Item(Index: Integer): IXMLBuildConfigurationType;
    property Items[Index: Integer]: IXMLBuildConfigurationType read Get_Item; default;
  end;

{ IXMLImportType }

  IXMLImportType = interface(IXMLNode)
    ['{298ED955-556E-48A8-A562-8350B6860AAC}']
    { プロパティ参照関数 }
    function Get_Project: UnicodeString;
    function Get_Condition: UnicodeString;
    procedure Set_Project(Value: UnicodeString);
    procedure Set_Condition(Value: UnicodeString);
    { メソッドとプロパティ }
    property Project: UnicodeString read Get_Project write Set_Project;
    property Condition: UnicodeString read Get_Condition write Set_Condition;
  end;

{ IXMLProjectExtensionsType }

  IXMLProjectExtensionsType = interface(IXMLNode)
    ['{D553DFF7-C64A-47C1-92BC-9E06D7458C02}']
    { プロパティ参照関数 }
    function Get_BorlandPersonality: UnicodeString;
    function Get_BorlandProjectType: UnicodeString;
    function Get_BorlandProject: IXMLBorlandProjectType;
    function Get_ProjectFileVersion: Integer;
    procedure Set_BorlandPersonality(Value: UnicodeString);
    procedure Set_BorlandProjectType(Value: UnicodeString);
    procedure Set_ProjectFileVersion(Value: Integer);
    { メソッドとプロパティ }
    property BorlandPersonality: UnicodeString read Get_BorlandPersonality write Set_BorlandPersonality;
    property BorlandProjectType: UnicodeString read Get_BorlandProjectType write Set_BorlandProjectType;
    property BorlandProject: IXMLBorlandProjectType read Get_BorlandProject;
    property ProjectFileVersion: Integer read Get_ProjectFileVersion write Set_ProjectFileVersion;
  end;

{ IXMLBorlandProjectType }

  IXMLBorlandProjectType = interface(IXMLNode)
    ['{93845B5E-72BF-4F9F-B1F9-485932E82AFF}']
    { プロパティ参照関数 }
    function Get_DelphiPersonality: IXMLDelphiPersonalityType;
    { メソッドとプロパティ }
    property DelphiPersonality: IXMLDelphiPersonalityType read Get_DelphiPersonality;
  end;

{ IXMLDelphiPersonalityType }

  IXMLDelphiPersonalityType = interface(IXMLNode)
    ['{0E825B7F-F193-4E8A-83CE-3780C221544D}']
    { プロパティ参照関数 }
    function Get_Source: IXMLSourceType;
    function Get_Parameters: IXMLParametersType;
    function Get_VersionInfo: IXMLVersionInfoType;
    function Get_VersionInfoKeys: IXMLVersionInfoKeysType;
    function Get_Excluded_Packages: IXMLExcluded_PackagesType;
    { メソッドとプロパティ }
    property Source: IXMLSourceType read Get_Source;
    property Parameters: IXMLParametersType read Get_Parameters;
    property VersionInfo: IXMLVersionInfoType read Get_VersionInfo;
    property VersionInfoKeys: IXMLVersionInfoKeysType read Get_VersionInfoKeys;
    property Excluded_Packages: IXMLExcluded_PackagesType read Get_Excluded_Packages;
  end;

{ IXMLSourceType }

  IXMLSourceType = interface(IXMLNode)
    ['{C52E985D-92F7-4BF3-BCD6-E17FB4B2D855}']
    { プロパティ参照関数 }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
    { メソッドとプロパティ }
    property Name: Integer read Get_Name write Set_Name;
  end;

{ IXMLParametersType }

  IXMLParametersType = interface(IXMLNode)
    ['{B7215A8B-8C89-4343-8B32-8A1CB902D59F}']
    { プロパティ参照関数 }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
    { メソッドとプロパティ }
    property Name: Integer read Get_Name write Set_Name;
  end;

{ IXMLVersionInfoType }

  IXMLVersionInfoType = interface(IXMLNode)
    ['{FE4A62A0-A32A-4F25-B24F-266C1A167CE5}']
    { プロパティ参照関数 }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
    { メソッドとプロパティ }
    property Name: Integer read Get_Name write Set_Name;
  end;

{ IXMLVersionInfoKeysType }

  IXMLVersionInfoKeysType = interface(IXMLNode)
    ['{BFDAF091-7A63-4448-82D8-06C8E4663DA5}']
    { プロパティ参照関数 }
    function Get_Name: Integer;
    function Get_VersionInfoKeys: IXMLVersionInfoKeysType;
    procedure Set_Name(Value: Integer);
    { メソッドとプロパティ }
    property Name: Integer read Get_Name write Set_Name;
    property VersionInfoKeys: IXMLVersionInfoKeysType read Get_VersionInfoKeys;
  end;

{ IXMLExcluded_PackagesType }

  IXMLExcluded_PackagesType = interface(IXMLNode)
    ['{352AAE71-6CFF-41A3-801F-5017A534D315}']
    { プロパティ参照関数 }
    function Get_Name: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
    { メソッドとプロパティ }
    property Name: UnicodeString read Get_Name write Set_Name;
  end;

{ IXMLDCCReferenceType2 }

  IXMLDCCReferenceType2 = interface(IXMLNode)
    ['{175DE5DF-2A20-41A2-915F-3C6A8FEF9E3B}']
    { プロパティ参照関数 }
    function Get_Include: UnicodeString;
    procedure Set_Include(Value: UnicodeString);
    { メソッドとプロパティ }
    property Include: UnicodeString read Get_Include write Set_Include;
  end;

{ IXMLVersionInfoKeysType2 }

  IXMLVersionInfoKeysType2 = interface(IXMLNode)
    ['{1AE9E9AA-EE04-4AAC-BF75-B0904F03A145}']
    { プロパティ参照関数 }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
    { メソッドとプロパティ }
    property Name: Integer read Get_Name write Set_Name;
  end;

{ IXMLIntegerList }

  IXMLIntegerList = interface(IXMLNodeCollection)
    ['{CC749074-99E2-4490-A419-49C617E87D63}']
    { メソッドとプロパティ }
    function Add(const Value: Integer): IXMLNode;
    function Insert(const Index: Integer; const Value: Integer): IXMLNode;

    function Get_Item(Index: Integer): Integer;
    property Items[Index: Integer]: Integer read Get_Item; default;
  end;

{ 前方宣言 }

  TXMLProjectType = class;
  TXMLPropertyGroupType = class;
  TXMLPropertyGroupTypeList = class;
  TXMLConfigType = class;
  TXMLItemGroupType = class;
  TXMLDelphiCompileType = class;
  TXMLRcCompileType = class;
  TXMLDCCReferenceType = class;
  TXMLDCCReferenceTypeList = class;
  TXMLBuildConfigurationType = class;
  TXMLBuildConfigurationTypeList = class;
  TXMLImportType = class;
  TXMLProjectExtensionsType = class;
  TXMLBorlandProjectType = class;
  TXMLDelphiPersonalityType = class;
  TXMLSourceType = class;
  TXMLParametersType = class;
  TXMLVersionInfoType = class;
  TXMLVersionInfoKeysType = class;
  TXMLExcluded_PackagesType = class;
  TXMLDCCReferenceType2 = class;
  TXMLVersionInfoKeysType2 = class;
  TXMLIntegerList = class;

{ TXMLProjectType }

  TXMLProjectType = class(TXMLNode, IXMLProjectType)
  private
    FPropertyGroup: IXMLPropertyGroupTypeList;
  protected
    { IXMLProjectType }
    function Get_Xmlns: UnicodeString;
    function Get_PropertyGroup: IXMLPropertyGroupTypeList;
    function Get_ItemGroup: IXMLItemGroupType;
    function Get_Import: IXMLImportType;
    function Get_ProjectExtensions: IXMLProjectExtensionsType;
    procedure Set_Xmlns(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPropertyGroupType }

  TXMLPropertyGroupType = class(TXMLNode, IXMLPropertyGroupType)
  protected
    { IXMLPropertyGroupType }
    function Get_Condition: Integer;
    function Get_ProjectGuid: Integer;
    function Get_ProjectVersion: UnicodeString;
    function Get_MainSource: UnicodeString;
    function Get_Config: IXMLConfigType;
    function Get_DCC_DCCCompiler: Integer;
    function Get_Base: Integer;
    function Get_Cfg_1: Integer;
    function Get_CfgParent: Integer;
    function Get_Cfg_2: Integer;
    function Get_DCC_DcuOutput: UnicodeString;
    function Get_DCC_UsePackage: Integer;
    function Get_DCC_MapFile: Integer;
    function Get_DCC_ExeOutput: UnicodeString;
    function Get_DCC_Define: Integer;
    function Get_DCC_DependencyCheckOutputName: UnicodeString;
    function Get_DCC_ImageBase: Integer;
    function Get_DCC_UnitAlias: Integer;
    function Get_DCC_Platform: Integer;
    function Get_DCC_E: Integer;
    function Get_DCC_N: Integer;
    function Get_DCC_S: Integer;
    function Get_DCC_F: Integer;
    function Get_DCC_K: Integer;
    function Get_DCC_LocalDebugSymbols: Integer;
    function Get_DCC_SymbolReferenceInfo: Integer;
    function Get_DCC_DebugInformation: Integer;
    procedure Set_Condition(Value: Integer);
    procedure Set_ProjectGuid(Value: Integer);
    procedure Set_ProjectVersion(Value: UnicodeString);
    procedure Set_MainSource(Value: UnicodeString);
    procedure Set_DCC_DCCCompiler(Value: Integer);
    procedure Set_Base(Value: Integer);
    procedure Set_Cfg_1(Value: Integer);
    procedure Set_CfgParent(Value: Integer);
    procedure Set_Cfg_2(Value: Integer);
    procedure Set_DCC_DcuOutput(Value: UnicodeString);
    procedure Set_DCC_UsePackage(Value: Integer);
    procedure Set_DCC_MapFile(Value: Integer);
    procedure Set_DCC_ExeOutput(Value: UnicodeString);
    procedure Set_DCC_Define(Value: Integer);
    procedure Set_DCC_DependencyCheckOutputName(Value: UnicodeString);
    procedure Set_DCC_ImageBase(Value: Integer);
    procedure Set_DCC_UnitAlias(Value: Integer);
    procedure Set_DCC_Platform(Value: Integer);
    procedure Set_DCC_E(Value: Integer);
    procedure Set_DCC_N(Value: Integer);
    procedure Set_DCC_S(Value: Integer);
    procedure Set_DCC_F(Value: Integer);
    procedure Set_DCC_K(Value: Integer);
    procedure Set_DCC_LocalDebugSymbols(Value: Integer);
    procedure Set_DCC_SymbolReferenceInfo(Value: Integer);
    procedure Set_DCC_DebugInformation(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPropertyGroupTypeList }

  TXMLPropertyGroupTypeList = class(TXMLNodeCollection, IXMLPropertyGroupTypeList)
  protected
    { IXMLPropertyGroupTypeList }
    function Add: IXMLPropertyGroupType;
    function Insert(const Index: Integer): IXMLPropertyGroupType;

    function Get_Item(Index: Integer): IXMLPropertyGroupType;
  end;

{ TXMLConfigType }

  TXMLConfigType = class(TXMLNode, IXMLConfigType)
  protected
    { IXMLConfigType }
    function Get_Condition: Integer;
    procedure Set_Condition(Value: Integer);
  end;

{ TXMLItemGroupType }

  TXMLItemGroupType = class(TXMLNode, IXMLItemGroupType)
  private
    FDCCReference: IXMLDCCReferenceTypeList;
    FBuildConfiguration: IXMLBuildConfigurationTypeList;
  protected
    { IXMLItemGroupType }
    function Get_DelphiCompile: IXMLDelphiCompileType;
    function Get_RcCompile: IXMLRcCompileType;
    function Get_DCCReference: IXMLDCCReferenceTypeList;
    function Get_BuildConfiguration: IXMLBuildConfigurationTypeList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDelphiCompileType }

  TXMLDelphiCompileType = class(TXMLNode, IXMLDelphiCompileType)
  protected
    { IXMLDelphiCompileType }
    function Get_Include: UnicodeString;
    function Get_MainSource: Integer;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_MainSource(Value: Integer);
  end;

{ TXMLRcCompileType }

  TXMLRcCompileType = class(TXMLNode, IXMLRcCompileType)
  private
    FContainerId: IXMLIntegerList;
  protected
    { IXMLRcCompileType }
    function Get_Include: UnicodeString;
    function Get_ContainerId: IXMLIntegerList;
    function Get_Form: UnicodeString;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_Form(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDCCReferenceType }

  TXMLDCCReferenceType = class(TXMLNode, IXMLDCCReferenceType)
  protected
    { IXMLDCCReferenceType }
    function Get_Include: UnicodeString;
    function Get_Form: Integer;
    procedure Set_Include(Value: UnicodeString);
    procedure Set_Form(Value: Integer);
  end;

{ TXMLDCCReferenceTypeList }

  TXMLDCCReferenceTypeList = class(TXMLNodeCollection, IXMLDCCReferenceTypeList)
  protected
    { IXMLDCCReferenceTypeList }
    function Add: IXMLDCCReferenceType;
    function Insert(const Index: Integer): IXMLDCCReferenceType;

    function Get_Item(Index: Integer): IXMLDCCReferenceType;
  end;

{ TXMLBuildConfigurationType }

  TXMLBuildConfigurationType = class(TXMLNode, IXMLBuildConfigurationType)
  protected
    { IXMLBuildConfigurationType }
    function Get_Include: Integer;
    function Get_Key: Integer;
    function Get_CfgParent: Integer;
    procedure Set_Include(Value: Integer);
    procedure Set_Key(Value: Integer);
    procedure Set_CfgParent(Value: Integer);
  end;

{ TXMLBuildConfigurationTypeList }

  TXMLBuildConfigurationTypeList = class(TXMLNodeCollection, IXMLBuildConfigurationTypeList)
  protected
    { IXMLBuildConfigurationTypeList }
    function Add: IXMLBuildConfigurationType;
    function Insert(const Index: Integer): IXMLBuildConfigurationType;

    function Get_Item(Index: Integer): IXMLBuildConfigurationType;
  end;

{ TXMLImportType }

  TXMLImportType = class(TXMLNode, IXMLImportType)
  protected
    { IXMLImportType }
    function Get_Project: UnicodeString;
    function Get_Condition: UnicodeString;
    procedure Set_Project(Value: UnicodeString);
    procedure Set_Condition(Value: UnicodeString);
  end;

{ TXMLProjectExtensionsType }

  TXMLProjectExtensionsType = class(TXMLNode, IXMLProjectExtensionsType)
  protected
    { IXMLProjectExtensionsType }
    function Get_BorlandPersonality: UnicodeString;
    function Get_BorlandProjectType: UnicodeString;
    function Get_BorlandProject: IXMLBorlandProjectType;
    function Get_ProjectFileVersion: Integer;
    procedure Set_BorlandPersonality(Value: UnicodeString);
    procedure Set_BorlandProjectType(Value: UnicodeString);
    procedure Set_ProjectFileVersion(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBorlandProjectType }

  TXMLBorlandProjectType = class(TXMLNode, IXMLBorlandProjectType)
  protected
    { IXMLBorlandProjectType }
    function Get_DelphiPersonality: IXMLDelphiPersonalityType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDelphiPersonalityType }

  TXMLDelphiPersonalityType = class(TXMLNode, IXMLDelphiPersonalityType)
  protected
    { IXMLDelphiPersonalityType }
    function Get_Source: IXMLSourceType;
    function Get_Parameters: IXMLParametersType;
    function Get_VersionInfo: IXMLVersionInfoType;
    function Get_VersionInfoKeys: IXMLVersionInfoKeysType;
    function Get_Excluded_Packages: IXMLExcluded_PackagesType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSourceType }

  TXMLSourceType = class(TXMLNode, IXMLSourceType)
  protected
    { IXMLSourceType }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
  end;

{ TXMLParametersType }

  TXMLParametersType = class(TXMLNode, IXMLParametersType)
  protected
    { IXMLParametersType }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
  end;

{ TXMLVersionInfoType }

  TXMLVersionInfoType = class(TXMLNode, IXMLVersionInfoType)
  protected
    { IXMLVersionInfoType }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
  end;

{ TXMLVersionInfoKeysType }

  TXMLVersionInfoKeysType = class(TXMLNode, IXMLVersionInfoKeysType)
  protected
    { IXMLVersionInfoKeysType }
    function Get_Name: Integer;
    function Get_VersionInfoKeys: IXMLVersionInfoKeysType;
    procedure Set_Name(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLExcluded_PackagesType }

  TXMLExcluded_PackagesType = class(TXMLNode, IXMLExcluded_PackagesType)
  protected
    { IXMLExcluded_PackagesType }
    function Get_Name: UnicodeString;
    procedure Set_Name(Value: UnicodeString);
  end;

{ TXMLDCCReferenceType2 }

  TXMLDCCReferenceType2 = class(TXMLNode, IXMLDCCReferenceType2)
  protected
    { IXMLDCCReferenceType2 }
    function Get_Include: UnicodeString;
    procedure Set_Include(Value: UnicodeString);
  end;

{ TXMLVersionInfoKeysType2 }

  TXMLVersionInfoKeysType2 = class(TXMLNode, IXMLVersionInfoKeysType2)
  protected
    { IXMLVersionInfoKeysType2 }
    function Get_Name: Integer;
    procedure Set_Name(Value: Integer);
  end;

{ TXMLIntegerList }

  TXMLIntegerList = class(TXMLNodeCollection, IXMLIntegerList)
  protected
    { IXMLIntegerList }
    function Add(const Value: Integer): IXMLNode;
    function Insert(const Index: Integer; const Value: Integer): IXMLNode;

    function Get_Item(Index: Integer): Integer;
  end;

{ グローバル関数 }

function GetProject(Doc: IXMLDocument): IXMLProjectType;
function LoadProject(const FileName: string): IXMLProjectType;
function NewProject: IXMLProjectType;

const
  TargetNamespace = 'http://schemas.microsoft.com/developer/msbuild/2003';

implementation

{ グローバル関数 }

function GetProject(Doc: IXMLDocument): IXMLProjectType;
begin
  Result := Doc.GetDocBinding('Project', TXMLProjectType, TargetNamespace) as IXMLProjectType;
end;

function LoadProject(const FileName: string): IXMLProjectType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Project', TXMLProjectType, TargetNamespace) as IXMLProjectType;
end;

function NewProject: IXMLProjectType;
begin
  Result := NewXMLDocument.GetDocBinding('Project', TXMLProjectType, TargetNamespace) as IXMLProjectType;
end;

{ TXMLProjectType }

procedure TXMLProjectType.AfterConstruction;
begin
  RegisterChildNode('PropertyGroup', TXMLPropertyGroupType);
  RegisterChildNode('ItemGroup', TXMLItemGroupType);
  RegisterChildNode('Import', TXMLImportType);
  RegisterChildNode('ProjectExtensions', TXMLProjectExtensionsType);
  FPropertyGroup := CreateCollection(TXMLPropertyGroupTypeList, IXMLPropertyGroupType, 'PropertyGroup') as IXMLPropertyGroupTypeList;
  inherited;
end;

function TXMLProjectType.Get_Xmlns: UnicodeString;
begin
  Result := AttributeNodes['xmlns'].Text;
end;

procedure TXMLProjectType.Set_Xmlns(Value: UnicodeString);
begin
  SetAttribute('xmlns', Value);
end;

function TXMLProjectType.Get_PropertyGroup: IXMLPropertyGroupTypeList;
begin
  Result := FPropertyGroup;
end;

function TXMLProjectType.Get_ItemGroup: IXMLItemGroupType;
begin
  Result := ChildNodes['ItemGroup'] as IXMLItemGroupType;
end;

function TXMLProjectType.Get_Import: IXMLImportType;
begin
  Result := ChildNodes['Import'] as IXMLImportType;
end;

function TXMLProjectType.Get_ProjectExtensions: IXMLProjectExtensionsType;
begin
  Result := ChildNodes['ProjectExtensions'] as IXMLProjectExtensionsType;
end;

{ TXMLPropertyGroupType }

procedure TXMLPropertyGroupType.AfterConstruction;
begin
  RegisterChildNode('Config', TXMLConfigType);
  inherited;
end;

function TXMLPropertyGroupType.Get_Condition: Integer;
begin
  Result := AttributeNodes['Condition'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_Condition(Value: Integer);
begin
  SetAttribute('Condition', Value);
end;

function TXMLPropertyGroupType.Get_ProjectGuid: Integer;
begin
  Result := ChildNodes['ProjectGuid'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_ProjectGuid(Value: Integer);
begin
  ChildNodes['ProjectGuid'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_ProjectVersion: UnicodeString;
begin
  Result := ChildNodes['ProjectVersion'].Text;
end;

procedure TXMLPropertyGroupType.Set_ProjectVersion(Value: UnicodeString);
begin
  ChildNodes['ProjectVersion'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_MainSource: UnicodeString;
begin
  Result := ChildNodes['MainSource'].Text;
end;

procedure TXMLPropertyGroupType.Set_MainSource(Value: UnicodeString);
begin
  ChildNodes['MainSource'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_Config: IXMLConfigType;
begin
  Result := ChildNodes['Config'] as IXMLConfigType;
end;

function TXMLPropertyGroupType.Get_DCC_DCCCompiler: Integer;
begin
  Result := ChildNodes['DCC_DCCCompiler'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_DCCCompiler(Value: Integer);
begin
  ChildNodes['DCC_DCCCompiler'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_Base: Integer;
begin
  Result := ChildNodes['Base'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_Base(Value: Integer);
begin
  ChildNodes['Base'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_Cfg_1: Integer;
begin
  Result := ChildNodes['Cfg_1'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_Cfg_1(Value: Integer);
begin
  ChildNodes['Cfg_1'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_CfgParent: Integer;
begin
  Result := ChildNodes['CfgParent'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_CfgParent(Value: Integer);
begin
  ChildNodes['CfgParent'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_Cfg_2: Integer;
begin
  Result := ChildNodes['Cfg_2'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_Cfg_2(Value: Integer);
begin
  ChildNodes['Cfg_2'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_DcuOutput: UnicodeString;
begin
  Result := ChildNodes['DCC_DcuOutput'].Text;
end;

procedure TXMLPropertyGroupType.Set_DCC_DcuOutput(Value: UnicodeString);
begin
  ChildNodes['DCC_DcuOutput'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_UsePackage: Integer;
begin
  Result := ChildNodes['DCC_UsePackage'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_UsePackage(Value: Integer);
begin
  ChildNodes['DCC_UsePackage'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_MapFile: Integer;
begin
  Result := ChildNodes['DCC_MapFile'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_MapFile(Value: Integer);
begin
  ChildNodes['DCC_MapFile'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_ExeOutput: UnicodeString;
begin
  Result := ChildNodes['DCC_ExeOutput'].Text;
end;

procedure TXMLPropertyGroupType.Set_DCC_ExeOutput(Value: UnicodeString);
begin
  ChildNodes['DCC_ExeOutput'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_Define: Integer;
begin
  Result := ChildNodes['DCC_Define'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_Define(Value: Integer);
begin
  ChildNodes['DCC_Define'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_DependencyCheckOutputName: UnicodeString;
begin
  Result := ChildNodes['DCC_DependencyCheckOutputName'].Text;
end;

procedure TXMLPropertyGroupType.Set_DCC_DependencyCheckOutputName(Value: UnicodeString);
begin
  ChildNodes['DCC_DependencyCheckOutputName'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_ImageBase: Integer;
begin
  Result := ChildNodes['DCC_ImageBase'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_ImageBase(Value: Integer);
begin
  ChildNodes['DCC_ImageBase'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_UnitAlias: Integer;
begin
  Result := ChildNodes['DCC_UnitAlias'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_UnitAlias(Value: Integer);
begin
  ChildNodes['DCC_UnitAlias'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_Platform: Integer;
begin
  Result := ChildNodes['DCC_Platform'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_Platform(Value: Integer);
begin
  ChildNodes['DCC_Platform'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_E: Integer;
begin
  Result := ChildNodes['DCC_E'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_E(Value: Integer);
begin
  ChildNodes['DCC_E'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_N: Integer;
begin
  Result := ChildNodes['DCC_N'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_N(Value: Integer);
begin
  ChildNodes['DCC_N'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_S: Integer;
begin
  Result := ChildNodes['DCC_S'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_S(Value: Integer);
begin
  ChildNodes['DCC_S'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_F: Integer;
begin
  Result := ChildNodes['DCC_F'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_F(Value: Integer);
begin
  ChildNodes['DCC_F'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_K: Integer;
begin
  Result := ChildNodes['DCC_K'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_K(Value: Integer);
begin
  ChildNodes['DCC_K'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_LocalDebugSymbols: Integer;
begin
  Result := ChildNodes['DCC_LocalDebugSymbols'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_LocalDebugSymbols(Value: Integer);
begin
  ChildNodes['DCC_LocalDebugSymbols'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_SymbolReferenceInfo: Integer;
begin
  Result := ChildNodes['DCC_SymbolReferenceInfo'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_SymbolReferenceInfo(Value: Integer);
begin
  ChildNodes['DCC_SymbolReferenceInfo'].NodeValue := Value;
end;

function TXMLPropertyGroupType.Get_DCC_DebugInformation: Integer;
begin
  Result := ChildNodes['DCC_DebugInformation'].NodeValue;
end;

procedure TXMLPropertyGroupType.Set_DCC_DebugInformation(Value: Integer);
begin
  ChildNodes['DCC_DebugInformation'].NodeValue := Value;
end;

{ TXMLPropertyGroupTypeList }

function TXMLPropertyGroupTypeList.Add: IXMLPropertyGroupType;
begin
  Result := AddItem(-1) as IXMLPropertyGroupType;
end;

function TXMLPropertyGroupTypeList.Insert(const Index: Integer): IXMLPropertyGroupType;
begin
  Result := AddItem(Index) as IXMLPropertyGroupType;
end;

function TXMLPropertyGroupTypeList.Get_Item(Index: Integer): IXMLPropertyGroupType;
begin
  Result := List[Index] as IXMLPropertyGroupType;
end;

{ TXMLConfigType }

function TXMLConfigType.Get_Condition: Integer;
begin
  Result := AttributeNodes['Condition'].NodeValue;
end;

procedure TXMLConfigType.Set_Condition(Value: Integer);
begin
  SetAttribute('Condition', Value);
end;

{ TXMLItemGroupType }

procedure TXMLItemGroupType.AfterConstruction;
begin
  RegisterChildNode('DelphiCompile', TXMLDelphiCompileType);
  RegisterChildNode('RcCompile', TXMLRcCompileType);
  RegisterChildNode('DCCReference', TXMLDCCReferenceType);
  RegisterChildNode('BuildConfiguration', TXMLBuildConfigurationType);
  FDCCReference := CreateCollection(TXMLDCCReferenceTypeList, IXMLDCCReferenceType, 'DCCReference') as IXMLDCCReferenceTypeList;
  FBuildConfiguration := CreateCollection(TXMLBuildConfigurationTypeList, IXMLBuildConfigurationType, 'BuildConfiguration') as IXMLBuildConfigurationTypeList;
  inherited;
end;

function TXMLItemGroupType.Get_DelphiCompile: IXMLDelphiCompileType;
begin
  Result := ChildNodes['DelphiCompile'] as IXMLDelphiCompileType;
end;

function TXMLItemGroupType.Get_RcCompile: IXMLRcCompileType;
begin
  Result := ChildNodes['RcCompile'] as IXMLRcCompileType;
end;

function TXMLItemGroupType.Get_DCCReference: IXMLDCCReferenceTypeList;
begin
  Result := FDCCReference;
end;

function TXMLItemGroupType.Get_BuildConfiguration: IXMLBuildConfigurationTypeList;
begin
  Result := FBuildConfiguration;
end;

{ TXMLDelphiCompileType }

function TXMLDelphiCompileType.Get_Include: UnicodeString;
begin
  Result := AttributeNodes['Include'].Text;
end;

procedure TXMLDelphiCompileType.Set_Include(Value: UnicodeString);
begin
  SetAttribute('Include', Value);
end;

function TXMLDelphiCompileType.Get_MainSource: Integer;
begin
  Result := ChildNodes['MainSource'].NodeValue;
end;

procedure TXMLDelphiCompileType.Set_MainSource(Value: Integer);
begin
  ChildNodes['MainSource'].NodeValue := Value;
end;

{ TXMLRcCompileType }

procedure TXMLRcCompileType.AfterConstruction;
begin
  FContainerId := CreateCollection(TXMLIntegerList, IXMLNode, 'ContainerId') as IXMLIntegerList;
  inherited;
end;

function TXMLRcCompileType.Get_Include: UnicodeString;
begin
  Result := AttributeNodes['Include'].Text;
end;

procedure TXMLRcCompileType.Set_Include(Value: UnicodeString);
begin
  SetAttribute('Include', Value);
end;

function TXMLRcCompileType.Get_ContainerId: IXMLIntegerList;
begin
  Result := FContainerId;
end;

function TXMLRcCompileType.Get_Form: UnicodeString;
begin
  Result := ChildNodes['Form'].Text;
end;

procedure TXMLRcCompileType.Set_Form(Value: UnicodeString);
begin
  ChildNodes['Form'].NodeValue := Value;
end;

{ TXMLDCCReferenceType }

function TXMLDCCReferenceType.Get_Include: UnicodeString;
begin
  Result := AttributeNodes['Include'].Text;
end;

procedure TXMLDCCReferenceType.Set_Include(Value: UnicodeString);
begin
  SetAttribute('Include', Value);
end;

function TXMLDCCReferenceType.Get_Form: Integer;
begin
  Result := ChildNodes['Form'].NodeValue;
end;

procedure TXMLDCCReferenceType.Set_Form(Value: Integer);
begin
  ChildNodes['Form'].NodeValue := Value;
end;

{ TXMLDCCReferenceTypeList }

function TXMLDCCReferenceTypeList.Add: IXMLDCCReferenceType;
begin
  Result := AddItem(-1) as IXMLDCCReferenceType;
end;

function TXMLDCCReferenceTypeList.Insert(const Index: Integer): IXMLDCCReferenceType;
begin
  Result := AddItem(Index) as IXMLDCCReferenceType;
end;

function TXMLDCCReferenceTypeList.Get_Item(Index: Integer): IXMLDCCReferenceType;
begin
  Result := List[Index] as IXMLDCCReferenceType;
end;

{ TXMLBuildConfigurationType }

function TXMLBuildConfigurationType.Get_Include: Integer;
begin
  Result := AttributeNodes['Include'].NodeValue;
end;

procedure TXMLBuildConfigurationType.Set_Include(Value: Integer);
begin
  SetAttribute('Include', Value);
end;

function TXMLBuildConfigurationType.Get_Key: Integer;
begin
  Result := ChildNodes['Key'].NodeValue;
end;

procedure TXMLBuildConfigurationType.Set_Key(Value: Integer);
begin
  ChildNodes['Key'].NodeValue := Value;
end;

function TXMLBuildConfigurationType.Get_CfgParent: Integer;
begin
  Result := ChildNodes['CfgParent'].NodeValue;
end;

procedure TXMLBuildConfigurationType.Set_CfgParent(Value: Integer);
begin
  ChildNodes['CfgParent'].NodeValue := Value;
end;

{ TXMLBuildConfigurationTypeList }

function TXMLBuildConfigurationTypeList.Add: IXMLBuildConfigurationType;
begin
  Result := AddItem(-1) as IXMLBuildConfigurationType;
end;

function TXMLBuildConfigurationTypeList.Insert(const Index: Integer): IXMLBuildConfigurationType;
begin
  Result := AddItem(Index) as IXMLBuildConfigurationType;
end;

function TXMLBuildConfigurationTypeList.Get_Item(Index: Integer): IXMLBuildConfigurationType;
begin
  Result := List[Index] as IXMLBuildConfigurationType;
end;

{ TXMLImportType }

function TXMLImportType.Get_Project: UnicodeString;
begin
  Result := AttributeNodes['Project'].Text;
end;

procedure TXMLImportType.Set_Project(Value: UnicodeString);
begin
  SetAttribute('Project', Value);
end;

function TXMLImportType.Get_Condition: UnicodeString;
begin
  Result := AttributeNodes['Condition'].Text;
end;

procedure TXMLImportType.Set_Condition(Value: UnicodeString);
begin
  SetAttribute('Condition', Value);
end;

{ TXMLProjectExtensionsType }

procedure TXMLProjectExtensionsType.AfterConstruction;
begin
  RegisterChildNode('BorlandProject', TXMLBorlandProjectType);
  inherited;
end;

function TXMLProjectExtensionsType.Get_BorlandPersonality: UnicodeString;
begin
  Result := ChildNodes['Borland.Personality'].Text;
end;

procedure TXMLProjectExtensionsType.Set_BorlandPersonality(Value: UnicodeString);
begin
  ChildNodes['Borland.Personality'].NodeValue := Value;
end;

function TXMLProjectExtensionsType.Get_BorlandProjectType: UnicodeString;
begin
  Result := ChildNodes['Borland.ProjectType'].Text;
end;

procedure TXMLProjectExtensionsType.Set_BorlandProjectType(Value: UnicodeString);
begin
  ChildNodes['Borland.ProjectType'].NodeValue := Value;
end;

function TXMLProjectExtensionsType.Get_BorlandProject: IXMLBorlandProjectType;
begin
  Result := ChildNodes['BorlandProject'] as IXMLBorlandProjectType;
end;

function TXMLProjectExtensionsType.Get_ProjectFileVersion: Integer;
begin
  Result := ChildNodes['ProjectFileVersion'].NodeValue;
end;

procedure TXMLProjectExtensionsType.Set_ProjectFileVersion(Value: Integer);
begin
  ChildNodes['ProjectFileVersion'].NodeValue := Value;
end;

{ TXMLBorlandProjectType }

procedure TXMLBorlandProjectType.AfterConstruction;
begin
  RegisterChildNode('Delphi.Personality', TXMLDelphiPersonalityType);
  inherited;
end;

function TXMLBorlandProjectType.Get_DelphiPersonality: IXMLDelphiPersonalityType;
begin
  Result := ChildNodes['Delphi.Personality'] as IXMLDelphiPersonalityType;
end;

{ TXMLDelphiPersonalityType }

procedure TXMLDelphiPersonalityType.AfterConstruction;
begin
  RegisterChildNode('Source', TXMLSourceType);
  RegisterChildNode('Parameters', TXMLParametersType);
  RegisterChildNode('VersionInfo', TXMLVersionInfoType);
  RegisterChildNode('VersionInfoKeys', TXMLVersionInfoKeysType);
  RegisterChildNode('Excluded_Packages', TXMLExcluded_PackagesType);
  inherited;
end;

function TXMLDelphiPersonalityType.Get_Source: IXMLSourceType;
begin
  Result := ChildNodes['Source'] as IXMLSourceType;
end;

function TXMLDelphiPersonalityType.Get_Parameters: IXMLParametersType;
begin
  Result := ChildNodes['Parameters'] as IXMLParametersType;
end;

function TXMLDelphiPersonalityType.Get_VersionInfo: IXMLVersionInfoType;
begin
  Result := ChildNodes['VersionInfo'] as IXMLVersionInfoType;
end;

function TXMLDelphiPersonalityType.Get_VersionInfoKeys: IXMLVersionInfoKeysType;
begin
  Result := ChildNodes['VersionInfoKeys'] as IXMLVersionInfoKeysType;
end;

function TXMLDelphiPersonalityType.Get_Excluded_Packages: IXMLExcluded_PackagesType;
begin
  Result := ChildNodes['Excluded_Packages'] as IXMLExcluded_PackagesType;
end;

{ TXMLSourceType }

function TXMLSourceType.Get_Name: Integer;
begin
  Result := AttributeNodes['Name'].NodeValue;
end;

procedure TXMLSourceType.Set_Name(Value: Integer);
begin
  SetAttribute('Name', Value);
end;

{ TXMLParametersType }

function TXMLParametersType.Get_Name: Integer;
begin
  Result := AttributeNodes['Name'].NodeValue;
end;

procedure TXMLParametersType.Set_Name(Value: Integer);
begin
  SetAttribute('Name', Value);
end;

{ TXMLVersionInfoType }

function TXMLVersionInfoType.Get_Name: Integer;
begin
  Result := AttributeNodes['Name'].NodeValue;
end;

procedure TXMLVersionInfoType.Set_Name(Value: Integer);
begin
  SetAttribute('Name', Value);
end;

{ TXMLVersionInfoKeysType }

procedure TXMLVersionInfoKeysType.AfterConstruction;
begin
  RegisterChildNode('VersionInfoKeys', TXMLVersionInfoKeysType);
  inherited;
end;

function TXMLVersionInfoKeysType.Get_Name: Integer;
begin
  Result := AttributeNodes['Name'].NodeValue;
end;

procedure TXMLVersionInfoKeysType.Set_Name(Value: Integer);
begin
  SetAttribute('Name', Value);
end;

function TXMLVersionInfoKeysType.Get_VersionInfoKeys: IXMLVersionInfoKeysType;
begin
  Result := ChildNodes['VersionInfoKeys'] as IXMLVersionInfoKeysType;
end;

{ TXMLExcluded_PackagesType }

function TXMLExcluded_PackagesType.Get_Name: UnicodeString;
begin
  Result := AttributeNodes['Name'].Text;
end;

procedure TXMLExcluded_PackagesType.Set_Name(Value: UnicodeString);
begin
  SetAttribute('Name', Value);
end;

{ TXMLDCCReferenceType2 }

function TXMLDCCReferenceType2.Get_Include: UnicodeString;
begin
  Result := AttributeNodes['Include'].Text;
end;

procedure TXMLDCCReferenceType2.Set_Include(Value: UnicodeString);
begin
  SetAttribute('Include', Value);
end;

{ TXMLVersionInfoKeysType2 }

function TXMLVersionInfoKeysType2.Get_Name: Integer;
begin
  Result := AttributeNodes['Name'].NodeValue;
end;

procedure TXMLVersionInfoKeysType2.Set_Name(Value: Integer);
begin
  SetAttribute('Name', Value);
end;

{ TXMLIntegerList }

function TXMLIntegerList.Add(const Value: Integer): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLIntegerList.Insert(const Index: Integer; const Value: Integer): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLIntegerList.Get_Item(Index: Integer): Integer;
begin
  Result := List[Index].NodeValue;
end;

end.