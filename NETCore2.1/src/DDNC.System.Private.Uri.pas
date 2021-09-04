//----------------------------------------------------------------------------
//  System.Private.Uri.dll: System.Private.Uri, Version=4.0.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Private.Uri
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMPRIVATEURI}
unit DDNC.System.Private.Uri;
{$ENDIF}

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

  //-------------namespace: System----------------
  [DNTypeName('System.GenericUriParserOptions')]
  DNGenericUriParserOptions = type Integer;
  DNGenericUriParserOptionsHelper = record helper for DNGenericUriParserOptions
  public const
    Default_ = 0;
    GenericAuthority = 1;
    AllowEmptyAuthority = 2;
    NoUserInfo = 4;
    NoPort = 8;
    NoQuery = 16;
    NoFragment = 32;
    DontConvertPathBackslashes = 64;
    DontCompressPath = 128;
    DontUnescapePathDotsAndSlashes = 256;
    Idn = 512;
    IriParsing = 1024;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.UriComponents')]
  DNUriComponents = type Integer;
  DNUriComponentsHelper = record helper for DNUriComponents
  public const
    Scheme = 1;
    UserInfo = 2;
    Host = 4;
    Port = 8;
    SchemeAndServer = 13;
    Path = 16;
    Query = 32;
    PathAndQuery = 48;
    HttpRequestUrl = 61;
    Fragment = 64;
    AbsoluteUri = 127;
    StrongPort = 128;
    HostAndPort = 132;
    StrongAuthority = 134;
    NormalizedHost = 256;
    KeepDelimiter = 1073741824;
    SerializationInfoString = -2147483648;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.UriFormat')]
  DNUriFormat = type Integer;
  DNUriFormatHelper = record helper for DNUriFormat
  public const
    UriEscaped = 1;
    Unescaped = 2;
    SafeUnescaped = 3;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.UriHostNameType')]
  DNUriHostNameType = type Integer;
  DNUriHostNameTypeHelper = record helper for DNUriHostNameType
  public const
    Unknown = 0;
    Basic = 1;
    Dns = 2;
    IPv4 = 3;
    IPv6 = 4;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.UriKind')]
  DNUriKind = type Integer;
  DNUriKindHelper = record helper for DNUriKind
  public const
    RelativeOrAbsolute = 0;
    Absolute_ = 1;
    Relative = 2;
  end;


  //-------------namespace: System----------------
  [DNTypeName('System.UriPartial')]
  DNUriPartial = type Integer;
  DNUriPartialHelper = record helper for DNUriPartial
  public const
    Scheme = 0;
    Authority = 1;
    Path = 2;
    Query = 3;
  end;




type


{ declares }

  DNUriFormatException = interface; // type: System.UriFormatException, namespace: System
  DNUri = interface; // type: System.Uri, namespace: System
  DNUriBuilder = interface; // type: System.UriBuilder, namespace: System
  DNUriParser = interface; // type: System.UriParser, namespace: System
  DNFileStyleUriParser = interface; // type: System.FileStyleUriParser, namespace: System
  DNFtpStyleUriParser = interface; // type: System.FtpStyleUriParser, namespace: System
  DNGenericUriParser = interface; // type: System.GenericUriParser, namespace: System
  DNGopherStyleUriParser = interface; // type: System.GopherStyleUriParser, namespace: System
  DNHttpStyleUriParser = interface; // type: System.HttpStyleUriParser, namespace: System
  DNLdapStyleUriParser = interface; // type: System.LdapStyleUriParser, namespace: System
  DNNetPipeStyleUriParser = interface; // type: System.NetPipeStyleUriParser, namespace: System
  DNNetTcpStyleUriParser = interface; // type: System.NetTcpStyleUriParser, namespace: System
  DNNewsStyleUriParser = interface; // type: System.NewsStyleUriParser, namespace: System


