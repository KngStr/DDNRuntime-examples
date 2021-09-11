//----------------------------------------------------------------------------
//  System.Net.HttpListener.dll: System.Net.HttpListener, Version=4.0.1.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.HttpListener
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMNETHTTPLISTENER}
unit DDNC.System.Net.HttpListener;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Net.Primitives,
  DDNC.System.Net.Security,
  DDNC.Microsoft.Win32.Primitives,
  DDNC.System.Security.Principal,
  DDNC.System.Collections.Specialized,
  DDNC.System.Private.Uri,
  DDNC.System.Security.Cryptography.X509Certificates,
  DDNC.System.Net.WebHeaderCollection,
  DDNC.System.Net.WebSockets,
  DDNC.System.Security.Claims;

type


{ declares }

  DNHttpListenerException = interface; // type: System.Net.HttpListenerException, namespace: System.Net
  DNHttpListener = interface; // type: System.Net.HttpListener, namespace: System.Net
  DNHttpListenerContext = interface; // type: System.Net.HttpListenerContext, namespace: System.Net
  DNHttpListenerPrefixCollection = interface; // type: System.Net.HttpListenerPrefixCollection, namespace: System.Net
  DNHttpListenerRequest = interface; // type: System.Net.HttpListenerRequest, namespace: System.Net
  DNHttpListenerResponse = interface; // type: System.Net.HttpListenerResponse, namespace: System.Net
  DNHttpListenerTimeoutManager = interface; // type: System.Net.HttpListenerTimeoutManager, namespace: System.Net
  DNHttpListenerWebSocketContext = interface; // type: System.Net.WebSockets.HttpListenerWebSocketContext, namespace: System.Net.WebSockets
  DNHttpListenerBasicIdentity = interface; // type: System.Net.HttpListenerBasicIdentity, namespace: System.Net

{ delegates }

  [DNTypeName('System.Net.AuthenticationSchemeSelector')]
  DNAuthenticationSchemeSelector = function(httpRequest: DNHttpListenerRequest): DDNC.System.Net.Primitives.DNAuthenticationSchemes of object;

  [DNTypeName('System.Net.HttpListener+ExtendedProtectionSelector')]
  DNHttpListener_ExtendedProtectionSelector = function(request: DNHttpListenerRequest): DDNC.System.Net.Security.DNExtendedProtectionPolicy of object;




