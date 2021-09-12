//----------------------------------------------------------------------------
//  System.Diagnostics.Tools.dll: System.Diagnostics.Tools, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.Tools
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Diagnostics.Tools;

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

  DNGeneratedCodeAttribute = interface; // type: System.CodeDom.Compiler.GeneratedCodeAttribute, namespace: System.CodeDom.Compiler
  DNExcludeFromCodeCoverageAttribute = interface; // type: System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute, namespace: System.Diagnostics.CodeAnalysis


{ objects }

  //-------------namespace: System.CodeDom.Compiler----------------
  DNGeneratedCodeAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{05CA5C33-C705-5DA8-ABD7-23746379BB6A}']
  { constructors } 

    {class} function init(tool: string; version: string): DNGeneratedCodeAttribute;

  end;

  [DNTypeName('System.CodeDom.Compiler.GeneratedCodeAttribute')]
  DNGeneratedCodeAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{2782F6D3-DAD7-3BCA-A4CA-0B1E0374BACA}']
  { getters & setters } 

    function get_Tool: string;
    function get_Version: string;
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Tool: string read get_Tool;
    property Version: string read get_Version;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNGeneratedCodeAttribute = class(TDNGenericImport<DNGeneratedCodeAttributeClass, DNGeneratedCodeAttribute>) end;

  //-------------namespace: System.Diagnostics.CodeAnalysis----------------
  DNExcludeFromCodeCoverageAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{0B172B8C-A09A-5213-B872-720556AEAEC0}']
  { constructors } 

    {class} function init: DNExcludeFromCodeCoverageAttribute;

  end;

  [DNTypeName('System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute')]
  DNExcludeFromCodeCoverageAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{1F9A77CC-D30C-3EA3-8B3B-7C7BE4354A94}']
  { getters & setters } 

    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function ToString: string;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNExcludeFromCodeCoverageAttribute = class(TDNGenericImport<DNExcludeFromCodeCoverageAttributeClass, DNExcludeFromCodeCoverageAttribute>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.Tools, Version=4.1.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
