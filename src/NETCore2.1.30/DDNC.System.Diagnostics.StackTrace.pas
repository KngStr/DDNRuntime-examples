//----------------------------------------------------------------------------
//  System.Diagnostics.StackTrace.dll: System.Diagnostics.StackTrace, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.StackTrace
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Diagnostics.StackTrace;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib;

type

{ enums }

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.SymAddressKind')]
  DNSymAddressKind = type Integer;
  DNSymAddressKindHelper = record helper for DNSymAddressKind
  public const
    ILOffset = 1;
    NativeRVA = 2;
    NativeRegister = 3;
    NativeRegisterRelative = 4;
    NativeOffset = 5;
    NativeRegisterRegister = 6;
    NativeRegisterStack = 7;
    NativeStackRegister = 8;
    BitField = 9;
    NativeSectionOffset = 10;
  end;




type


{ declares }

  DNISymbolBinder = interface; // type: System.Diagnostics.SymbolStore.ISymbolBinder, namespace: System.Diagnostics.SymbolStore
  DNISymbolBinder1 = interface; // type: System.Diagnostics.SymbolStore.ISymbolBinder1, namespace: System.Diagnostics.SymbolStore
  DNISymbolDocument = interface; // type: System.Diagnostics.SymbolStore.ISymbolDocument, namespace: System.Diagnostics.SymbolStore
  DNISymbolMethod = interface; // type: System.Diagnostics.SymbolStore.ISymbolMethod, namespace: System.Diagnostics.SymbolStore
  DNISymbolNamespace = interface; // type: System.Diagnostics.SymbolStore.ISymbolNamespace, namespace: System.Diagnostics.SymbolStore
  DNISymbolReader = interface; // type: System.Diagnostics.SymbolStore.ISymbolReader, namespace: System.Diagnostics.SymbolStore
  DNISymbolScope = interface; // type: System.Diagnostics.SymbolStore.ISymbolScope, namespace: System.Diagnostics.SymbolStore
  DNISymbolVariable = interface; // type: System.Diagnostics.SymbolStore.ISymbolVariable, namespace: System.Diagnostics.SymbolStore
  DNISymbolWriter = interface; // type: System.Diagnostics.SymbolStore.ISymbolWriter, namespace: System.Diagnostics.SymbolStore
  DNStackFrameExtensions = interface; // type: System.Diagnostics.StackFrameExtensions, namespace: System.Diagnostics
  DNSymDocumentType = interface; // type: System.Diagnostics.SymbolStore.SymDocumentType, namespace: System.Diagnostics.SymbolStore
  DNSymLanguageType = interface; // type: System.Diagnostics.SymbolStore.SymLanguageType, namespace: System.Diagnostics.SymbolStore
  DNSymLanguageVendor = interface; // type: System.Diagnostics.SymbolStore.SymLanguageVendor, namespace: System.Diagnostics.SymbolStore
  DNSymbolToken = interface; // type: System.Diagnostics.SymbolStore.SymbolToken, namespace: System.Diagnostics.SymbolStore


