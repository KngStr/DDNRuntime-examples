//----------------------------------------------------------------------------
//  System.Web.dll: System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework 4.x
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Web.Configuration.SystemWebSectionGroup
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Web.Configuration.SystemWebSectionGroup;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Web,
  DDN.System.Configuration,
  DDN.System.Web.Services;

type


{ declares }

  DNSystemWebSectionGroup = interface; // type: System.Web.Configuration.SystemWebSectionGroup, namespace: System.Web.Configuration


{ objects }

  //-------------namespace: System.Web.Configuration----------------
  DNSystemWebSectionGroupClass = interface(DNObjectClass)
  ['{40467A29-CC29-5118-BBAF-9EE9CB0D4732}']
  { constructors } 

    {class} function init: DNSystemWebSectionGroup;

  end;

  [DNTypeName('System.Web.Configuration.SystemWebSectionGroup')]
  DNSystemWebSectionGroup = interface(DNObject)
  ['{1D0E9043-8AEA-30EA-98C4-0FFA24B767EF}']
  { getters & setters } 

    function get_AnonymousIdentification: DNAnonymousIdentificationSection;
    function get_Authentication: DNAuthenticationSection;
    function get_Authorization: DNAuthorizationSection;
    function get_BrowserCaps: DDN.System.Configuration.DNDefaultSection;
    function get_ClientTarget: DNClientTargetSection;
    function get_Compilation: DNCompilationSection;
    function get_CustomErrors: DNCustomErrorsSection;
    function get_Deployment: DNDeploymentSection;
    function get_DeviceFilters: DDN.System.Configuration.DNDefaultSection;
    function get_FullTrustAssemblies: DNFullTrustAssembliesSection;
    function get_Globalization: DNGlobalizationSection;
    function get_HealthMonitoring: DNHealthMonitoringSection;
    function get_HostingEnvironment: DNHostingEnvironmentSection;
    function get_HttpCookies: DNHttpCookiesSection;
    function get_HttpHandlers: DNHttpHandlersSection;
    function get_HttpModules: DNHttpModulesSection;
    function get_HttpRuntime: DNHttpRuntimeSection;
    function get_Identity: DNIdentitySection;
    function get_MachineKey: DNMachineKeySection;
    function get_Membership: DNMembershipSection;
    function get_MobileControls: DDN.System.Configuration.DNConfigurationSection;
    function get_Pages: DNPagesSection;
    function get_PartialTrustVisibleAssemblies: DNPartialTrustVisibleAssembliesSection;
    function get_ProcessModel: DNProcessModelSection;
    function get_Profile: DNProfileSection;
    function get_Protocols: DDN.System.Configuration.DNDefaultSection;
    function get_RoleManager: DNRoleManagerSection;
    function get_SecurityPolicy: DNSecurityPolicySection;
    function get_SessionState: DNSessionStateSection;
    function get_SiteMap: DNSiteMapSection;
    function get_Trace: DNTraceSection;
    function get_Trust: DNTrustSection;
    function get_UrlMappings: DNUrlMappingsSection;
    function get_WebControls: DNWebControlsSection;
    function get_WebParts: DNWebPartsSection;
    function get_WebServices: DDN.System.Web.Services.DNWebServicesSection;
    function get_XhtmlConformance: DNXhtmlConformanceSection;
    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_SectionGroupName: string;
    function get_Name: string;
    function get_Type: string;
    procedure set_Type(value: string);
    function get_Sections: DDN.System.Configuration.DNConfigurationSectionCollection;
    function get_SectionGroups: DDN.System.Configuration.DNConfigurationSectionGroupCollection;

  { methods } 

    procedure ForceDeclaration; overload;
    procedure ForceDeclaration(force: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AnonymousIdentification: DNAnonymousIdentificationSection read get_AnonymousIdentification;
    property Authentication: DNAuthenticationSection read get_Authentication;
    property Authorization: DNAuthorizationSection read get_Authorization;
    property BrowserCaps: DDN.System.Configuration.DNDefaultSection read get_BrowserCaps;
    property ClientTarget: DNClientTargetSection read get_ClientTarget;
    property Compilation: DNCompilationSection read get_Compilation;
    property CustomErrors: DNCustomErrorsSection read get_CustomErrors;
    property Deployment: DNDeploymentSection read get_Deployment;
    property DeviceFilters: DDN.System.Configuration.DNDefaultSection read get_DeviceFilters;
    property FullTrustAssemblies: DNFullTrustAssembliesSection read get_FullTrustAssemblies;
    property Globalization: DNGlobalizationSection read get_Globalization;
    property HealthMonitoring: DNHealthMonitoringSection read get_HealthMonitoring;
    property HostingEnvironment: DNHostingEnvironmentSection read get_HostingEnvironment;
    property HttpCookies: DNHttpCookiesSection read get_HttpCookies;
    property HttpHandlers: DNHttpHandlersSection read get_HttpHandlers;
    property HttpModules: DNHttpModulesSection read get_HttpModules;
    property HttpRuntime: DNHttpRuntimeSection read get_HttpRuntime;
    property Identity: DNIdentitySection read get_Identity;
    property MachineKey: DNMachineKeySection read get_MachineKey;
    property Membership: DNMembershipSection read get_Membership;
    property MobileControls: DDN.System.Configuration.DNConfigurationSection read get_MobileControls;
    property Pages: DNPagesSection read get_Pages;
    property PartialTrustVisibleAssemblies: DNPartialTrustVisibleAssembliesSection read get_PartialTrustVisibleAssemblies;
    property ProcessModel: DNProcessModelSection read get_ProcessModel;
    property Profile: DNProfileSection read get_Profile;
    property Protocols: DDN.System.Configuration.DNDefaultSection read get_Protocols;
    property RoleManager: DNRoleManagerSection read get_RoleManager;
    property SecurityPolicy: DNSecurityPolicySection read get_SecurityPolicy;
    property SessionState: DNSessionStateSection read get_SessionState;
    property SiteMap: DNSiteMapSection read get_SiteMap;
    property Trace: DNTraceSection read get_Trace;
    property Trust: DNTrustSection read get_Trust;
    property UrlMappings: DNUrlMappingsSection read get_UrlMappings;
    property WebControls: DNWebControlsSection read get_WebControls;
    property WebParts: DNWebPartsSection read get_WebParts;
    property WebServices: DDN.System.Web.Services.DNWebServicesSection read get_WebServices;
    property XhtmlConformance: DNXhtmlConformanceSection read get_XhtmlConformance;
    property IsDeclared: Boolean read get_IsDeclared;
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    property SectionGroupName: string read get_SectionGroupName;
    property Name: string read get_Name;
    property &Type: string read get_Type write set_Type;
    property Sections: DDN.System.Configuration.DNConfigurationSectionCollection read get_Sections;
    property SectionGroups: DDN.System.Configuration.DNConfigurationSectionGroupCollection read get_SectionGroups;
  end;

  TDNSystemWebSectionGroup = class(TDNGenericImport<DNSystemWebSectionGroupClass, DNSystemWebSectionGroup>) end;


implementation

end.