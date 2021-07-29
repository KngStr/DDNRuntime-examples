// WindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
//-----------------------------------------------------------//
//                                                           //
//     DDN.WindowsBase                              
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.WindowsBase;

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

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.NewItemPlaceholderPosition')]
  DNNewItemPlaceholderPosition = type Integer;
  DNNewItemPlaceholderPositionHelper = record helper for DNNewItemPlaceholderPosition
  public const
    None = 0;
    AtBeginning = 1;
    AtEnd = 2;
  end;


  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.PropertyFilterOptions')]
  DNPropertyFilterOptions = type Integer;
  DNPropertyFilterOptionsHelper = record helper for DNPropertyFilterOptions
  public const
    None = 0;
    Invalid = 1;
    SetValues = 2;
    UnsetValues = 4;
    Valid = 8;
    All = 15;
  end;


  //-------------namespace: System.Diagnostics----------------
  [DNTypeName('System.Diagnostics.PresentationTraceLevel')]
  DNPresentationTraceLevel = type Integer;
  DNPresentationTraceLevelHelper = record helper for DNPresentationTraceLevel
  public const
    None = 0;
    Low = 1;
    Medium = 2;
    High = 3;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.CertificateEmbeddingOption')]
  DNCertificateEmbeddingOption = type Integer;
  DNCertificateEmbeddingOptionHelper = record helper for DNCertificateEmbeddingOption
  public const
    InCertificatePart = 0;
    InSignaturePart = 1;
    NotEmbedded = 2;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.CompressionOption')]
  DNCompressionOption = type Integer;
  DNCompressionOptionHelper = record helper for DNCompressionOption
  public const
    Normal = 0;
    Maximum = 1;
    Fast = 2;
    SuperFast = 3;
    NotCompressed = -1;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.EncryptionOption')]
  DNEncryptionOption = type Integer;
  DNEncryptionOptionHelper = record helper for DNEncryptionOption
  public const
    None = 0;
    RightsManagement = 1;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.PackageRelationshipSelectorType')]
  DNPackageRelationshipSelectorType = type Integer;
  DNPackageRelationshipSelectorTypeHelper = record helper for DNPackageRelationshipSelectorType
  public const
    Id = 0;
    Type_ = 1;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.TargetMode')]
  DNTargetMode = type Integer;
  DNTargetModeHelper = record helper for DNTargetMode
  public const
    Internal = 0;
    External_ = 1;
  end;


  //-------------namespace: System.IO.Packaging----------------
  [DNTypeName('System.IO.Packaging.VerifyResult')]
  DNVerifyResult = type Integer;
  DNVerifyResultHelper = record helper for DNVerifyResult
  public const
    Success = 0;
    InvalidSignature = 1;
    CertificateRequired = 2;
    InvalidCertificate = 3;
    ReferenceNotFound = 4;
    NotSigned = 5;
  end;


  //-------------namespace: System.Security.Permissions----------------
  [DNTypeName('System.Security.Permissions.MediaPermissionAudio')]
  DNMediaPermissionAudio = type Integer;
  DNMediaPermissionAudioHelper = record helper for DNMediaPermissionAudio
  public const
    NoAudio = 0;
    SiteOfOriginAudio = 1;
    SafeAudio = 2;
    AllAudio = 3;
  end;


  //-------------namespace: System.Security.Permissions----------------
  [DNTypeName('System.Security.Permissions.MediaPermissionImage')]
  DNMediaPermissionImage = type Integer;
  DNMediaPermissionImageHelper = record helper for DNMediaPermissionImage
  public const
    NoImage = 0;
    SiteOfOriginImage = 1;
    SafeImage = 2;
    AllImage = 3;
  end;


  //-------------namespace: System.Security.Permissions----------------
  [DNTypeName('System.Security.Permissions.MediaPermissionVideo')]
  DNMediaPermissionVideo = type Integer;
  DNMediaPermissionVideoHelper = record helper for DNMediaPermissionVideo
  public const
    NoVideo = 0;
    SiteOfOriginVideo = 1;
    SafeVideo = 2;
    AllVideo = 3;
  end;


  //-------------namespace: System.Security.Permissions----------------
  [DNTypeName('System.Security.Permissions.WebBrowserPermissionLevel')]
  DNWebBrowserPermissionLevel = type Integer;
  DNWebBrowserPermissionLevelHelper = record helper for DNWebBrowserPermissionLevel
  public const
    None = 0;
    Safe = 1;
    Unrestricted = 2;
  end;


  //-------------namespace: System.Security.RightsManagement----------------
  [DNTypeName('System.Security.RightsManagement.AuthenticationType')]
  DNAuthenticationType = type Integer;
  DNAuthenticationTypeHelper = record helper for DNAuthenticationType
  public const
    Windows = 0;
    Passport = 1;
    WindowsPassport = 2;
    Internal = 3;
  end;


  //-------------namespace: System.Security.RightsManagement----------------
  [DNTypeName('System.Security.RightsManagement.ContentRight')]
  DNContentRight = type Integer;
  DNContentRightHelper = record helper for DNContentRight
  public const
    View = 0;
    Edit = 1;
    Print = 2;
    Extract = 3;
    ObjectModel = 4;
    Owner = 5;
    ViewRightsData = 6;
    Forward_ = 7;
    Reply = 8;
    ReplyAll = 9;
    Sign = 10;
    DocumentEdit = 11;
    Export_ = 12;
  end;


  //-------------namespace: System.Security.RightsManagement----------------
  [DNTypeName('System.Security.RightsManagement.RightsManagementFailureCode')]
  DNRightsManagementFailureCode = type Integer;
  DNRightsManagementFailureCodeHelper = record helper for DNRightsManagementFailureCode
  public const
    Success = 0;
    ManifestPolicyViolation = -2147183860;
    InvalidLicense = -2147168512;
    InfoNotInLicense = -2147168511;
    InvalidLicenseSignature = -2147168510;
    EncryptionNotPermitted = -2147168508;
    RightNotGranted = -2147168507;
    InvalidVersion = -2147168506;
    InvalidEncodingType = -2147168505;
    InvalidNumericalValue = -2147168504;
    InvalidAlgorithmType = -2147168503;
    EnvironmentNotLoaded = -2147168502;
    EnvironmentCannotLoad = -2147168501;
    TooManyLoadedEnvironments = -2147168500;
    IncompatibleObjects = -2147168498;
    LibraryFail = -2147168497;
    EnablingPrincipalFailure = -2147168496;
    InfoNotPresent = -2147168495;
    BadGetInfoQuery = -2147168494;
    KeyTypeUnsupported = -2147168493;
    CryptoOperationUnsupported = -2147168492;
    ClockRollbackDetected = -2147168491;
    QueryReportsNoResults = -2147168490;
    UnexpectedException = -2147168489;
    BindValidityTimeViolated = -2147168488;
    BrokenCertChain = -2147168487;
    BindPolicyViolation = -2147168485;
    BindRevokedLicense = -2147168484;
    BindRevokedIssuer = -2147168483;
    BindRevokedPrincipal = -2147168482;
    BindRevokedResource = -2147168481;
    BindRevokedModule = -2147168480;
    BindContentNotInEndUseLicense = -2147168479;
    BindAccessPrincipalNotEnabling = -2147168478;
    BindAccessUnsatisfied = -2147168477;
    BindIndicatedPrincipalMissing = -2147168476;
    BindMachineNotFoundInGroupIdentity = -2147168475;
    LibraryUnsupportedPlugIn = -2147168474;
    BindRevocationListStale = -2147168473;
    BindNoApplicableRevocationList = -2147168472;
    InvalidHandle = -2147168468;
    BindIntervalTimeViolated = -2147168465;
    BindNoSatisfiedRightsGroup = -2147168464;
    BindSpecifiedWorkMissing = -2147168463;
    NoMoreData = -2147168461;
    LicenseAcquisitionFailed = -2147168460;
    IdMismatch = -2147168459;
    TooManyCertificates = -2147168458;
    NoDistributionPointUrlFound = -2147168457;
    AlreadyInProgress = -2147168456;
    GroupIdentityNotSet = -2147168455;
    RecordNotFound = -2147168454;
    NoConnect = -2147168453;
    NoLicense = -2147168452;
    NeedsMachineActivation = -2147168451;
    NeedsGroupIdentityActivation = -2147168450;
    ActivationFailed = -2147168448;
    Aborted = -2147168447;
    OutOfQuota = -2147168446;
    AuthenticationFailed = -2147168445;
    ServerError = -2147168444;
    InstallationFailed = -2147168443;
    HidCorrupted = -2147168442;
    InvalidServerResponse = -2147168441;
    ServiceNotFound = -2147168440;
    UseDefault = -2147168439;
    ServerNotFound = -2147168438;
    InvalidEmail = -2147168437;
    ValidityTimeViolation = -2147168436;
    OutdatedModule = -2147168435;
    NotSet = -2147168434;
    MetadataNotSet = -2147168433;
    RevocationInfoNotSet = -2147168432;
    InvalidTimeInfo = -2147168431;
    RightNotSet = -2147168430;
    LicenseBindingToWindowsIdentityFailed = -2147168429;
    InvalidIssuanceLicenseTemplate = -2147168428;
    InvalidKeyLength = -2147168427;
    ExpiredOfficialIssuanceLicenseTemplate = -2147168425;
    InvalidClientLicensorCertificate = -2147168424;
    HidInvalid = -2147168423;
    EmailNotVerified = -2147168422;
    ServiceMoved = -2147168421;
    ServiceGone = -2147168420;
    AdEntryNotFound = -2147168419;
    NotAChain = -2147168418;
    RequestDenied = -2147168417;
    DebuggerDetected = -2147168416;
    InvalidLockboxType = -2147168400;
    InvalidLockboxPath = -2147168399;
    InvalidRegistryPath = -2147168398;
    NoAesCryptoProvider = -2147168397;
    GlobalOptionAlreadySet = -2147168396;
    OwnerLicenseNotFound = -2147168395;
  end;


  //-------------namespace: System.Security.RightsManagement----------------
  [DNTypeName('System.Security.RightsManagement.UserActivationMode')]
  DNUserActivationMode = type Integer;
  DNUserActivationModeHelper = record helper for DNUserActivationMode
  public const
    Permanent = 0;
    Temporary = 1;
  end;


  //-------------namespace: System.Windows----------------
  [DNTypeName('System.Windows.BaseCompatibilityPreferences+HandleDispatcherRequestProcessingFailureOptions')]
  DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptions = type Integer;
  DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptionsHelper = record helper for DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptions
  public const
    Continue_ = 0;
    Throw = 1;
    Reset = 2;
  end;


  //-------------namespace: System.Windows.Input----------------
  [DNTypeName('System.Windows.Input.FocusNavigationDirection')]
  DNFocusNavigationDirection = type Integer;
  DNFocusNavigationDirectionHelper = record helper for DNFocusNavigationDirection
  public const
    Next = 0;
    Previous = 1;
    First = 2;
    Last = 3;
    Left = 4;
    Right = 5;
    Up = 6;
    Down = 7;
  end;


  //-------------namespace: System.Windows.Input----------------
  [DNTypeName('System.Windows.Input.Key')]
  DNKey = type Integer;
  DNKeyHelper = record helper for DNKey
  public const
    None = 0;
    Cancel = 1;
    Back = 2;
    Tab = 3;
    LineFeed = 4;
    Clear = 5;
    Return = 6;
    Enter = 6;
    Pause = 7;
    Capital = 8;
    CapsLock = 8;
    KanaMode = 9;
    HangulMode = 9;
    JunjaMode = 10;
    FinalMode = 11;
    HanjaMode = 12;
    KanjiMode = 12;
    Escape = 13;
    ImeConvert = 14;
    ImeNonConvert = 15;
    ImeAccept = 16;
    ImeModeChange = 17;
    Space = 18;
    Prior = 19;
    PageUp = 19;
    Next = 20;
    PageDown = 20;
    End_ = 21;
    Home = 22;
    Left = 23;
    Up = 24;
    Right = 25;
    Down = 26;
    Select = 27;
    Print = 28;
    Execute = 29;
    Snapshot = 30;
    PrintScreen = 30;
    Insert = 31;
    Delete = 32;
    Help = 33;
    D0 = 34;
    D1 = 35;
    D2 = 36;
    D3 = 37;
    D4 = 38;
    D5 = 39;
    D6 = 40;
    D7 = 41;
    D8 = 42;
    D9 = 43;
    A = 44;
    B = 45;
    C = 46;
    D = 47;
    E = 48;
    F = 49;
    G = 50;
    H = 51;
    I = 52;
    J = 53;
    K = 54;
    L = 55;
    M = 56;
    N = 57;
    O = 58;
    P = 59;
    Q = 60;
    R = 61;
    S = 62;
    T = 63;
    U = 64;
    V = 65;
    W = 66;
    X = 67;
    Y = 68;
    Z = 69;
    LWin = 70;
    RWin = 71;
    Apps = 72;
    Sleep = 73;
    NumPad0 = 74;
    NumPad1 = 75;
    NumPad2 = 76;
    NumPad3 = 77;
    NumPad4 = 78;
    NumPad5 = 79;
    NumPad6 = 80;
    NumPad7 = 81;
    NumPad8 = 82;
    NumPad9 = 83;
    Multiply = 84;
    Add = 85;
    Separator = 86;
    Subtract = 87;
    Decimal = 88;
    Divide = 89;
    F1 = 90;
    F2 = 91;
    F3 = 92;
    F4 = 93;
    F5 = 94;
    F6 = 95;
    F7 = 96;
    F8 = 97;
    F9 = 98;
    F10 = 99;
    F11 = 100;
    F12 = 101;
    F13 = 102;
    F14 = 103;
    F15 = 104;
    F16 = 105;
    F17 = 106;
    F18 = 107;
    F19 = 108;
    F20 = 109;
    F21 = 110;
    F22 = 111;
    F23 = 112;
    F24 = 113;
    NumLock = 114;
    Scroll = 115;
    LeftShift = 116;
    RightShift = 117;
    LeftCtrl = 118;
    RightCtrl = 119;
    LeftAlt = 120;
    RightAlt = 121;
    BrowserBack = 122;
    BrowserForward = 123;
    BrowserRefresh = 124;
    BrowserStop = 125;
    BrowserSearch = 126;
    BrowserFavorites = 127;
    BrowserHome = 128;
    VolumeMute = 129;
    VolumeDown = 130;
    VolumeUp = 131;
    MediaNextTrack = 132;
    MediaPreviousTrack = 133;
    MediaStop = 134;
    MediaPlayPause = 135;
    LaunchMail = 136;
    SelectMedia = 137;
    LaunchApplication1 = 138;
    LaunchApplication2 = 139;
    Oem1 = 140;
    OemSemicolon = 140;
    OemPlus = 141;
    OemComma = 142;
    OemMinus = 143;
    OemPeriod = 144;
    Oem2 = 145;
    OemQuestion = 145;
    Oem3 = 146;
    OemTilde = 146;
    AbntC1 = 147;
    AbntC2 = 148;
    Oem4 = 149;
    OemOpenBrackets = 149;
    Oem5 = 150;
    OemPipe = 150;
    Oem6 = 151;
    OemCloseBrackets = 151;
    Oem7 = 152;
    OemQuotes = 152;
    Oem8 = 153;
    Oem102 = 154;
    OemBackslash = 154;
    ImeProcessed = 155;
    System = 156;
    OemAttn = 157;
    DbeAlphanumeric = 157;
    OemFinish = 158;
    DbeKatakana = 158;
    OemCopy = 159;
    DbeHiragana = 159;
    OemAuto = 160;
    DbeSbcsChar = 160;
    OemEnlw = 161;
    DbeDbcsChar = 161;
    OemBackTab = 162;
    DbeRoman = 162;
    Attn = 163;
    DbeNoRoman = 163;
    CrSel = 164;
    DbeEnterWordRegisterMode = 164;
    ExSel = 165;
    DbeEnterImeConfigureMode = 165;
    EraseEof = 166;
    DbeFlushString = 166;
    Play = 167;
    DbeCodeInput = 167;
    Zoom = 168;
    DbeNoCodeInput = 168;
    NoName = 169;
    DbeDetermineString = 169;
    Pa1 = 170;
    DbeEnterDialogConversionMode = 170;
    OemClear = 171;
    DeadCharProcessed = 172;
  end;


  //-------------namespace: System.Windows.Input----------------
  [DNTypeName('System.Windows.Input.ModifierKeys')]
  DNModifierKeys = type Integer;
  DNModifierKeysHelper = record helper for DNModifierKeys
  public const
    None = 0;
    Alt = 1;
    Control = 2;
    Shift = 4;
    Windows = 8;
  end;


  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.DesignerSerializationOptions')]
  DNDesignerSerializationOptions = type Integer;
  DNDesignerSerializationOptionsHelper = record helper for DNDesignerSerializationOptions
  public const
    SerializeAsAttribute = 1;
  end;


  //-------------namespace: System.Windows.Threading----------------
  [DNTypeName('System.Windows.Threading.DispatcherOperationStatus')]
  DNDispatcherOperationStatus = type Integer;
  DNDispatcherOperationStatusHelper = record helper for DNDispatcherOperationStatus
  public const
    Pending = 0;
    Aborted = 1;
    Completed = 2;
    Executing = 3;
  end;


  //-------------namespace: System.Windows.Threading----------------
  [DNTypeName('System.Windows.Threading.DispatcherPriority')]
  DNDispatcherPriority = type Integer;
  DNDispatcherPriorityHelper = record helper for DNDispatcherPriority
  public const
    Inactive = 0;
    SystemIdle = 1;
    ApplicationIdle = 2;
    ContextIdle = 3;
    Background = 4;
    Input = 5;
    Loaded = 6;
    Render = 7;
    DataBind = 8;
    Normal = 9;
    Send = 10;
    Invalid = -1;
  end;




type