{ objects }

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolBinder')]
  DNISymbolBinder = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{20808ADC-CC01-3F3A-8F09-ED12940FC212}']
  { methods } 

    function GetReader(importer: Int32; filename: string; searchPath: string): DNISymbolReader;

  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolBinder1')]
  DNISymbolBinder1 = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{027C036A-4052-3821-85DE-B53319DF1211}']
  { methods } 

    function GetReader(importer: IntPtr; filename: string; searchPath: string): DNISymbolReader;

  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolDocument')]
  DNISymbolDocument = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{1C32F012-2684-3EFE-8D50-9C2973ACC00B}']
  { getters & setters } 

    function get_URL: string;
    function get_DocumentType: DDNC.System.Private.CoreLib.DNGuid;
    function get_Language: DDNC.System.Private.CoreLib.DNGuid;
    function get_LanguageVendor: DDNC.System.Private.CoreLib.DNGuid;
    function get_CheckSumAlgorithmId: DDNC.System.Private.CoreLib.DNGuid;
    function get_HasEmbeddedSource: Boolean;
    function get_SourceLength: Int32;

  { methods } 

    function GetCheckSum: TArray<Byte>;
    function FindClosestLine(line: Int32): Int32;
    function GetSourceRange(startLine: Int32; startColumn: Int32; endLine: Int32; endColumn: Int32): TArray<Byte>;

  { propertys } 

    property URL: string read get_URL;
    property DocumentType: DDNC.System.Private.CoreLib.DNGuid read get_DocumentType;
    property Language: DDNC.System.Private.CoreLib.DNGuid read get_Language;
    property LanguageVendor: DDNC.System.Private.CoreLib.DNGuid read get_LanguageVendor;
    property CheckSumAlgorithmId: DDNC.System.Private.CoreLib.DNGuid read get_CheckSumAlgorithmId;
    property HasEmbeddedSource: Boolean read get_HasEmbeddedSource;
    property SourceLength: Int32 read get_SourceLength;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolMethod')]
  DNISymbolMethod = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{25C72EB0-E437-3F17-946D-3B72A3ACFF37}']
  { getters & setters } 

    function get_Token: DNSymbolToken;
    function get_SequencePointCount: Int32;
    function get_RootScope: DNISymbolScope;

  { methods } 

    procedure GetSequencePoints(offsets: TArray<Int32>; documents: TArray<DNISymbolDocument>; lines: TArray<Int32>; columns: TArray<Int32>; endLines: TArray<Int32>; endColumns: TArray<Int32>);
    function GetScope(offset: Int32): DNISymbolScope;
    function GetOffset(document: DNISymbolDocument; line: Int32; column: Int32): Int32;
    function GetRanges(document: DNISymbolDocument; line: Int32; column: Int32): TArray<Int32>;
    function GetParameters: TArray<DNISymbolVariable>;
    function GetNamespace: DNISymbolNamespace;
    function GetSourceStartEnd(docs: TArray<DNISymbolDocument>; lines: TArray<Int32>; columns: TArray<Int32>): Boolean;

  { propertys } 

    property Token: DNSymbolToken read get_Token;
    property SequencePointCount: Int32 read get_SequencePointCount;
    property RootScope: DNISymbolScope read get_RootScope;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolNamespace')]
  DNISymbolNamespace = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{23ED2454-6899-3C28-BAB7-6EC86683964A}']
  { getters & setters } 

    function get_Name: string;

  { methods } 

    function GetNamespaces: TArray<DNISymbolNamespace>;
    function GetVariables: TArray<DNISymbolVariable>;

  { propertys } 

    property Name: string read get_Name;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolReader')]
  DNISymbolReader = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E809A5F1-D3D7-3144-9BEF-FE8AC0364699}']
  { getters & setters } 

    function get_UserEntryPoint: DNSymbolToken;

  { methods } 

    function GetDocument(url: string; language: DDNC.System.Private.CoreLib.DNGuid; languageVendor: DDNC.System.Private.CoreLib.DNGuid; documentType: DDNC.System.Private.CoreLib.DNGuid): DNISymbolDocument;
    function GetDocuments: TArray<DNISymbolDocument>;
    function GetMethod(method: DNSymbolToken): DNISymbolMethod; overload;
    function GetMethod(method: DNSymbolToken; version: Int32): DNISymbolMethod; overload;
    function GetVariables(parent: DNSymbolToken): TArray<DNISymbolVariable>;
    function GetGlobalVariables: TArray<DNISymbolVariable>;
    function GetMethodFromDocumentPosition(document: DNISymbolDocument; line: Int32; column: Int32): DNISymbolMethod;
    function GetSymAttribute(parent: DNSymbolToken; name: string): TArray<Byte>;
    function GetNamespaces: TArray<DNISymbolNamespace>;

  { propertys } 

    property UserEntryPoint: DNSymbolToken read get_UserEntryPoint;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolScope')]
  DNISymbolScope = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{1CEE3A11-01AE-3244-A939-4972FC9703EF}']
  { getters & setters } 

    function get_Method: DNISymbolMethod;
    function get_Parent: DNISymbolScope;
    function get_StartOffset: Int32;
    function get_EndOffset: Int32;

  { methods } 

    function GetChildren: TArray<DNISymbolScope>;
    function GetLocals: TArray<DNISymbolVariable>;
    function GetNamespaces: TArray<DNISymbolNamespace>;

  { propertys } 

    property Method: DNISymbolMethod read get_Method;
    property Parent: DNISymbolScope read get_Parent;
    property StartOffset: Int32 read get_StartOffset;
    property EndOffset: Int32 read get_EndOffset;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolVariable')]
  DNISymbolVariable = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{4042BD4D-B5AB-30E8-919B-14910687BAAE}']
  { getters & setters } 

    function get_Name: string;
    function get_Attributes: DDNC.System.Private.CoreLib.DNObject;
    function get_AddressKind: DNSymAddressKind;
    function get_AddressField1: Int32;
    function get_AddressField2: Int32;
    function get_AddressField3: Int32;
    function get_StartOffset: Int32;
    function get_EndOffset: Int32;

  { methods } 

    function GetSignature: TArray<Byte>;

  { propertys } 

    property Name: string read get_Name;
    property Attributes: DDNC.System.Private.CoreLib.DNObject read get_Attributes;
    property AddressKind: DNSymAddressKind read get_AddressKind;
    property AddressField1: Int32 read get_AddressField1;
    property AddressField2: Int32 read get_AddressField2;
    property AddressField3: Int32 read get_AddressField3;
    property StartOffset: Int32 read get_StartOffset;
    property EndOffset: Int32 read get_EndOffset;
  end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  [DNTypeName('System.Diagnostics.SymbolStore.ISymbolWriter')]
  DNISymbolWriter = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{DA295A1B-C5BD-3B34-8ACD-1D7D334FFB7F}']
  { methods } 

    procedure Initialize(emitter: IntPtr; filename: string; fFullBuild: Boolean);
    function DefineDocument(url: string; language: DDNC.System.Private.CoreLib.DNGuid; languageVendor: DDNC.System.Private.CoreLib.DNGuid; documentType: DDNC.System.Private.CoreLib.DNGuid): DDNC.System.Private.CoreLib.DNISymbolDocumentWriter;
    procedure SetUserEntryPoint(entryMethod: DNSymbolToken);
    procedure OpenMethod(method: DNSymbolToken);
    procedure CloseMethod;
    procedure DefineSequencePoints(document: DDNC.System.Private.CoreLib.DNISymbolDocumentWriter; offsets: TArray<Int32>; lines: TArray<Int32>; columns: TArray<Int32>; endLines: TArray<Int32>; endColumns: TArray<Int32>);
    function OpenScope(startOffset: Int32): Int32;
    procedure CloseScope(endOffset: Int32);
    procedure SetScopeRange(scopeID: Int32; startOffset: Int32; endOffset: Int32);
    procedure DefineLocalVariable(name: string; attributes: DDNC.System.Private.CoreLib.DNFieldAttributes; signature: TArray<Byte>; addrKind: DNSymAddressKind; addr1: Int32; addr2: Int32; addr3: Int32; startOffset: Int32; endOffset: Int32);
    procedure DefineParameter(name: string; attributes: DDNC.System.Private.CoreLib.DNParameterAttributes; sequence: Int32; addrKind: DNSymAddressKind; addr1: Int32; addr2: Int32; addr3: Int32);
    procedure DefineField(parent: DNSymbolToken; name: string; attributes: DDNC.System.Private.CoreLib.DNFieldAttributes; signature: TArray<Byte>; addrKind: DNSymAddressKind; addr1: Int32; addr2: Int32; addr3: Int32);
    procedure DefineGlobalVariable(name: string; attributes: DDNC.System.Private.CoreLib.DNFieldAttributes; signature: TArray<Byte>; addrKind: DNSymAddressKind; addr1: Int32; addr2: Int32; addr3: Int32);
    procedure Close;
    procedure SetSymAttribute(parent: DNSymbolToken; name: string; data: TArray<Byte>);
    procedure OpenNamespace(name: string);
    procedure CloseNamespace;
    procedure UsingNamespace(fullName: string);
    procedure SetMethodSourceRange(startDoc: DDNC.System.Private.CoreLib.DNISymbolDocumentWriter; startLine: Int32; startColumn: Int32; endDoc: DDNC.System.Private.CoreLib.DNISymbolDocumentWriter; endLine: Int32; endColumn: Int32);
    procedure SetUnderlyingWriter(underlyingWriter: IntPtr);

  end;

  //-------------namespace: System.Diagnostics----------------
  DNStackFrameExtensionsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{22005A7A-CB9A-57E4-B746-670C605B442E}']
  { static methods } 

    {class} function HasNativeImage(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): Boolean;
    {class} function HasMethod(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): Boolean;
    {class} function HasILOffset(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): Boolean;
    {class} function HasSource(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): Boolean;
    {class} function GetNativeIP(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): IntPtr;
    {class} function GetNativeImageBase(stackFrame: DDNC.System.Private.CoreLib.DNStackFrame): IntPtr;

  end;

  [DNTypeName('System.Diagnostics.StackFrameExtensions')]
  DNStackFrameExtensions = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E6489B09-D434-3DD6-B3B1-06982BFD7149}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNStackFrameExtensions = class(TDNGenericImport<DNStackFrameExtensionsClass, DNStackFrameExtensions>) end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  DNSymDocumentTypeClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{575566D1-C2E1-5A39-97CB-53CE53EB9F7F}']
  { constructors } 

    {class} function init: DNSymDocumentType;

  { static fields getter & setter } 

   function __fakeFieldGet_Text: DDNC.System.Private.CoreLib.DNGuid;

  { static fields } 

    {class} property Text: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Text;

  end;

  [DNTypeName('System.Diagnostics.SymbolStore.SymDocumentType')]
  DNSymDocumentType = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E7A444B1-95BE-3D3B-8570-50D654CDB58C}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSymDocumentType = class(TDNGenericImport<DNSymDocumentTypeClass, DNSymDocumentType>) end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  DNSymLanguageTypeClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{278A1B6F-3415-5987-BFC3-55B94B082CDC}']
  { constructors } 

    {class} function init: DNSymLanguageType;

  { static fields getter & setter } 

   function __fakeFieldGet_C: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_CPlusPlus: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_CSharp: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_Basic: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_Java: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_Cobol: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_Pascal: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_ILAssembly: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_JScript: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_SMC: DDNC.System.Private.CoreLib.DNGuid;
   function __fakeFieldGet_MCPlusPlus: DDNC.System.Private.CoreLib.DNGuid;

  { static fields } 

    {class} property C: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_C;
    {class} property CPlusPlus: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_CPlusPlus;
    {class} property CSharp: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_CSharp;
    {class} property Basic: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Basic;
    {class} property Java: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Java;
    {class} property Cobol: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Cobol;
    {class} property &Pascal: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Pascal;
    {class} property ILAssembly: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_ILAssembly;
    {class} property JScript: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_JScript;
    {class} property SMC: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_SMC;
    {class} property MCPlusPlus: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_MCPlusPlus;

  end;

  [DNTypeName('System.Diagnostics.SymbolStore.SymLanguageType')]
  DNSymLanguageType = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{DF5F55A8-7368-3559-8773-4B5AD37B1718}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSymLanguageType = class(TDNGenericImport<DNSymLanguageTypeClass, DNSymLanguageType>) end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  DNSymLanguageVendorClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{567511AC-19F1-594C-9A98-3C1E28B41550}']
  { constructors } 

    {class} function init: DNSymLanguageVendor;

  { static fields getter & setter } 

   function __fakeFieldGet_Microsoft: DDNC.System.Private.CoreLib.DNGuid;

  { static fields } 

    {class} property Microsoft: DDNC.System.Private.CoreLib.DNGuid read __fakeFieldGet_Microsoft;

  end;

  [DNTypeName('System.Diagnostics.SymbolStore.SymLanguageVendor')]
  DNSymLanguageVendor = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{BA20A5F6-7CB6-3159-8C1B-0E5D63B8976B}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSymLanguageVendor = class(TDNGenericImport<DNSymLanguageVendorClass, DNSymLanguageVendor>) end;

  //-------------namespace: System.Diagnostics.SymbolStore----------------
  DNSymbolTokenClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{5C6E819E-0ED2-5DCB-8D61-E34EA69ACDD4}']
  { constructors } 

    {class} function init(val: Int32): DNSymbolToken;

  end;

  [DNTypeName('System.Diagnostics.SymbolStore.SymbolToken')]
  DNSymbolToken = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{36F26ACD-9AD1-3E4F-9220-B6B639E3CF59}']
  { methods } 

    function GetToken: Int32;
    function GetHashCode: Int32;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(obj: DNSymbolToken): Boolean; overload;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNSymbolToken = class(TDNGenericImport<DNSymbolTokenClass, DNSymbolToken>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.StackTrace, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
