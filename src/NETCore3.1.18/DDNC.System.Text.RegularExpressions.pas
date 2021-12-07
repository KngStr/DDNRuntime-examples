//----------------------------------------------------------------------------
//  System.Text.RegularExpressions.dll: System.Text.RegularExpressions, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Text.RegularExpressions
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Text.RegularExpressions;

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

  //-------------namespace: System.Text.RegularExpressions----------------
  [DNTypeName('System.Text.RegularExpressions.RegexOptions')]
  DNRegexOptions = type Integer;
  DNRegexOptionsHelper = record helper for DNRegexOptions
  public const
    None = 0;
    IgnoreCase = 1;
    Multiline = 2;
    ExplicitCapture = 4;
    Compiled = 8;
    Singleline = 16;
    IgnorePatternWhitespace = 32;
    RightToLeft = 64;
    ECMAScript = 256;
    CultureInvariant = 512;
  end;




type


{ declares }

  DNRegexMatchTimeoutException = interface; // type: System.Text.RegularExpressions.RegexMatchTimeoutException, namespace: System.Text.RegularExpressions
  DNCapture = interface; // type: System.Text.RegularExpressions.Capture, namespace: System.Text.RegularExpressions
  DNGroup = interface; // type: System.Text.RegularExpressions.Group, namespace: System.Text.RegularExpressions
  DNMatch = interface; // type: System.Text.RegularExpressions.Match, namespace: System.Text.RegularExpressions
  DNCaptureCollection = interface; // type: System.Text.RegularExpressions.CaptureCollection, namespace: System.Text.RegularExpressions
  DNGroupCollection = interface; // type: System.Text.RegularExpressions.GroupCollection, namespace: System.Text.RegularExpressions
  DNMatchCollection = interface; // type: System.Text.RegularExpressions.MatchCollection, namespace: System.Text.RegularExpressions
  DNRegex = interface; // type: System.Text.RegularExpressions.Regex, namespace: System.Text.RegularExpressions
  DNRegexCompilationInfo = interface; // type: System.Text.RegularExpressions.RegexCompilationInfo, namespace: System.Text.RegularExpressions
  DNRegexRunner = interface; // type: System.Text.RegularExpressions.RegexRunner, namespace: System.Text.RegularExpressions
  DNRegexRunnerFactory = interface; // type: System.Text.RegularExpressions.RegexRunnerFactory, namespace: System.Text.RegularExpressions

{ delegates }

  [DNTypeName('System.Text.RegularExpressions.MatchEvaluator')]
  DNMatchEvaluator = function(match: DNMatch): string of object;




