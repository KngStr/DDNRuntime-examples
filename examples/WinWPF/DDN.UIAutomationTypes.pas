// UIAutomationTypes, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
//-----------------------------------------------------------//
//                                                           //
//     DDN.UIAutomationTypes                        
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.UIAutomationTypes;

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

  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.AsyncContentLoadedState')]
  DNAsyncContentLoadedState = type Integer;
  DNAsyncContentLoadedStateHelper = record helper for DNAsyncContentLoadedState
  public const
    Beginning = 0;
    Progress = 1;
    Completed = 2;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.DockPosition')]
  DNDockPosition = type Integer;
  DNDockPositionHelper = record helper for DNDockPosition
  public const
    Top = 0;
    Left = 1;
    Bottom = 2;
    Right = 3;
    Fill = 4;
    None = 5;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.ExpandCollapseState')]
  DNExpandCollapseState = type Integer;
  DNExpandCollapseStateHelper = record helper for DNExpandCollapseState
  public const
    Collapsed = 0;
    Expanded = 1;
    PartiallyExpanded = 2;
    LeafNode = 3;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.OrientationType')]
  DNOrientationType = type Integer;
  DNOrientationTypeHelper = record helper for DNOrientationType
  public const
    None = 0;
    Horizontal = 1;
    Vertical = 2;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.RowOrColumnMajor')]
  DNRowOrColumnMajor = type Integer;
  DNRowOrColumnMajorHelper = record helper for DNRowOrColumnMajor
  public const
    RowMajor = 0;
    ColumnMajor = 1;
    Indeterminate = 2;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.ScrollAmount')]
  DNScrollAmount = type Integer;
  DNScrollAmountHelper = record helper for DNScrollAmount
  public const
    LargeDecrement = 0;
    SmallDecrement = 1;
    NoAmount = 2;
    LargeIncrement = 3;
    SmallIncrement = 4;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.StructureChangeType')]
  DNStructureChangeType = type Integer;
  DNStructureChangeTypeHelper = record helper for DNStructureChangeType
  public const
    ChildAdded = 0;
    ChildRemoved = 1;
    ChildrenInvalidated = 2;
    ChildrenBulkAdded = 3;
    ChildrenBulkRemoved = 4;
    ChildrenReordered = 5;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.SupportedTextSelection')]
  DNSupportedTextSelection = type Integer;
  DNSupportedTextSelectionHelper = record helper for DNSupportedTextSelection
  public const
    None = 0;
    Single = 1;
    Multiple = 2;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.SynchronizedInputType')]
  DNSynchronizedInputType = type Integer;
  DNSynchronizedInputTypeHelper = record helper for DNSynchronizedInputType
  public const
    KeyUp = 1;
    KeyDown = 2;
    MouseLeftButtonUp = 4;
    MouseLeftButtonDown = 8;
    MouseRightButtonUp = 16;
    MouseRightButtonDown = 32;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.AnimationStyle')]
  DNAnimationStyle = type Integer;
  DNAnimationStyleHelper = record helper for DNAnimationStyle
  public const
    None = 0;
    LasVegasLights = 1;
    BlinkingBackground = 2;
    SparkleText = 3;
    MarchingBlackAnts = 4;
    MarchingRedAnts = 5;
    Shimmer = 6;
    Other = -1;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.BulletStyle')]
  DNBulletStyle = type Integer;
  DNBulletStyleHelper = record helper for DNBulletStyle
  public const
    None = 0;
    HollowRoundBullet = 1;
    FilledRoundBullet = 2;
    HollowSquareBullet = 3;
    FilledSquareBullet = 4;
    DashBullet = 5;
    Other = -1;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.CapStyle')]
  DNCapStyle = type Integer;
  DNCapStyleHelper = record helper for DNCapStyle
  public const
    None = 0;
    SmallCap = 1;
    AllCap = 2;
    AllPetiteCaps = 3;
    PetiteCaps = 4;
    Unicase = 5;
    Titling = 6;
    Other = -1;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.FlowDirections')]
  DNFlowDirections = type Integer;
  DNFlowDirectionsHelper = record helper for DNFlowDirections
  public const
    Default_ = 0;
    RightToLeft = 1;
    BottomToTop = 2;
    Vertical = 4;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.HorizontalTextAlignment')]
  DNHorizontalTextAlignment = type Integer;
  DNHorizontalTextAlignmentHelper = record helper for DNHorizontalTextAlignment
  public const
    Left = 0;
    Centered = 1;
    Right = 2;
    Justified = 3;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.OutlineStyles')]
  DNOutlineStyles = type Integer;
  DNOutlineStylesHelper = record helper for DNOutlineStyles
  public const
    None = 0;
    Outline = 1;
    Shadow = 2;
    Engraved = 4;
    Embossed = 8;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.TextDecorationLineStyle')]
  DNTextDecorationLineStyle = type Integer;
  DNTextDecorationLineStyleHelper = record helper for DNTextDecorationLineStyle
  public const
    None = 0;
    Single = 1;
    WordsOnly = 2;
    Double = 3;
    Dot = 4;
    Dash = 5;
    DashDot = 6;
    DashDotDot = 7;
    Wavy = 8;
    ThickSingle = 9;
    DoubleWavy = 11;
    ThickWavy = 12;
    LongDash = 13;
    ThickDash = 14;
    ThickDashDot = 15;
    ThickDashDotDot = 16;
    ThickDot = 17;
    ThickLongDash = 18;
    Other = -1;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.TextPatternRangeEndpoint')]
  DNTextPatternRangeEndpoint = type Integer;
  DNTextPatternRangeEndpointHelper = record helper for DNTextPatternRangeEndpoint
  public const
    Start = 0;
    End_ = 1;
  end;


  //-------------namespace: System.Windows.Automation.Text----------------
  [DNTypeName('System.Windows.Automation.Text.TextUnit')]
  DNTextUnit = type Integer;
  DNTextUnitHelper = record helper for DNTextUnit
  public const
    Character = 0;
    Format = 1;
    Word = 2;
    Line = 3;
    Paragraph = 4;
    Page = 5;
    Document = 6;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.ToggleState')]
  DNToggleState = type Integer;
  DNToggleStateHelper = record helper for DNToggleState
  public const
    Off = 0;
    On_ = 1;
    Indeterminate = 2;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.TreeScope')]
  DNTreeScope = type Integer;
  DNTreeScopeHelper = record helper for DNTreeScope
  public const
    Element = 1;
    Children = 2;
    Descendants = 4;
    Subtree = 7;
    Parent = 8;
    Ancestors = 16;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.WindowInteractionState')]
  DNWindowInteractionState = type Integer;
  DNWindowInteractionStateHelper = record helper for DNWindowInteractionState
  public const
    Running = 0;
    Closing = 1;
    ReadyForUserInteraction = 2;
    BlockedByModalWindow = 3;
    NotResponding = 4;
  end;


  //-------------namespace: System.Windows.Automation----------------
  [DNTypeName('System.Windows.Automation.WindowVisualState')]
  DNWindowVisualState = type Integer;
  DNWindowVisualStateHelper = record helper for DNWindowVisualState
  public const
    Normal = 0;
    Maximized = 1;
    Minimized = 2;
  end;




type


