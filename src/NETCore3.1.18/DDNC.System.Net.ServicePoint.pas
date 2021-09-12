//----------------------------------------------------------------------------
//  System.Net.ServicePoint.dll: System.Net.ServicePoint, Version=4.0.2.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.ServicePoint
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Net.ServicePoint;

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
  DDNC.System.Private.Uri,
  DDNC.System.Security.Cryptography.X509Certificates,
  DDNC.System.Net.Security;

type

{ enums }

  //-------------namespace: System.Net----------------
  [DNTypeName('System.Net.SecurityProtocolType')]
  DNSecurityProtocolType = type Integer;
  DNSecurityProtocolTypeHelper = record helper for DNSecurityProtocolType
  public const
    SystemDefault = 0;
    Ssl3 = 48;
    Tls = 192;
    Tls11 = 768;
    Tls12 = 3072;
    Tls13 = 12288;
  end;




type


{ declares }

  DNServicePoint = interface; // type: System.Net.ServicePoint, namespace: System.Net
  DNServicePointManager = interface; // type: System.Net.ServicePointManager, namespace: System.Net

{ delegates }

  [DNTypeName('System.Net.BindIPEndPoint')]
  DNBindIPEndPoint = function(servicePoint: DNServicePoint; remoteEndPoint: DDNC.System.Net.Primitives.DNIPEndPoint; retryCount: Int32): DDNC.System.Net.Primitives.DNIPEndPoint of object;




