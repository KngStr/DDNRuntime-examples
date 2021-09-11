//----------------------------------------------------------------------------
//  System.Diagnostics.Tools.dll: System.Diagnostics.Tools, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Diagnostics.Tools
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMDIAGNOSTICSTOOLS}
unit DDNC.System.Diagnostics.Tools;
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


{ declares }

  DNGeneratedCodeAttribute = interface; // type: System.CodeDom.Compiler.GeneratedCodeAttribute, namespace: System.CodeDom.Compiler
  DNExcludeFromCodeCoverageAttribute = interface; // type: System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute, namespace: System.Diagnostics.CodeAnalysis


{ objects }

  //-------------namespace: System.CodeDom.Compiler----------------
  DNGeneratedCodeAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{EA671736-5AA4-5261-82A4-DEEA68B3C5A2}']
  { constructors } 

    {class} function init(tool: string; version: string): DNGeneratedCodeAttribute;

  end;

  [DNTypeName('System.CodeDom.Compiler.GeneratedCodeAttribute')]
  DNGeneratedCodeAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{6F80FCAF-F48D-33D8-B3D0-D21C6B9C0475}']
  { getters & setters } 

    function get_Tool: string;
    function get_Version: string;
    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property Tool: string read get_Tool;
    property Version: string read get_Version;
    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNGeneratedCodeAttribute = class(TDNGenericImport<DNGeneratedCodeAttributeClass, DNGeneratedCodeAttribute>) end;

  //-------------namespace: System.Diagnostics.CodeAnalysis----------------
  DNExcludeFromCodeCoverageAttributeClass = interface(DDNC.System.Private.CoreLib.DNAttributeClass)
  ['{EA70F6B3-E247-5933-B202-9483EEA7951F}']
  { constructors } 

    {class} function init: DNExcludeFromCodeCoverageAttribute;

  end;

  [DNTypeName('System.Diagnostics.CodeAnalysis.ExcludeFromCodeCoverageAttribute')]
  DNExcludeFromCodeCoverageAttribute = interface(DDNC.System.Private.CoreLib.DNAttribute)
  ['{1542C4C1-5A67-3B0F-A561-8A62DF0E58A8}']
  { getters & setters } 

    function get_TypeId: DDNC.System.Private.CoreLib.DNObject;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDNC.System.Private.CoreLib.DNObject read get_TypeId;
  end;

  TDNExcludeFromCodeCoverageAttribute = class(TDNGenericImport<DNExcludeFromCodeCoverageAttributeClass, DNExcludeFromCodeCoverageAttribute>) end;


implementation


initialization
  LoadAssemblyModule('System.Diagnostics.Tools.dll', True, 'System.Diagnostics.Tools, Version=4.1.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