{ objects }

  //-------------namespace: System.Text.RegularExpressions----------------
  DNRegexMatchTimeoutExceptionClass = interface(DDNC.System.Private.CoreLib.DNTimeoutExceptionClass)
  ['{A0347CEA-7EFE-5A68-8D1A-BC77B118EB4D}']
  { constructors } 

    {class} function init(regexInput: string; regexPattern: string; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNRegexMatchTimeoutException; overload;
    {class} function init: DNRegexMatchTimeoutException; overload;
    {class} function init(message: string): DNRegexMatchTimeoutException; overload;
    {class} function init(message: string; inner: DDNC.System.Private.CoreLib.DNException): DNRegexMatchTimeoutException; overload;

  end;

  [DNTypeName('System.Text.RegularExpressions.RegexMatchTimeoutException')]
  DNRegexMatchTimeoutException = interface(DDNC.System.Private.CoreLib.DNTimeoutException)
  ['{9C77C878-3564-316E-B41A-7CFBE1818D88}']
  { getters & setters } 

    function get_Input: string;
    function get_Pattern: string;
    function get_MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan;
    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;
    procedure set_HResult(value: Int32);

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Input: string read get_Input;
    property Pattern: string read get_Pattern;
    property MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan read get_MatchTimeout;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult write set_HResult;
  end;

  TDNRegexMatchTimeoutException = class(TDNGenericImport<DNRegexMatchTimeoutExceptionClass, DNRegexMatchTimeoutException>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNCaptureClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4DAC5812-EC73-55A6-A4C4-D9429D903868}']
  end;

  [DNTypeName('System.Text.RegularExpressions.Capture')]
  DNCapture = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{74D6A624-8AE0-3F41-9D9A-03646EF7606C}']
  { getters & setters } 

    function get_Index: Int32;
    function get_Length: Int32;
    function get_Value: string;

  { methods } 

    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Index: Int32 read get_Index;
    property Length: Int32 read get_Length;
    property Value: string read get_Value;
  end;

  TDNCapture = class(TDNGenericImport<DNCaptureClass, DNCapture>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNGroupClass = interface(DNCaptureClass)
  ['{AF3EC796-6B9A-5A45-9288-28878C737076}']
  { static methods } 

    {class} function Synchronized(inner: DNGroup): DNGroup;

  end;

  [DNTypeName('System.Text.RegularExpressions.Group')]
  DNGroup = interface(DNCapture)
  ['{FA686792-E094-3B33-84AC-5AA1193D5BEA}']
  { getters & setters } 

    function get_Success: Boolean;
    function get_Name: string;
    function get_Captures: DNCaptureCollection;
    function get_Index: Int32;
    function get_Length: Int32;
    function get_Value: string;

  { methods } 

    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Success: Boolean read get_Success;
    property Name: string read get_Name;
    property Captures: DNCaptureCollection read get_Captures;
    property Index: Int32 read get_Index;
    property Length: Int32 read get_Length;
    property Value: string read get_Value;
  end;

  TDNGroup = class(TDNGenericImport<DNGroupClass, DNGroup>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNMatchClass = interface(DNGroupClass)
  ['{EC9C03F9-915B-5E3E-B4AF-9317C2CFB543}']
  { static getter & setter } 

    {class} function get_Empty: DNMatch;

  { static methods } 

    {class} function Synchronized(inner: DNMatch): DNMatch;

  { static propertys } 

    {class} property Empty: DNMatch read get_Empty;
  end;

  [DNTypeName('System.Text.RegularExpressions.Match')]
  DNMatch = interface(DNGroup)
  ['{8CCDAE49-6817-38C5-9ECD-B0B2D8E987D3}']
  { getters & setters } 

    function get_Groups: DNGroupCollection;
    function get_Success: Boolean;
    function get_Name: string;
    function get_Captures: DNCaptureCollection;
    function get_Index: Int32;
    function get_Length: Int32;
    function get_Value: string;

  { methods } 

    function NextMatch: DNMatch;
    function Result(replacement: string): string;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Groups: DNGroupCollection read get_Groups;
    property Success: Boolean read get_Success;
    property Name: string read get_Name;
    property Captures: DNCaptureCollection read get_Captures;
    property Index: Int32 read get_Index;
    property Length: Int32 read get_Length;
    property Value: string read get_Value;
  end;

  TDNMatch = class(TDNGenericImport<DNMatchClass, DNMatch>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNCaptureCollectionClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{5EC16B7B-EC65-53C7-9EEE-9C000E241F1A}']
  end;

  [DNTypeName('System.Text.RegularExpressions.CaptureCollection')]
  DNCaptureCollection = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{EDF6BAF8-33F5-3D9C-86E8-FC4A38697F92}']
  { getters & setters } 

    function get_IsReadOnly: Boolean;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; arrayIndex: Int32); overload;
    procedure CopyTo(&array: TArray<DNCapture>; arrayIndex: Int32); overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsReadOnly: Boolean read get_IsReadOnly;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNCaptureCollection = class(TDNGenericImport<DNCaptureCollectionClass, DNCaptureCollection>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNGroupCollectionClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{16C93284-AC74-5284-B2FF-FBEBE6E72CAB}']
  end;

  [DNTypeName('System.Text.RegularExpressions.GroupCollection')]
  DNGroupCollection = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B5544494-3277-37CD-941D-6F461B34DBBA}']
  { getters & setters } 

    function get_IsReadOnly: Boolean;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;
    function get_Keys: DDNC.System.Private.CoreLib.DNIEnumerable<string>;
    function get_Values: DDNC.System.Private.CoreLib.DNIEnumerable<DNGroup>;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; arrayIndex: Int32); overload;
    procedure CopyTo(&array: TArray<DNGroup>; arrayIndex: Int32); overload;
    function TryGetValue(key: string; out value: DNGroup): Boolean;
    function ContainsKey(key: string): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsReadOnly: Boolean read get_IsReadOnly;
    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
    property Keys: DDNC.System.Private.CoreLib.DNIEnumerable<string> read get_Keys;
    property Values: DDNC.System.Private.CoreLib.DNIEnumerable<DNGroup> read get_Values;
  end;

  TDNGroupCollection = class(TDNGenericImport<DNGroupCollectionClass, DNGroupCollection>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNMatchCollectionClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{982EB75E-0D5D-5CD7-9D8E-5F2CC8C34EDB}']
  end;

  [DNTypeName('System.Text.RegularExpressions.MatchCollection')]
  DNMatchCollection = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9B63EF72-D686-3B69-9B44-B39505589996}']
  { getters & setters } 

    function get_IsReadOnly: Boolean;
    function get_Count: Int32;
    function get_Item(i: Int32): DNMatch;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator;
    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; arrayIndex: Int32); overload;
    procedure CopyTo(&array: TArray<DNMatch>; arrayIndex: Int32); overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsReadOnly: Boolean read get_IsReadOnly;
    property Count: Int32 read get_Count;
    property Item[i: Int32]: DNMatch read get_Item; default;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property SyncRoot: DDNC.System.Private.CoreLib.DNObject read get_SyncRoot;
  end;

  TDNMatchCollection = class(TDNGenericImport<DNMatchCollectionClass, DNMatchCollection>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNRegexClass = interface(DNObjectClass)
  ['{A090641E-1A4B-577F-AC94-8316E3A31EE4}']
  { static getter & setter } 

    {class} function get_CacheSize: Int32;
    {class} procedure set_CacheSize(value: Int32);

  { constructors } 

    {class} function init(pattern: string): DNRegex; overload;
    {class} function init(pattern: string; options: DNRegexOptions): DNRegex; overload;
    {class} function init(pattern: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNRegex; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_InfiniteMatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan;

  { static fields } 

    {class} property InfiniteMatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan read __fakeFieldGet_InfiniteMatchTimeout;

  { static methods } 

    {class} procedure CompileToAssembly(regexinfos: TArray<DNRegexCompilationInfo>; assemblyname: DDNC.System.Private.CoreLib.DNAssemblyName); overload;
    {class} procedure CompileToAssembly(regexinfos: TArray<DNRegexCompilationInfo>; assemblyname: DDNC.System.Private.CoreLib.DNAssemblyName; attributes: TArray<DDNC.System.Private.CoreLib.DNCustomAttributeBuilder>); overload;
    {class} procedure CompileToAssembly(regexinfos: TArray<DNRegexCompilationInfo>; assemblyname: DDNC.System.Private.CoreLib.DNAssemblyName; attributes: TArray<DDNC.System.Private.CoreLib.DNCustomAttributeBuilder>; resourceFile: string); overload;
    {class} function Escape(str: string): string;
    {class} function Unescape(str: string): string;
    {class} function IsMatch(input: string; pattern: string): Boolean; overload;
    {class} function IsMatch(input: string; pattern: string; options: DNRegexOptions): Boolean; overload;
    {class} function IsMatch(input: string; pattern: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): Boolean; overload;
    {class} function Match(input: string; pattern: string): DNMatch; overload;
    {class} function Match(input: string; pattern: string; options: DNRegexOptions): DNMatch; overload;
    {class} function Match(input: string; pattern: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNMatch; overload;
    {class} function Matches(input: string; pattern: string): DNMatchCollection; overload;
    {class} function Matches(input: string; pattern: string; options: DNRegexOptions): DNMatchCollection; overload;
    {class} function Matches(input: string; pattern: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNMatchCollection; overload;
    {class} function Replace(input: string; pattern: string; replacement: string): string; overload;
    {class} function Replace(input: string; pattern: string; replacement: string; options: DNRegexOptions): string; overload;
    {class} function Replace(input: string; pattern: string; replacement: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): string; overload;
    {class} function Replace(input: string; pattern: string; evaluator: DNMatchEvaluator): string; overload;
    {class} function Replace(input: string; pattern: string; evaluator: DNMatchEvaluator; options: DNRegexOptions): string; overload;
    {class} function Replace(input: string; pattern: string; evaluator: DNMatchEvaluator; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): string; overload;
    {class} function Split(input: string; pattern: string): TArray<string>; overload;
    {class} function Split(input: string; pattern: string; options: DNRegexOptions): TArray<string>; overload;
    {class} function Split(input: string; pattern: string; options: DNRegexOptions; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): TArray<string>; overload;

  { static propertys } 

    {class} property CacheSize: Int32 read get_CacheSize write set_CacheSize;
  end;

  [DNTypeName('System.Text.RegularExpressions.Regex')]
  DNRegex = interface(DDNC.System.Private.CoreLib.DNISerializable)
  ['{A0E5D6FF-760A-3716-8F01-C19B22B6B710}']
  { getters & setters } 

    function get_Options: DNRegexOptions;
    function get_RightToLeft: Boolean;
    function get_MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan;

  { methods } 

    function ToString: string;
    function GetGroupNames: TArray<string>;
    function GetGroupNumbers: TArray<Int32>;
    function GroupNameFromNumber(i: Int32): string;
    function GroupNumberFromName(name: string): Int32;
    function IsMatch(input: string): Boolean; overload;
    function IsMatch(input: string; startat: Int32): Boolean; overload;
    function Match(input: string): DNMatch; overload;
    function Match(input: string; startat: Int32): DNMatch; overload;
    function Match(input: string; beginning: Int32; length: Int32): DNMatch; overload;
    function Matches(input: string): DNMatchCollection; overload;
    function Matches(input: string; startat: Int32): DNMatchCollection; overload;
    function Replace(input: string; replacement: string): string; overload;
    function Replace(input: string; replacement: string; count: Int32): string; overload;
    function Replace(input: string; replacement: string; count: Int32; startat: Int32): string; overload;
    function Replace(input: string; evaluator: DNMatchEvaluator): string; overload;
    function Replace(input: string; evaluator: DNMatchEvaluator; count: Int32): string; overload;
    function Replace(input: string; evaluator: DNMatchEvaluator; count: Int32; startat: Int32): string; overload;
    function Split(input: string): TArray<string>; overload;
    function Split(input: string; count: Int32): TArray<string>; overload;
    function Split(input: string; count: Int32; startat: Int32): TArray<string>; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Options: DNRegexOptions read get_Options;
    property RightToLeft: Boolean read get_RightToLeft;
    property MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan read get_MatchTimeout;
  end;

  TDNRegex = class(TDNGenericImport<DNRegexClass, DNRegex>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNRegexCompilationInfoClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{6EE5EA0E-5A09-53E5-B5C4-0A5D0E51E315}']
  { constructors } 

    {class} function init(pattern: string; options: DNRegexOptions; name: string; fullnamespace: string; ispublic: Boolean): DNRegexCompilationInfo; overload;
    {class} function init(pattern: string; options: DNRegexOptions; name: string; fullnamespace: string; ispublic: Boolean; matchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan): DNRegexCompilationInfo; overload;

  end;

  [DNTypeName('System.Text.RegularExpressions.RegexCompilationInfo')]
  DNRegexCompilationInfo = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{AADEB208-2462-3253-8D02-2045AA63EB2B}']
  { getters & setters } 

    function get_IsPublic: Boolean;
    procedure set_IsPublic(value: Boolean);
    function get_MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_MatchTimeout(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_Name: string;
    procedure set_Name(value: string);
    function get_Namespace: string;
    procedure set_Namespace(value: string);
    function get_Options: DNRegexOptions;
    procedure set_Options(value: DNRegexOptions);
    function get_Pattern: string;
    procedure set_Pattern(value: string);

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property IsPublic: Boolean read get_IsPublic write set_IsPublic;
    property MatchTimeout: DDNC.System.Private.CoreLib.DNTimeSpan read get_MatchTimeout write set_MatchTimeout;
    property Name: string read get_Name write set_Name;
    property Namespace: string read get_Namespace write set_Namespace;
    property Options: DNRegexOptions read get_Options write set_Options;
    property Pattern: string read get_Pattern write set_Pattern;
  end;

  TDNRegexCompilationInfo = class(TDNGenericImport<DNRegexCompilationInfoClass, DNRegexCompilationInfo>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNRegexRunnerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{1DA71214-AA7D-5E68-A1E6-C1F336261BE5}']
  end;

  [DNTypeName('System.Text.RegularExpressions.RegexRunner')]
  DNRegexRunner = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F2E449F6-0D64-34E5-8664-26A73BACF334}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNRegexRunner = class(TDNGenericImport<DNRegexRunnerClass, DNRegexRunner>) end;

  //-------------namespace: System.Text.RegularExpressions----------------
  DNRegexRunnerFactoryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{EFC31876-3521-5DFD-8B56-43DD9B4D09DE}']
  end;

  [DNTypeName('System.Text.RegularExpressions.RegexRunnerFactory')]
  DNRegexRunnerFactory = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{1409E2C0-2CD3-32D6-850F-420E3906E6B8}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNRegexRunnerFactory = class(TDNGenericImport<DNRegexRunnerFactoryClass, DNRegexRunnerFactory>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Text.RegularExpressions, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.