{ objects }

  //-------------namespace: System.Net----------------
  DNServicePointClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{DDAC20CD-E192-5983-8038-FB7DD092F9E7}']
  end;

  [DNTypeName('System.Net.ServicePoint')]
  DNServicePoint = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{6AA3E254-7250-3C4F-884F-ECD2941F2708}']
  { getters & setters } 

    function get_BindIPEndPointDelegate: DNBindIPEndPoint;
    procedure set_BindIPEndPointDelegate(value: DNBindIPEndPoint);
    function get_ConnectionLeaseTimeout: Int32;
    procedure set_ConnectionLeaseTimeout(value: Int32);
    function get_Address: DDNC.System.Private.Uri.DNUri;
    function get_MaxIdleTime: Int32;
    procedure set_MaxIdleTime(value: Int32);
    function get_UseNagleAlgorithm: Boolean;
    procedure set_UseNagleAlgorithm(value: Boolean);
    function get_ReceiveBufferSize: Int32;
    procedure set_ReceiveBufferSize(value: Int32);
    function get_Expect100Continue: Boolean;
    procedure set_Expect100Continue(value: Boolean);
    function get_IdleSince: DDNC.System.Private.CoreLib.DNDateTime;
    function get_ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion;
    function get_ConnectionName: string;
    function get_ConnectionLimit: Int32;
    procedure set_ConnectionLimit(value: Int32);
    function get_CurrentConnections: Int32;
    function get_Certificate: DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate;
    function get_ClientCertificate: DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate;
    function get_SupportsPipelining: Boolean;

  { methods } 

    function CloseConnectionGroup(connectionGroupName: string): Boolean;
    procedure SetTcpKeepAlive(enabled: Boolean; keepAliveTime: Int32; keepAliveInterval: Int32);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property BindIPEndPointDelegate: DNBindIPEndPoint read get_BindIPEndPointDelegate write set_BindIPEndPointDelegate;
    property ConnectionLeaseTimeout: Int32 read get_ConnectionLeaseTimeout write set_ConnectionLeaseTimeout;
    property Address: DDNC.System.Private.Uri.DNUri read get_Address;
    property MaxIdleTime: Int32 read get_MaxIdleTime write set_MaxIdleTime;
    property UseNagleAlgorithm: Boolean read get_UseNagleAlgorithm write set_UseNagleAlgorithm;
    property ReceiveBufferSize: Int32 read get_ReceiveBufferSize write set_ReceiveBufferSize;
    property Expect100Continue: Boolean read get_Expect100Continue write set_Expect100Continue;
    property IdleSince: DDNC.System.Private.CoreLib.DNDateTime read get_IdleSince;
    property ProtocolVersion: DDNC.System.Private.CoreLib.DNVersion read get_ProtocolVersion;
    property ConnectionName: string read get_ConnectionName;
    property ConnectionLimit: Int32 read get_ConnectionLimit write set_ConnectionLimit;
    property CurrentConnections: Int32 read get_CurrentConnections;
    property Certificate: DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate read get_Certificate;
    property ClientCertificate: DDNC.System.Security.Cryptography.X509Certificates.DNX509Certificate read get_ClientCertificate;
    property SupportsPipelining: Boolean read get_SupportsPipelining;
  end;

  TDNServicePoint = class(TDNGenericImport<DNServicePointClass, DNServicePoint>) end;

  //-------------namespace: System.Net----------------
  DNServicePointManagerClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{AB2BB1D9-8708-52FD-B4A4-D2668B7E95E3}']
  { static getter & setter } 

    {class} function get_SecurityProtocol: DNSecurityProtocolType;
    {class} procedure set_SecurityProtocol(value: DNSecurityProtocolType);
    {class} function get_MaxServicePoints: Int32;
    {class} procedure set_MaxServicePoints(value: Int32);
    {class} function get_DefaultConnectionLimit: Int32;
    {class} procedure set_DefaultConnectionLimit(value: Int32);
    {class} function get_MaxServicePointIdleTime: Int32;
    {class} procedure set_MaxServicePointIdleTime(value: Int32);
    {class} function get_UseNagleAlgorithm: Boolean;
    {class} procedure set_UseNagleAlgorithm(value: Boolean);
    {class} function get_Expect100Continue: Boolean;
    {class} procedure set_Expect100Continue(value: Boolean);
    {class} function get_EnableDnsRoundRobin: Boolean;
    {class} procedure set_EnableDnsRoundRobin(value: Boolean);
    {class} function get_DnsRefreshTimeout: Int32;
    {class} procedure set_DnsRefreshTimeout(value: Int32);
    {class} function get_ServerCertificateValidationCallback: DDNC.System.Net.Security.DNRemoteCertificateValidationCallback;
    {class} procedure set_ServerCertificateValidationCallback(value: DDNC.System.Net.Security.DNRemoteCertificateValidationCallback);
    {class} function get_ReusePort: Boolean;
    {class} procedure set_ReusePort(value: Boolean);
    {class} function get_CheckCertificateRevocationList: Boolean;
    {class} procedure set_CheckCertificateRevocationList(value: Boolean);
    {class} function get_EncryptionPolicy: DDNC.System.Net.Security.DNEncryptionPolicy;

  { static methods } 

    {class} function FindServicePoint(address: DDNC.System.Private.Uri.DNUri): DNServicePoint; overload;
    {class} function FindServicePoint(uriString: string; proxy: DDNC.System.Net.Primitives.DNIWebProxy): DNServicePoint; overload;
    {class} function FindServicePoint(address: DDNC.System.Private.Uri.DNUri; proxy: DDNC.System.Net.Primitives.DNIWebProxy): DNServicePoint; overload;
    {class} procedure SetTcpKeepAlive(enabled: Boolean; keepAliveTime: Int32; keepAliveInterval: Int32);

  { static propertys } 

    {class} property SecurityProtocol: DNSecurityProtocolType read get_SecurityProtocol write set_SecurityProtocol;
    {class} property MaxServicePoints: Int32 read get_MaxServicePoints write set_MaxServicePoints;
    {class} property DefaultConnectionLimit: Int32 read get_DefaultConnectionLimit write set_DefaultConnectionLimit;
    {class} property MaxServicePointIdleTime: Int32 read get_MaxServicePointIdleTime write set_MaxServicePointIdleTime;
    {class} property UseNagleAlgorithm: Boolean read get_UseNagleAlgorithm write set_UseNagleAlgorithm;
    {class} property Expect100Continue: Boolean read get_Expect100Continue write set_Expect100Continue;
    {class} property EnableDnsRoundRobin: Boolean read get_EnableDnsRoundRobin write set_EnableDnsRoundRobin;
    {class} property DnsRefreshTimeout: Int32 read get_DnsRefreshTimeout write set_DnsRefreshTimeout;
    {class} property ServerCertificateValidationCallback: DDNC.System.Net.Security.DNRemoteCertificateValidationCallback read get_ServerCertificateValidationCallback write set_ServerCertificateValidationCallback;
    {class} property ReusePort: Boolean read get_ReusePort write set_ReusePort;
    {class} property CheckCertificateRevocationList: Boolean read get_CheckCertificateRevocationList write set_CheckCertificateRevocationList;
    {class} property EncryptionPolicy: DDNC.System.Net.Security.DNEncryptionPolicy read get_EncryptionPolicy;
  end;

  [DNTypeName('System.Net.ServicePointManager')]
  DNServicePointManager = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{69BF9C5D-5D22-3A87-B24D-979E7E884753}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNServicePointManager = class(TDNGenericImport<DNServicePointManagerClass, DNServicePointManager>)
  public const
   DefaultNonPersistentConnectionLimit = 4;
   DefaultPersistentConnectionLimit = 2;
  end;


implementation


initialization
  LoadAssemblyModule('System.Net.ServicePoint, Version=4.0.2.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51');

finalization

end.