{ objects }

  //-------------namespace: System----------------
  DNUriFormatExceptionClass = interface(DDNC.System.Private.CoreLib.DNFormatExceptionClass)
  ['{07B76AED-BCF3-5A20-83D6-8139C918BE99}']
  { constructors } 

    {class} function init: DNUriFormatException; overload;
    {class} function init(textString: string): DNUriFormatException; overload;
    {class} function init(textString: string; e: DDNC.System.Private.CoreLib.DNException): DNUriFormatException; overload;

  end;

  [DNTypeName('System.UriFormatException')]
  DNUriFormatException = interface(DDNC.System.Private.CoreLib.DNFormatException)
  ['{AF9D0887-BB42-389B-B0E8-31AB32C799B7}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDNC.System.Private.CoreLib.DNIDictionary;
    function get_InnerException: DDNC.System.Private.CoreLib.DNException;
    function get_TargetSite: DDNC.System.Private.CoreLib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNUriFormatException = class(TDNGenericImport<DNUriFormatExceptionClass, DNUriFormatException>) end;

  //-------------namespace: System----------------
  DNUriClass = interface(DNObjectClass)
  ['{A727BD57-C878-523A-BE87-6BA7F946149E}']
  { constructors } 

    {class} function init(uriString: string): DNUri; overload;
    {class} function init(uriString: string; dontEscape: Boolean): DNUri; overload;
    {class} function init(baseUri: DNUri; relativeUri: string; dontEscape: Boolean): DNUri; overload;
    {class} function init(uriString: string; uriKind: DNUriKind): DNUri; overload;
    {class} function init(baseUri: DNUri; relativeUri: string): DNUri; overload;
    {class} function init(baseUri: DNUri; relativeUri: DNUri): DNUri; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_UriSchemeFile: string;
   function __fakeFieldGet_UriSchemeFtp: string;
   function __fakeFieldGet_UriSchemeGopher: string;
   function __fakeFieldGet_UriSchemeHttp: string;
   function __fakeFieldGet_UriSchemeHttps: string;
   function __fakeFieldGet_UriSchemeMailto: string;
   function __fakeFieldGet_UriSchemeNews: string;
   function __fakeFieldGet_UriSchemeNntp: string;
   function __fakeFieldGet_UriSchemeNetTcp: string;
   function __fakeFieldGet_UriSchemeNetPipe: string;
   function __fakeFieldGet_SchemeDelimiter: string;

  { static fields } 

    {class} property UriSchemeFile: string read __fakeFieldGet_UriSchemeFile;
    {class} property UriSchemeFtp: string read __fakeFieldGet_UriSchemeFtp;
    {class} property UriSchemeGopher: string read __fakeFieldGet_UriSchemeGopher;
    {class} property UriSchemeHttp: string read __fakeFieldGet_UriSchemeHttp;
    {class} property UriSchemeHttps: string read __fakeFieldGet_UriSchemeHttps;
    {class} property UriSchemeMailto: string read __fakeFieldGet_UriSchemeMailto;
    {class} property UriSchemeNews: string read __fakeFieldGet_UriSchemeNews;
    {class} property UriSchemeNntp: string read __fakeFieldGet_UriSchemeNntp;
    {class} property UriSchemeNetTcp: string read __fakeFieldGet_UriSchemeNetTcp;
    {class} property UriSchemeNetPipe: string read __fakeFieldGet_UriSchemeNetPipe;
    {class} property SchemeDelimiter: string read __fakeFieldGet_SchemeDelimiter;

  { static methods } 

    {class} function CheckHostName(name: string): DNUriHostNameType;
    {class} function HexEscape(character: Char): string;
    {class} function HexUnescape(pattern: string; out index: Int32): Char;
    {class} function IsHexEncoding(pattern: string; index: Int32): Boolean;
    {class} function CheckSchemeName(schemeName: string): Boolean;
    {class} function IsHexDigit(character: Char): Boolean;
    {class} function FromHex(digit: Char): Int32;
    {class} function TryCreate(uriString: string; uriKind: DNUriKind; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: string; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: DNUri; out result: DNUri): Boolean; overload;
    {class} function Compare(uri1: DNUri; uri2: DNUri; partsToCompare: DNUriComponents; compareFormat: DNUriFormat; comparisonType: DDNC.System.Private.CoreLib.DNStringComparison): Int32;
    {class} function IsWellFormedUriString(uriString: string; uriKind: DNUriKind): Boolean;
    {class} function UnescapeDataString(stringToUnescape: string): string;
    {class} function EscapeUriString(stringToEscape: string): string;
    {class} function EscapeDataString(stringToEscape: string): string;

  end;

  [DNTypeName('System.Uri')]
  DNUri = interface(DDNC.System.Private.CoreLib.DNISerializable)
  ['{F90A1CDD-7394-3D53-9062-74B284559E90}']
  { getters & setters } 

    function get_AbsolutePath: string;
    function get_AbsoluteUri: string;
    function get_LocalPath: string;
    function get_Authority: string;
    function get_HostNameType: DNUriHostNameType;
    function get_IsDefaultPort: Boolean;
    function get_IsFile: Boolean;
    function get_IsLoopback: Boolean;
    function get_PathAndQuery: string;
    function get_Segments: TArray<string>;
    function get_IsUnc: Boolean;
    function get_Host: string;
    function get_Port: Int32;
    function get_Query: string;
    function get_Fragment: string;
    function get_Scheme: string;
    function get_OriginalString: string;
    function get_DnsSafeHost: string;
    function get_IdnHost: string;
    function get_IsAbsoluteUri: Boolean;
    function get_UserEscaped: Boolean;
    function get_UserInfo: string;

  { methods } 

    function IsBaseOf(uri: DNUri): Boolean;
    function GetLeftPart(part: DNUriPartial): string;
    function GetHashCode: Int32;
    function ToString: string;
    function Equals(comparand: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function MakeRelativeUri(uri: DNUri): DNUri;
    function MakeRelative(toUri: DNUri): string;
    function GetComponents(components: DNUriComponents; format: DNUriFormat): string;
    function IsWellFormedOriginalString: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property AbsolutePath: string read get_AbsolutePath;
    property AbsoluteUri: string read get_AbsoluteUri;
    property LocalPath: string read get_LocalPath;
    property Authority: string read get_Authority;
    property HostNameType: DNUriHostNameType read get_HostNameType;
    property IsDefaultPort: Boolean read get_IsDefaultPort;
    property IsFile: Boolean read get_IsFile;
    property IsLoopback: Boolean read get_IsLoopback;
    property PathAndQuery: string read get_PathAndQuery;
    property Segments: TArray<string> read get_Segments;
    property IsUnc: Boolean read get_IsUnc;
    property Host: string read get_Host;
    property Port: Int32 read get_Port;
    property Query: string read get_Query;
    property Fragment: string read get_Fragment;
    property Scheme: string read get_Scheme;
    property OriginalString: string read get_OriginalString;
    property DnsSafeHost: string read get_DnsSafeHost;
    property IdnHost: string read get_IdnHost;
    property IsAbsoluteUri: Boolean read get_IsAbsoluteUri;
    property UserEscaped: Boolean read get_UserEscaped;
    property UserInfo: string read get_UserInfo;
  end;

  TDNUri = class(TDNGenericImport<DNUriClass, DNUri>) end;

  //-------------namespace: System----------------
  DNUriBuilderClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{1C58F6DD-7359-5815-8ACD-621D662B7474}']
  { constructors } 

    {class} function init: DNUriBuilder; overload;
    {class} function init(uri: string): DNUriBuilder; overload;
    {class} function init(uri: DNUri): DNUriBuilder; overload;
    {class} function init(schemeName: string; hostName: string): DNUriBuilder; overload;
    {class} function init(scheme: string; host: string; portNumber: Int32): DNUriBuilder; overload;
    {class} function init(scheme: string; host: string; port: Int32; pathValue: string): DNUriBuilder; overload;
    {class} function init(scheme: string; host: string; port: Int32; path: string; extraValue: string): DNUriBuilder; overload;

  end;

  [DNTypeName('System.UriBuilder')]
  DNUriBuilder = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{15DE7DB5-F02B-3B37-B6D4-C9E5FB25B849}']
  { getters & setters } 

    function get_Fragment: string;
    procedure set_Fragment(value: string);
    function get_Host: string;
    procedure set_Host(value: string);
    function get_Password: string;
    procedure set_Password(value: string);
    function get_Path: string;
    procedure set_Path(value: string);
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_Query: string;
    procedure set_Query(value: string);
    function get_Scheme: string;
    procedure set_Scheme(value: string);
    function get_Uri: DNUri;
    function get_UserName: string;
    procedure set_UserName(value: string);

  { methods } 

    function Equals(rparam: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Fragment: string read get_Fragment write set_Fragment;
    property Host: string read get_Host write set_Host;
    property Password: string read get_Password write set_Password;
    property Path: string read get_Path write set_Path;
    property Port: Int32 read get_Port write set_Port;
    property Query: string read get_Query write set_Query;
    property Scheme: string read get_Scheme write set_Scheme;
    property Uri: DNUri read get_Uri;
    property UserName: string read get_UserName write set_UserName;
  end;

  TDNUriBuilder = class(TDNGenericImport<DNUriBuilderClass, DNUriBuilder>) end;

  //-------------namespace: System----------------
  DNUriParserClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{0132725C-0E51-5348-9BA5-412554136982}']
  { static methods } 

    {class} procedure &Register(uriParser: DNUriParser; schemeName: string; defaultPort: Int32);
    {class} function IsKnownScheme(schemeName: string): Boolean;

  end;

  [DNTypeName('System.UriParser')]
  DNUriParser = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B67A8051-5262-34E9-B6B9-22102CE78228}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNUriParser = class(TDNGenericImport<DNUriParserClass, DNUriParser>) end;

  //-------------namespace: System----------------
  DNFileStyleUriParserClass = interface(DNUriParserClass)
  ['{7F08928E-E167-5AC8-ACCB-5202C668C0C3}']
  { constructors } 

    {class} function init: DNFileStyleUriParser;

  end;

  [DNTypeName('System.FileStyleUriParser')]
  DNFileStyleUriParser = interface(DNUriParser)
  ['{1DD2A00A-8B40-3335-97D8-114EE80040E7}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNFileStyleUriParser = class(TDNGenericImport<DNFileStyleUriParserClass, DNFileStyleUriParser>) end;

  //-------------namespace: System----------------
  DNFtpStyleUriParserClass = interface(DNUriParserClass)
  ['{7DDBE87C-2601-5764-A9BF-D33F74253FF2}']
  { constructors } 

    {class} function init: DNFtpStyleUriParser;

  end;

  [DNTypeName('System.FtpStyleUriParser')]
  DNFtpStyleUriParser = interface(DNUriParser)
  ['{94789311-A973-33B9-A8FF-9BD0074D4E83}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNFtpStyleUriParser = class(TDNGenericImport<DNFtpStyleUriParserClass, DNFtpStyleUriParser>) end;

  //-------------namespace: System----------------
  DNGenericUriParserClass = interface(DNUriParserClass)
  ['{6563633A-B9DD-5216-AE8C-F2C633424975}']
  { constructors } 

    {class} function init(options: DNGenericUriParserOptions): DNGenericUriParser;

  end;

  [DNTypeName('System.GenericUriParser')]
  DNGenericUriParser = interface(DNUriParser)
  ['{F63258D7-09FD-3B74-8787-A05CC604D151}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNGenericUriParser = class(TDNGenericImport<DNGenericUriParserClass, DNGenericUriParser>) end;

  //-------------namespace: System----------------
  DNGopherStyleUriParserClass = interface(DNUriParserClass)
  ['{3C80876D-E1B7-56E2-8B22-B6AA3623C433}']
  { constructors } 

    {class} function init: DNGopherStyleUriParser;

  end;

  [DNTypeName('System.GopherStyleUriParser')]
  DNGopherStyleUriParser = interface(DNUriParser)
  ['{0B934EF0-8A33-3E81-A940-B3B7C31DE6D0}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNGopherStyleUriParser = class(TDNGenericImport<DNGopherStyleUriParserClass, DNGopherStyleUriParser>) end;

  //-------------namespace: System----------------
  DNHttpStyleUriParserClass = interface(DNUriParserClass)
  ['{596B6FD3-C924-593D-9415-473E54E9452D}']
  { constructors } 

    {class} function init: DNHttpStyleUriParser;

  end;

  [DNTypeName('System.HttpStyleUriParser')]
  DNHttpStyleUriParser = interface(DNUriParser)
  ['{3EB77A1E-5F05-348D-83FA-D732EAF544D0}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNHttpStyleUriParser = class(TDNGenericImport<DNHttpStyleUriParserClass, DNHttpStyleUriParser>) end;

  //-------------namespace: System----------------
  DNLdapStyleUriParserClass = interface(DNUriParserClass)
  ['{EBC25922-D685-5CE0-93D5-267237CF0B7D}']
  { constructors } 

    {class} function init: DNLdapStyleUriParser;

  end;

  [DNTypeName('System.LdapStyleUriParser')]
  DNLdapStyleUriParser = interface(DNUriParser)
  ['{DCC49FBF-10A1-34E4-BB55-0F5ADE1D8BF4}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNLdapStyleUriParser = class(TDNGenericImport<DNLdapStyleUriParserClass, DNLdapStyleUriParser>) end;

  //-------------namespace: System----------------
  DNNetPipeStyleUriParserClass = interface(DNUriParserClass)
  ['{E82E5589-37BF-544A-93F4-0E8957D27920}']
  { constructors } 

    {class} function init: DNNetPipeStyleUriParser;

  end;

  [DNTypeName('System.NetPipeStyleUriParser')]
  DNNetPipeStyleUriParser = interface(DNUriParser)
  ['{2A4F665A-C223-3682-8C05-0D51D2786749}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNNetPipeStyleUriParser = class(TDNGenericImport<DNNetPipeStyleUriParserClass, DNNetPipeStyleUriParser>) end;

  //-------------namespace: System----------------
  DNNetTcpStyleUriParserClass = interface(DNUriParserClass)
  ['{0492A8E5-5D2C-5BDB-BEB3-061B45C4C76D}']
  { constructors } 

    {class} function init: DNNetTcpStyleUriParser;

  end;

  [DNTypeName('System.NetTcpStyleUriParser')]
  DNNetTcpStyleUriParser = interface(DNUriParser)
  ['{AE8A3547-B5DC-3D8F-A935-3880B69793E0}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNNetTcpStyleUriParser = class(TDNGenericImport<DNNetTcpStyleUriParserClass, DNNetTcpStyleUriParser>) end;

  //-------------namespace: System----------------
  DNNewsStyleUriParserClass = interface(DNUriParserClass)
  ['{AED21F12-C05F-519D-B5E7-54D93A0A33F9}']
  { constructors } 

    {class} function init: DNNewsStyleUriParser;

  end;

  [DNTypeName('System.NewsStyleUriParser')]
  DNNewsStyleUriParser = interface(DNUriParser)
  ['{2734A90B-EB65-3FAE-83DF-E8DF1F291B73}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNNewsStyleUriParser = class(TDNGenericImport<DNNewsStyleUriParserClass, DNNewsStyleUriParser>) end;


implementation


initialization
  LoadAssemblyModule('System.Private.Uri.dll', True);

finalization

end.