{ declares }

  DNPropertyFilterAttribute = interface; // type: System.ComponentModel.PropertyFilterAttribute, namespace: System.ComponentModel
  DNMediaPermissionAttribute = interface; // type: System.Security.Permissions.MediaPermissionAttribute, namespace: System.Security.Permissions
  DNWebBrowserPermissionAttribute = interface; // type: System.Security.Permissions.WebBrowserPermissionAttribute, namespace: System.Security.Permissions
  DNAttachedPropertyBrowsableAttribute = interface; // type: System.Windows.AttachedPropertyBrowsableAttribute, namespace: System.Windows
  DNAttachedPropertyBrowsableForTypeAttribute = interface; // type: System.Windows.AttachedPropertyBrowsableForTypeAttribute, namespace: System.Windows
  DNAttachedPropertyBrowsableWhenAttributePresentAttribute = interface; // type: System.Windows.AttachedPropertyBrowsableWhenAttributePresentAttribute, namespace: System.Windows
  DNDesignerSerializationOptionsAttribute = interface; // type: System.Windows.Markup.DesignerSerializationOptionsAttribute, namespace: System.Windows.Markup
  DNDisableDpiAwarenessAttribute = interface; // type: System.Windows.Media.DisableDpiAwarenessAttribute, namespace: System.Windows.Media
  DNICollectionView = interface; // type: System.ComponentModel.ICollectionView, namespace: System.ComponentModel
  DNSortDescriptionCollection = interface; // type: System.ComponentModel.SortDescriptionCollection, namespace: System.ComponentModel
  DNGroupDescription = interface; // type: System.ComponentModel.GroupDescription, namespace: System.ComponentModel
  DNICollectionViewFactory = interface; // type: System.ComponentModel.ICollectionViewFactory, namespace: System.ComponentModel
  DNICollectionViewLiveShaping = interface; // type: System.ComponentModel.ICollectionViewLiveShaping, namespace: System.ComponentModel
  DNIEditableCollectionView = interface; // type: System.ComponentModel.IEditableCollectionView, namespace: System.ComponentModel
  DNIEditableCollectionViewAddNewItem = interface; // type: System.ComponentModel.IEditableCollectionViewAddNewItem, namespace: System.ComponentModel
  DNIItemProperties = interface; // type: System.ComponentModel.IItemProperties, namespace: System.ComponentModel
  DNItemPropertyInfo = interface; // type: System.ComponentModel.ItemPropertyInfo, namespace: System.ComponentModel
  DNDependencyPropertyDescriptor = interface; // type: System.ComponentModel.DependencyPropertyDescriptor, namespace: System.ComponentModel
  DNExpressionConverter = interface; // type: System.Windows.ExpressionConverter, namespace: System.Windows
  DNKeyConverter = interface; // type: System.Windows.Input.KeyConverter, namespace: System.Windows.Input
  DNModifierKeysConverter = interface; // type: System.Windows.Input.ModifierKeysConverter, namespace: System.Windows.Input
  DNInt32RectConverter = interface; // type: System.Windows.Int32RectConverter, namespace: System.Windows
  DNMatrixConverter = interface; // type: System.Windows.Media.MatrixConverter, namespace: System.Windows.Media
  DNPointConverter = interface; // type: System.Windows.PointConverter, namespace: System.Windows
  DNRectConverter = interface; // type: System.Windows.RectConverter, namespace: System.Windows
  DNSizeConverter = interface; // type: System.Windows.SizeConverter, namespace: System.Windows
  DNVectorConverter = interface; // type: System.Windows.VectorConverter, namespace: System.Windows
  DNPresentationTraceSources = interface; // type: System.Diagnostics.PresentationTraceSources, namespace: System.Diagnostics
  DNCurrentChangingEventArgs = interface; // type: System.ComponentModel.CurrentChangingEventArgs, namespace: System.ComponentModel
  DNSignatureVerificationEventArgs = interface; // type: System.IO.Packaging.SignatureVerificationEventArgs, namespace: System.IO.Packaging
  DNDispatcherEventArgs = interface; // type: System.Windows.Threading.DispatcherEventArgs, namespace: System.Windows.Threading
  DNDispatcherUnhandledExceptionEventArgs = interface; // type: System.Windows.Threading.DispatcherUnhandledExceptionEventArgs, namespace: System.Windows.Threading
  DNDispatcherUnhandledExceptionFilterEventArgs = interface; // type: System.Windows.Threading.DispatcherUnhandledExceptionFilterEventArgs, namespace: System.Windows.Threading
  DNDispatcherHookEventArgs = interface; // type: System.Windows.Threading.DispatcherHookEventArgs, namespace: System.Windows.Threading
  DNRightsManagementException = interface; // type: System.Security.RightsManagement.RightsManagementException, namespace: System.Security.RightsManagement
  DNFileFormatException = interface; // type: System.IO.FileFormatException, namespace: System.IO
  DNEncryptedPackageEnvelope = interface; // type: System.IO.Packaging.EncryptedPackageEnvelope, namespace: System.IO.Packaging
  DNPackage = interface; // type: System.IO.Packaging.Package, namespace: System.IO.Packaging
  DNZipPackage = interface; // type: System.IO.Packaging.ZipPackage, namespace: System.IO.Packaging
  DNPackageDigitalSignature = interface; // type: System.IO.Packaging.PackageDigitalSignature, namespace: System.IO.Packaging
  DNPackageDigitalSignatureManager = interface; // type: System.IO.Packaging.PackageDigitalSignatureManager, namespace: System.IO.Packaging
  DNPackagePart = interface; // type: System.IO.Packaging.PackagePart, namespace: System.IO.Packaging
  DNZipPackagePart = interface; // type: System.IO.Packaging.ZipPackagePart, namespace: System.IO.Packaging
  DNPackagePartCollection = interface; // type: System.IO.Packaging.PackagePartCollection, namespace: System.IO.Packaging
  DNPackageProperties = interface; // type: System.IO.Packaging.PackageProperties, namespace: System.IO.Packaging
  DNPackageRelationship = interface; // type: System.IO.Packaging.PackageRelationship, namespace: System.IO.Packaging
  DNPackageRelationshipCollection = interface; // type: System.IO.Packaging.PackageRelationshipCollection, namespace: System.IO.Packaging
  DNPackageRelationshipSelector = interface; // type: System.IO.Packaging.PackageRelationshipSelector, namespace: System.IO.Packaging
  DNPackUriHelper = interface; // type: System.IO.Packaging.PackUriHelper, namespace: System.IO.Packaging
  DNRightsManagementInformation = interface; // type: System.IO.Packaging.RightsManagementInformation, namespace: System.IO.Packaging
  DNStorageInfo = interface; // type: System.IO.Packaging.StorageInfo, namespace: System.IO.Packaging
  DNStreamInfo = interface; // type: System.IO.Packaging.StreamInfo, namespace: System.IO.Packaging
  DNMediaPermission = interface; // type: System.Security.Permissions.MediaPermission, namespace: System.Security.Permissions
  DNWebBrowserPermission = interface; // type: System.Security.Permissions.WebBrowserPermission, namespace: System.Security.Permissions
  DNContentGrant = interface; // type: System.Security.RightsManagement.ContentGrant, namespace: System.Security.RightsManagement
  DNContentUser = interface; // type: System.Security.RightsManagement.ContentUser, namespace: System.Security.RightsManagement
  DNCryptoProvider = interface; // type: System.Security.RightsManagement.CryptoProvider, namespace: System.Security.RightsManagement
  DNLocalizedNameDescriptionPair = interface; // type: System.Security.RightsManagement.LocalizedNameDescriptionPair, namespace: System.Security.RightsManagement
  DNPublishLicense = interface; // type: System.Security.RightsManagement.PublishLicense, namespace: System.Security.RightsManagement
  DNSecureEnvironment = interface; // type: System.Security.RightsManagement.SecureEnvironment, namespace: System.Security.RightsManagement
  DNUnsignedPublishLicense = interface; // type: System.Security.RightsManagement.UnsignedPublishLicense, namespace: System.Security.RightsManagement
  DNUseLicense = interface; // type: System.Security.RightsManagement.UseLicense, namespace: System.Security.RightsManagement
  DNDispatcherSynchronizationContext = interface; // type: System.Windows.Threading.DispatcherSynchronizationContext, namespace: System.Windows.Threading
  DNSortDescription = interface; // type: System.ComponentModel.SortDescription, namespace: System.ComponentModel
  DNDependencyPropertyChangedEventArgs = interface; // type: System.Windows.DependencyPropertyChangedEventArgs, namespace: System.Windows
  DNInt32Rect = interface; // type: System.Windows.Int32Rect, namespace: System.Windows
  DNMSG = interface; // type: System.Windows.Interop.MSG, namespace: System.Windows.Interop
  DNLocalValueEntry = interface; // type: System.Windows.LocalValueEntry, namespace: System.Windows
  DNLocalValueEnumerator = interface; // type: System.Windows.LocalValueEnumerator, namespace: System.Windows
  DNMatrix = interface; // type: System.Windows.Media.Matrix, namespace: System.Windows.Media
  DNPoint = interface; // type: System.Windows.Point, namespace: System.Windows
  DNRect = interface; // type: System.Windows.Rect, namespace: System.Windows
  DNSize = interface; // type: System.Windows.Size, namespace: System.Windows
  DNDispatcherPriorityAwaitable = interface; // type: System.Windows.Threading.DispatcherPriorityAwaitable, namespace: System.Windows.Threading
  DNDispatcherPriorityAwaiter = interface; // type: System.Windows.Threading.DispatcherPriorityAwaiter, namespace: System.Windows.Threading
  DNDispatcherProcessingDisabled = interface; // type: System.Windows.Threading.DispatcherProcessingDisabled, namespace: System.Windows.Threading
  DNVector = interface; // type: System.Windows.Vector, namespace: System.Windows
  DNBaseCompatibilityPreferences = interface; // type: System.Windows.BaseCompatibilityPreferences, namespace: System.Windows
  DNDataSourceProvider = interface; // type: System.Windows.Data.DataSourceProvider, namespace: System.Windows.Data
  DNDependencyObjectType = interface; // type: System.Windows.DependencyObjectType, namespace: System.Windows
  DNDependencyProperty = interface; // type: System.Windows.DependencyProperty, namespace: System.Windows
  DNDependencyPropertyKey = interface; // type: System.Windows.DependencyPropertyKey, namespace: System.Windows
  DNKeyInterop = interface; // type: System.Windows.Input.KeyInterop, namespace: System.Windows.Input
  DNTraversalRequest = interface; // type: System.Windows.Input.TraversalRequest, namespace: System.Windows.Input
  DNComponentDispatcher = interface; // type: System.Windows.Interop.ComponentDispatcher, namespace: System.Windows.Interop
  DNIKeyboardInputSink = interface; // type: System.Windows.Interop.IKeyboardInputSink, namespace: System.Windows.Interop
  DNIKeyboardInputSite = interface; // type: System.Windows.Interop.IKeyboardInputSite, namespace: System.Windows.Interop
  DNIWeakEventListener = interface; // type: System.Windows.IWeakEventListener, namespace: System.Windows
  DNInternalTypeHelper = interface; // type: System.Windows.Markup.InternalTypeHelper, namespace: System.Windows.Markup
  DNIReceiveMarkupExtension = interface; // type: System.Windows.Markup.IReceiveMarkupExtension, namespace: System.Windows.Markup
  DNMarkupObject = interface; // type: System.Windows.Markup.Primitives.MarkupObject, namespace: System.Windows.Markup.Primitives
  DNMarkupProperty = interface; // type: System.Windows.Markup.Primitives.MarkupProperty, namespace: System.Windows.Markup.Primitives
  DNServiceProviders = interface; // type: System.Windows.Markup.ServiceProviders, namespace: System.Windows.Markup
  DNInt32RectValueSerializer = interface; // type: System.Windows.Converters.Int32RectValueSerializer, namespace: System.Windows.Converters
  DNPointValueSerializer = interface; // type: System.Windows.Converters.PointValueSerializer, namespace: System.Windows.Converters
  DNRectValueSerializer = interface; // type: System.Windows.Converters.RectValueSerializer, namespace: System.Windows.Converters
  DNSizeValueSerializer = interface; // type: System.Windows.Converters.SizeValueSerializer, namespace: System.Windows.Converters
  DNVectorValueSerializer = interface; // type: System.Windows.Converters.VectorValueSerializer, namespace: System.Windows.Converters
  DNKeyValueSerializer = interface; // type: System.Windows.Input.KeyValueSerializer, namespace: System.Windows.Input
  DNModifierKeysValueSerializer = interface; // type: System.Windows.Input.ModifierKeysValueSerializer, namespace: System.Windows.Input
  DNMatrixValueSerializer = interface; // type: System.Windows.Media.Converters.MatrixValueSerializer, namespace: System.Windows.Media.Converters
  DNNameScope = interface; // type: System.Windows.NameScope, namespace: System.Windows
  DNPropertyMetadata = interface; // type: System.Windows.PropertyMetadata, namespace: System.Windows
  DNSplashScreen = interface; // type: System.Windows.SplashScreen, namespace: System.Windows
  DNDispatcher = interface; // type: System.Windows.Threading.Dispatcher, namespace: System.Windows.Threading
  DNDispatcherHooks = interface; // type: System.Windows.Threading.DispatcherHooks, namespace: System.Windows.Threading
  DNDispatcherObject = interface; // type: System.Windows.Threading.DispatcherObject, namespace: System.Windows.Threading
  DNDependencyObject = interface; // type: System.Windows.DependencyObject, namespace: System.Windows
  DNFreezable = interface; // type: System.Windows.Freezable, namespace: System.Windows
  DNDispatcherFrame = interface; // type: System.Windows.Threading.DispatcherFrame, namespace: System.Windows.Threading
  DNWeakEventManager = interface; // type: System.Windows.WeakEventManager, namespace: System.Windows
  DNCollectionChangedEventManager = interface; // type: System.Collections.Specialized.CollectionChangedEventManager, namespace: System.Collections.Specialized
  DNCurrentChangedEventManager = interface; // type: System.ComponentModel.CurrentChangedEventManager, namespace: System.ComponentModel
  DNCurrentChangingEventManager = interface; // type: System.ComponentModel.CurrentChangingEventManager, namespace: System.ComponentModel
  DNErrorsChangedEventManager = interface; // type: System.ComponentModel.ErrorsChangedEventManager, namespace: System.ComponentModel
  DNPropertyChangedEventManager = interface; // type: System.ComponentModel.PropertyChangedEventManager, namespace: System.ComponentModel
  DNDispatcherOperation = interface; // type: System.Windows.Threading.DispatcherOperation, namespace: System.Windows.Threading
  DNDispatcherTimer = interface; // type: System.Windows.Threading.DispatcherTimer, namespace: System.Windows.Threading

{ delegates }

  [DNTypeName('System.ComponentModel.CurrentChangingEventHandler')]
  DNCurrentChangingEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNCurrentChangingEventArgs) of object;

  [DNTypeName('System.IO.Packaging.InvalidSignatureEventHandler')]
  DNInvalidSignatureEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNSignatureVerificationEventArgs) of object;

  [DNTypeName('System.Windows.CoerceValueCallback')]
  DNCoerceValueCallback = function(d: DNDependencyObject; baseValue: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject of object;

  [DNTypeName('System.Windows.DependencyPropertyChangedEventHandler')]
  DNDependencyPropertyChangedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNDependencyPropertyChangedEventArgs) of object;

  [DNTypeName('System.Windows.Interop.ThreadMessageEventHandler')]
  DNThreadMessageEventHandler = procedure(out msg: DNMSG; out handled: Boolean) of object;

  [DNTypeName('System.Windows.PropertyChangedCallback')]
  DNPropertyChangedCallback = procedure(d: DNDependencyObject; e: DNDependencyPropertyChangedEventArgs) of object;

  [DNTypeName('System.Windows.Threading.DispatcherHookEventHandler')]
  DNDispatcherHookEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNDispatcherHookEventArgs) of object;

  [DNTypeName('System.Windows.Threading.DispatcherOperationCallback')]
  DNDispatcherOperationCallback = function(arg: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject of object;

  [DNTypeName('System.Windows.Threading.DispatcherUnhandledExceptionEventHandler')]
  DNDispatcherUnhandledExceptionEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNDispatcherUnhandledExceptionEventArgs) of object;

  [DNTypeName('System.Windows.Threading.DispatcherUnhandledExceptionFilterEventHandler')]
  DNDispatcherUnhandledExceptionFilterEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNDispatcherUnhandledExceptionFilterEventArgs) of object;

  [DNTypeName('System.Windows.ValidateValueCallback')]
  DNValidateValueCallback = function(value: DDN.mscorlib.DNObject): Boolean of object;




