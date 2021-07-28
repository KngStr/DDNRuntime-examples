// WebDriver, Version=3.4.0.0, Culture=neutral, PublicKeyToken=null
//-----------------------------------------------------------//
//                                                           //
//     DDN.WebDriver                                
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.WebDriver;

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.WebDriver.Common;

type

{ enums }

  //-------------namespace: OpenQA.Selenium.Edge----------------
  [DNTypeName('OpenQA.Selenium.Edge.EdgePageLoadStrategy')]
  DNEdgePageLoadStrategy = type Integer;
  DNEdgePageLoadStrategyHelper = record helper for DNEdgePageLoadStrategy
  public const
    Default_ = 0;
    Normal = 1;
    Eager = 2;
    None = 3;
  end;


  //-------------namespace: OpenQA.Selenium.Firefox----------------
  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxDriverLogLevel')]
  DNFirefoxDriverLogLevel = type Integer;
  DNFirefoxDriverLogLevelHelper = record helper for DNFirefoxDriverLogLevel
  public const
    Trace = 0;
    Debug = 1;
    Config = 2;
    Info = 3;
    Warn = 4;
    Error = 5;
    Fatal = 6;
    Default_ = 7;
  end;


  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.AppCacheStatus')]
  DNAppCacheStatus = type Integer;
  DNAppCacheStatusHelper = record helper for DNAppCacheStatus
  public const
    Uncached = 0;
    Idle = 1;
    Checking = 2;
    Downloading = 3;
    UpdateReady = 4;
    Obsolete = 5;
  end;


  //-------------namespace: OpenQA.Selenium.IE----------------
  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerDriverLogLevel')]
  DNInternetExplorerDriverLogLevel = type Integer;
  DNInternetExplorerDriverLogLevelHelper = record helper for DNInternetExplorerDriverLogLevel
  public const
    Trace = 0;
    Debug = 1;
    Info = 2;
    Warn = 3;
    Error = 4;
    Fatal = 5;
  end;


  //-------------namespace: OpenQA.Selenium.IE----------------
  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerElementScrollBehavior')]
  DNInternetExplorerElementScrollBehavior = type Integer;
  DNInternetExplorerElementScrollBehaviorHelper = record helper for DNInternetExplorerElementScrollBehavior
  public const
    Top = 0;
    Bottom = 1;
  end;


  //-------------namespace: OpenQA.Selenium.IE----------------
  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerPageLoadStrategy')]
  DNInternetExplorerPageLoadStrategy = type Integer;
  DNInternetExplorerPageLoadStrategyHelper = record helper for DNInternetExplorerPageLoadStrategy
  public const
    Default_ = 0;
    Normal = 1;
    Eager = 2;
    None = 3;
  end;


  //-------------namespace: OpenQA.Selenium.IE----------------
  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerUnexpectedAlertBehavior')]
  DNInternetExplorerUnexpectedAlertBehavior = type Integer;
  DNInternetExplorerUnexpectedAlertBehaviorHelper = record helper for DNInternetExplorerUnexpectedAlertBehavior
  public const
    Default_ = 0;
    Ignore = 1;
    Accept = 2;
    Dismiss = 3;
  end;


  //-------------namespace: OpenQA.Selenium.Interactions----------------
  [DNTypeName('OpenQA.Selenium.Interactions.InputDeviceKind')]
  DNInputDeviceKind = type Integer;
  DNInputDeviceKindHelper = record helper for DNInputDeviceKind
  public const
    None = 0;
    Key = 1;
    Pointer = 2;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.LogLevel')]
  DNLogLevel = type Integer;
  DNLogLevelHelper = record helper for DNLogLevel
  public const
    All = 0;
    Debug = 1;
    Info = 2;
    Warning = 3;
    Severe = 4;
    Off = 5;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.PlatformType')]
  DNPlatformType = type Integer;
  DNPlatformTypeHelper = record helper for DNPlatformType
  public const
    Any = 0;
    Windows = 1;
    WinNT = 1;
    XP = 2;
    Vista = 3;
    Mac = 4;
    Unix = 5;
    Linux = 6;
    Android = 7;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ProxyKind')]
  DNProxyKind = type Integer;
  DNProxyKindHelper = record helper for DNProxyKind
  public const
    Direct = 0;
    Manual = 1;
    ProxyAutoConfigure = 2;
    AutoDetect = 4;
    System = 5;
    Unspecified = 6;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ScreenOrientation')]
  DNScreenOrientation = type Integer;
  DNScreenOrientationHelper = record helper for DNScreenOrientation
  public const
    Portrait = 0;
    Landscape = 1;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ScreenshotImageFormat')]
  DNScreenshotImageFormat = type Integer;
  DNScreenshotImageFormatHelper = record helper for DNScreenshotImageFormat
  public const
    Png = 0;
    Jpeg = 1;
    Gif = 2;
    Tiff = 3;
    Bmp = 4;
  end;


  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.WebDriverResult')]
  DNWebDriverResult = type Integer;
  DNWebDriverResultHelper = record helper for DNWebDriverResult
  public const
    Success = 0;
    IndexOutOfBounds = 1;
    NoCollection = 2;
    NoString = 3;
    NoStringLength = 4;
    NoStringWrapper = 5;
    NoSuchDriver = 6;
    NoSuchElement = 7;
    NoSuchFrame = 8;
    UnknownCommand = 9;
    ObsoleteElement = 10;
    ElementNotDisplayed = 11;
    InvalidElementState = 12;
    UnhandledError = 13;
    ExpectedError = 14;
    ElementNotSelectable = 15;
    NoSuchDocument = 16;
    UnexpectedJavaScriptError = 17;
    NoScriptResult = 18;
    XPathLookupError = 19;
    NoSuchCollection = 20;
    Timeout = 21;
    NullPointer = 22;
    NoSuchWindow = 23;
    InvalidCookieDomain = 24;
    UnableToSetCookie = 25;
    UnexpectedAlertOpen = 26;
    NoAlertPresent = 27;
    AsyncScriptTimeout = 28;
    InvalidElementCoordinates = 29;
    InvalidSelector = 32;
    InsecureCertificate = 33;
    NoSuchCookie = 34;
  end;




type

{ declares }

  DNBy = interface; // type: OpenQA.Selenium.By, namespace: OpenQA.Selenium
  DNChromeMobileEmulationDeviceSettings = interface; // type: OpenQA.Selenium.Chrome.ChromeMobileEmulationDeviceSettings, namespace: OpenQA.Selenium.Chrome
  DNChromePerformanceLoggingPreferences = interface; // type: OpenQA.Selenium.Chrome.ChromePerformanceLoggingPreferences, namespace: OpenQA.Selenium.Chrome
  DNCookie = interface; // type: OpenQA.Selenium.Cookie, namespace: OpenQA.Selenium
  DNReturnedCookie = interface; // type: OpenQA.Selenium.Internal.ReturnedCookie, namespace: OpenQA.Selenium.Internal
  DNDefaultFileDetector = interface; // type: OpenQA.Selenium.DefaultFileDetector, namespace: OpenQA.Selenium
  DNDriverOptions = interface; // type: OpenQA.Selenium.DriverOptions, namespace: OpenQA.Selenium
  DNChromeOptions = interface; // type: OpenQA.Selenium.Chrome.ChromeOptions, namespace: OpenQA.Selenium.Chrome
  DNEdgeOptions = interface; // type: OpenQA.Selenium.Edge.EdgeOptions, namespace: OpenQA.Selenium.Edge
  DNFirefoxOptions = interface; // type: OpenQA.Selenium.Firefox.FirefoxOptions, namespace: OpenQA.Selenium.Firefox
  DNInternetExplorerOptions = interface; // type: OpenQA.Selenium.IE.InternetExplorerOptions, namespace: OpenQA.Selenium.IE
  DNOperaOptions = interface; // type: OpenQA.Selenium.Opera.OperaOptions, namespace: OpenQA.Selenium.Opera
  DNPhantomJSOptions = interface; // type: OpenQA.Selenium.PhantomJS.PhantomJSOptions, namespace: OpenQA.Selenium.PhantomJS
  DNSafariOptions = interface; // type: OpenQA.Selenium.Safari.SafariOptions, namespace: OpenQA.Selenium.Safari
  DNDriverService = interface; // type: OpenQA.Selenium.DriverService, namespace: OpenQA.Selenium
  DNChromeDriverService = interface; // type: OpenQA.Selenium.Chrome.ChromeDriverService, namespace: OpenQA.Selenium.Chrome
  DNEdgeDriverService = interface; // type: OpenQA.Selenium.Edge.EdgeDriverService, namespace: OpenQA.Selenium.Edge
  DNFirefoxDriverService = interface; // type: OpenQA.Selenium.Firefox.FirefoxDriverService, namespace: OpenQA.Selenium.Firefox
  DNInternetExplorerDriverService = interface; // type: OpenQA.Selenium.IE.InternetExplorerDriverService, namespace: OpenQA.Selenium.IE
  DNOperaDriverService = interface; // type: OpenQA.Selenium.Opera.OperaDriverService, namespace: OpenQA.Selenium.Opera
  DNPhantomJSDriverService = interface; // type: OpenQA.Selenium.PhantomJS.PhantomJSDriverService, namespace: OpenQA.Selenium.PhantomJS
  DNSafariDriverService = interface; // type: OpenQA.Selenium.Safari.SafariDriverService, namespace: OpenQA.Selenium.Safari
  DNFirefoxBinary = interface; // type: OpenQA.Selenium.Firefox.FirefoxBinary, namespace: OpenQA.Selenium.Firefox
  DNFirefoxDriverCommandExecutor = interface; // type: OpenQA.Selenium.Firefox.FirefoxDriverCommandExecutor, namespace: OpenQA.Selenium.Firefox
  DNFirefoxDriverServer = interface; // type: OpenQA.Selenium.Firefox.FirefoxDriverServer, namespace: OpenQA.Selenium.Firefox
  DNFirefoxExtension = interface; // type: OpenQA.Selenium.Firefox.FirefoxExtension, namespace: OpenQA.Selenium.Firefox
  DNFirefoxProfile = interface; // type: OpenQA.Selenium.Firefox.FirefoxProfile, namespace: OpenQA.Selenium.Firefox
  DNFirefoxProfileManager = interface; // type: OpenQA.Selenium.Firefox.FirefoxProfileManager, namespace: OpenQA.Selenium.Firefox
  DNIApplicationCache = interface; // type: OpenQA.Selenium.Html5.IApplicationCache, namespace: OpenQA.Selenium.Html5
  DNIHasApplicationCache = interface; // type: OpenQA.Selenium.Html5.IHasApplicationCache, namespace: OpenQA.Selenium.Html5
  DNIHasLocationContext = interface; // type: OpenQA.Selenium.Html5.IHasLocationContext, namespace: OpenQA.Selenium.Html5
  DNIHasWebStorage = interface; // type: OpenQA.Selenium.Html5.IHasWebStorage, namespace: OpenQA.Selenium.Html5
  DNILocalStorage = interface; // type: OpenQA.Selenium.Html5.ILocalStorage, namespace: OpenQA.Selenium.Html5
  DNILocationContext = interface; // type: OpenQA.Selenium.Html5.ILocationContext, namespace: OpenQA.Selenium.Html5
  DNISessionStorage = interface; // type: OpenQA.Selenium.Html5.ISessionStorage, namespace: OpenQA.Selenium.Html5
  DNIWebStorage = interface; // type: OpenQA.Selenium.Html5.IWebStorage, namespace: OpenQA.Selenium.Html5
  DNLocation = interface; // type: OpenQA.Selenium.Html5.Location, namespace: OpenQA.Selenium.Html5
  DNIAlert = interface; // type: OpenQA.Selenium.IAlert, namespace: OpenQA.Selenium
  DNIAllowsFileDetection = interface; // type: OpenQA.Selenium.IAllowsFileDetection, namespace: OpenQA.Selenium
  DNICapabilities = interface; // type: OpenQA.Selenium.ICapabilities, namespace: OpenQA.Selenium
  DNICookieJar = interface; // type: OpenQA.Selenium.ICookieJar, namespace: OpenQA.Selenium
  DNIFileDetector = interface; // type: OpenQA.Selenium.IFileDetector, namespace: OpenQA.Selenium
  DNIHasCapabilities = interface; // type: OpenQA.Selenium.IHasCapabilities, namespace: OpenQA.Selenium
  DNIHasInputDevices = interface; // type: OpenQA.Selenium.IHasInputDevices, namespace: OpenQA.Selenium
  DNIHasTouchScreen = interface; // type: OpenQA.Selenium.IHasTouchScreen, namespace: OpenQA.Selenium
  DNIJavaScriptExecutor = interface; // type: OpenQA.Selenium.IJavaScriptExecutor, namespace: OpenQA.Selenium
  DNIKeyboard = interface; // type: OpenQA.Selenium.IKeyboard, namespace: OpenQA.Selenium
  DNILocatable = interface; // type: OpenQA.Selenium.ILocatable, namespace: OpenQA.Selenium
  DNILogs = interface; // type: OpenQA.Selenium.ILogs, namespace: OpenQA.Selenium
  DNIMouse = interface; // type: OpenQA.Selenium.IMouse, namespace: OpenQA.Selenium
  DNINavigation = interface; // type: OpenQA.Selenium.INavigation, namespace: OpenQA.Selenium
  DNActionBuilder = interface; // type: OpenQA.Selenium.Interactions.ActionBuilder, namespace: OpenQA.Selenium.Interactions
  DNActions = interface; // type: OpenQA.Selenium.Interactions.Actions, namespace: OpenQA.Selenium.Interactions
  DNTouchActions = interface; // type: OpenQA.Selenium.Interactions.TouchActions, namespace: OpenQA.Selenium.Interactions
  DNActionSequence = interface; // type: OpenQA.Selenium.Interactions.ActionSequence, namespace: OpenQA.Selenium.Interactions
  DNIAction = interface; // type: OpenQA.Selenium.Interactions.IAction, namespace: OpenQA.Selenium.Interactions
  DNInputDevice = interface; // type: OpenQA.Selenium.Interactions.InputDevice, namespace: OpenQA.Selenium.Interactions
  DNInteraction = interface; // type: OpenQA.Selenium.Interactions.Interaction, namespace: OpenQA.Selenium.Interactions
  DNICoordinates = interface; // type: OpenQA.Selenium.Interactions.Internal.ICoordinates, namespace: OpenQA.Selenium.Interactions.Internal
  DNAsyncJavaScriptExecutor = interface; // type: OpenQA.Selenium.Internal.AsyncJavaScriptExecutor, namespace: OpenQA.Selenium.Internal
  DNIActionExecutor = interface; // type: OpenQA.Selenium.Internal.IActionExecutor, namespace: OpenQA.Selenium.Internal
  DNIFindsByClassName = interface; // type: OpenQA.Selenium.Internal.IFindsByClassName, namespace: OpenQA.Selenium.Internal
  DNIFindsByCssSelector = interface; // type: OpenQA.Selenium.Internal.IFindsByCssSelector, namespace: OpenQA.Selenium.Internal
  DNIFindsById = interface; // type: OpenQA.Selenium.Internal.IFindsById, namespace: OpenQA.Selenium.Internal
  DNIFindsByLinkText = interface; // type: OpenQA.Selenium.Internal.IFindsByLinkText, namespace: OpenQA.Selenium.Internal
  DNIFindsByName = interface; // type: OpenQA.Selenium.Internal.IFindsByName, namespace: OpenQA.Selenium.Internal
  DNIFindsByPartialLinkText = interface; // type: OpenQA.Selenium.Internal.IFindsByPartialLinkText, namespace: OpenQA.Selenium.Internal
  DNIFindsByTagName = interface; // type: OpenQA.Selenium.Internal.IFindsByTagName, namespace: OpenQA.Selenium.Internal
  DNIFindsByXPath = interface; // type: OpenQA.Selenium.Internal.IFindsByXPath, namespace: OpenQA.Selenium.Internal
  DNIWrapsDriver = interface; // type: OpenQA.Selenium.Internal.IWrapsDriver, namespace: OpenQA.Selenium.Internal
  DNIWrapsElement = interface; // type: OpenQA.Selenium.Internal.IWrapsElement, namespace: OpenQA.Selenium.Internal
  DNResourceUtilities = interface; // type: OpenQA.Selenium.Internal.ResourceUtilities, namespace: OpenQA.Selenium.Internal
  DNIOptions = interface; // type: OpenQA.Selenium.IOptions, namespace: OpenQA.Selenium
  DNIRotatable = interface; // type: OpenQA.Selenium.IRotatable, namespace: OpenQA.Selenium
  DNISearchContext = interface; // type: OpenQA.Selenium.ISearchContext, namespace: OpenQA.Selenium
  DNIWebDriver = interface; // type: OpenQA.Selenium.IWebDriver, namespace: OpenQA.Selenium
  DNIWebElement = interface; // type: OpenQA.Selenium.IWebElement, namespace: OpenQA.Selenium
  DNITakesScreenshot = interface; // type: OpenQA.Selenium.ITakesScreenshot, namespace: OpenQA.Selenium
  DNITargetLocator = interface; // type: OpenQA.Selenium.ITargetLocator, namespace: OpenQA.Selenium
  DNITimeouts = interface; // type: OpenQA.Selenium.ITimeouts, namespace: OpenQA.Selenium
  DNITouchScreen = interface; // type: OpenQA.Selenium.ITouchScreen, namespace: OpenQA.Selenium
  DNIWindow = interface; // type: OpenQA.Selenium.IWindow, namespace: OpenQA.Selenium
  DNKeys = interface; // type: OpenQA.Selenium.Keys, namespace: OpenQA.Selenium
  DNLogEntry = interface; // type: OpenQA.Selenium.LogEntry, namespace: OpenQA.Selenium
  DNLogType = interface; // type: OpenQA.Selenium.LogType, namespace: OpenQA.Selenium
  DNPlatform = interface; // type: OpenQA.Selenium.Platform, namespace: OpenQA.Selenium
  DNProxy = interface; // type: OpenQA.Selenium.Proxy, namespace: OpenQA.Selenium
  DNCapabilityType = interface; // type: OpenQA.Selenium.Remote.CapabilityType, namespace: OpenQA.Selenium.Remote
  DNCommand = interface; // type: OpenQA.Selenium.Remote.Command, namespace: OpenQA.Selenium.Remote
  DNCommandInfo = interface; // type: OpenQA.Selenium.Remote.CommandInfo, namespace: OpenQA.Selenium.Remote
  DNCommandInfoRepository = interface; // type: OpenQA.Selenium.Remote.CommandInfoRepository, namespace: OpenQA.Selenium.Remote
  DNW3CWireProtocolCommandInfoRepository = interface; // type: OpenQA.Selenium.Remote.W3CWireProtocolCommandInfoRepository, namespace: OpenQA.Selenium.Remote
  DNWebDriverWireProtocolCommandInfoRepository = interface; // type: OpenQA.Selenium.Remote.WebDriverWireProtocolCommandInfoRepository, namespace: OpenQA.Selenium.Remote
  DNDesiredCapabilities = interface; // type: OpenQA.Selenium.Remote.DesiredCapabilities, namespace: OpenQA.Selenium.Remote
  DNDriverCommand = interface; // type: OpenQA.Selenium.Remote.DriverCommand, namespace: OpenQA.Selenium.Remote
  DNErrorResponse = interface; // type: OpenQA.Selenium.Remote.ErrorResponse, namespace: OpenQA.Selenium.Remote
  DNICommandExecutor = interface; // type: OpenQA.Selenium.Remote.ICommandExecutor, namespace: OpenQA.Selenium.Remote
  DNIHasSessionId = interface; // type: OpenQA.Selenium.Remote.IHasSessionId, namespace: OpenQA.Selenium.Remote
  DNLocalFileDetector = interface; // type: OpenQA.Selenium.Remote.LocalFileDetector, namespace: OpenQA.Selenium.Remote
  DNRemoteApplicationCache = interface; // type: OpenQA.Selenium.Remote.RemoteApplicationCache, namespace: OpenQA.Selenium.Remote
  DNRemoteLocalStorage = interface; // type: OpenQA.Selenium.Remote.RemoteLocalStorage, namespace: OpenQA.Selenium.Remote
  DNRemoteLocationContext = interface; // type: OpenQA.Selenium.Remote.RemoteLocationContext, namespace: OpenQA.Selenium.Remote
  DNRemoteLogs = interface; // type: OpenQA.Selenium.Remote.RemoteLogs, namespace: OpenQA.Selenium.Remote
  DNRemoteSessionStorage = interface; // type: OpenQA.Selenium.Remote.RemoteSessionStorage, namespace: OpenQA.Selenium.Remote
  DNRemoteTouchScreen = interface; // type: OpenQA.Selenium.Remote.RemoteTouchScreen, namespace: OpenQA.Selenium.Remote
  DNRemoteWebDriver = interface; // type: OpenQA.Selenium.Remote.RemoteWebDriver, namespace: OpenQA.Selenium.Remote
  DNChromeDriver = interface; // type: OpenQA.Selenium.Chrome.ChromeDriver, namespace: OpenQA.Selenium.Chrome
  DNEdgeDriver = interface; // type: OpenQA.Selenium.Edge.EdgeDriver, namespace: OpenQA.Selenium.Edge
  DNFirefoxDriver = interface; // type: OpenQA.Selenium.Firefox.FirefoxDriver, namespace: OpenQA.Selenium.Firefox
  DNInternetExplorerDriver = interface; // type: OpenQA.Selenium.IE.InternetExplorerDriver, namespace: OpenQA.Selenium.IE
  DNOperaDriver = interface; // type: OpenQA.Selenium.Opera.OperaDriver, namespace: OpenQA.Selenium.Opera
  DNPhantomJSDriver = interface; // type: OpenQA.Selenium.PhantomJS.PhantomJSDriver, namespace: OpenQA.Selenium.PhantomJS
  DNSafariDriver = interface; // type: OpenQA.Selenium.Safari.SafariDriver, namespace: OpenQA.Selenium.Safari
  DNRemoteWebElement = interface; // type: OpenQA.Selenium.Remote.RemoteWebElement, namespace: OpenQA.Selenium.Remote
  DNChromeWebElement = interface; // type: OpenQA.Selenium.Chrome.ChromeWebElement, namespace: OpenQA.Selenium.Chrome
  DNEdgeWebElement = interface; // type: OpenQA.Selenium.Edge.EdgeWebElement, namespace: OpenQA.Selenium.Edge
  DNFirefoxWebElement = interface; // type: OpenQA.Selenium.Firefox.FirefoxWebElement, namespace: OpenQA.Selenium.Firefox
  DNInternetExplorerWebElement = interface; // type: OpenQA.Selenium.IE.InternetExplorerWebElement, namespace: OpenQA.Selenium.IE
  DNOperaWebElement = interface; // type: OpenQA.Selenium.Opera.OperaWebElement, namespace: OpenQA.Selenium.Opera
  DNPhantomJSWebElement = interface; // type: OpenQA.Selenium.PhantomJS.PhantomJSWebElement, namespace: OpenQA.Selenium.PhantomJS
  DNRemoteWebStorage = interface; // type: OpenQA.Selenium.Remote.RemoteWebStorage, namespace: OpenQA.Selenium.Remote
  DNResponse = interface; // type: OpenQA.Selenium.Remote.Response, namespace: OpenQA.Selenium.Remote
  DNSessionId = interface; // type: OpenQA.Selenium.Remote.SessionId, namespace: OpenQA.Selenium.Remote
  DNStackTraceElement = interface; // type: OpenQA.Selenium.Remote.StackTraceElement, namespace: OpenQA.Selenium.Remote
  DNScreenshot = interface; // type: OpenQA.Selenium.Screenshot, namespace: OpenQA.Selenium
  DNWebDriverException = interface; // type: OpenQA.Selenium.WebDriverException, namespace: OpenQA.Selenium
  DNDriverServiceNotFoundException = interface; // type: OpenQA.Selenium.DriverServiceNotFoundException, namespace: OpenQA.Selenium
  DNElementNotVisibleException = interface; // type: OpenQA.Selenium.ElementNotVisibleException, namespace: OpenQA.Selenium
  DNInvalidCookieDomainException = interface; // type: OpenQA.Selenium.InvalidCookieDomainException, namespace: OpenQA.Selenium
  DNInvalidElementStateException = interface; // type: OpenQA.Selenium.InvalidElementStateException, namespace: OpenQA.Selenium
  DNNotFoundException = interface; // type: OpenQA.Selenium.NotFoundException, namespace: OpenQA.Selenium
  DNNoAlertPresentException = interface; // type: OpenQA.Selenium.NoAlertPresentException, namespace: OpenQA.Selenium
  DNNoSuchElementException = interface; // type: OpenQA.Selenium.NoSuchElementException, namespace: OpenQA.Selenium
  DNInvalidSelectorException = interface; // type: OpenQA.Selenium.InvalidSelectorException, namespace: OpenQA.Selenium
  DNNoSuchFrameException = interface; // type: OpenQA.Selenium.NoSuchFrameException, namespace: OpenQA.Selenium
  DNNoSuchWindowException = interface; // type: OpenQA.Selenium.NoSuchWindowException, namespace: OpenQA.Selenium
  DNStaleElementReferenceException = interface; // type: OpenQA.Selenium.StaleElementReferenceException, namespace: OpenQA.Selenium
  DNUnableToSetCookieException = interface; // type: OpenQA.Selenium.UnableToSetCookieException, namespace: OpenQA.Selenium
  DNUnhandledAlertException = interface; // type: OpenQA.Selenium.UnhandledAlertException, namespace: OpenQA.Selenium
  DNWebDriverTimeoutException = interface; // type: OpenQA.Selenium.WebDriverTimeoutException, namespace: OpenQA.Selenium
  DNXPathLookupException = interface; // type: OpenQA.Selenium.XPathLookupException, namespace: OpenQA.Selenium
  DNICommandServer = interface; // type: OpenQA.Selenium.Remote.ICommandServer, namespace: OpenQA.Selenium.Remote