{ declares }

  DNAutomationEventArgs = interface; // type: System.Windows.Automation.AutomationEventArgs, namespace: System.Windows.Automation
  DNAsyncContentLoadedEventArgs = interface; // type: System.Windows.Automation.AsyncContentLoadedEventArgs, namespace: System.Windows.Automation
  DNAutomationPropertyChangedEventArgs = interface; // type: System.Windows.Automation.AutomationPropertyChangedEventArgs, namespace: System.Windows.Automation
  DNStructureChangedEventArgs = interface; // type: System.Windows.Automation.StructureChangedEventArgs, namespace: System.Windows.Automation
  DNWindowClosedEventArgs = interface; // type: System.Windows.Automation.WindowClosedEventArgs, namespace: System.Windows.Automation
  DNElementNotEnabledException = interface; // type: System.Windows.Automation.ElementNotEnabledException, namespace: System.Windows.Automation
  DNElementNotAvailableException = interface; // type: System.Windows.Automation.ElementNotAvailableException, namespace: System.Windows.Automation
  DNNoClickablePointException = interface; // type: System.Windows.Automation.NoClickablePointException, namespace: System.Windows.Automation
  DNProxyAssemblyNotLoadedException = interface; // type: System.Windows.Automation.ProxyAssemblyNotLoadedException, namespace: System.Windows.Automation
  DNAutomationElementIdentifiers = interface; // type: System.Windows.Automation.AutomationElementIdentifiers, namespace: System.Windows.Automation
  DNAutomationIdentifier = interface; // type: System.Windows.Automation.AutomationIdentifier, namespace: System.Windows.Automation
  DNAutomationEvent = interface; // type: System.Windows.Automation.AutomationEvent, namespace: System.Windows.Automation
  DNAutomationPattern = interface; // type: System.Windows.Automation.AutomationPattern, namespace: System.Windows.Automation
  DNAutomationProperty = interface; // type: System.Windows.Automation.AutomationProperty, namespace: System.Windows.Automation
  DNAutomationTextAttribute = interface; // type: System.Windows.Automation.AutomationTextAttribute, namespace: System.Windows.Automation
  DNControlType = interface; // type: System.Windows.Automation.ControlType, namespace: System.Windows.Automation
  DNDockPatternIdentifiers = interface; // type: System.Windows.Automation.DockPatternIdentifiers, namespace: System.Windows.Automation
  DNExpandCollapsePatternIdentifiers = interface; // type: System.Windows.Automation.ExpandCollapsePatternIdentifiers, namespace: System.Windows.Automation
  DNGridItemPatternIdentifiers = interface; // type: System.Windows.Automation.GridItemPatternIdentifiers, namespace: System.Windows.Automation
  DNGridPatternIdentifiers = interface; // type: System.Windows.Automation.GridPatternIdentifiers, namespace: System.Windows.Automation
  DNInvokePatternIdentifiers = interface; // type: System.Windows.Automation.InvokePatternIdentifiers, namespace: System.Windows.Automation
  DNItemContainerPatternIdentifiers = interface; // type: System.Windows.Automation.ItemContainerPatternIdentifiers, namespace: System.Windows.Automation
  DNMultipleViewPatternIdentifiers = interface; // type: System.Windows.Automation.MultipleViewPatternIdentifiers, namespace: System.Windows.Automation
  DNRangeValuePatternIdentifiers = interface; // type: System.Windows.Automation.RangeValuePatternIdentifiers, namespace: System.Windows.Automation
  DNScrollItemPatternIdentifiers = interface; // type: System.Windows.Automation.ScrollItemPatternIdentifiers, namespace: System.Windows.Automation
  DNScrollPatternIdentifiers = interface; // type: System.Windows.Automation.ScrollPatternIdentifiers, namespace: System.Windows.Automation
  DNSelectionItemPatternIdentifiers = interface; // type: System.Windows.Automation.SelectionItemPatternIdentifiers, namespace: System.Windows.Automation
  DNSelectionPatternIdentifiers = interface; // type: System.Windows.Automation.SelectionPatternIdentifiers, namespace: System.Windows.Automation
  DNSynchronizedInputPatternIdentifiers = interface; // type: System.Windows.Automation.SynchronizedInputPatternIdentifiers, namespace: System.Windows.Automation
  DNTableItemPatternIdentifiers = interface; // type: System.Windows.Automation.TableItemPatternIdentifiers, namespace: System.Windows.Automation
  DNTablePatternIdentifiers = interface; // type: System.Windows.Automation.TablePatternIdentifiers, namespace: System.Windows.Automation
  DNTextPatternIdentifiers = interface; // type: System.Windows.Automation.TextPatternIdentifiers, namespace: System.Windows.Automation
  DNTogglePatternIdentifiers = interface; // type: System.Windows.Automation.TogglePatternIdentifiers, namespace: System.Windows.Automation
  DNTransformPatternIdentifiers = interface; // type: System.Windows.Automation.TransformPatternIdentifiers, namespace: System.Windows.Automation
  DNValuePatternIdentifiers = interface; // type: System.Windows.Automation.ValuePatternIdentifiers, namespace: System.Windows.Automation
  DNVirtualizedItemPatternIdentifiers = interface; // type: System.Windows.Automation.VirtualizedItemPatternIdentifiers, namespace: System.Windows.Automation
  DNWindowPatternIdentifiers = interface; // type: System.Windows.Automation.WindowPatternIdentifiers, namespace: System.Windows.Automation

{ delegates }

  [DNTypeName('System.Windows.Automation.AutomationEventHandler')]
  DNAutomationEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNAutomationEventArgs) of object;

  [DNTypeName('System.Windows.Automation.AutomationPropertyChangedEventHandler')]
  DNAutomationPropertyChangedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNAutomationPropertyChangedEventArgs) of object;

  [DNTypeName('System.Windows.Automation.StructureChangedEventHandler')]
  DNStructureChangedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNStructureChangedEventArgs) of object;




