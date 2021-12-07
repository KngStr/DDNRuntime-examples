//----------------------------------------------------------------------------
//  System.Net.WebSockets.dll: System.Net.WebSockets, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.WebSockets
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Net.WebSockets;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.Microsoft.Win32.Primitives,
  DDNC.System.Private.Uri,
  DDNC.System.Collections.Specialized,
  DDNC.System.Net.Primitives;

type

{ enums }

  //-------------namespace: System.Net.WebSockets----------------
  [DNTypeName('System.Net.WebSockets.WebSocketCloseStatus')]
  DNWebSocketCloseStatus = type Integer;
  DNWebSocketCloseStatusHelper = record helper for DNWebSocketCloseStatus
  public const
    NormalClosure = 1000;
    EndpointUnavailable = 1001;
    ProtocolError = 1002;
    InvalidMessageType = 1003;
    Empty = 1005;
    InvalidPayloadData = 1007;
    PolicyViolation = 1008;
    MessageTooBig = 1009;
    MandatoryExtension = 1010;
    InternalServerError = 1011;
  end;


  //-------------namespace: System.Net.WebSockets----------------
  [DNTypeName('System.Net.WebSockets.WebSocketError')]
  DNWebSocketError = type Integer;
  DNWebSocketErrorHelper = record helper for DNWebSocketError
  public const
    Success = 0;
    InvalidMessageType = 1;
    Faulted = 2;
    NativeError = 3;
    NotAWebSocket = 4;
    UnsupportedVersion = 5;
    UnsupportedProtocol = 6;
    HeaderError = 7;
    ConnectionClosedPrematurely = 8;
    InvalidState = 9;
  end;


  //-------------namespace: System.Net.WebSockets----------------
  [DNTypeName('System.Net.WebSockets.WebSocketMessageType')]
  DNWebSocketMessageType = type Integer;
  DNWebSocketMessageTypeHelper = record helper for DNWebSocketMessageType
  public const
    Text = 0;
    Binary = 1;
    Close = 2;
  end;


  //-------------namespace: System.Net.WebSockets----------------
  [DNTypeName('System.Net.WebSockets.WebSocketState')]
  DNWebSocketState = type Integer;
  DNWebSocketStateHelper = record helper for DNWebSocketState
  public const
    None = 0;
    Connecting = 1;
    Open = 2;
    CloseSent = 3;
    CloseReceived = 4;
    Closed = 5;
    Aborted = 6;
  end;




type


{ declares }

  DNWebSocketException = interface; // type: System.Net.WebSockets.WebSocketException, namespace: System.Net.WebSockets
  DNWebSocket = interface; // type: System.Net.WebSockets.WebSocket, namespace: System.Net.WebSockets
  DNWebSocketContext = interface; // type: System.Net.WebSockets.WebSocketContext, namespace: System.Net.WebSockets
  DNWebSocketReceiveResult = interface; // type: System.Net.WebSockets.WebSocketReceiveResult, namespace: System.Net.WebSockets
  DNValueWebSocketReceiveResult = interface; // type: System.Net.WebSockets.ValueWebSocketReceiveResult, namespace: System.Net.WebSockets


