//----------------------------------------------------------------------------
//  System.ComponentModel.dll: System.ComponentModel, Version=4.0.3.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.ComponentModel
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMCOMPONENTMODEL}
unit DDNC.System.ComponentModel;
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

  DNIChangeTracking = interface; // type: System.ComponentModel.IChangeTracking, namespace: System.ComponentModel
  DNIRevertibleChangeTracking = interface; // type: System.ComponentModel.IRevertibleChangeTracking, namespace: System.ComponentModel
  DNIEditableObject = interface; // type: System.ComponentModel.IEditableObject, namespace: System.ComponentModel
  DNIServiceProvider = interface; // type: System.IServiceProvider, namespace: System
  DNCancelEventArgs = interface; // type: System.ComponentModel.CancelEventArgs, namespace: System.ComponentModel


{ objects }

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IChangeTracking')]
  DNIChangeTracking = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{FF0C7454-B05F-3140-8EA0-2E05004F79CB}']
  { getters & setters } 

    function get_IsChanged: Boolean;

  { methods } 

    procedure AcceptChanges;

  { propertys } 

    property IsChanged: Boolean read get_IsChanged;
  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IRevertibleChangeTracking')]
  DNIRevertibleChangeTracking = interface(DNIChangeTracking)
  ['{F900AD90-34B5-3E5E-8DBE-EB871C9D7941}']
  { methods } 

    procedure RejectChanges;

  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IEditableObject')]
  DNIEditableObject = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{C12F480B-D724-34BC-A4E5-E4A94D639B39}']
  { methods } 

    procedure BeginEdit;
    procedure EndEdit;
    procedure CancelEdit;

  end;

  //-------------namespace: System----------------
  [DNTypeName('System.IServiceProvider')]
  DNIServiceProvider = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{8F10F540-7F5D-3F37-8D79-1E0AEB074AA0}']
  { methods } 

    function GetService(serviceType: DDNC.System.Private.CoreLib.DNType): DDNC.System.Private.CoreLib.DNObject;

  end;

  //-------------namespace: System.ComponentModel----------------
  DNCancelEventArgsClass = interface(DDNC.System.Private.CoreLib.DNEventArgsClass)
  ['{69D48C69-BF97-5FE4-A7AD-7E43AED77D20}']
  { constructors } 

    {class} function init: DNCancelEventArgs; overload;
    {class} function init(cancel: Boolean): DNCancelEventArgs; overload;

  end;

  [DNTypeName('System.ComponentModel.CancelEventArgs')]
  DNCancelEventArgs = interface(DDNC.System.Private.CoreLib.DNEventArgs)
  ['{17356A12-99CB-34E5-85CE-29816A1AAB18}']
  { getters & setters } 

    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNCancelEventArgs = class(TDNGenericImport<DNCancelEventArgsClass, DNCancelEventArgs>) end;


implementation


initialization
  LoadAssemblyModule('System.ComponentModel.dll', True, 'System.ComponentModel, Version=4.0.3.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