{ objects }

  //-------------namespace: System.ComponentModel----------------
  DNPropertyFilterAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{5C6A6AFF-3F9A-519B-99A5-312074939030}']
  { constructors } 

    {class} function init(filter: DNPropertyFilterOptions): DNPropertyFilterAttribute;

  { static fields getter & setter } 

   function __fakeFieldGet_Default: DNPropertyFilterAttribute;

  { static fields } 

    {class} property &Default: DNPropertyFilterAttribute read __fakeFieldGet_Default;

  end;

  [DNTypeName('System.ComponentModel.PropertyFilterAttribute')]
  DNPropertyFilterAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{89E6532A-978D-3CF3-BAE6-40AC4B9FECE6}']
  { getters & setters } 

    function get_Filter: DNPropertyFilterOptions;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(value: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(value: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Filter: DNPropertyFilterOptions read get_Filter;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNPropertyFilterAttribute = class(TDNGenericImport<DNPropertyFilterAttributeClass, DNPropertyFilterAttribute>) end;

  //-------------namespace: System.Security.Permissions----------------
  DNMediaPermissionAttributeClass = interface(DDN.mscorlib.DNCodeAccessSecurityAttributeClass)
  ['{3E806C3A-A5EB-592A-A223-141B443C9800}']
  { constructors } 

    {class} function init(action: DDN.mscorlib.DNSecurityAction): DNMediaPermissionAttribute;

  end;

  [DNTypeName('System.Security.Permissions.MediaPermissionAttribute')]
  DNMediaPermissionAttribute = interface(DDN.mscorlib.DNCodeAccessSecurityAttribute)
  ['{20716BD3-162B-3692-A528-2763E0E68CA2}']
  { getters & setters } 

    function get_Audio: DNMediaPermissionAudio;
    procedure set_Audio(value: DNMediaPermissionAudio);
    function get_Video: DNMediaPermissionVideo;
    procedure set_Video(value: DNMediaPermissionVideo);
    function get_Image: DNMediaPermissionImage;
    procedure set_Image(value: DNMediaPermissionImage);
    function get_Action: DDN.mscorlib.DNSecurityAction;
    procedure set_Action(value: DDN.mscorlib.DNSecurityAction);
    function get_Unrestricted: Boolean;
    procedure set_Unrestricted(value: Boolean);
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function CreatePermission: DDN.mscorlib.DNIPermission;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Audio: DNMediaPermissionAudio read get_Audio write set_Audio;
    property Video: DNMediaPermissionVideo read get_Video write set_Video;
    property Image: DNMediaPermissionImage read get_Image write set_Image;
    property Action: DDN.mscorlib.DNSecurityAction read get_Action write set_Action;
    property Unrestricted: Boolean read get_Unrestricted write set_Unrestricted;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNMediaPermissionAttribute = class(TDNGenericImport<DNMediaPermissionAttributeClass, DNMediaPermissionAttribute>) end;

  //-------------namespace: System.Security.Permissions----------------
  DNWebBrowserPermissionAttributeClass = interface(DDN.mscorlib.DNCodeAccessSecurityAttributeClass)
  ['{BE1B7E1E-4DC9-51AF-BBD9-3E380EF70299}']
  { constructors } 

    {class} function init(action: DDN.mscorlib.DNSecurityAction): DNWebBrowserPermissionAttribute;

  end;

  [DNTypeName('System.Security.Permissions.WebBrowserPermissionAttribute')]
  DNWebBrowserPermissionAttribute = interface(DDN.mscorlib.DNCodeAccessSecurityAttribute)
  ['{212C7429-8573-3B2C-B712-AF5F64215B4C}']
  { getters & setters } 

    function get_Level: DNWebBrowserPermissionLevel;
    procedure set_Level(value: DNWebBrowserPermissionLevel);
    function get_Action: DDN.mscorlib.DNSecurityAction;
    procedure set_Action(value: DDN.mscorlib.DNSecurityAction);
    function get_Unrestricted: Boolean;
    procedure set_Unrestricted(value: Boolean);
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function CreatePermission: DDN.mscorlib.DNIPermission;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Level: DNWebBrowserPermissionLevel read get_Level write set_Level;
    property Action: DDN.mscorlib.DNSecurityAction read get_Action write set_Action;
    property Unrestricted: Boolean read get_Unrestricted write set_Unrestricted;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNWebBrowserPermissionAttribute = class(TDNGenericImport<DNWebBrowserPermissionAttributeClass, DNWebBrowserPermissionAttribute>) end;

  //-------------namespace: System.Windows----------------
  DNAttachedPropertyBrowsableAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{589E7A88-D6A6-55A2-8BBA-64D68D891597}']
  end;

  [DNTypeName('System.Windows.AttachedPropertyBrowsableAttribute')]
  DNAttachedPropertyBrowsableAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{8B67D7A8-1467-3116-8A9D-6446AA4C2271}']
  { getters & setters } 

    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNAttachedPropertyBrowsableAttribute = class(TDNGenericImport<DNAttachedPropertyBrowsableAttributeClass, DNAttachedPropertyBrowsableAttribute>) end;

  //-------------namespace: System.Windows----------------
  DNAttachedPropertyBrowsableForTypeAttributeClass = interface(DNAttachedPropertyBrowsableAttributeClass)
  ['{966CA66C-7D48-5EF7-BF48-9733D863C3B0}']
  { constructors } 

    {class} function init(targetType: DDN.mscorlib.DNType): DNAttachedPropertyBrowsableForTypeAttribute;

  end;

  [DNTypeName('System.Windows.AttachedPropertyBrowsableForTypeAttribute')]
  DNAttachedPropertyBrowsableForTypeAttribute = interface(DNAttachedPropertyBrowsableAttribute)
  ['{E71003C1-724B-3F32-9CF6-0418B4D65F6B}']
  { getters & setters } 

    function get_TargetType: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TargetType: DDN.mscorlib.DNType read get_TargetType;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNAttachedPropertyBrowsableForTypeAttribute = class(TDNGenericImport<DNAttachedPropertyBrowsableForTypeAttributeClass, DNAttachedPropertyBrowsableForTypeAttribute>) end;

  //-------------namespace: System.Windows----------------
  DNAttachedPropertyBrowsableWhenAttributePresentAttributeClass = interface(DNAttachedPropertyBrowsableAttributeClass)
  ['{5DC529B1-399D-5FEF-8EEE-9F46F6059ECE}']
  { constructors } 

    {class} function init(attributeType: DDN.mscorlib.DNType): DNAttachedPropertyBrowsableWhenAttributePresentAttribute;

  end;

  [DNTypeName('System.Windows.AttachedPropertyBrowsableWhenAttributePresentAttribute')]
  DNAttachedPropertyBrowsableWhenAttributePresentAttribute = interface(DNAttachedPropertyBrowsableAttribute)
  ['{E9A4B603-7C3D-3914-9782-EF145C185806}']
  { getters & setters } 

    function get_AttributeType: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AttributeType: DDN.mscorlib.DNType read get_AttributeType;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNAttachedPropertyBrowsableWhenAttributePresentAttribute = class(TDNGenericImport<DNAttachedPropertyBrowsableWhenAttributePresentAttributeClass, DNAttachedPropertyBrowsableWhenAttributePresentAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNDesignerSerializationOptionsAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{C614AE2D-6B8D-5955-B839-555F3B70FDE9}']
  { constructors } 

    {class} function init(designerSerializationOptions: DNDesignerSerializationOptions): DNDesignerSerializationOptionsAttribute;

  end;

  [DNTypeName('System.Windows.Markup.DesignerSerializationOptionsAttribute')]
  DNDesignerSerializationOptionsAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{6E86F54F-B211-38C9-A5CF-985DE37D20BC}']
  { getters & setters } 

    function get_DesignerSerializationOptions: DNDesignerSerializationOptions;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DesignerSerializationOptions: DNDesignerSerializationOptions read get_DesignerSerializationOptions;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNDesignerSerializationOptionsAttribute = class(TDNGenericImport<DNDesignerSerializationOptionsAttributeClass, DNDesignerSerializationOptionsAttribute>) end;

  //-------------namespace: System.Windows.Media----------------
  DNDisableDpiAwarenessAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{331764CA-3753-540F-9BEA-492C3A6F8E9E}']
  { constructors } 

    {class} function init: DNDisableDpiAwarenessAttribute;

  end;

  [DNTypeName('System.Windows.Media.DisableDpiAwarenessAttribute')]
  DNDisableDpiAwarenessAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{79EE8AC3-DCDB-35A7-9CE9-2A27F838933E}']
  { getters & setters } 

    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNDisableDpiAwarenessAttribute = class(TDNGenericImport<DNDisableDpiAwarenessAttributeClass, DNDisableDpiAwarenessAttribute>) end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.ICollectionView')]
  DNICollectionView = interface(DDN.mscorlib.DNIEnumerable)
  ['{BC1C216E-67A1-3933-9CD6-A13AA4B974A9}']
  { getters & setters } 

    function get_Culture: DDN.mscorlib.DNCultureInfo;
    procedure set_Culture(value: DDN.mscorlib.DNCultureInfo);
    function get_SourceCollection: DDN.mscorlib.DNIEnumerable;
    function get_CanFilter: Boolean;
    function get_SortDescriptions: DNSortDescriptionCollection;
    function get_CanSort: Boolean;
    function get_CanGroup: Boolean;
    function get_IsEmpty: Boolean;
    function get_CurrentItem: DDN.mscorlib.DNObject;
    function get_CurrentPosition: Int32;
    function get_IsCurrentAfterLast: Boolean;
    function get_IsCurrentBeforeFirst: Boolean;

  { events } 

    procedure add_CurrentChanging(value: DNCurrentChangingEventHandler);
    procedure remove_CurrentChanging(value: DNCurrentChangingEventHandler);
    procedure add_CurrentChanged(value: DDN.mscorlib.DNEventHandler);
    procedure remove_CurrentChanged(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    procedure Refresh;
    function &Contains(item: DDN.mscorlib.DNObject): Boolean;
    function DeferRefresh: DDN.mscorlib.DNIDisposable;
    function MoveCurrentToFirst: Boolean;
    function MoveCurrentToLast: Boolean;
    function MoveCurrentToNext: Boolean;
    function MoveCurrentToPrevious: Boolean;
    function MoveCurrentTo(item: DDN.mscorlib.DNObject): Boolean;
    function MoveCurrentToPosition(position: Int32): Boolean;

  { propertys } 

    property Culture: DDN.mscorlib.DNCultureInfo read get_Culture write set_Culture;
    property SourceCollection: DDN.mscorlib.DNIEnumerable read get_SourceCollection;
    property CanFilter: Boolean read get_CanFilter;
    property SortDescriptions: DNSortDescriptionCollection read get_SortDescriptions;
    property CanSort: Boolean read get_CanSort;
    property CanGroup: Boolean read get_CanGroup;
    property IsEmpty: Boolean read get_IsEmpty;
    property CurrentItem: DDN.mscorlib.DNObject read get_CurrentItem;
    property CurrentPosition: Int32 read get_CurrentPosition;
    property IsCurrentAfterLast: Boolean read get_IsCurrentAfterLast;
    property IsCurrentBeforeFirst: Boolean read get_IsCurrentBeforeFirst;
  end;

  //-------------namespace: System.ComponentModel----------------
  DNSortDescriptionCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3F82F2F0-1F83-5D26-902D-64C828F77F00}']
  { constructors } 

    {class} function init: DNSortDescriptionCollection;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNSortDescriptionCollection;

  { static fields } 

    {class} property Empty: DNSortDescriptionCollection read __fakeFieldGet_Empty;

  end;

  [DNTypeName('System.ComponentModel.SortDescriptionCollection')]
  DNSortDescriptionCollection = interface(DDN.mscorlib.DNObject)
  ['{4D31FCBB-7A91-3E0F-9E3A-E30A76D1F74A}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    procedure CopyTo(&array: TArray<DNSortDescription>; index: Int32);
    function &Contains(item: DNSortDescription): Boolean;
    function IndexOf(item: DNSortDescription): Int32;
    procedure Insert(index: Int32; item: DNSortDescription);
    procedure RemoveAt(index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNSortDescriptionCollection = class(TDNGenericImport<DNSortDescriptionCollectionClass, DNSortDescriptionCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNGroupDescriptionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{072B00B2-AA86-5257-A309-232B0CE079AD}']
  end;

  [DNTypeName('System.ComponentModel.GroupDescription')]
  DNGroupDescription = interface(DDN.mscorlib.DNObject)
  ['{B052C46C-1867-3D59-AD83-439B670DCE0F}']
  { getters & setters } 

    function get_SortDescriptions: DNSortDescriptionCollection;
    function get_CustomSort: DDN.mscorlib.DNIComparer;
    procedure set_CustomSort(value: DDN.mscorlib.DNIComparer);

  { methods } 

    function ShouldSerializeGroupNames: Boolean;
    function ShouldSerializeSortDescriptions: Boolean;
    function NamesMatch(groupName: DDN.mscorlib.DNObject; itemName: DDN.mscorlib.DNObject): Boolean;
    function GroupNameFromItem(item: DDN.mscorlib.DNObject; level: Int32; culture: DDN.mscorlib.DNCultureInfo): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SortDescriptions: DNSortDescriptionCollection read get_SortDescriptions;
    property CustomSort: DDN.mscorlib.DNIComparer read get_CustomSort write set_CustomSort;
  end;

  TDNGroupDescription = class(TDNGenericImport<DNGroupDescriptionClass, DNGroupDescription>) end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.ICollectionViewFactory')]
  DNICollectionViewFactory = interface(DDN.mscorlib.DNObject)
  ['{85E748D2-9AAC-3538-990B-FD8BCEC62EAC}']
  { methods } 

    function CreateView: DNICollectionView;

  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.ICollectionViewLiveShaping')]
  DNICollectionViewLiveShaping = interface(DDN.mscorlib.DNObject)
  ['{842756FF-4D11-32C7-B4FF-86265B5B34F6}']
  { getters & setters } 

    function get_CanChangeLiveSorting: Boolean;
    function get_CanChangeLiveFiltering: Boolean;
    function get_CanChangeLiveGrouping: Boolean;

  { propertys } 

    property CanChangeLiveSorting: Boolean read get_CanChangeLiveSorting;
    property CanChangeLiveFiltering: Boolean read get_CanChangeLiveFiltering;
    property CanChangeLiveGrouping: Boolean read get_CanChangeLiveGrouping;
  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IEditableCollectionView')]
  DNIEditableCollectionView = interface(DDN.mscorlib.DNObject)
  ['{BD2E0E08-6611-31CD-A1BC-2737C49744C8}']
  { getters & setters } 

    function get_NewItemPlaceholderPosition: DNNewItemPlaceholderPosition;
    procedure set_NewItemPlaceholderPosition(value: DNNewItemPlaceholderPosition);
    function get_CanAddNew: Boolean;
    function get_IsAddingNew: Boolean;
    function get_CurrentAddItem: DDN.mscorlib.DNObject;
    function get_CanRemove: Boolean;
    function get_CanCancelEdit: Boolean;
    function get_IsEditingItem: Boolean;
    function get_CurrentEditItem: DDN.mscorlib.DNObject;

  { methods } 

    function AddNew: DDN.mscorlib.DNObject;
    procedure CommitNew;
    procedure CancelNew;
    procedure RemoveAt(index: Int32);
    procedure Remove(item: DDN.mscorlib.DNObject);
    procedure EditItem(item: DDN.mscorlib.DNObject);
    procedure CommitEdit;
    procedure CancelEdit;

  { propertys } 

    property NewItemPlaceholderPosition: DNNewItemPlaceholderPosition read get_NewItemPlaceholderPosition write set_NewItemPlaceholderPosition;
    property CanAddNew: Boolean read get_CanAddNew;
    property IsAddingNew: Boolean read get_IsAddingNew;
    property CurrentAddItem: DDN.mscorlib.DNObject read get_CurrentAddItem;
    property CanRemove: Boolean read get_CanRemove;
    property CanCancelEdit: Boolean read get_CanCancelEdit;
    property IsEditingItem: Boolean read get_IsEditingItem;
    property CurrentEditItem: DDN.mscorlib.DNObject read get_CurrentEditItem;
  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IEditableCollectionViewAddNewItem')]
  DNIEditableCollectionViewAddNewItem = interface(DNIEditableCollectionView)
  ['{70E3A90C-E666-3296-93BA-0723DAD78889}']
  { getters & setters } 

    function get_CanAddNewItem: Boolean;

  { methods } 

    function AddNewItem(newItem: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject;

  { propertys } 

    property CanAddNewItem: Boolean read get_CanAddNewItem;
  end;

  //-------------namespace: System.ComponentModel----------------
  [DNTypeName('System.ComponentModel.IItemProperties')]
  DNIItemProperties = interface(DDN.mscorlib.DNObject)
  ['{23541A78-7913-3740-B38A-85551A894944}']
  end;

  //-------------namespace: System.ComponentModel----------------
  DNItemPropertyInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1535B3A4-09B3-50E4-8AA4-CA58A3003A7E}']
  { constructors } 

    {class} function init(name: string; &type: DDN.mscorlib.DNType; descriptor: DDN.mscorlib.DNObject): DNItemPropertyInfo;

  end;

  [DNTypeName('System.ComponentModel.ItemPropertyInfo')]
  DNItemPropertyInfo = interface(DDN.mscorlib.DNObject)
  ['{208737A0-8321-3C1B-8FFC-98636B44AB07}']
  { getters & setters } 

    function get_Name: string;
    function get_PropertyType: DDN.mscorlib.DNType;
    function get_Descriptor: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property PropertyType: DDN.mscorlib.DNType read get_PropertyType;
    property Descriptor: DDN.mscorlib.DNObject read get_Descriptor;
  end;

  TDNItemPropertyInfo = class(TDNGenericImport<DNItemPropertyInfoClass, DNItemPropertyInfo>) end;

  //-------------namespace: System.ComponentModel----------------
  DNDependencyPropertyDescriptorClass = interface(DDN.System.Windows.Common.DNPropertyDescriptorClass)
  ['{D32F3FD0-BCCE-5AEE-9BE7-78A506C8514B}']
  { static methods } 

    {class} function FromProperty(&property: DDN.System.Windows.Common.DNPropertyDescriptor): DNDependencyPropertyDescriptor; overload;
    {class} function FromProperty(dependencyProperty: DNDependencyProperty; targetType: DDN.mscorlib.DNType): DNDependencyPropertyDescriptor; overload;
    {class} function FromName(name: string; ownerType: DDN.mscorlib.DNType; targetType: DDN.mscorlib.DNType): DNDependencyPropertyDescriptor; overload;
    {class} function FromName(name: string; ownerType: DDN.mscorlib.DNType; targetType: DDN.mscorlib.DNType; ignorePropertyType: Boolean): DNDependencyPropertyDescriptor; overload;

  end;

  [DNTypeName('System.ComponentModel.DependencyPropertyDescriptor')]
  DNDependencyPropertyDescriptor = interface(DDN.System.Windows.Common.DNPropertyDescriptor)
  ['{BD362B95-A4D3-3A87-9B76-81675EA7454E}']
  { getters & setters } 

    function get_DependencyProperty: DNDependencyProperty;
    function get_IsAttached: Boolean;
    function get_Metadata: DNPropertyMetadata;
    function get_ComponentType: DDN.mscorlib.DNType;
    function get_IsReadOnly: Boolean;
    function get_PropertyType: DDN.mscorlib.DNType;
    function get_Attributes: DDN.System.Windows.Common.DNAttributeCollection;
    function get_Category: string;
    function get_Description: string;
    function get_DesignTimeOnly: Boolean;
    function get_DisplayName: string;
    function get_Converter: DDN.System.Windows.Common.DNTypeConverter;
    function get_IsBrowsable: Boolean;
    function get_IsLocalizable: Boolean;
    function get_SupportsChangeEvents: Boolean;
    function get_DesignerCoerceValueCallback: DNCoerceValueCallback;
    procedure set_DesignerCoerceValueCallback(value: DNCoerceValueCallback);
    function get_SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility;
    function get_Name: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function CanResetValue(component: DDN.mscorlib.DNObject): Boolean;
    function GetValue(component: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject;
    procedure ResetValue(component: DDN.mscorlib.DNObject);
    procedure SetValue(component: DDN.mscorlib.DNObject; value: DDN.mscorlib.DNObject);
    function ShouldSerializeValue(component: DDN.mscorlib.DNObject): Boolean;
    procedure AddValueChanged(component: DDN.mscorlib.DNObject; handler: DDN.mscorlib.DNEventHandler);
    procedure RemoveValueChanged(component: DDN.mscorlib.DNObject; handler: DDN.mscorlib.DNEventHandler);
    function GetChildProperties(instance: DDN.mscorlib.DNObject; filter: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetEditor(editorBaseType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject;
    function GetChildProperties: DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetChildProperties(filter: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetChildProperties(instance: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property DependencyProperty: DNDependencyProperty read get_DependencyProperty;
    property IsAttached: Boolean read get_IsAttached;
    property Metadata: DNPropertyMetadata read get_Metadata;
    property ComponentType: DDN.mscorlib.DNType read get_ComponentType;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property PropertyType: DDN.mscorlib.DNType read get_PropertyType;
    property Attributes: DDN.System.Windows.Common.DNAttributeCollection read get_Attributes;
    property Category: string read get_Category;
    property Description: string read get_Description;
    property DesignTimeOnly: Boolean read get_DesignTimeOnly;
    property DisplayName: string read get_DisplayName;
    property Converter: DDN.System.Windows.Common.DNTypeConverter read get_Converter;
    property IsBrowsable: Boolean read get_IsBrowsable;
    property IsLocalizable: Boolean read get_IsLocalizable;
    property SupportsChangeEvents: Boolean read get_SupportsChangeEvents;
    property DesignerCoerceValueCallback: DNCoerceValueCallback read get_DesignerCoerceValueCallback write set_DesignerCoerceValueCallback;
    property SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility read get_SerializationVisibility;
    property Name: string read get_Name;
  end;

  TDNDependencyPropertyDescriptor = class(TDNGenericImport<DNDependencyPropertyDescriptorClass, DNDependencyPropertyDescriptor>) end;

  //-------------namespace: System.Windows----------------
  DNExpressionConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{72281B02-4880-5234-A8C6-AAA267714B94}']
  { constructors } 

    {class} function init: DNExpressionConverter;

  end;

  [DNTypeName('System.Windows.ExpressionConverter')]
  DNExpressionConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{5E80B855-1CDF-30F1-A7D9-F660D45E6021}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNExpressionConverter = class(TDNGenericImport<DNExpressionConverterClass, DNExpressionConverter>) end;

  //-------------namespace: System.Windows.Input----------------
  DNKeyConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{41C66CB3-3BAE-5A6A-8DC7-AA608ED42834}']
  { constructors } 

    {class} function init: DNKeyConverter;

  end;

  [DNTypeName('System.Windows.Input.KeyConverter')]
  DNKeyConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{3865113F-3FF6-3475-A398-F3552F183825}']
  { methods } 

    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; source: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNKeyConverter = class(TDNGenericImport<DNKeyConverterClass, DNKeyConverter>) end;

  //-------------namespace: System.Windows.Input----------------
  DNModifierKeysConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{69F2EA22-7E62-5528-B1BF-205360C997E3}']
  { constructors } 

    {class} function init: DNModifierKeysConverter;

  { static methods } 

    {class} function IsDefinedModifierKeys(modifierKeys: DNModifierKeys): Boolean;

  end;

  [DNTypeName('System.Windows.Input.ModifierKeysConverter')]
  DNModifierKeysConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{F6DA1D6C-511E-3DD9-8F7E-32BF2F79895B}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; source: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNModifierKeysConverter = class(TDNGenericImport<DNModifierKeysConverterClass, DNModifierKeysConverter>) end;

  //-------------namespace: System.Windows----------------
  DNInt32RectConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{DED00561-41DC-55B2-A7EA-EF6400B1DF87}']
  { constructors } 

    {class} function init: DNInt32RectConverter;

  end;

  [DNTypeName('System.Windows.Int32RectConverter')]
  DNInt32RectConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{6BB4BA26-6328-3F0C-8FCA-84D6516A32B4}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInt32RectConverter = class(TDNGenericImport<DNInt32RectConverterClass, DNInt32RectConverter>) end;

  //-------------namespace: System.Windows.Media----------------
  DNMatrixConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{D978D67E-906C-5AEC-8846-F074D6A77D3B}']
  { constructors } 

    {class} function init: DNMatrixConverter;

  end;

  [DNTypeName('System.Windows.Media.MatrixConverter')]
  DNMatrixConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{78D85CC9-B579-393D-B89A-6BC95DFF8515}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNMatrixConverter = class(TDNGenericImport<DNMatrixConverterClass, DNMatrixConverter>) end;

  //-------------namespace: System.Windows----------------
  DNPointConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{60846F49-DDF5-5BAB-8376-76038E566B11}']
  { constructors } 

    {class} function init: DNPointConverter;

  end;

  [DNTypeName('System.Windows.PointConverter')]
  DNPointConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{3E199910-B21A-3CD2-8698-4E4D060E1550}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPointConverter = class(TDNGenericImport<DNPointConverterClass, DNPointConverter>) end;

  //-------------namespace: System.Windows----------------
  DNRectConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{114ED835-ED8E-5F46-AA0D-9962ADE0BE87}']
  { constructors } 

    {class} function init: DNRectConverter;

  end;

  [DNTypeName('System.Windows.RectConverter')]
  DNRectConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{72CE60D6-AF4F-3B9A-86C2-F9F635576250}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRectConverter = class(TDNGenericImport<DNRectConverterClass, DNRectConverter>) end;

  //-------------namespace: System.Windows----------------
  DNSizeConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{751F233D-67AF-5A04-AFD7-6994D9AB571D}']
  { constructors } 

    {class} function init: DNSizeConverter;

  end;

  [DNTypeName('System.Windows.SizeConverter')]
  DNSizeConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{B4C3D0D4-E060-3CFF-B4BB-542C5FCB1E36}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSizeConverter = class(TDNGenericImport<DNSizeConverterClass, DNSizeConverter>) end;

  //-------------namespace: System.Windows----------------
  DNVectorConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{531D7ACE-B255-567B-82DF-1B4C47AD3E2F}']
  { constructors } 

    {class} function init: DNVectorConverter;

  end;

  [DNTypeName('System.Windows.VectorConverter')]
  DNVectorConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{A3C06C1A-1D75-38A8-8A12-6DF2838F1BCE}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DDN.System.Windows.Common.DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DDN.System.Windows.Common.DNITypeDescriptorContext): DDN.System.Windows.Common.DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DDN.System.Windows.Common.DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DDN.System.Windows.Common.DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DDN.System.Windows.Common.DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNVectorConverter = class(TDNGenericImport<DNVectorConverterClass, DNVectorConverter>) end;

  //-------------namespace: System.Diagnostics----------------
  DNPresentationTraceSourcesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7ACE599D-CF4E-519C-8938-579D0DE609FB}']
  { static getter & setter } 

    {class} function get_DependencyPropertySource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_FreezableSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_NameScopeSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_RoutedEventSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_AnimationSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_DataBindingSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_DocumentsSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_ResourceDictionarySource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_MarkupSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_HwndHostSource: DDN.System.Windows.Common.DNTraceSource;
    {class} function get_ShellSource: DDN.System.Windows.Common.DNTraceSource;

  { static fields getter & setter } 

   function __fakeFieldGet_TraceLevelProperty: DNDependencyProperty;

  { static fields } 

    {class} property TraceLevelProperty: DNDependencyProperty read __fakeFieldGet_TraceLevelProperty;

  { static methods } 

    {class} function GetTraceLevel(element: DDN.mscorlib.DNObject): DNPresentationTraceLevel;
    {class} procedure SetTraceLevel(element: DDN.mscorlib.DNObject; traceLevel: DNPresentationTraceLevel);
    {class} procedure Refresh;

  { static propertys } 

    {class} property DependencyPropertySource: DDN.System.Windows.Common.DNTraceSource read get_DependencyPropertySource;
    {class} property FreezableSource: DDN.System.Windows.Common.DNTraceSource read get_FreezableSource;
    {class} property NameScopeSource: DDN.System.Windows.Common.DNTraceSource read get_NameScopeSource;
    {class} property RoutedEventSource: DDN.System.Windows.Common.DNTraceSource read get_RoutedEventSource;
    {class} property AnimationSource: DDN.System.Windows.Common.DNTraceSource read get_AnimationSource;
    {class} property DataBindingSource: DDN.System.Windows.Common.DNTraceSource read get_DataBindingSource;
    {class} property DocumentsSource: DDN.System.Windows.Common.DNTraceSource read get_DocumentsSource;
    {class} property ResourceDictionarySource: DDN.System.Windows.Common.DNTraceSource read get_ResourceDictionarySource;
    {class} property MarkupSource: DDN.System.Windows.Common.DNTraceSource read get_MarkupSource;
    {class} property HwndHostSource: DDN.System.Windows.Common.DNTraceSource read get_HwndHostSource;
    {class} property ShellSource: DDN.System.Windows.Common.DNTraceSource read get_ShellSource;
  end;

  [DNTypeName('System.Diagnostics.PresentationTraceSources')]
  DNPresentationTraceSources = interface(DDN.mscorlib.DNObject)
  ['{1FB0A883-23AE-3A94-AD1E-7FD02AE8CF58}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPresentationTraceSources = class(TDNGenericImport<DNPresentationTraceSourcesClass, DNPresentationTraceSources>) end;

  //-------------namespace: System.ComponentModel----------------
  DNCurrentChangingEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{D5249D4F-7113-5338-B171-44CB8AC67A87}']
  { constructors } 

    {class} function init: DNCurrentChangingEventArgs; overload;
    {class} function init(isCancelable: Boolean): DNCurrentChangingEventArgs; overload;

  end;

  [DNTypeName('System.ComponentModel.CurrentChangingEventArgs')]
  DNCurrentChangingEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{BD0DE444-65E7-3DCE-868D-F46694E861F3}']
  { getters & setters } 

    function get_IsCancelable: Boolean;
    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsCancelable: Boolean read get_IsCancelable;
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNCurrentChangingEventArgs = class(TDNGenericImport<DNCurrentChangingEventArgsClass, DNCurrentChangingEventArgs>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNSignatureVerificationEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{C5635637-753B-5307-97C3-F6D52F794203}']
  end;

  [DNTypeName('System.IO.Packaging.SignatureVerificationEventArgs')]
  DNSignatureVerificationEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{1F5ADE43-CE21-3DA2-9F10-6ED4D16BB050}']
  { getters & setters } 

    function get_Signature: DNPackageDigitalSignature;
    function get_VerifyResult: DNVerifyResult;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Signature: DNPackageDigitalSignature read get_Signature;
    property VerifyResult: DNVerifyResult read get_VerifyResult;
  end;

  TDNSignatureVerificationEventArgs = class(TDNGenericImport<DNSignatureVerificationEventArgsClass, DNSignatureVerificationEventArgs>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{4CE50468-3B58-5443-8EE1-D4B277BA19C3}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherEventArgs')]
  DNDispatcherEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{19265382-AC07-3B05-8935-325193B3B40E}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDispatcherEventArgs = class(TDNGenericImport<DNDispatcherEventArgsClass, DNDispatcherEventArgs>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherUnhandledExceptionEventArgsClass = interface(DNDispatcherEventArgsClass)
  ['{F751C5B1-5A3E-5CA9-B1D7-593024F0F674}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherUnhandledExceptionEventArgs')]
  DNDispatcherUnhandledExceptionEventArgs = interface(DNDispatcherEventArgs)
  ['{35CD6937-DB5C-32CB-BBF7-E1F9BC201095}']
  { getters & setters } 

    function get_Exception: DDN.mscorlib.DNException;
    function get_Handled: Boolean;
    procedure set_Handled(value: Boolean);
    function get_Dispatcher: DNDispatcher;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Exception: DDN.mscorlib.DNException read get_Exception;
    property Handled: Boolean read get_Handled write set_Handled;
    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDispatcherUnhandledExceptionEventArgs = class(TDNGenericImport<DNDispatcherUnhandledExceptionEventArgsClass, DNDispatcherUnhandledExceptionEventArgs>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherUnhandledExceptionFilterEventArgsClass = interface(DNDispatcherEventArgsClass)
  ['{E8F12DA3-4148-575A-8DE1-D12088C7DAE7}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherUnhandledExceptionFilterEventArgs')]
  DNDispatcherUnhandledExceptionFilterEventArgs = interface(DNDispatcherEventArgs)
  ['{918BB443-6F39-3EBC-8E57-8FAC3C428B92}']
  { getters & setters } 

    function get_Exception: DDN.mscorlib.DNException;
    function get_RequestCatch: Boolean;
    procedure set_RequestCatch(value: Boolean);
    function get_Dispatcher: DNDispatcher;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Exception: DDN.mscorlib.DNException read get_Exception;
    property RequestCatch: Boolean read get_RequestCatch write set_RequestCatch;
    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDispatcherUnhandledExceptionFilterEventArgs = class(TDNGenericImport<DNDispatcherUnhandledExceptionFilterEventArgsClass, DNDispatcherUnhandledExceptionFilterEventArgs>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherHookEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{8E5B96AD-675A-5D77-A0E4-14B54A5C6A07}']
  { constructors } 

    {class} function init(operation: DNDispatcherOperation): DNDispatcherHookEventArgs;

  end;

  [DNTypeName('System.Windows.Threading.DispatcherHookEventArgs')]
  DNDispatcherHookEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{B48BDDAF-9FC9-3589-8B18-F5CDB772877B}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;
    function get_Operation: DNDispatcherOperation;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
    property Operation: DNDispatcherOperation read get_Operation;
  end;

  TDNDispatcherHookEventArgs = class(TDNGenericImport<DNDispatcherHookEventArgsClass, DNDispatcherHookEventArgs>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNRightsManagementExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{7AA9D20E-AEEB-55E4-83FD-C97C4D085292}']
  { constructors } 

    {class} function init: DNRightsManagementException; overload;
    {class} function init(message: string): DNRightsManagementException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNRightsManagementException; overload;
    {class} function init(failureCode: DNRightsManagementFailureCode): DNRightsManagementException; overload;
    {class} function init(failureCode: DNRightsManagementFailureCode; message: string): DNRightsManagementException; overload;
    {class} function init(failureCode: DNRightsManagementFailureCode; innerException: DDN.mscorlib.DNException): DNRightsManagementException; overload;
    {class} function init(failureCode: DNRightsManagementFailureCode; message: string; innerException: DDN.mscorlib.DNException): DNRightsManagementException; overload;

  end;

  [DNTypeName('System.Security.RightsManagement.RightsManagementException')]
  DNRightsManagementException = interface(DDN.mscorlib.DNException)
  ['{3C3EA39B-22C2-38B9-9DE8-236C4D2F0360}']
  { getters & setters } 

    function get_FailureCode: DNRightsManagementFailureCode;
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

    property FailureCode: DNRightsManagementFailureCode read get_FailureCode;
    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNRightsManagementException = class(TDNGenericImport<DNRightsManagementExceptionClass, DNRightsManagementException>) end;

  //-------------namespace: System.IO----------------
  DNFileFormatExceptionClass = interface(DDN.mscorlib.DNFormatExceptionClass)
  ['{1CE1179D-68EC-5715-9FD6-B18C9BBB7256}']
  { constructors } 

    {class} function init: DNFileFormatException; overload;
    {class} function init(message: string): DNFileFormatException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNFileFormatException; overload;
    {class} function init(sourceUri: DDN.System.Windows.Common.DNUri): DNFileFormatException; overload;
    {class} function init(sourceUri: DDN.System.Windows.Common.DNUri; message: string): DNFileFormatException; overload;
    {class} function init(sourceUri: DDN.System.Windows.Common.DNUri; innerException: DDN.mscorlib.DNException): DNFileFormatException; overload;
    {class} function init(sourceUri: DDN.System.Windows.Common.DNUri; message: string; innerException: DDN.mscorlib.DNException): DNFileFormatException; overload;

  end;

  [DNTypeName('System.IO.FileFormatException')]
  DNFileFormatException = interface(DDN.mscorlib.DNFormatException)
  ['{7A9233CA-6291-3354-8D1B-86B97F572403}']
  { getters & setters } 

    function get_SourceUri: DDN.System.Windows.Common.DNUri;
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

    property SourceUri: DDN.System.Windows.Common.DNUri read get_SourceUri;
    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNFileFormatException = class(TDNGenericImport<DNFileFormatExceptionClass, DNFileFormatException>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNEncryptedPackageEnvelopeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D2D92B94-85F2-5742-9F44-0B94DD3D1572}']
  { static methods } 

    {class} function Create(envelopeFileName: string; publishLicense: DNPublishLicense; cryptoProvider: DNCryptoProvider): DNEncryptedPackageEnvelope; overload;
    {class} function Create(envelopeStream: DDN.mscorlib.DNStream; publishLicense: DNPublishLicense; cryptoProvider: DNCryptoProvider): DNEncryptedPackageEnvelope; overload;
    {class} function CreateFromPackage(envelopeFileName: string; packageStream: DDN.mscorlib.DNStream; publishLicense: DNPublishLicense; cryptoProvider: DNCryptoProvider): DNEncryptedPackageEnvelope; overload;
    {class} function CreateFromPackage(envelopeStream: DDN.mscorlib.DNStream; packageStream: DDN.mscorlib.DNStream; publishLicense: DNPublishLicense; cryptoProvider: DNCryptoProvider): DNEncryptedPackageEnvelope; overload;
    {class} function Open(envelopeFileName: string): DNEncryptedPackageEnvelope; overload;
    {class} function Open(envelopeFileName: string; access: DDN.mscorlib.DNFileAccess): DNEncryptedPackageEnvelope; overload;
    {class} function Open(envelopeFileName: string; access: DDN.mscorlib.DNFileAccess; sharing: DDN.mscorlib.DNFileShare): DNEncryptedPackageEnvelope; overload;
    {class} function Open(envelopeStream: DDN.mscorlib.DNStream): DNEncryptedPackageEnvelope; overload;
    {class} function IsEncryptedPackageEnvelope(fileName: string): Boolean; overload;
    {class} function IsEncryptedPackageEnvelope(stream: DDN.mscorlib.DNStream): Boolean; overload;

  end;

  [DNTypeName('System.IO.Packaging.EncryptedPackageEnvelope')]
  DNEncryptedPackageEnvelope = interface(DDN.mscorlib.DNObject)
  ['{2C887216-0039-30CA-A073-7695662D31FE}']
  { getters & setters } 

    function get_RightsManagementInformation: DNRightsManagementInformation;
    function get_PackageProperties: DNPackageProperties;
    function get_FileOpenAccess: DDN.mscorlib.DNFileAccess;
    function get_StorageInfo: DNStorageInfo;

  { methods } 

    procedure Close;
    procedure Dispose;
    procedure Flush;
    function GetPackage: DNPackage;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property RightsManagementInformation: DNRightsManagementInformation read get_RightsManagementInformation;
    property PackageProperties: DNPackageProperties read get_PackageProperties;
    property FileOpenAccess: DDN.mscorlib.DNFileAccess read get_FileOpenAccess;
    property StorageInfo: DNStorageInfo read get_StorageInfo;
  end;

  TDNEncryptedPackageEnvelope = class(TDNGenericImport<DNEncryptedPackageEnvelopeClass, DNEncryptedPackageEnvelope>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D4A59CAA-C0BD-5A0A-AC6A-F9266ED14B99}']
  { static methods } 

    {class} function Open(path: string): DNPackage; overload;
    {class} function Open(path: string; packageMode: DDN.mscorlib.DNFileMode): DNPackage; overload;
    {class} function Open(path: string; packageMode: DDN.mscorlib.DNFileMode; packageAccess: DDN.mscorlib.DNFileAccess): DNPackage; overload;
    {class} function Open(path: string; packageMode: DDN.mscorlib.DNFileMode; packageAccess: DDN.mscorlib.DNFileAccess; packageShare: DDN.mscorlib.DNFileShare): DNPackage; overload;
    {class} function Open(stream: DDN.mscorlib.DNStream): DNPackage; overload;
    {class} function Open(stream: DDN.mscorlib.DNStream; packageMode: DDN.mscorlib.DNFileMode): DNPackage; overload;
    {class} function Open(stream: DDN.mscorlib.DNStream; packageMode: DDN.mscorlib.DNFileMode; packageAccess: DDN.mscorlib.DNFileAccess): DNPackage; overload;

  end;

  [DNTypeName('System.IO.Packaging.Package')]
  DNPackage = interface(DDN.mscorlib.DNObject)
  ['{E64FFA71-5302-3787-84BC-17A0A7697095}']
  { getters & setters } 

    function get_FileOpenAccess: DDN.mscorlib.DNFileAccess;
    function get_PackageProperties: DNPackageProperties;

  { methods } 

    function CreatePart(partUri: DDN.System.Windows.Common.DNUri; contentType: string): DNPackagePart; overload;
    function CreatePart(partUri: DDN.System.Windows.Common.DNUri; contentType: string; compressionOption: DNCompressionOption): DNPackagePart; overload;
    function GetPart(partUri: DDN.System.Windows.Common.DNUri): DNPackagePart;
    function PartExists(partUri: DDN.System.Windows.Common.DNUri): Boolean;
    procedure Close;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string): DNPackageRelationship; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string; id: string): DNPackageRelationship; overload;
    function GetRelationships: DNPackageRelationshipCollection;
    function GetRelationshipsByType(relationshipType: string): DNPackageRelationshipCollection;
    function GetRelationship(id: string): DNPackageRelationship;
    function RelationshipExists(id: string): Boolean;
    procedure Flush;
    procedure DeleteRelationship(id: string);
    procedure DeletePart(partUri: DDN.System.Windows.Common.DNUri);
    function GetParts: DNPackagePartCollection;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileOpenAccess: DDN.mscorlib.DNFileAccess read get_FileOpenAccess;
    property PackageProperties: DNPackageProperties read get_PackageProperties;
  end;

  TDNPackage = class(TDNGenericImport<DNPackageClass, DNPackage>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNZipPackageClass = interface(DNPackageClass)
  ['{BC67A887-FACD-52CC-9AD6-42C07D81C783}']
  end;

  [DNTypeName('System.IO.Packaging.ZipPackage')]
  DNZipPackage = interface(DNPackage)
  ['{5C761E0C-7A71-3A67-8B00-F2E55832900E}']
  { getters & setters } 

    function get_FileOpenAccess: DDN.mscorlib.DNFileAccess;
    function get_PackageProperties: DNPackageProperties;

  { methods } 

    function CreatePart(partUri: DDN.System.Windows.Common.DNUri; contentType: string): DNPackagePart; overload;
    function CreatePart(partUri: DDN.System.Windows.Common.DNUri; contentType: string; compressionOption: DNCompressionOption): DNPackagePart; overload;
    function GetPart(partUri: DDN.System.Windows.Common.DNUri): DNPackagePart;
    function PartExists(partUri: DDN.System.Windows.Common.DNUri): Boolean;
    procedure Close;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string): DNPackageRelationship; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string; id: string): DNPackageRelationship; overload;
    function GetRelationships: DNPackageRelationshipCollection;
    function GetRelationshipsByType(relationshipType: string): DNPackageRelationshipCollection;
    function GetRelationship(id: string): DNPackageRelationship;
    function RelationshipExists(id: string): Boolean;
    procedure Flush;
    procedure DeleteRelationship(id: string);
    procedure DeletePart(partUri: DDN.System.Windows.Common.DNUri);
    function GetParts: DNPackagePartCollection;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileOpenAccess: DDN.mscorlib.DNFileAccess read get_FileOpenAccess;
    property PackageProperties: DNPackageProperties read get_PackageProperties;
  end;

  TDNZipPackage = class(TDNGenericImport<DNZipPackageClass, DNZipPackage>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageDigitalSignatureClass = interface(DDN.mscorlib.DNObjectClass)
  ['{A29D9758-1FD7-5DCF-9CAC-419F7617D4E4}']
  end;

  [DNTypeName('System.IO.Packaging.PackageDigitalSignature')]
  DNPackageDigitalSignature = interface(DDN.mscorlib.DNObject)
  ['{94E97C04-1E6C-380C-AD59-EDC878F387CB}']
  { getters & setters } 

    function get_SignaturePart: DNPackagePart;
    function get_Signer: DDN.mscorlib.DNX509Certificate;
    function get_SigningTime: DDN.mscorlib.DNDateTime;
    function get_TimeFormat: string;
    function get_SignatureValue: TArray<Byte>;
    function get_SignatureType: string;
    function get_Signature: DDN.System.Windows.Common.DNSignature;
    procedure set_Signature(value: DDN.System.Windows.Common.DNSignature);
    function get_CertificateEmbeddingOption: DNCertificateEmbeddingOption;

  { methods } 

    function Verify: DNVerifyResult; overload;
    function Verify(signingCertificate: DDN.mscorlib.DNX509Certificate): DNVerifyResult; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SignaturePart: DNPackagePart read get_SignaturePart;
    property Signer: DDN.mscorlib.DNX509Certificate read get_Signer;
    property SigningTime: DDN.mscorlib.DNDateTime read get_SigningTime;
    property TimeFormat: string read get_TimeFormat;
    property SignatureValue: TArray<Byte> read get_SignatureValue;
    property SignatureType: string read get_SignatureType;
    property Signature: DDN.System.Windows.Common.DNSignature read get_Signature write set_Signature;
    property CertificateEmbeddingOption: DNCertificateEmbeddingOption read get_CertificateEmbeddingOption;
  end;

  TDNPackageDigitalSignature = class(TDNGenericImport<DNPackageDigitalSignatureClass, DNPackageDigitalSignature>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageDigitalSignatureManagerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F3A95624-0B0B-5662-AAA4-8B5EB6838E3E}']
  { static getter & setter } 

    {class} function get_SignatureOriginRelationshipType: string;
    {class} function get_DefaultHashAlgorithm: string;

  { constructors } 

    {class} function init(&package: DNPackage): DNPackageDigitalSignatureManager;

  { static methods } 

    {class} function VerifyCertificate(certificate: DDN.mscorlib.DNX509Certificate): DDN.System.Windows.Common.DNX509ChainStatusFlags;

  { static propertys } 

    {class} property SignatureOriginRelationshipType: string read get_SignatureOriginRelationshipType;
    {class} property DefaultHashAlgorithm: string read get_DefaultHashAlgorithm;
  end;

  [DNTypeName('System.IO.Packaging.PackageDigitalSignatureManager')]
  DNPackageDigitalSignatureManager = interface(DDN.mscorlib.DNObject)
  ['{E0499EAA-EAD8-33C1-889B-3DA058ADD975}']
  { getters & setters } 

    function get_IsSigned: Boolean;
    function get_ParentWindow: IntPtr;
    procedure set_ParentWindow(value: IntPtr);
    function get_HashAlgorithm: string;
    procedure set_HashAlgorithm(value: string);
    function get_CertificateOption: DNCertificateEmbeddingOption;
    procedure set_CertificateOption(value: DNCertificateEmbeddingOption);
    function get_TimeFormat: string;
    procedure set_TimeFormat(value: string);
    function get_SignatureOrigin: DDN.System.Windows.Common.DNUri;

  { events } 

    procedure add_InvalidSignatureEvent(value: DNInvalidSignatureEventHandler);
    procedure remove_InvalidSignatureEvent(value: DNInvalidSignatureEventHandler);

  { methods } 

    function Sign(parts: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>): DNPackageDigitalSignature; overload;
    function Sign(parts: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>; certificate: DDN.mscorlib.DNX509Certificate): DNPackageDigitalSignature; overload;
    function Sign(parts: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>; certificate: DDN.mscorlib.DNX509Certificate; relationshipSelectors: DDN.mscorlib.DNIEnumerable<DNPackageRelationshipSelector>): DNPackageDigitalSignature; overload;
    function Sign(parts: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>; certificate: DDN.mscorlib.DNX509Certificate; relationshipSelectors: DDN.mscorlib.DNIEnumerable<DNPackageRelationshipSelector>; signatureId: string): DNPackageDigitalSignature; overload;
    function Countersign: DNPackageDigitalSignature; overload;
    function VerifySignatures(exitOnFailure: Boolean): DNVerifyResult;
    procedure RemoveSignature(signatureUri: DDN.System.Windows.Common.DNUri);
    procedure RemoveAllSignatures;
    function GetSignature(signatureUri: DDN.System.Windows.Common.DNUri): DNPackageDigitalSignature;
    function Sign(parts: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>; certificate: DDN.mscorlib.DNX509Certificate; relationshipSelectors: DDN.mscorlib.DNIEnumerable<DNPackageRelationshipSelector>; signatureId: string; signatureObjects: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNDataObject>; objectReferences: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNReference>): DNPackageDigitalSignature; overload;
    function Countersign(certificate: DDN.mscorlib.DNX509Certificate): DNPackageDigitalSignature; overload;
    function Countersign(certificate: DDN.mscorlib.DNX509Certificate; signatures: DDN.mscorlib.DNIEnumerable<DDN.System.Windows.Common.DNUri>): DNPackageDigitalSignature; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsSigned: Boolean read get_IsSigned;
    property ParentWindow: IntPtr read get_ParentWindow write set_ParentWindow;
    property HashAlgorithm: string read get_HashAlgorithm write set_HashAlgorithm;
    property CertificateOption: DNCertificateEmbeddingOption read get_CertificateOption write set_CertificateOption;
    property TimeFormat: string read get_TimeFormat write set_TimeFormat;
    property SignatureOrigin: DDN.System.Windows.Common.DNUri read get_SignatureOrigin;
  end;

  TDNPackageDigitalSignatureManager = class(TDNGenericImport<DNPackageDigitalSignatureManagerClass, DNPackageDigitalSignatureManager>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackagePartClass = interface(DDN.mscorlib.DNObjectClass)
  ['{75F366D9-0429-5B89-8D90-F5202A3C7A4D}']
  end;

  [DNTypeName('System.IO.Packaging.PackagePart')]
  DNPackagePart = interface(DDN.mscorlib.DNObject)
  ['{857D257F-E47D-3A3E-AD50-E039B205F092}']
  { getters & setters } 

    function get_Uri: DDN.System.Windows.Common.DNUri;
    function get_ContentType: string;
    function get_Package: DNPackage;
    function get_CompressionOption: DNCompressionOption;

  { methods } 

    function GetStream: DDN.mscorlib.DNStream; overload;
    function GetStream(mode: DDN.mscorlib.DNFileMode): DDN.mscorlib.DNStream; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string): DNPackageRelationship; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string; id: string): DNPackageRelationship; overload;
    function GetRelationships: DNPackageRelationshipCollection;
    function GetRelationshipsByType(relationshipType: string): DNPackageRelationshipCollection;
    function GetRelationship(id: string): DNPackageRelationship;
    function RelationshipExists(id: string): Boolean;
    procedure DeleteRelationship(id: string);
    function GetStream(mode: DDN.mscorlib.DNFileMode; access: DDN.mscorlib.DNFileAccess): DDN.mscorlib.DNStream; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.Windows.Common.DNUri read get_Uri;
    property ContentType: string read get_ContentType;
    property &Package: DNPackage read get_Package;
    property CompressionOption: DNCompressionOption read get_CompressionOption;
  end;

  TDNPackagePart = class(TDNGenericImport<DNPackagePartClass, DNPackagePart>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNZipPackagePartClass = interface(DNPackagePartClass)
  ['{067FCD09-E20B-5F21-9D97-F53AA46C3E08}']
  end;

  [DNTypeName('System.IO.Packaging.ZipPackagePart')]
  DNZipPackagePart = interface(DNPackagePart)
  ['{60E07AD0-380B-3B17-85E1-9D6344E02756}']
  { getters & setters } 

    function get_Uri: DDN.System.Windows.Common.DNUri;
    function get_ContentType: string;
    function get_Package: DNPackage;
    function get_CompressionOption: DNCompressionOption;

  { methods } 

    function GetStream: DDN.mscorlib.DNStream; overload;
    function GetStream(mode: DDN.mscorlib.DNFileMode): DDN.mscorlib.DNStream; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string): DNPackageRelationship; overload;
    function CreateRelationship(targetUri: DDN.System.Windows.Common.DNUri; targetMode: DNTargetMode; relationshipType: string; id: string): DNPackageRelationship; overload;
    function GetRelationships: DNPackageRelationshipCollection;
    function GetRelationshipsByType(relationshipType: string): DNPackageRelationshipCollection;
    function GetRelationship(id: string): DNPackageRelationship;
    function RelationshipExists(id: string): Boolean;
    procedure DeleteRelationship(id: string);
    function GetStream(mode: DDN.mscorlib.DNFileMode; access: DDN.mscorlib.DNFileAccess): DDN.mscorlib.DNStream; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.Windows.Common.DNUri read get_Uri;
    property ContentType: string read get_ContentType;
    property &Package: DNPackage read get_Package;
    property CompressionOption: DNCompressionOption read get_CompressionOption;
  end;

  TDNZipPackagePart = class(TDNGenericImport<DNZipPackagePartClass, DNZipPackagePart>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackagePartCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F42B37AB-59AF-50F6-A915-7222FE7B06C8}']
  end;

  [DNTypeName('System.IO.Packaging.PackagePartCollection')]
  DNPackagePartCollection = interface(DDN.mscorlib.DNObject)
  ['{080F5D9A-0A28-3CA9-8D5A-B0F287CDC5BC}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPackagePartCollection = class(TDNGenericImport<DNPackagePartCollectionClass, DNPackagePartCollection>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackagePropertiesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{47C0AEB2-E581-5E0A-BA27-562FF14A8597}']
  end;

  [DNTypeName('System.IO.Packaging.PackageProperties')]
  DNPackageProperties = interface(DDN.mscorlib.DNObject)
  ['{8E0D9515-9AB1-3222-861F-1055272E7959}']
  { getters & setters } 

    function get_Title: string;
    procedure set_Title(value: string);
    function get_Subject: string;
    procedure set_Subject(value: string);
    function get_Creator: string;
    procedure set_Creator(value: string);
    function get_Keywords: string;
    procedure set_Keywords(value: string);
    function get_Description: string;
    procedure set_Description(value: string);
    function get_LastModifiedBy: string;
    procedure set_LastModifiedBy(value: string);
    function get_Revision: string;
    procedure set_Revision(value: string);
    function get_Category: string;
    procedure set_Category(value: string);
    function get_Identifier: string;
    procedure set_Identifier(value: string);
    function get_ContentType: string;
    procedure set_ContentType(value: string);
    function get_Language: string;
    procedure set_Language(value: string);
    function get_Version: string;
    procedure set_Version(value: string);
    function get_ContentStatus: string;
    procedure set_ContentStatus(value: string);

  { methods } 

    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Title: string read get_Title write set_Title;
    property Subject: string read get_Subject write set_Subject;
    property Creator: string read get_Creator write set_Creator;
    property Keywords: string read get_Keywords write set_Keywords;
    property Description: string read get_Description write set_Description;
    property LastModifiedBy: string read get_LastModifiedBy write set_LastModifiedBy;
    property Revision: string read get_Revision write set_Revision;
    property Category: string read get_Category write set_Category;
    property Identifier: string read get_Identifier write set_Identifier;
    property ContentType: string read get_ContentType write set_ContentType;
    property Language: string read get_Language write set_Language;
    property Version: string read get_Version write set_Version;
    property ContentStatus: string read get_ContentStatus write set_ContentStatus;
  end;

  TDNPackageProperties = class(TDNGenericImport<DNPackagePropertiesClass, DNPackageProperties>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageRelationshipClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D111D645-490B-50ED-A0E7-A5380832660B}']
  end;

  [DNTypeName('System.IO.Packaging.PackageRelationship')]
  DNPackageRelationship = interface(DDN.mscorlib.DNObject)
  ['{9DFA56CE-0D16-3E13-84AF-4EA76757236E}']
  { getters & setters } 

    function get_SourceUri: DDN.System.Windows.Common.DNUri;
    function get_TargetUri: DDN.System.Windows.Common.DNUri;
    function get_RelationshipType: string;
    function get_TargetMode: DNTargetMode;
    function get_Id: string;
    function get_Package: DNPackage;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SourceUri: DDN.System.Windows.Common.DNUri read get_SourceUri;
    property TargetUri: DDN.System.Windows.Common.DNUri read get_TargetUri;
    property RelationshipType: string read get_RelationshipType;
    property TargetMode: DNTargetMode read get_TargetMode;
    property Id: string read get_Id;
    property &Package: DNPackage read get_Package;
  end;

  TDNPackageRelationship = class(TDNGenericImport<DNPackageRelationshipClass, DNPackageRelationship>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageRelationshipCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DECF96DA-060B-58A5-8674-7A758AF68FA3}']
  end;

  [DNTypeName('System.IO.Packaging.PackageRelationshipCollection')]
  DNPackageRelationshipCollection = interface(DDN.mscorlib.DNObject)
  ['{0B9D239A-1FB1-35CA-8665-0C637E28CABA}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPackageRelationshipCollection = class(TDNGenericImport<DNPackageRelationshipCollectionClass, DNPackageRelationshipCollection>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackageRelationshipSelectorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{75D14400-2752-5E47-9C6C-3EF9E38AF585}']
  { constructors } 

    {class} function init(sourceUri: DDN.System.Windows.Common.DNUri; selectorType: DNPackageRelationshipSelectorType; selectionCriteria: string): DNPackageRelationshipSelector;

  end;

  [DNTypeName('System.IO.Packaging.PackageRelationshipSelector')]
  DNPackageRelationshipSelector = interface(DDN.mscorlib.DNObject)
  ['{29E40F0A-D9D4-3B54-9D9B-8B00DE2FC181}']
  { getters & setters } 

    function get_SourceUri: DDN.System.Windows.Common.DNUri;
    function get_SelectorType: DNPackageRelationshipSelectorType;
    function get_SelectionCriteria: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SourceUri: DDN.System.Windows.Common.DNUri read get_SourceUri;
    property SelectorType: DNPackageRelationshipSelectorType read get_SelectorType;
    property SelectionCriteria: string read get_SelectionCriteria;
  end;

  TDNPackageRelationshipSelector = class(TDNGenericImport<DNPackageRelationshipSelectorClass, DNPackageRelationshipSelector>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNPackUriHelperClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E4E54953-0E17-59D2-84AA-A7578B973722}']
  { static fields getter & setter } 

   function __fakeFieldGet_UriSchemePack: string;

  { static fields } 

    {class} property UriSchemePack: string read __fakeFieldGet_UriSchemePack;

  { static methods } 

    {class} function Create(packageUri: DDN.System.Windows.Common.DNUri; partUri: DDN.System.Windows.Common.DNUri; fragment: string): DDN.System.Windows.Common.DNUri; overload;
    {class} function Create(packageUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri; overload;
    {class} function Create(packageUri: DDN.System.Windows.Common.DNUri; partUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri; overload;
    {class} function GetPackageUri(packUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function GetPartUri(packUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function CreatePartUri(partUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function ResolvePartUri(sourcePartUri: DDN.System.Windows.Common.DNUri; targetUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function GetRelativeUri(sourcePartUri: DDN.System.Windows.Common.DNUri; targetPartUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function GetNormalizedPartUri(partUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function ComparePackUri(firstPackUri: DDN.System.Windows.Common.DNUri; secondPackUri: DDN.System.Windows.Common.DNUri): Int32;
    {class} function ComparePartUri(firstPartUri: DDN.System.Windows.Common.DNUri; secondPartUri: DDN.System.Windows.Common.DNUri): Int32;
    {class} function IsRelationshipPartUri(partUri: DDN.System.Windows.Common.DNUri): Boolean;
    {class} function GetRelationshipPartUri(partUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;
    {class} function GetSourcePartUriFromRelationshipPartUri(relationshipPartUri: DDN.System.Windows.Common.DNUri): DDN.System.Windows.Common.DNUri;

  end;

  [DNTypeName('System.IO.Packaging.PackUriHelper')]
  DNPackUriHelper = interface(DDN.mscorlib.DNObject)
  ['{8186724F-86EF-305F-999A-905EBB4E9BB8}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPackUriHelper = class(TDNGenericImport<DNPackUriHelperClass, DNPackUriHelper>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNRightsManagementInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{79B2FC96-3D01-5351-B4E4-4FD90317D246}']
  end;

  [DNTypeName('System.IO.Packaging.RightsManagementInformation')]
  DNRightsManagementInformation = interface(DDN.mscorlib.DNObject)
  ['{63F0104C-046C-313E-8824-32B114EB8582}']
  { getters & setters } 

    function get_CryptoProvider: DNCryptoProvider;
    procedure set_CryptoProvider(value: DNCryptoProvider);

  { methods } 

    function LoadPublishLicense: DNPublishLicense;
    procedure SavePublishLicense(publishLicense: DNPublishLicense);
    function LoadUseLicense(userKey: DNContentUser): DNUseLicense;
    procedure SaveUseLicense(userKey: DNContentUser; useLicense: DNUseLicense);
    procedure DeleteUseLicense(userKey: DNContentUser);
    function GetEmbeddedUseLicenses: DDN.mscorlib.DNIDictionary<DNContentUser, DNUseLicense>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property CryptoProvider: DNCryptoProvider read get_CryptoProvider write set_CryptoProvider;
  end;

  TDNRightsManagementInformation = class(TDNGenericImport<DNRightsManagementInformationClass, DNRightsManagementInformation>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNStorageInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{08D58140-3E93-5327-95F4-5BFBB8C4E6C3}']
  end;

  [DNTypeName('System.IO.Packaging.StorageInfo')]
  DNStorageInfo = interface(DDN.mscorlib.DNObject)
  ['{D838A82C-3F5E-3B6B-BB29-8A4F306F93C2}']
  { getters & setters } 

    function get_Name: string;

  { methods } 

    function CreateStream(name: string): DNStreamInfo; overload;
    function GetStreamInfo(name: string): DNStreamInfo;
    function StreamExists(name: string): Boolean;
    procedure DeleteStream(name: string);
    function CreateSubStorage(name: string): DNStorageInfo;
    function GetSubStorageInfo(name: string): DNStorageInfo;
    function SubStorageExists(name: string): Boolean;
    procedure DeleteSubStorage(name: string);
    function GetStreams: TArray<DNStreamInfo>;
    function GetSubStorages: TArray<DNStorageInfo>;
    function CreateStream(name: string; compressionOption: DNCompressionOption; encryptionOption: DNEncryptionOption): DNStreamInfo; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
  end;

  TDNStorageInfo = class(TDNGenericImport<DNStorageInfoClass, DNStorageInfo>) end;

  //-------------namespace: System.IO.Packaging----------------
  DNStreamInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{B1E8A613-6F89-5E29-909B-2483843F033D}']
  end;

  [DNTypeName('System.IO.Packaging.StreamInfo')]
  DNStreamInfo = interface(DDN.mscorlib.DNObject)
  ['{AD86EFB5-F2C5-3235-8D98-02C3A16B9EE4}']
  { getters & setters } 

    function get_CompressionOption: DNCompressionOption;
    function get_EncryptionOption: DNEncryptionOption;
    function get_Name: string;

  { methods } 

    function GetStream: DDN.mscorlib.DNStream; overload;
    function GetStream(mode: DDN.mscorlib.DNFileMode): DDN.mscorlib.DNStream; overload;
    function GetStream(mode: DDN.mscorlib.DNFileMode; access: DDN.mscorlib.DNFileAccess): DDN.mscorlib.DNStream; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property CompressionOption: DNCompressionOption read get_CompressionOption;
    property EncryptionOption: DNEncryptionOption read get_EncryptionOption;
    property Name: string read get_Name;
  end;

  TDNStreamInfo = class(TDNGenericImport<DNStreamInfoClass, DNStreamInfo>) end;

  //-------------namespace: System.Security.Permissions----------------
  DNMediaPermissionClass = interface(DDN.mscorlib.DNCodeAccessPermissionClass)
  ['{514A6564-4F97-54A9-B4A3-1C05472003A4}']
  { constructors } 

    {class} function init: DNMediaPermission; overload;
    {class} function init(state: DDN.mscorlib.DNPermissionState): DNMediaPermission; overload;
    {class} function init(permissionAudio: DNMediaPermissionAudio): DNMediaPermission; overload;
    {class} function init(permissionVideo: DNMediaPermissionVideo): DNMediaPermission; overload;
    {class} function init(permissionImage: DNMediaPermissionImage): DNMediaPermission; overload;
    {class} function init(permissionAudio: DNMediaPermissionAudio; permissionVideo: DNMediaPermissionVideo; permissionImage: DNMediaPermissionImage): DNMediaPermission; overload;

  end;

  [DNTypeName('System.Security.Permissions.MediaPermission')]
  DNMediaPermission = interface(DDN.mscorlib.DNCodeAccessPermission)
  ['{BF64F395-CD9B-345B-B4AB-7806E4CE2477}']
  { getters & setters } 

    function get_Audio: DNMediaPermissionAudio;
    function get_Video: DNMediaPermissionVideo;
    function get_Image: DNMediaPermissionImage;

  { methods } 

    function IsUnrestricted: Boolean;
    function IsSubsetOf(target: DDN.mscorlib.DNIPermission): Boolean;
    function Intersect(target: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    function Union(target: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    function Copy: DDN.mscorlib.DNIPermission;
    function ToXml: DDN.mscorlib.DNSecurityElement;
    procedure FromXml(securityElement: DDN.mscorlib.DNSecurityElement);
    procedure Demand;
    procedure Assert;
    procedure Deny;
    procedure PermitOnly;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Audio: DNMediaPermissionAudio read get_Audio;
    property Video: DNMediaPermissionVideo read get_Video;
    property Image: DNMediaPermissionImage read get_Image;
  end;

  TDNMediaPermission = class(TDNGenericImport<DNMediaPermissionClass, DNMediaPermission>) end;

  //-------------namespace: System.Security.Permissions----------------
  DNWebBrowserPermissionClass = interface(DDN.mscorlib.DNCodeAccessPermissionClass)
  ['{D1E17305-0969-5562-906E-2C30A1CDEF19}']
  { constructors } 

    {class} function init: DNWebBrowserPermission; overload;
    {class} function init(state: DDN.mscorlib.DNPermissionState): DNWebBrowserPermission; overload;
    {class} function init(webBrowserPermissionLevel: DNWebBrowserPermissionLevel): DNWebBrowserPermission; overload;

  end;

  [DNTypeName('System.Security.Permissions.WebBrowserPermission')]
  DNWebBrowserPermission = interface(DDN.mscorlib.DNCodeAccessPermission)
  ['{12E97C8A-2A31-3E3E-8197-C897148A0560}']
  { getters & setters } 

    function get_Level: DNWebBrowserPermissionLevel;
    procedure set_Level(value: DNWebBrowserPermissionLevel);

  { methods } 

    function IsUnrestricted: Boolean;
    function IsSubsetOf(target: DDN.mscorlib.DNIPermission): Boolean;
    function Intersect(target: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    function Union(target: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    function Copy: DDN.mscorlib.DNIPermission;
    function ToXml: DDN.mscorlib.DNSecurityElement;
    procedure FromXml(securityElement: DDN.mscorlib.DNSecurityElement);
    procedure Demand;
    procedure Assert;
    procedure Deny;
    procedure PermitOnly;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Level: DNWebBrowserPermissionLevel read get_Level write set_Level;
  end;

  TDNWebBrowserPermission = class(TDNGenericImport<DNWebBrowserPermissionClass, DNWebBrowserPermission>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNContentGrantClass = interface(DDN.mscorlib.DNObjectClass)
  ['{CA5FA5CC-06C8-52C1-9146-0DC013C1B899}']
  { constructors } 

    {class} function init(user: DNContentUser; right: DNContentRight): DNContentGrant; overload;
    {class} function init(user: DNContentUser; right: DNContentRight; validFrom: DDN.mscorlib.DNDateTime; validUntil: DDN.mscorlib.DNDateTime): DNContentGrant; overload;

  end;

  [DNTypeName('System.Security.RightsManagement.ContentGrant')]
  DNContentGrant = interface(DDN.mscorlib.DNObject)
  ['{FEC5B4F1-77B9-3A77-82B0-53C420B26E5D}']
  { getters & setters } 

    function get_User: DNContentUser;
    function get_Right: DNContentRight;
    function get_ValidFrom: DDN.mscorlib.DNDateTime;
    function get_ValidUntil: DDN.mscorlib.DNDateTime;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property User: DNContentUser read get_User;
    property Right: DNContentRight read get_Right;
    property ValidFrom: DDN.mscorlib.DNDateTime read get_ValidFrom;
    property ValidUntil: DDN.mscorlib.DNDateTime read get_ValidUntil;
  end;

  TDNContentGrant = class(TDNGenericImport<DNContentGrantClass, DNContentGrant>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNContentUserClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FC885AF0-5B9D-5256-BA83-D8C96EEEB5FA}']
  { static getter & setter } 

    {class} function get_AnyoneUser: DNContentUser;
    {class} function get_OwnerUser: DNContentUser;

  { constructors } 

    {class} function init(name: string; authenticationType: DNAuthenticationType): DNContentUser;

  { static propertys } 

    {class} property AnyoneUser: DNContentUser read get_AnyoneUser;
    {class} property OwnerUser: DNContentUser read get_OwnerUser;
  end;

  [DNTypeName('System.Security.RightsManagement.ContentUser')]
  DNContentUser = interface(DDN.mscorlib.DNObject)
  ['{EC2247A2-538F-3A09-9E3C-C00F06F62B4F}']
  { getters & setters } 

    function get_AuthenticationType: DNAuthenticationType;
    function get_Name: string;

  { methods } 

    function IsAuthenticated: Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AuthenticationType: DNAuthenticationType read get_AuthenticationType;
    property Name: string read get_Name;
  end;

  TDNContentUser = class(TDNGenericImport<DNContentUserClass, DNContentUser>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNCryptoProviderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1F644620-16FD-5451-B6FA-13B8BF0F0AAB}']
  end;

  [DNTypeName('System.Security.RightsManagement.CryptoProvider')]
  DNCryptoProvider = interface(DDN.mscorlib.DNObject)
  ['{4C06B4D4-30CE-3C8F-8769-965C283CDD79}']
  { getters & setters } 

    function get_BlockSize: Int32;
    function get_CanMergeBlocks: Boolean;
    function get_CanEncrypt: Boolean;
    function get_CanDecrypt: Boolean;

  { methods } 

    procedure Dispose;
    function Encrypt(clearText: TArray<Byte>): TArray<Byte>;
    function Decrypt(cryptoText: TArray<Byte>): TArray<Byte>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property BlockSize: Int32 read get_BlockSize;
    property CanMergeBlocks: Boolean read get_CanMergeBlocks;
    property CanEncrypt: Boolean read get_CanEncrypt;
    property CanDecrypt: Boolean read get_CanDecrypt;
  end;

  TDNCryptoProvider = class(TDNGenericImport<DNCryptoProviderClass, DNCryptoProvider>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNLocalizedNameDescriptionPairClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8C7A365B-7FC1-5A72-B910-FA94FE618B53}']
  { constructors } 

    {class} function init(name: string; description: string): DNLocalizedNameDescriptionPair;

  end;

  [DNTypeName('System.Security.RightsManagement.LocalizedNameDescriptionPair')]
  DNLocalizedNameDescriptionPair = interface(DDN.mscorlib.DNObject)
  ['{56509365-E88F-3269-A37B-6B3FAD16BD20}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property Description: string read get_Description;
  end;

  TDNLocalizedNameDescriptionPair = class(TDNGenericImport<DNLocalizedNameDescriptionPairClass, DNLocalizedNameDescriptionPair>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNPublishLicenseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6572480A-1B8D-518C-AEEE-F29C62E90E96}']
  { constructors } 

    {class} function init(signedPublishLicense: string): DNPublishLicense;

  end;

  [DNTypeName('System.Security.RightsManagement.PublishLicense')]
  DNPublishLicense = interface(DDN.mscorlib.DNObject)
  ['{78DD373F-97ED-390C-A6F4-4E46E480B1C2}']
  { getters & setters } 

    function get_ReferralInfoName: string;
    function get_ReferralInfoUri: DDN.System.Windows.Common.DNUri;
    function get_ContentId: DDN.mscorlib.DNGuid;
    function get_UseLicenseAcquisitionUrl: DDN.System.Windows.Common.DNUri;

  { methods } 

    function DecryptUnsignedPublishLicense(cryptoProvider: DNCryptoProvider): DNUnsignedPublishLicense;
    function ToString: string;
    function AcquireUseLicense(secureEnvironment: DNSecureEnvironment): DNUseLicense;
    function AcquireUseLicenseNoUI(secureEnvironment: DNSecureEnvironment): DNUseLicense;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property ReferralInfoName: string read get_ReferralInfoName;
    property ReferralInfoUri: DDN.System.Windows.Common.DNUri read get_ReferralInfoUri;
    property ContentId: DDN.mscorlib.DNGuid read get_ContentId;
    property UseLicenseAcquisitionUrl: DDN.System.Windows.Common.DNUri read get_UseLicenseAcquisitionUrl;
  end;

  TDNPublishLicense = class(TDNGenericImport<DNPublishLicenseClass, DNPublishLicense>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNSecureEnvironmentClass = interface(DDN.mscorlib.DNObjectClass)
  ['{66C51EAD-42D0-5942-8FAB-764F2657FCC6}']
  { static methods } 

    {class} function Create(applicationManifest: string; user: DNContentUser): DNSecureEnvironment; overload;
    {class} function Create(applicationManifest: string; authentication: DNAuthenticationType; userActivationMode: DNUserActivationMode): DNSecureEnvironment; overload;
    {class} function IsUserActivated(user: DNContentUser): Boolean;
    {class} procedure RemoveActivatedUser(user: DNContentUser);

  end;

  [DNTypeName('System.Security.RightsManagement.SecureEnvironment')]
  DNSecureEnvironment = interface(DDN.mscorlib.DNObject)
  ['{204B8E3F-555B-3A76-83DA-6BD9DCFE4BA2}']
  { getters & setters } 

    function get_User: DNContentUser;
    function get_ApplicationManifest: string;

  { methods } 

    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property User: DNContentUser read get_User;
    property ApplicationManifest: string read get_ApplicationManifest;
  end;

  TDNSecureEnvironment = class(TDNGenericImport<DNSecureEnvironmentClass, DNSecureEnvironment>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNUnsignedPublishLicenseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{5031376F-85CC-58EE-90BD-46D73C41947A}']
  { constructors } 

    {class} function init: DNUnsignedPublishLicense; overload;
    {class} function init(publishLicenseTemplate: string): DNUnsignedPublishLicense; overload;

  end;

  [DNTypeName('System.Security.RightsManagement.UnsignedPublishLicense')]
  DNUnsignedPublishLicense = interface(DDN.mscorlib.DNObject)
  ['{4C44A1DC-0B6F-3833-AFE8-2F9081410FA3}']
  { getters & setters } 

    function get_Owner: DNContentUser;
    procedure set_Owner(value: DNContentUser);
    function get_ReferralInfoName: string;
    procedure set_ReferralInfoName(value: string);
    function get_ReferralInfoUri: DDN.System.Windows.Common.DNUri;
    procedure set_ReferralInfoUri(value: DDN.System.Windows.Common.DNUri);
    function get_ContentId: DDN.mscorlib.DNGuid;
    procedure set_ContentId(value: DDN.mscorlib.DNGuid);
    function get_Grants: DDN.mscorlib.DNICollection<DNContentGrant>;
    function get_LocalizedNameDescriptionDictionary: DDN.mscorlib.DNIDictionary<Int32, DNLocalizedNameDescriptionPair>;

  { methods } 

    function Sign(secureEnvironment: DNSecureEnvironment; out authorUseLicense: DNUseLicense): DNPublishLicense;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Owner: DNContentUser read get_Owner write set_Owner;
    property ReferralInfoName: string read get_ReferralInfoName write set_ReferralInfoName;
    property ReferralInfoUri: DDN.System.Windows.Common.DNUri read get_ReferralInfoUri write set_ReferralInfoUri;
    property ContentId: DDN.mscorlib.DNGuid read get_ContentId write set_ContentId;
    property Grants: DDN.mscorlib.DNICollection<DNContentGrant> read get_Grants;
    property LocalizedNameDescriptionDictionary: DDN.mscorlib.DNIDictionary<Int32, DNLocalizedNameDescriptionPair> read get_LocalizedNameDescriptionDictionary;
  end;

  TDNUnsignedPublishLicense = class(TDNGenericImport<DNUnsignedPublishLicenseClass, DNUnsignedPublishLicense>) end;

  //-------------namespace: System.Security.RightsManagement----------------
  DNUseLicenseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{61ADF14F-C95D-5C6C-873B-FBBCE8CAD442}']
  { constructors } 

    {class} function init(useLicense: string): DNUseLicense;

  end;

  [DNTypeName('System.Security.RightsManagement.UseLicense')]
  DNUseLicense = interface(DDN.mscorlib.DNObject)
  ['{BD61521E-E105-389D-8243-125E17BFD22D}']
  { getters & setters } 

    function get_Owner: DNContentUser;
    function get_ContentId: DDN.mscorlib.DNGuid;
    function get_ApplicationData: DDN.mscorlib.DNIDictionary<string, string>;

  { methods } 

    function ToString: string;
    function Bind(secureEnvironment: DNSecureEnvironment): DNCryptoProvider;
    function Equals(x: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Owner: DNContentUser read get_Owner;
    property ContentId: DDN.mscorlib.DNGuid read get_ContentId;
    property ApplicationData: DDN.mscorlib.DNIDictionary<string, string> read get_ApplicationData;
  end;

  TDNUseLicense = class(TDNGenericImport<DNUseLicenseClass, DNUseLicense>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherSynchronizationContextClass = interface(DDN.mscorlib.DNSynchronizationContextClass)
  ['{980381EE-E16A-551F-BFFB-154E725EF013}']
  { constructors } 

    {class} function init: DNDispatcherSynchronizationContext; overload;
    {class} function init(dispatcher: DNDispatcher): DNDispatcherSynchronizationContext; overload;
    {class} function init(dispatcher: DNDispatcher; priority: DNDispatcherPriority): DNDispatcherSynchronizationContext; overload;

  end;

  [DNTypeName('System.Windows.Threading.DispatcherSynchronizationContext')]
  DNDispatcherSynchronizationContext = interface(DDN.mscorlib.DNSynchronizationContext)
  ['{73D885A0-7A9E-36EC-94DE-3A777E4E3E2E}']
  { methods } 

    procedure Send(d: DDN.mscorlib.DNSendOrPostCallback; state: DDN.mscorlib.DNObject);
    procedure Post(d: DDN.mscorlib.DNSendOrPostCallback; state: DDN.mscorlib.DNObject);
    function Wait(waitHandles: TArray<IntPtr>; waitAll: Boolean; millisecondsTimeout: Int32): Int32;
    function CreateCopy: DDN.mscorlib.DNSynchronizationContext;
    function IsWaitNotificationRequired: Boolean;
    procedure OperationStarted;
    procedure OperationCompleted;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDispatcherSynchronizationContext = class(TDNGenericImport<DNDispatcherSynchronizationContextClass, DNDispatcherSynchronizationContext>) end;

  //-------------namespace: System.ComponentModel----------------
  DNSortDescriptionClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{594F45B1-D8C6-599A-87F8-A03191CA8E9B}']
  { constructors } 

    {class} function init(propertyName: string; direction: DDN.System.Windows.Common.DNListSortDirection): DNSortDescription;

  end;

  [DNTypeName('System.ComponentModel.SortDescription')]
  DNSortDescription = interface(DDN.mscorlib.DNValueType)
  ['{B071A4ED-78A6-3FDB-8F78-3330B96E0BB4}']
  { getters & setters } 

    function get_PropertyName: string;
    procedure set_PropertyName(value: string);
    function get_Direction: DDN.System.Windows.Common.DNListSortDirection;
    procedure set_Direction(value: DDN.System.Windows.Common.DNListSortDirection);
    function get_IsSealed: Boolean;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property PropertyName: string read get_PropertyName write set_PropertyName;
    property Direction: DDN.System.Windows.Common.DNListSortDirection read get_Direction write set_Direction;
    property IsSealed: Boolean read get_IsSealed;
  end;

  TDNSortDescription = class(TDNGenericImport<DNSortDescriptionClass, DNSortDescription>) end;

  //-------------namespace: System.Windows----------------
  DNDependencyPropertyChangedEventArgsClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{1043A968-EBF2-5A0E-A233-C255118AFC7F}']
  { constructors } 

    {class} function init(&property: DNDependencyProperty; oldValue: DDN.mscorlib.DNObject; newValue: DDN.mscorlib.DNObject): DNDependencyPropertyChangedEventArgs;

  end;

  [DNTypeName('System.Windows.DependencyPropertyChangedEventArgs')]
  DNDependencyPropertyChangedEventArgs = interface(DDN.mscorlib.DNValueType)
  ['{7D6F0EB5-506E-35BF-BFFA-CA81D64EABEC}']
  { getters & setters } 

    function get_Property: DNDependencyProperty;
    function get_OldValue: DDN.mscorlib.DNObject;
    function get_NewValue: DDN.mscorlib.DNObject;

  { methods } 

    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(args: DNDependencyPropertyChangedEventArgs): Boolean; overload;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property &Property: DNDependencyProperty read get_Property;
    property OldValue: DDN.mscorlib.DNObject read get_OldValue;
    property NewValue: DDN.mscorlib.DNObject read get_NewValue;
  end;

  TDNDependencyPropertyChangedEventArgs = class(TDNGenericImport<DNDependencyPropertyChangedEventArgsClass, DNDependencyPropertyChangedEventArgs>) end;

  //-------------namespace: System.Windows----------------
  DNInt32RectClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{97F71006-A87B-54D0-8BCA-CCC7D9E17DF6}']
  { static getter & setter } 

    {class} function get_Empty: DNInt32Rect;

  { constructors } 

    {class} function init(x: Int32; y: Int32; width: Int32; height: Int32): DNInt32Rect;

  { static methods } 

    {class} function Equals(int32Rect1: DNInt32Rect; int32Rect2: DNInt32Rect): Boolean; overload;
    {class} function Parse(source: string): DNInt32Rect;

  { static propertys } 

    {class} property Empty: DNInt32Rect read get_Empty;
  end;

  [DNTypeName('System.Windows.Int32Rect')]
  DNInt32Rect = interface(DDN.mscorlib.DNValueType)
  ['{5F943127-FAB2-3DCD-BB34-D6430F6957D0}']
  { getters & setters } 

    function get_X: Int32;
    procedure set_X(value: Int32);
    function get_Y: Int32;
    procedure set_Y(value: Int32);
    function get_Width: Int32;
    procedure set_Width(value: Int32);
    function get_Height: Int32;
    procedure set_Height(value: Int32);
    function get_IsEmpty: Boolean;
    function get_HasArea: Boolean;

  { methods } 

    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNInt32Rect): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property X: Int32 read get_X write set_X;
    property Y: Int32 read get_Y write set_Y;
    property Width: Int32 read get_Width write set_Width;
    property Height: Int32 read get_Height write set_Height;
    property IsEmpty: Boolean read get_IsEmpty;
    property HasArea: Boolean read get_HasArea;
  end;

  TDNInt32Rect = class(TDNGenericImport<DNInt32RectClass, DNInt32Rect>) end;

  //-------------namespace: System.Windows.Interop----------------
  DNMSGClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{A00FC6CD-E54F-5687-9335-8EBE16D118B0}']
  end;

  [DNTypeName('System.Windows.Interop.MSG')]
  DNMSG = interface(DDN.mscorlib.DNValueType)
  ['{B908E879-0C00-3800-9E17-8F5C3D0CF736}']
  { getters & setters } 

    function get_hwnd: IntPtr;
    procedure set_hwnd(value: IntPtr);
    function get_message: Int32;
    procedure set_message(value: Int32);
    function get_wParam: IntPtr;
    procedure set_wParam(value: IntPtr);
    function get_lParam: IntPtr;
    procedure set_lParam(value: IntPtr);
    function get_time: Int32;
    procedure set_time(value: Int32);
    function get_pt_x: Int32;
    procedure set_pt_x(value: Int32);
    function get_pt_y: Int32;
    procedure set_pt_y(value: Int32);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function ToString: string;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property hwnd: IntPtr read get_hwnd write set_hwnd;
    property message: Int32 read get_message write set_message;
    property wParam: IntPtr read get_wParam write set_wParam;
    property lParam: IntPtr read get_lParam write set_lParam;
    property time: Int32 read get_time write set_time;
    property pt_x: Int32 read get_pt_x write set_pt_x;
    property pt_y: Int32 read get_pt_y write set_pt_y;
  end;

  TDNMSG = class(TDNGenericImport<DNMSGClass, DNMSG>) end;

  //-------------namespace: System.Windows----------------
  DNLocalValueEntryClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{6D491468-4A5A-5D8C-926F-E98B006DF08C}']
  end;

  [DNTypeName('System.Windows.LocalValueEntry')]
  DNLocalValueEntry = interface(DDN.mscorlib.DNValueType)
  ['{637EC814-5100-3B56-80D0-05B3BEA16AD5}']
  { getters & setters } 

    function get_Property: DNDependencyProperty;
    function get_Value: DDN.mscorlib.DNObject;

  { methods } 

    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property &Property: DNDependencyProperty read get_Property;
    property Value: DDN.mscorlib.DNObject read get_Value;
  end;

  TDNLocalValueEntry = class(TDNGenericImport<DNLocalValueEntryClass, DNLocalValueEntry>) end;

  //-------------namespace: System.Windows----------------
  DNLocalValueEnumeratorClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{81080CE4-3DA2-543C-9F1A-20A61867A608}']
  end;

  [DNTypeName('System.Windows.LocalValueEnumerator')]
  DNLocalValueEnumerator = interface(DDN.mscorlib.DNValueType)
  ['{7560CD58-6EA4-3167-99C6-1DA6D308772A}']
  { getters & setters } 

    function get_Current: DNLocalValueEntry;
    function get_Count: Int32;

  { methods } 

    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function MoveNext: Boolean;
    procedure Reset;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Current: DNLocalValueEntry read get_Current;
    property Count: Int32 read get_Count;
  end;

  TDNLocalValueEnumerator = class(TDNGenericImport<DNLocalValueEnumeratorClass, DNLocalValueEnumerator>) end;

  //-------------namespace: System.Windows.Media----------------
  DNMatrixClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{C2D284FD-CEC8-58EB-99B6-46402D8B8C84}']
  { static getter & setter } 

    {class} function get_Identity: DNMatrix;

  { constructors } 

    {class} function init(m11: Double; m12: Double; m21: Double; m22: Double; offsetX: Double; offsetY: Double): DNMatrix;

  { static methods } 

    {class} function Multiply(trans1: DNMatrix; trans2: DNMatrix): DNMatrix;
    {class} function Equals(matrix1: DNMatrix; matrix2: DNMatrix): Boolean; overload;
    {class} function Parse(source: string): DNMatrix;

  { static propertys } 

    {class} property Identity: DNMatrix read get_Identity;
  end;

  [DNTypeName('System.Windows.Media.Matrix')]
  DNMatrix = interface(DDN.mscorlib.DNValueType)
  ['{F2A79FC1-F4B4-30C3-AEBE-CC6B1DF2B467}']
  { getters & setters } 

    function get_IsIdentity: Boolean;
    function get_Determinant: Double;
    function get_HasInverse: Boolean;
    function get_M11: Double;
    procedure set_M11(value: Double);
    function get_M12: Double;
    procedure set_M12(value: Double);
    function get_M21: Double;
    procedure set_M21(value: Double);
    function get_M22: Double;
    procedure set_M22(value: Double);
    function get_OffsetX: Double;
    procedure set_OffsetX(value: Double);
    function get_OffsetY: Double;
    procedure set_OffsetY(value: Double);

  { methods } 

    procedure SetIdentity;
    procedure Append(matrix: DNMatrix);
    procedure Prepend(matrix: DNMatrix);
    procedure Rotate(angle: Double);
    procedure RotatePrepend(angle: Double);
    procedure RotateAt(angle: Double; centerX: Double; centerY: Double);
    procedure RotateAtPrepend(angle: Double; centerX: Double; centerY: Double);
    procedure Scale(scaleX: Double; scaleY: Double);
    procedure ScalePrepend(scaleX: Double; scaleY: Double);
    procedure ScaleAt(scaleX: Double; scaleY: Double; centerX: Double; centerY: Double);
    procedure ScaleAtPrepend(scaleX: Double; scaleY: Double; centerX: Double; centerY: Double);
    procedure Skew(skewX: Double; skewY: Double);
    procedure SkewPrepend(skewX: Double; skewY: Double);
    procedure Translate(offsetX: Double; offsetY: Double);
    procedure TranslatePrepend(offsetX: Double; offsetY: Double);
    function Transform(point: DNPoint): DNPoint; overload;
    procedure Transform(points: TArray<DNPoint>); overload;
    function Transform(vector: DNVector): DNVector; overload;
    procedure Transform(vectors: TArray<DNVector>); overload;
    procedure Invert;
    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNMatrix): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property IsIdentity: Boolean read get_IsIdentity;
    property Determinant: Double read get_Determinant;
    property HasInverse: Boolean read get_HasInverse;
    property M11: Double read get_M11 write set_M11;
    property M12: Double read get_M12 write set_M12;
    property M21: Double read get_M21 write set_M21;
    property M22: Double read get_M22 write set_M22;
    property OffsetX: Double read get_OffsetX write set_OffsetX;
    property OffsetY: Double read get_OffsetY write set_OffsetY;
  end;

  TDNMatrix = class(TDNGenericImport<DNMatrixClass, DNMatrix>) end;

  //-------------namespace: System.Windows----------------
  DNPointClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{BF3D9A6A-3303-5D36-9170-E071F4B612E7}']
  { constructors } 

    {class} function init(x: Double; y: Double): DNPoint;

  { static methods } 

    {class} function Equals(point1: DNPoint; point2: DNPoint): Boolean; overload;
    {class} function Parse(source: string): DNPoint;
    {class} function Add(point: DNPoint; vector: DNVector): DNPoint;
    {class} function Subtract(point: DNPoint; vector: DNVector): DNPoint; overload;
    {class} function Subtract(point1: DNPoint; point2: DNPoint): DNVector; overload;
    {class} function Multiply(point: DNPoint; matrix: DNMatrix): DNPoint;

  end;

  [DNTypeName('System.Windows.Point')]
  DNPoint = interface(DDN.mscorlib.DNValueType)
  ['{8C9042D3-3635-3580-934F-8A49A1CD8E97}']
  { getters & setters } 

    function get_X: Double;
    procedure set_X(value: Double);
    function get_Y: Double;
    procedure set_Y(value: Double);

  { methods } 

    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNPoint): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    procedure Offset(offsetX: Double; offsetY: Double);
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property X: Double read get_X write set_X;
    property Y: Double read get_Y write set_Y;
  end;

  TDNPoint = class(TDNGenericImport<DNPointClass, DNPoint>) end;

  //-------------namespace: System.Windows----------------
  DNRectClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{419A9400-87EB-53CC-B620-A2368A596521}']
  { static getter & setter } 

    {class} function get_Empty: DNRect;

  { constructors } 

    {class} function init(location: DNPoint; size: DNSize): DNRect; overload;
    {class} function init(x: Double; y: Double; width: Double; height: Double): DNRect; overload;
    {class} function init(point1: DNPoint; point2: DNPoint): DNRect; overload;
    {class} function init(point: DNPoint; vector: DNVector): DNRect; overload;
    {class} function init(size: DNSize): DNRect; overload;

  { static methods } 

    {class} function Equals(rect1: DNRect; rect2: DNRect): Boolean; overload;
    {class} function Intersect(rect1: DNRect; rect2: DNRect): DNRect; overload;
    {class} function Union(rect1: DNRect; rect2: DNRect): DNRect; overload;
    {class} function Union(rect: DNRect; point: DNPoint): DNRect; overload;
    {class} function Offset(rect: DNRect; offsetVector: DNVector): DNRect; overload;
    {class} function Offset(rect: DNRect; offsetX: Double; offsetY: Double): DNRect; overload;
    {class} function Inflate(rect: DNRect; size: DNSize): DNRect; overload;
    {class} function Inflate(rect: DNRect; width: Double; height: Double): DNRect; overload;
    {class} function Transform(rect: DNRect; matrix: DNMatrix): DNRect; overload;
    {class} function Parse(source: string): DNRect;

  { static propertys } 

    {class} property Empty: DNRect read get_Empty;
  end;

  [DNTypeName('System.Windows.Rect')]
  DNRect = interface(DDN.mscorlib.DNValueType)
  ['{8BD3E975-4EAE-354C-B79B-8F2BA096461F}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Location: DNPoint;
    procedure set_Location(value: DNPoint);
    function get_Size: DNSize;
    procedure set_Size(value: DNSize);
    function get_X: Double;
    procedure set_X(value: Double);
    function get_Y: Double;
    procedure set_Y(value: Double);
    function get_Width: Double;
    procedure set_Width(value: Double);
    function get_Height: Double;
    procedure set_Height(value: Double);
    function get_Left: Double;
    function get_Top: Double;
    function get_Right: Double;
    function get_Bottom: Double;
    function get_TopLeft: DNPoint;
    function get_TopRight: DNPoint;
    function get_BottomLeft: DNPoint;
    function get_BottomRight: DNPoint;

  { methods } 

    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNRect): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    function &Contains(point: DNPoint): Boolean; overload;
    function &Contains(x: Double; y: Double): Boolean; overload;
    function &Contains(rect: DNRect): Boolean; overload;
    function IntersectsWith(rect: DNRect): Boolean;
    procedure Intersect(rect: DNRect); overload;
    procedure Union(rect: DNRect); overload;
    procedure Union(point: DNPoint); overload;
    procedure Offset(offsetVector: DNVector); overload;
    procedure Offset(offsetX: Double; offsetY: Double); overload;
    procedure Inflate(size: DNSize); overload;
    procedure Inflate(width: Double; height: Double); overload;
    procedure Transform(matrix: DNMatrix); overload;
    procedure Scale(scaleX: Double; scaleY: Double);
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property IsEmpty: Boolean read get_IsEmpty;
    property Location: DNPoint read get_Location write set_Location;
    property Size: DNSize read get_Size write set_Size;
    property X: Double read get_X write set_X;
    property Y: Double read get_Y write set_Y;
    property Width: Double read get_Width write set_Width;
    property Height: Double read get_Height write set_Height;
    property Left: Double read get_Left;
    property Top: Double read get_Top;
    property Right: Double read get_Right;
    property Bottom: Double read get_Bottom;
    property TopLeft: DNPoint read get_TopLeft;
    property TopRight: DNPoint read get_TopRight;
    property BottomLeft: DNPoint read get_BottomLeft;
    property BottomRight: DNPoint read get_BottomRight;
  end;

  TDNRect = class(TDNGenericImport<DNRectClass, DNRect>) end;

  //-------------namespace: System.Windows----------------
  DNSizeClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{8F140A85-9E83-524D-938A-26F90880709C}']
  { static getter & setter } 

    {class} function get_Empty: DNSize;

  { constructors } 

    {class} function init(width: Double; height: Double): DNSize;

  { static methods } 

    {class} function Equals(size1: DNSize; size2: DNSize): Boolean; overload;
    {class} function Parse(source: string): DNSize;

  { static propertys } 

    {class} property Empty: DNSize read get_Empty;
  end;

  [DNTypeName('System.Windows.Size')]
  DNSize = interface(DDN.mscorlib.DNValueType)
  ['{B9173617-7205-33E7-9783-1FDE49D29AE4}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Width: Double;
    procedure set_Width(value: Double);
    function get_Height: Double;
    procedure set_Height(value: Double);

  { methods } 

    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNSize): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property IsEmpty: Boolean read get_IsEmpty;
    property Width: Double read get_Width write set_Width;
    property Height: Double read get_Height write set_Height;
  end;

  TDNSize = class(TDNGenericImport<DNSizeClass, DNSize>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherPriorityAwaitableClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{68932EF2-4918-5B84-A847-E51EFDA132A4}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherPriorityAwaitable')]
  DNDispatcherPriorityAwaitable = interface(DDN.mscorlib.DNValueType)
  ['{5ADAA5A0-A182-3F7F-AC73-0D120170F338}']
  { methods } 

    function GetAwaiter: DNDispatcherPriorityAwaiter;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function ToString: string;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  end;

  TDNDispatcherPriorityAwaitable = class(TDNGenericImport<DNDispatcherPriorityAwaitableClass, DNDispatcherPriorityAwaitable>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherPriorityAwaiterClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{46C5A669-629F-55FD-8BE5-14F424826A40}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherPriorityAwaiter')]
  DNDispatcherPriorityAwaiter = interface(DDN.mscorlib.DNValueType)
  ['{BCA34C06-4AF6-3CF5-8D85-F30652B81880}']
  { getters & setters } 

    function get_IsCompleted: Boolean;

  { methods } 

    procedure GetResult;
    procedure OnCompleted(continuation: DDN.mscorlib.DNAction);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function ToString: string;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property IsCompleted: Boolean read get_IsCompleted;
  end;

  TDNDispatcherPriorityAwaiter = class(TDNGenericImport<DNDispatcherPriorityAwaiterClass, DNDispatcherPriorityAwaiter>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherProcessingDisabledClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{BE141EE5-CD7F-525F-BED6-F45D886F0D5B}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherProcessingDisabled')]
  DNDispatcherProcessingDisabled = interface(DDN.mscorlib.DNValueType)
  ['{86728AEF-3F4A-3D48-BAA3-42814888B8B1}']
  { methods } 

    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  end;

  TDNDispatcherProcessingDisabled = class(TDNGenericImport<DNDispatcherProcessingDisabledClass, DNDispatcherProcessingDisabled>) end;

  //-------------namespace: System.Windows----------------
  DNVectorClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{84691167-212B-5C2D-8FDA-6D8FEE090D75}']
  { constructors } 

    {class} function init(x: Double; y: Double): DNVector;

  { static methods } 

    {class} function Equals(vector1: DNVector; vector2: DNVector): Boolean; overload;
    {class} function Parse(source: string): DNVector;
    {class} function CrossProduct(vector1: DNVector; vector2: DNVector): Double;
    {class} function AngleBetween(vector1: DNVector; vector2: DNVector): Double;
    {class} function Add(vector1: DNVector; vector2: DNVector): DNVector; overload;
    {class} function Subtract(vector1: DNVector; vector2: DNVector): DNVector;
    {class} function Add(vector: DNVector; point: DNPoint): DNPoint; overload;
    {class} function Multiply(vector: DNVector; scalar: Double): DNVector; overload;
    {class} function Multiply(scalar: Double; vector: DNVector): DNVector; overload;
    {class} function Divide(vector: DNVector; scalar: Double): DNVector;
    {class} function Multiply(vector: DNVector; matrix: DNMatrix): DNVector; overload;
    {class} function Multiply(vector1: DNVector; vector2: DNVector): Double; overload;
    {class} function Determinant(vector1: DNVector; vector2: DNVector): Double;

  end;

  [DNTypeName('System.Windows.Vector')]
  DNVector = interface(DDN.mscorlib.DNValueType)
  ['{F17EA9EC-1E4B-3A7F-A2D7-DA5E4DAD6AFA}']
  { getters & setters } 

    function get_X: Double;
    procedure set_X(value: Double);
    function get_Y: Double;
    procedure set_Y(value: Double);
    function get_Length: Double;
    function get_LengthSquared: Double;

  { methods } 

    function Equals(o: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(value: DNVector): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(provider: DDN.mscorlib.DNIFormatProvider): string; overload;
    procedure Normalize;
    procedure Negate;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property X: Double read get_X write set_X;
    property Y: Double read get_Y write set_Y;
    property Length: Double read get_Length;
    property LengthSquared: Double read get_LengthSquared;
  end;

  TDNVector = class(TDNGenericImport<DNVectorClass, DNVector>) end;

  //-------------namespace: System.Windows----------------
  DNBaseCompatibilityPreferencesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{426E44C3-1313-5A76-894E-2C70D14AAD2E}']
  { static getter & setter } 

    {class} function get_ReuseDispatcherSynchronizationContextInstance: Boolean;
    {class} procedure set_ReuseDispatcherSynchronizationContextInstance(value: Boolean);
    {class} function get_FlowDispatcherSynchronizationContextPriority: Boolean;
    {class} procedure set_FlowDispatcherSynchronizationContextPriority(value: Boolean);
    {class} function get_InlineDispatcherSynchronizationContextSend: Boolean;
    {class} procedure set_InlineDispatcherSynchronizationContextSend(value: Boolean);
    {class} function get_HandleDispatcherRequestProcessingFailure: DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptions;
    {class} procedure set_HandleDispatcherRequestProcessingFailure(value: DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptions);

  { static propertys } 

    {class} property ReuseDispatcherSynchronizationContextInstance: Boolean read get_ReuseDispatcherSynchronizationContextInstance write set_ReuseDispatcherSynchronizationContextInstance;
    {class} property FlowDispatcherSynchronizationContextPriority: Boolean read get_FlowDispatcherSynchronizationContextPriority write set_FlowDispatcherSynchronizationContextPriority;
    {class} property InlineDispatcherSynchronizationContextSend: Boolean read get_InlineDispatcherSynchronizationContextSend write set_InlineDispatcherSynchronizationContextSend;
    {class} property HandleDispatcherRequestProcessingFailure: DNBaseCompatibilityPreferences_HandleDispatcherRequestProcessingFailureOptions read get_HandleDispatcherRequestProcessingFailure write set_HandleDispatcherRequestProcessingFailure;
  end;

  [DNTypeName('System.Windows.BaseCompatibilityPreferences')]
  DNBaseCompatibilityPreferences = interface(DDN.mscorlib.DNObject)
  ['{47D6DB4C-75ED-34E8-9C13-E3ECD48C47C1}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNBaseCompatibilityPreferences = class(TDNGenericImport<DNBaseCompatibilityPreferencesClass, DNBaseCompatibilityPreferences>) end;

  //-------------namespace: System.Windows.Data----------------
  DNDataSourceProviderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6497BCAF-A290-5E8C-B139-70BA436C0A7E}']
  end;

  [DNTypeName('System.Windows.Data.DataSourceProvider')]
  DNDataSourceProvider = interface(DDN.mscorlib.DNObject)
  ['{08AA1407-3558-3E56-9BF4-BE3B13545776}']
  { getters & setters } 

    function get_IsInitialLoadEnabled: Boolean;
    procedure set_IsInitialLoadEnabled(value: Boolean);
    function get_Data: DDN.mscorlib.DNObject;
    function get_Error: DDN.mscorlib.DNException;

  { events } 

    procedure add_DataChanged(value: DDN.mscorlib.DNEventHandler);
    procedure remove_DataChanged(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    procedure InitialLoad;
    procedure Refresh;
    function DeferRefresh: DDN.mscorlib.DNIDisposable;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsInitialLoadEnabled: Boolean read get_IsInitialLoadEnabled write set_IsInitialLoadEnabled;
    property Data: DDN.mscorlib.DNObject read get_Data;
    property Error: DDN.mscorlib.DNException read get_Error;
  end;

  TDNDataSourceProvider = class(TDNGenericImport<DNDataSourceProviderClass, DNDataSourceProvider>) end;

  //-------------namespace: System.Windows----------------
  DNDependencyObjectTypeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2ACA1967-1326-56C5-9D92-407BCEBFA664}']
  { static methods } 

    {class} function FromSystemType(systemType: DDN.mscorlib.DNType): DNDependencyObjectType;

  end;

  [DNTypeName('System.Windows.DependencyObjectType')]
  DNDependencyObjectType = interface(DDN.mscorlib.DNObject)
  ['{1921CB8E-808D-3ACA-BCBD-129E70001695}']
  { getters & setters } 

    function get_Id: Int32;
    function get_SystemType: DDN.mscorlib.DNType;
    function get_BaseType: DNDependencyObjectType;
    function get_Name: string;

  { methods } 

    function IsInstanceOfType(dependencyObject: DNDependencyObject): Boolean;
    function IsSubclassOf(dependencyObjectType: DNDependencyObjectType): Boolean;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Id: Int32 read get_Id;
    property SystemType: DDN.mscorlib.DNType read get_SystemType;
    property BaseType: DNDependencyObjectType read get_BaseType;
    property Name: string read get_Name;
  end;

  TDNDependencyObjectType = class(TDNGenericImport<DNDependencyObjectTypeClass, DNDependencyObjectType>) end;

  //-------------namespace: System.Windows----------------
  DNDependencyPropertyClass = interface(DDN.mscorlib.DNObjectClass)
  ['{088296B5-AE06-579C-AF3A-FC64CC724EEA}']
  { static fields getter & setter } 

   function __fakeFieldGet_UnsetValue: DDN.mscorlib.DNObject;

  { static fields } 

    {class} property UnsetValue: DDN.mscorlib.DNObject read __fakeFieldGet_UnsetValue;

  { static methods } 

    {class} function &Register(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType): DNDependencyProperty; overload;
    {class} function &Register(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata): DNDependencyProperty; overload;
    {class} function &Register(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata; validateValueCallback: DNValidateValueCallback): DNDependencyProperty; overload;
    {class} function RegisterReadOnly(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata): DNDependencyPropertyKey; overload;
    {class} function RegisterReadOnly(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata; validateValueCallback: DNValidateValueCallback): DNDependencyPropertyKey; overload;
    {class} function RegisterAttachedReadOnly(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; defaultMetadata: DNPropertyMetadata): DNDependencyPropertyKey; overload;
    {class} function RegisterAttachedReadOnly(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; defaultMetadata: DNPropertyMetadata; validateValueCallback: DNValidateValueCallback): DNDependencyPropertyKey; overload;
    {class} function RegisterAttached(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType): DNDependencyProperty; overload;
    {class} function RegisterAttached(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; defaultMetadata: DNPropertyMetadata): DNDependencyProperty; overload;
    {class} function RegisterAttached(name: string; propertyType: DDN.mscorlib.DNType; ownerType: DDN.mscorlib.DNType; defaultMetadata: DNPropertyMetadata; validateValueCallback: DNValidateValueCallback): DNDependencyProperty; overload;

  end;

  [DNTypeName('System.Windows.DependencyProperty')]
  DNDependencyProperty = interface(DDN.mscorlib.DNObject)
  ['{FBE9F247-33CA-3CBF-99CB-DD40F5A0C3B2}']
  { getters & setters } 

    function get_Name: string;
    function get_PropertyType: DDN.mscorlib.DNType;
    function get_OwnerType: DDN.mscorlib.DNType;
    function get_DefaultMetadata: DNPropertyMetadata;
    function get_ValidateValueCallback: DNValidateValueCallback;
    function get_GlobalIndex: Int32;
    function get_ReadOnly: Boolean;

  { methods } 

    function GetMetadata(forType: DDN.mscorlib.DNType): DNPropertyMetadata; overload;
    function GetMetadata(dependencyObject: DNDependencyObject): DNPropertyMetadata; overload;
    function GetMetadata(dependencyObjectType: DNDependencyObjectType): DNPropertyMetadata; overload;
    function AddOwner(ownerType: DDN.mscorlib.DNType): DNDependencyProperty; overload;
    function GetHashCode: Int32;
    function IsValidType(value: DDN.mscorlib.DNObject): Boolean;
    function IsValidValue(value: DDN.mscorlib.DNObject): Boolean;
    function ToString: string;
    procedure OverrideMetadata(forType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata); overload;
    procedure OverrideMetadata(forType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata; key: DNDependencyPropertyKey); overload;
    function AddOwner(ownerType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata): DNDependencyProperty; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Name: string read get_Name;
    property PropertyType: DDN.mscorlib.DNType read get_PropertyType;
    property OwnerType: DDN.mscorlib.DNType read get_OwnerType;
    property DefaultMetadata: DNPropertyMetadata read get_DefaultMetadata;
    property ValidateValueCallback: DNValidateValueCallback read get_ValidateValueCallback;
    property GlobalIndex: Int32 read get_GlobalIndex;
    property ReadOnly: Boolean read get_ReadOnly;
  end;

  TDNDependencyProperty = class(TDNGenericImport<DNDependencyPropertyClass, DNDependencyProperty>) end;

  //-------------namespace: System.Windows----------------
  DNDependencyPropertyKeyClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1A62B526-354A-5346-BC3E-AB7DA7003C0F}']
  end;

  [DNTypeName('System.Windows.DependencyPropertyKey')]
  DNDependencyPropertyKey = interface(DDN.mscorlib.DNObject)
  ['{120F12BC-31DD-36BF-B9BE-80493EEA9E82}']
  { getters & setters } 

    function get_DependencyProperty: DNDependencyProperty;

  { methods } 

    procedure OverrideMetadata(forType: DDN.mscorlib.DNType; typeMetadata: DNPropertyMetadata);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DependencyProperty: DNDependencyProperty read get_DependencyProperty;
  end;

  TDNDependencyPropertyKey = class(TDNGenericImport<DNDependencyPropertyKeyClass, DNDependencyPropertyKey>) end;

  //-------------namespace: System.Windows.Input----------------
  DNKeyInteropClass = interface(DDN.mscorlib.DNObjectClass)
  ['{C776FC50-E7B5-5FDB-8112-345B4A7B0181}']
  { static methods } 

    {class} function KeyFromVirtualKey(virtualKey: Int32): DNKey;
    {class} function VirtualKeyFromKey(key: DNKey): Int32;

  end;

  [DNTypeName('System.Windows.Input.KeyInterop')]
  DNKeyInterop = interface(DDN.mscorlib.DNObject)
  ['{0BCEF380-C904-315A-888C-066D0031F4B6}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNKeyInterop = class(TDNGenericImport<DNKeyInteropClass, DNKeyInterop>) end;

  //-------------namespace: System.Windows.Input----------------
  DNTraversalRequestClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D16AE65D-C65B-566F-82D8-8E0DAF7D6B71}']
  { constructors } 

    {class} function init(focusNavigationDirection: DNFocusNavigationDirection): DNTraversalRequest;

  end;

  [DNTypeName('System.Windows.Input.TraversalRequest')]
  DNTraversalRequest = interface(DDN.mscorlib.DNObject)
  ['{E0FF0AB7-5D61-3CFE-809F-9AD90E3692C1}']
  { getters & setters } 

    function get_Wrapped: Boolean;
    procedure set_Wrapped(value: Boolean);
    function get_FocusNavigationDirection: DNFocusNavigationDirection;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Wrapped: Boolean read get_Wrapped write set_Wrapped;
    property FocusNavigationDirection: DNFocusNavigationDirection read get_FocusNavigationDirection;
  end;

  TDNTraversalRequest = class(TDNGenericImport<DNTraversalRequestClass, DNTraversalRequest>) end;

  //-------------namespace: System.Windows.Interop----------------
  DNComponentDispatcherClass = interface(DDN.mscorlib.DNObjectClass)
  ['{5D05EE5A-44FD-5F1F-9B28-E9C85E98AE82}']
  { static getter & setter } 

    {class} function get_IsThreadModal: Boolean;
    {class} function get_CurrentKeyboardMessage: DNMSG;

  { static methods } 

    {class} procedure PushModal;
    {class} procedure PopModal;
    {class} procedure RaiseIdle;
    {class} function RaiseThreadMessage(out msg: DNMSG): Boolean;

  { static propertys } 

    {class} property IsThreadModal: Boolean read get_IsThreadModal;
    {class} property CurrentKeyboardMessage: DNMSG read get_CurrentKeyboardMessage;
  end;

  [DNTypeName('System.Windows.Interop.ComponentDispatcher')]
  DNComponentDispatcher = interface(DDN.mscorlib.DNObject)
  ['{13DC69A2-0784-3EB4-B914-B44F4E61F7F3}']
  { events } 

    {class} procedure add_ThreadIdle(value: DDN.mscorlib.DNEventHandler);
    {class} procedure remove_ThreadIdle(value: DDN.mscorlib.DNEventHandler);
    {class} procedure add_ThreadFilterMessage(value: DNThreadMessageEventHandler);
    {class} procedure remove_ThreadFilterMessage(value: DNThreadMessageEventHandler);
    {class} procedure add_ThreadPreprocessMessage(value: DNThreadMessageEventHandler);
    {class} procedure remove_ThreadPreprocessMessage(value: DNThreadMessageEventHandler);
    {class} procedure add_EnterThreadModal(value: DDN.mscorlib.DNEventHandler);
    {class} procedure remove_EnterThreadModal(value: DDN.mscorlib.DNEventHandler);
    {class} procedure add_LeaveThreadModal(value: DDN.mscorlib.DNEventHandler);
    {class} procedure remove_LeaveThreadModal(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNComponentDispatcher = class(TDNGenericImport<DNComponentDispatcherClass, DNComponentDispatcher>) end;

  //-------------namespace: System.Windows.Interop----------------
  [DNTypeName('System.Windows.Interop.IKeyboardInputSink')]
  DNIKeyboardInputSink = interface(DDN.mscorlib.DNObject)
  ['{C3BFFF23-62B6-3563-9920-C32DAD9E64D9}']
  { getters & setters } 

    function get_KeyboardInputSite: DNIKeyboardInputSite;
    procedure set_KeyboardInputSite(value: DNIKeyboardInputSite);

  { methods } 

    function RegisterKeyboardInputSink(sink: DNIKeyboardInputSink): DNIKeyboardInputSite;
    function TranslateAccelerator(out msg: DNMSG; modifiers: DNModifierKeys): Boolean;
    function TabInto(request: DNTraversalRequest): Boolean;
    function OnMnemonic(out msg: DNMSG; modifiers: DNModifierKeys): Boolean;
    function TranslateChar(out msg: DNMSG; modifiers: DNModifierKeys): Boolean;
    function HasFocusWithin: Boolean;

  { propertys } 

    property KeyboardInputSite: DNIKeyboardInputSite read get_KeyboardInputSite write set_KeyboardInputSite;
  end;

  //-------------namespace: System.Windows.Interop----------------
  [DNTypeName('System.Windows.Interop.IKeyboardInputSite')]
  DNIKeyboardInputSite = interface(DDN.mscorlib.DNObject)
  ['{688FB57F-AFC1-3FF7-ACBE-B97C9F648A6A}']
  { getters & setters } 

    function get_Sink: DNIKeyboardInputSink;

  { methods } 

    procedure Unregister;
    function OnNoMoreTabStops(request: DNTraversalRequest): Boolean;

  { propertys } 

    property Sink: DNIKeyboardInputSink read get_Sink;
  end;

  //-------------namespace: System.Windows----------------
  [DNTypeName('System.Windows.IWeakEventListener')]
  DNIWeakEventListener = interface(DDN.mscorlib.DNObject)
  ['{A2047CE1-23C1-39A8-9036-8B16A2D7AAFF}']
  { methods } 

    function ReceiveWeakEvent(managerType: DDN.mscorlib.DNType; sender: DDN.mscorlib.DNObject; e: DDN.mscorlib.DNEventArgs): Boolean;

  end;

  //-------------namespace: System.Windows.Markup----------------
  DNInternalTypeHelperClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FC7C835B-D6ED-533E-8EFF-51A92B77CFBB}']
  end;

  [DNTypeName('System.Windows.Markup.InternalTypeHelper')]
  DNInternalTypeHelper = interface(DDN.mscorlib.DNObject)
  ['{0BF28642-6ED8-3A31-8B2D-B11D093618BD}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInternalTypeHelper = class(TDNGenericImport<DNInternalTypeHelperClass, DNInternalTypeHelper>) end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IReceiveMarkupExtension')]
  DNIReceiveMarkupExtension = interface(DDN.mscorlib.DNObject)
  ['{41069949-88FE-3F3B-B5F8-8E9554D5B722}']
  { methods } 

    procedure ReceiveMarkupExtension(&property: string; markupExtension: DDN.System.Windows.Common.DNMarkupExtension; serviceProvider: DDN.mscorlib.DNIServiceProvider);

  end;

  //-------------namespace: System.Windows.Markup.Primitives----------------
  DNMarkupObjectClass = interface(DDN.mscorlib.DNObjectClass)
  ['{406F2606-588B-5F50-8AE5-C0F82707D4DE}']
  end;

  [DNTypeName('System.Windows.Markup.Primitives.MarkupObject')]
  DNMarkupObject = interface(DDN.mscorlib.DNObject)
  ['{5571F728-28B1-3956-8F92-25D2B222531F}']
  { getters & setters } 

    function get_ObjectType: DDN.mscorlib.DNType;
    function get_Instance: DDN.mscorlib.DNObject;
    function get_Properties: DDN.mscorlib.DNIEnumerable<DNMarkupProperty>;
    function get_Attributes: DDN.System.Windows.Common.DNAttributeCollection;

  { methods } 

    procedure AssignRootContext(context: DDN.System.Windows.Common.DNIValueSerializerContext);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ObjectType: DDN.mscorlib.DNType read get_ObjectType;
    property Instance: DDN.mscorlib.DNObject read get_Instance;
    property Properties: DDN.mscorlib.DNIEnumerable<DNMarkupProperty> read get_Properties;
    property Attributes: DDN.System.Windows.Common.DNAttributeCollection read get_Attributes;
  end;

  TDNMarkupObject = class(TDNGenericImport<DNMarkupObjectClass, DNMarkupObject>) end;

  //-------------namespace: System.Windows.Markup.Primitives----------------
  DNMarkupPropertyClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FB5946F8-B51B-5DE1-8AF0-5A208E17C97D}']
  end;

  [DNTypeName('System.Windows.Markup.Primitives.MarkupProperty')]
  DNMarkupProperty = interface(DDN.mscorlib.DNObject)
  ['{F465C255-E04E-3BB3-B7CF-89ABB3804307}']
  { getters & setters } 

    function get_Name: string;
    function get_PropertyType: DDN.mscorlib.DNType;
    function get_PropertyDescriptor: DDN.System.Windows.Common.DNPropertyDescriptor;
    function get_DependencyProperty: DNDependencyProperty;
    function get_IsAttached: Boolean;
    function get_IsConstructorArgument: Boolean;
    function get_IsValueAsString: Boolean;
    function get_IsContent: Boolean;
    function get_IsKey: Boolean;
    function get_IsComposite: Boolean;
    function get_Value: DDN.mscorlib.DNObject;
    function get_StringValue: string;
    function get_TypeReferences: DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function get_Items: DDN.mscorlib.DNIEnumerable<DNMarkupObject>;
    function get_Attributes: DDN.System.Windows.Common.DNAttributeCollection;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property PropertyType: DDN.mscorlib.DNType read get_PropertyType;
    property PropertyDescriptor: DDN.System.Windows.Common.DNPropertyDescriptor read get_PropertyDescriptor;
    property DependencyProperty: DNDependencyProperty read get_DependencyProperty;
    property IsAttached: Boolean read get_IsAttached;
    property IsConstructorArgument: Boolean read get_IsConstructorArgument;
    property IsValueAsString: Boolean read get_IsValueAsString;
    property IsContent: Boolean read get_IsContent;
    property IsKey: Boolean read get_IsKey;
    property IsComposite: Boolean read get_IsComposite;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property StringValue: string read get_StringValue;
    property TypeReferences: DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType> read get_TypeReferences;
    property Items: DDN.mscorlib.DNIEnumerable<DNMarkupObject> read get_Items;
    property Attributes: DDN.System.Windows.Common.DNAttributeCollection read get_Attributes;
  end;

  TDNMarkupProperty = class(TDNGenericImport<DNMarkupPropertyClass, DNMarkupProperty>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNServiceProvidersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{9FF498D0-994B-5F24-9C2A-8E552D755A09}']
  { constructors } 

    {class} function init: DNServiceProviders;

  end;

  [DNTypeName('System.Windows.Markup.ServiceProviders')]
  DNServiceProviders = interface(DDN.mscorlib.DNObject)
  ['{E52C4415-C8BA-32D0-BB68-B03CAF8B102C}']
  { methods } 

    function GetService(serviceType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject;
    procedure AddService(serviceType: DDN.mscorlib.DNType; service: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNServiceProviders = class(TDNGenericImport<DNServiceProvidersClass, DNServiceProviders>) end;

  //-------------namespace: System.Windows.Converters----------------
  DNInt32RectValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{6C070776-62BC-590B-B93A-9D2B0862C1F0}']
  { constructors } 

    {class} function init: DNInt32RectValueSerializer;

  end;

  [DNTypeName('System.Windows.Converters.Int32RectValueSerializer')]
  DNInt32RectValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{018CBEAD-FE38-36A1-85A6-8CFF4CB74BA8}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInt32RectValueSerializer = class(TDNGenericImport<DNInt32RectValueSerializerClass, DNInt32RectValueSerializer>) end;

  //-------------namespace: System.Windows.Converters----------------
  DNPointValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{05009FCE-B22D-58D7-9F9C-6D1B9B9DCB98}']
  { constructors } 

    {class} function init: DNPointValueSerializer;

  end;

  [DNTypeName('System.Windows.Converters.PointValueSerializer')]
  DNPointValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{9361D9E1-FA34-3EE1-8025-1CDB26180AB1}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPointValueSerializer = class(TDNGenericImport<DNPointValueSerializerClass, DNPointValueSerializer>) end;

  //-------------namespace: System.Windows.Converters----------------
  DNRectValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{CFC00544-5C1B-5CDC-AFD2-8F1EDADC4E62}']
  { constructors } 

    {class} function init: DNRectValueSerializer;

  end;

  [DNTypeName('System.Windows.Converters.RectValueSerializer')]
  DNRectValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{36731F48-797D-3C84-A695-0DD5D5FE9D6F}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRectValueSerializer = class(TDNGenericImport<DNRectValueSerializerClass, DNRectValueSerializer>) end;

  //-------------namespace: System.Windows.Converters----------------
  DNSizeValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{637D9FA5-0FAB-5FF5-BE33-60CAE7A7F008}']
  { constructors } 

    {class} function init: DNSizeValueSerializer;

  end;

  [DNTypeName('System.Windows.Converters.SizeValueSerializer')]
  DNSizeValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{CC5F4927-CC0D-368C-9DF5-DBB5AB396158}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSizeValueSerializer = class(TDNGenericImport<DNSizeValueSerializerClass, DNSizeValueSerializer>) end;

  //-------------namespace: System.Windows.Converters----------------
  DNVectorValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{DFDE1ED8-C1A0-529A-A2CB-A7C1EAACFC71}']
  { constructors } 

    {class} function init: DNVectorValueSerializer;

  end;

  [DNTypeName('System.Windows.Converters.VectorValueSerializer')]
  DNVectorValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{8D5A89DA-B624-380E-99B6-E681863BA008}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNVectorValueSerializer = class(TDNGenericImport<DNVectorValueSerializerClass, DNVectorValueSerializer>) end;

  //-------------namespace: System.Windows.Input----------------
  DNKeyValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{8E5EE957-35DB-54C4-A406-2E4BBE349DD3}']
  { constructors } 

    {class} function init: DNKeyValueSerializer;

  end;

  [DNTypeName('System.Windows.Input.KeyValueSerializer')]
  DNKeyValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{E473D58E-2B94-31F9-8C18-69CAFDCEEA11}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNKeyValueSerializer = class(TDNGenericImport<DNKeyValueSerializerClass, DNKeyValueSerializer>) end;

  //-------------namespace: System.Windows.Input----------------
  DNModifierKeysValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{3DF1EAF8-DF69-5516-8179-4DD45086900C}']
  { constructors } 

    {class} function init: DNModifierKeysValueSerializer;

  end;

  [DNTypeName('System.Windows.Input.ModifierKeysValueSerializer')]
  DNModifierKeysValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{4AE8E962-73A3-399A-9969-85A8074619DF}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNModifierKeysValueSerializer = class(TDNGenericImport<DNModifierKeysValueSerializerClass, DNModifierKeysValueSerializer>) end;

  //-------------namespace: System.Windows.Media.Converters----------------
  DNMatrixValueSerializerClass = interface(DDN.System.Windows.Common.DNValueSerializerClass)
  ['{4D781055-5D82-508F-970B-9699C1E5F883}']
  { constructors } 

    {class} function init: DNMatrixValueSerializer;

  end;

  [DNTypeName('System.Windows.Media.Converters.MatrixValueSerializer')]
  DNMatrixValueSerializer = interface(DDN.System.Windows.Common.DNValueSerializer)
  ['{1CB5965A-4569-3BA1-BADD-D45004B2FC34}']
  { methods } 

    function CanConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DDN.System.Windows.Common.DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNMatrixValueSerializer = class(TDNGenericImport<DNMatrixValueSerializerClass, DNMatrixValueSerializer>) end;

  //-------------namespace: System.Windows----------------
  DNNameScopeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{C0839F22-B3A9-5149-97D9-3AC477AA1A22}']
  { constructors } 

    {class} function init: DNNameScope;

  { static fields getter & setter } 

   function __fakeFieldGet_NameScopeProperty: DNDependencyProperty;

  { static fields } 

    {class} property NameScopeProperty: DNDependencyProperty read __fakeFieldGet_NameScopeProperty;

  { static methods } 

    {class} procedure SetNameScope(dependencyObject: DNDependencyObject; value: DDN.System.Windows.Common.DNINameScope);
    {class} function GetNameScope(dependencyObject: DNDependencyObject): DDN.System.Windows.Common.DNINameScope;

  end;

  [DNTypeName('System.Windows.NameScope')]
  DNNameScope = interface(DDN.mscorlib.DNObject)
  ['{9B417001-72EB-3C78-BE3C-89CE2379918E}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_Keys: DDN.mscorlib.DNICollection<string>;
    function get_Values: DDN.mscorlib.DNICollection<DDN.mscorlib.DNObject>;

  { methods } 

    procedure RegisterName(name: string; scopedElement: DDN.mscorlib.DNObject);
    procedure UnregisterName(name: string);
    function FindName(name: string): DDN.mscorlib.DNObject;
    function ContainsKey(key: string): Boolean;
    function TryGetValue(key: string; out value: DDN.mscorlib.DNObject): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property Keys: DDN.mscorlib.DNICollection<string> read get_Keys;
    property Values: DDN.mscorlib.DNICollection<DDN.mscorlib.DNObject> read get_Values;
  end;

  TDNNameScope = class(TDNGenericImport<DNNameScopeClass, DNNameScope>) end;

  //-------------namespace: System.Windows----------------
  DNPropertyMetadataClass = interface(DDN.mscorlib.DNObjectClass)
  ['{9645A368-C862-5437-866B-6C7C71730A73}']
  { constructors } 

    {class} function init: DNPropertyMetadata; overload;
    {class} function init(defaultValue: DDN.mscorlib.DNObject): DNPropertyMetadata; overload;
    {class} function init(propertyChangedCallback: DNPropertyChangedCallback): DNPropertyMetadata; overload;
    {class} function init(defaultValue: DDN.mscorlib.DNObject; propertyChangedCallback: DNPropertyChangedCallback): DNPropertyMetadata; overload;
    {class} function init(defaultValue: DDN.mscorlib.DNObject; propertyChangedCallback: DNPropertyChangedCallback; coerceValueCallback: DNCoerceValueCallback): DNPropertyMetadata; overload;

  end;

  [DNTypeName('System.Windows.PropertyMetadata')]
  DNPropertyMetadata = interface(DDN.mscorlib.DNObject)
  ['{A5B94737-0792-361D-9239-1F0A7E9F9DBD}']
  { getters & setters } 

    function get_DefaultValue: DDN.mscorlib.DNObject;
    procedure set_DefaultValue(value: DDN.mscorlib.DNObject);
    function get_PropertyChangedCallback: DNPropertyChangedCallback;
    procedure set_PropertyChangedCallback(value: DNPropertyChangedCallback);
    function get_CoerceValueCallback: DNCoerceValueCallback;
    procedure set_CoerceValueCallback(value: DNCoerceValueCallback);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DefaultValue: DDN.mscorlib.DNObject read get_DefaultValue write set_DefaultValue;
    property PropertyChangedCallback: DNPropertyChangedCallback read get_PropertyChangedCallback write set_PropertyChangedCallback;
    property CoerceValueCallback: DNCoerceValueCallback read get_CoerceValueCallback write set_CoerceValueCallback;
  end;

  TDNPropertyMetadata = class(TDNGenericImport<DNPropertyMetadataClass, DNPropertyMetadata>) end;

  //-------------namespace: System.Windows----------------
  DNSplashScreenClass = interface(DDN.mscorlib.DNObjectClass)
  ['{56DCC3EC-99C7-5A47-8E88-C2BAC9007FBD}']
  { constructors } 

    {class} function init(resourceName: string): DNSplashScreen; overload;
    {class} function init(resourceAssembly: DDN.mscorlib.DNAssembly; resourceName: string): DNSplashScreen; overload;

  end;

  [DNTypeName('System.Windows.SplashScreen')]
  DNSplashScreen = interface(DDN.mscorlib.DNObject)
  ['{E25E7B38-19DF-31AA-BC8A-FAB0AAE1BEE3}']
  { methods } 

    procedure Show(autoClose: Boolean); overload;
    procedure Show(autoClose: Boolean; topMost: Boolean); overload;
    procedure Close(fadeoutDuration: DDN.mscorlib.DNTimeSpan);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSplashScreen = class(TDNGenericImport<DNSplashScreenClass, DNSplashScreen>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FA3F7C83-1FA3-5F68-ADA4-1B8ACCB4E554}']
  { static getter & setter } 

    {class} function get_CurrentDispatcher: DNDispatcher;

  { static methods } 

    {class} function FromThread(thread: DDN.mscorlib.DNThread): DNDispatcher;
    {class} procedure Run;
    {class} procedure PushFrame(frame: DNDispatcherFrame);
    {class} function Yield: DNDispatcherPriorityAwaitable; overload;
    {class} procedure ValidatePriority(priority: DNDispatcherPriority; parameterName: string);
    {class} procedure ExitAllFrames;
    {class} function Yield(priority: DNDispatcherPriority): DNDispatcherPriorityAwaitable; overload;

  { static propertys } 

    {class} property CurrentDispatcher: DNDispatcher read get_CurrentDispatcher;
  end;

  [DNTypeName('System.Windows.Threading.Dispatcher')]
  DNDispatcher = interface(DDN.mscorlib.DNObject)
  ['{E5319C47-7036-38A5-BA1D-BBC394F3B822}']
  { getters & setters } 

    function get_Thread: DDN.mscorlib.DNThread;
    function get_HasShutdownStarted: Boolean;
    function get_HasShutdownFinished: Boolean;
    function get_Hooks: DNDispatcherHooks;

  { events } 

    procedure add_ShutdownStarted(value: DDN.mscorlib.DNEventHandler);
    procedure remove_ShutdownStarted(value: DDN.mscorlib.DNEventHandler);
    procedure add_ShutdownFinished(value: DDN.mscorlib.DNEventHandler);
    procedure remove_ShutdownFinished(value: DDN.mscorlib.DNEventHandler);
    procedure add_UnhandledExceptionFilter(value: DNDispatcherUnhandledExceptionFilterEventHandler);
    procedure remove_UnhandledExceptionFilter(value: DNDispatcherUnhandledExceptionFilterEventHandler);
    procedure add_UnhandledException(value: DNDispatcherUnhandledExceptionEventHandler);
    procedure remove_UnhandledException(value: DNDispatcherUnhandledExceptionEventHandler);

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    procedure InvokeShutdown;
    function BeginInvoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate): DNDispatcherOperation; overload;
    function BeginInvoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject): DNDispatcherOperation; overload;
    function BeginInvoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject; args: TArray<DDN.mscorlib.DNObject>): DNDispatcherOperation; overload;
    function BeginInvoke(method: DDN.mscorlib.DNDelegate; args: TArray<DDN.mscorlib.DNObject>): DNDispatcherOperation; overload;
    function BeginInvoke(method: DDN.mscorlib.DNDelegate; priority: DNDispatcherPriority; args: TArray<DDN.mscorlib.DNObject>): DNDispatcherOperation; overload;
    procedure Invoke(callback: DDN.mscorlib.DNAction); overload;
    procedure Invoke(callback: DDN.mscorlib.DNAction; priority: DNDispatcherPriority); overload;
    procedure Invoke(callback: DDN.mscorlib.DNAction; priority: DNDispatcherPriority; cancellationToken: DDN.mscorlib.DNCancellationToken); overload;
    function InvokeAsync(callback: DDN.mscorlib.DNAction): DNDispatcherOperation; overload;
    function InvokeAsync(callback: DDN.mscorlib.DNAction; priority: DNDispatcherPriority): DNDispatcherOperation; overload;
    function Invoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate): DDN.mscorlib.DNObject; overload;
    function Invoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function Invoke(priority: DNDispatcherPriority; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function Invoke(priority: DNDispatcherPriority; timeout: DDN.mscorlib.DNTimeSpan; method: DDN.mscorlib.DNDelegate): DDN.mscorlib.DNObject; overload;
    function Invoke(priority: DNDispatcherPriority; timeout: DDN.mscorlib.DNTimeSpan; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function Invoke(priority: DNDispatcherPriority; timeout: DDN.mscorlib.DNTimeSpan; method: DDN.mscorlib.DNDelegate; arg: DDN.mscorlib.DNObject; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function Invoke(method: DDN.mscorlib.DNDelegate; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function Invoke(method: DDN.mscorlib.DNDelegate; priority: DNDispatcherPriority; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function Invoke(method: DDN.mscorlib.DNDelegate; timeout: DDN.mscorlib.DNTimeSpan; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function Invoke(method: DDN.mscorlib.DNDelegate; timeout: DDN.mscorlib.DNTimeSpan; priority: DNDispatcherPriority; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject; overload;
    function DisableProcessing: DNDispatcherProcessingDisabled;
    procedure BeginInvokeShutdown(priority: DNDispatcherPriority);
    function InvokeAsync(callback: DDN.mscorlib.DNAction; priority: DNDispatcherPriority; cancellationToken: DDN.mscorlib.DNCancellationToken): DNDispatcherOperation; overload;
    procedure Invoke(callback: DDN.mscorlib.DNAction; priority: DNDispatcherPriority; cancellationToken: DDN.mscorlib.DNCancellationToken; timeout: DDN.mscorlib.DNTimeSpan); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Thread: DDN.mscorlib.DNThread read get_Thread;
    property HasShutdownStarted: Boolean read get_HasShutdownStarted;
    property HasShutdownFinished: Boolean read get_HasShutdownFinished;
    property Hooks: DNDispatcherHooks read get_Hooks;
  end;

  TDNDispatcher = class(TDNGenericImport<DNDispatcherClass, DNDispatcher>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherHooksClass = interface(DDN.mscorlib.DNObjectClass)
  ['{9AFC17B0-5CBF-525E-85E8-B1923998E863}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherHooks')]
  DNDispatcherHooks = interface(DDN.mscorlib.DNObject)
  ['{A0DF799D-F876-3568-A7A5-C25319747B58}']
  { events } 

    procedure add_DispatcherInactive(value: DDN.mscorlib.DNEventHandler);
    procedure remove_DispatcherInactive(value: DDN.mscorlib.DNEventHandler);
    procedure add_OperationPosted(value: DNDispatcherHookEventHandler);
    procedure remove_OperationPosted(value: DNDispatcherHookEventHandler);
    procedure add_OperationStarted(value: DNDispatcherHookEventHandler);
    procedure remove_OperationStarted(value: DNDispatcherHookEventHandler);
    procedure add_OperationCompleted(value: DNDispatcherHookEventHandler);
    procedure remove_OperationCompleted(value: DNDispatcherHookEventHandler);
    procedure add_OperationPriorityChanged(value: DNDispatcherHookEventHandler);
    procedure remove_OperationPriorityChanged(value: DNDispatcherHookEventHandler);
    procedure add_OperationAborted(value: DNDispatcherHookEventHandler);
    procedure remove_OperationAborted(value: DNDispatcherHookEventHandler);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDispatcherHooks = class(TDNGenericImport<DNDispatcherHooksClass, DNDispatcherHooks>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherObjectClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2E6F7708-7242-5AEB-A69E-295CF3B6B6AB}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherObject')]
  DNDispatcherObject = interface(DDN.mscorlib.DNObject)
  ['{F76563BB-A612-3482-ACBE-7FF19E51A68B}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDispatcherObject = class(TDNGenericImport<DNDispatcherObjectClass, DNDispatcherObject>) end;

  //-------------namespace: System.Windows----------------
  DNDependencyObjectClass = interface(DNDispatcherObjectClass)
  ['{413D2E66-8AC2-5D20-B437-171C661774A2}']
  { constructors } 

    {class} function init: DNDependencyObject;

  end;

  [DNTypeName('System.Windows.DependencyObject')]
  DNDependencyObject = interface(DNDispatcherObject)
  ['{00987CC5-472E-3854-8A5C-D746A7FD1739}']
  { getters & setters } 

    function get_DependencyObjectType: DNDependencyObjectType;
    function get_IsSealed: Boolean;
    function get_Dispatcher: DNDispatcher;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetValue(dp: DNDependencyProperty): DDN.mscorlib.DNObject;
    procedure SetValue(dp: DNDependencyProperty; value: DDN.mscorlib.DNObject); overload;
    procedure SetCurrentValue(dp: DNDependencyProperty; value: DDN.mscorlib.DNObject);
    procedure SetValue(key: DNDependencyPropertyKey; value: DDN.mscorlib.DNObject); overload;
    procedure ClearValue(dp: DNDependencyProperty); overload;
    procedure ClearValue(key: DNDependencyPropertyKey); overload;
    procedure CoerceValue(dp: DNDependencyProperty);
    procedure InvalidateProperty(dp: DNDependencyProperty);
    function ReadLocalValue(dp: DNDependencyProperty): DDN.mscorlib.DNObject;
    function GetLocalValueEnumerator: DNLocalValueEnumerator;
    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property DependencyObjectType: DNDependencyObjectType read get_DependencyObjectType;
    property IsSealed: Boolean read get_IsSealed;
    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDependencyObject = class(TDNGenericImport<DNDependencyObjectClass, DNDependencyObject>) end;

  //-------------namespace: System.Windows----------------
  DNFreezableClass = interface(DNDependencyObjectClass)
  ['{8FA2C711-3764-537A-9DCC-4D6597158D4B}']
  end;

  [DNTypeName('System.Windows.Freezable')]
  DNFreezable = interface(DNDependencyObject)
  ['{FFD99072-5B12-3B0D-8491-D97DFF56CDCE}']
  { getters & setters } 

    function get_CanFreeze: Boolean;
    function get_IsFrozen: Boolean;
    function get_DependencyObjectType: DNDependencyObjectType;
    function get_IsSealed: Boolean;
    function get_Dispatcher: DNDispatcher;

  { events } 

    procedure add_Changed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Changed(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function Clone: DNFreezable;
    function CloneCurrentValue: DNFreezable;
    function GetAsFrozen: DNFreezable;
    function GetCurrentValueAsFrozen: DNFreezable;
    procedure Freeze;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetValue(dp: DNDependencyProperty): DDN.mscorlib.DNObject;
    procedure SetValue(dp: DNDependencyProperty; value: DDN.mscorlib.DNObject); overload;
    procedure SetCurrentValue(dp: DNDependencyProperty; value: DDN.mscorlib.DNObject);
    procedure SetValue(key: DNDependencyPropertyKey; value: DDN.mscorlib.DNObject); overload;
    procedure ClearValue(dp: DNDependencyProperty); overload;
    procedure ClearValue(key: DNDependencyPropertyKey); overload;
    procedure CoerceValue(dp: DNDependencyProperty);
    procedure InvalidateProperty(dp: DNDependencyProperty);
    function ReadLocalValue(dp: DNDependencyProperty): DDN.mscorlib.DNObject;
    function GetLocalValueEnumerator: DNLocalValueEnumerator;
    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property CanFreeze: Boolean read get_CanFreeze;
    property IsFrozen: Boolean read get_IsFrozen;
    property DependencyObjectType: DNDependencyObjectType read get_DependencyObjectType;
    property IsSealed: Boolean read get_IsSealed;
    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNFreezable = class(TDNGenericImport<DNFreezableClass, DNFreezable>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherFrameClass = interface(DNDispatcherObjectClass)
  ['{E6DD9745-ADF2-559A-8CB6-316D900ECDFD}']
  { constructors } 

    {class} function init: DNDispatcherFrame; overload;
    {class} function init(exitWhenRequested: Boolean): DNDispatcherFrame; overload;

  end;

  [DNTypeName('System.Windows.Threading.DispatcherFrame')]
  DNDispatcherFrame = interface(DNDispatcherObject)
  ['{68499B53-61D4-3068-B35C-97BFE597985E}']
  { getters & setters } 

    function get_Continue: Boolean;
    procedure set_Continue(value: Boolean);
    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property &Continue: Boolean read get_Continue write set_Continue;
    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNDispatcherFrame = class(TDNGenericImport<DNDispatcherFrameClass, DNDispatcherFrame>) end;

  //-------------namespace: System.Windows----------------
  DNWeakEventManagerClass = interface(DNDispatcherObjectClass)
  ['{EC1A780D-5474-5C90-A449-485A6D896FF3}']
  end;

  [DNTypeName('System.Windows.WeakEventManager')]
  DNWeakEventManager = interface(DNDispatcherObject)
  ['{1E3727EE-0804-35E0-A877-BE085FAB7564}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNWeakEventManager = class(TDNGenericImport<DNWeakEventManagerClass, DNWeakEventManager>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNCollectionChangedEventManagerClass = interface(DNWeakEventManagerClass)
  ['{FD184746-FF6C-575F-9E2C-0F70271216A6}']
  { static methods } 

    {class} procedure AddListener(source: DDN.System.Windows.Common.DNINotifyCollectionChanged; listener: DNIWeakEventListener);
    {class} procedure RemoveListener(source: DDN.System.Windows.Common.DNINotifyCollectionChanged; listener: DNIWeakEventListener);

  end;

  [DNTypeName('System.Collections.Specialized.CollectionChangedEventManager')]
  DNCollectionChangedEventManager = interface(DNWeakEventManager)
  ['{8B1E5228-C3B7-3A07-A24B-8D5563E0085A}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNCollectionChangedEventManager = class(TDNGenericImport<DNCollectionChangedEventManagerClass, DNCollectionChangedEventManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNCurrentChangedEventManagerClass = interface(DNWeakEventManagerClass)
  ['{D99B691F-5F39-5C67-9E03-9404D1528211}']
  { static methods } 

    {class} procedure AddListener(source: DNICollectionView; listener: DNIWeakEventListener);
    {class} procedure RemoveListener(source: DNICollectionView; listener: DNIWeakEventListener);

  end;

  [DNTypeName('System.ComponentModel.CurrentChangedEventManager')]
  DNCurrentChangedEventManager = interface(DNWeakEventManager)
  ['{A9ADEF08-1872-3B9F-8535-5B4BF30F937B}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNCurrentChangedEventManager = class(TDNGenericImport<DNCurrentChangedEventManagerClass, DNCurrentChangedEventManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNCurrentChangingEventManagerClass = interface(DNWeakEventManagerClass)
  ['{3961BE8C-AF87-5D48-8D78-8DEC7FAD54F9}']
  { static methods } 

    {class} procedure AddListener(source: DNICollectionView; listener: DNIWeakEventListener);
    {class} procedure RemoveListener(source: DNICollectionView; listener: DNIWeakEventListener);

  end;

  [DNTypeName('System.ComponentModel.CurrentChangingEventManager')]
  DNCurrentChangingEventManager = interface(DNWeakEventManager)
  ['{3B505C32-2DF8-381E-89C6-AA7ED6DCA914}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNCurrentChangingEventManager = class(TDNGenericImport<DNCurrentChangingEventManagerClass, DNCurrentChangingEventManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNErrorsChangedEventManagerClass = interface(DNWeakEventManagerClass)
  ['{80E15846-562F-5F30-8684-36E7999F8F6B}']
  end;

  [DNTypeName('System.ComponentModel.ErrorsChangedEventManager')]
  DNErrorsChangedEventManager = interface(DNWeakEventManager)
  ['{471A065D-4307-3A9C-A00D-2126673ACF39}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNErrorsChangedEventManager = class(TDNGenericImport<DNErrorsChangedEventManagerClass, DNErrorsChangedEventManager>) end;

  //-------------namespace: System.ComponentModel----------------
  DNPropertyChangedEventManagerClass = interface(DNWeakEventManagerClass)
  ['{A3E408A4-8B20-52B9-B4F9-8ED79C4999F0}']
  { static methods } 

    {class} procedure AddListener(source: DDN.System.Windows.Common.DNINotifyPropertyChanged; listener: DNIWeakEventListener; propertyName: string);
    {class} procedure RemoveListener(source: DDN.System.Windows.Common.DNINotifyPropertyChanged; listener: DNIWeakEventListener; propertyName: string);

  end;

  [DNTypeName('System.ComponentModel.PropertyChangedEventManager')]
  DNPropertyChangedEventManager = interface(DNWeakEventManager)
  ['{EC82AD5B-0628-39D8-A596-9B130B8C1183}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;

  { methods } 

    function CheckAccess: Boolean;
    procedure VerifyAccess;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
  end;

  TDNPropertyChangedEventManager = class(TDNGenericImport<DNPropertyChangedEventManagerClass, DNPropertyChangedEventManager>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherOperationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{48A2A2EF-CE7F-5B39-9372-F9A28A5D7AA7}']
  end;

  [DNTypeName('System.Windows.Threading.DispatcherOperation')]
  DNDispatcherOperation = interface(DDN.mscorlib.DNObject)
  ['{DB22AF9A-DDDD-3CF5-8768-4C076EDBCC02}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;
    function get_Priority: DNDispatcherPriority;
    procedure set_Priority(value: DNDispatcherPriority);
    function get_Status: DNDispatcherOperationStatus;
    function get_Task: DDN.mscorlib.DNTask;
    function get_Result: DDN.mscorlib.DNObject;

  { events } 

    procedure add_Aborted(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Aborted(value: DDN.mscorlib.DNEventHandler);
    procedure add_Completed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Completed(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function GetAwaiter: DDN.mscorlib.DNTaskAwaiter;
    function Wait: DNDispatcherOperationStatus; overload;
    function Wait(timeout: DDN.mscorlib.DNTimeSpan): DNDispatcherOperationStatus; overload;
    function &Abort: Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
    property Priority: DNDispatcherPriority read get_Priority write set_Priority;
    property Status: DNDispatcherOperationStatus read get_Status;
    property Task: DDN.mscorlib.DNTask read get_Task;
    property Result: DDN.mscorlib.DNObject read get_Result;
  end;

  TDNDispatcherOperation = class(TDNGenericImport<DNDispatcherOperationClass, DNDispatcherOperation>) end;

  //-------------namespace: System.Windows.Threading----------------
  DNDispatcherTimerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{BAB225DA-E8ED-50C4-82B3-23DF67E2E759}']
  { constructors } 

    {class} function init: DNDispatcherTimer; overload;
    {class} function init(priority: DNDispatcherPriority): DNDispatcherTimer; overload;
    {class} function init(priority: DNDispatcherPriority; dispatcher: DNDispatcher): DNDispatcherTimer; overload;
    {class} function init(interval: DDN.mscorlib.DNTimeSpan; priority: DNDispatcherPriority; callback: DDN.mscorlib.DNEventHandler; dispatcher: DNDispatcher): DNDispatcherTimer; overload;

  end;

  [DNTypeName('System.Windows.Threading.DispatcherTimer')]
  DNDispatcherTimer = interface(DDN.mscorlib.DNObject)
  ['{D364767F-0592-3217-874C-3D7F0046AA1F}']
  { getters & setters } 

    function get_Dispatcher: DNDispatcher;
    function get_IsEnabled: Boolean;
    procedure set_IsEnabled(value: Boolean);
    function get_Interval: DDN.mscorlib.DNTimeSpan;
    procedure set_Interval(value: DDN.mscorlib.DNTimeSpan);
    function get_Tag: DDN.mscorlib.DNObject;
    procedure set_Tag(value: DDN.mscorlib.DNObject);

  { events } 

    procedure add_Tick(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Tick(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    procedure Start;
    procedure Stop;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Dispatcher: DNDispatcher read get_Dispatcher;
    property IsEnabled: Boolean read get_IsEnabled write set_IsEnabled;
    property Interval: DDN.mscorlib.DNTimeSpan read get_Interval write set_Interval;
    property Tag: DDN.mscorlib.DNObject read get_Tag write set_Tag;
  end;

  TDNDispatcherTimer = class(TDNGenericImport<DNDispatcherTimerClass, DNDispatcherTimer>) end;


implementation


initialization
  LoadAssemblyModule('WPF\WindowsBase.dll', True);

finalization

end.
