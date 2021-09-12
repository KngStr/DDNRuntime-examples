//----------------------------------------------------------------------------
//  System.Net.WebProxy.dll: System.Net.WebProxy, Version=5.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.WebProxy
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Net.WebProxy;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Private.Uri,
  DDNC.System.Net.Primitives;

type


{ declares }

  DNIWebProxyScript = interface; // type: System.Net.IWebProxyScript, namespace: System.Net
  DNWebProxy = interface; // type: System.Net.WebProxy, namespace: System.Net


{ objects }

  //-------------namespace: System.Net----------------
  [DNTypeName('System.Net.IWebProxyScript')]
  DNIWebProxyScript = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B2FEE428-4427-3D2E-BE9C-6A2826C228E7}']
  { methods } 

    procedure Close;
    function Load(scriptLocation: DDNC.System.Private.Uri.DNUri; script: string; helperType: DDNC.System.Private.CoreLib.DNType): Boolean;
    function Run(url: string; host: string): string;

  end;

  //-------------namespace: System.Net----------------
  DNWebProxyClass = interface(DNObjectClass)
  ['{8F8EE70B-0616-55E2-8A40-19616A3E94D4}']
  { constructors } 

    {class} function init: DNWebProxy; overload;
    {class} function init(Address: DDNC.System.Private.Uri.DNUri): DNWebProxy; overload;
    {class} function init(Address: DDNC.System.Private.Uri.DNUri; BypassOnLocal: Boolean): DNWebProxy; overload;
    {class} function init(Address: DDNC.System.Private.Uri.DNUri; BypassOnLocal: Boolean; BypassList: TArray<string>): DNWebProxy; overload;
    {class} function init(Address: DDNC.System.Private.Uri.DNUri; BypassOnLocal: Boolean; BypassList: TArray<string>; Credentials: DDNC.System.Net.Primitives.DNICredentials): DNWebProxy; overload;
    {class} function init(Host: string; Port: Int32): DNWebProxy; overload;
    {class} function init(Address: string): DNWebProxy; overload;
    {class} function init(Address: string; BypassOnLocal: Boolean): DNWebProxy; overload;
    {class} function init(Address: string; BypassOnLocal: Boolean; BypassList: TArray<string>): DNWebProxy; overload;
    {class} function init(Address: string; BypassOnLocal: Boolean; BypassList: TArray<string>; Credentials: DDNC.System.Net.Primitives.DNICredentials): DNWebProxy; overload;

  { static methods } 

    {class} function GetDefaultProxy: DNWebProxy;

  end;

  [DNTypeName('System.Net.WebProxy')]
  DNWebProxy = interface(DDNC.System.Net.Primitives.DNIWebProxy)
  ['{64FE3971-CE1F-3F94-8EA6-7EC40A1941AA}']
  { getters & setters } 

    function get_Address: DDNC.System.Private.Uri.DNUri;
    procedure set_Address(value: DDNC.System.Private.Uri.DNUri);
    function get_BypassProxyOnLocal: Boolean;
    procedure set_BypassProxyOnLocal(value: Boolean);
    function get_BypassList: TArray<string>;
    procedure set_BypassList(value: TArray<string>);
    function get_BypassArrayList: DDNC.System.Private.CoreLib.DNArrayList;
    function get_Credentials: DDNC.System.Net.Primitives.DNICredentials;
    procedure set_Credentials(value: DDNC.System.Net.Primitives.DNICredentials);
    function get_UseDefaultCredentials: Boolean;
    procedure set_UseDefaultCredentials(value: Boolean);

  { methods } 

    function GetProxy(destination: DDNC.System.Private.Uri.DNUri): DDNC.System.Private.Uri.DNUri;
    function IsBypassed(host: DDNC.System.Private.Uri.DNUri): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Address: DDNC.System.Private.Uri.DNUri read get_Address write set_Address;
    property BypassProxyOnLocal: Boolean read get_BypassProxyOnLocal write set_BypassProxyOnLocal;
    property BypassList: TArray<string> read get_BypassList write set_BypassList;
    property BypassArrayList: DDNC.System.Private.CoreLib.DNArrayList read get_BypassArrayList;
    property Credentials: DDNC.System.Net.Primitives.DNICredentials read get_Credentials write set_Credentials;
    property UseDefaultCredentials: Boolean read get_UseDefaultCredentials write set_UseDefaultCredentials;
  end;

  TDNWebProxy = class(TDNGenericImport<DNWebProxyClass, DNWebProxy>) end;


implementation


initialization
  LoadAssemblyModule('System.Net.WebProxy, Version=5.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
