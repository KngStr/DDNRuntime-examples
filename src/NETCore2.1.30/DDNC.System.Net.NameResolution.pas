//----------------------------------------------------------------------------
//  System.Net.NameResolution.dll: System.Net.NameResolution, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Net.NameResolution
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Net.NameResolution;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Net.Primitives;

type

{ enums }

  //-------------namespace: System.Net.Internals----------------
  [DNTypeName('System.Net.Internals.ProtocolFamily')]
  DNProtocolFamily = type Integer;
  DNProtocolFamilyHelper = record helper for DNProtocolFamily
  public const
    Unspecified = 0;
    Unix = 1;
    InterNetwork = 2;
    ImpLink = 3;
    Pup = 4;
    Chaos = 5;
    Ipx = 6;
    NS = 6;
    Iso = 7;
    Osi = 7;
    Ecma = 8;
    DataKit = 9;
    Ccitt = 10;
    Sna = 11;
    DecNet = 12;
    DataLink = 13;
    Lat = 14;
    HyperChannel = 15;
    AppleTalk = 16;
    NetBios = 17;
    VoiceView = 18;
    FireFox = 19;
    Banyan = 21;
    Atm = 22;
    InterNetworkV6 = 23;
    Cluster = 24;
    Ieee12844 = 25;
    Irda = 26;
    NetworkDesigners = 28;
    Max = 29;
    Unknown = -1;
  end;


  //-------------namespace: System.Net.Internals----------------
  [DNTypeName('System.Net.Internals.ProtocolType')]
  DNProtocolType = type Integer;
  DNProtocolTypeHelper = record helper for DNProtocolType
  public const
    IPv6HopByHopOptions = 0;
    IP = 0;
    Unspecified = 0;
    Icmp = 1;
    Igmp = 2;
    Ggp = 3;
    IPv4 = 4;
    Tcp = 6;
    Pup = 12;
    Udp = 17;
    Idp = 22;
    IPv6 = 41;
    IPv6RoutingHeader = 43;
    IPv6FragmentHeader = 44;
    IPSecEncapsulatingSecurityPayload = 50;
    IPSecAuthenticationHeader = 51;
    IcmpV6 = 58;
    IPv6NoNextHeader = 59;
    IPv6DestinationOptions = 60;
    ND = 77;
    Raw = 255;
    Ipx = 1000;
    Spx = 1256;
    SpxII = 1257;
    Unknown = -1;
  end;




type


{ declares }

  DNDns = interface; // type: System.Net.Dns, namespace: System.Net
  DNIPHostEntry = interface; // type: System.Net.IPHostEntry, namespace: System.Net


{ objects }

  //-------------namespace: System.Net----------------
  DNDnsClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{63D14923-51E1-5FBF-8712-193BECE8E162}']
  { static methods } 

    {class} function GetHostByName(hostName: string): DNIPHostEntry;
    {class} function GetHostByAddress(address: string): DNIPHostEntry; overload;
    {class} function GetHostByAddress(address: DDNC.System.Net.Primitives.DNIPAddress): DNIPHostEntry; overload;
    {class} function GetHostName: string;
    {class} function Resolve(hostName: string): DNIPHostEntry;
    {class} function BeginGetHostByName(hostName: string; requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; stateObject: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    {class} function EndGetHostByName(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): DNIPHostEntry;
    {class} function GetHostEntry(hostNameOrAddress: string): DNIPHostEntry; overload;
    {class} function GetHostEntry(address: DDNC.System.Net.Primitives.DNIPAddress): DNIPHostEntry; overload;
    {class} function GetHostAddresses(hostNameOrAddress: string): TArray<DDNC.System.Net.Primitives.DNIPAddress>;
    {class} function BeginGetHostEntry(hostNameOrAddress: string; requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; stateObject: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult; overload;
    {class} function BeginGetHostEntry(address: DDNC.System.Net.Primitives.DNIPAddress; requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; stateObject: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult; overload;
    {class} function EndGetHostEntry(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): DNIPHostEntry;
    {class} function BeginGetHostAddresses(hostNameOrAddress: string; requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; state: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    {class} function EndGetHostAddresses(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): TArray<DDNC.System.Net.Primitives.DNIPAddress>;
    {class} function BeginResolve(hostName: string; requestCallback: DDNC.System.Private.CoreLib.DNAsyncCallback; stateObject: DDNC.System.Private.CoreLib.DNObject): DDNC.System.Private.CoreLib.DNIAsyncResult;
    {class} function EndResolve(asyncResult: DDNC.System.Private.CoreLib.DNIAsyncResult): DNIPHostEntry;
    {class} function GetHostAddressesAsync(hostNameOrAddress: string): DDNC.System.Private.CoreLib.DNTask<TArray<DDNC.System.Net.Primitives.DNIPAddress>>;
    {class} function GetHostEntryAsync(address: DDNC.System.Net.Primitives.DNIPAddress): DDNC.System.Private.CoreLib.DNTask<DNIPHostEntry>; overload;
    {class} function GetHostEntryAsync(hostNameOrAddress: string): DDNC.System.Private.CoreLib.DNTask<DNIPHostEntry>; overload;

  end;

  [DNTypeName('System.Net.Dns')]
  DNDns = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{93B126D8-AAC0-3D60-8046-FD8D7C15B8CF}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNDns = class(TDNGenericImport<DNDnsClass, DNDns>) end;

  //-------------namespace: System.Net----------------
  DNIPHostEntryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{588F76CB-3BE3-5B84-8DE4-FAB8BDE08AB6}']
  { constructors } 

    {class} function init: DNIPHostEntry;

  end;

  [DNTypeName('System.Net.IPHostEntry')]
  DNIPHostEntry = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B65EBEBD-3553-38DE-91D3-89B4E0AB0517}']
  { getters & setters } 

    function get_HostName: string;
    procedure set_HostName(value: string);
    function get_Aliases: TArray<string>;
    procedure set_Aliases(value: TArray<string>);
    function get_AddressList: TArray<DDNC.System.Net.Primitives.DNIPAddress>;
    procedure set_AddressList(value: TArray<DDNC.System.Net.Primitives.DNIPAddress>);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property HostName: string read get_HostName write set_HostName;
    property Aliases: TArray<string> read get_Aliases write set_Aliases;
    property AddressList: TArray<DDNC.System.Net.Primitives.DNIPAddress> read get_AddressList write set_AddressList;
  end;

  TDNIPHostEntry = class(TDNGenericImport<DNIPHostEntryClass, DNIPHostEntry>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Net.NameResolution, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
