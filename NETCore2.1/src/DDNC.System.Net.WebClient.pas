//----------------------------------------------------------------------------
//  System.Net.WebClient.dll: System.Net.WebClient, Version=4.0.1.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.WebClient
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMNETWEBCLIENT}
unit DDNC.System.Net.WebClient;
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
  DDNC.System.ComponentModel.EventBasedAsync,
  DDNC.System.ComponentModel.Primitives,
  DDNC.System.Net.Primitives,
  DDNC.System.Net.WebHeaderCollection,
  DDNC.System.Collections.Specialized,
  DDNC.System.Private.Uri;

type


{ declares }

  DNDownloadDataCompletedEventArgs = interface; // type: System.Net.DownloadDataCompletedEventArgs, namespace: System.Net
  DNDownloadStringCompletedEventArgs = interface; // type: System.Net.DownloadStringCompletedEventArgs, namespace: System.Net
  DNOpenReadCompletedEventArgs = interface; // type: System.Net.OpenReadCompletedEventArgs, namespace: System.Net
  DNOpenWriteCompletedEventArgs = interface; // type: System.Net.OpenWriteCompletedEventArgs, namespace: System.Net
  DNUploadDataCompletedEventArgs = interface; // type: System.Net.UploadDataCompletedEventArgs, namespace: System.Net
  DNUploadFileCompletedEventArgs = interface; // type: System.Net.UploadFileCompletedEventArgs, namespace: System.Net
  DNUploadStringCompletedEventArgs = interface; // type: System.Net.UploadStringCompletedEventArgs, namespace: System.Net
  DNUploadValuesCompletedEventArgs = interface; // type: System.Net.UploadValuesCompletedEventArgs, namespace: System.Net
  DNDownloadProgressChangedEventArgs = interface; // type: System.Net.DownloadProgressChangedEventArgs, namespace: System.Net
  DNUploadProgressChangedEventArgs = interface; // type: System.Net.UploadProgressChangedEventArgs, namespace: System.Net
  DNWriteStreamClosedEventArgs = interface; // type: System.Net.WriteStreamClosedEventArgs, namespace: System.Net
  DNWebClient = interface; // type: System.Net.WebClient, namespace: System.Net

{ delegates }

  [DNTypeName('System.Net.DownloadDataCompletedEventHandler')]
  DNDownloadDataCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDownloadDataCompletedEventArgs) of object;

  [DNTypeName('System.Net.DownloadProgressChangedEventHandler')]
  DNDownloadProgressChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDownloadProgressChangedEventArgs) of object;

  [DNTypeName('System.Net.DownloadStringCompletedEventHandler')]
  DNDownloadStringCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNDownloadStringCompletedEventArgs) of object;

  [DNTypeName('System.Net.OpenReadCompletedEventHandler')]
  DNOpenReadCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNOpenReadCompletedEventArgs) of object;

  [DNTypeName('System.Net.OpenWriteCompletedEventHandler')]
  DNOpenWriteCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNOpenWriteCompletedEventArgs) of object;

  [DNTypeName('System.Net.UploadDataCompletedEventHandler')]
  DNUploadDataCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNUploadDataCompletedEventArgs) of object;

  [DNTypeName('System.Net.UploadFileCompletedEventHandler')]
  DNUploadFileCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNUploadFileCompletedEventArgs) of object;

  [DNTypeName('System.Net.UploadProgressChangedEventHandler')]
  DNUploadProgressChangedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNUploadProgressChangedEventArgs) of object;

  [DNTypeName('System.Net.UploadStringCompletedEventHandler')]
  DNUploadStringCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNUploadStringCompletedEventArgs) of object;

  [DNTypeName('System.Net.UploadValuesCompletedEventHandler')]
  DNUploadValuesCompletedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNUploadValuesCompletedEventArgs) of object;

  [DNTypeName('System.Net.WriteStreamClosedEventHandler')]
  DNWriteStreamClosedEventHandler = procedure(sender: DDNC.System.Private.CoreLib.DNObject; e: DNWriteStreamClosedEventArgs) of object;




