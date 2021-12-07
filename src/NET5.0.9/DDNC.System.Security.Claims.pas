//----------------------------------------------------------------------------
//  System.Security.Claims.dll: System.Security.Claims, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Security.Claims
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Security.Claims;

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


{ declares }

  DNClaim = interface; // type: System.Security.Claims.Claim, namespace: System.Security.Claims
  DNClaimsIdentity = interface; // type: System.Security.Claims.ClaimsIdentity, namespace: System.Security.Claims
  DNGenericIdentity = interface; // type: System.Security.Principal.GenericIdentity, namespace: System.Security.Principal
  DNClaimsPrincipal = interface; // type: System.Security.Claims.ClaimsPrincipal, namespace: System.Security.Claims
  DNGenericPrincipal = interface; // type: System.Security.Principal.GenericPrincipal, namespace: System.Security.Principal
  DNClaimTypes = interface; // type: System.Security.Claims.ClaimTypes, namespace: System.Security.Claims
  DNClaimValueTypes = interface; // type: System.Security.Claims.ClaimValueTypes, namespace: System.Security.Claims


{ objects }

  //-------------namespace: System.Security.Claims----------------
  DNClaimClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{0BEA06B3-6244-584F-9BA8-F5D5AA78AE76}']
  { constructors } 

    {class} function init(reader: DDNC.System.Private.CoreLib.DNBinaryReader): DNClaim; overload;
    {class} function init(reader: DDNC.System.Private.CoreLib.DNBinaryReader; subject: DNClaimsIdentity): DNClaim; overload;
    {class} function init(&type: string; value: string): DNClaim; overload;
    {class} function init(&type: string; value: string; valueType: string): DNClaim; overload;
    {class} function init(&type: string; value: string; valueType: string; issuer: string): DNClaim; overload;
    {class} function init(&type: string; value: string; valueType: string; issuer: string; originalIssuer: string): DNClaim; overload;
    {class} function init(&type: string; value: string; valueType: string; issuer: string; originalIssuer: string; subject: DNClaimsIdentity): DNClaim; overload;

  end;

  [DNTypeName('System.Security.Claims.Claim')]
  DNClaim = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{60440F37-8B43-363C-B67E-9419553AE55B}']
  { getters & setters } 

    function get_Issuer: string;
    function get_OriginalIssuer: string;
    function get_Properties: DDNC.System.Private.CoreLib.DNIDictionary<string, string>;
    function get_Subject: DNClaimsIdentity;
    function get_Type: string;
    function get_Value: string;
    function get_ValueType: string;

  { methods } 

    function Clone: DNClaim; overload;
    function Clone(identity: DNClaimsIdentity): DNClaim; overload;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Issuer: string read get_Issuer;
    property OriginalIssuer: string read get_OriginalIssuer;
    property Properties: DDNC.System.Private.CoreLib.DNIDictionary<string, string> read get_Properties;
    property Subject: DNClaimsIdentity read get_Subject;
    property &Type: string read get_Type;
    property Value: string read get_Value;
    property ValueType: string read get_ValueType;
  end;

  TDNClaim = class(TDNGenericImport<DNClaimClass, DNClaim>) end;

  //-------------namespace: System.Security.Claims----------------
  DNClaimsIdentityClass = interface(DNObjectClass)
  ['{268604E3-6725-5AED-AE40-743E9A040A3C}']
  { constructors } 

    {class} function init: DNClaimsIdentity; overload;
    {class} function init(identity: DDNC.System.Private.CoreLib.DNIIdentity): DNClaimsIdentity; overload;
    {class} function init(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>): DNClaimsIdentity; overload;
    {class} function init(authenticationType: string): DNClaimsIdentity; overload;
    {class} function init(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; authenticationType: string): DNClaimsIdentity; overload;
    {class} function init(identity: DDNC.System.Private.CoreLib.DNIIdentity; claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>): DNClaimsIdentity; overload;
    {class} function init(authenticationType: string; nameType: string; roleType: string): DNClaimsIdentity; overload;
    {class} function init(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; authenticationType: string; nameType: string; roleType: string): DNClaimsIdentity; overload;
    {class} function init(identity: DDNC.System.Private.CoreLib.DNIIdentity; claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; authenticationType: string; nameType: string; roleType: string): DNClaimsIdentity; overload;
    {class} function init(reader: DDNC.System.Private.CoreLib.DNBinaryReader): DNClaimsIdentity; overload;

  end;

  [DNTypeName('System.Security.Claims.ClaimsIdentity')]
  DNClaimsIdentity = interface(DDNC.System.Private.CoreLib.DNIIdentity)
  ['{7036148A-1FBB-34C1-9DF7-BFA485C1E67B}']
  { getters & setters } 

    function get_AuthenticationType: string;
    function get_IsAuthenticated: Boolean;
    function get_Actor: DNClaimsIdentity;
    procedure set_Actor(value: DNClaimsIdentity);
    function get_BootstrapContext: DDNC.System.Private.CoreLib.DNObject;
    procedure set_BootstrapContext(value: DDNC.System.Private.CoreLib.DNObject);
    function get_Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>;
    function get_Label: string;
    procedure set_Label(value: string);
    function get_Name: string;
    function get_NameClaimType: string;
    function get_RoleClaimType: string;

  { methods } 

    function Clone: DNClaimsIdentity;
    procedure AddClaim(claim: DNClaim);
    procedure AddClaims(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>);
    function TryRemoveClaim(claim: DNClaim): Boolean;
    procedure RemoveClaim(claim: DNClaim);
    function FindAll(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindAll(&type: string): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindFirst(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DNClaim; overload;
    function FindFirst(&type: string): DNClaim; overload;
    function HasClaim(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): Boolean; overload;
    function HasClaim(&type: string; value: string): Boolean; overload;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property AuthenticationType: string read get_AuthenticationType;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property Actor: DNClaimsIdentity read get_Actor write set_Actor;
    property BootstrapContext: DDNC.System.Private.CoreLib.DNObject read get_BootstrapContext write set_BootstrapContext;
    property Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim> read get_Claims;
    property &Label: string read get_Label write set_Label;
    property Name: string read get_Name;
    property NameClaimType: string read get_NameClaimType;
    property RoleClaimType: string read get_RoleClaimType;
  end;

  TDNClaimsIdentity = class(TDNGenericImport<DNClaimsIdentityClass, DNClaimsIdentity>)
  public const
   DefaultIssuer = 'LOCAL AUTHORITY';
   DefaultNameClaimType = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name';
   DefaultRoleClaimType = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/role';
  end;

  //-------------namespace: System.Security.Principal----------------
  DNGenericIdentityClass = interface(DNClaimsIdentityClass)
  ['{1AF915B7-989A-5426-995F-494ADEE13695}']
  { constructors } 

    {class} function init(name: string): DNGenericIdentity; overload;
    {class} function init(name: string; &type: string): DNGenericIdentity; overload;

  end;

  [DNTypeName('System.Security.Principal.GenericIdentity')]
  DNGenericIdentity = interface(DNClaimsIdentity)
  ['{A1368714-1EA7-32E5-894B-239BAFB065FD}']
  { getters & setters } 

    function get_Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>;
    function get_Name: string;
    function get_AuthenticationType: string;
    function get_IsAuthenticated: Boolean;
    function get_Actor: DNClaimsIdentity;
    procedure set_Actor(value: DNClaimsIdentity);
    function get_BootstrapContext: DDNC.System.Private.CoreLib.DNObject;
    procedure set_BootstrapContext(value: DDNC.System.Private.CoreLib.DNObject);
    function get_Label: string;
    procedure set_Label(value: string);
    function get_NameClaimType: string;
    function get_RoleClaimType: string;

  { methods } 

    function Clone: DNClaimsIdentity;
    procedure AddClaim(claim: DNClaim);
    procedure AddClaims(claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>);
    function TryRemoveClaim(claim: DNClaim): Boolean;
    procedure RemoveClaim(claim: DNClaim);
    function FindAll(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindAll(&type: string): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindFirst(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DNClaim; overload;
    function FindFirst(&type: string): DNClaim; overload;
    function HasClaim(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): Boolean; overload;
    function HasClaim(&type: string; value: string): Boolean; overload;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim> read get_Claims;
    property Name: string read get_Name;
    property AuthenticationType: string read get_AuthenticationType;
    property IsAuthenticated: Boolean read get_IsAuthenticated;
    property Actor: DNClaimsIdentity read get_Actor write set_Actor;
    property BootstrapContext: DDNC.System.Private.CoreLib.DNObject read get_BootstrapContext write set_BootstrapContext;
    property &Label: string read get_Label write set_Label;
    property NameClaimType: string read get_NameClaimType;
    property RoleClaimType: string read get_RoleClaimType;
  end;

  TDNGenericIdentity = class(TDNGenericImport<DNGenericIdentityClass, DNGenericIdentity>) end;

  //-------------namespace: System.Security.Claims----------------
  DNClaimsPrincipalClass = interface(DNObjectClass)
  ['{C6CE1A2D-B3A5-5C3F-A621-B9FDB870FB1D}']
  { static getter & setter } 

    {class} function get_PrimaryIdentitySelector: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>, DNClaimsIdentity>;
    {class} procedure set_PrimaryIdentitySelector(value: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>, DNClaimsIdentity>);
    {class} function get_ClaimsPrincipalSelector: DDNC.System.Private.CoreLib.DNFunc<DNClaimsPrincipal>;
    {class} procedure set_ClaimsPrincipalSelector(value: DDNC.System.Private.CoreLib.DNFunc<DNClaimsPrincipal>);
    {class} function get_Current: DNClaimsPrincipal;

  { constructors } 

    {class} function init: DNClaimsPrincipal; overload;
    {class} function init(identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>): DNClaimsPrincipal; overload;
    {class} function init(identity: DDNC.System.Private.CoreLib.DNIIdentity): DNClaimsPrincipal; overload;
    {class} function init(principal: DDNC.System.Private.CoreLib.DNIPrincipal): DNClaimsPrincipal; overload;
    {class} function init(reader: DDNC.System.Private.CoreLib.DNBinaryReader): DNClaimsPrincipal; overload;

  { static propertys } 

    {class} property PrimaryIdentitySelector: DDNC.System.Private.CoreLib.DNFunc<DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>, DNClaimsIdentity> read get_PrimaryIdentitySelector write set_PrimaryIdentitySelector;
    {class} property ClaimsPrincipalSelector: DDNC.System.Private.CoreLib.DNFunc<DNClaimsPrincipal> read get_ClaimsPrincipalSelector write set_ClaimsPrincipalSelector;
    {class} property Current: DNClaimsPrincipal read get_Current;
  end;

  [DNTypeName('System.Security.Claims.ClaimsPrincipal')]
  DNClaimsPrincipal = interface(DDNC.System.Private.CoreLib.DNIPrincipal)
  ['{93152A55-09BC-3B62-B07D-5C79D8A0E038}']
  { getters & setters } 

    function get_Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>;
    function get_Identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>;
    function get_Identity: DDNC.System.Private.CoreLib.DNIIdentity;

  { methods } 

    procedure AddIdentity(identity: DNClaimsIdentity);
    procedure AddIdentities(identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>);
    function Clone: DNClaimsPrincipal;
    function FindAll(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindAll(&type: string): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindFirst(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DNClaim; overload;
    function FindFirst(&type: string): DNClaim; overload;
    function HasClaim(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): Boolean; overload;
    function HasClaim(&type: string; value: string): Boolean; overload;
    function IsInRole(role: string): Boolean;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim> read get_Claims;
    property Identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity> read get_Identities;
    property Identity: DDNC.System.Private.CoreLib.DNIIdentity read get_Identity;
  end;

  TDNClaimsPrincipal = class(TDNGenericImport<DNClaimsPrincipalClass, DNClaimsPrincipal>) end;

  //-------------namespace: System.Security.Principal----------------
  DNGenericPrincipalClass = interface(DNClaimsPrincipalClass)
  ['{85C46DC1-0ABB-500A-B8E5-1CEB14EE3A84}']
  { constructors } 

    {class} function init(identity: DDNC.System.Private.CoreLib.DNIIdentity; roles: TArray<string>): DNGenericPrincipal;

  end;

  [DNTypeName('System.Security.Principal.GenericPrincipal')]
  DNGenericPrincipal = interface(DNClaimsPrincipal)
  ['{DB265FD5-00E7-3DB9-BC05-B7FC22C8FF27}']
  { getters & setters } 

    function get_Identity: DDNC.System.Private.CoreLib.DNIIdentity;
    function get_Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>;
    function get_Identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>;

  { methods } 

    function IsInRole(role: string): Boolean;
    procedure AddIdentity(identity: DNClaimsIdentity);
    procedure AddIdentities(identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity>);
    function Clone: DNClaimsPrincipal;
    function FindAll(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindAll(&type: string): DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim>; overload;
    function FindFirst(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): DNClaim; overload;
    function FindFirst(&type: string): DNClaim; overload;
    function HasClaim(match: DDNC.System.Private.CoreLib.DNPredicate<DNClaim>): Boolean; overload;
    function HasClaim(&type: string; value: string): Boolean; overload;
    procedure WriteTo(writer: DDNC.System.Private.CoreLib.DNBinaryWriter);
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  { propertys } 

    property Identity: DDNC.System.Private.CoreLib.DNIIdentity read get_Identity;
    property Claims: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaim> read get_Claims;
    property Identities: DDNC.System.Private.CoreLib.DNIEnumerable<DNClaimsIdentity> read get_Identities;
  end;

  TDNGenericPrincipal = class(TDNGenericImport<DNGenericPrincipalClass, DNGenericPrincipal>) end;

  //-------------namespace: System.Security.Claims----------------
  DNClaimTypesClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4A1D1DAC-36AB-5540-951B-3658FDD1DC7D}']
  end;

  [DNTypeName('System.Security.Claims.ClaimTypes')]
  DNClaimTypes = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{391E51A1-3A78-3D63-B9AD-11411730A659}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNClaimTypes = class(TDNGenericImport<DNClaimTypesClass, DNClaimTypes>)
  public const
   AuthenticationInstant = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/authenticationinstant';
   AuthenticationMethod = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/authenticationmethod';
   CookiePath = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/cookiepath';
   DenyOnlyPrimarySid = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlyprimarysid';
   DenyOnlyPrimaryGroupSid = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlyprimarygroupsid';
   DenyOnlyWindowsDeviceGroup = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlywindowsdevicegroup';
   Dsa = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/dsa';
   Expiration = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/expiration';
   Expired = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/expired';
   GroupSid = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/groupsid';
   IsPersistent = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/ispersistent';
   PrimaryGroupSid = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/primarygroupsid';
   PrimarySid = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/primarysid';
   Role = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/role';
   SerialNumber = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/serialnumber';
   UserData = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/userdata';
   Version = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/version';
   WindowsAccountName = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsaccountname';
   WindowsDeviceClaim = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsdeviceclaim';
   WindowsDeviceGroup = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsdevicegroup';
   WindowsUserClaim = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsuserclaim';
   WindowsFqbnVersion = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowsfqbnversion';
   WindowsSubAuthority = 'http://schemas.microsoft.com/ws/2008/06/identity/claims/windowssubauthority';
   Anonymous = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/anonymous';
   Authentication = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/authentication';
   AuthorizationDecision = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/authorizationdecision';
   Country = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country';
   DateOfBirth = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dateofbirth';
   Dns = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dns';
   DenyOnlySid = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/denyonlysid';
   Email = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress';
   Gender = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender';
   GivenName = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname';
   Hash = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/hash';
   HomePhone = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/homephone';
   Locality = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/locality';
   MobilePhone = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/mobilephone';
   Name = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name';
   NameIdentifier = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier';
   OtherPhone = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/otherphone';
   PostalCode = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalcode';
   Rsa = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/rsa';
   Sid = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/sid';
   Spn = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/spn';
   StateOrProvince = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/stateorprovince';
   StreetAddress = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/streetaddress';
   Surname = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname';
   System = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/system';
   Thumbprint = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/thumbprint';
   Upn = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/upn';
   Uri = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/uri';
   Webpage = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/webpage';
   X500DistinguishedName = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/x500distinguishedname';
   Actor = 'http://schemas.xmlsoap.org/ws/2009/09/identity/claims/actor';
  end;

  //-------------namespace: System.Security.Claims----------------
  DNClaimValueTypesClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{AB3106E7-74C7-55AD-849D-E1F7E5A6D785}']
  end;

  [DNTypeName('System.Security.Claims.ClaimValueTypes')]
  DNClaimValueTypes = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{B6A5786F-6693-3D35-925F-145F93492AF1}']
  { methods } 

    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;

  end;

  TDNClaimValueTypes = class(TDNGenericImport<DNClaimValueTypesClass, DNClaimValueTypes>)
  public const
   Base64Binary = 'http://www.w3.org/2001/XMLSchema#base64Binary';
   Base64Octet = 'http://www.w3.org/2001/XMLSchema#base64Octet';
   Boolean = 'http://www.w3.org/2001/XMLSchema#boolean';
   Date = 'http://www.w3.org/2001/XMLSchema#date';
   DateTime = 'http://www.w3.org/2001/XMLSchema#dateTime';
   Double = 'http://www.w3.org/2001/XMLSchema#double';
   Fqbn = 'http://www.w3.org/2001/XMLSchema#fqbn';
   HexBinary = 'http://www.w3.org/2001/XMLSchema#hexBinary';
   Integer = 'http://www.w3.org/2001/XMLSchema#integer';
   Integer32 = 'http://www.w3.org/2001/XMLSchema#integer32';
   Integer64 = 'http://www.w3.org/2001/XMLSchema#integer64';
   Sid = 'http://www.w3.org/2001/XMLSchema#sid';
   String_ = 'http://www.w3.org/2001/XMLSchema#string';
   Time = 'http://www.w3.org/2001/XMLSchema#time';
   UInteger32 = 'http://www.w3.org/2001/XMLSchema#uinteger32';
   UInteger64 = 'http://www.w3.org/2001/XMLSchema#uinteger64';
   DnsName = 'http://schemas.xmlsoap.org/claims/dns';
   Email = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress';
   Rsa = 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/rsa';
   UpnName = 'http://schemas.xmlsoap.org/claims/UPN';
   DsaKeyValue = 'http://www.w3.org/2000/09/xmldsig#DSAKeyValue';
   KeyInfo = 'http://www.w3.org/2000/09/xmldsig#KeyInfo';
   RsaKeyValue = 'http://www.w3.org/2000/09/xmldsig#RSAKeyValue';
   DaytimeDuration = 'http://www.w3.org/TR/2002/WD-xquery-operators-20020816#dayTimeDuration';
   YearMonthDuration = 'http://www.w3.org/TR/2002/WD-xquery-operators-20020816#yearMonthDuration';
   Rfc822Name = 'urn:oasis:names:tc:xacml:1.0:data-type:rfc822Name';
   X500Name = 'urn:oasis:names:tc:xacml:1.0:data-type:x500Name';
  end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Security.Claims, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.