{ objects }

  //-------------namespace: System.Net----------------
  DNHttpListenerExceptionClass = interface(DNObjectClass)
  ['{B75E2301-F052-5F3A-9DB1-7D91DB42AB2F}']
  { constructors } 

    {class} function init: DNHttpListenerException; overload;
    {class} function init(errorCode: Int32): DNHttpListenerException; overload;
    {class} function init(errorCode: Int32; message: string): DNHttpListenerException; overload;

  end;

  [DNTypeName('System.Net.HttpListenerException')]
  DNHttpListenerException = interface(DNObject)
  ['{72A4527C-4083-3791-975E-FD94F2746182}']
  { getters & setters } 

    function get_ErrorCode: Int32;
    function get_NativeErrorCode: Int32;
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

    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ErrorCode: Int32 read get_ErrorCode;
    property NativeErrorCode: Int32 read get_NativeErrorCode;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNHttpListenerException = class(TDNGenericImport<DNHttpListenerExceptionClass, DNHttpListenerException>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerClass = interface(DNObjectClass)
  ['{D70BBB12-24ED-5C6E-A601-463E562569E4}']
  { static getter & setter } 

    {class} function get_IsSupported: Boolean;

  { constructors } 

    {class} function init: DNHttpListener;

  { static propertys } 

    {class} property IsSupported: Boolean read get_IsSupported;
  end;

  [DNTypeName('System.Net.HttpListener')]
  DNHttpListener = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{AC593B78-A45C-3586-9F6B-39DBF414B563}']
  { getters & setters } 

    function get_AuthenticationSchemeSelectorDelegate: DNAuthenticationSchemeSelector;
    procedure set_AuthenticationSchemeSelectorDelegate(value: DNAuthenticationSchemeSelector);
    function get_ExtendedProtectionSelectorDelegate: DNHttpListener_ExtendedProtectionSelector;
    procedure set_ExtendedProtectionSelectorDelegate(value: DNHttpListener_ExtendedProtectionSelector);
    function get_AuthenticationSchemes: DDNC.System.Net.Primitives.DNAuthenticationSchemes;
    procedure set_AuthenticationSchemes(value: DDNC.System.Net.Primitives.DNAuthenticationSchemes);
    function get_ExtendedProtectionPolicy: DDNC.System.Net.Security.DNExtendedProtectionPolicy;
    procedure set_ExtendedProtectionPolicy(value: DDNC.System.Net.Security.DNExtendedProtectionPolicy);
    function get_DefaultServiceNames: DDNC.System.Net.Security.DNServiceNameCollection;
    function get_Prefixes: DNHttpListenerPrefixCollection;
    function get_Realm: string;
    procedure set_Realm(value: string);
    function get_IsListening: Boolean;
    function get_IgnoreWriteExceptions: Boolean;
    procedure set_IgnoreWriteExceptions(value: Boolean);
    function get_UnsafeConnectionNtlmAuthentication: Boolean;
    procedure set_UnsafeConnectionNtlmAuthentication(value: Boolean);
    function get_TimeoutManager: DNHttpListenerTimeoutManager;

  { methods } 

    function GetContextAsync: DDNC.System.Private.CoreLib.DNTask<DNHttpListenerContext>;
    procedure Close;
    procedure Start;
    procedure Stop;
    procedure &Abort;
    function GetContext: DNHttpListenerContext;
    function BeginGetContext(callback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function EndGetContext(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): DNHttpListenerContext;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property AuthenticationSchemeSelectorDelegate: DNAuthenticationSchemeSelector read get_AuthenticationSchemeSelectorDelegate write set_AuthenticationSchemeSelectorDelegate;
    property ExtendedProtectionSelectorDelegate: DNHttpListener_ExtendedProtectionSelector read get_ExtendedProtectionSelectorDelegate write set_ExtendedProtectionSelectorDelegate;
    property AuthenticationSchemes: DDNC.System.Net.Primitives.DNAuthenticationSchemes read get_AuthenticationSchemes write set_AuthenticationSchemes;
    property ExtendedProtectionPolicy: DDNC.System.Net.Security.DNExtendedProtectionPolicy read get_ExtendedProtectionPolicy write set_ExtendedProtectionPolicy;
    property DefaultServiceNames: DDNC.System.Net.Security.DNServiceNameCollection read get_DefaultServiceNames;
    property Prefixes: DNHttpListenerPrefixCollection read get_Prefixes;
    property Realm: string read get_Realm write set_Realm;
    property IsListening: Boolean read get_IsListening;
    property IgnoreWriteExceptions: Boolean read get_IgnoreWriteExceptions write set_IgnoreWriteExceptions;
    property UnsafeConnectionNtlmAuthentication: Boolean read get_UnsafeConnectionNtlmAuthentication write set_UnsafeConnectionNtlmAuthentication;
    property TimeoutManager: DNHttpListenerTimeoutManager read get_TimeoutManager;
  end;

  TDNHttpListener = class(TDNGenericImport<DNHttpListenerClass, DNHttpListener>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerContextClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{7F822476-0E02-589A-A0C7-36E67740882D}']
  end;

  [DNTypeName('System.Net.HttpListenerContext')]
  DNHttpListenerContext = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{5E3A61FE-DBA4-3766-A183-364C7ACD7F1B}']
  { getters & setters } 

    function get_Request: DNHttpListenerRequest;
    function get_User: DDNC.System.Security.Principal.DNIPrincipal;
    function get_Response: DNHttpListenerResponse;

  { methods } 

    function AcceptWebSocketAsync(subProtocol: string): DDNC.System.Private.CoreLib.DNTask<DNHttpListenerWebSocketContext>; overload;
    function AcceptWebSocketAsync(subProtocol: string; keepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan): DDNC.System.Private.CoreLib.DNTask<DNHttpListenerWebSocketContext>; overload;
    function AcceptWebSocketAsync(subProtocol: string; receiveBufferSize: Int32; keepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan): DDNC.System.Private.CoreLib.DNTask<DNHttpListenerWebSocketContext>; overload;
    function AcceptWebSocketAsync(subProtocol: string; receiveBufferSize: Int32; keepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan; internalBuffer: DDNC.System.Private.CoreLib.DNArraySegment<Byte>): DDNC.System.Private.CoreLib.DNTask<DNHttpListenerWebSocketContext>; overload;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Request: DNHttpListenerRequest read get_Request;
    property User: DDNC.System.Security.Principal.DNIPrincipal read get_User;
    property Response: DNHttpListenerResponse read get_Response;
  end;

  TDNHttpListenerContext = class(TDNGenericImport<DNHttpListenerContextClass, DNHttpListenerContext>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerPrefixCollectionClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{570A94CA-6A57-574C-BC7F-7F61F0DB94E1}']
  end;

  [DNTypeName('System.Net.HttpListenerPrefixCollection')]
  DNHttpListenerPrefixCollection = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{A179A634-9F55-3684-AEB2-5AE893ACE021}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_IsReadOnly: Boolean;

  { methods } 

    procedure CopyTo(&array: DDNC.System.Private.CoreLib.DNArray; offset: Int32); overload;
    procedure CopyTo(&array: TArray<string>; offset: Int32); overload;
    function &Contains(uriPrefix: string): Boolean;
    function GetEnumerator: DDNC.System.Private.CoreLib.DNIEnumerator<string>;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsSynchronized: Boolean read get_IsSynchronized;
    property IsReadOnly: Boolean read get_IsReadOnly;
  end;

  TDNHttpListenerPrefixCollection = class(TDNGenericImport<DNHttpListenerPrefixCollectionClass, DNHttpListenerPrefixCollection>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerRequestClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{AC18DD85-4260-5D78-9248-8363BE758928}']
  end;

  [DNTypeName('System.Net.HttpListenerRequest')]
  DNHttpListenerRequest = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{E767F092-4D66-3ACC-90BF-9723C804FD87}']
  { getters & setters } 

    function get_AcceptTypes: TArray<string>;
    function get_UserLanguages: TArray<string>;
    function get_Cookies: DDNC.System.Net.Primitives.DNCookieCollection;
    function get_ContentEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    function get_ContentType: string;
    function get_IsLocal: Boolean;
    function get_IsWebSocketRequest: Boolean;
    function get_KeepAlive: Boolean;
    function get_QueryString: DDNC.System.Collections.Specialized.DNNameValueCollection;
    function get_RawUrl: string;
    function get_UserAgent: string;
    function get_UserHostAddress: string;
    function get_UserHostName: string;
    function get_UrlReferrer: DDNC.System.Private.Uri.DNUri;
    function get_Url: DDNC.System.Private.Uri.DNUri;
    function get_ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion;
    function get_ClientCertificateError: Int32;
    function get_RequestTraceIdentifier: DDNC.System.Private.CoreLib.DNGuid;
    function get_ContentLength64: Int64;
    function get_Headers: DDNC.System.Collections.Specialized.DNNameValueCollection;
    function get_HttpMethod: string;
    function get_InputStream: DDNC.System.Private.CoreLib.DNStream;
    function get_IsAuthenticated: Boolean;
    function get_IsSecureConnection: Boolean;
    function get_ServiceName: string;
    function get_TransportContext: DDNC.System.Net.Primitives.DNTransportContext;
    function get_HasEntityBody: Boolean;
    function get_RemoteEndPoint: DDNC.System.Net.Primitives.DNIPEndPoint;
    function get_LocalEndPoint: DDNC.System.Net.Primitives.DNIPEndPoint;

  { methods } 

    function GetClientCertificate: DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate2;
    function BeginGetClientCertificate(requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    function GetClientCertificateAsync: DDNC.System.Private.CoreLib.DNTask<DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate2>;
    function EndGetClientCertificate(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate2;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property AcceptTypes: TArray<string> read get_AcceptTypes;
    property UserLanguages: TArray<string> read get_UserLanguages;
    property Cookies: DDNC.System.Net.Primitives.DNCookieCollection read get_Cookies;
    property ContentEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_ContentEncoding;
    property ContentType: string read get_ContentType;
    property IsLocal: Boolean read get_IsLocal;
    property IsWebSocketRequest: Boolean read get_IsWebSocketRequest;
    property KeepAlive: Boolean read get_KeepAlive;
    property QueryString: DDNC.System.Collections.Specialized.DNNameValueCollection read get_QueryString;
    property RawUrl: string read get_RawUrl;
    property UserAgent: string read get_UserAgent;
    property UserHostAddress: string read get_UserHostAddress;
    property UserHostName: string read get_UserHostName;
    property UrlReferrer: DDNC.System.Private.Uri.DNUri read get_UrlReferrer;
    property Url: DDNC.System.Private.Uri.DNUri read get_Url;
    property ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion read get_ProtocolVersion;
    property ClientCertificateError: Int32 read get_ClientCertificateError;
    property RequestTraceIdentifier: DDNC.System.Private.CoreLib.DNGuid read get_RequestTraceIdentifier;
    property ContentLength64: Int64 read get_ContentLength64;
    property Headers: DDNC.System.Collections.Specialized.DNNameValueCollection read get_Headers;
    property HttpMethod: string read get_HttpMethod;
    property InputStream: DDNC.System.Private.CoreLib.DNStream read get_InputStream;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property IsSecureConnection: Boolean read get_IsSecureConnection;
    property ServiceName: string read get_ServiceName;
    property TransportContext: DDNC.System.Net.Primitives.DNTransportContext read get_TransportContext;
    property HasEntityBody: Boolean read get_HasEntityBody;
    property RemoteEndPoint: DDNC.System.Net.Primitives.DNIPEndPoint read get_RemoteEndPoint;
    property LocalEndPoint: DDNC.System.Net.Primitives.DNIPEndPoint read get_LocalEndPoint;
  end;

  TDNHttpListenerRequest = class(TDNGenericImport<DNHttpListenerRequestClass, DNHttpListenerRequest>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerResponseClass = interface(DNObjectClass)
  ['{C0B075FE-C68F-5C51-9EF4-F764763AC5C7}']
  end;

  [DNTypeName('System.Net.HttpListenerResponse')]
  DNHttpListenerResponse = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{237DE77B-6A3B-3133-9C4C-710F3603B78B}']
  { getters & setters } 

    function get_Headers: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection;
    procedure set_Headers(value: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection);
    function get_ContentEncoding: DDNC.System.Private.CoreLib.DNEncoding;
    procedure set_ContentEncoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    function get_ContentType: string;
    procedure set_ContentType(value: string);
    function get_SendChunked: Boolean;
    procedure set_SendChunked(value: Boolean);
    function get_ContentLength64: Int64;
    procedure set_ContentLength64(value: Int64);
    function get_Cookies: DDNC.System.Net.Primitives.DNCookieCollection;
    procedure set_Cookies(value: DDNC.System.Net.Primitives.DNCookieCollection);
    function get_KeepAlive: Boolean;
    procedure set_KeepAlive(value: Boolean);
    function get_OutputStream: DDNC.System.Private.CoreLib.DNStream;
    function get_RedirectLocation: string;
    procedure set_RedirectLocation(value: string);
    function get_StatusDescription: string;
    procedure set_StatusDescription(value: string);
    function get_StatusCode: Int32;
    procedure set_StatusCode(value: Int32);
    function get_ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion;
    procedure set_ProtocolVersion(value: DDNC.System.Private.CoreLib.DNVersion);

  { methods } 

    procedure AddHeader(name: string; value: string);
    procedure AppendHeader(name: string; value: string);
    procedure AppendCookie(cookie: DDNC.System.Net.Primitives.DNCookie);
    procedure Redirect(url: string);
    procedure SetCookie(cookie: DDNC.System.Net.Primitives.DNCookie);
    procedure CopyFrom(templateResponse: DNHttpListenerResponse);
    procedure &Abort;
    procedure Close; overload;
    procedure Close(responseEntity: TArray<Byte>; willBlock: Boolean); overload;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Headers: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection read get_Headers write set_Headers;
    property ContentEncoding: DDNC.System.Private.CoreLib.DNEncoding read get_ContentEncoding write set_ContentEncoding;
    property ContentType: string read get_ContentType write set_ContentType;
    property SendChunked: Boolean read get_SendChunked write set_SendChunked;
    property ContentLength64: Int64 read get_ContentLength64 write set_ContentLength64;
    property Cookies: DDNC.System.Net.Primitives.DNCookieCollection read get_Cookies write set_Cookies;
    property KeepAlive: Boolean read get_KeepAlive write set_KeepAlive;
    property OutputStream: DDNC.System.Private.CoreLib.DNStream read get_OutputStream;
    property RedirectLocation: string read get_RedirectLocation write set_RedirectLocation;
    property StatusDescription: string read get_StatusDescription write set_StatusDescription;
    property StatusCode: Int32 read get_StatusCode write set_StatusCode;
    property ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion read get_ProtocolVersion write set_ProtocolVersion;
  end;

  TDNHttpListenerResponse = class(TDNGenericImport<DNHttpListenerResponseClass, DNHttpListenerResponse>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerTimeoutManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{486EA4E0-1357-598E-9D1B-7849BBAD635E}']
  end;

  [DNTypeName('System.Net.HttpListenerTimeoutManager')]
  DNHttpListenerTimeoutManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D8E8FA11-D6D2-3D27-8FE3-B9A4A7419F90}']
  { getters & setters } 

    function get_EntityBody: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_EntityBody(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_DrainEntityBody: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_DrainEntityBody(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_RequestQueue: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_RequestQueue(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_IdleConnection: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_IdleConnection(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_HeaderWait: DDNC.System.Private.CoreLib.DNTimeSpan;
    procedure set_HeaderWait(value: DDNC.System.Private.CoreLib.DNTimeSpan);
    function get_MinSendBytesPerSecond: Int64;
    procedure set_MinSendBytesPerSecond(value: Int64);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property EntityBody: DDNC.System.Private.CoreLib.DNTimeSpan read get_EntityBody write set_EntityBody;
    property DrainEntityBody: DDNC.System.Private.CoreLib.DNTimeSpan read get_DrainEntityBody write set_DrainEntityBody;
    property RequestQueue: DDNC.System.Private.CoreLib.DNTimeSpan read get_RequestQueue write set_RequestQueue;
    property IdleConnection: DDNC.System.Private.CoreLib.DNTimeSpan read get_IdleConnection write set_IdleConnection;
    property HeaderWait: DDNC.System.Private.CoreLib.DNTimeSpan read get_HeaderWait write set_HeaderWait;
    property MinSendBytesPerSecond: Int64 read get_MinSendBytesPerSecond write set_MinSendBytesPerSecond;
  end;

  TDNHttpListenerTimeoutManager = class(TDNGenericImport<DNHttpListenerTimeoutManagerClass, DNHttpListenerTimeoutManager>) end;

  //-------------namespace: System.Net.WebSockets----------------
  DNHttpListenerWebSocketContextClass = interface(DNObjectClass)
  ['{EEF1EF19-B1C5-509A-813F-4956D83658C8}']
  end;

  [DNTypeName('System.Net.WebSockets.HttpListenerWebSocketContext')]
  DNHttpListenerWebSocketContext = interface(DNObject)
  ['{DBBC1E7A-559F-3B3E-BC4E-DB46CA6B7047}']
  { getters & setters } 

    function get_RequestUri: DDNC.System.Private.Uri.DNUri;
    function get_Headers: DDNC.System.Collections.Specialized.DNNameValueCollection;
    function get_Origin: string;
    function get_SecWebSocketProtocols: DDNC.System.Private.CoreLib.DNIEnumerable<string>;
    function get_SecWebSocketVersion: string;
    function get_SecWebSocketKey: string;
    function get_CookieCollection: DDNC.System.Net.Primitives.DNCookieCollection;
    function get_User: DDNC.System.Security.Principal.DNIPrincipal;
    function get_IsAuthenticated: Boolean;
    function get_IsLocal: Boolean;
    function get_IsSecureConnection: Boolean;
    function get_WebSocket: DDNC.System.Net.WebSockets.DNWebSocket;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property RequestUri: DDNC.System.Private.Uri.DNUri read get_RequestUri;
    property Headers: DDNC.System.Collections.Specialized.DNNameValueCollection read get_Headers;
    property Origin: string read get_Origin;
    property SecWebSocketProtocols: DDNC.System.Private.CoreLib.DNIEnumerable<string> read get_SecWebSocketProtocols;
    property SecWebSocketVersion: string read get_SecWebSocketVersion;
    property SecWebSocketKey: string read get_SecWebSocketKey;
    property CookieCollection: DDNC.System.Net.Primitives.DNCookieCollection read get_CookieCollection;
    property User: DDNC.System.Security.Principal.DNIPrincipal read get_User;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property IsLocal: Boolean read get_IsLocal;
    property IsSecureConnection: Boolean read get_IsSecureConnection;
    property WebSocket: DDNC.System.Net.WebSockets.DNWebSocket read get_WebSocket;
  end;

  TDNHttpListenerWebSocketContext = class(TDNGenericImport<DNHttpListenerWebSocketContextClass, DNHttpListenerWebSocketContext>) end;

  //-------------namespace: System.Net----------------
  DNHttpListenerBasicIdentityClass = interface(DNObjectClass)
  ['{1DF17F94-87C9-5E36-98B1-6836A960E0F7}']
  { constructors } 

    {class} function init(username: string; password: string): DNHttpListenerBasicIdentity;

  end;

  [DNTypeName('System.Net.HttpListenerBasicIdentity')]
  DNHttpListenerBasicIdentity = interface(DNObject)
  ['{E9CEC809-CF00-3FAA-89E2-E142C3C36A3F}']
  { getters & setters } 

    function get_Password: string;
    function get_Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Security.Claims.DNClaim>;
    function get_Name: string;
    function get_AuthenticationType: string;
    function get_IsAuthenticated: Boolean;
    function get_Actor: DDNC.System.Security.Claims.DNClaimsIdentity;
    procedure set_Actor(value: DDNC.System.Security.Claims.DNClaimsIdentity);
    function get_BootstrapContext: DDNC.System.Private.CoreLib.DNObject;
    procedure set_BootstrapContext(value: DDNC.System.Private.CoreLib.DNObject);
    function get_Label: string;
    procedure set_Label(value: string);
    function get_NameClaimType: string;
    function get_RoleClaimType: string;

  { methods } 

    function Clone: DDNC.System.Security.Claims.DNClaimsIdentity;
    procedure AddClaim(claim: DDNC.System.Security.Claims.DNClaim);
    procedure AddClaims(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Security.Claims.DNClaim>);
    function TryRemoveClaim(claim: DDNC.System.Security.Claims.DNClaim): Boolean;
    procedure RemoveClaim(claim: DDNC.System.Security.Claims.DNClaim);
    function FindAll(match: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Security.Claims.DNClaim>): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Security.Claims.DNClaim>; overload;
    function FindAll(&type: string): DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Security.Claims.DNClaim>; overload;
    function FindFirst(match: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Security.Claims.DNClaim>): DDNC.System.Security.Claims.DNClaim; overload;
    function FindFirst(&type: string): DDNC.System.Security.Claims.DNClaim; overload;
    function HasClaim(match: DDNC.System.Private.CoreLib.DNPredicate<DDNC.System.Security.Claims.DNClaim>): Boolean; overload;
    function HasClaim(&type: string; value: string): Boolean; overload;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Password: string read get_Password;
    property Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DDNC.System.Security.Claims.DNClaim> read get_Claims;
    property Name: string read get_Name;
    property AuthenticationType: string read get_AuthenticationType;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property Actor: DDNC.System.Security.Claims.DNClaimsIdentity read get_Actor write set_Actor;
    property BootstrapContext: DDNC.System.Private.CoreLib.DNObject read get_BootstrapContext write set_BootstrapContext;
    property &Label: string read get_Label write set_Label;
    property NameClaimType: string read get_NameClaimType;
    property RoleClaimType: string read get_RoleClaimType;
  end;

  TDNHttpListenerBasicIdentity = class(TDNGenericImport<DNHttpListenerBasicIdentityClass, DNHttpListenerBasicIdentity>) end;


implementation


initialization
  LoadAssemblyModule('System.Net.HttpListener.dll', True, 'System.Net.HttpListener, Version=4.0.1.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