{ objects }

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{EECFEF76-82E3-5727-A232-36B78B79B13C}']
  { constructors } 

    {class} function init(eventId: DNAutomationEvent): DNAutomationEventArgs;

  end;

  [DNTypeName('System.Windows.Automation.AutomationEventArgs')]
  DNAutomationEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{ABAEB7E7-A514-352A-80A1-E3DFA09AF111}']
  { getters & setters } 

    function get_EventId: DNAutomationEvent;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property EventId: DNAutomationEvent read get_EventId;
  end;

  TDNAutomationEventArgs = class(TDNGenericImport<DNAutomationEventArgsClass, DNAutomationEventArgs>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAsyncContentLoadedEventArgsClass = interface(DNAutomationEventArgsClass)
  ['{AAF51CED-9DC4-5F65-B70E-DB4F23C532F8}']
  { constructors } 

    {class} function init(asyncContentState: DNAsyncContentLoadedState; percentComplete: Double): DNAsyncContentLoadedEventArgs;

  end;

  [DNTypeName('System.Windows.Automation.AsyncContentLoadedEventArgs')]
  DNAsyncContentLoadedEventArgs = interface(DNAutomationEventArgs)
  ['{CC63525C-1F7F-3F3B-BA81-7B9EB2FE6FA9}']
  { getters & setters } 

    function get_AsyncContentLoadedState: DNAsyncContentLoadedState;
    function get_PercentComplete: Double;
    function get_EventId: DNAutomationEvent;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AsyncContentLoadedState: DNAsyncContentLoadedState read get_AsyncContentLoadedState;
    property PercentComplete: Double read get_PercentComplete;
    property EventId: DNAutomationEvent read get_EventId;
  end;

  TDNAsyncContentLoadedEventArgs = class(TDNGenericImport<DNAsyncContentLoadedEventArgsClass, DNAsyncContentLoadedEventArgs>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationPropertyChangedEventArgsClass = interface(DNAutomationEventArgsClass)
  ['{5F990427-935D-590E-8B89-FEBA12A44395}']
  { constructors } 

    {class} function init(&property: DNAutomationProperty; oldValue: DDN.mscorlib.DNObject; newValue: DDN.mscorlib.DNObject): DNAutomationPropertyChangedEventArgs;

  end;

  [DNTypeName('System.Windows.Automation.AutomationPropertyChangedEventArgs')]
  DNAutomationPropertyChangedEventArgs = interface(DNAutomationEventArgs)
  ['{70C95033-A396-3778-9C1B-39228A9C9B3E}']
  { getters & setters } 

    function get_Property: DNAutomationProperty;
    function get_OldValue: DDN.mscorlib.DNObject;
    function get_NewValue: DDN.mscorlib.DNObject;
    function get_EventId: DNAutomationEvent;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property &Property: DNAutomationProperty read get_Property;
    property OldValue: DDN.mscorlib.DNObject read get_OldValue;
    property NewValue: DDN.mscorlib.DNObject read get_NewValue;
    property EventId: DNAutomationEvent read get_EventId;
  end;

  TDNAutomationPropertyChangedEventArgs = class(TDNGenericImport<DNAutomationPropertyChangedEventArgsClass, DNAutomationPropertyChangedEventArgs>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNStructureChangedEventArgsClass = interface(DNAutomationEventArgsClass)
  ['{FA82E66B-09D9-5B3A-850A-9B668E17516E}']
  { constructors } 

    {class} function init(structureChangeType: DNStructureChangeType; runtimeId: TArray<Int32>): DNStructureChangedEventArgs;

  end;

  [DNTypeName('System.Windows.Automation.StructureChangedEventArgs')]
  DNStructureChangedEventArgs = interface(DNAutomationEventArgs)
  ['{D706853C-4F01-357E-90D0-9416ECFDB0F8}']
  { getters & setters } 

    function get_StructureChangeType: DNStructureChangeType;
    function get_EventId: DNAutomationEvent;

  { methods } 

    function GetRuntimeId: TArray<Int32>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property StructureChangeType: DNStructureChangeType read get_StructureChangeType;
    property EventId: DNAutomationEvent read get_EventId;
  end;

  TDNStructureChangedEventArgs = class(TDNGenericImport<DNStructureChangedEventArgsClass, DNStructureChangedEventArgs>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNWindowClosedEventArgsClass = interface(DNAutomationEventArgsClass)
  ['{35691F3D-E28B-5A72-856B-97947BE6ADC3}']
  { constructors } 

    {class} function init(runtimeId: TArray<Int32>): DNWindowClosedEventArgs;

  end;

  [DNTypeName('System.Windows.Automation.WindowClosedEventArgs')]
  DNWindowClosedEventArgs = interface(DNAutomationEventArgs)
  ['{75EA5EC5-6EDE-371D-93F6-84CC754C5A8D}']
  { getters & setters } 

    function get_EventId: DNAutomationEvent;

  { methods } 

    function GetRuntimeId: TArray<Int32>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property EventId: DNAutomationEvent read get_EventId;
  end;

  TDNWindowClosedEventArgs = class(TDNGenericImport<DNWindowClosedEventArgsClass, DNWindowClosedEventArgs>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNElementNotEnabledExceptionClass = interface(DDN.mscorlib.DNInvalidOperationExceptionClass)
  ['{74AF6582-B5F3-5191-B4A8-7297519EB349}']
  { constructors } 

    {class} function init: DNElementNotEnabledException; overload;
    {class} function init(message: string): DNElementNotEnabledException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNElementNotEnabledException; overload;

  end;

  [DNTypeName('System.Windows.Automation.ElementNotEnabledException')]
  DNElementNotEnabledException = interface(DDN.mscorlib.DNInvalidOperationException)
  ['{54461C84-05F7-3267-A382-9BE8A61974A2}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDN.mscorlib.DNIDictionary;
    function get_InnerException: DDN.mscorlib.DNException;
    function get_TargetSite: DDN.mscorlib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNElementNotEnabledException = class(TDNGenericImport<DNElementNotEnabledExceptionClass, DNElementNotEnabledException>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNElementNotAvailableExceptionClass = interface(DDN.mscorlib.DNSystemExceptionClass)
  ['{600424F4-1EC9-54AF-AE1E-0021E3FE44C8}']
  { constructors } 

    {class} function init: DNElementNotAvailableException; overload;
    {class} function init(message: string): DNElementNotAvailableException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNElementNotAvailableException; overload;
    {class} function init(innerException: DDN.mscorlib.DNException): DNElementNotAvailableException; overload;

  end;

  [DNTypeName('System.Windows.Automation.ElementNotAvailableException')]
  DNElementNotAvailableException = interface(DDN.mscorlib.DNSystemException)
  ['{C0A2AD64-CFF1-3DBA-A114-43CE9799C73C}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDN.mscorlib.DNIDictionary;
    function get_InnerException: DDN.mscorlib.DNException;
    function get_TargetSite: DDN.mscorlib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNElementNotAvailableException = class(TDNGenericImport<DNElementNotAvailableExceptionClass, DNElementNotAvailableException>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNNoClickablePointExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{42BE15EE-689A-5779-B229-6B799B98ADDA}']
  { constructors } 

    {class} function init: DNNoClickablePointException; overload;
    {class} function init(message: string): DNNoClickablePointException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNoClickablePointException; overload;

  end;

  [DNTypeName('System.Windows.Automation.NoClickablePointException')]
  DNNoClickablePointException = interface(DDN.mscorlib.DNException)
  ['{8B927203-C5EC-304C-A75B-9412F9750049}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDN.mscorlib.DNIDictionary;
    function get_InnerException: DDN.mscorlib.DNException;
    function get_TargetSite: DDN.mscorlib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNNoClickablePointException = class(TDNGenericImport<DNNoClickablePointExceptionClass, DNNoClickablePointException>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNProxyAssemblyNotLoadedExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{657ADD66-8561-5F01-A811-016ACC3EE049}']
  { constructors } 

    {class} function init: DNProxyAssemblyNotLoadedException; overload;
    {class} function init(message: string): DNProxyAssemblyNotLoadedException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNProxyAssemblyNotLoadedException; overload;

  end;

  [DNTypeName('System.Windows.Automation.ProxyAssemblyNotLoadedException')]
  DNProxyAssemblyNotLoadedException = interface(DDN.mscorlib.DNException)
  ['{2B8343D1-FBCC-34A3-BE06-B749B7E6641F}']
  { getters & setters } 

    function get_Message: string;
    function get_Data: DDN.mscorlib.DNIDictionary;
    function get_InnerException: DDN.mscorlib.DNException;
    function get_TargetSite: DDN.mscorlib.DNMethodBase;
    function get_StackTrace: string;
    function get_HelpLink: string;
    procedure set_HelpLink(value: string);
    function get_Source: string;
    procedure set_Source(value: string);
    function get_HResult: Int32;

  { methods } 

    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNProxyAssemblyNotLoadedException = class(TDNGenericImport<DNProxyAssemblyNotLoadedExceptionClass, DNProxyAssemblyNotLoadedException>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationElementIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{358056A6-6147-5C70-BFA3-AE8C46D18E1A}']
  { static fields getter & setter } 

   function __fakeFieldGet_NotSupported: DDN.mscorlib.DNObject;
   function __fakeFieldGet_IsControlElementProperty: DNAutomationProperty;
   function __fakeFieldGet_ControlTypeProperty: DNAutomationProperty;
   function __fakeFieldGet_IsContentElementProperty: DNAutomationProperty;
   function __fakeFieldGet_LabeledByProperty: DNAutomationProperty;
   function __fakeFieldGet_NativeWindowHandleProperty: DNAutomationProperty;
   function __fakeFieldGet_AutomationIdProperty: DNAutomationProperty;
   function __fakeFieldGet_ItemTypeProperty: DNAutomationProperty;
   function __fakeFieldGet_IsPasswordProperty: DNAutomationProperty;
   function __fakeFieldGet_LocalizedControlTypeProperty: DNAutomationProperty;
   function __fakeFieldGet_NameProperty: DNAutomationProperty;
   function __fakeFieldGet_AcceleratorKeyProperty: DNAutomationProperty;
   function __fakeFieldGet_AccessKeyProperty: DNAutomationProperty;
   function __fakeFieldGet_HasKeyboardFocusProperty: DNAutomationProperty;
   function __fakeFieldGet_IsKeyboardFocusableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsEnabledProperty: DNAutomationProperty;
   function __fakeFieldGet_BoundingRectangleProperty: DNAutomationProperty;
   function __fakeFieldGet_ProcessIdProperty: DNAutomationProperty;
   function __fakeFieldGet_RuntimeIdProperty: DNAutomationProperty;
   function __fakeFieldGet_ClassNameProperty: DNAutomationProperty;
   function __fakeFieldGet_HelpTextProperty: DNAutomationProperty;
   function __fakeFieldGet_ClickablePointProperty: DNAutomationProperty;
   function __fakeFieldGet_CultureProperty: DNAutomationProperty;
   function __fakeFieldGet_IsOffscreenProperty: DNAutomationProperty;
   function __fakeFieldGet_OrientationProperty: DNAutomationProperty;
   function __fakeFieldGet_FrameworkIdProperty: DNAutomationProperty;
   function __fakeFieldGet_IsRequiredForFormProperty: DNAutomationProperty;
   function __fakeFieldGet_ItemStatusProperty: DNAutomationProperty;
   function __fakeFieldGet_LiveSettingProperty: DNAutomationProperty;
   function __fakeFieldGet_ControllerForProperty: DNAutomationProperty;
   function __fakeFieldGet_SizeOfSetProperty: DNAutomationProperty;
   function __fakeFieldGet_PositionInSetProperty: DNAutomationProperty;
   function __fakeFieldGet_IsDockPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsExpandCollapsePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsGridItemPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsGridPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsInvokePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsMultipleViewPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsRangeValuePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsSelectionItemPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsSelectionPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsScrollPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsScrollItemPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsSynchronizedInputPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsVirtualizedItemPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsItemContainerPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTablePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTableItemPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTextPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTogglePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTransformPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsValuePatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_IsWindowPatternAvailableProperty: DNAutomationProperty;
   function __fakeFieldGet_ToolTipOpenedEvent: DNAutomationEvent;
   function __fakeFieldGet_ToolTipClosedEvent: DNAutomationEvent;
   function __fakeFieldGet_StructureChangedEvent: DNAutomationEvent;
   function __fakeFieldGet_MenuOpenedEvent: DNAutomationEvent;
   function __fakeFieldGet_AutomationPropertyChangedEvent: DNAutomationEvent;
   function __fakeFieldGet_AutomationFocusChangedEvent: DNAutomationEvent;
   function __fakeFieldGet_AsyncContentLoadedEvent: DNAutomationEvent;
   function __fakeFieldGet_MenuClosedEvent: DNAutomationEvent;
   function __fakeFieldGet_LayoutInvalidatedEvent: DNAutomationEvent;
   function __fakeFieldGet_LiveRegionChangedEvent: DNAutomationEvent;

  { static fields } 

    {class} property NotSupported: DDN.mscorlib.DNObject read __fakeFieldGet_NotSupported;
    {class} property IsControlElementProperty: DNAutomationProperty read __fakeFieldGet_IsControlElementProperty;
    {class} property ControlTypeProperty: DNAutomationProperty read __fakeFieldGet_ControlTypeProperty;
    {class} property IsContentElementProperty: DNAutomationProperty read __fakeFieldGet_IsContentElementProperty;
    {class} property LabeledByProperty: DNAutomationProperty read __fakeFieldGet_LabeledByProperty;
    {class} property NativeWindowHandleProperty: DNAutomationProperty read __fakeFieldGet_NativeWindowHandleProperty;
    {class} property AutomationIdProperty: DNAutomationProperty read __fakeFieldGet_AutomationIdProperty;
    {class} property ItemTypeProperty: DNAutomationProperty read __fakeFieldGet_ItemTypeProperty;
    {class} property IsPasswordProperty: DNAutomationProperty read __fakeFieldGet_IsPasswordProperty;
    {class} property LocalizedControlTypeProperty: DNAutomationProperty read __fakeFieldGet_LocalizedControlTypeProperty;
    {class} property NameProperty: DNAutomationProperty read __fakeFieldGet_NameProperty;
    {class} property AcceleratorKeyProperty: DNAutomationProperty read __fakeFieldGet_AcceleratorKeyProperty;
    {class} property AccessKeyProperty: DNAutomationProperty read __fakeFieldGet_AccessKeyProperty;
    {class} property HasKeyboardFocusProperty: DNAutomationProperty read __fakeFieldGet_HasKeyboardFocusProperty;
    {class} property IsKeyboardFocusableProperty: DNAutomationProperty read __fakeFieldGet_IsKeyboardFocusableProperty;
    {class} property IsEnabledProperty: DNAutomationProperty read __fakeFieldGet_IsEnabledProperty;
    {class} property BoundingRectangleProperty: DNAutomationProperty read __fakeFieldGet_BoundingRectangleProperty;
    {class} property ProcessIdProperty: DNAutomationProperty read __fakeFieldGet_ProcessIdProperty;
    {class} property RuntimeIdProperty: DNAutomationProperty read __fakeFieldGet_RuntimeIdProperty;
    {class} property ClassNameProperty: DNAutomationProperty read __fakeFieldGet_ClassNameProperty;
    {class} property HelpTextProperty: DNAutomationProperty read __fakeFieldGet_HelpTextProperty;
    {class} property ClickablePointProperty: DNAutomationProperty read __fakeFieldGet_ClickablePointProperty;
    {class} property CultureProperty: DNAutomationProperty read __fakeFieldGet_CultureProperty;
    {class} property IsOffscreenProperty: DNAutomationProperty read __fakeFieldGet_IsOffscreenProperty;
    {class} property OrientationProperty: DNAutomationProperty read __fakeFieldGet_OrientationProperty;
    {class} property FrameworkIdProperty: DNAutomationProperty read __fakeFieldGet_FrameworkIdProperty;
    {class} property IsRequiredForFormProperty: DNAutomationProperty read __fakeFieldGet_IsRequiredForFormProperty;
    {class} property ItemStatusProperty: DNAutomationProperty read __fakeFieldGet_ItemStatusProperty;
    {class} property LiveSettingProperty: DNAutomationProperty read __fakeFieldGet_LiveSettingProperty;
    {class} property ControllerForProperty: DNAutomationProperty read __fakeFieldGet_ControllerForProperty;
    {class} property SizeOfSetProperty: DNAutomationProperty read __fakeFieldGet_SizeOfSetProperty;
    {class} property PositionInSetProperty: DNAutomationProperty read __fakeFieldGet_PositionInSetProperty;
    {class} property IsDockPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsDockPatternAvailableProperty;
    {class} property IsExpandCollapsePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsExpandCollapsePatternAvailableProperty;
    {class} property IsGridItemPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsGridItemPatternAvailableProperty;
    {class} property IsGridPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsGridPatternAvailableProperty;
    {class} property IsInvokePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsInvokePatternAvailableProperty;
    {class} property IsMultipleViewPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsMultipleViewPatternAvailableProperty;
    {class} property IsRangeValuePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsRangeValuePatternAvailableProperty;
    {class} property IsSelectionItemPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsSelectionItemPatternAvailableProperty;
    {class} property IsSelectionPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsSelectionPatternAvailableProperty;
    {class} property IsScrollPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsScrollPatternAvailableProperty;
    {class} property IsScrollItemPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsScrollItemPatternAvailableProperty;
    {class} property IsSynchronizedInputPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsSynchronizedInputPatternAvailableProperty;
    {class} property IsVirtualizedItemPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsVirtualizedItemPatternAvailableProperty;
    {class} property IsItemContainerPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsItemContainerPatternAvailableProperty;
    {class} property IsTablePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsTablePatternAvailableProperty;
    {class} property IsTableItemPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsTableItemPatternAvailableProperty;
    {class} property IsTextPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsTextPatternAvailableProperty;
    {class} property IsTogglePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsTogglePatternAvailableProperty;
    {class} property IsTransformPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsTransformPatternAvailableProperty;
    {class} property IsValuePatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsValuePatternAvailableProperty;
    {class} property IsWindowPatternAvailableProperty: DNAutomationProperty read __fakeFieldGet_IsWindowPatternAvailableProperty;
    {class} property ToolTipOpenedEvent: DNAutomationEvent read __fakeFieldGet_ToolTipOpenedEvent;
    {class} property ToolTipClosedEvent: DNAutomationEvent read __fakeFieldGet_ToolTipClosedEvent;
    {class} property StructureChangedEvent: DNAutomationEvent read __fakeFieldGet_StructureChangedEvent;
    {class} property MenuOpenedEvent: DNAutomationEvent read __fakeFieldGet_MenuOpenedEvent;
    {class} property AutomationPropertyChangedEvent: DNAutomationEvent read __fakeFieldGet_AutomationPropertyChangedEvent;
    {class} property AutomationFocusChangedEvent: DNAutomationEvent read __fakeFieldGet_AutomationFocusChangedEvent;
    {class} property AsyncContentLoadedEvent: DNAutomationEvent read __fakeFieldGet_AsyncContentLoadedEvent;
    {class} property MenuClosedEvent: DNAutomationEvent read __fakeFieldGet_MenuClosedEvent;
    {class} property LayoutInvalidatedEvent: DNAutomationEvent read __fakeFieldGet_LayoutInvalidatedEvent;
    {class} property LiveRegionChangedEvent: DNAutomationEvent read __fakeFieldGet_LiveRegionChangedEvent;

  end;

  [DNTypeName('System.Windows.Automation.AutomationElementIdentifiers')]
  DNAutomationElementIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{6F443A1A-71A0-3A7A-8C36-008826F3A585}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNAutomationElementIdentifiers = class(TDNGenericImport<DNAutomationElementIdentifiersClass, DNAutomationElementIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationIdentifierClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0D7EB66B-B138-56F1-85B3-116E2D6125F0}']
  end;

  [DNTypeName('System.Windows.Automation.AutomationIdentifier')]
  DNAutomationIdentifier = interface(DDN.mscorlib.DNObject)
  ['{C5646318-7D6B-304A-BB44-624BA93BF591}']
  { getters & setters } 

    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNAutomationIdentifier = class(TDNGenericImport<DNAutomationIdentifierClass, DNAutomationIdentifier>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationEventClass = interface(DNAutomationIdentifierClass)
  ['{4EA86E0E-AF70-5FE1-A8BA-76F76F8981E6}']
  { static methods } 

    {class} function LookupById(id: Int32): DNAutomationEvent;

  end;

  [DNTypeName('System.Windows.Automation.AutomationEvent')]
  DNAutomationEvent = interface(DNAutomationIdentifier)
  ['{B7DF3005-72B1-3CAF-9EE6-D582E0A1FABE}']
  { getters & setters } 

    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNAutomationEvent = class(TDNGenericImport<DNAutomationEventClass, DNAutomationEvent>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationPatternClass = interface(DNAutomationIdentifierClass)
  ['{FD829866-7C1B-5E56-828B-AADF4F34BBA4}']
  { static methods } 

    {class} function LookupById(id: Int32): DNAutomationPattern;

  end;

  [DNTypeName('System.Windows.Automation.AutomationPattern')]
  DNAutomationPattern = interface(DNAutomationIdentifier)
  ['{03618C55-1996-32BF-B544-709255179FC8}']
  { getters & setters } 

    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNAutomationPattern = class(TDNGenericImport<DNAutomationPatternClass, DNAutomationPattern>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationPropertyClass = interface(DNAutomationIdentifierClass)
  ['{66B35539-8814-5C29-A3E3-D343DD75AC84}']
  { static methods } 

    {class} function LookupById(id: Int32): DNAutomationProperty;

  end;

  [DNTypeName('System.Windows.Automation.AutomationProperty')]
  DNAutomationProperty = interface(DNAutomationIdentifier)
  ['{76940F1C-2071-3DC4-8046-BEE158CB73DA}']
  { getters & setters } 

    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNAutomationProperty = class(TDNGenericImport<DNAutomationPropertyClass, DNAutomationProperty>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNAutomationTextAttributeClass = interface(DNAutomationIdentifierClass)
  ['{65866F36-9287-500B-9E27-C2CA3B343A34}']
  { static methods } 

    {class} function LookupById(id: Int32): DNAutomationTextAttribute;

  end;

  [DNTypeName('System.Windows.Automation.AutomationTextAttribute')]
  DNAutomationTextAttribute = interface(DNAutomationIdentifier)
  ['{D2F62B56-5209-349B-867C-46847CF7A501}']
  { getters & setters } 

    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNAutomationTextAttribute = class(TDNGenericImport<DNAutomationTextAttributeClass, DNAutomationTextAttribute>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNControlTypeClass = interface(DNAutomationIdentifierClass)
  ['{0A328BF1-38CE-53B9-B21A-96398D7C9F6F}']
  { static fields getter & setter } 

   function __fakeFieldGet_Button: DNControlType;
   function __fakeFieldGet_Calendar: DNControlType;
   function __fakeFieldGet_CheckBox: DNControlType;
   function __fakeFieldGet_ComboBox: DNControlType;
   function __fakeFieldGet_Edit: DNControlType;
   function __fakeFieldGet_Hyperlink: DNControlType;
   function __fakeFieldGet_Image: DNControlType;
   function __fakeFieldGet_ListItem: DNControlType;
   function __fakeFieldGet_List: DNControlType;
   function __fakeFieldGet_Menu: DNControlType;
   function __fakeFieldGet_MenuBar: DNControlType;
   function __fakeFieldGet_MenuItem: DNControlType;
   function __fakeFieldGet_ProgressBar: DNControlType;
   function __fakeFieldGet_RadioButton: DNControlType;
   function __fakeFieldGet_ScrollBar: DNControlType;
   function __fakeFieldGet_Slider: DNControlType;
   function __fakeFieldGet_Spinner: DNControlType;
   function __fakeFieldGet_StatusBar: DNControlType;
   function __fakeFieldGet_Tab: DNControlType;
   function __fakeFieldGet_TabItem: DNControlType;
   function __fakeFieldGet_Text: DNControlType;
   function __fakeFieldGet_ToolBar: DNControlType;
   function __fakeFieldGet_ToolTip: DNControlType;
   function __fakeFieldGet_Tree: DNControlType;
   function __fakeFieldGet_TreeItem: DNControlType;
   function __fakeFieldGet_Custom: DNControlType;
   function __fakeFieldGet_Group: DNControlType;
   function __fakeFieldGet_Thumb: DNControlType;
   function __fakeFieldGet_DataGrid: DNControlType;
   function __fakeFieldGet_DataItem: DNControlType;
   function __fakeFieldGet_Document: DNControlType;
   function __fakeFieldGet_SplitButton: DNControlType;
   function __fakeFieldGet_Window: DNControlType;
   function __fakeFieldGet_Pane: DNControlType;
   function __fakeFieldGet_Header: DNControlType;
   function __fakeFieldGet_HeaderItem: DNControlType;
   function __fakeFieldGet_Table: DNControlType;
   function __fakeFieldGet_TitleBar: DNControlType;
   function __fakeFieldGet_Separator: DNControlType;

  { static fields } 

    {class} property Button: DNControlType read __fakeFieldGet_Button;
    {class} property Calendar: DNControlType read __fakeFieldGet_Calendar;
    {class} property CheckBox: DNControlType read __fakeFieldGet_CheckBox;
    {class} property ComboBox: DNControlType read __fakeFieldGet_ComboBox;
    {class} property Edit: DNControlType read __fakeFieldGet_Edit;
    {class} property Hyperlink: DNControlType read __fakeFieldGet_Hyperlink;
    {class} property Image: DNControlType read __fakeFieldGet_Image;
    {class} property ListItem: DNControlType read __fakeFieldGet_ListItem;
    {class} property List: DNControlType read __fakeFieldGet_List;
    {class} property Menu: DNControlType read __fakeFieldGet_Menu;
    {class} property MenuBar: DNControlType read __fakeFieldGet_MenuBar;
    {class} property MenuItem: DNControlType read __fakeFieldGet_MenuItem;
    {class} property ProgressBar: DNControlType read __fakeFieldGet_ProgressBar;
    {class} property RadioButton: DNControlType read __fakeFieldGet_RadioButton;
    {class} property ScrollBar: DNControlType read __fakeFieldGet_ScrollBar;
    {class} property Slider: DNControlType read __fakeFieldGet_Slider;
    {class} property Spinner: DNControlType read __fakeFieldGet_Spinner;
    {class} property StatusBar: DNControlType read __fakeFieldGet_StatusBar;
    {class} property Tab: DNControlType read __fakeFieldGet_Tab;
    {class} property TabItem: DNControlType read __fakeFieldGet_TabItem;
    {class} property Text: DNControlType read __fakeFieldGet_Text;
    {class} property ToolBar: DNControlType read __fakeFieldGet_ToolBar;
    {class} property ToolTip: DNControlType read __fakeFieldGet_ToolTip;
    {class} property Tree: DNControlType read __fakeFieldGet_Tree;
    {class} property TreeItem: DNControlType read __fakeFieldGet_TreeItem;
    {class} property Custom: DNControlType read __fakeFieldGet_Custom;
    {class} property Group: DNControlType read __fakeFieldGet_Group;
    {class} property Thumb: DNControlType read __fakeFieldGet_Thumb;
    {class} property DataGrid: DNControlType read __fakeFieldGet_DataGrid;
    {class} property DataItem: DNControlType read __fakeFieldGet_DataItem;
    {class} property Document: DNControlType read __fakeFieldGet_Document;
    {class} property SplitButton: DNControlType read __fakeFieldGet_SplitButton;
    {class} property Window: DNControlType read __fakeFieldGet_Window;
    {class} property Pane: DNControlType read __fakeFieldGet_Pane;
    {class} property Header: DNControlType read __fakeFieldGet_Header;
    {class} property HeaderItem: DNControlType read __fakeFieldGet_HeaderItem;
    {class} property Table: DNControlType read __fakeFieldGet_Table;
    {class} property TitleBar: DNControlType read __fakeFieldGet_TitleBar;
    {class} property Separator: DNControlType read __fakeFieldGet_Separator;

  { static methods } 

    {class} function LookupById(id: Int32): DNControlType;

  end;

  [DNTypeName('System.Windows.Automation.ControlType')]
  DNControlType = interface(DNAutomationIdentifier)
  ['{A83F54CE-FB53-3E6D-BD1F-D416AF93B74A}']
  { getters & setters } 

    function get_LocalizedControlType: string;
    function get_Id: Int32;
    function get_ProgrammaticName: string;

  { methods } 

    function GetRequiredPatternSets: TArray<TArray<DNAutomationPattern>>;
    function GetNeverSupportedPatterns: TArray<DNAutomationPattern>;
    function GetRequiredProperties: TArray<DNAutomationProperty>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function CompareTo(obj: DDN.mscorlib.DNObject): Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LocalizedControlType: string read get_LocalizedControlType;
    property Id: Int32 read get_Id;
    property ProgrammaticName: string read get_ProgrammaticName;
  end;

  TDNControlType = class(TDNGenericImport<DNControlTypeClass, DNControlType>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNDockPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{655B1DE1-30E7-5679-8955-617382AC66F3}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_DockPositionProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property DockPositionProperty: DNAutomationProperty read __fakeFieldGet_DockPositionProperty;

  end;

  [DNTypeName('System.Windows.Automation.DockPatternIdentifiers')]
  DNDockPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{A8B842FD-25AA-30BB-86E4-5144368F1B48}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDockPatternIdentifiers = class(TDNGenericImport<DNDockPatternIdentifiersClass, DNDockPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNExpandCollapsePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{4EFE8D5C-66DF-54AB-A63A-05B80CA92F92}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_ExpandCollapseStateProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property ExpandCollapseStateProperty: DNAutomationProperty read __fakeFieldGet_ExpandCollapseStateProperty;

  end;

  [DNTypeName('System.Windows.Automation.ExpandCollapsePatternIdentifiers')]
  DNExpandCollapsePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{4B1098B3-C06B-39E0-9EB9-B885A9D23305}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNExpandCollapsePatternIdentifiers = class(TDNGenericImport<DNExpandCollapsePatternIdentifiersClass, DNExpandCollapsePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNGridItemPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{62CB1771-DB0F-51CE-BEED-11E4ABC2F527}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_RowProperty: DNAutomationProperty;
   function __fakeFieldGet_ColumnProperty: DNAutomationProperty;
   function __fakeFieldGet_RowSpanProperty: DNAutomationProperty;
   function __fakeFieldGet_ColumnSpanProperty: DNAutomationProperty;
   function __fakeFieldGet_ContainingGridProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property RowProperty: DNAutomationProperty read __fakeFieldGet_RowProperty;
    {class} property ColumnProperty: DNAutomationProperty read __fakeFieldGet_ColumnProperty;
    {class} property RowSpanProperty: DNAutomationProperty read __fakeFieldGet_RowSpanProperty;
    {class} property ColumnSpanProperty: DNAutomationProperty read __fakeFieldGet_ColumnSpanProperty;
    {class} property ContainingGridProperty: DNAutomationProperty read __fakeFieldGet_ContainingGridProperty;

  end;

  [DNTypeName('System.Windows.Automation.GridItemPatternIdentifiers')]
  DNGridItemPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{0EAE555F-DF2D-3CF5-B84C-C2F656C28AAD}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNGridItemPatternIdentifiers = class(TDNGenericImport<DNGridItemPatternIdentifiersClass, DNGridItemPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNGridPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D7B5A191-F75F-564A-9849-E8D3130003C6}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_RowCountProperty: DNAutomationProperty;
   function __fakeFieldGet_ColumnCountProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property RowCountProperty: DNAutomationProperty read __fakeFieldGet_RowCountProperty;
    {class} property ColumnCountProperty: DNAutomationProperty read __fakeFieldGet_ColumnCountProperty;

  end;

  [DNTypeName('System.Windows.Automation.GridPatternIdentifiers')]
  DNGridPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{6EA2B8F8-2C2B-3287-B77E-E3397C42ACFB}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNGridPatternIdentifiers = class(TDNGenericImport<DNGridPatternIdentifiersClass, DNGridPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNInvokePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{459968BE-D30C-5CEB-9193-60EEF4977440}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_InvokedEvent: DNAutomationEvent;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property InvokedEvent: DNAutomationEvent read __fakeFieldGet_InvokedEvent;

  end;

  [DNTypeName('System.Windows.Automation.InvokePatternIdentifiers')]
  DNInvokePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{B2D9671D-49C6-3B3B-BB84-233E475C6BE6}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInvokePatternIdentifiers = class(TDNGenericImport<DNInvokePatternIdentifiersClass, DNInvokePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNItemContainerPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{90B4773C-9E67-5796-8FCE-1C0D9361B66A}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;

  end;

  [DNTypeName('System.Windows.Automation.ItemContainerPatternIdentifiers')]
  DNItemContainerPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{38F55F32-8F34-3379-874C-7C94C645043F}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNItemContainerPatternIdentifiers = class(TDNGenericImport<DNItemContainerPatternIdentifiersClass, DNItemContainerPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNMultipleViewPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{5F282ADE-D1B1-5997-830E-EC356826D985}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_CurrentViewProperty: DNAutomationProperty;
   function __fakeFieldGet_SupportedViewsProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property CurrentViewProperty: DNAutomationProperty read __fakeFieldGet_CurrentViewProperty;
    {class} property SupportedViewsProperty: DNAutomationProperty read __fakeFieldGet_SupportedViewsProperty;

  end;

  [DNTypeName('System.Windows.Automation.MultipleViewPatternIdentifiers')]
  DNMultipleViewPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{E932C70A-6950-3B71-A5A2-77B59020D7ED}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNMultipleViewPatternIdentifiers = class(TDNGenericImport<DNMultipleViewPatternIdentifiersClass, DNMultipleViewPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNRangeValuePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D8E62807-6E0B-582D-9982-335C69332D33}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_ValueProperty: DNAutomationProperty;
   function __fakeFieldGet_IsReadOnlyProperty: DNAutomationProperty;
   function __fakeFieldGet_MinimumProperty: DNAutomationProperty;
   function __fakeFieldGet_MaximumProperty: DNAutomationProperty;
   function __fakeFieldGet_LargeChangeProperty: DNAutomationProperty;
   function __fakeFieldGet_SmallChangeProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property ValueProperty: DNAutomationProperty read __fakeFieldGet_ValueProperty;
    {class} property IsReadOnlyProperty: DNAutomationProperty read __fakeFieldGet_IsReadOnlyProperty;
    {class} property MinimumProperty: DNAutomationProperty read __fakeFieldGet_MinimumProperty;
    {class} property MaximumProperty: DNAutomationProperty read __fakeFieldGet_MaximumProperty;
    {class} property LargeChangeProperty: DNAutomationProperty read __fakeFieldGet_LargeChangeProperty;
    {class} property SmallChangeProperty: DNAutomationProperty read __fakeFieldGet_SmallChangeProperty;

  end;

  [DNTypeName('System.Windows.Automation.RangeValuePatternIdentifiers')]
  DNRangeValuePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{E930664E-0162-3BE7-9B3C-E2530CB0F956}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRangeValuePatternIdentifiers = class(TDNGenericImport<DNRangeValuePatternIdentifiersClass, DNRangeValuePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNScrollItemPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{02C52F01-886A-5B81-A1A5-66573BA58EE5}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;

  end;

  [DNTypeName('System.Windows.Automation.ScrollItemPatternIdentifiers')]
  DNScrollItemPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{52836380-ADE3-31B9-BBD7-8C7F2FC0EBB3}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNScrollItemPatternIdentifiers = class(TDNGenericImport<DNScrollItemPatternIdentifiersClass, DNScrollItemPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNScrollPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2C6841B7-B032-5DB3-AF86-B6E06369EABE}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_HorizontalScrollPercentProperty: DNAutomationProperty;
   function __fakeFieldGet_HorizontalViewSizeProperty: DNAutomationProperty;
   function __fakeFieldGet_VerticalScrollPercentProperty: DNAutomationProperty;
   function __fakeFieldGet_VerticalViewSizeProperty: DNAutomationProperty;
   function __fakeFieldGet_HorizontallyScrollableProperty: DNAutomationProperty;
   function __fakeFieldGet_VerticallyScrollableProperty: DNAutomationProperty;
   function __fakeFieldGet_NoScroll: Double;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property HorizontalScrollPercentProperty: DNAutomationProperty read __fakeFieldGet_HorizontalScrollPercentProperty;
    {class} property HorizontalViewSizeProperty: DNAutomationProperty read __fakeFieldGet_HorizontalViewSizeProperty;
    {class} property VerticalScrollPercentProperty: DNAutomationProperty read __fakeFieldGet_VerticalScrollPercentProperty;
    {class} property VerticalViewSizeProperty: DNAutomationProperty read __fakeFieldGet_VerticalViewSizeProperty;
    {class} property HorizontallyScrollableProperty: DNAutomationProperty read __fakeFieldGet_HorizontallyScrollableProperty;
    {class} property VerticallyScrollableProperty: DNAutomationProperty read __fakeFieldGet_VerticallyScrollableProperty;
    {class} property NoScroll: Double read __fakeFieldGet_NoScroll;

  end;

  [DNTypeName('System.Windows.Automation.ScrollPatternIdentifiers')]
  DNScrollPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{F2B4BF52-7051-3A2A-ADBB-8694CE632389}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNScrollPatternIdentifiers = class(TDNGenericImport<DNScrollPatternIdentifiersClass, DNScrollPatternIdentifiers>)
  public const
   NoScroll = -1;
  end;

  //-------------namespace: System.Windows.Automation----------------
  DNSelectionItemPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3A3A8790-371C-50CD-A030-E25C419B99CE}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_IsSelectedProperty: DNAutomationProperty;
   function __fakeFieldGet_SelectionContainerProperty: DNAutomationProperty;
   function __fakeFieldGet_ElementAddedToSelectionEvent: DNAutomationEvent;
   function __fakeFieldGet_ElementRemovedFromSelectionEvent: DNAutomationEvent;
   function __fakeFieldGet_ElementSelectedEvent: DNAutomationEvent;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property IsSelectedProperty: DNAutomationProperty read __fakeFieldGet_IsSelectedProperty;
    {class} property SelectionContainerProperty: DNAutomationProperty read __fakeFieldGet_SelectionContainerProperty;
    {class} property ElementAddedToSelectionEvent: DNAutomationEvent read __fakeFieldGet_ElementAddedToSelectionEvent;
    {class} property ElementRemovedFromSelectionEvent: DNAutomationEvent read __fakeFieldGet_ElementRemovedFromSelectionEvent;
    {class} property ElementSelectedEvent: DNAutomationEvent read __fakeFieldGet_ElementSelectedEvent;

  end;

  [DNTypeName('System.Windows.Automation.SelectionItemPatternIdentifiers')]
  DNSelectionItemPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{F873DDF6-4E33-3882-8476-E437A7CC86C7}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSelectionItemPatternIdentifiers = class(TDNGenericImport<DNSelectionItemPatternIdentifiersClass, DNSelectionItemPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNSelectionPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F749D7B9-3434-5A42-B9E7-ECD39FA8E62B}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_SelectionProperty: DNAutomationProperty;
   function __fakeFieldGet_CanSelectMultipleProperty: DNAutomationProperty;
   function __fakeFieldGet_IsSelectionRequiredProperty: DNAutomationProperty;
   function __fakeFieldGet_InvalidatedEvent: DNAutomationEvent;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property SelectionProperty: DNAutomationProperty read __fakeFieldGet_SelectionProperty;
    {class} property CanSelectMultipleProperty: DNAutomationProperty read __fakeFieldGet_CanSelectMultipleProperty;
    {class} property IsSelectionRequiredProperty: DNAutomationProperty read __fakeFieldGet_IsSelectionRequiredProperty;
    {class} property InvalidatedEvent: DNAutomationEvent read __fakeFieldGet_InvalidatedEvent;

  end;

  [DNTypeName('System.Windows.Automation.SelectionPatternIdentifiers')]
  DNSelectionPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{7E95156F-0150-3731-9C2E-68C7E81A08A0}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSelectionPatternIdentifiers = class(TDNGenericImport<DNSelectionPatternIdentifiersClass, DNSelectionPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNSynchronizedInputPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{659FFD2A-39D2-5C5B-9A8B-B1F6F7869C9B}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_InputReachedTargetEvent: DNAutomationEvent;
   function __fakeFieldGet_InputReachedOtherElementEvent: DNAutomationEvent;
   function __fakeFieldGet_InputDiscardedEvent: DNAutomationEvent;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property InputReachedTargetEvent: DNAutomationEvent read __fakeFieldGet_InputReachedTargetEvent;
    {class} property InputReachedOtherElementEvent: DNAutomationEvent read __fakeFieldGet_InputReachedOtherElementEvent;
    {class} property InputDiscardedEvent: DNAutomationEvent read __fakeFieldGet_InputDiscardedEvent;

  end;

  [DNTypeName('System.Windows.Automation.SynchronizedInputPatternIdentifiers')]
  DNSynchronizedInputPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{3F4930A8-58DC-3F06-9A7B-E4E370472481}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSynchronizedInputPatternIdentifiers = class(TDNGenericImport<DNSynchronizedInputPatternIdentifiersClass, DNSynchronizedInputPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNTableItemPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{73667C77-996E-59C0-BB6B-2F20864C3738}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_RowHeaderItemsProperty: DNAutomationProperty;
   function __fakeFieldGet_ColumnHeaderItemsProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property RowHeaderItemsProperty: DNAutomationProperty read __fakeFieldGet_RowHeaderItemsProperty;
    {class} property ColumnHeaderItemsProperty: DNAutomationProperty read __fakeFieldGet_ColumnHeaderItemsProperty;

  end;

  [DNTypeName('System.Windows.Automation.TableItemPatternIdentifiers')]
  DNTableItemPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{2747B07A-064B-3D6D-A784-6B580A4235BC}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTableItemPatternIdentifiers = class(TDNGenericImport<DNTableItemPatternIdentifiersClass, DNTableItemPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNTablePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E8123735-9A3E-574B-88DD-F5FF7F6F28B9}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_RowHeadersProperty: DNAutomationProperty;
   function __fakeFieldGet_ColumnHeadersProperty: DNAutomationProperty;
   function __fakeFieldGet_RowOrColumnMajorProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property RowHeadersProperty: DNAutomationProperty read __fakeFieldGet_RowHeadersProperty;
    {class} property ColumnHeadersProperty: DNAutomationProperty read __fakeFieldGet_ColumnHeadersProperty;
    {class} property RowOrColumnMajorProperty: DNAutomationProperty read __fakeFieldGet_RowOrColumnMajorProperty;

  end;

  [DNTypeName('System.Windows.Automation.TablePatternIdentifiers')]
  DNTablePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{68D82BB7-71F3-3368-B8E0-207DEA5EABA0}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTablePatternIdentifiers = class(TDNGenericImport<DNTablePatternIdentifiersClass, DNTablePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNTextPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{B2030608-5713-5BF0-ADE7-8C7EC61B7E33}']
  { static fields getter & setter } 

   function __fakeFieldGet_MixedAttributeValue: DDN.mscorlib.DNObject;
   function __fakeFieldGet_AnimationStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_BackgroundColorAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_BulletStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_CapStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_CultureAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_FontNameAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_FontSizeAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_FontWeightAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_ForegroundColorAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_HorizontalTextAlignmentAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IndentationFirstLineAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IndentationLeadingAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IndentationTrailingAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IsHiddenAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IsItalicAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IsReadOnlyAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IsSubscriptAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_IsSuperscriptAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_MarginBottomAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_MarginLeadingAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_MarginTopAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_MarginTrailingAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_OutlineStylesAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_OverlineColorAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_OverlineStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_StrikethroughColorAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_StrikethroughStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_TabsAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_TextFlowDirectionsAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_UnderlineColorAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_UnderlineStyleAttribute: DNAutomationTextAttribute;
   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_TextSelectionChangedEvent: DNAutomationEvent;
   function __fakeFieldGet_TextChangedEvent: DNAutomationEvent;

  { static fields } 

    {class} property MixedAttributeValue: DDN.mscorlib.DNObject read __fakeFieldGet_MixedAttributeValue;
    {class} property AnimationStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_AnimationStyleAttribute;
    {class} property BackgroundColorAttribute: DNAutomationTextAttribute read __fakeFieldGet_BackgroundColorAttribute;
    {class} property BulletStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_BulletStyleAttribute;
    {class} property CapStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_CapStyleAttribute;
    {class} property CultureAttribute: DNAutomationTextAttribute read __fakeFieldGet_CultureAttribute;
    {class} property FontNameAttribute: DNAutomationTextAttribute read __fakeFieldGet_FontNameAttribute;
    {class} property FontSizeAttribute: DNAutomationTextAttribute read __fakeFieldGet_FontSizeAttribute;
    {class} property FontWeightAttribute: DNAutomationTextAttribute read __fakeFieldGet_FontWeightAttribute;
    {class} property ForegroundColorAttribute: DNAutomationTextAttribute read __fakeFieldGet_ForegroundColorAttribute;
    {class} property HorizontalTextAlignmentAttribute: DNAutomationTextAttribute read __fakeFieldGet_HorizontalTextAlignmentAttribute;
    {class} property IndentationFirstLineAttribute: DNAutomationTextAttribute read __fakeFieldGet_IndentationFirstLineAttribute;
    {class} property IndentationLeadingAttribute: DNAutomationTextAttribute read __fakeFieldGet_IndentationLeadingAttribute;
    {class} property IndentationTrailingAttribute: DNAutomationTextAttribute read __fakeFieldGet_IndentationTrailingAttribute;
    {class} property IsHiddenAttribute: DNAutomationTextAttribute read __fakeFieldGet_IsHiddenAttribute;
    {class} property IsItalicAttribute: DNAutomationTextAttribute read __fakeFieldGet_IsItalicAttribute;
    {class} property IsReadOnlyAttribute: DNAutomationTextAttribute read __fakeFieldGet_IsReadOnlyAttribute;
    {class} property IsSubscriptAttribute: DNAutomationTextAttribute read __fakeFieldGet_IsSubscriptAttribute;
    {class} property IsSuperscriptAttribute: DNAutomationTextAttribute read __fakeFieldGet_IsSuperscriptAttribute;
    {class} property MarginBottomAttribute: DNAutomationTextAttribute read __fakeFieldGet_MarginBottomAttribute;
    {class} property MarginLeadingAttribute: DNAutomationTextAttribute read __fakeFieldGet_MarginLeadingAttribute;
    {class} property MarginTopAttribute: DNAutomationTextAttribute read __fakeFieldGet_MarginTopAttribute;
    {class} property MarginTrailingAttribute: DNAutomationTextAttribute read __fakeFieldGet_MarginTrailingAttribute;
    {class} property OutlineStylesAttribute: DNAutomationTextAttribute read __fakeFieldGet_OutlineStylesAttribute;
    {class} property OverlineColorAttribute: DNAutomationTextAttribute read __fakeFieldGet_OverlineColorAttribute;
    {class} property OverlineStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_OverlineStyleAttribute;
    {class} property StrikethroughColorAttribute: DNAutomationTextAttribute read __fakeFieldGet_StrikethroughColorAttribute;
    {class} property StrikethroughStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_StrikethroughStyleAttribute;
    {class} property TabsAttribute: DNAutomationTextAttribute read __fakeFieldGet_TabsAttribute;
    {class} property TextFlowDirectionsAttribute: DNAutomationTextAttribute read __fakeFieldGet_TextFlowDirectionsAttribute;
    {class} property UnderlineColorAttribute: DNAutomationTextAttribute read __fakeFieldGet_UnderlineColorAttribute;
    {class} property UnderlineStyleAttribute: DNAutomationTextAttribute read __fakeFieldGet_UnderlineStyleAttribute;
    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property TextSelectionChangedEvent: DNAutomationEvent read __fakeFieldGet_TextSelectionChangedEvent;
    {class} property TextChangedEvent: DNAutomationEvent read __fakeFieldGet_TextChangedEvent;

  end;

  [DNTypeName('System.Windows.Automation.TextPatternIdentifiers')]
  DNTextPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{D25DD3AC-A5F0-30B9-B79D-BE5AC367D19E}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTextPatternIdentifiers = class(TDNGenericImport<DNTextPatternIdentifiersClass, DNTextPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNTogglePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6A528D56-1258-5370-93C1-A6C4A058E377}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_ToggleStateProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property ToggleStateProperty: DNAutomationProperty read __fakeFieldGet_ToggleStateProperty;

  end;

  [DNTypeName('System.Windows.Automation.TogglePatternIdentifiers')]
  DNTogglePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{49DB8B54-1F06-3E8D-B0C1-310B21107335}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTogglePatternIdentifiers = class(TDNGenericImport<DNTogglePatternIdentifiersClass, DNTogglePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNTransformPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{168B2DB4-C277-5274-A1A1-AD4931091E8D}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_CanMoveProperty: DNAutomationProperty;
   function __fakeFieldGet_CanResizeProperty: DNAutomationProperty;
   function __fakeFieldGet_CanRotateProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property CanMoveProperty: DNAutomationProperty read __fakeFieldGet_CanMoveProperty;
    {class} property CanResizeProperty: DNAutomationProperty read __fakeFieldGet_CanResizeProperty;
    {class} property CanRotateProperty: DNAutomationProperty read __fakeFieldGet_CanRotateProperty;

  end;

  [DNTypeName('System.Windows.Automation.TransformPatternIdentifiers')]
  DNTransformPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{A0D6A33D-51FF-331D-BBA6-44492432F4D6}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTransformPatternIdentifiers = class(TDNGenericImport<DNTransformPatternIdentifiersClass, DNTransformPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNValuePatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6E0751D3-432C-5F5C-B5E7-774893D8DF87}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_ValueProperty: DNAutomationProperty;
   function __fakeFieldGet_IsReadOnlyProperty: DNAutomationProperty;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property ValueProperty: DNAutomationProperty read __fakeFieldGet_ValueProperty;
    {class} property IsReadOnlyProperty: DNAutomationProperty read __fakeFieldGet_IsReadOnlyProperty;

  end;

  [DNTypeName('System.Windows.Automation.ValuePatternIdentifiers')]
  DNValuePatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{6778D9E8-C4C4-3CB2-98AB-050CBA646BEB}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNValuePatternIdentifiers = class(TDNGenericImport<DNValuePatternIdentifiersClass, DNValuePatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNVirtualizedItemPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2E662C82-3EB2-5529-9A64-19EE0300DAB3}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;

  end;

  [DNTypeName('System.Windows.Automation.VirtualizedItemPatternIdentifiers')]
  DNVirtualizedItemPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{92DC6C4E-63A4-3EA5-A618-DFB4107816B0}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNVirtualizedItemPatternIdentifiers = class(TDNGenericImport<DNVirtualizedItemPatternIdentifiersClass, DNVirtualizedItemPatternIdentifiers>) end;

  //-------------namespace: System.Windows.Automation----------------
  DNWindowPatternIdentifiersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{BB592965-E3E9-5205-9143-4BC82E80EE9C}']
  { static fields getter & setter } 

   function __fakeFieldGet_Pattern: DNAutomationPattern;
   function __fakeFieldGet_CanMaximizeProperty: DNAutomationProperty;
   function __fakeFieldGet_CanMinimizeProperty: DNAutomationProperty;
   function __fakeFieldGet_IsModalProperty: DNAutomationProperty;
   function __fakeFieldGet_WindowVisualStateProperty: DNAutomationProperty;
   function __fakeFieldGet_WindowInteractionStateProperty: DNAutomationProperty;
   function __fakeFieldGet_IsTopmostProperty: DNAutomationProperty;
   function __fakeFieldGet_WindowOpenedEvent: DNAutomationEvent;
   function __fakeFieldGet_WindowClosedEvent: DNAutomationEvent;

  { static fields } 

    {class} property Pattern: DNAutomationPattern read __fakeFieldGet_Pattern;
    {class} property CanMaximizeProperty: DNAutomationProperty read __fakeFieldGet_CanMaximizeProperty;
    {class} property CanMinimizeProperty: DNAutomationProperty read __fakeFieldGet_CanMinimizeProperty;
    {class} property IsModalProperty: DNAutomationProperty read __fakeFieldGet_IsModalProperty;
    {class} property WindowVisualStateProperty: DNAutomationProperty read __fakeFieldGet_WindowVisualStateProperty;
    {class} property WindowInteractionStateProperty: DNAutomationProperty read __fakeFieldGet_WindowInteractionStateProperty;
    {class} property IsTopmostProperty: DNAutomationProperty read __fakeFieldGet_IsTopmostProperty;
    {class} property WindowOpenedEvent: DNAutomationEvent read __fakeFieldGet_WindowOpenedEvent;
    {class} property WindowClosedEvent: DNAutomationEvent read __fakeFieldGet_WindowClosedEvent;

  end;

  [DNTypeName('System.Windows.Automation.WindowPatternIdentifiers')]
  DNWindowPatternIdentifiers = interface(DDN.mscorlib.DNObject)
  ['{04D15716-CCA8-3B33-A8E1-51856F440E7C}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNWindowPatternIdentifiers = class(TDNGenericImport<DNWindowPatternIdentifiersClass, DNWindowPatternIdentifiers>) end;


implementation


initialization
  LoadAssemblyModule('WPF\UIAutomationTypes.dll', True);

finalization

end.