{ objects }

  //-------------namespace: System.Net.WebSockets----------------
  DNWebSocketExceptionClass = interface(DNObjectClass)
  ['{4D118A91-F536-5587-B0F4-804FB3C3203D}']
  { constructors } 

    {class} function init: DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; message: string): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;
    {class} function init(nativeError: Int32): DNWebSocketException; overload;
    {class} function init(nativeError: Int32; message: string): DNWebSocketException; overload;
    {class} function init(nativeError: Int32; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; nativeError: Int32): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; nativeError: Int32; message: string): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; nativeError: Int32; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;
    {class} function init(error: DNWebSocketError; nativeError: Int32; message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;
    {class} function init(message: string): DNWebSocketException; overload;
    {class} function init(message: string; innerException: DDNC.System.Private.CoreLib.DNException): DNWebSocketException; overload;

  end;

  [DNTypeName('System.Net.WebSockets.WebSocketException')]
  DNWebSocketException = interface(DNObject)
  ['{226BD70E-C320-3B60-94AE-C4B7BC182B2C}']
  { getters & setters } 

    function get_ErrorCode: Int32;
    function get_WebSocketErrorCode: DNWebSocketError;
    function get_NativeErrorCode: Int32;
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

    procedure GetObjectData(info: DDNC.System.Private.CoreLib.DNSerializationInfo; context: DDNC.System.Private.CoreLib.DNStreamingContext);
    function ToString: string;
    function GetBaseException: DDNC.System.Private.CoreLib.DNException;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property ErrorCode: Int32 read get_ErrorCode;
    property WebSocketErrorCode: DNWebSocketError read get_WebSocketErrorCode;
    property NativeErrorCode: Int32 read get_NativeErrorCode;
    property TargetSite: DDNC.System.Private.CoreLib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property Message: string read get_Message;
    property Data: DDNC.System.Private.CoreLib.DNIDictionary read get_Data;
    property InnerException: DDNC.System.Private.CoreLib.DNException read get_InnerException;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult write set_HResult;
  end;

  TDNWebSocketException = class(TDNGenericImport<DNWebSocketExceptionClass, DNWebSocketException>) end;

  //-------------namespace: System.Net.WebSockets----------------
  DNWebSocketClass = interface(DNObjectClass)
  ['{507398DF-C884-5BCC-B9FF-8EFFE2377571}']
  { static getter & setter } 

    {class} function get_DefaultKeepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan;

  { static methods } 

    {class} function CreateClientBuffer(receiveBufferSize: Int32; sendBufferSize: Int32): DDNC.System.Private.CoreLib.DNArraySegment<Byte>;
    {class} function CreateServerBuffer(receiveBufferSize: Int32): DDNC.System.Private.CoreLib.DNArraySegment<Byte>;
    {class} function CreateFromStream(stream: DDNC.System.Private.CoreLib.DNStream; isServer: Boolean; subProtocol: string; keepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan): DNWebSocket;
    {class} function IsApplicationTargeting45: Boolean;
    {class} procedure RegisterPrefixes;
    {class} function CreateClientWebSocket(innerStream: DDNC.System.Private.CoreLib.DNStream; subProtocol: string; receiveBufferSize: Int32; sendBufferSize: Int32; keepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan; useZeroMaskingKey: Boolean; internalBuffer: DDNC.System.Private.CoreLib.DNArraySegment<Byte>): DNWebSocket;

  { static propertys } 

    {class} property DefaultKeepAliveInterval: DDNC.System.Private.CoreLib.DNTimeSpan read get_DefaultKeepAliveInterval;
  end;

  [DNTypeName('System.Net.WebSockets.WebSocket')]
  DNWebSocket = interface(DDNC.System.Private.CoreLib.DNIDisposable)
  ['{8311FFAC-6A3E-3CA8-9FFB-76FCD4096A57}']
  { getters & setters } 

    function get_CloseStatus: DDNC.System.Private.CoreLib.DNNullable<DNWebSocketCloseStatus>;
    function get_CloseStatusDescription: string;
    function get_SubProtocol: string;
    function get_State: DNWebSocketState;

  { methods } 

    procedure &Abort;
    function CloseAsync(closeStatus: DNWebSocketCloseStatus; statusDescription: string; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask;
    function CloseOutputAsync(closeStatus: DNWebSocketCloseStatus; statusDescription: string; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask;
    procedure Dispose;
    function ReceiveAsync(buffer: DDNC.System.Private.CoreLib.DNArraySegment<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask<DNWebSocketReceiveResult>; overload;
    function SendAsync(buffer: DDNC.System.Private.CoreLib.DNArraySegment<Byte>; messageType: DNWebSocketMessageType; endOfMessage: Boolean; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNTask; overload;
    function ReceiveAsync(buffer: DDNC.System.Private.CoreLib.DNMemory<Byte>; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask<DNValueWebSocketReceiveResult>; overload;
    function SendAsync(buffer: DDNC.System.Private.CoreLib.DNReadOnlyMemory<Byte>; messageType: DNWebSocketMessageType; endOfMessage: Boolean; cancellationToken: DDNC.System.Private.CoreLib.DNCancellationToken): DDNC.System.Private.CoreLib.DNValueTask; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property CloseStatus: DDNC.System.Private.CoreLib.DNNullable<DNWebSocketCloseStatus> read get_CloseStatus;
    property CloseStatusDescription: string read get_CloseStatusDescription;
    property SubProtocol: string read get_SubProtocol;
    property State: DNWebSocketState read get_State;
  end;

  TDNWebSocket = class(TDNGenericImport<DNWebSocketClass, DNWebSocket>) end;

  //-------------namespace: System.Net.WebSockets----------------
  DNWebSocketContextClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{62C5B90F-0946-5E7F-B3DC-2CF99090E01C}']
  end;

  [DNTypeName('System.Net.WebSockets.WebSocketContext')]
  DNWebSocketContext = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{D98F25F0-F547-3927-B7A9-B0BE0AA69170}']
  { getters & setters } 

    function get_RequestUri: DDNC.System.Private.Uri.DNUri;
    function get_Headers: DDNC.System.Collections.Specialized.DNNameValueCollection;
    function get_Origin: string;
    function get_SecWebSocketProtocols: DDNC.System.Private.CoreLib.DNIEnumerable<string>;
    function get_SecWebSocketVersion: string;
    function get_SecWebSocketKey: string;
    function get_CookieCollection: DDNC.System.Net.Primitives.DNCookieCollection;
    function get_User: DDNC.System.Private.CoreLib.DNIPrincipal;
    function get_IsAuthenticated: Boolean;
    function get_IsLocal: Boolean;
    function get_IsSecureConnection: Boolean;
    function get_WebSocket: DNWebSocket;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property RequestUri: DDNC.System.Private.Uri.DNUri read get_RequestUri;
    property Headers: DDNC.System.Collections.Specialized.DNNameValueCollection read get_Headers;
    property Origin: string read get_Origin;
    property SecWebSocketProtocols: DDNC.System.Private.CoreLib.DNIEnumerable<string> read get_SecWebSocketProtocols;
    property SecWebSocketVersion: string read get_SecWebSocketVersion;
    property SecWebSocketKey: string read get_SecWebSocketKey;
    property CookieCollection: DDNC.System.Net.Primitives.DNCookieCollection read get_CookieCollection;
    property User: DDNC.System.Private.CoreLib.DNIPrincipal read get_User;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property IsLocal: Boolean read get_IsLocal;
    property IsSecureConnection: Boolean read get_IsSecureConnection;
    property WebSocket: DNWebSocket read get_WebSocket;
  end;

  TDNWebSocketContext = class(TDNGenericImport<DNWebSocketContextClass, DNWebSocketContext>) end;

  //-------------namespace: System.Net.WebSockets----------------
  DNWebSocketReceiveResultClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{E8E56C23-AFDC-50B4-8358-B629DFD895AE}']
  { constructors } 

    {class} function init(count: Int32; messageType: DNWebSocketMessageType; endOfMessage: Boolean): DNWebSocketReceiveResult; overload;
    {class} function init(count: Int32; messageType: DNWebSocketMessageType; endOfMessage: Boolean; closeStatus: DDNC.System.Private.CoreLib.DNNullable<DNWebSocketCloseStatus>; closeStatusDescription: string): DNWebSocketReceiveResult; overload;

  end;

  [DNTypeName('System.Net.WebSockets.WebSocketReceiveResult')]
  DNWebSocketReceiveResult = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{9E020D39-C337-35E6-AA5D-8103960FCA3D}']
  { getters & setters } 

    function get_Count: Int32;
    function get_EndOfMessage: Boolean;
    function get_MessageType: DNWebSocketMessageType;
    function get_CloseStatus: DDNC.System.Private.CoreLib.DNNullable<DNWebSocketCloseStatus>;
    function get_CloseStatusDescription: string;

  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Count: Int32 read get_Count;
    property EndOfMessage: Boolean read get_EndOfMessage;
    property MessageType: DNWebSocketMessageType read get_MessageType;
    property CloseStatus: DDNC.System.Private.CoreLib.DNNullable<DNWebSocketCloseStatus> read get_CloseStatus;
    property CloseStatusDescription: string read get_CloseStatusDescription;
  end;

  TDNWebSocketReceiveResult = class(TDNGenericImport<DNWebSocketReceiveResultClass, DNWebSocketReceiveResult>) end;

  //-------------namespace: System.Net.WebSockets----------------
  DNValueWebSocketReceiveResultClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{C4480D1E-F588-5147-9029-0133F267F4F6}']
  { constructors } 

    {class} function init(count: Int32; messageType: DNWebSocketMessageType; endOfMessage: Boolean): DNValueWebSocketReceiveResult;

  end;

  [DNTypeName('System.Net.WebSockets.ValueWebSocketReceiveResult')]
  DNValueWebSocketReceiveResult = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{D6994F2A-64BE-37DC-A7A0-725350B43531}']
  { getters & setters } 

    function get_Count: Int32;
    function get_EndOfMessage: Boolean;
    function get_MessageType: DNWebSocketMessageType;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
    property EndOfMessage: Boolean read get_EndOfMessage;
    property MessageType: DNWebSocketMessageType read get_MessageType;
  end;

  TDNValueWebSocketReceiveResult = class(TDNGenericImport<DNValueWebSocketReceiveResultClass, DNValueWebSocketReceiveResult>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Net.WebSockets, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