{ objects }

  //-------------namespace: System.Net----------------
  DNDownloadDataCompletedEventArgsClass = interface(DNObjectClass)
  ['{7F928B04-23EF-57FC-9686-9CDCA40C1262}']
  end;

  [DNTypeName('System.Net.DownloadDataCompletedEventArgs')]
  DNDownloadDataCompletedEventArgs = interface(DNObject)
  ['{4D3AA86D-29C5-35BE-81F1-6A4D0D0DF48A}']
  { getters & setters } 

    function get_Result: TArray<Byte>;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: TArray<Byte> read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNDownloadDataCompletedEventArgs = class(TDNGenericImport<DNDownloadDataCompletedEventArgsClass, DNDownloadDataCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNDownloadStringCompletedEventArgsClass = interface(DNObjectClass)
  ['{097185D4-364A-546D-BB2D-A23ABDDB27D3}']
  end;

  [DNTypeName('System.Net.DownloadStringCompletedEventArgs')]
  DNDownloadStringCompletedEventArgs = interface(DNObject)
  ['{29D348F1-E3BD-3B3D-8C40-DD8065004D41}']
  { getters & setters } 

    function get_Result: string;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: string read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNDownloadStringCompletedEventArgs = class(TDNGenericImport<DNDownloadStringCompletedEventArgsClass, DNDownloadStringCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNOpenReadCompletedEventArgsClass = interface(DNObjectClass)
  ['{F5F5765E-1244-5C77-BB8B-4E2301086087}']
  end;

  [DNTypeName('System.Net.OpenReadCompletedEventArgs')]
  DNOpenReadCompletedEventArgs = interface(DNObject)
  ['{D6AC3C46-F8ED-3C39-9A86-A82DA5877038}']
  { getters & setters } 

    function get_Result: DDNC.System.Private.CoreLib.DNStream;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: DDNC.System.Private.CoreLib.DNStream read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNOpenReadCompletedEventArgs = class(TDNGenericImport<DNOpenReadCompletedEventArgsClass, DNOpenReadCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNOpenWriteCompletedEventArgsClass = interface(DNObjectClass)
  ['{21D7823E-B6B8-5351-B324-0D3B2A1AA1C0}']
  end;

  [DNTypeName('System.Net.OpenWriteCompletedEventArgs')]
  DNOpenWriteCompletedEventArgs = interface(DNObject)
  ['{1E8A7B27-E8AF-3DA1-B35C-BD562B6A93EA}']
  { getters & setters } 

    function get_Result: DDNC.System.Private.CoreLib.DNStream;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: DDNC.System.Private.CoreLib.DNStream read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNOpenWriteCompletedEventArgs = class(TDNGenericImport<DNOpenWriteCompletedEventArgsClass, DNOpenWriteCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNUploadDataCompletedEventArgsClass = interface(DNObjectClass)
  ['{5CE88156-5081-54B6-A0EC-4FEBA3399D4D}']
  end;

  [DNTypeName('System.Net.UploadDataCompletedEventArgs')]
  DNUploadDataCompletedEventArgs = interface(DNObject)
  ['{C6E33C92-9DB7-3898-A6C2-438E322C0CCD}']
  { getters & setters } 

    function get_Result: TArray<Byte>;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: TArray<Byte> read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNUploadDataCompletedEventArgs = class(TDNGenericImport<DNUploadDataCompletedEventArgsClass, DNUploadDataCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNUploadFileCompletedEventArgsClass = interface(DNObjectClass)
  ['{9A8D5610-A015-54DC-AFE5-EC228CC0CD59}']
  end;

  [DNTypeName('System.Net.UploadFileCompletedEventArgs')]
  DNUploadFileCompletedEventArgs = interface(DNObject)
  ['{A944B7BC-9295-31B3-B58D-D7006C7D8326}']
  { getters & setters } 

    function get_Result: TArray<Byte>;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: TArray<Byte> read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNUploadFileCompletedEventArgs = class(TDNGenericImport<DNUploadFileCompletedEventArgsClass, DNUploadFileCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNUploadStringCompletedEventArgsClass = interface(DNObjectClass)
  ['{E099065D-B745-5706-B835-F533EFE2B2A3}']
  end;

  [DNTypeName('System.Net.UploadStringCompletedEventArgs')]
  DNUploadStringCompletedEventArgs = interface(DNObject)
  ['{3D44DED7-6515-3A89-934A-9E5718A0DB20}']
  { getters & setters } 

    function get_Result: string;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: string read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNUploadStringCompletedEventArgs = class(TDNGenericImport<DNUploadStringCompletedEventArgsClass, DNUploadStringCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNUploadValuesCompletedEventArgsClass = interface(DNObjectClass)
  ['{3A64E1A9-9124-5B73-91D1-3A994EC6A0BB}']
  end;

  [DNTypeName('System.Net.UploadValuesCompletedEventArgs')]
  DNUploadValuesCompletedEventArgs = interface(DNObject)
  ['{72D96EAC-278F-327C-B748-B39FE7D6E485}']
  { getters & setters } 

    function get_Result: TArray<Byte>;
    function get_Cancelled: Boolean;
    function get_Error: DDNC.System.Private.CoreLib.DNException;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Result: TArray<Byte> read get_Result;
    property Cancelled: Boolean read get_Cancelled;
    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNUploadValuesCompletedEventArgs = class(TDNGenericImport<DNUploadValuesCompletedEventArgsClass, DNUploadValuesCompletedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNDownloadProgressChangedEventArgsClass = interface(DNObjectClass)
  ['{BACD8B49-B318-54F9-9726-E73A7AFB0F36}']
  end;

  [DNTypeName('System.Net.DownloadProgressChangedEventArgs')]
  DNDownloadProgressChangedEventArgs = interface(DNObject)
  ['{A6A3C906-B61F-3FEE-BED5-0E3AA199070E}']
  { getters & setters } 

    function get_BytesReceived: Int64;
    function get_TotalBytesToReceive: Int64;
    function get_ProgressPercentage: Int32;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property BytesReceived: Int64 read get_BytesReceived;
    property TotalBytesToReceive: Int64 read get_TotalBytesToReceive;
    property ProgressPercentage: Int32 read get_ProgressPercentage;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNDownloadProgressChangedEventArgs = class(TDNGenericImport<DNDownloadProgressChangedEventArgsClass, DNDownloadProgressChangedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNUploadProgressChangedEventArgsClass = interface(DNObjectClass)
  ['{F5F29C1A-0602-5805-B1D0-C52076204953}']
  end;

  [DNTypeName('System.Net.UploadProgressChangedEventArgs')]
  DNUploadProgressChangedEventArgs = interface(DNObject)
  ['{82E0F71E-012E-3D05-9AB1-9AACFBC0DAF0}']
  { getters & setters } 

    function get_BytesReceived: Int64;
    function get_TotalBytesToReceive: Int64;
    function get_BytesSent: Int64;
    function get_TotalBytesToSend: Int64;
    function get_ProgressPercentage: Int32;
    function get_UserState: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property BytesReceived: Int64 read get_BytesReceived;
    property TotalBytesToReceive: Int64 read get_TotalBytesToReceive;
    property BytesSent: Int64 read get_BytesSent;
    property TotalBytesToSend: Int64 read get_TotalBytesToSend;
    property ProgressPercentage: Int32 read get_ProgressPercentage;
    property UserState: DDNC.System.Private.CoreLib.DNObject read get_UserState;
  end;

  TDNUploadProgressChangedEventArgs = class(TDNGenericImport<DNUploadProgressChangedEventArgsClass, DNUploadProgressChangedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNWriteStreamClosedEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{2077EB62-9DD6-5B06-8B8B-274A3BD71F98}']
  { constructors } 

    {class} function init: DNWriteStreamClosedEventArgs;

  end;

  [DNTypeName('System.Net.WriteStreamClosedEventArgs')]
  DNWriteStreamClosedEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{66D18EBD-3196-3725-860B-750EB2DEA509}']
  { getters & setters } 

    function get_Error: DDNC.System.Private.CoreLib.DNException;

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Error: DDNC.System.Private.CoreLib.DNException read get_Error;
  end;

  TDNWriteStreamClosedEventArgs = class(TDNGenericImport<DNWriteStreamClosedEventArgsClass, DNWriteStreamClosedEventArgs>) end;

  //-------------namespace: System.Net----------------
  DNWebClientClass = interface(DNObjectClass)
  ['{2BD770AE-15C7-5906-8DB4-2AD6EA7E5996}']
  { constructors } 

    {class} function init: DNWebClient;

  end;

  [DNTypeName('System.Net.WebClient')]
  DNWebClient = interface(DNObject)
  ['{F2E971C7-51BC-38CE-A47C-450ECFD4E15D}']
  { getters & setters } 

    function get_Encoding: DDNC.System.Private.CoreLib.DNEncoding;
    procedure set_Encoding(value: DDNC.System.Private.CoreLib.DNEncoding);
    function get_BaseAddress: string;
    procedure set_BaseAddress(value: string);
    function get_Credentials: DDNC.System.Net.Primitives.DNICredentials;
    procedure set_Credentials(value: DDNC.System.Net.Primitives.DNICredentials);
    function get_UseDefaultCredentials: Boolean;
    procedure set_UseDefaultCredentials(value: Boolean);
    function get_Headers: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection;
    procedure set_Headers(value: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection);
    function get_QueryString: DDNC.System.Collections.Specialized.DNNameValueCollection;
    procedure set_QueryString(value: DDNC.System.Collections.Specialized.DNNameValueCollection);
    function get_ResponseHeaders: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection;
    function get_Proxy: DDNC.System.Net.Primitives.DNIWebProxy;
    procedure set_Proxy(value: DDNC.System.Net.Primitives.DNIWebProxy);
    function get_CachePolicy: DDNC.System.Net.Primitives.DNRequestCachePolicy;
    procedure set_CachePolicy(value: DDNC.System.Net.Primitives.DNRequestCachePolicy);
    function get_IsBusy: Boolean;
    function get_AllowReadStreamBuffering: Boolean;
    procedure set_AllowReadStreamBuffering(value: Boolean);
    function get_AllowWriteStreamBuffering: Boolean;
    procedure set_AllowWriteStreamBuffering(value: Boolean);
    function get_Site: DDNC.System.ComponentModel.Primitives.DNISite;
    procedure set_Site(value: DDNC.System.ComponentModel.Primitives.DNISite);
    function get_Container: DDNC.System.ComponentModel.Primitives.DNIContainer;

  { events } 

    procedure add_DownloadStringCompleted(value: DNDownloadStringCompletedEventHandler);
    procedure remove_DownloadStringCompleted(value: DNDownloadStringCompletedEventHandler);
    procedure add_DownloadDataCompleted(value: DNDownloadDataCompletedEventHandler);
    procedure remove_DownloadDataCompleted(value: DNDownloadDataCompletedEventHandler);
    procedure add_DownloadFileCompleted(value: DDNC.System.ComponentModel.EventBasedAsync.DNAsyncCompletedEventHandler);
    procedure remove_DownloadFileCompleted(value: DDNC.System.ComponentModel.EventBasedAsync.DNAsyncCompletedEventHandler);
    procedure add_UploadStringCompleted(value: DNUploadStringCompletedEventHandler);
    procedure remove_UploadStringCompleted(value: DNUploadStringCompletedEventHandler);
    procedure add_UploadDataCompleted(value: DNUploadDataCompletedEventHandler);
    procedure remove_UploadDataCompleted(value: DNUploadDataCompletedEventHandler);
    procedure add_UploadFileCompleted(value: DNUploadFileCompletedEventHandler);
    procedure remove_UploadFileCompleted(value: DNUploadFileCompletedEventHandler);
    procedure add_UploadValuesCompleted(value: DNUploadValuesCompletedEventHandler);
    procedure remove_UploadValuesCompleted(value: DNUploadValuesCompletedEventHandler);
    procedure add_OpenReadCompleted(value: DNOpenReadCompletedEventHandler);
    procedure remove_OpenReadCompleted(value: DNOpenReadCompletedEventHandler);
    procedure add_OpenWriteCompleted(value: DNOpenWriteCompletedEventHandler);
    procedure remove_OpenWriteCompleted(value: DNOpenWriteCompletedEventHandler);
    procedure add_DownloadProgressChanged(value: DNDownloadProgressChangedEventHandler);
    procedure remove_DownloadProgressChanged(value: DNDownloadProgressChangedEventHandler);
    procedure add_UploadProgressChanged(value: DNUploadProgressChangedEventHandler);
    procedure remove_UploadProgressChanged(value: DNUploadProgressChangedEventHandler);
    procedure add_WriteStreamClosed(value: DNWriteStreamClosedEventHandler);
    procedure remove_WriteStreamClosed(value: DNWriteStreamClosedEventHandler);
    procedure add_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);
    procedure remove_Disposed(value: DDNC.System.Private.CoreLib.DNEventHandler);

  { methods } 

    function DownloadStringTaskAsync(address: string): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function DownloadStringTaskAsync(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function OpenReadTaskAsync(address: string): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function OpenReadTaskAsync(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function OpenWriteTaskAsync(address: string): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function OpenWriteTaskAsync(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function OpenWriteTaskAsync(address: string; method: string): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function OpenWriteTaskAsync(address: DDNC.System.Private.Uri.DNUri; method: string): DDNC.System.Private.CoreLib.DNTask<DDNC.System.Private.CoreLib.DNStream>; overload;
    function UploadStringTaskAsync(address: string; data: string): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function UploadStringTaskAsync(address: DDNC.System.Private.Uri.DNUri; data: string): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function UploadStringTaskAsync(address: string; method: string; data: string): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function UploadStringTaskAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: string): DDNC.System.Private.CoreLib.DNTask<string>; overload;
    function DownloadDataTaskAsync(address: string): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function DownloadDataTaskAsync(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function DownloadFileTaskAsync(address: string; fileName: string): DDNC.System.Private.CoreLib.DNTask; overload;
    function DownloadFileTaskAsync(address: DDNC.System.Private.Uri.DNUri; fileName: string): DDNC.System.Private.CoreLib.DNTask; overload;
    function UploadDataTaskAsync(address: string; data: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadDataTaskAsync(address: DDNC.System.Private.Uri.DNUri; data: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadDataTaskAsync(address: string; method: string; data: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadDataTaskAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: TArray<Byte>): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadFileTaskAsync(address: string; fileName: string): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadFileTaskAsync(address: DDNC.System.Private.Uri.DNUri; fileName: string): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadFileTaskAsync(address: string; method: string; fileName: string): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadFileTaskAsync(address: DDNC.System.Private.Uri.DNUri; method: string; fileName: string): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadValuesTaskAsync(address: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadValuesTaskAsync(address: string; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadValuesTaskAsync(address: DDNC.System.Private.Uri.DNUri; data: DDNC.System.Collections.Specialized.DNNameValueCollection): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function UploadValuesTaskAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): DDNC.System.Private.CoreLib.DNTask<TArray<Byte>>; overload;
    function DownloadData(address: string): TArray<Byte>; overload;
    function DownloadData(address: DDNC.System.Private.Uri.DNUri): TArray<Byte>; overload;
    procedure DownloadFile(address: string; fileName: string); overload;
    procedure DownloadFile(address: DDNC.System.Private.Uri.DNUri; fileName: string); overload;
    function OpenRead(address: string): DDNC.System.Private.CoreLib.DNStream; overload;
    function OpenRead(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNStream; overload;
    function OpenWrite(address: string): DDNC.System.Private.CoreLib.DNStream; overload;
    function OpenWrite(address: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.CoreLib.DNStream; overload;
    function OpenWrite(address: string; method: string): DDNC.System.Private.CoreLib.DNStream; overload;
    function OpenWrite(address: DDNC.System.Private.Uri.DNUri; method: string): DDNC.System.Private.CoreLib.DNStream; overload;
    function UploadData(address: string; data: TArray<Byte>): TArray<Byte>; overload;
    function UploadData(address: DDNC.System.Private.Uri.DNUri; data: TArray<Byte>): TArray<Byte>; overload;
    function UploadData(address: string; method: string; data: TArray<Byte>): TArray<Byte>; overload;
    function UploadData(address: DDNC.System.Private.Uri.DNUri; method: string; data: TArray<Byte>): TArray<Byte>; overload;
    function UploadFile(address: string; fileName: string): TArray<Byte>; overload;
    function UploadFile(address: DDNC.System.Private.Uri.DNUri; fileName: string): TArray<Byte>; overload;
    function UploadFile(address: string; method: string; fileName: string): TArray<Byte>; overload;
    function UploadFile(address: DDNC.System.Private.Uri.DNUri; method: string; fileName: string): TArray<Byte>; overload;
    function UploadValues(address: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): TArray<Byte>; overload;
    function UploadValues(address: DDNC.System.Private.Uri.DNUri; data: DDNC.System.Collections.Specialized.DNNameValueCollection): TArray<Byte>; overload;
    function UploadValues(address: string; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): TArray<Byte>; overload;
    function UploadValues(address: DDNC.System.Private.Uri.DNUri; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection): TArray<Byte>; overload;
    function UploadString(address: string; data: string): string; overload;
    function UploadString(address: DDNC.System.Private.Uri.DNUri; data: string): string; overload;
    function UploadString(address: string; method: string; data: string): string; overload;
    function UploadString(address: DDNC.System.Private.Uri.DNUri; method: string; data: string): string; overload;
    function DownloadString(address: string): string; overload;
    function DownloadString(address: DDNC.System.Private.Uri.DNUri): string; overload;
    procedure OpenReadAsync(address: DDNC.System.Private.Uri.DNUri); overload;
    procedure OpenReadAsync(address: DDNC.System.Private.Uri.DNUri; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure OpenWriteAsync(address: DDNC.System.Private.Uri.DNUri); overload;
    procedure OpenWriteAsync(address: DDNC.System.Private.Uri.DNUri; method: string); overload;
    procedure OpenWriteAsync(address: DDNC.System.Private.Uri.DNUri; method: string; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure DownloadStringAsync(address: DDNC.System.Private.Uri.DNUri); overload;
    procedure DownloadStringAsync(address: DDNC.System.Private.Uri.DNUri; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure DownloadDataAsync(address: DDNC.System.Private.Uri.DNUri); overload;
    procedure DownloadDataAsync(address: DDNC.System.Private.Uri.DNUri; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure DownloadFileAsync(address: DDNC.System.Private.Uri.DNUri; fileName: string); overload;
    procedure DownloadFileAsync(address: DDNC.System.Private.Uri.DNUri; fileName: string; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure UploadStringAsync(address: DDNC.System.Private.Uri.DNUri; data: string); overload;
    procedure UploadStringAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: string); overload;
    procedure UploadStringAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: string; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure UploadDataAsync(address: DDNC.System.Private.Uri.DNUri; data: TArray<Byte>); overload;
    procedure UploadDataAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: TArray<Byte>); overload;
    procedure UploadDataAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: TArray<Byte>; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure UploadFileAsync(address: DDNC.System.Private.Uri.DNUri; fileName: string); overload;
    procedure UploadFileAsync(address: DDNC.System.Private.Uri.DNUri; method: string; fileName: string); overload;
    procedure UploadFileAsync(address: DDNC.System.Private.Uri.DNUri; method: string; fileName: string; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure UploadValuesAsync(address: DDNC.System.Private.Uri.DNUri; data: DDNC.System.Collections.Specialized.DNNameValueCollection); overload;
    procedure UploadValuesAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection); overload;
    procedure UploadValuesAsync(address: DDNC.System.Private.Uri.DNUri; method: string; data: DDNC.System.Collections.Specialized.DNNameValueCollection; userToken: DDNC.System.Private.CoreLib.DNObject); overload;
    procedure CancelAsync;
    procedure Dispose;
    function ToString: string;
    function GetLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function InitializeLifetimeService: DDNC.System.Private.CoreLib.DNObject;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Encoding: DDNC.System.Private.CoreLib.DNEncoding read get_Encoding write set_Encoding;
    property BaseAddress: string read get_BaseAddress write set_BaseAddress;
    property Credentials: DDNC.System.Net.Primitives.DNICredentials read get_Credentials write set_Credentials;
    property UseDefaultCredentials: Boolean read get_UseDefaultCredentials write set_UseDefaultCredentials;
    property Headers: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection read get_Headers write set_Headers;
    property QueryString: DDNC.System.Collections.Specialized.DNNameValueCollection read get_QueryString write set_QueryString;
    property ResponseHeaders: DDNC.System.Net.WebHeaderCollection.DNWebHeaderCollection read get_ResponseHeaders;
    property Proxy: DDNC.System.Net.Primitives.DNIWebProxy read get_Proxy write set_Proxy;
    property CachePolicy: DDNC.System.Net.Primitives.DNRequestCachePolicy read get_CachePolicy write set_CachePolicy;
    property IsBusy: Boolean read get_IsBusy;
    property AllowReadStreamBuffering: Boolean read get_AllowReadStreamBuffering write set_AllowReadStreamBuffering;
    property AllowWriteStreamBuffering: Boolean read get_AllowWriteStreamBuffering write set_AllowWriteStreamBuffering;
    property Site: DDNC.System.ComponentModel.Primitives.DNISite read get_Site write set_Site;
    property Container: DDNC.System.ComponentModel.Primitives.DNIContainer read get_Container;
  end;

  TDNWebClient = class(TDNGenericImport<DNWebClientClass, DNWebClient>) end;


implementation


initialization
  LoadAssemblyModule('System.Net.WebClient.dll', True);

finalization

end.
