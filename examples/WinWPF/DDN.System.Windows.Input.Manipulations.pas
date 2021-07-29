// System.Windows.Input.Manipulations, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//-----------------------------------------------------------//
//                                                           //
//     DDN.System.Windows.Input.Manipulations       
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.System.Windows.Input.Manipulations;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Windows.Common;

type

{ enums }

  //-------------namespace: System.Windows.Input.Manipulations----------------
  [DNTypeName('System.Windows.Input.Manipulations.Manipulations2D')]
  DNManipulations2D = type Integer;
  DNManipulations2DHelper = record helper for DNManipulations2D
  public const
    None = 0;
    TranslateX = 1;
    TranslateY = 2;
    Translate = 3;
    Scale = 4;
    Rotate = 8;
    All = 15;
  end;




type


{ declares }

  DNManipulation2DCompletedEventArgs = interface; // type: System.Windows.Input.Manipulations.Manipulation2DCompletedEventArgs, namespace: System.Windows.Input.Manipulations
  DNManipulation2DDeltaEventArgs = interface; // type: System.Windows.Input.Manipulations.Manipulation2DDeltaEventArgs, namespace: System.Windows.Input.Manipulations
  DNManipulation2DStartedEventArgs = interface; // type: System.Windows.Input.Manipulations.Manipulation2DStartedEventArgs, namespace: System.Windows.Input.Manipulations
  DNManipulator2D = interface; // type: System.Windows.Input.Manipulations.Manipulator2D, namespace: System.Windows.Input.Manipulations
  DNInertiaParameters2D = interface; // type: System.Windows.Input.Manipulations.InertiaParameters2D, namespace: System.Windows.Input.Manipulations
  DNInertiaExpansionBehavior2D = interface; // type: System.Windows.Input.Manipulations.InertiaExpansionBehavior2D, namespace: System.Windows.Input.Manipulations
  DNInertiaRotationBehavior2D = interface; // type: System.Windows.Input.Manipulations.InertiaRotationBehavior2D, namespace: System.Windows.Input.Manipulations
  DNInertiaTranslationBehavior2D = interface; // type: System.Windows.Input.Manipulations.InertiaTranslationBehavior2D, namespace: System.Windows.Input.Manipulations
  DNInertiaProcessor2D = interface; // type: System.Windows.Input.Manipulations.InertiaProcessor2D, namespace: System.Windows.Input.Manipulations
  DNManipulationDelta2D = interface; // type: System.Windows.Input.Manipulations.ManipulationDelta2D, namespace: System.Windows.Input.Manipulations
  DNManipulationParameters2D = interface; // type: System.Windows.Input.Manipulations.ManipulationParameters2D, namespace: System.Windows.Input.Manipulations
  DNManipulationPivot2D = interface; // type: System.Windows.Input.Manipulations.ManipulationPivot2D, namespace: System.Windows.Input.Manipulations
  DNManipulationProcessor2D = interface; // type: System.Windows.Input.Manipulations.ManipulationProcessor2D, namespace: System.Windows.Input.Manipulations
  DNManipulationVelocities2D = interface; // type: System.Windows.Input.Manipulations.ManipulationVelocities2D, namespace: System.Windows.Input.Manipulations