{ objects }

  //-------------namespace: OpenQA.Selenium----------------
  DNByClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1E1ED29E-C813-5488-82FE-0CEACF113EE6}']
  { static methods } 

    {class} function Id(idToFind: string): DNBy;
    {class} function LinkText(linkTextToFind: string): DNBy;
    {class} function Name(nameToFind: string): DNBy;
    {class} function XPath(xpathToFind: string): DNBy;
    {class} function ClassName(classNameToFind: string): DNBy;
    {class} function PartialLinkText(partialLinkTextToFind: string): DNBy;
    {class} function TagName(tagNameToFind: string): DNBy;
    {class} function CssSelector(cssSelectorToFind: string): DNBy;

  end;

  [DNTypeName('OpenQA.Selenium.By')]
  DNBy = interface(DDN.mscorlib.DNObject)
  ['{0D3C66E0-B0AE-3D83-B97D-1032477E3C57}']
  { methods } 

    function FindElement(context: DNISearchContext): DNIWebElement;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  end;

  TDNBy = class(TDNGenericImport<DNByClass, DNBy>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromeMobileEmulationDeviceSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{53559B15-1D1A-55D3-8124-7EADA7D75BAB}']
  { constructors } 

    {class} function init: DNChromeMobileEmulationDeviceSettings; overload;
    {class} function init(userAgent: string): DNChromeMobileEmulationDeviceSettings; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromeMobileEmulationDeviceSettings')]
  DNChromeMobileEmulationDeviceSettings = interface(DDN.mscorlib.DNObject)
  ['{3C208706-0EB6-3766-A785-20B97C490821}']
  { getters & setters } 

    function get_UserAgent: string;
    procedure set_UserAgent(value: string);
    function get_Width: Int64;
    procedure set_Width(value: Int64);
    function get_Height: Int64;
    procedure set_Height(value: Int64);
    function get_PixelRatio: Double;
    procedure set_PixelRatio(value: Double);
    function get_EnableTouchEvents: Boolean;
    procedure set_EnableTouchEvents(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property UserAgent: string read get_UserAgent write set_UserAgent;
    property Width: Int64 read get_Width write set_Width;
    property Height: Int64 read get_Height write set_Height;
    property PixelRatio: Double read get_PixelRatio write set_PixelRatio;
    property EnableTouchEvents: Boolean read get_EnableTouchEvents write set_EnableTouchEvents;
  end;

  TDNChromeMobileEmulationDeviceSettings = class(TDNGenericImport<DNChromeMobileEmulationDeviceSettingsClass, DNChromeMobileEmulationDeviceSettings>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromePerformanceLoggingPreferencesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{89FFDBAD-B1E6-5C3D-8503-F1846C007CA8}']
  { constructors } 

    {class} function init: DNChromePerformanceLoggingPreferences;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromePerformanceLoggingPreferences')]
  DNChromePerformanceLoggingPreferences = interface(DDN.mscorlib.DNObject)
  ['{38C0FE08-CE87-3C27-9715-F244616DD9F6}']
  { getters & setters } 

    function get_IsCollectingNetworkEvents: Boolean;
    procedure set_IsCollectingNetworkEvents(value: Boolean);
    function get_IsCollectingPageEvents: Boolean;
    procedure set_IsCollectingPageEvents(value: Boolean);
    function get_IsCollectingTimelineEvents: Boolean;
    procedure set_IsCollectingTimelineEvents(value: Boolean);
    function get_BufferUsageReportingInterval: DDN.mscorlib.DNTimeSpan;
    procedure set_BufferUsageReportingInterval(value: DDN.mscorlib.DNTimeSpan);
    function get_TracingCategories: string;

  { methods } 

    procedure AddTracingCategory(category: string);
    procedure AddTracingCategories(categoriesToAdd: TArray<string>); overload;
    procedure AddTracingCategories(categoriesToAdd: DDN.mscorlib.DNIEnumerable<string>); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsCollectingNetworkEvents: Boolean read get_IsCollectingNetworkEvents write set_IsCollectingNetworkEvents;
    property IsCollectingPageEvents: Boolean read get_IsCollectingPageEvents write set_IsCollectingPageEvents;
    property IsCollectingTimelineEvents: Boolean read get_IsCollectingTimelineEvents write set_IsCollectingTimelineEvents;
    property BufferUsageReportingInterval: DDN.mscorlib.DNTimeSpan read get_BufferUsageReportingInterval write set_BufferUsageReportingInterval;
    property TracingCategories: string read get_TracingCategories;
  end;

  TDNChromePerformanceLoggingPreferences = class(TDNGenericImport<DNChromePerformanceLoggingPreferencesClass, DNChromePerformanceLoggingPreferences>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNCookieClass = interface(DDN.mscorlib.DNObjectClass)
  ['{781198C3-B0F7-5102-AD3F-D0F358207430}']
  { constructors } 

    {class} function init(name: string; value: string; path: string): DNCookie; overload;
    {class} function init(name: string; value: string): DNCookie; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Cookie')]
  DNCookie = interface(DDN.mscorlib.DNObject)
  ['{1E0B093D-F58B-3B67-8C26-03BE1DA74BA0}']
  { getters & setters } 

    function get_Name: string;
    function get_Value: string;
    function get_Domain: string;
    function get_Path: string;
    function get_Secure: Boolean;
    function get_IsHttpOnly: Boolean;

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Name: string read get_Name;
    property Value: string read get_Value;
    property Domain: string read get_Domain;
    property Path: string read get_Path;
    property Secure: Boolean read get_Secure;
    property IsHttpOnly: Boolean read get_IsHttpOnly;
  end;

  TDNCookie = class(TDNGenericImport<DNCookieClass, DNCookie>) end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  DNReturnedCookieClass = interface(DNCookieClass)
  ['{1AAEB792-4F74-5302-8718-B42B6AE57D93}']
  end;

  [DNTypeName('OpenQA.Selenium.Internal.ReturnedCookie')]
  DNReturnedCookie = interface(DNCookie)
  ['{9B490816-BEDA-35C0-B2C9-BB0307279B73}']
  { getters & setters } 

    function get_Secure: Boolean;
    function get_IsHttpOnly: Boolean;
    function get_Name: string;
    function get_Value: string;
    function get_Domain: string;
    function get_Path: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Secure: Boolean read get_Secure;
    property IsHttpOnly: Boolean read get_IsHttpOnly;
    property Name: string read get_Name;
    property Value: string read get_Value;
    property Domain: string read get_Domain;
    property Path: string read get_Path;
  end;

  TDNReturnedCookie = class(TDNGenericImport<DNReturnedCookieClass, DNReturnedCookie>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNDefaultFileDetectorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{914CC561-D9B6-55D2-BD56-294F7D952CEB}']
  { constructors } 

    {class} function init: DNDefaultFileDetector;

  end;

  [DNTypeName('OpenQA.Selenium.DefaultFileDetector')]
  DNDefaultFileDetector = interface(DDN.mscorlib.DNObject)
  ['{E445503C-F2F7-3C48-B45A-BFA64DFFD10D}']
  { methods } 

    function IsFile(keySequence: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDefaultFileDetector = class(TDNGenericImport<DNDefaultFileDetectorClass, DNDefaultFileDetector>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNDriverOptionsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{EA66603C-F72E-5321-8F04-0528AF46AE7E}']
  end;

  [DNTypeName('OpenQA.Selenium.DriverOptions')]
  DNDriverOptions = interface(DDN.mscorlib.DNObject)
  ['{490818E0-2F36-3C2C-9B0D-9FBBB36BE8AA}']
  { methods } 

    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject);
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDriverOptions = class(TDNGenericImport<DNDriverOptionsClass, DNDriverOptions>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromeOptionsClass = interface(DNDriverOptionsClass)
  ['{E64D06ED-7F81-51B3-B7D9-5423D35C94D3}']
  { constructors } 

    {class} function init: DNChromeOptions;

  { static fields getter & setter } 

   function __fakeFieldGet_Capability: string;

  { static fields } 

    {class} property Capability: string read __fakeFieldGet_Capability;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromeOptions')]
  DNChromeOptions = interface(DNDriverOptions)
  ['{883E3B0F-7348-3C5B-A880-87A258988D09}']
  { getters & setters } 

    function get_BinaryLocation: string;
    procedure set_BinaryLocation(value: string);
    function get_LeaveBrowserRunning: Boolean;
    procedure set_LeaveBrowserRunning(value: Boolean);
    function get_Proxy: DNProxy;
    procedure set_Proxy(value: DNProxy);
    function get_DebuggerAddress: string;
    procedure set_DebuggerAddress(value: string);
    function get_MinidumpPath: string;
    procedure set_MinidumpPath(value: string);
    function get_PerformanceLoggingPreferences: DNChromePerformanceLoggingPreferences;
    procedure set_PerformanceLoggingPreferences(value: DNChromePerformanceLoggingPreferences);

  { methods } 

    procedure AddArgument(argument: string);
    procedure AddArguments(argumentsToAdd: TArray<string>); overload;
    procedure AddArguments(argumentsToAdd: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddExcludedArgument(argument: string);
    procedure AddExcludedArguments(argumentsToExclude: TArray<string>); overload;
    procedure AddExcludedArguments(argumentsToExclude: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddExtension(pathToExtension: string);
    procedure AddExtensions(extensions: TArray<string>); overload;
    procedure AddExtensions(extensions: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddEncodedExtension(extension: string);
    procedure AddEncodedExtensions(extensions: TArray<string>); overload;
    procedure AddEncodedExtensions(extensions: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddUserProfilePreference(preferenceName: string; preferenceValue: DDN.mscorlib.DNObject);
    procedure AddLocalStatePreference(preferenceName: string; preferenceValue: DDN.mscorlib.DNObject);
    procedure EnableMobileEmulation(deviceName: string); overload;
    procedure EnableMobileEmulation(deviceSettings: DNChromeMobileEmulationDeviceSettings); overload;
    procedure AddWindowType(windowType: string);
    procedure AddWindowTypes(windowTypesToAdd: TArray<string>); overload;
    procedure AddWindowTypes(windowTypesToAdd: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject; isGlobalCapability: Boolean); overload;
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property BinaryLocation: string read get_BinaryLocation write set_BinaryLocation;
    property LeaveBrowserRunning: Boolean read get_LeaveBrowserRunning write set_LeaveBrowserRunning;
    property Proxy: DNProxy read get_Proxy write set_Proxy;
    property DebuggerAddress: string read get_DebuggerAddress write set_DebuggerAddress;
    property MinidumpPath: string read get_MinidumpPath write set_MinidumpPath;
    property PerformanceLoggingPreferences: DNChromePerformanceLoggingPreferences read get_PerformanceLoggingPreferences write set_PerformanceLoggingPreferences;
  end;

  TDNChromeOptions = class(TDNGenericImport<DNChromeOptionsClass, DNChromeOptions>) end;

  //-------------namespace: OpenQA.Selenium.Edge----------------
  DNEdgeOptionsClass = interface(DNDriverOptionsClass)
  ['{941C2D97-ACF8-5CE0-8AD2-0E69A4E665B3}']
  { constructors } 

    {class} function init: DNEdgeOptions;

  end;

  [DNTypeName('OpenQA.Selenium.Edge.EdgeOptions')]
  DNEdgeOptions = interface(DNDriverOptions)
  ['{EAF53844-470F-3FA5-BCB2-296C902128C7}']
  { getters & setters } 

    function get_PageLoadStrategy: DNEdgePageLoadStrategy;
    procedure set_PageLoadStrategy(value: DNEdgePageLoadStrategy);

  { methods } 

    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject);
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property PageLoadStrategy: DNEdgePageLoadStrategy read get_PageLoadStrategy write set_PageLoadStrategy;
  end;

  TDNEdgeOptions = class(TDNGenericImport<DNEdgeOptionsClass, DNEdgeOptions>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxOptionsClass = interface(DNDriverOptionsClass)
  ['{6E0ED74C-1608-5733-B2B8-795CC6D8795C}']
  { constructors } 

    {class} function init: DNFirefoxOptions;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxOptions')]
  DNFirefoxOptions = interface(DNDriverOptions)
  ['{62486E1E-5771-3345-A7B8-A631528810A5}']
  { getters & setters } 

    function get_UseLegacyImplementation: Boolean;
    procedure set_UseLegacyImplementation(value: Boolean);
    function get_Profile: DNFirefoxProfile;
    procedure set_Profile(value: DNFirefoxProfile);
    function get_BrowserExecutableLocation: string;
    procedure set_BrowserExecutableLocation(value: string);
    function get_LogLevel: DNFirefoxDriverLogLevel;
    procedure set_LogLevel(value: DNFirefoxDriverLogLevel);

  { methods } 

    procedure AddArgument(argumentName: string);
    procedure AddArguments(argumentsToAdd: TArray<string>); overload;
    procedure AddArguments(argumentsToAdd: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure SetPreference(preferenceName: string; preferenceValue: Boolean); overload;
    procedure SetPreference(preferenceName: string; preferenceValue: Int32); overload;
    procedure SetPreference(preferenceName: string; preferenceValue: Int64); overload;
    procedure SetPreference(preferenceName: string; preferenceValue: Double); overload;
    procedure SetPreference(preferenceName: string; preferenceValue: string); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject; isGlobalCapability: Boolean); overload;
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property UseLegacyImplementation: Boolean read get_UseLegacyImplementation write set_UseLegacyImplementation;
    property Profile: DNFirefoxProfile read get_Profile write set_Profile;
    property BrowserExecutableLocation: string read get_BrowserExecutableLocation write set_BrowserExecutableLocation;
    property LogLevel: DNFirefoxDriverLogLevel read get_LogLevel write set_LogLevel;
  end;

  TDNFirefoxOptions = class(TDNGenericImport<DNFirefoxOptionsClass, DNFirefoxOptions>) end;

  //-------------namespace: OpenQA.Selenium.IE----------------
  DNInternetExplorerOptionsClass = interface(DNDriverOptionsClass)
  ['{58028C99-9FF7-5B2D-AF23-070222FC5F9C}']
  { constructors } 

    {class} function init: DNInternetExplorerOptions;

  { static fields getter & setter } 

   function __fakeFieldGet_Capability: string;

  { static fields } 

    {class} property Capability: string read __fakeFieldGet_Capability;

  end;

  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerOptions')]
  DNInternetExplorerOptions = interface(DNDriverOptions)
  ['{4084C647-E9C2-3ADA-A6E7-B4C8F3D86F5E}']
  { getters & setters } 

    function get_IntroduceInstabilityByIgnoringProtectedModeSettings: Boolean;
    procedure set_IntroduceInstabilityByIgnoringProtectedModeSettings(value: Boolean);
    function get_IgnoreZoomLevel: Boolean;
    procedure set_IgnoreZoomLevel(value: Boolean);
    function get_EnableNativeEvents: Boolean;
    procedure set_EnableNativeEvents(value: Boolean);
    function get_RequireWindowFocus: Boolean;
    procedure set_RequireWindowFocus(value: Boolean);
    function get_InitialBrowserUrl: string;
    procedure set_InitialBrowserUrl(value: string);
    function get_ElementScrollBehavior: DNInternetExplorerElementScrollBehavior;
    procedure set_ElementScrollBehavior(value: DNInternetExplorerElementScrollBehavior);
    function get_UnexpectedAlertBehavior: DNInternetExplorerUnexpectedAlertBehavior;
    procedure set_UnexpectedAlertBehavior(value: DNInternetExplorerUnexpectedAlertBehavior);
    function get_PageLoadStrategy: DNInternetExplorerPageLoadStrategy;
    procedure set_PageLoadStrategy(value: DNInternetExplorerPageLoadStrategy);
    function get_EnablePersistentHover: Boolean;
    procedure set_EnablePersistentHover(value: Boolean);
    function get_BrowserAttachTimeout: DDN.mscorlib.DNTimeSpan;
    procedure set_BrowserAttachTimeout(value: DDN.mscorlib.DNTimeSpan);
    function get_FileUploadDialogTimeout: DDN.mscorlib.DNTimeSpan;
    procedure set_FileUploadDialogTimeout(value: DDN.mscorlib.DNTimeSpan);
    function get_ForceCreateProcessApi: Boolean;
    procedure set_ForceCreateProcessApi(value: Boolean);
    function get_ForceShellWindowsApi: Boolean;
    procedure set_ForceShellWindowsApi(value: Boolean);
    function get_ValidateCookieDocumentType: Boolean;
    procedure set_ValidateCookieDocumentType(value: Boolean);
    function get_BrowserCommandLineArguments: string;
    procedure set_BrowserCommandLineArguments(value: string);
    function get_Proxy: DNProxy;
    procedure set_Proxy(value: DNProxy);
    function get_UsePerProcessProxy: Boolean;
    procedure set_UsePerProcessProxy(value: Boolean);
    function get_EnsureCleanSession: Boolean;
    procedure set_EnsureCleanSession(value: Boolean);
    function get_EnableFullPageScreenshot: Boolean;
    procedure set_EnableFullPageScreenshot(value: Boolean);

  { methods } 

    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject; isGlobalCapability: Boolean); overload;
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IntroduceInstabilityByIgnoringProtectedModeSettings: Boolean read get_IntroduceInstabilityByIgnoringProtectedModeSettings write set_IntroduceInstabilityByIgnoringProtectedModeSettings;
    property IgnoreZoomLevel: Boolean read get_IgnoreZoomLevel write set_IgnoreZoomLevel;
    property EnableNativeEvents: Boolean read get_EnableNativeEvents write set_EnableNativeEvents;
    property RequireWindowFocus: Boolean read get_RequireWindowFocus write set_RequireWindowFocus;
    property InitialBrowserUrl: string read get_InitialBrowserUrl write set_InitialBrowserUrl;
    property ElementScrollBehavior: DNInternetExplorerElementScrollBehavior read get_ElementScrollBehavior write set_ElementScrollBehavior;
    property UnexpectedAlertBehavior: DNInternetExplorerUnexpectedAlertBehavior read get_UnexpectedAlertBehavior write set_UnexpectedAlertBehavior;
    property PageLoadStrategy: DNInternetExplorerPageLoadStrategy read get_PageLoadStrategy write set_PageLoadStrategy;
    property EnablePersistentHover: Boolean read get_EnablePersistentHover write set_EnablePersistentHover;
    property BrowserAttachTimeout: DDN.mscorlib.DNTimeSpan read get_BrowserAttachTimeout write set_BrowserAttachTimeout;
    property FileUploadDialogTimeout: DDN.mscorlib.DNTimeSpan read get_FileUploadDialogTimeout write set_FileUploadDialogTimeout;
    property ForceCreateProcessApi: Boolean read get_ForceCreateProcessApi write set_ForceCreateProcessApi;
    property ForceShellWindowsApi: Boolean read get_ForceShellWindowsApi write set_ForceShellWindowsApi;
    property ValidateCookieDocumentType: Boolean read get_ValidateCookieDocumentType write set_ValidateCookieDocumentType;
    property BrowserCommandLineArguments: string read get_BrowserCommandLineArguments write set_BrowserCommandLineArguments;
    property Proxy: DNProxy read get_Proxy write set_Proxy;
    property UsePerProcessProxy: Boolean read get_UsePerProcessProxy write set_UsePerProcessProxy;
    property EnsureCleanSession: Boolean read get_EnsureCleanSession write set_EnsureCleanSession;
    property EnableFullPageScreenshot: Boolean read get_EnableFullPageScreenshot write set_EnableFullPageScreenshot;
  end;

  TDNInternetExplorerOptions = class(TDNGenericImport<DNInternetExplorerOptionsClass, DNInternetExplorerOptions>) end;

  //-------------namespace: OpenQA.Selenium.Opera----------------
  DNOperaOptionsClass = interface(DNDriverOptionsClass)
  ['{31599037-C39A-5A0B-97D9-52F0566789CC}']
  { constructors } 

    {class} function init: DNOperaOptions;

  { static fields getter & setter } 

   function __fakeFieldGet_Capability: string;

  { static fields } 

    {class} property Capability: string read __fakeFieldGet_Capability;

  end;

  [DNTypeName('OpenQA.Selenium.Opera.OperaOptions')]
  DNOperaOptions = interface(DNDriverOptions)
  ['{E889D1CF-CB96-3488-A4FE-3D97966AE5A3}']
  { getters & setters } 

    function get_BinaryLocation: string;
    procedure set_BinaryLocation(value: string);
    function get_LeaveBrowserRunning: Boolean;
    procedure set_LeaveBrowserRunning(value: Boolean);
    function get_Proxy: DNProxy;
    procedure set_Proxy(value: DNProxy);
    function get_DebuggerAddress: string;
    procedure set_DebuggerAddress(value: string);
    function get_MinidumpPath: string;
    procedure set_MinidumpPath(value: string);

  { methods } 

    procedure AddArgument(argument: string);
    procedure AddArguments(argumentsToAdd: TArray<string>); overload;
    procedure AddArguments(argumentsToAdd: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddExcludedArgument(argument: string);
    procedure AddExcludedArguments(argumentsToExclude: TArray<string>); overload;
    procedure AddExcludedArguments(argumentsToExclude: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddExtension(pathToExtension: string);
    procedure AddExtensions(extensions: TArray<string>); overload;
    procedure AddExtensions(extensions: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddEncodedExtension(extension: string);
    procedure AddEncodedExtensions(extensions: TArray<string>); overload;
    procedure AddEncodedExtensions(extensions: DDN.mscorlib.DNIEnumerable<string>); overload;
    procedure AddUserProfilePreference(preferenceName: string; preferenceValue: DDN.mscorlib.DNObject);
    procedure AddLocalStatePreference(preferenceName: string; preferenceValue: DDN.mscorlib.DNObject);
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject); overload;
    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject; isGlobalCapability: Boolean); overload;
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property BinaryLocation: string read get_BinaryLocation write set_BinaryLocation;
    property LeaveBrowserRunning: Boolean read get_LeaveBrowserRunning write set_LeaveBrowserRunning;
    property Proxy: DNProxy read get_Proxy write set_Proxy;
    property DebuggerAddress: string read get_DebuggerAddress write set_DebuggerAddress;
    property MinidumpPath: string read get_MinidumpPath write set_MinidumpPath;
  end;

  TDNOperaOptions = class(TDNGenericImport<DNOperaOptionsClass, DNOperaOptions>) end;

  //-------------namespace: OpenQA.Selenium.PhantomJS----------------
  DNPhantomJSOptionsClass = interface(DNDriverOptionsClass)
  ['{906D3BA4-0F24-5CAC-9327-A5165EADA4AD}']
  { constructors } 

    {class} function init: DNPhantomJSOptions;

  end;

  [DNTypeName('OpenQA.Selenium.PhantomJS.PhantomJSOptions')]
  DNPhantomJSOptions = interface(DNDriverOptions)
  ['{80DC90AE-F62E-3915-BA87-C13C7DAE9E1B}']
  { methods } 

    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject);
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPhantomJSOptions = class(TDNGenericImport<DNPhantomJSOptionsClass, DNPhantomJSOptions>) end;

  //-------------namespace: OpenQA.Selenium.Safari----------------
  DNSafariOptionsClass = interface(DNDriverOptionsClass)
  ['{2928E3C0-DB36-59E8-A94C-675271D575DA}']
  { constructors } 

    {class} function init: DNSafariOptions;

  end;

  [DNTypeName('OpenQA.Selenium.Safari.SafariOptions')]
  DNSafariOptions = interface(DNDriverOptions)
  ['{849EEE56-BBC8-3B1D-A536-0426847CB908}']
  { methods } 

    procedure AddAdditionalCapability(capabilityName: string; capabilityValue: DDN.mscorlib.DNObject);
    function ToCapabilities: DNICapabilities;
    procedure SetLoggingPreference(logType: string; logLevel: DNLogLevel);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNSafariOptions = class(TDNGenericImport<DNSafariOptionsClass, DNSafariOptions>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNDriverServiceClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2C2080D5-1C91-57CA-8729-63A9C4D87AB4}']
  end;

  [DNTypeName('OpenQA.Selenium.DriverService')]
  DNDriverService = interface(DDN.mscorlib.DNObject)
  ['{303A62C5-C5A0-3BDC-AF5E-B6B2AD4B44F9}']
  { getters & setters } 

    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNDriverService = class(TDNGenericImport<DNDriverServiceClass, DNDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromeDriverServiceClass = interface(DNDriverServiceClass)
  ['{167FCE7E-44BF-5018-BA60-E7293440B3DF}']
  { static methods } 

    {class} function CreateDefaultService: DNChromeDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNChromeDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNChromeDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromeDriverService')]
  DNChromeDriverService = interface(DNDriverService)
  ['{574CD4CA-180F-3414-9845-7E5736D1A7AD}']
  { getters & setters } 

    function get_LogPath: string;
    procedure set_LogPath(value: string);
    function get_UrlPathPrefix: string;
    procedure set_UrlPathPrefix(value: string);
    function get_PortServerAddress: string;
    procedure set_PortServerAddress(value: string);
    function get_AndroidDebugBridgePort: Int32;
    procedure set_AndroidDebugBridgePort(value: Int32);
    function get_EnableVerboseLogging: Boolean;
    procedure set_EnableVerboseLogging(value: Boolean);
    function get_WhitelistedIPAddresses: string;
    procedure set_WhitelistedIPAddresses(value: string);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LogPath: string read get_LogPath write set_LogPath;
    property UrlPathPrefix: string read get_UrlPathPrefix write set_UrlPathPrefix;
    property PortServerAddress: string read get_PortServerAddress write set_PortServerAddress;
    property AndroidDebugBridgePort: Int32 read get_AndroidDebugBridgePort write set_AndroidDebugBridgePort;
    property EnableVerboseLogging: Boolean read get_EnableVerboseLogging write set_EnableVerboseLogging;
    property WhitelistedIPAddresses: string read get_WhitelistedIPAddresses write set_WhitelistedIPAddresses;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNChromeDriverService = class(TDNGenericImport<DNChromeDriverServiceClass, DNChromeDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Edge----------------
  DNEdgeDriverServiceClass = interface(DNDriverServiceClass)
  ['{75A3746E-56C3-5258-BF1A-214DC2E43AFB}']
  { static methods } 

    {class} function CreateDefaultService: DNEdgeDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNEdgeDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNEdgeDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string; port: Int32): DNEdgeDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Edge.EdgeDriverService')]
  DNEdgeDriverService = interface(DNDriverService)
  ['{405A3E70-58F3-3DFA-ACD9-9BAB4FFE3E8F}']
  { getters & setters } 

    function get_Host: string;
    procedure set_Host(value: string);
    function get_Package: string;
    procedure set_Package(value: string);
    function get_UseVerboseLogging: Boolean;
    procedure set_UseVerboseLogging(value: Boolean);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Host: string read get_Host write set_Host;
    property &Package: string read get_Package write set_Package;
    property UseVerboseLogging: Boolean read get_UseVerboseLogging write set_UseVerboseLogging;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNEdgeDriverService = class(TDNGenericImport<DNEdgeDriverServiceClass, DNEdgeDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxDriverServiceClass = interface(DNDriverServiceClass)
  ['{2940B0A6-19EC-5AC2-9751-17DF06843CE0}']
  { static methods } 

    {class} function CreateDefaultService: DNFirefoxDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNFirefoxDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNFirefoxDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxDriverService')]
  DNFirefoxDriverService = interface(DNDriverService)
  ['{BBA431A5-6748-3CA2-9382-0FFFC65282A5}']
  { getters & setters } 

    function get_FirefoxBinaryPath: string;
    procedure set_FirefoxBinaryPath(value: string);
    function get_BrowserCommunicationPort: Int32;
    procedure set_BrowserCommunicationPort(value: Int32);
    function get_Host: string;
    procedure set_Host(value: string);
    function get_ConnectToRunningBrowser: Boolean;
    procedure set_ConnectToRunningBrowser(value: Boolean);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FirefoxBinaryPath: string read get_FirefoxBinaryPath write set_FirefoxBinaryPath;
    property BrowserCommunicationPort: Int32 read get_BrowserCommunicationPort write set_BrowserCommunicationPort;
    property Host: string read get_Host write set_Host;
    property ConnectToRunningBrowser: Boolean read get_ConnectToRunningBrowser write set_ConnectToRunningBrowser;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNFirefoxDriverService = class(TDNGenericImport<DNFirefoxDriverServiceClass, DNFirefoxDriverService>) end;

  //-------------namespace: OpenQA.Selenium.IE----------------
  DNInternetExplorerDriverServiceClass = interface(DNDriverServiceClass)
  ['{9FA580E6-BBCD-5709-B6BF-D825C90DC2A1}']
  { static methods } 

    {class} function CreateDefaultService: DNInternetExplorerDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNInternetExplorerDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNInternetExplorerDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerDriverService')]
  DNInternetExplorerDriverService = interface(DNDriverService)
  ['{7ADA687F-CA2A-30EA-9B3E-7C08AA4EE663}']
  { getters & setters } 

    function get_Host: string;
    procedure set_Host(value: string);
    function get_LogFile: string;
    procedure set_LogFile(value: string);
    function get_LoggingLevel: DNInternetExplorerDriverLogLevel;
    procedure set_LoggingLevel(value: DNInternetExplorerDriverLogLevel);
    function get_LibraryExtractionPath: string;
    procedure set_LibraryExtractionPath(value: string);
    function get_WhitelistedIPAddresses: string;
    procedure set_WhitelistedIPAddresses(value: string);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Host: string read get_Host write set_Host;
    property LogFile: string read get_LogFile write set_LogFile;
    property LoggingLevel: DNInternetExplorerDriverLogLevel read get_LoggingLevel write set_LoggingLevel;
    property LibraryExtractionPath: string read get_LibraryExtractionPath write set_LibraryExtractionPath;
    property WhitelistedIPAddresses: string read get_WhitelistedIPAddresses write set_WhitelistedIPAddresses;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNInternetExplorerDriverService = class(TDNGenericImport<DNInternetExplorerDriverServiceClass, DNInternetExplorerDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Opera----------------
  DNOperaDriverServiceClass = interface(DNDriverServiceClass)
  ['{541CA94F-507C-53B8-9F6E-7D77B534DBDF}']
  { static methods } 

    {class} function CreateDefaultService: DNOperaDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNOperaDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNOperaDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Opera.OperaDriverService')]
  DNOperaDriverService = interface(DNDriverService)
  ['{180509A2-D309-3A78-95EA-8599CA0F397C}']
  { getters & setters } 

    function get_LogPath: string;
    procedure set_LogPath(value: string);
    function get_UrlPathPrefix: string;
    procedure set_UrlPathPrefix(value: string);
    function get_PortServerAddress: string;
    procedure set_PortServerAddress(value: string);
    function get_AndroidDebugBridgePort: Int32;
    procedure set_AndroidDebugBridgePort(value: Int32);
    function get_EnableVerboseLogging: Boolean;
    procedure set_EnableVerboseLogging(value: Boolean);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LogPath: string read get_LogPath write set_LogPath;
    property UrlPathPrefix: string read get_UrlPathPrefix write set_UrlPathPrefix;
    property PortServerAddress: string read get_PortServerAddress write set_PortServerAddress;
    property AndroidDebugBridgePort: Int32 read get_AndroidDebugBridgePort write set_AndroidDebugBridgePort;
    property EnableVerboseLogging: Boolean read get_EnableVerboseLogging write set_EnableVerboseLogging;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNOperaDriverService = class(TDNGenericImport<DNOperaDriverServiceClass, DNOperaDriverService>) end;

  //-------------namespace: OpenQA.Selenium.PhantomJS----------------
  DNPhantomJSDriverServiceClass = interface(DNDriverServiceClass)
  ['{20EF212F-57AD-58D6-AA3C-4E211D893606}']
  { static methods } 

    {class} function CreateDefaultService: DNPhantomJSDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNPhantomJSDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNPhantomJSDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.PhantomJS.PhantomJSDriverService')]
  DNPhantomJSDriverService = interface(DNDriverService)
  ['{FC340E9E-983E-38E5-B14C-7486ED3EBD47}']
  { getters & setters } 

    function get_CookiesFile: string;
    procedure set_CookiesFile(value: string);
    function get_DiskCache: Boolean;
    procedure set_DiskCache(value: Boolean);
    function get_IgnoreSslErrors: Boolean;
    procedure set_IgnoreSslErrors(value: Boolean);
    function get_LoadImages: Boolean;
    procedure set_LoadImages(value: Boolean);
    function get_LocalStoragePath: string;
    procedure set_LocalStoragePath(value: string);
    function get_LocalStorageQuota: Int32;
    procedure set_LocalStorageQuota(value: Int32);
    function get_LocalToRemoteUrlAccess: Boolean;
    procedure set_LocalToRemoteUrlAccess(value: Boolean);
    function get_MaxDiskCacheSize: Int32;
    procedure set_MaxDiskCacheSize(value: Int32);
    function get_OutputEncoding: string;
    procedure set_OutputEncoding(value: string);
    function get_Proxy: string;
    procedure set_Proxy(value: string);
    function get_ProxyType: string;
    procedure set_ProxyType(value: string);
    function get_ProxyAuthentication: string;
    procedure set_ProxyAuthentication(value: string);
    function get_ScriptEncoding: string;
    procedure set_ScriptEncoding(value: string);
    function get_SslProtocol: string;
    procedure set_SslProtocol(value: string);
    function get_SslCertificatesPath: string;
    procedure set_SslCertificatesPath(value: string);
    function get_WebSecurity: Boolean;
    procedure set_WebSecurity(value: Boolean);
    function get_GhostDriverPath: string;
    procedure set_GhostDriverPath(value: string);
    function get_IPAddress: string;
    procedure set_IPAddress(value: string);
    function get_GridHubUrl: string;
    procedure set_GridHubUrl(value: string);
    function get_LogFile: string;
    procedure set_LogFile(value: string);
    function get_ConfigFile: string;
    procedure set_ConfigFile(value: string);
    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure AddArgument(argument: string);
    procedure AddArguments(arguments: TArray<string>); overload;
    procedure AddArguments(arguments: DDN.mscorlib.DNIEnumerable<string>); overload;
    function ToJson: string;
    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property CookiesFile: string read get_CookiesFile write set_CookiesFile;
    property DiskCache: Boolean read get_DiskCache write set_DiskCache;
    property IgnoreSslErrors: Boolean read get_IgnoreSslErrors write set_IgnoreSslErrors;
    property LoadImages: Boolean read get_LoadImages write set_LoadImages;
    property LocalStoragePath: string read get_LocalStoragePath write set_LocalStoragePath;
    property LocalStorageQuota: Int32 read get_LocalStorageQuota write set_LocalStorageQuota;
    property LocalToRemoteUrlAccess: Boolean read get_LocalToRemoteUrlAccess write set_LocalToRemoteUrlAccess;
    property MaxDiskCacheSize: Int32 read get_MaxDiskCacheSize write set_MaxDiskCacheSize;
    property OutputEncoding: string read get_OutputEncoding write set_OutputEncoding;
    property Proxy: string read get_Proxy write set_Proxy;
    property ProxyType: string read get_ProxyType write set_ProxyType;
    property ProxyAuthentication: string read get_ProxyAuthentication write set_ProxyAuthentication;
    property ScriptEncoding: string read get_ScriptEncoding write set_ScriptEncoding;
    property SslProtocol: string read get_SslProtocol write set_SslProtocol;
    property SslCertificatesPath: string read get_SslCertificatesPath write set_SslCertificatesPath;
    property WebSecurity: Boolean read get_WebSecurity write set_WebSecurity;
    property GhostDriverPath: string read get_GhostDriverPath write set_GhostDriverPath;
    property IPAddress: string read get_IPAddress write set_IPAddress;
    property GridHubUrl: string read get_GridHubUrl write set_GridHubUrl;
    property LogFile: string read get_LogFile write set_LogFile;
    property ConfigFile: string read get_ConfigFile write set_ConfigFile;
    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNPhantomJSDriverService = class(TDNGenericImport<DNPhantomJSDriverServiceClass, DNPhantomJSDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Safari----------------
  DNSafariDriverServiceClass = interface(DNDriverServiceClass)
  ['{689B9C72-760A-5F12-8EB1-0812F87A8F19}']
  { static methods } 

    {class} function CreateDefaultService: DNSafariDriverService; overload;
    {class} function CreateDefaultService(driverPath: string): DNSafariDriverService; overload;
    {class} function CreateDefaultService(driverPath: string; driverExecutableFileName: string): DNSafariDriverService; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Safari.SafariDriverService')]
  DNSafariDriverService = interface(DNDriverService)
  ['{EB224451-4CDB-3063-92C3-67C91BF96FF8}']
  { getters & setters } 

    function get_ServiceUrl: DDN.WebDriver.Common.DNUri;
    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_SuppressInitialDiagnosticInformation: Boolean;
    procedure set_SuppressInitialDiagnosticInformation(value: Boolean);
    function get_IsRunning: Boolean;
    function get_HideCommandPromptWindow: Boolean;
    procedure set_HideCommandPromptWindow(value: Boolean);
    function get_ProcessId: Int32;

  { methods } 

    procedure Dispose;
    procedure Start;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ServiceUrl: DDN.WebDriver.Common.DNUri read get_ServiceUrl;
    property Port: Int32 read get_Port write set_Port;
    property SuppressInitialDiagnosticInformation: Boolean read get_SuppressInitialDiagnosticInformation write set_SuppressInitialDiagnosticInformation;
    property IsRunning: Boolean read get_IsRunning;
    property HideCommandPromptWindow: Boolean read get_HideCommandPromptWindow write set_HideCommandPromptWindow;
    property ProcessId: Int32 read get_ProcessId;
  end;

  TDNSafariDriverService = class(TDNGenericImport<DNSafariDriverServiceClass, DNSafariDriverService>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxBinaryClass = interface(DDN.mscorlib.DNObjectClass)
  ['{4D2C2D9C-EC8F-55EC-9C84-F104B81BD566}']
  { constructors } 

    {class} function init: DNFirefoxBinary; overload;
    {class} function init(pathToFirefoxBinary: string): DNFirefoxBinary; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxBinary')]
  DNFirefoxBinary = interface(DDN.mscorlib.DNObject)
  ['{A4C52ECD-99A9-32BC-9FDF-9363483E16D3}']
  { getters & setters } 

    function get_Timeout: DDN.mscorlib.DNTimeSpan;
    procedure set_Timeout(value: DDN.mscorlib.DNTimeSpan);

  { methods } 

    procedure StartProfile(profile: DNFirefoxProfile; commandLineArguments: TArray<string>);
    procedure SetEnvironmentProperty(propertyName: string; value: string);
    procedure WaitForProcessExit;
    procedure Dispose;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Timeout: DDN.mscorlib.DNTimeSpan read get_Timeout write set_Timeout;
  end;

  TDNFirefoxBinary = class(TDNGenericImport<DNFirefoxBinaryClass, DNFirefoxBinary>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxDriverCommandExecutorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{CBCE514C-9E13-57F2-B470-04029ECE7914}']
  { constructors } 

    {class} function init(binary: DNFirefoxBinary; profile: DNFirefoxProfile; host: string; commandTimeout: DDN.mscorlib.DNTimeSpan): DNFirefoxDriverCommandExecutor;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxDriverCommandExecutor')]
  DNFirefoxDriverCommandExecutor = interface(DDN.mscorlib.DNObject)
  ['{FB2A118D-7EF2-382B-9D84-8E02F2688634}']
  { getters & setters } 

    function get_CommandInfoRepository: DNCommandInfoRepository;

  { methods } 

    function Execute(commandToExecute: DNCommand): DNResponse;
    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property CommandInfoRepository: DNCommandInfoRepository read get_CommandInfoRepository;
  end;

  TDNFirefoxDriverCommandExecutor = class(TDNGenericImport<DNFirefoxDriverCommandExecutorClass, DNFirefoxDriverCommandExecutor>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxDriverServerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E2F2A284-E119-54C4-BA6E-5CF6A77BA181}']
  { constructors } 

    {class} function init(binary: DNFirefoxBinary; profile: DNFirefoxProfile; host: string): DNFirefoxDriverServer;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxDriverServer')]
  DNFirefoxDriverServer = interface(DDN.mscorlib.DNObject)
  ['{BDED9B78-09E6-3500-968B-F413C1F680C3}']
  { getters & setters } 

    function get_ExtensionUri: DDN.WebDriver.Common.DNUri;

  { methods } 

    procedure Start;
    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ExtensionUri: DDN.WebDriver.Common.DNUri read get_ExtensionUri;
  end;

  TDNFirefoxDriverServer = class(TDNGenericImport<DNFirefoxDriverServerClass, DNFirefoxDriverServer>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxExtensionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{48BCF063-CDF1-53DD-B3AB-AD6829207E8A}']
  { constructors } 

    {class} function init(fileName: string): DNFirefoxExtension;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxExtension')]
  DNFirefoxExtension = interface(DDN.mscorlib.DNObject)
  ['{22CE14AF-D17F-3CF3-B5B2-8901E321CB62}']
  { methods } 

    procedure Install(profileDirectory: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNFirefoxExtension = class(TDNGenericImport<DNFirefoxExtensionClass, DNFirefoxExtension>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxProfileClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D9AEAA12-2592-5298-A6C3-25A64DBBDCF8}']
  { constructors } 

    {class} function init: DNFirefoxProfile; overload;
    {class} function init(profileDirectory: string): DNFirefoxProfile; overload;
    {class} function init(profileDirectory: string; deleteSourceOnClean: Boolean): DNFirefoxProfile; overload;

  { static methods } 

    {class} function FromBase64String(base64: string): DNFirefoxProfile;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxProfile')]
  DNFirefoxProfile = interface(DDN.mscorlib.DNObject)
  ['{37AF44C5-06D9-3424-9E89-B7A1DE09312A}']
  { getters & setters } 

    function get_Port: Int32;
    procedure set_Port(value: Int32);
    function get_ProfileDirectory: string;
    function get_DeleteAfterUse: Boolean;
    procedure set_DeleteAfterUse(value: Boolean);
    function get_EnableNativeEvents: Boolean;
    procedure set_EnableNativeEvents(value: Boolean);
    function get_AlwaysLoadNoFocusLibrary: Boolean;
    procedure set_AlwaysLoadNoFocusLibrary(value: Boolean);
    function get_AcceptUntrustedCertificates: Boolean;
    procedure set_AcceptUntrustedCertificates(value: Boolean);
    function get_AssumeUntrustedCertificateIssuer: Boolean;
    procedure set_AssumeUntrustedCertificateIssuer(value: Boolean);

  { methods } 

    procedure AddExtension(extensionToInstall: string);
    procedure SetPreference(name: string; value: string); overload;
    procedure SetPreference(name: string; value: Int32); overload;
    procedure SetPreference(name: string; value: Boolean); overload;
    procedure SetProxyPreferences(proxy: DNProxy);
    procedure WriteToDisk;
    procedure Clean;
    function ToBase64String: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Port: Int32 read get_Port write set_Port;
    property ProfileDirectory: string read get_ProfileDirectory;
    property DeleteAfterUse: Boolean read get_DeleteAfterUse write set_DeleteAfterUse;
    property EnableNativeEvents: Boolean read get_EnableNativeEvents write set_EnableNativeEvents;
    property AlwaysLoadNoFocusLibrary: Boolean read get_AlwaysLoadNoFocusLibrary write set_AlwaysLoadNoFocusLibrary;
    property AcceptUntrustedCertificates: Boolean read get_AcceptUntrustedCertificates write set_AcceptUntrustedCertificates;
    property AssumeUntrustedCertificateIssuer: Boolean read get_AssumeUntrustedCertificateIssuer write set_AssumeUntrustedCertificateIssuer;
  end;

  TDNFirefoxProfile = class(TDNGenericImport<DNFirefoxProfileClass, DNFirefoxProfile>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxProfileManagerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7782EDDD-5E3E-5315-B9A3-5B5C7D0DE6F1}']
  { constructors } 

    {class} function init: DNFirefoxProfileManager;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxProfileManager')]
  DNFirefoxProfileManager = interface(DDN.mscorlib.DNObject)
  ['{52F37E80-74CF-30D4-9537-C3D383F9907C}']
  { methods } 

    function GetProfile(profileName: string): DNFirefoxProfile;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNFirefoxProfileManager = class(TDNGenericImport<DNFirefoxProfileManagerClass, DNFirefoxProfileManager>) end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.IApplicationCache')]
  DNIApplicationCache = interface(DNObject)
  ['{99A43007-8C3C-3409-B8F6-40173C3373A8}']
  { getters & setters } 

    function get_Status: DNAppCacheStatus;

  { propertys } 

    property Status: DNAppCacheStatus read get_Status;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.IHasApplicationCache')]
  DNIHasApplicationCache = interface(DNObject)
  ['{C22BE39D-7594-3842-96DF-B73EAED092D4}']
  { getters & setters } 

    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;

  { propertys } 

    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.IHasLocationContext')]
  DNIHasLocationContext = interface(DNObject)
  ['{9A8CDE0B-FE72-368E-AC51-A21526D6A6AD}']
  { getters & setters } 

    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;

  { propertys } 

    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.IHasWebStorage')]
  DNIHasWebStorage = interface(DNObject)
  ['{8F6ADAE9-909F-383A-ADFA-7A1E7B0CF051}']
  { getters & setters } 

    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;

  { propertys } 

    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.ILocalStorage')]
  DNILocalStorage = interface(DNObject)
  ['{A000E65C-8F86-3D07-8FEE-A195958E52DB}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetItem(key: string): string;
    procedure SetItem(key: string; value: string);
    function RemoveItem(key: string): string;
    procedure Clear;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.ILocationContext')]
  DNILocationContext = interface(DNObject)
  ['{47D9754E-CD0F-3A27-8CCF-81860093EA66}']
  { getters & setters } 

    function get_PhysicalLocation: DNLocation;
    procedure set_PhysicalLocation(value: DNLocation);

  { propertys } 

    property PhysicalLocation: DNLocation read get_PhysicalLocation write set_PhysicalLocation;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.ISessionStorage')]
  DNISessionStorage = interface(DNObject)
  ['{DFB230DD-EA9D-3A46-8472-FC2121572A76}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetItem(key: string): string;
    procedure SetItem(key: string; value: string);
    function RemoveItem(key: string): string;
    procedure Clear;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  [DNTypeName('OpenQA.Selenium.Html5.IWebStorage')]
  DNIWebStorage = interface(DNObject)
  ['{8EE9C1E3-CF0C-3F39-AA79-5483E7FF609F}']
  { getters & setters } 

    function get_LocalStorage: DNILocalStorage;
    function get_SessionStorage: DNISessionStorage;

  { propertys } 

    property LocalStorage: DNILocalStorage read get_LocalStorage;
    property SessionStorage: DNISessionStorage read get_SessionStorage;
  end;

  //-------------namespace: OpenQA.Selenium.Html5----------------
  DNLocationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{06CD6086-3A21-5AAC-9C20-3FCCBF0EB0EB}']
  { constructors } 

    {class} function init(latitude: Double; longitude: Double; altitude: Double): DNLocation;

  end;

  [DNTypeName('OpenQA.Selenium.Html5.Location')]
  DNLocation = interface(DDN.mscorlib.DNObject)
  ['{D673D0C3-298F-3299-8F41-636A68721B24}']
  { getters & setters } 

    function get_Latitude: Double;
    function get_Longitude: Double;
    function get_Altitude: Double;

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Latitude: Double read get_Latitude;
    property Longitude: Double read get_Longitude;
    property Altitude: Double read get_Altitude;
  end;

  TDNLocation = class(TDNGenericImport<DNLocationClass, DNLocation>) end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IAlert')]
  DNIAlert = interface(DNObject)
  ['{71545BE7-77D9-3017-8563-9F4E80E3A934}']
  { getters & setters } 

    function get_Text: string;

  { methods } 

    procedure Dismiss;
    procedure Accept;
    procedure SendKeys(keysToSend: string);
    procedure SetAuthenticationCredentials(userName: string; password: string);

  { propertys } 

    property Text: string read get_Text;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IAllowsFileDetection')]
  DNIAllowsFileDetection = interface(DNObject)
  ['{6A3A4FE6-8FE6-36CD-A463-CD31A7FEA182}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ICapabilities')]
  DNICapabilities = interface(DNObject)
  ['{05D3ED3A-AF15-367C-BBB0-D71C0316A661}']
  { getters & setters } 

    function get_BrowserName: string;
    function get_Platform: DNPlatform;
    function get_Version: string;
    function get_IsJavaScriptEnabled: Boolean;

  { methods } 

    function HasCapability(capability: string): Boolean;
    function GetCapability(capability: string): DDN.mscorlib.DNObject;

  { propertys } 

    property BrowserName: string read get_BrowserName;
    property Platform: DNPlatform read get_Platform;
    property Version: string read get_Version;
    property IsJavaScriptEnabled: Boolean read get_IsJavaScriptEnabled;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ICookieJar')]
  DNICookieJar = interface(DNObject)
  ['{4B84C9A9-A1CC-3438-B58A-3E2FC351799B}']
  { methods } 

    procedure AddCookie(cookie: DNCookie);
    function GetCookieNamed(name: string): DNCookie;
    procedure DeleteCookie(cookie: DNCookie);
    procedure DeleteCookieNamed(name: string);
    procedure DeleteAllCookies;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IFileDetector')]
  DNIFileDetector = interface(DNObject)
  ['{25BE2120-F1DE-3E91-94FC-C5CEAA2260E2}']
  { methods } 

    function IsFile(keySequence: string): Boolean;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IHasCapabilities')]
  DNIHasCapabilities = interface(DNObject)
  ['{84FD5EBE-1157-36DA-A990-E330844BEF4E}']
  { getters & setters } 

    function get_Capabilities: DNICapabilities;

  { propertys } 

    property Capabilities: DNICapabilities read get_Capabilities;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IHasInputDevices')]
  DNIHasInputDevices = interface(DNObject)
  ['{225DC6BB-7B39-388B-A803-F93FF60777AF}']
  { getters & setters } 

    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;

  { propertys } 

    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IHasTouchScreen')]
  DNIHasTouchScreen = interface(DNObject)
  ['{08C44024-2A15-3A23-B0AC-C2071ED29594}']
  { getters & setters } 

    function get_TouchScreen: DNITouchScreen;

  { propertys } 

    property TouchScreen: DNITouchScreen read get_TouchScreen;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IJavaScriptExecutor')]
  DNIJavaScriptExecutor = interface(DNObject)
  ['{B5070B44-FF01-3F39-B430-67FE8AEC6A42}']
  { methods } 

    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IKeyboard')]
  DNIKeyboard = interface(DNObject)
  ['{8B2A7C1F-F008-3089-8E99-0B7BA196B4DD}']
  { methods } 

    procedure SendKeys(keySequence: string);
    procedure PressKey(keyToPress: string);
    procedure ReleaseKey(keyToRelease: string);

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ILocatable')]
  DNILocatable = interface(DNObject)
  ['{198F0DA4-E5F6-357C-ADF7-D5E893BE1B3A}']
  { getters & setters } 

    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { propertys } 

    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ILogs')]
  DNILogs = interface(DNObject)
  ['{0EB9C20C-4C2A-3192-83F9-A66EE60CB7D1}']
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IMouse')]
  DNIMouse = interface(DNObject)
  ['{7475AB5D-2EA3-3AF2-8E3F-2F554DC19D8D}']
  { methods } 

    procedure Click(where: DNICoordinates);
    procedure DoubleClick(where: DNICoordinates);
    procedure MouseDown(where: DNICoordinates);
    procedure MouseUp(where: DNICoordinates);
    procedure MouseMove(where: DNICoordinates); overload;
    procedure MouseMove(where: DNICoordinates; offsetX: Int32; offsetY: Int32); overload;
    procedure ContextClick(where: DNICoordinates);

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.INavigation')]
  DNINavigation = interface(DNObject)
  ['{371DB8C7-A039-32AE-A483-23FE422039CF}']
  { methods } 

    procedure Back;
    procedure &Forward;
    procedure GoToUrl(url: string); overload;
    procedure GoToUrl(url: DDN.WebDriver.Common.DNUri); overload;
    procedure Refresh;

  end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNActionBuilderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{866A5FF9-AB92-5DD2-AEC2-5854152EE9E0}']
  { constructors } 

    {class} function init: DNActionBuilder;

  end;

  [DNTypeName('OpenQA.Selenium.Interactions.ActionBuilder')]
  DNActionBuilder = interface(DDN.mscorlib.DNObject)
  ['{091F27E8-710B-3047-BF21-D179BBD0924A}']
  { methods } 

    function AddAction(actionToAdd: DNInteraction): DNActionBuilder;
    function AddActions(actionsToAdd: TArray<DNInteraction>): DNActionBuilder;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  end;

  TDNActionBuilder = class(TDNGenericImport<DNActionBuilderClass, DNActionBuilder>) end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNActionsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{58B20C77-12F5-585E-8F92-7A4D660B87BA}']
  { constructors } 

    {class} function init(driver: DNIWebDriver): DNActions;

  end;

  [DNTypeName('OpenQA.Selenium.Interactions.Actions')]
  DNActions = interface(DDN.mscorlib.DNObject)
  ['{3FA8F5C4-370C-382B-85E0-755F8ACA0A0C}']
  { methods } 

    function KeyDown(theKey: string): DNActions; overload;
    function KeyDown(element: DNIWebElement; theKey: string): DNActions; overload;
    function KeyUp(theKey: string): DNActions; overload;
    function KeyUp(element: DNIWebElement; theKey: string): DNActions; overload;
    function SendKeys(keysToSend: string): DNActions; overload;
    function SendKeys(element: DNIWebElement; keysToSend: string): DNActions; overload;
    function ClickAndHold(onElement: DNIWebElement): DNActions; overload;
    function ClickAndHold: DNActions; overload;
    function Release(onElement: DNIWebElement): DNActions; overload;
    function Release: DNActions; overload;
    function Click(onElement: DNIWebElement): DNActions; overload;
    function Click: DNActions; overload;
    function DoubleClick(onElement: DNIWebElement): DNActions; overload;
    function DoubleClick: DNActions; overload;
    function MoveToElement(toElement: DNIWebElement): DNActions; overload;
    function MoveToElement(toElement: DNIWebElement; offsetX: Int32; offsetY: Int32): DNActions; overload;
    function MoveByOffset(offsetX: Int32; offsetY: Int32): DNActions;
    function ContextClick(onElement: DNIWebElement): DNActions; overload;
    function ContextClick: DNActions; overload;
    function DragAndDrop(source: DNIWebElement; target: DNIWebElement): DNActions;
    function DragAndDropToOffset(source: DNIWebElement; offsetX: Int32; offsetY: Int32): DNActions;
    function Build: DNIAction;
    procedure Perform;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNActions = class(TDNGenericImport<DNActionsClass, DNActions>) end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNTouchActionsClass = interface(DNActionsClass)
  ['{D32A81B2-61DC-536F-B252-B4D8356DA711}']
  { constructors } 

    {class} function init(driver: DNIWebDriver): DNTouchActions;

  end;

  [DNTypeName('OpenQA.Selenium.Interactions.TouchActions')]
  DNTouchActions = interface(DNActions)
  ['{26D7D4B8-6D1F-3116-AC26-80428E8CF2F9}']
  { methods } 

    function SingleTap(onElement: DNIWebElement): DNTouchActions;
    function Down(locationX: Int32; locationY: Int32): DNTouchActions;
    function Up(locationX: Int32; locationY: Int32): DNTouchActions;
    function Move(locationX: Int32; locationY: Int32): DNTouchActions;
    function Scroll(onElement: DNIWebElement; offsetX: Int32; offsetY: Int32): DNTouchActions; overload;
    function DoubleTap(onElement: DNIWebElement): DNTouchActions;
    function LongPress(onElement: DNIWebElement): DNTouchActions;
    function Scroll(offsetX: Int32; offsetY: Int32): DNTouchActions; overload;
    function Flick(speedX: Int32; speedY: Int32): DNTouchActions; overload;
    function Flick(onElement: DNIWebElement; offsetX: Int32; offsetY: Int32; speed: Int32): DNTouchActions; overload;
    function KeyDown(theKey: string): DNActions; overload;
    function KeyDown(element: DNIWebElement; theKey: string): DNActions; overload;
    function KeyUp(theKey: string): DNActions; overload;
    function KeyUp(element: DNIWebElement; theKey: string): DNActions; overload;
    function SendKeys(keysToSend: string): DNActions; overload;
    function SendKeys(element: DNIWebElement; keysToSend: string): DNActions; overload;
    function ClickAndHold(onElement: DNIWebElement): DNActions; overload;
    function ClickAndHold: DNActions; overload;
    function Release(onElement: DNIWebElement): DNActions; overload;
    function Release: DNActions; overload;
    function Click(onElement: DNIWebElement): DNActions; overload;
    function Click: DNActions; overload;
    function DoubleClick(onElement: DNIWebElement): DNActions; overload;
    function DoubleClick: DNActions; overload;
    function MoveToElement(toElement: DNIWebElement): DNActions; overload;
    function MoveToElement(toElement: DNIWebElement; offsetX: Int32; offsetY: Int32): DNActions; overload;
    function MoveByOffset(offsetX: Int32; offsetY: Int32): DNActions;
    function ContextClick(onElement: DNIWebElement): DNActions; overload;
    function ContextClick: DNActions; overload;
    function DragAndDrop(source: DNIWebElement; target: DNIWebElement): DNActions;
    function DragAndDropToOffset(source: DNIWebElement; offsetX: Int32; offsetY: Int32): DNActions;
    function Build: DNIAction;
    procedure Perform;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTouchActions = class(TDNGenericImport<DNTouchActionsClass, DNTouchActions>) end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNActionSequenceClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7FC03AE9-703A-5740-8E68-1F14C53F2CA5}']
  { constructors } 

    {class} function init(device: DNInputDevice; initialSize: Int32): DNActionSequence;

  end;

  [DNTypeName('OpenQA.Selenium.Interactions.ActionSequence')]
  DNActionSequence = interface(DDN.mscorlib.DNObject)
  ['{9F3B3603-F77B-3122-A29A-685AF9128531}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function AddAction(interactionToAdd: DNInteraction): DNActionSequence;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNActionSequence = class(TDNGenericImport<DNActionSequenceClass, DNActionSequence>) end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  [DNTypeName('OpenQA.Selenium.Interactions.IAction')]
  DNIAction = interface(DNObject)
  ['{FB9CC6AE-05C3-3E09-BFA4-0517B072BB60}']
  { methods } 

    procedure Perform;

  end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNInputDeviceClass = interface(DDN.mscorlib.DNObjectClass)
  ['{09574587-46E2-5E6F-BD13-015DF2294856}']
  end;

  [DNTypeName('OpenQA.Selenium.Interactions.InputDevice')]
  DNInputDevice = interface(DDN.mscorlib.DNObject)
  ['{CE7E03E2-D466-3F23-A797-D2D2542F76A6}']
  { getters & setters } 

    function get_DeviceName: string;
    function get_DeviceKind: DNInputDeviceKind;

  { methods } 

    function GetHashCode: Int32;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property DeviceName: string read get_DeviceName;
    property DeviceKind: DNInputDeviceKind read get_DeviceKind;
  end;

  TDNInputDevice = class(TDNGenericImport<DNInputDeviceClass, DNInputDevice>) end;

  //-------------namespace: OpenQA.Selenium.Interactions----------------
  DNInteractionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{03CA4AF6-DABF-5B0A-88EE-D65F2F986FDE}']
  end;

  [DNTypeName('OpenQA.Selenium.Interactions.Interaction')]
  DNInteraction = interface(DDN.mscorlib.DNObject)
  ['{12ED4073-73A9-3BA4-885D-60F44887267C}']
  { getters & setters } 

    function get_SourceDevice: DNInputDevice;

  { methods } 

    function IsValidFor(sourceDeviceKind: DNInputDeviceKind): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SourceDevice: DNInputDevice read get_SourceDevice;
  end;

  TDNInteraction = class(TDNGenericImport<DNInteractionClass, DNInteraction>) end;

  //-------------namespace: OpenQA.Selenium.Interactions.Internal----------------
  [DNTypeName('OpenQA.Selenium.Interactions.Internal.ICoordinates')]
  DNICoordinates = interface(DNObject)
  ['{FCF8B1C1-DFAC-3663-A8A9-80E9DF3046E1}']
  { getters & setters } 

    function get_LocationOnScreen: DDN.WebDriver.Common.DNPoint;
    function get_LocationInViewport: DDN.WebDriver.Common.DNPoint;
    function get_LocationInDom: DDN.WebDriver.Common.DNPoint;
    function get_AuxiliaryLocator: DDN.mscorlib.DNObject;

  { propertys } 

    property LocationOnScreen: DDN.WebDriver.Common.DNPoint read get_LocationOnScreen;
    property LocationInViewport: DDN.WebDriver.Common.DNPoint read get_LocationInViewport;
    property LocationInDom: DDN.WebDriver.Common.DNPoint read get_LocationInDom;
    property AuxiliaryLocator: DDN.mscorlib.DNObject read get_AuxiliaryLocator;
  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  DNAsyncJavaScriptExecutorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{77E00195-7C41-5FB9-8427-69722FD65681}']
  { constructors } 

    {class} function init(executor: DNIJavaScriptExecutor): DNAsyncJavaScriptExecutor;

  end;

  [DNTypeName('OpenQA.Selenium.Internal.AsyncJavaScriptExecutor')]
  DNAsyncJavaScriptExecutor = interface(DDN.mscorlib.DNObject)
  ['{7A871294-0CD9-307A-9330-077F946E2909}']
  { getters & setters } 

    function get_Timeout: DDN.mscorlib.DNTimeSpan;
    procedure set_Timeout(value: DDN.mscorlib.DNTimeSpan);

  { methods } 

    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Timeout: DDN.mscorlib.DNTimeSpan read get_Timeout write set_Timeout;
  end;

  TDNAsyncJavaScriptExecutor = class(TDNGenericImport<DNAsyncJavaScriptExecutorClass, DNAsyncJavaScriptExecutor>) end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IActionExecutor')]
  DNIActionExecutor = interface(DNObject)
  ['{944E6EB4-8FEC-31E5-9467-7D782F523E52}']
  { getters & setters } 

    function get_IsActionExecutor: Boolean;

  { methods } 

    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;

  { propertys } 

    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByClassName')]
  DNIFindsByClassName = interface(DNObject)
  ['{8AB82485-BDD8-38F2-9C6F-B4308B0ACA5F}']
  { methods } 

    function FindElementByClassName(className: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByCssSelector')]
  DNIFindsByCssSelector = interface(DNObject)
  ['{5E14D768-185E-3F80-B2B1-A1480AA25E1D}']
  { methods } 

    function FindElementByCssSelector(cssSelector: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsById')]
  DNIFindsById = interface(DNObject)
  ['{6E3A628F-5403-3F9B-A396-4E14836A941E}']
  { methods } 

    function FindElementById(id: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByLinkText')]
  DNIFindsByLinkText = interface(DNObject)
  ['{7C3324C4-7A2C-3ADC-B697-5CF52B5E2E68}']
  { methods } 

    function FindElementByLinkText(linkText: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByName')]
  DNIFindsByName = interface(DNObject)
  ['{520C10F8-C462-3F4E-BA37-A469F056EA4F}']
  { methods } 

    function FindElementByName(name: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByPartialLinkText')]
  DNIFindsByPartialLinkText = interface(DNObject)
  ['{ECBB04B9-6FBD-39E9-B33A-9D15F8EE4948}']
  { methods } 

    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByTagName')]
  DNIFindsByTagName = interface(DNObject)
  ['{5718DB68-92B0-3617-AF49-743EE308AFEF}']
  { methods } 

    function FindElementByTagName(tagName: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IFindsByXPath')]
  DNIFindsByXPath = interface(DNObject)
  ['{8EA9D700-B52F-350D-9902-DDBF00981FD0}']
  { methods } 

    function FindElementByXPath(xpath: string): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IWrapsDriver')]
  DNIWrapsDriver = interface(DNObject)
  ['{27EB7D21-7B21-3117-A51D-92268006E526}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  [DNTypeName('OpenQA.Selenium.Internal.IWrapsElement')]
  DNIWrapsElement = interface(DNObject)
  ['{B7A1CE37-506F-3854-8172-7F9C92092F59}']
  { getters & setters } 

    function get_WrappedElement: DNIWebElement;

  { propertys } 

    property WrappedElement: DNIWebElement read get_WrappedElement;
  end;

  //-------------namespace: OpenQA.Selenium.Internal----------------
  DNResourceUtilitiesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{25EBD3EB-A0B4-5377-8B36-07E9DA9C89EE}']
  { static methods } 

    {class} function GetResourceStream(fileName: string; resourceId: string): DDN.mscorlib.DNStream;
    {class} function IsValidResourceName(resourceId: string): Boolean;

  end;

  [DNTypeName('OpenQA.Selenium.Internal.ResourceUtilities')]
  DNResourceUtilities = interface(DDN.mscorlib.DNObject)
  ['{F146A6A2-2556-3AA2-8A9C-C8EE6A505E84}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNResourceUtilities = class(TDNGenericImport<DNResourceUtilitiesClass, DNResourceUtilities>) end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IOptions')]
  DNIOptions = interface(DNObject)
  ['{66653B1C-CA49-354B-B740-18324DAD4A06}']
  { getters & setters } 

    function get_Cookies: DNICookieJar;
    function get_Window: DNIWindow;
    function get_Logs: DNILogs;

  { methods } 

    function Timeouts: DNITimeouts;

  { propertys } 

    property Cookies: DNICookieJar read get_Cookies;
    property Window: DNIWindow read get_Window;
    property Logs: DNILogs read get_Logs;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IRotatable')]
  DNIRotatable = interface(DNObject)
  ['{F3665991-B99E-3D5B-B3ED-C3A04303688C}']
  { getters & setters } 

    function get_Orientation: DNScreenOrientation;
    procedure set_Orientation(value: DNScreenOrientation);

  { propertys } 

    property Orientation: DNScreenOrientation read get_Orientation write set_Orientation;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ISearchContext')]
  DNISearchContext = interface(DNObject)
  ['{FACE9609-D4DD-39A7-A236-D9659A721122}']
  { methods } 

    function FindElement(by: DNBy): DNIWebElement;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IWebDriver')]
  DNIWebDriver = interface(DNISearchContext)
  ['{1C9DFC62-736E-3B41-9244-B5204C699BA5}']
  { getters & setters } 

    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;

  { methods } 

    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;

  { propertys } 

    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IWebElement')]
  DNIWebElement = interface(DNISearchContext)
  ['{AD063E71-7F97-3BFC-9422-7ADE3B20E97A}']
  { getters & setters } 

    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;

  { methods } 

    procedure Clear;
    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;

  { propertys } 

    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ITakesScreenshot')]
  DNITakesScreenshot = interface(DNObject)
  ['{608D96EF-01A3-3122-B48F-8D09E2905BA2}']
  { methods } 

    function GetScreenshot: DNScreenshot;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ITargetLocator')]
  DNITargetLocator = interface(DNObject)
  ['{E5443C94-1885-3B1F-88F9-2015EE3FBAD2}']
  { methods } 

    function Frame(frameIndex: Int32): DNIWebDriver; overload;
    function Frame(frameName: string): DNIWebDriver; overload;
    function Frame(frameElement: DNIWebElement): DNIWebDriver; overload;
    function ParentFrame: DNIWebDriver;
    function Window(windowName: string): DNIWebDriver;
    function DefaultContent: DNIWebDriver;
    function ActiveElement: DNIWebElement;
    function Alert: DNIAlert;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ITimeouts')]
  DNITimeouts = interface(DNObject)
  ['{5D312598-5F93-35DA-AB94-9E8DA119B40F}']
  { getters & setters } 

    function get_ImplicitWait: DDN.mscorlib.DNTimeSpan;
    procedure set_ImplicitWait(value: DDN.mscorlib.DNTimeSpan);
    function get_AsynchronousJavaScript: DDN.mscorlib.DNTimeSpan;
    procedure set_AsynchronousJavaScript(value: DDN.mscorlib.DNTimeSpan);
    function get_PageLoad: DDN.mscorlib.DNTimeSpan;
    procedure set_PageLoad(value: DDN.mscorlib.DNTimeSpan);

  { methods } 

    function ImplicitlyWait(timeToWait: DDN.mscorlib.DNTimeSpan): DNITimeouts;
    function SetScriptTimeout(timeToWait: DDN.mscorlib.DNTimeSpan): DNITimeouts;
    function SetPageLoadTimeout(timeToWait: DDN.mscorlib.DNTimeSpan): DNITimeouts;

  { propertys } 

    property ImplicitWait: DDN.mscorlib.DNTimeSpan read get_ImplicitWait write set_ImplicitWait;
    property AsynchronousJavaScript: DDN.mscorlib.DNTimeSpan read get_AsynchronousJavaScript write set_AsynchronousJavaScript;
    property PageLoad: DDN.mscorlib.DNTimeSpan read get_PageLoad write set_PageLoad;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.ITouchScreen')]
  DNITouchScreen = interface(DNObject)
  ['{A0AD896F-D924-36FD-9F61-107277EB3470}']
  { methods } 

    procedure SingleTap(where: DNICoordinates);
    procedure Down(locationX: Int32; locationY: Int32);
    procedure Up(locationX: Int32; locationY: Int32);
    procedure Move(locationX: Int32; locationY: Int32);
    procedure Scroll(where: DNICoordinates; offsetX: Int32; offsetY: Int32); overload;
    procedure Scroll(offsetX: Int32; offsetY: Int32); overload;
    procedure DoubleTap(where: DNICoordinates);
    procedure LongPress(where: DNICoordinates);
    procedure Flick(speedX: Int32; speedY: Int32); overload;
    procedure Flick(where: DNICoordinates; offsetX: Int32; offsetY: Int32; speed: Int32); overload;

  end;

  //-------------namespace: OpenQA.Selenium----------------
  [DNTypeName('OpenQA.Selenium.IWindow')]
  DNIWindow = interface(DNObject)
  ['{2326EB24-0CD6-3E17-BA8C-F3D0FED192AC}']
  { getters & setters } 

    function get_Position: DDN.WebDriver.Common.DNPoint;
    procedure set_Position(value: DDN.WebDriver.Common.DNPoint);
    function get_Size: DDN.WebDriver.Common.DNSize;
    procedure set_Size(value: DDN.WebDriver.Common.DNSize);

  { methods } 

    procedure Maximize;

  { propertys } 

    property Position: DDN.WebDriver.Common.DNPoint read get_Position write set_Position;
    property Size: DDN.WebDriver.Common.DNSize read get_Size write set_Size;
  end;

  //-------------namespace: OpenQA.Selenium----------------
  DNKeysClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3A841D25-B651-566E-9D2E-92A642BA5A3C}']
  { static fields getter & setter } 

   function __fakeFieldGet_Null: string;
   function __fakeFieldGet_Cancel: string;
   function __fakeFieldGet_Help: string;
   function __fakeFieldGet_Backspace: string;
   function __fakeFieldGet_Tab: string;
   function __fakeFieldGet_Clear: string;
   function __fakeFieldGet_Return: string;
   function __fakeFieldGet_Enter: string;
   function __fakeFieldGet_Shift: string;
   function __fakeFieldGet_LeftShift: string;
   function __fakeFieldGet_Control: string;
   function __fakeFieldGet_LeftControl: string;
   function __fakeFieldGet_Alt: string;
   function __fakeFieldGet_LeftAlt: string;
   function __fakeFieldGet_Pause: string;
   function __fakeFieldGet_Escape: string;
   function __fakeFieldGet_Space: string;
   function __fakeFieldGet_PageUp: string;
   function __fakeFieldGet_PageDown: string;
   function __fakeFieldGet_End: string;
   function __fakeFieldGet_Home: string;
   function __fakeFieldGet_Left: string;
   function __fakeFieldGet_ArrowLeft: string;
   function __fakeFieldGet_Up: string;
   function __fakeFieldGet_ArrowUp: string;
   function __fakeFieldGet_Right: string;
   function __fakeFieldGet_ArrowRight: string;
   function __fakeFieldGet_Down: string;
   function __fakeFieldGet_ArrowDown: string;
   function __fakeFieldGet_Insert: string;
   function __fakeFieldGet_Delete: string;
   function __fakeFieldGet_Semicolon: string;
   function __fakeFieldGet_Equal: string;
   function __fakeFieldGet_NumberPad0: string;
   function __fakeFieldGet_NumberPad1: string;
   function __fakeFieldGet_NumberPad2: string;
   function __fakeFieldGet_NumberPad3: string;
   function __fakeFieldGet_NumberPad4: string;
   function __fakeFieldGet_NumberPad5: string;
   function __fakeFieldGet_NumberPad6: string;
   function __fakeFieldGet_NumberPad7: string;
   function __fakeFieldGet_NumberPad8: string;
   function __fakeFieldGet_NumberPad9: string;
   function __fakeFieldGet_Multiply: string;
   function __fakeFieldGet_Add: string;
   function __fakeFieldGet_Separator: string;
   function __fakeFieldGet_Subtract: string;
   function __fakeFieldGet_Decimal: string;
   function __fakeFieldGet_Divide: string;
   function __fakeFieldGet_F1: string;
   function __fakeFieldGet_F2: string;
   function __fakeFieldGet_F3: string;
   function __fakeFieldGet_F4: string;
   function __fakeFieldGet_F5: string;
   function __fakeFieldGet_F6: string;
   function __fakeFieldGet_F7: string;
   function __fakeFieldGet_F8: string;
   function __fakeFieldGet_F9: string;
   function __fakeFieldGet_F10: string;
   function __fakeFieldGet_F11: string;
   function __fakeFieldGet_F12: string;
   function __fakeFieldGet_Meta: string;
   function __fakeFieldGet_Command: string;

  { static fields } 

    {class} property Null: string read __fakeFieldGet_Null;
    {class} property Cancel: string read __fakeFieldGet_Cancel;
    {class} property Help: string read __fakeFieldGet_Help;
    {class} property Backspace: string read __fakeFieldGet_Backspace;
    {class} property Tab: string read __fakeFieldGet_Tab;
    {class} property Clear: string read __fakeFieldGet_Clear;
    {class} property Return: string read __fakeFieldGet_Return;
    {class} property Enter: string read __fakeFieldGet_Enter;
    {class} property Shift: string read __fakeFieldGet_Shift;
    {class} property LeftShift: string read __fakeFieldGet_LeftShift;
    {class} property Control: string read __fakeFieldGet_Control;
    {class} property LeftControl: string read __fakeFieldGet_LeftControl;
    {class} property Alt: string read __fakeFieldGet_Alt;
    {class} property LeftAlt: string read __fakeFieldGet_LeftAlt;
    {class} property Pause: string read __fakeFieldGet_Pause;
    {class} property Escape: string read __fakeFieldGet_Escape;
    {class} property Space: string read __fakeFieldGet_Space;
    {class} property PageUp: string read __fakeFieldGet_PageUp;
    {class} property PageDown: string read __fakeFieldGet_PageDown;
    {class} property &End: string read __fakeFieldGet_End;
    {class} property Home: string read __fakeFieldGet_Home;
    {class} property Left: string read __fakeFieldGet_Left;
    {class} property ArrowLeft: string read __fakeFieldGet_ArrowLeft;
    {class} property Up: string read __fakeFieldGet_Up;
    {class} property ArrowUp: string read __fakeFieldGet_ArrowUp;
    {class} property Right: string read __fakeFieldGet_Right;
    {class} property ArrowRight: string read __fakeFieldGet_ArrowRight;
    {class} property Down: string read __fakeFieldGet_Down;
    {class} property ArrowDown: string read __fakeFieldGet_ArrowDown;
    {class} property Insert: string read __fakeFieldGet_Insert;
    {class} property Delete: string read __fakeFieldGet_Delete;
    {class} property Semicolon: string read __fakeFieldGet_Semicolon;
    {class} property Equal: string read __fakeFieldGet_Equal;
    {class} property NumberPad0: string read __fakeFieldGet_NumberPad0;
    {class} property NumberPad1: string read __fakeFieldGet_NumberPad1;
    {class} property NumberPad2: string read __fakeFieldGet_NumberPad2;
    {class} property NumberPad3: string read __fakeFieldGet_NumberPad3;
    {class} property NumberPad4: string read __fakeFieldGet_NumberPad4;
    {class} property NumberPad5: string read __fakeFieldGet_NumberPad5;
    {class} property NumberPad6: string read __fakeFieldGet_NumberPad6;
    {class} property NumberPad7: string read __fakeFieldGet_NumberPad7;
    {class} property NumberPad8: string read __fakeFieldGet_NumberPad8;
    {class} property NumberPad9: string read __fakeFieldGet_NumberPad9;
    {class} property Multiply: string read __fakeFieldGet_Multiply;
    {class} property Add: string read __fakeFieldGet_Add;
    {class} property Separator: string read __fakeFieldGet_Separator;
    {class} property Subtract: string read __fakeFieldGet_Subtract;
    {class} property Decimal: string read __fakeFieldGet_Decimal;
    {class} property Divide: string read __fakeFieldGet_Divide;
    {class} property F1: string read __fakeFieldGet_F1;
    {class} property F2: string read __fakeFieldGet_F2;
    {class} property F3: string read __fakeFieldGet_F3;
    {class} property F4: string read __fakeFieldGet_F4;
    {class} property F5: string read __fakeFieldGet_F5;
    {class} property F6: string read __fakeFieldGet_F6;
    {class} property F7: string read __fakeFieldGet_F7;
    {class} property F8: string read __fakeFieldGet_F8;
    {class} property F9: string read __fakeFieldGet_F9;
    {class} property F10: string read __fakeFieldGet_F10;
    {class} property F11: string read __fakeFieldGet_F11;
    {class} property F12: string read __fakeFieldGet_F12;
    {class} property Meta: string read __fakeFieldGet_Meta;
    {class} property Command: string read __fakeFieldGet_Command;

  end;

  [DNTypeName('OpenQA.Selenium.Keys')]
  DNKeys = interface(DDN.mscorlib.DNObject)
  ['{1483D729-39AC-3AC7-B7AA-A031DC4550C4}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNKeys = class(TDNGenericImport<DNKeysClass, DNKeys>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNLogEntryClass = interface(DDN.mscorlib.DNObjectClass)
  ['{76F57B3D-0183-5FF7-9C57-D2C77D5F4112}']
  end;

  [DNTypeName('OpenQA.Selenium.LogEntry')]
  DNLogEntry = interface(DDN.mscorlib.DNObject)
  ['{23468679-10FC-3D4F-ADFB-620CACE21C51}']
  { getters & setters } 

    function get_Timestamp: DDN.mscorlib.DNDateTime;
    function get_Level: DNLogLevel;
    function get_Message: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Timestamp: DDN.mscorlib.DNDateTime read get_Timestamp;
    property Level: DNLogLevel read get_Level;
    property Message: string read get_Message;
  end;

  TDNLogEntry = class(TDNGenericImport<DNLogEntryClass, DNLogEntry>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNLogTypeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{4DF5B5EF-C0C0-5AAD-95D2-EB1C4EB3C913}']
  { static fields getter & setter } 

   function __fakeFieldGet_Client: string;
   function __fakeFieldGet_Driver: string;
   function __fakeFieldGet_Browser: string;
   function __fakeFieldGet_Server: string;
   function __fakeFieldGet_Profiler: string;

  { static fields } 

    {class} property Client: string read __fakeFieldGet_Client;
    {class} property Driver: string read __fakeFieldGet_Driver;
    {class} property Browser: string read __fakeFieldGet_Browser;
    {class} property Server: string read __fakeFieldGet_Server;
    {class} property Profiler: string read __fakeFieldGet_Profiler;

  end;

  [DNTypeName('OpenQA.Selenium.LogType')]
  DNLogType = interface(DDN.mscorlib.DNObject)
  ['{BCD44FAC-11D9-3CBC-A89E-284404B55B18}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNLogType = class(TDNGenericImport<DNLogTypeClass, DNLogType>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNPlatformClass = interface(DDN.mscorlib.DNObjectClass)
  ['{55942F14-33A3-5871-A057-A60B47C1C04E}']
  { static getter & setter } 

    {class} function get_CurrentPlatform: DNPlatform;

  { constructors } 

    {class} function init(typeValue: DNPlatformType): DNPlatform;

  { static propertys } 

    {class} property CurrentPlatform: DNPlatform read get_CurrentPlatform;
  end;

  [DNTypeName('OpenQA.Selenium.Platform')]
  DNPlatform = interface(DDN.mscorlib.DNObject)
  ['{0197A6B3-5A04-3414-BE32-6B8665922E2F}']
  { getters & setters } 

    function get_MajorVersion: Int32;
    function get_MinorVersion: Int32;
    function get_PlatformType: DNPlatformType;
    function get_ProtocolPlatformType: string;

  { methods } 

    function IsPlatformType(compareTo: DNPlatformType): Boolean;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property MajorVersion: Int32 read get_MajorVersion;
    property MinorVersion: Int32 read get_MinorVersion;
    property PlatformType: DNPlatformType read get_PlatformType;
    property ProtocolPlatformType: string read get_ProtocolPlatformType;
  end;

  TDNPlatform = class(TDNGenericImport<DNPlatformClass, DNPlatform>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNProxyClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7FDC9F73-AE77-558D-8339-45C3E5964F29}']
  { constructors } 

    {class} function init: DNProxy; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Proxy')]
  DNProxy = interface(DDN.mscorlib.DNObject)
  ['{7F914A2A-8938-39AB-9C66-13B792E8F97C}']
  { getters & setters } 

    function get_Kind: DNProxyKind;
    procedure set_Kind(value: DNProxyKind);
    function get_SerializableProxyKind: string;
    function get_IsAutoDetect: Boolean;
    procedure set_IsAutoDetect(value: Boolean);
    function get_FtpProxy: string;
    procedure set_FtpProxy(value: string);
    function get_HttpProxy: string;
    procedure set_HttpProxy(value: string);
    function get_NoProxy: string;
    procedure set_NoProxy(value: string);
    function get_ProxyAutoConfigUrl: string;
    procedure set_ProxyAutoConfigUrl(value: string);
    function get_SslProxy: string;
    procedure set_SslProxy(value: string);
    function get_SocksProxy: string;
    procedure set_SocksProxy(value: string);
    function get_SocksUserName: string;
    procedure set_SocksUserName(value: string);
    function get_SocksPassword: string;
    procedure set_SocksPassword(value: string);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Kind: DNProxyKind read get_Kind write set_Kind;
    property SerializableProxyKind: string read get_SerializableProxyKind;
    property IsAutoDetect: Boolean read get_IsAutoDetect write set_IsAutoDetect;
    property FtpProxy: string read get_FtpProxy write set_FtpProxy;
    property HttpProxy: string read get_HttpProxy write set_HttpProxy;
    property NoProxy: string read get_NoProxy write set_NoProxy;
    property ProxyAutoConfigUrl: string read get_ProxyAutoConfigUrl write set_ProxyAutoConfigUrl;
    property SslProxy: string read get_SslProxy write set_SslProxy;
    property SocksProxy: string read get_SocksProxy write set_SocksProxy;
    property SocksUserName: string read get_SocksUserName write set_SocksUserName;
    property SocksPassword: string read get_SocksPassword write set_SocksPassword;
  end;

  TDNProxy = class(TDNGenericImport<DNProxyClass, DNProxy>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNCapabilityTypeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2BBD6F66-A9C6-5193-994C-59DC06F83127}']
  { static fields getter & setter } 

   function __fakeFieldGet_BrowserName: string;
   function __fakeFieldGet_Platform: string;
   function __fakeFieldGet_Version: string;
   function __fakeFieldGet_IsJavaScriptEnabled: string;
   function __fakeFieldGet_TakesScreenshot: string;
   function __fakeFieldGet_HandlesAlerts: string;
   function __fakeFieldGet_SupportsFindingByCss: string;
   function __fakeFieldGet_Proxy: string;
   function __fakeFieldGet_Rotatable: string;
   function __fakeFieldGet_AcceptSslCertificates: string;
   function __fakeFieldGet_AcceptInsecureCertificates: string;
   function __fakeFieldGet_HasNativeEvents: string;
   function __fakeFieldGet_UnexpectedAlertBehavior: string;
   function __fakeFieldGet_PageLoadStrategy: string;
   function __fakeFieldGet_LoggingPreferences: string;
   function __fakeFieldGet_DisableOverlappedElementCheck: string;
   function __fakeFieldGet_EnableProfiling: string;
   function __fakeFieldGet_SupportsLocationContext: string;
   function __fakeFieldGet_SupportsApplicationCache: string;
   function __fakeFieldGet_SupportsWebStorage: string;

  { static fields } 

    {class} property BrowserName: string read __fakeFieldGet_BrowserName;
    {class} property Platform: string read __fakeFieldGet_Platform;
    {class} property Version: string read __fakeFieldGet_Version;
    {class} property IsJavaScriptEnabled: string read __fakeFieldGet_IsJavaScriptEnabled;
    {class} property TakesScreenshot: string read __fakeFieldGet_TakesScreenshot;
    {class} property HandlesAlerts: string read __fakeFieldGet_HandlesAlerts;
    {class} property SupportsFindingByCss: string read __fakeFieldGet_SupportsFindingByCss;
    {class} property Proxy: string read __fakeFieldGet_Proxy;
    {class} property Rotatable: string read __fakeFieldGet_Rotatable;
    {class} property AcceptSslCertificates: string read __fakeFieldGet_AcceptSslCertificates;
    {class} property AcceptInsecureCertificates: string read __fakeFieldGet_AcceptInsecureCertificates;
    {class} property HasNativeEvents: string read __fakeFieldGet_HasNativeEvents;
    {class} property UnexpectedAlertBehavior: string read __fakeFieldGet_UnexpectedAlertBehavior;
    {class} property PageLoadStrategy: string read __fakeFieldGet_PageLoadStrategy;
    {class} property LoggingPreferences: string read __fakeFieldGet_LoggingPreferences;
    {class} property DisableOverlappedElementCheck: string read __fakeFieldGet_DisableOverlappedElementCheck;
    {class} property EnableProfiling: string read __fakeFieldGet_EnableProfiling;
    {class} property SupportsLocationContext: string read __fakeFieldGet_SupportsLocationContext;
    {class} property SupportsApplicationCache: string read __fakeFieldGet_SupportsApplicationCache;
    {class} property SupportsWebStorage: string read __fakeFieldGet_SupportsWebStorage;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.CapabilityType')]
  DNCapabilityType = interface(DDN.mscorlib.DNObject)
  ['{53EC7A29-AE54-3FE2-B0B7-85C96BA9134F}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNCapabilityType = class(TDNGenericImport<DNCapabilityTypeClass, DNCapabilityType>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNCommandClass = interface(DDN.mscorlib.DNObjectClass)
  ['{955F564A-E43B-52C6-A5D8-CA2108DAAB5C}']
  { constructors } 

    {class} function init(name: string; jsonParameters: string): DNCommand; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.Command')]
  DNCommand = interface(DDN.mscorlib.DNObject)
  ['{79D3FA5D-DE2C-3940-A09F-AB417D2D741D}']
  { getters & setters } 

    function get_SessionId: DNSessionId;
    function get_Name: string;
    function get_ParametersAsJsonString: string;

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property SessionId: DNSessionId read get_SessionId;
    property Name: string read get_Name;
    property ParametersAsJsonString: string read get_ParametersAsJsonString;
  end;

  TDNCommand = class(TDNGenericImport<DNCommandClass, DNCommand>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNCommandInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D3CB6071-0063-5396-9CAE-AA7ABA640BC6}']
  { constructors } 

    {class} function init(method: string; resourcePath: string): DNCommandInfo;

  { static fields getter & setter } 

   function __fakeFieldGet_PostCommand: string;
   function __fakeFieldGet_GetCommand: string;
   function __fakeFieldGet_DeleteCommand: string;

  { static fields } 

    {class} property PostCommand: string read __fakeFieldGet_PostCommand;
    {class} property GetCommand: string read __fakeFieldGet_GetCommand;
    {class} property DeleteCommand: string read __fakeFieldGet_DeleteCommand;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.CommandInfo')]
  DNCommandInfo = interface(DDN.mscorlib.DNObject)
  ['{052D81AE-A348-317A-83E7-D64191D04DE8}']
  { getters & setters } 

    function get_ResourcePath: string;
    function get_Method: string;

  { methods } 

    function CreateWebRequest(baseUri: DDN.WebDriver.Common.DNUri; commandToExecute: DNCommand): DDN.WebDriver.Common.DNHttpWebRequest;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ResourcePath: string read get_ResourcePath;
    property Method: string read get_Method;
  end;

  TDNCommandInfo = class(TDNGenericImport<DNCommandInfoClass, DNCommandInfo>)
  public const
   PostCommand = 'POST';
   GetCommand = 'GET';
   DeleteCommand = 'DELETE';
  end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNCommandInfoRepositoryClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6072C5BF-28FB-5201-9791-C53B93557F67}']
  end;

  [DNTypeName('OpenQA.Selenium.Remote.CommandInfoRepository')]
  DNCommandInfoRepository = interface(DDN.mscorlib.DNObject)
  ['{D37419C0-9983-3E8D-B15D-42513A7C0F69}']
  { getters & setters } 

    function get_SpecificationLevel: Int32;

  { methods } 

    function GetCommandInfo(commandName: string): DNCommandInfo;
    function TryAddCommand(commandName: string; commandInfo: DNCommandInfo): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SpecificationLevel: Int32 read get_SpecificationLevel;
  end;

  TDNCommandInfoRepository = class(TDNGenericImport<DNCommandInfoRepositoryClass, DNCommandInfoRepository>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNW3CWireProtocolCommandInfoRepositoryClass = interface(DNCommandInfoRepositoryClass)
  ['{734F9E16-DC20-51F1-8AE8-9057A98E3C7E}']
  { constructors } 

    {class} function init: DNW3CWireProtocolCommandInfoRepository;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.W3CWireProtocolCommandInfoRepository')]
  DNW3CWireProtocolCommandInfoRepository = interface(DNCommandInfoRepository)
  ['{9F9344E6-F12D-3988-8526-7085F20726E6}']
  { getters & setters } 

    function get_SpecificationLevel: Int32;

  { methods } 

    function GetCommandInfo(commandName: string): DNCommandInfo;
    function TryAddCommand(commandName: string; commandInfo: DNCommandInfo): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SpecificationLevel: Int32 read get_SpecificationLevel;
  end;

  TDNW3CWireProtocolCommandInfoRepository = class(TDNGenericImport<DNW3CWireProtocolCommandInfoRepositoryClass, DNW3CWireProtocolCommandInfoRepository>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNWebDriverWireProtocolCommandInfoRepositoryClass = interface(DNCommandInfoRepositoryClass)
  ['{2E34CBB6-6D25-55EA-8554-92FB76EC7F2A}']
  { constructors } 

    {class} function init: DNWebDriverWireProtocolCommandInfoRepository;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.WebDriverWireProtocolCommandInfoRepository')]
  DNWebDriverWireProtocolCommandInfoRepository = interface(DNCommandInfoRepository)
  ['{EB6520DA-3276-3710-9796-DF654456F446}']
  { getters & setters } 

    function get_SpecificationLevel: Int32;

  { methods } 

    function GetCommandInfo(commandName: string): DNCommandInfo;
    function TryAddCommand(commandName: string; commandInfo: DNCommandInfo): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SpecificationLevel: Int32 read get_SpecificationLevel;
  end;

  TDNWebDriverWireProtocolCommandInfoRepository = class(TDNGenericImport<DNWebDriverWireProtocolCommandInfoRepositoryClass, DNWebDriverWireProtocolCommandInfoRepository>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNDesiredCapabilitiesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{37F44EDF-B143-5DFB-A6AA-962F012DF251}']
  { constructors } 

    {class} function init(browser: string; version: string; platform: DNPlatform): DNDesiredCapabilities; overload;
    {class} function init: DNDesiredCapabilities; overload;

  { static methods } 

    {class} function Firefox: DNDesiredCapabilities;
    {class} function PhantomJS: DNDesiredCapabilities;
    {class} function InternetExplorer: DNDesiredCapabilities;
    {class} function Edge: DNDesiredCapabilities;
    {class} function HtmlUnit: DNDesiredCapabilities;
    {class} function HtmlUnitWithJavaScript: DNDesiredCapabilities;
    {class} function IPhone: DNDesiredCapabilities;
    {class} function IPad: DNDesiredCapabilities;
    {class} function Chrome: DNDesiredCapabilities;
    {class} function Android: DNDesiredCapabilities;
    {class} function Opera: DNDesiredCapabilities;
    {class} function Safari: DNDesiredCapabilities;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.DesiredCapabilities')]
  DNDesiredCapabilities = interface(DDN.mscorlib.DNObject)
  ['{402BF930-4DFF-3A09-806C-19807FDC5022}']
  { getters & setters } 

    function get_BrowserName: string;
    function get_Platform: DNPlatform;
    procedure set_Platform(value: DNPlatform);
    function get_Version: string;
    function get_IsJavaScriptEnabled: Boolean;
    procedure set_IsJavaScriptEnabled(value: Boolean);
    function get_AcceptInsecureCerts: Boolean;
    procedure set_AcceptInsecureCerts(value: Boolean);

  { methods } 

    function HasCapability(capability: string): Boolean;
    function GetCapability(capability: string): DDN.mscorlib.DNObject;
    procedure SetCapability(capability: string; capabilityValue: DDN.mscorlib.DNObject);
    function GetHashCode: Int32;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property BrowserName: string read get_BrowserName;
    property Platform: DNPlatform read get_Platform write set_Platform;
    property Version: string read get_Version;
    property IsJavaScriptEnabled: Boolean read get_IsJavaScriptEnabled write set_IsJavaScriptEnabled;
    property AcceptInsecureCerts: Boolean read get_AcceptInsecureCerts write set_AcceptInsecureCerts;
  end;

  TDNDesiredCapabilities = class(TDNGenericImport<DNDesiredCapabilitiesClass, DNDesiredCapabilities>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNDriverCommandClass = interface(DDN.mscorlib.DNObjectClass)
  ['{210D79E3-7844-5496-B834-14735220FB74}']
  { static fields getter & setter } 

   function __fakeFieldGet_DefineDriverMapping: string;
   function __fakeFieldGet_Status: string;
   function __fakeFieldGet_NewSession: string;
   function __fakeFieldGet_GetSessionList: string;
   function __fakeFieldGet_GetSessionCapabilities: string;
   function __fakeFieldGet_Close: string;
   function __fakeFieldGet_Quit: string;
   function __fakeFieldGet_Get: string;
   function __fakeFieldGet_GoBack: string;
   function __fakeFieldGet_GoForward: string;
   function __fakeFieldGet_Refresh: string;
   function __fakeFieldGet_AddCookie: string;
   function __fakeFieldGet_GetAllCookies: string;
   function __fakeFieldGet_GetCookie: string;
   function __fakeFieldGet_DeleteCookie: string;
   function __fakeFieldGet_DeleteAllCookies: string;
   function __fakeFieldGet_FindElement: string;
   function __fakeFieldGet_FindElements: string;
   function __fakeFieldGet_FindChildElement: string;
   function __fakeFieldGet_FindChildElements: string;
   function __fakeFieldGet_DescribeElement: string;
   function __fakeFieldGet_ClearElement: string;
   function __fakeFieldGet_ClickElement: string;
   function __fakeFieldGet_SendKeysToElement: string;
   function __fakeFieldGet_TapElement: string;
   function __fakeFieldGet_SubmitElement: string;
   function __fakeFieldGet_GetCurrentWindowHandle: string;
   function __fakeFieldGet_GetWindowHandles: string;
   function __fakeFieldGet_SwitchToWindow: string;
   function __fakeFieldGet_SwitchToFrame: string;
   function __fakeFieldGet_SwitchToParentFrame: string;
   function __fakeFieldGet_GetActiveElement: string;
   function __fakeFieldGet_GetCurrentUrl: string;
   function __fakeFieldGet_GetPageSource: string;
   function __fakeFieldGet_GetTitle: string;
   function __fakeFieldGet_ExecuteScript: string;
   function __fakeFieldGet_ExecuteAsyncScript: string;
   function __fakeFieldGet_GetElementText: string;
   function __fakeFieldGet_GetElementTagName: string;
   function __fakeFieldGet_IsElementSelected: string;
   function __fakeFieldGet_IsElementEnabled: string;
   function __fakeFieldGet_IsElementDisplayed: string;
   function __fakeFieldGet_GetElementLocation: string;
   function __fakeFieldGet_GetElementLocationOnceScrolledIntoView: string;
   function __fakeFieldGet_GetElementSize: string;
   function __fakeFieldGet_GetElementRect: string;
   function __fakeFieldGet_GetElementAttribute: string;
   function __fakeFieldGet_GetElementProperty: string;
   function __fakeFieldGet_GetElementValueOfCssProperty: string;
   function __fakeFieldGet_ElementEquals: string;
   function __fakeFieldGet_Screenshot: string;
   function __fakeFieldGet_ElementScreenshot: string;
   function __fakeFieldGet_GetOrientation: string;
   function __fakeFieldGet_SetOrientation: string;
   function __fakeFieldGet_GetWindowSize: string;
   function __fakeFieldGet_SetWindowSize: string;
   function __fakeFieldGet_GetWindowPosition: string;
   function __fakeFieldGet_SetWindowPosition: string;
   function __fakeFieldGet_GetWindowRect: string;
   function __fakeFieldGet_SetWindowRect: string;
   function __fakeFieldGet_MaximizeWindow: string;
   function __fakeFieldGet_MinimizeWindow: string;
   function __fakeFieldGet_FullScreenWindow: string;
   function __fakeFieldGet_DismissAlert: string;
   function __fakeFieldGet_AcceptAlert: string;
   function __fakeFieldGet_GetAlertText: string;
   function __fakeFieldGet_SetAlertValue: string;
   function __fakeFieldGet_SetAlertCredentials: string;
   function __fakeFieldGet_ImplicitlyWait: string;
   function __fakeFieldGet_SetAsyncScriptTimeout: string;
   function __fakeFieldGet_SetTimeouts: string;
   function __fakeFieldGet_GetTimeouts: string;
   function __fakeFieldGet_Actions: string;
   function __fakeFieldGet_CancelActions: string;
   function __fakeFieldGet_MouseClick: string;
   function __fakeFieldGet_MouseDoubleClick: string;
   function __fakeFieldGet_MouseDown: string;
   function __fakeFieldGet_MouseUp: string;
   function __fakeFieldGet_MouseMoveTo: string;
   function __fakeFieldGet_SendKeysToActiveElement: string;
   function __fakeFieldGet_UploadFile: string;
   function __fakeFieldGet_TouchSingleTap: string;
   function __fakeFieldGet_TouchPress: string;
   function __fakeFieldGet_TouchRelease: string;
   function __fakeFieldGet_TouchMove: string;
   function __fakeFieldGet_TouchScroll: string;
   function __fakeFieldGet_TouchDoubleTap: string;
   function __fakeFieldGet_TouchLongPress: string;
   function __fakeFieldGet_TouchFlick: string;
   function __fakeFieldGet_GetLocation: string;
   function __fakeFieldGet_SetLocation: string;
   function __fakeFieldGet_GetAppCache: string;
   function __fakeFieldGet_GetAppCacheStatus: string;
   function __fakeFieldGet_ClearAppCache: string;
   function __fakeFieldGet_GetLocalStorageItem: string;
   function __fakeFieldGet_GetLocalStorageKeys: string;
   function __fakeFieldGet_SetLocalStorageItem: string;
   function __fakeFieldGet_RemoveLocalStorageItem: string;
   function __fakeFieldGet_ClearLocalStorage: string;
   function __fakeFieldGet_GetLocalStorageSize: string;
   function __fakeFieldGet_GetSessionStorageItem: string;
   function __fakeFieldGet_GetSessionStorageKeys: string;
   function __fakeFieldGet_SetSessionStorageItem: string;
   function __fakeFieldGet_RemoveSessionStorageItem: string;
   function __fakeFieldGet_ClearSessionStorage: string;
   function __fakeFieldGet_GetSessionStorageSize: string;
   function __fakeFieldGet_GetAvailableLogTypes: string;
   function __fakeFieldGet_GetLog: string;

  { static fields } 

    {class} property DefineDriverMapping: string read __fakeFieldGet_DefineDriverMapping;
    {class} property Status: string read __fakeFieldGet_Status;
    {class} property NewSession: string read __fakeFieldGet_NewSession;
    {class} property GetSessionList: string read __fakeFieldGet_GetSessionList;
    {class} property GetSessionCapabilities: string read __fakeFieldGet_GetSessionCapabilities;
    {class} property Close: string read __fakeFieldGet_Close;
    {class} property Quit: string read __fakeFieldGet_Quit;
    {class} property Get: string read __fakeFieldGet_Get;
    {class} property GoBack: string read __fakeFieldGet_GoBack;
    {class} property GoForward: string read __fakeFieldGet_GoForward;
    {class} property Refresh: string read __fakeFieldGet_Refresh;
    {class} property AddCookie: string read __fakeFieldGet_AddCookie;
    {class} property GetAllCookies: string read __fakeFieldGet_GetAllCookies;
    {class} property GetCookie: string read __fakeFieldGet_GetCookie;
    {class} property DeleteCookie: string read __fakeFieldGet_DeleteCookie;
    {class} property DeleteAllCookies: string read __fakeFieldGet_DeleteAllCookies;
    {class} property FindElement: string read __fakeFieldGet_FindElement;
    {class} property FindElements: string read __fakeFieldGet_FindElements;
    {class} property FindChildElement: string read __fakeFieldGet_FindChildElement;
    {class} property FindChildElements: string read __fakeFieldGet_FindChildElements;
    {class} property DescribeElement: string read __fakeFieldGet_DescribeElement;
    {class} property ClearElement: string read __fakeFieldGet_ClearElement;
    {class} property ClickElement: string read __fakeFieldGet_ClickElement;
    {class} property SendKeysToElement: string read __fakeFieldGet_SendKeysToElement;
    {class} property TapElement: string read __fakeFieldGet_TapElement;
    {class} property SubmitElement: string read __fakeFieldGet_SubmitElement;
    {class} property GetCurrentWindowHandle: string read __fakeFieldGet_GetCurrentWindowHandle;
    {class} property GetWindowHandles: string read __fakeFieldGet_GetWindowHandles;
    {class} property SwitchToWindow: string read __fakeFieldGet_SwitchToWindow;
    {class} property SwitchToFrame: string read __fakeFieldGet_SwitchToFrame;
    {class} property SwitchToParentFrame: string read __fakeFieldGet_SwitchToParentFrame;
    {class} property GetActiveElement: string read __fakeFieldGet_GetActiveElement;
    {class} property GetCurrentUrl: string read __fakeFieldGet_GetCurrentUrl;
    {class} property GetPageSource: string read __fakeFieldGet_GetPageSource;
    {class} property GetTitle: string read __fakeFieldGet_GetTitle;
    {class} property ExecuteScript: string read __fakeFieldGet_ExecuteScript;
    {class} property ExecuteAsyncScript: string read __fakeFieldGet_ExecuteAsyncScript;
    {class} property GetElementText: string read __fakeFieldGet_GetElementText;
    {class} property GetElementTagName: string read __fakeFieldGet_GetElementTagName;
    {class} property IsElementSelected: string read __fakeFieldGet_IsElementSelected;
    {class} property IsElementEnabled: string read __fakeFieldGet_IsElementEnabled;
    {class} property IsElementDisplayed: string read __fakeFieldGet_IsElementDisplayed;
    {class} property GetElementLocation: string read __fakeFieldGet_GetElementLocation;
    {class} property GetElementLocationOnceScrolledIntoView: string read __fakeFieldGet_GetElementLocationOnceScrolledIntoView;
    {class} property GetElementSize: string read __fakeFieldGet_GetElementSize;
    {class} property GetElementRect: string read __fakeFieldGet_GetElementRect;
    {class} property GetElementAttribute: string read __fakeFieldGet_GetElementAttribute;
    {class} property GetElementProperty: string read __fakeFieldGet_GetElementProperty;
    {class} property GetElementValueOfCssProperty: string read __fakeFieldGet_GetElementValueOfCssProperty;
    {class} property ElementEquals: string read __fakeFieldGet_ElementEquals;
    {class} property Screenshot: string read __fakeFieldGet_Screenshot;
    {class} property ElementScreenshot: string read __fakeFieldGet_ElementScreenshot;
    {class} property GetOrientation: string read __fakeFieldGet_GetOrientation;
    {class} property SetOrientation: string read __fakeFieldGet_SetOrientation;
    {class} property GetWindowSize: string read __fakeFieldGet_GetWindowSize;
    {class} property SetWindowSize: string read __fakeFieldGet_SetWindowSize;
    {class} property GetWindowPosition: string read __fakeFieldGet_GetWindowPosition;
    {class} property SetWindowPosition: string read __fakeFieldGet_SetWindowPosition;
    {class} property GetWindowRect: string read __fakeFieldGet_GetWindowRect;
    {class} property SetWindowRect: string read __fakeFieldGet_SetWindowRect;
    {class} property MaximizeWindow: string read __fakeFieldGet_MaximizeWindow;
    {class} property MinimizeWindow: string read __fakeFieldGet_MinimizeWindow;
    {class} property FullScreenWindow: string read __fakeFieldGet_FullScreenWindow;
    {class} property DismissAlert: string read __fakeFieldGet_DismissAlert;
    {class} property AcceptAlert: string read __fakeFieldGet_AcceptAlert;
    {class} property GetAlertText: string read __fakeFieldGet_GetAlertText;
    {class} property SetAlertValue: string read __fakeFieldGet_SetAlertValue;
    {class} property SetAlertCredentials: string read __fakeFieldGet_SetAlertCredentials;
    {class} property ImplicitlyWait: string read __fakeFieldGet_ImplicitlyWait;
    {class} property SetAsyncScriptTimeout: string read __fakeFieldGet_SetAsyncScriptTimeout;
    {class} property SetTimeouts: string read __fakeFieldGet_SetTimeouts;
    {class} property GetTimeouts: string read __fakeFieldGet_GetTimeouts;
    {class} property Actions: string read __fakeFieldGet_Actions;
    {class} property CancelActions: string read __fakeFieldGet_CancelActions;
    {class} property MouseClick: string read __fakeFieldGet_MouseClick;
    {class} property MouseDoubleClick: string read __fakeFieldGet_MouseDoubleClick;
    {class} property MouseDown: string read __fakeFieldGet_MouseDown;
    {class} property MouseUp: string read __fakeFieldGet_MouseUp;
    {class} property MouseMoveTo: string read __fakeFieldGet_MouseMoveTo;
    {class} property SendKeysToActiveElement: string read __fakeFieldGet_SendKeysToActiveElement;
    {class} property UploadFile: string read __fakeFieldGet_UploadFile;
    {class} property TouchSingleTap: string read __fakeFieldGet_TouchSingleTap;
    {class} property TouchPress: string read __fakeFieldGet_TouchPress;
    {class} property TouchRelease: string read __fakeFieldGet_TouchRelease;
    {class} property TouchMove: string read __fakeFieldGet_TouchMove;
    {class} property TouchScroll: string read __fakeFieldGet_TouchScroll;
    {class} property TouchDoubleTap: string read __fakeFieldGet_TouchDoubleTap;
    {class} property TouchLongPress: string read __fakeFieldGet_TouchLongPress;
    {class} property TouchFlick: string read __fakeFieldGet_TouchFlick;
    {class} property GetLocation: string read __fakeFieldGet_GetLocation;
    {class} property SetLocation: string read __fakeFieldGet_SetLocation;
    {class} property GetAppCache: string read __fakeFieldGet_GetAppCache;
    {class} property GetAppCacheStatus: string read __fakeFieldGet_GetAppCacheStatus;
    {class} property ClearAppCache: string read __fakeFieldGet_ClearAppCache;
    {class} property GetLocalStorageItem: string read __fakeFieldGet_GetLocalStorageItem;
    {class} property GetLocalStorageKeys: string read __fakeFieldGet_GetLocalStorageKeys;
    {class} property SetLocalStorageItem: string read __fakeFieldGet_SetLocalStorageItem;
    {class} property RemoveLocalStorageItem: string read __fakeFieldGet_RemoveLocalStorageItem;
    {class} property ClearLocalStorage: string read __fakeFieldGet_ClearLocalStorage;
    {class} property GetLocalStorageSize: string read __fakeFieldGet_GetLocalStorageSize;
    {class} property GetSessionStorageItem: string read __fakeFieldGet_GetSessionStorageItem;
    {class} property GetSessionStorageKeys: string read __fakeFieldGet_GetSessionStorageKeys;
    {class} property SetSessionStorageItem: string read __fakeFieldGet_SetSessionStorageItem;
    {class} property RemoveSessionStorageItem: string read __fakeFieldGet_RemoveSessionStorageItem;
    {class} property ClearSessionStorage: string read __fakeFieldGet_ClearSessionStorage;
    {class} property GetSessionStorageSize: string read __fakeFieldGet_GetSessionStorageSize;
    {class} property GetAvailableLogTypes: string read __fakeFieldGet_GetAvailableLogTypes;
    {class} property GetLog: string read __fakeFieldGet_GetLog;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.DriverCommand')]
  DNDriverCommand = interface(DDN.mscorlib.DNObject)
  ['{97F8D87E-4A82-3D4A-9008-5D013F2CAAA8}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDriverCommand = class(TDNGenericImport<DNDriverCommandClass, DNDriverCommand>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNErrorResponseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0ABE70A7-5D8A-54CE-B4AD-249247923BE8}']
  { constructors } 

    {class} function init: DNErrorResponse; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.ErrorResponse')]
  DNErrorResponse = interface(DDN.mscorlib.DNObject)
  ['{5D245DBD-5B7D-328D-B675-F64DC3FCB64F}']
  { getters & setters } 

    function get_Message: string;
    procedure set_Message(value: string);
    function get_ClassName: string;
    procedure set_ClassName(value: string);
    function get_Screenshot: string;
    procedure set_Screenshot(value: string);
    function get_StackTrace: TArray<DNStackTraceElement>;
    procedure set_StackTrace(value: TArray<DNStackTraceElement>);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Message: string read get_Message write set_Message;
    property ClassName: string read get_ClassName write set_ClassName;
    property Screenshot: string read get_Screenshot write set_Screenshot;
    property StackTrace: TArray<DNStackTraceElement> read get_StackTrace write set_StackTrace;
  end;

  TDNErrorResponse = class(TDNGenericImport<DNErrorResponseClass, DNErrorResponse>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  [DNTypeName('OpenQA.Selenium.Remote.ICommandExecutor')]
  DNICommandExecutor = interface(DNObject)
  ['{31025164-17F7-396D-B574-F0E0D48FCA6B}']
  { getters & setters } 

    function get_CommandInfoRepository: DNCommandInfoRepository;

  { methods } 

    function Execute(commandToExecute: DNCommand): DNResponse;

  { propertys } 

    property CommandInfoRepository: DNCommandInfoRepository read get_CommandInfoRepository;
  end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  [DNTypeName('OpenQA.Selenium.Remote.IHasSessionId')]
  DNIHasSessionId = interface(DNObject)
  ['{AC523B5F-AAA8-3381-8850-8E8806B1EBD4}']
  { getters & setters } 

    function get_SessionId: DNSessionId;

  { propertys } 

    property SessionId: DNSessionId read get_SessionId;
  end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNLocalFileDetectorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FAE53DF8-375C-547F-8803-DB2229B1B543}']
  { constructors } 

    {class} function init: DNLocalFileDetector;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.LocalFileDetector')]
  DNLocalFileDetector = interface(DDN.mscorlib.DNObject)
  ['{6E0455DA-B50F-30CD-A6C6-BFD6D7FBC014}']
  { methods } 

    function IsFile(keySequence: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNLocalFileDetector = class(TDNGenericImport<DNLocalFileDetectorClass, DNLocalFileDetector>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteApplicationCacheClass = interface(DDN.mscorlib.DNObjectClass)
  ['{4C8E73C6-F4DC-5BA1-AEF4-0894048A2302}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteApplicationCache;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteApplicationCache')]
  DNRemoteApplicationCache = interface(DDN.mscorlib.DNObject)
  ['{8DC4E758-B6E7-3617-8663-48B9B6FBFAEF}']
  { getters & setters } 

    function get_Status: DNAppCacheStatus;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Status: DNAppCacheStatus read get_Status;
  end;

  TDNRemoteApplicationCache = class(TDNGenericImport<DNRemoteApplicationCacheClass, DNRemoteApplicationCache>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteLocalStorageClass = interface(DDN.mscorlib.DNObjectClass)
  ['{97393988-987B-5D97-995B-DB4B123D4876}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteLocalStorage;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteLocalStorage')]
  DNRemoteLocalStorage = interface(DDN.mscorlib.DNObject)
  ['{B3ECE73E-A11A-3032-96BB-564A2C0C69ED}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetItem(key: string): string;
    procedure SetItem(key: string; value: string);
    function RemoveItem(key: string): string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNRemoteLocalStorage = class(TDNGenericImport<DNRemoteLocalStorageClass, DNRemoteLocalStorage>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteLocationContextClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F973CFB1-3B05-57E2-B25B-B44F1AF26BDD}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteLocationContext;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteLocationContext')]
  DNRemoteLocationContext = interface(DDN.mscorlib.DNObject)
  ['{B5EAB5DA-C589-3CB2-A66C-39D27A304F22}']
  { getters & setters } 

    function get_PhysicalLocation: DNLocation;
    procedure set_PhysicalLocation(value: DNLocation);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property PhysicalLocation: DNLocation read get_PhysicalLocation write set_PhysicalLocation;
  end;

  TDNRemoteLocationContext = class(TDNGenericImport<DNRemoteLocationContextClass, DNRemoteLocationContext>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteLogsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{A67DABA8-B742-5C23-96CD-995B25B3073A}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteLogs;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteLogs')]
  DNRemoteLogs = interface(DDN.mscorlib.DNObject)
  ['{C84A2C10-7467-3DCC-A556-48AC4E432A03}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRemoteLogs = class(TDNGenericImport<DNRemoteLogsClass, DNRemoteLogs>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteSessionStorageClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8C5959FA-8B19-5D0B-BEAC-8E716D4DEA7E}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteSessionStorage;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteSessionStorage')]
  DNRemoteSessionStorage = interface(DDN.mscorlib.DNObject)
  ['{4993D11B-A0C2-3F9B-B63D-ECC594269B83}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetItem(key: string): string;
    procedure SetItem(key: string; value: string);
    function RemoveItem(key: string): string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNRemoteSessionStorage = class(TDNGenericImport<DNRemoteSessionStorageClass, DNRemoteSessionStorage>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteTouchScreenClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1DA03872-7B63-52DC-9BF2-DAE08CCCB0A2}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteTouchScreen;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteTouchScreen')]
  DNRemoteTouchScreen = interface(DDN.mscorlib.DNObject)
  ['{64AAA9E4-2E9C-319B-BDB3-0A9E7F9F3C65}']
  { methods } 

    procedure SingleTap(where: DNICoordinates);
    procedure Down(locationX: Int32; locationY: Int32);
    procedure Up(locationX: Int32; locationY: Int32);
    procedure Move(locationX: Int32; locationY: Int32);
    procedure Scroll(where: DNICoordinates; offsetX: Int32; offsetY: Int32); overload;
    procedure Scroll(offsetX: Int32; offsetY: Int32); overload;
    procedure DoubleTap(where: DNICoordinates);
    procedure LongPress(where: DNICoordinates);
    procedure Flick(speedX: Int32; speedY: Int32); overload;
    procedure Flick(where: DNICoordinates; offsetX: Int32; offsetY: Int32; speed: Int32); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRemoteTouchScreen = class(TDNGenericImport<DNRemoteTouchScreenClass, DNRemoteTouchScreen>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteWebDriverClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D53191D8-310E-59F4-AA2A-6B2B497D907C}']
  { constructors } 

    {class} function init(options: DNDriverOptions): DNRemoteWebDriver; overload;
    {class} function init(desiredCapabilities: DNICapabilities): DNRemoteWebDriver; overload;
    {class} function init(remoteAddress: DDN.WebDriver.Common.DNUri; options: DNDriverOptions): DNRemoteWebDriver; overload;
    {class} function init(remoteAddress: DDN.WebDriver.Common.DNUri; desiredCapabilities: DNICapabilities): DNRemoteWebDriver; overload;
    {class} function init(remoteAddress: DDN.WebDriver.Common.DNUri; desiredCapabilities: DNICapabilities; commandTimeout: DDN.mscorlib.DNTimeSpan): DNRemoteWebDriver; overload;
    {class} function init(commandExecutor: DNICommandExecutor; desiredCapabilities: DNICapabilities): DNRemoteWebDriver; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteWebDriver')]
  DNRemoteWebDriver = interface(DDN.mscorlib.DNObject)
  ['{1BD14372-776F-34BB-9F88-8122C3FF884F}']
  { getters & setters } 

    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNRemoteWebDriver = class(TDNGenericImport<DNRemoteWebDriverClass, DNRemoteWebDriver>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromeDriverClass = interface(DNRemoteWebDriverClass)
  ['{01E3675A-56E3-500B-BF9D-080121355F8F}']
  { constructors } 

    {class} function init: DNChromeDriver; overload;
    {class} function init(options: DNChromeOptions): DNChromeDriver; overload;
    {class} function init(service: DNChromeDriverService): DNChromeDriver; overload;
    {class} function init(chromeDriverDirectory: string): DNChromeDriver; overload;
    {class} function init(chromeDriverDirectory: string; options: DNChromeOptions): DNChromeDriver; overload;
    {class} function init(chromeDriverDirectory: string; options: DNChromeOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNChromeDriver; overload;
    {class} function init(service: DNChromeDriverService; options: DNChromeOptions): DNChromeDriver; overload;
    {class} function init(service: DNChromeDriverService; options: DNChromeOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNChromeDriver; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_AcceptUntrustedCertificates: Boolean;

  { static fields } 

    {class} property AcceptUntrustedCertificates: Boolean read __fakeFieldGet_AcceptUntrustedCertificates;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromeDriver')]
  DNChromeDriver = interface(DNRemoteWebDriver)
  ['{5CA4179D-9357-3B55-BFA3-848D8863BC87}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNChromeDriver = class(TDNGenericImport<DNChromeDriverClass, DNChromeDriver>) end;

  //-------------namespace: OpenQA.Selenium.Edge----------------
  DNEdgeDriverClass = interface(DNRemoteWebDriverClass)
  ['{6C0CDCA1-9EE6-5D0E-BDC7-1F94ACA406E3}']
  { constructors } 

    {class} function init: DNEdgeDriver; overload;
    {class} function init(options: DNEdgeOptions): DNEdgeDriver; overload;
    {class} function init(service: DNEdgeDriverService): DNEdgeDriver; overload;
    {class} function init(edgeDriverDirectory: string): DNEdgeDriver; overload;
    {class} function init(edgeDriverDirectory: string; options: DNEdgeOptions): DNEdgeDriver; overload;
    {class} function init(edgeDriverDirectory: string; options: DNEdgeOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNEdgeDriver; overload;
    {class} function init(service: DNEdgeDriverService; options: DNEdgeOptions): DNEdgeDriver; overload;
    {class} function init(service: DNEdgeDriverService; options: DNEdgeOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNEdgeDriver; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Edge.EdgeDriver')]
  DNEdgeDriver = interface(DNRemoteWebDriver)
  ['{5CCDB0EE-D4A6-3C6C-A398-B49D66B64C34}']
  { getters & setters } 

    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNEdgeDriver = class(TDNGenericImport<DNEdgeDriverClass, DNEdgeDriver>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxDriverClass = interface(DNRemoteWebDriverClass)
  ['{60A05F75-7A7D-557C-9D9B-6DA42FB1EFE7}']
  { constructors } 

    {class} function init: DNFirefoxDriver; overload;
    {class} function init(profile: DNFirefoxProfile): DNFirefoxDriver; overload;
    {class} function init(capabilities: DNICapabilities): DNFirefoxDriver; overload;
    {class} function init(binary: DNFirefoxBinary; profile: DNFirefoxProfile): DNFirefoxDriver; overload;
    {class} function init(binary: DNFirefoxBinary; profile: DNFirefoxProfile; commandTimeout: DDN.mscorlib.DNTimeSpan): DNFirefoxDriver; overload;
    {class} function init(options: DNFirefoxOptions): DNFirefoxDriver; overload;
    {class} function init(service: DNFirefoxDriverService): DNFirefoxDriver; overload;
    {class} function init(service: DNFirefoxDriverService; options: DNFirefoxOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNFirefoxDriver; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_ProfileCapabilityName: string;
   function __fakeFieldGet_BinaryCapabilityName: string;
   function __fakeFieldGet_DefaultPort: Int32;
   function __fakeFieldGet_DefaultEnableNativeEvents: Boolean;
   function __fakeFieldGet_AcceptUntrustedCertificates: Boolean;
   function __fakeFieldGet_AssumeUntrustedCertificateIssuer: Boolean;

  { static fields } 

    {class} property ProfileCapabilityName: string read __fakeFieldGet_ProfileCapabilityName;
    {class} property BinaryCapabilityName: string read __fakeFieldGet_BinaryCapabilityName;
    {class} property DefaultPort: Int32 read __fakeFieldGet_DefaultPort;
    {class} property DefaultEnableNativeEvents: Boolean read __fakeFieldGet_DefaultEnableNativeEvents;
    {class} property AcceptUntrustedCertificates: Boolean read __fakeFieldGet_AcceptUntrustedCertificates;
    {class} property AssumeUntrustedCertificateIssuer: Boolean read __fakeFieldGet_AssumeUntrustedCertificateIssuer;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxDriver')]
  DNFirefoxDriver = interface(DNRemoteWebDriver)
  ['{68EC8EB2-1DA5-3616-965F-599F5152F2C9}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_IsMarionette: Boolean;
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property IsMarionette: Boolean read get_IsMarionette;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNFirefoxDriver = class(TDNGenericImport<DNFirefoxDriverClass, DNFirefoxDriver>) end;

  //-------------namespace: OpenQA.Selenium.IE----------------
  DNInternetExplorerDriverClass = interface(DNRemoteWebDriverClass)
  ['{1F556FB7-7EDD-553B-8AB7-0952FC71C851}']
  { constructors } 

    {class} function init: DNInternetExplorerDriver; overload;
    {class} function init(options: DNInternetExplorerOptions): DNInternetExplorerDriver; overload;
    {class} function init(service: DNInternetExplorerDriverService): DNInternetExplorerDriver; overload;
    {class} function init(internetExplorerDriverServerDirectory: string): DNInternetExplorerDriver; overload;
    {class} function init(internetExplorerDriverServerDirectory: string; options: DNInternetExplorerOptions): DNInternetExplorerDriver; overload;
    {class} function init(internetExplorerDriverServerDirectory: string; options: DNInternetExplorerOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNInternetExplorerDriver; overload;
    {class} function init(service: DNInternetExplorerDriverService; options: DNInternetExplorerOptions): DNInternetExplorerDriver; overload;
    {class} function init(service: DNInternetExplorerDriverService; options: DNInternetExplorerOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNInternetExplorerDriver; overload;

  end;

  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerDriver')]
  DNInternetExplorerDriver = interface(DNRemoteWebDriver)
  ['{81E20335-4D38-3E1F-8D08-BCA15FAE88A6}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNInternetExplorerDriver = class(TDNGenericImport<DNInternetExplorerDriverClass, DNInternetExplorerDriver>) end;

  //-------------namespace: OpenQA.Selenium.Opera----------------
  DNOperaDriverClass = interface(DNRemoteWebDriverClass)
  ['{4272F4DA-D9FC-522D-A49B-C9532FEA508D}']
  { constructors } 

    {class} function init: DNOperaDriver; overload;
    {class} function init(options: DNOperaOptions): DNOperaDriver; overload;
    {class} function init(operaDriverDirectory: string): DNOperaDriver; overload;
    {class} function init(operaDriverDirectory: string; options: DNOperaOptions): DNOperaDriver; overload;
    {class} function init(operaDriverDirectory: string; options: DNOperaOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNOperaDriver; overload;
    {class} function init(service: DNOperaDriverService; options: DNOperaOptions): DNOperaDriver; overload;
    {class} function init(service: DNOperaDriverService; options: DNOperaOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNOperaDriver; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_AcceptUntrustedCertificates: Boolean;

  { static fields } 

    {class} property AcceptUntrustedCertificates: Boolean read __fakeFieldGet_AcceptUntrustedCertificates;

  end;

  [DNTypeName('OpenQA.Selenium.Opera.OperaDriver')]
  DNOperaDriver = interface(DNRemoteWebDriver)
  ['{49287B07-6B1A-3253-A6FB-A2F8B18B37C6}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNOperaDriver = class(TDNGenericImport<DNOperaDriverClass, DNOperaDriver>) end;

  //-------------namespace: OpenQA.Selenium.PhantomJS----------------
  DNPhantomJSDriverClass = interface(DNRemoteWebDriverClass)
  ['{1EFBC060-2995-54FB-B6CE-3E6441DE8AAE}']
  { constructors } 

    {class} function init: DNPhantomJSDriver; overload;
    {class} function init(options: DNPhantomJSOptions): DNPhantomJSDriver; overload;
    {class} function init(service: DNPhantomJSDriverService): DNPhantomJSDriver; overload;
    {class} function init(phantomJSDriverServerDirectory: string): DNPhantomJSDriver; overload;
    {class} function init(phantomJSDriverServerDirectory: string; options: DNPhantomJSOptions): DNPhantomJSDriver; overload;
    {class} function init(phantomJSDriverServerDirectory: string; options: DNPhantomJSOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNPhantomJSDriver; overload;
    {class} function init(service: DNPhantomJSDriverService; options: DNPhantomJSOptions): DNPhantomJSDriver; overload;
    {class} function init(service: DNPhantomJSDriverService; options: DNPhantomJSOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNPhantomJSDriver; overload;

  end;

  [DNTypeName('OpenQA.Selenium.PhantomJS.PhantomJSDriver')]
  DNPhantomJSDriver = interface(DNRemoteWebDriver)
  ['{AD409FCF-C6CB-34E2-8801-0B5927FE4DCA}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function ExecutePhantomJS(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNPhantomJSDriver = class(TDNGenericImport<DNPhantomJSDriverClass, DNPhantomJSDriver>) end;

  //-------------namespace: OpenQA.Selenium.Safari----------------
  DNSafariDriverClass = interface(DNRemoteWebDriverClass)
  ['{894AF0FD-E498-5DDC-99E8-42EBD8D32BB0}']
  { constructors } 

    {class} function init: DNSafariDriver; overload;
    {class} function init(options: DNSafariOptions): DNSafariDriver; overload;
    {class} function init(service: DNSafariDriverService): DNSafariDriver; overload;
    {class} function init(safariDriverDirectory: string): DNSafariDriver; overload;
    {class} function init(safariDriverDirectory: string; options: DNSafariOptions): DNSafariDriver; overload;
    {class} function init(safariDriverDirectory: string; options: DNSafariOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNSafariDriver; overload;
    {class} function init(service: DNSafariDriverService; options: DNSafariOptions): DNSafariDriver; overload;
    {class} function init(service: DNSafariDriverService; options: DNSafariOptions; commandTimeout: DDN.mscorlib.DNTimeSpan): DNSafariDriver; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Safari.SafariDriver')]
  DNSafariDriver = interface(DNRemoteWebDriver)
  ['{FDF946B8-ACAC-33A7-A120-C28E10F3B037}']
  { getters & setters } 

    function get_FileDetector: DNIFileDetector;
    procedure set_FileDetector(value: DNIFileDetector);
    function get_Url: string;
    procedure set_Url(value: string);
    function get_Title: string;
    function get_PageSource: string;
    function get_CurrentWindowHandle: string;
    function get_Keyboard: DNIKeyboard;
    function get_Mouse: DNIMouse;
    function get_HasWebStorage: Boolean;
    function get_WebStorage: DNIWebStorage;
    function get_HasApplicationCache: Boolean;
    function get_ApplicationCache: DNIApplicationCache;
    function get_HasLocationContext: Boolean;
    function get_LocationContext: DNILocationContext;
    function get_Capabilities: DNICapabilities;
    function get_SessionId: DNSessionId;
    function get_IsActionExecutor: Boolean;

  { methods } 

    function FindElement(by: DNBy): DNIWebElement;
    procedure Close;
    procedure Quit;
    function Manage: DNIOptions;
    function Navigate: DNINavigation;
    function SwitchTo: DNITargetLocator;
    function ExecuteScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function ExecuteAsyncScript(script: string; args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    procedure Dispose;
    procedure PerformActions(actionSequenceList: DDN.mscorlib.DNIList<DNActionSequence>);
    procedure ResetInputState;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property FileDetector: DNIFileDetector read get_FileDetector write set_FileDetector;
    property Url: string read get_Url write set_Url;
    property Title: string read get_Title;
    property PageSource: string read get_PageSource;
    property CurrentWindowHandle: string read get_CurrentWindowHandle;
    property Keyboard: DNIKeyboard read get_Keyboard;
    property Mouse: DNIMouse read get_Mouse;
    property HasWebStorage: Boolean read get_HasWebStorage;
    property WebStorage: DNIWebStorage read get_WebStorage;
    property HasApplicationCache: Boolean read get_HasApplicationCache;
    property ApplicationCache: DNIApplicationCache read get_ApplicationCache;
    property HasLocationContext: Boolean read get_HasLocationContext;
    property LocationContext: DNILocationContext read get_LocationContext;
    property Capabilities: DNICapabilities read get_Capabilities;
    property SessionId: DNSessionId read get_SessionId;
    property IsActionExecutor: Boolean read get_IsActionExecutor;
  end;

  TDNSafariDriver = class(TDNGenericImport<DNSafariDriverClass, DNSafariDriver>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteWebElementClass = interface(DDN.mscorlib.DNObjectClass)
  ['{140CD7DC-E4D7-596F-B0FC-7315EE94E991}']
  { constructors } 

    {class} function init(parentDriver: DNRemoteWebDriver; id: string): DNRemoteWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteWebElement')]
  DNRemoteWebElement = interface(DDN.mscorlib.DNObject)
  ['{E82C9484-60E7-36D6-BCCD-149C812C6CCA}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNRemoteWebElement = class(TDNGenericImport<DNRemoteWebElementClass, DNRemoteWebElement>) end;

  //-------------namespace: OpenQA.Selenium.Chrome----------------
  DNChromeWebElementClass = interface(DNRemoteWebElementClass)
  ['{6181F351-062B-5B24-B5E6-5CE4C1E65FAB}']
  { constructors } 

    {class} function init(parent: DNChromeDriver; elementId: string): DNChromeWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.Chrome.ChromeWebElement')]
  DNChromeWebElement = interface(DNRemoteWebElement)
  ['{729E4EE8-4C52-3211-BFA3-7EAEF0E89168}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNChromeWebElement = class(TDNGenericImport<DNChromeWebElementClass, DNChromeWebElement>) end;

  //-------------namespace: OpenQA.Selenium.Edge----------------
  DNEdgeWebElementClass = interface(DNRemoteWebElementClass)
  ['{DE29FDB1-3EEB-52C0-A14F-8D18701CAAAB}']
  { constructors } 

    {class} function init(parent: DNEdgeDriver; elementId: string): DNEdgeWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.Edge.EdgeWebElement')]
  DNEdgeWebElement = interface(DNRemoteWebElement)
  ['{E21B2785-74D3-3D50-A921-BD6D56AC2D03}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNEdgeWebElement = class(TDNGenericImport<DNEdgeWebElementClass, DNEdgeWebElement>) end;

  //-------------namespace: OpenQA.Selenium.Firefox----------------
  DNFirefoxWebElementClass = interface(DNRemoteWebElementClass)
  ['{119E3584-6077-5E0E-9DDC-9D55B411F820}']
  { constructors } 

    {class} function init(parentDriver: DNFirefoxDriver; id: string): DNFirefoxWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.Firefox.FirefoxWebElement')]
  DNFirefoxWebElement = interface(DNRemoteWebElement)
  ['{AE2BB7B4-BAE4-38C0-BF81-4C188896B60F}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNFirefoxWebElement = class(TDNGenericImport<DNFirefoxWebElementClass, DNFirefoxWebElement>) end;

  //-------------namespace: OpenQA.Selenium.IE----------------
  DNInternetExplorerWebElementClass = interface(DNRemoteWebElementClass)
  ['{1DB0F8B0-B5D3-5775-9551-A9FBEC95C399}']
  { constructors } 

    {class} function init(parent: DNInternetExplorerDriver; id: string): DNInternetExplorerWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.IE.InternetExplorerWebElement')]
  DNInternetExplorerWebElement = interface(DNRemoteWebElement)
  ['{3B7F1FBF-31F1-385F-8C29-238241B83E69}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNInternetExplorerWebElement = class(TDNGenericImport<DNInternetExplorerWebElementClass, DNInternetExplorerWebElement>) end;

  //-------------namespace: OpenQA.Selenium.Opera----------------
  DNOperaWebElementClass = interface(DNRemoteWebElementClass)
  ['{B6979D04-0795-5682-851C-3D96B7B59099}']
  { constructors } 

    {class} function init(parent: DNOperaDriver; elementId: string): DNOperaWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.Opera.OperaWebElement')]
  DNOperaWebElement = interface(DNRemoteWebElement)
  ['{C2ED8185-49C6-3509-9250-6B7E98506BBE}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNOperaWebElement = class(TDNGenericImport<DNOperaWebElementClass, DNOperaWebElement>) end;

  //-------------namespace: OpenQA.Selenium.PhantomJS----------------
  DNPhantomJSWebElementClass = interface(DNRemoteWebElementClass)
  ['{466853BA-543D-568F-9D16-8DD880CE5DB9}']
  { constructors } 

    {class} function init(parent: DNPhantomJSDriver; id: string): DNPhantomJSWebElement;

  end;

  [DNTypeName('OpenQA.Selenium.PhantomJS.PhantomJSWebElement')]
  DNPhantomJSWebElement = interface(DNRemoteWebElement)
  ['{47FE3409-C0F4-3452-9BF6-41594426C734}']
  { getters & setters } 

    function get_WrappedDriver: DNIWebDriver;
    function get_TagName: string;
    function get_Text: string;
    function get_Enabled: Boolean;
    function get_Selected: Boolean;
    function get_Location: DDN.WebDriver.Common.DNPoint;
    function get_Size: DDN.WebDriver.Common.DNSize;
    function get_Displayed: Boolean;
    function get_LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint;
    function get_Coordinates: DNICoordinates;

  { methods } 

    procedure SendKeys(text: string);
    procedure Submit;
    procedure Click;
    function GetAttribute(attributeName: string): string;
    function GetCssValue(propertyName: string): string;
    function FindElement(by: DNBy): DNIWebElement;
    function FindElementByLinkText(linkText: string): DNIWebElement;
    function FindElementById(id: string): DNIWebElement;
    function FindElementByName(name: string): DNIWebElement;
    function FindElementByTagName(tagName: string): DNIWebElement;
    function FindElementByClassName(className: string): DNIWebElement;
    function FindElementByXPath(xpath: string): DNIWebElement;
    function FindElementByPartialLinkText(partialLinkText: string): DNIWebElement;
    function FindElementByCssSelector(cssSelector: string): DNIWebElement;
    function GetScreenshot: DNScreenshot;
    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property WrappedDriver: DNIWebDriver read get_WrappedDriver;
    property TagName: string read get_TagName;
    property Text: string read get_Text;
    property Enabled: Boolean read get_Enabled;
    property Selected: Boolean read get_Selected;
    property Location: DDN.WebDriver.Common.DNPoint read get_Location;
    property Size: DDN.WebDriver.Common.DNSize read get_Size;
    property Displayed: Boolean read get_Displayed;
    property LocationOnScreenOnceScrolledIntoView: DDN.WebDriver.Common.DNPoint read get_LocationOnScreenOnceScrolledIntoView;
    property Coordinates: DNICoordinates read get_Coordinates;
  end;

  TDNPhantomJSWebElement = class(TDNGenericImport<DNPhantomJSWebElementClass, DNPhantomJSWebElement>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNRemoteWebStorageClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3EB892ED-C798-5041-BB35-3016E2406A9E}']
  { constructors } 

    {class} function init(driver: DNRemoteWebDriver): DNRemoteWebStorage;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.RemoteWebStorage')]
  DNRemoteWebStorage = interface(DDN.mscorlib.DNObject)
  ['{522F8706-6212-3D78-A3A2-999CE98D1920}']
  { getters & setters } 

    function get_LocalStorage: DNILocalStorage;
    function get_SessionStorage: DNISessionStorage;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LocalStorage: DNILocalStorage read get_LocalStorage;
    property SessionStorage: DNISessionStorage read get_SessionStorage;
  end;

  TDNRemoteWebStorage = class(TDNGenericImport<DNRemoteWebStorageClass, DNRemoteWebStorage>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNResponseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{88A7A72A-F2F7-5A08-9387-01CAAC165294}']
  { constructors } 

    {class} function init: DNResponse; overload;
    {class} function init(sessionId: DNSessionId): DNResponse; overload;

  { static methods } 

    {class} function FromJson(value: string): DNResponse;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.Response')]
  DNResponse = interface(DDN.mscorlib.DNObject)
  ['{04FAC653-482A-384D-B125-7691558100CB}']
  { getters & setters } 

    function get_Value: DDN.mscorlib.DNObject;
    procedure set_Value(value: DDN.mscorlib.DNObject);
    function get_SessionId: string;
    procedure set_SessionId(value: string);
    function get_Status: DNWebDriverResult;
    procedure set_Status(value: DNWebDriverResult);
    function get_IsSpecificationCompliant: Boolean;

  { methods } 

    function ToJson: string;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Value: DDN.mscorlib.DNObject read get_Value write set_Value;
    property SessionId: string read get_SessionId write set_SessionId;
    property Status: DNWebDriverResult read get_Status write set_Status;
    property IsSpecificationCompliant: Boolean read get_IsSpecificationCompliant;
  end;

  TDNResponse = class(TDNGenericImport<DNResponseClass, DNResponse>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNSessionIdClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DA44B70D-0792-50A2-B319-81D26B0A670B}']
  { constructors } 

    {class} function init(opaqueKey: string): DNSessionId;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.SessionId')]
  DNSessionId = interface(DDN.mscorlib.DNObject)
  ['{B4011509-9F5F-32EC-B339-8F67CAC0F627}']
  { methods } 

    function ToString: string;
    function GetHashCode: Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;

  end;

  TDNSessionId = class(TDNGenericImport<DNSessionIdClass, DNSessionId>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  DNStackTraceElementClass = interface(DDN.mscorlib.DNObjectClass)
  ['{09D20FE6-BEF3-57DF-983C-115C3749463D}']
  { constructors } 

    {class} function init: DNStackTraceElement; overload;

  end;

  [DNTypeName('OpenQA.Selenium.Remote.StackTraceElement')]
  DNStackTraceElement = interface(DDN.mscorlib.DNObject)
  ['{A642FCA5-2944-3B92-9978-D3BD26C1D1D1}']
  { getters & setters } 

    function get_FileName: string;
    procedure set_FileName(value: string);
    function get_ClassName: string;
    procedure set_ClassName(value: string);
    function get_LineNumber: Int32;
    procedure set_LineNumber(value: Int32);
    function get_MethodName: string;
    procedure set_MethodName(value: string);

  { methods } 

    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property FileName: string read get_FileName write set_FileName;
    property ClassName: string read get_ClassName write set_ClassName;
    property LineNumber: Int32 read get_LineNumber write set_LineNumber;
    property MethodName: string read get_MethodName write set_MethodName;
  end;

  TDNStackTraceElement = class(TDNGenericImport<DNStackTraceElementClass, DNStackTraceElement>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNScreenshotClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2BC47AE8-30C5-56E2-AD59-24D27B1C45A8}']
  { constructors } 

    {class} function init(base64EncodedScreenshot: string): DNScreenshot;

  end;

  [DNTypeName('OpenQA.Selenium.Screenshot')]
  DNScreenshot = interface(DDN.mscorlib.DNObject)
  ['{C14A9663-F153-31EE-9FA0-9136BFFA941E}']
  { getters & setters } 

    function get_AsBase64EncodedString: string;
    function get_AsByteArray: TArray<Byte>;

  { methods } 

    procedure SaveAsFile(fileName: string; format: DNScreenshotImageFormat); overload;
    procedure SaveAsFile(fileName: string; format: DDN.WebDriver.Common.DNImageFormat); overload;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property AsBase64EncodedString: string read get_AsBase64EncodedString;
    property AsByteArray: TArray<Byte> read get_AsByteArray;
  end;

  TDNScreenshot = class(TDNGenericImport<DNScreenshotClass, DNScreenshot>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNWebDriverExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{2B3BE7D7-0125-5139-BF10-EE8C5FF5101D}']
  { constructors } 

    {class} function init: DNWebDriverException; overload;
    {class} function init(message: string): DNWebDriverException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNWebDriverException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.WebDriverException')]
  DNWebDriverException = interface(DDN.mscorlib.DNException)
  ['{1CBF7CB5-6AF7-3657-8864-19583770A9EE}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNWebDriverException = class(TDNGenericImport<DNWebDriverExceptionClass, DNWebDriverException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNDriverServiceNotFoundExceptionClass = interface(DNWebDriverExceptionClass)
  ['{E617AAB1-3B14-5B91-9BE2-0D8D52DE9BF7}']
  { constructors } 

    {class} function init: DNDriverServiceNotFoundException; overload;
    {class} function init(message: string): DNDriverServiceNotFoundException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNDriverServiceNotFoundException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.DriverServiceNotFoundException')]
  DNDriverServiceNotFoundException = interface(DNWebDriverException)
  ['{01AF7764-D8BE-33C0-8BE9-EE57656795F4}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNDriverServiceNotFoundException = class(TDNGenericImport<DNDriverServiceNotFoundExceptionClass, DNDriverServiceNotFoundException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNElementNotVisibleExceptionClass = interface(DNWebDriverExceptionClass)
  ['{8DAA26F0-D29E-5B85-AF0A-E714B4FC041B}']
  { constructors } 

    {class} function init: DNElementNotVisibleException; overload;
    {class} function init(message: string): DNElementNotVisibleException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNElementNotVisibleException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.ElementNotVisibleException')]
  DNElementNotVisibleException = interface(DNWebDriverException)
  ['{B70BED98-F432-37C7-BBE9-06FEA0DEDBE0}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNElementNotVisibleException = class(TDNGenericImport<DNElementNotVisibleExceptionClass, DNElementNotVisibleException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNInvalidCookieDomainExceptionClass = interface(DNWebDriverExceptionClass)
  ['{D6030CF1-EB04-5DC5-9D8B-76DCDA3B8C04}']
  { constructors } 

    {class} function init: DNInvalidCookieDomainException; overload;
    {class} function init(message: string): DNInvalidCookieDomainException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNInvalidCookieDomainException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.InvalidCookieDomainException')]
  DNInvalidCookieDomainException = interface(DNWebDriverException)
  ['{2F510999-557F-3175-A935-132FD0FCC742}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNInvalidCookieDomainException = class(TDNGenericImport<DNInvalidCookieDomainExceptionClass, DNInvalidCookieDomainException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNInvalidElementStateExceptionClass = interface(DNWebDriverExceptionClass)
  ['{E1B8F5F9-51C6-5825-8A3A-CF02B35A7CE0}']
  { constructors } 

    {class} function init: DNInvalidElementStateException; overload;
    {class} function init(message: string): DNInvalidElementStateException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNInvalidElementStateException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.InvalidElementStateException')]
  DNInvalidElementStateException = interface(DNWebDriverException)
  ['{E62FA7FA-10CA-35B6-A6D7-350DFE36F034}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNInvalidElementStateException = class(TDNGenericImport<DNInvalidElementStateExceptionClass, DNInvalidElementStateException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNNotFoundExceptionClass = interface(DNWebDriverExceptionClass)
  ['{F19E1F5C-BD3C-5D51-9F3F-E2834B719455}']
  { constructors } 

    {class} function init: DNNotFoundException; overload;
    {class} function init(message: string): DNNotFoundException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNotFoundException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.NotFoundException')]
  DNNotFoundException = interface(DNWebDriverException)
  ['{9DE1FB8A-D760-3A86-9156-7F87BC879093}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNNotFoundException = class(TDNGenericImport<DNNotFoundExceptionClass, DNNotFoundException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNNoAlertPresentExceptionClass = interface(DNNotFoundExceptionClass)
  ['{3074F464-ACBB-50EF-9D8B-5761DADE65DF}']
  { constructors } 

    {class} function init: DNNoAlertPresentException; overload;
    {class} function init(message: string): DNNoAlertPresentException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNoAlertPresentException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.NoAlertPresentException')]
  DNNoAlertPresentException = interface(DNNotFoundException)
  ['{B6972103-0E99-3428-9329-48D42A3E50E2}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNNoAlertPresentException = class(TDNGenericImport<DNNoAlertPresentExceptionClass, DNNoAlertPresentException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNNoSuchElementExceptionClass = interface(DNNotFoundExceptionClass)
  ['{F714264E-8875-5CF5-B2C8-0135735EBA92}']
  { constructors } 

    {class} function init: DNNoSuchElementException; overload;
    {class} function init(message: string): DNNoSuchElementException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNoSuchElementException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.NoSuchElementException')]
  DNNoSuchElementException = interface(DNNotFoundException)
  ['{8A8ECC7F-5867-32F9-B4D3-E005F1C1A904}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNNoSuchElementException = class(TDNGenericImport<DNNoSuchElementExceptionClass, DNNoSuchElementException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNInvalidSelectorExceptionClass = interface(DNNoSuchElementExceptionClass)
  ['{70D49EC5-11DF-5D2B-B719-02A8B0CD0D5E}']
  { constructors } 

    {class} function init: DNInvalidSelectorException; overload;
    {class} function init(message: string): DNInvalidSelectorException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNInvalidSelectorException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.InvalidSelectorException')]
  DNInvalidSelectorException = interface(DNNoSuchElementException)
  ['{892596EA-B030-3AE2-9B8D-0804F1233F9F}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNInvalidSelectorException = class(TDNGenericImport<DNInvalidSelectorExceptionClass, DNInvalidSelectorException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNNoSuchFrameExceptionClass = interface(DNNotFoundExceptionClass)
  ['{C31D0363-09FA-5D19-84A7-A3F52E6F5A86}']
  { constructors } 

    {class} function init: DNNoSuchFrameException; overload;
    {class} function init(message: string): DNNoSuchFrameException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNoSuchFrameException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.NoSuchFrameException')]
  DNNoSuchFrameException = interface(DNNotFoundException)
  ['{E59F3092-1DA9-361E-806F-089C2F1B6583}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNNoSuchFrameException = class(TDNGenericImport<DNNoSuchFrameExceptionClass, DNNoSuchFrameException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNNoSuchWindowExceptionClass = interface(DNNotFoundExceptionClass)
  ['{2D498F72-E730-5360-B804-C6798ED20D73}']
  { constructors } 

    {class} function init: DNNoSuchWindowException; overload;
    {class} function init(message: string): DNNoSuchWindowException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNNoSuchWindowException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.NoSuchWindowException')]
  DNNoSuchWindowException = interface(DNNotFoundException)
  ['{6F046270-A26E-3553-90D1-8D296EFD3EF8}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNNoSuchWindowException = class(TDNGenericImport<DNNoSuchWindowExceptionClass, DNNoSuchWindowException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNStaleElementReferenceExceptionClass = interface(DNWebDriverExceptionClass)
  ['{1DE5D323-E16C-568D-951A-9FF5F062A9C4}']
  { constructors } 

    {class} function init: DNStaleElementReferenceException; overload;
    {class} function init(message: string): DNStaleElementReferenceException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNStaleElementReferenceException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.StaleElementReferenceException')]
  DNStaleElementReferenceException = interface(DNWebDriverException)
  ['{D1CCACE3-B806-3D20-88ED-238233D8C28A}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNStaleElementReferenceException = class(TDNGenericImport<DNStaleElementReferenceExceptionClass, DNStaleElementReferenceException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNUnableToSetCookieExceptionClass = interface(DNWebDriverExceptionClass)
  ['{F91BDC46-135D-5A1E-BAFB-7B2E87FC44E8}']
  { constructors } 

    {class} function init: DNUnableToSetCookieException; overload;
    {class} function init(message: string): DNUnableToSetCookieException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNUnableToSetCookieException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.UnableToSetCookieException')]
  DNUnableToSetCookieException = interface(DNWebDriverException)
  ['{2AE49667-FBB4-3293-A95E-E74CD7348AF5}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNUnableToSetCookieException = class(TDNGenericImport<DNUnableToSetCookieExceptionClass, DNUnableToSetCookieException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNUnhandledAlertExceptionClass = interface(DNWebDriverExceptionClass)
  ['{BBDFD427-226B-51CC-8077-48DA32288E10}']
  { constructors } 

    {class} function init: DNUnhandledAlertException; overload;
    {class} function init(message: string): DNUnhandledAlertException; overload;
    {class} function init(message: string; alertText: string): DNUnhandledAlertException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNUnhandledAlertException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.UnhandledAlertException')]
  DNUnhandledAlertException = interface(DNWebDriverException)
  ['{FBAE5179-5976-3304-A43C-1483C9095793}']
  { getters & setters } 

    function get_Alert: DNIAlert;
    function get_AlertText: string;
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

    property Alert: DNIAlert read get_Alert;
    property AlertText: string read get_AlertText;
    property Message: string read get_Message;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNUnhandledAlertException = class(TDNGenericImport<DNUnhandledAlertExceptionClass, DNUnhandledAlertException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNWebDriverTimeoutExceptionClass = interface(DNWebDriverExceptionClass)
  ['{4D8CF72A-0A18-51F2-B5B8-C5C74085C678}']
  { constructors } 

    {class} function init: DNWebDriverTimeoutException; overload;
    {class} function init(message: string): DNWebDriverTimeoutException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNWebDriverTimeoutException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.WebDriverTimeoutException')]
  DNWebDriverTimeoutException = interface(DNWebDriverException)
  ['{9DEE28E5-0D49-3ADF-B52B-0442ED18DF83}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNWebDriverTimeoutException = class(TDNGenericImport<DNWebDriverTimeoutExceptionClass, DNWebDriverTimeoutException>) end;

  //-------------namespace: OpenQA.Selenium----------------
  DNXPathLookupExceptionClass = interface(DNWebDriverExceptionClass)
  ['{E5919786-F083-5507-BC18-46004D186A8B}']
  { constructors } 

    {class} function init: DNXPathLookupException; overload;
    {class} function init(message: string): DNXPathLookupException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXPathLookupException; overload;

  end;

  [DNTypeName('OpenQA.Selenium.XPathLookupException')]
  DNXPathLookupException = interface(DNWebDriverException)
  ['{C21FF35E-E762-3720-8EF0-ECDA967FBF2C}']
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

    function GetBaseException: DDN.mscorlib.DNException;
    function ToString: string;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
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

  TDNXPathLookupException = class(TDNGenericImport<DNXPathLookupExceptionClass, DNXPathLookupException>) end;

  //-------------namespace: OpenQA.Selenium.Remote----------------
  [DNTypeName('OpenQA.Selenium.Remote.ICommandServer')]
  DNICommandServer = interface(DDN.mscorlib.DNIDisposable)
  ['{D97CBE6B-14F0-3351-B19F-E241D4EB993F}']
  { methods } 

    procedure Start;

  end;


implementation

end.