{ objects }

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulation2DCompletedEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{E7276BC5-A971-5751-9F76-1F8564D7CD6C}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.Manipulation2DCompletedEventArgs')]
  DNManipulation2DCompletedEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{66DE92D9-31C6-38BA-B895-96B3E827EF35}']
  { getters & setters } 

    function get_OriginX: Single;
    function get_OriginY: Single;
    function get_Velocities: DNManipulationVelocities2D;
    function get_Total: DNManipulationDelta2D;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property OriginX: Single read get_OriginX;
    property OriginY: Single read get_OriginY;
    property Velocities: DNManipulationVelocities2D read get_Velocities;
    property Total: DNManipulationDelta2D read get_Total;
  end;

  TDNManipulation2DCompletedEventArgs = class(TDNGenericImport<DNManipulation2DCompletedEventArgsClass, DNManipulation2DCompletedEventArgs>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulation2DDeltaEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{CF65B3B9-3F33-5F9E-A511-161AC9E9BB31}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.Manipulation2DDeltaEventArgs')]
  DNManipulation2DDeltaEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{85ED80E1-97DD-3452-8376-E0F11C8CAD78}']
  { getters & setters } 

    function get_OriginX: Single;
    function get_OriginY: Single;
    function get_Velocities: DNManipulationVelocities2D;
    function get_Delta: DNManipulationDelta2D;
    function get_Cumulative: DNManipulationDelta2D;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property OriginX: Single read get_OriginX;
    property OriginY: Single read get_OriginY;
    property Velocities: DNManipulationVelocities2D read get_Velocities;
    property Delta: DNManipulationDelta2D read get_Delta;
    property Cumulative: DNManipulationDelta2D read get_Cumulative;
  end;

  TDNManipulation2DDeltaEventArgs = class(TDNGenericImport<DNManipulation2DDeltaEventArgsClass, DNManipulation2DDeltaEventArgs>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulation2DStartedEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{B432B716-8F13-5581-9669-C46B625BF161}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.Manipulation2DStartedEventArgs')]
  DNManipulation2DStartedEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{BEACC47C-5457-31A7-898B-066614BFF35A}']
  { getters & setters } 

    function get_OriginX: Single;
    function get_OriginY: Single;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property OriginX: Single read get_OriginX;
    property OriginY: Single read get_OriginY;
  end;

  TDNManipulation2DStartedEventArgs = class(TDNGenericImport<DNManipulation2DStartedEventArgsClass, DNManipulation2DStartedEventArgs>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulator2DClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{E66AF2D9-14D8-56E5-A1F7-AE2C19FE1A26}']
  { constructors } 

    {class} function init(id: Int32; x: Single; y: Single): DNManipulator2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.Manipulator2D')]
  DNManipulator2D = interface(DDN.mscorlib.DNValueType)
  ['{C029A5C3-2662-3986-BD7D-6DA9F2D03DC0}']
  { getters & setters } 

    function get_Id: Int32;
    procedure set_Id(value: Int32);
    function get_X: Single;
    procedure set_X(value: Single);
    function get_Y: Single;
    procedure set_Y(value: Single);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Id: Int32 read get_Id write set_Id;
    property X: Single read get_X write set_X;
    property Y: Single read get_Y write set_Y;
  end;

  TDNManipulator2D = class(TDNGenericImport<DNManipulator2DClass, DNManipulator2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNInertiaParameters2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{94A1E0F6-A75D-5B38-8213-4DAC84E0331C}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.InertiaParameters2D')]
  DNInertiaParameters2D = interface(DDN.mscorlib.DNObject)
  ['{9E7559B3-3627-3791-AF60-BCBA97C0CE85}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInertiaParameters2D = class(TDNGenericImport<DNInertiaParameters2DClass, DNInertiaParameters2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNInertiaExpansionBehavior2DClass = interface(DNInertiaParameters2DClass)
  ['{DE3DE1F8-5DBB-5190-87A1-B766E15D9134}']
  { constructors } 

    {class} function init: DNInertiaExpansionBehavior2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.InertiaExpansionBehavior2D')]
  DNInertiaExpansionBehavior2D = interface(DNInertiaParameters2D)
  ['{72C562A1-F80E-3AC6-8EC6-32B4E079298C}']
  { getters & setters } 

    function get_InitialRadius: Single;
    procedure set_InitialRadius(value: Single);
    function get_DesiredDeceleration: Single;
    procedure set_DesiredDeceleration(value: Single);
    function get_DesiredExpansionX: Single;
    procedure set_DesiredExpansionX(value: Single);
    function get_DesiredExpansionY: Single;
    procedure set_DesiredExpansionY(value: Single);
    function get_InitialVelocityX: Single;
    procedure set_InitialVelocityX(value: Single);
    function get_InitialVelocityY: Single;
    procedure set_InitialVelocityY(value: Single);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property InitialRadius: Single read get_InitialRadius write set_InitialRadius;
    property DesiredDeceleration: Single read get_DesiredDeceleration write set_DesiredDeceleration;
    property DesiredExpansionX: Single read get_DesiredExpansionX write set_DesiredExpansionX;
    property DesiredExpansionY: Single read get_DesiredExpansionY write set_DesiredExpansionY;
    property InitialVelocityX: Single read get_InitialVelocityX write set_InitialVelocityX;
    property InitialVelocityY: Single read get_InitialVelocityY write set_InitialVelocityY;
  end;

  TDNInertiaExpansionBehavior2D = class(TDNGenericImport<DNInertiaExpansionBehavior2DClass, DNInertiaExpansionBehavior2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNInertiaRotationBehavior2DClass = interface(DNInertiaParameters2DClass)
  ['{17D86188-4316-592D-8F8E-258A53ABDC9A}']
  { constructors } 

    {class} function init: DNInertiaRotationBehavior2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.InertiaRotationBehavior2D')]
  DNInertiaRotationBehavior2D = interface(DNInertiaParameters2D)
  ['{9926A321-6FDD-36D7-B9C1-8E78FAE4A31B}']
  { getters & setters } 

    function get_DesiredDeceleration: Single;
    procedure set_DesiredDeceleration(value: Single);
    function get_DesiredRotation: Single;
    procedure set_DesiredRotation(value: Single);
    function get_InitialVelocity: Single;
    procedure set_InitialVelocity(value: Single);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DesiredDeceleration: Single read get_DesiredDeceleration write set_DesiredDeceleration;
    property DesiredRotation: Single read get_DesiredRotation write set_DesiredRotation;
    property InitialVelocity: Single read get_InitialVelocity write set_InitialVelocity;
  end;

  TDNInertiaRotationBehavior2D = class(TDNGenericImport<DNInertiaRotationBehavior2DClass, DNInertiaRotationBehavior2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNInertiaTranslationBehavior2DClass = interface(DNInertiaParameters2DClass)
  ['{71F4E558-57AD-5ECC-82DD-FD96F5A8B85B}']
  { constructors } 

    {class} function init: DNInertiaTranslationBehavior2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.InertiaTranslationBehavior2D')]
  DNInertiaTranslationBehavior2D = interface(DNInertiaParameters2D)
  ['{3D6F4080-74E9-33E3-A658-0104E8382B1A}']
  { getters & setters } 

    function get_DesiredDeceleration: Single;
    procedure set_DesiredDeceleration(value: Single);
    function get_DesiredDisplacement: Single;
    procedure set_DesiredDisplacement(value: Single);
    function get_InitialVelocityX: Single;
    procedure set_InitialVelocityX(value: Single);
    function get_InitialVelocityY: Single;
    procedure set_InitialVelocityY(value: Single);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DesiredDeceleration: Single read get_DesiredDeceleration write set_DesiredDeceleration;
    property DesiredDisplacement: Single read get_DesiredDisplacement write set_DesiredDisplacement;
    property InitialVelocityX: Single read get_InitialVelocityX write set_InitialVelocityX;
    property InitialVelocityY: Single read get_InitialVelocityY write set_InitialVelocityY;
  end;

  TDNInertiaTranslationBehavior2D = class(TDNGenericImport<DNInertiaTranslationBehavior2DClass, DNInertiaTranslationBehavior2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNInertiaProcessor2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{68A5A2DE-F0AB-562F-B382-DEFE78AE88F8}']
  { constructors } 

    {class} function init: DNInertiaProcessor2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.InertiaProcessor2D')]
  DNInertiaProcessor2D = interface(DDN.mscorlib.DNObject)
  ['{D7EFC75C-5844-3EEB-A225-E65253AC4985}']
  { getters & setters } 

    function get_InitialOriginX: Single;
    procedure set_InitialOriginX(value: Single);
    function get_InitialOriginY: Single;
    procedure set_InitialOriginY(value: Single);
    function get_IsRunning: Boolean;
    function get_TranslationBehavior: DNInertiaTranslationBehavior2D;
    procedure set_TranslationBehavior(value: DNInertiaTranslationBehavior2D);
    function get_RotationBehavior: DNInertiaRotationBehavior2D;
    procedure set_RotationBehavior(value: DNInertiaRotationBehavior2D);
    function get_ExpansionBehavior: DNInertiaExpansionBehavior2D;
    procedure set_ExpansionBehavior(value: DNInertiaExpansionBehavior2D);

  { methods } 

    function Process(timestamp: Int64): Boolean;
    procedure Complete(timestamp: Int64);
    procedure SetParameters(parameters: DNInertiaParameters2D);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property InitialOriginX: Single read get_InitialOriginX write set_InitialOriginX;
    property InitialOriginY: Single read get_InitialOriginY write set_InitialOriginY;
    property IsRunning: Boolean read get_IsRunning;
    property TranslationBehavior: DNInertiaTranslationBehavior2D read get_TranslationBehavior write set_TranslationBehavior;
    property RotationBehavior: DNInertiaRotationBehavior2D read get_RotationBehavior write set_RotationBehavior;
    property ExpansionBehavior: DNInertiaExpansionBehavior2D read get_ExpansionBehavior write set_ExpansionBehavior;
  end;

  TDNInertiaProcessor2D = class(TDNGenericImport<DNInertiaProcessor2DClass, DNInertiaProcessor2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulationDelta2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DD45D25B-2B2B-507B-859F-FCFD355F9689}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.ManipulationDelta2D')]
  DNManipulationDelta2D = interface(DDN.mscorlib.DNObject)
  ['{E96ADC36-FB06-328A-B0AA-CABD7B2F8606}']
  { getters & setters } 

    function get_TranslationX: Single;
    function get_TranslationY: Single;
    function get_Rotation: Single;
    function get_ScaleX: Single;
    function get_ScaleY: Single;
    function get_ExpansionX: Single;
    function get_ExpansionY: Single;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TranslationX: Single read get_TranslationX;
    property TranslationY: Single read get_TranslationY;
    property Rotation: Single read get_Rotation;
    property ScaleX: Single read get_ScaleX;
    property ScaleY: Single read get_ScaleY;
    property ExpansionX: Single read get_ExpansionX;
    property ExpansionY: Single read get_ExpansionY;
  end;

  TDNManipulationDelta2D = class(TDNGenericImport<DNManipulationDelta2DClass, DNManipulationDelta2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulationParameters2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{5F890FBC-3049-5354-9A85-B79DDFDDA86F}']
  end;

  [DNTypeName('System.Windows.Input.Manipulations.ManipulationParameters2D')]
  DNManipulationParameters2D = interface(DDN.mscorlib.DNObject)
  ['{67782D8E-E680-3F05-B96E-FCED00ED48A1}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNManipulationParameters2D = class(TDNGenericImport<DNManipulationParameters2DClass, DNManipulationParameters2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulationPivot2DClass = interface(DNManipulationParameters2DClass)
  ['{5F2720D7-0D12-5AB1-901E-FAEF3E5CE5B2}']
  { constructors } 

    {class} function init: DNManipulationPivot2D;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.ManipulationPivot2D')]
  DNManipulationPivot2D = interface(DNManipulationParameters2D)
  ['{314CCCAC-3BA5-3D29-BB12-7CB4FD05CAC8}']
  { getters & setters } 

    function get_X: Single;
    procedure set_X(value: Single);
    function get_Y: Single;
    procedure set_Y(value: Single);
    function get_Radius: Single;
    procedure set_Radius(value: Single);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property X: Single read get_X write set_X;
    property Y: Single read get_Y write set_Y;
    property Radius: Single read get_Radius write set_Radius;
  end;

  TDNManipulationPivot2D = class(TDNGenericImport<DNManipulationPivot2DClass, DNManipulationPivot2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulationProcessor2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DC776A95-743E-516B-9CCE-7E3E82F87C97}']
  { constructors } 

    {class} function init(supportedManipulations: DNManipulations2D): DNManipulationProcessor2D; overload;
    {class} function init(supportedManipulations: DNManipulations2D; pivot: DNManipulationPivot2D): DNManipulationProcessor2D; overload;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.ManipulationProcessor2D')]
  DNManipulationProcessor2D = interface(DDN.mscorlib.DNObject)
  ['{425C6FE6-3F72-3261-B782-31250F234A05}']
  { getters & setters } 

    function get_MinimumScaleRotateRadius: Single;
    procedure set_MinimumScaleRotateRadius(value: Single);
    function get_Pivot: DNManipulationPivot2D;
    procedure set_Pivot(value: DNManipulationPivot2D);
    function get_SupportedManipulations: DNManipulations2D;
    procedure set_SupportedManipulations(value: DNManipulations2D);

  { methods } 

    procedure ProcessManipulators(timestamp: Int64; manipulators: DDN.mscorlib.DNIEnumerable<DNManipulator2D>);
    procedure CompleteManipulation(timestamp: Int64);
    procedure SetParameters(parameters: DNManipulationParameters2D);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property MinimumScaleRotateRadius: Single read get_MinimumScaleRotateRadius write set_MinimumScaleRotateRadius;
    property Pivot: DNManipulationPivot2D read get_Pivot write set_Pivot;
    property SupportedManipulations: DNManipulations2D read get_SupportedManipulations write set_SupportedManipulations;
  end;

  TDNManipulationProcessor2D = class(TDNGenericImport<DNManipulationProcessor2DClass, DNManipulationProcessor2D>) end;

  //-------------namespace: System.Windows.Input.Manipulations----------------
  DNManipulationVelocities2DClass = interface(DDN.mscorlib.DNObjectClass)
  ['{054F8B7C-AD7E-599D-93BC-28BDEE6F690D}']
  { static fields getter & setter } 

   function __fakeFieldGet_Zero: DNManipulationVelocities2D;

  { static fields } 

    {class} property Zero: DNManipulationVelocities2D read __fakeFieldGet_Zero;

  end;

  [DNTypeName('System.Windows.Input.Manipulations.ManipulationVelocities2D')]
  DNManipulationVelocities2D = interface(DDN.mscorlib.DNObject)
  ['{9007A674-9A87-3EF9-947E-9FAFAA8EA342}']
  { getters & setters } 

    function get_LinearVelocityX: Single;
    function get_LinearVelocityY: Single;
    function get_AngularVelocity: Single;
    function get_ExpansionVelocityX: Single;
    function get_ExpansionVelocityY: Single;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LinearVelocityX: Single read get_LinearVelocityX;
    property LinearVelocityY: Single read get_LinearVelocityY;
    property AngularVelocity: Single read get_AngularVelocity;
    property ExpansionVelocityX: Single read get_ExpansionVelocityX;
    property ExpansionVelocityY: Single read get_ExpansionVelocityY;
  end;

  TDNManipulationVelocities2D = class(TDNGenericImport<DNManipulationVelocities2DClass, DNManipulationVelocities2D>) end;


implementation


initialization
  LoadAssemblyModule('WPF\System.Windows.Input.Manipulations.dll', True);

finalization

end.
