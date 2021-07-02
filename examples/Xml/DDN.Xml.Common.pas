//-----------------------------------------------------------//
//                                                           //
//     DDN.Xml.Common                               
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.Xml.Common;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib;

type

{ enums }

  //-------------namespace: System.CodeDom.Compiler----------------
  ///<summary>
  ///  定义用于确定代码生成器是否支持某些类型的代码元素的标识符。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.GeneratorSupport')]
  DNGeneratorSupport = type Integer;
  DNGeneratorSupportHelper = record helper for DNGeneratorSupport
  public const
    ///<summary>
    ///  指示支持数组的数组的生成器。
    ///</summary>
    ArraysOfArrays = 1;
    ///<summary>
    ///  指示支持程序入口点方法指定的生成器。
    ///  生成可执行文件时，使用此值。
    ///</summary>
    EntryPointMethod = 2;
    ///<summary>
    ///  指示支持 goto 语句生成器。
    ///</summary>
    GotoStatements = 4;
    ///<summary>
    ///  指示支持引用多维数组的生成器。
    ///  目前，CodeDom 不能用于实例化多维数组。
    ///</summary>
    MultidimensionalArrays = 8;
    ///<summary>
    ///  指示支持静态构造函数的生成器。
    ///</summary>
    StaticConstructors = 16;
    ///<summary>
    ///  指示生成器支持 <see langword="try...catch" />
    ///  语句。
    ///</summary>
    TryCatchStatements = 32;
    ///<summary>
    ///  指示支持返回类型特性声明的生成器。
    ///</summary>
    ReturnTypeAttributes = 64;
    ///<summary>
    ///  指示支持值类型声明的生成器。
    ///</summary>
    DeclareValueTypes = 128;
    ///<summary>
    ///  指示支持枚举声明的生成器。
    ///</summary>
    DeclareEnums = 256;
    ///<summary>
    ///  指示支持委托声明的生成器。
    ///</summary>
    DeclareDelegates = 512;
    ///<summary>
    ///  指示支持接口声明的生成器。
    ///</summary>
    DeclareInterfaces = 1024;
    ///<summary>
    ///  指示支持事件声明的生成器。
    ///</summary>
    DeclareEvents = 2048;
    ///<summary>
    ///  指示支持程序集特性的生成器。
    ///</summary>
    AssemblyAttributes = 4096;
    ///<summary>
    ///  指示支持的生成器的参数属性。
    ///</summary>
    ParameterAttributes = 8192;
    ///<summary>
    ///  指示生成器支持引用和输出参数。
    ///</summary>
    ReferenceParameters = 16384;
    ///<summary>
    ///  指示支持链接的构造函数参数的生成器。
    ///</summary>
    ChainedConstructorArguments = 32768;
    ///<summary>
    ///  指示支持嵌套类型的声明的生成器。
    ///</summary>
    NestedTypes = 65536;
    ///<summary>
    ///  指示支持实现多个接口的成员的声明的生成器。
    ///</summary>
    MultipleInterfaceMembers = 131072;
    ///<summary>
    ///  指示支持公共静态成员的生成器。
    ///</summary>
    PublicStaticMembers = 262144;
    ///<summary>
    ///  指示支持复杂的表达式生成器。
    ///</summary>
    ComplexExpressions = 524288;
    ///<summary>
    ///  指示支持使用 Win32 资源进行编译的生成器。
    ///</summary>
    Win32Resources = 1048576;
    ///<summary>
    ///  指示支持使用.NET Framework 资源进行编译的生成器。
    ///  这可能是直接编译成程序集或附属程序集中引用的资源的默认资源。
    ///</summary>
    Resources = 2097152;
    ///<summary>
    ///  指示支持分部类型声明的生成器。
    ///</summary>
    PartialTypes = 4194304;
    ///<summary>
    ///  指示支持泛型类型引用的生成器。
    ///</summary>
    GenericTypeReference = 8388608;
    ///<summary>
    ///  指示支持泛型类型声明的生成器。
    ///</summary>
    GenericTypeDeclaration = 16777216;
    ///<summary>
    ///  指示支持索引器属性的声明的生成器。
    ///</summary>
    DeclareIndexerProperties = 33554432;
  end;


  //-------------namespace: System.CodeDom.Compiler----------------
  ///<summary>
  ///  定义用于指示特殊功能的一种语言标识符。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.LanguageOptions')]
  DNLanguageOptions = type Integer;
  DNLanguageOptionsHelper = record helper for DNLanguageOptions
  public const
    ///<summary>
    ///  语言都有默认特性。
    ///</summary>
    None = 0;
    ///<summary>
    ///  语言是不区分大小写。
    ///</summary>
    CaseInsensitive = 1;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定可以设置或重写中包含的属性的配置文件层次结构中的位置 <see cref="T:System.Configuration.ConfigurationSection" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationAllowDefinition')]
  DNConfigurationAllowDefinition = type Integer;
  DNConfigurationAllowDefinitionHelper = record helper for DNConfigurationAllowDefinition
  public const
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以只能在 Machine.config 文件中定义。
    ///</summary>
    MachineOnly = 0;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件或出现在与 Machine.config，位于同一目录中但不是在应用程序 Web.config 文件中的计算机级别 Web.config 文件中定义。
    ///</summary>
    MachineToWebRoot = 100;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以定义在 Machine.config 文件与 Machine.config，位于同一目录中找到计算机级别 Web.config 文件或在虚拟目录的根目录，但不是在的虚拟根目录的子目录中找到的顶级应用程序 Web.config 文件。
    ///</summary>
    MachineToApplication = 200;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在任何位置定义。
    ///</summary>
    Everywhere = 300;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定可以设置或重写中包含的属性的配置文件层次结构中的位置 <see cref="T:System.Configuration.ConfigurationSection" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationAllowExeDefinition')]
  DNConfigurationAllowExeDefinition = type Integer;
  DNConfigurationAllowExeDefinitionHelper = record helper for DNConfigurationAllowExeDefinition
  public const
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以只能在 Machine.config 文件中定义。
    ///</summary>
    MachineOnly = 0;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中或在客户端应用程序目录的 Exe.config 文件中定义。
    ///  这是默认值。
    ///</summary>
    MachineToApplication = 100;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中，在客户端应用程序目录中的 Exe.config 文件中或在漫游的用户目录中的 User.config 文件中定义。
    ///</summary>
    MachineToRoamingUser = 200;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中，在客户端应用程序目录中，漫游用户目录中，在 User.config 文件中或本地用户目录中的 User.config 文件中的 Exe.config 文件中定义。
    ///</summary>
    MachineToLocalUser = 300;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定的类型 <see cref="T:System.Configuration.ConfigurationElementCollectionType" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationElementCollectionType')]
  DNConfigurationElementCollectionType = type Integer;
  DNConfigurationElementCollectionTypeHelper = record helper for DNConfigurationElementCollectionType
  public const
    ///<summary>
    ///  此类型的集合包含将应用于其中指定了它们的级别和所有子级别的元素。
    ///  某一子级别不能修改这种类型的父元素指定的属性。
    ///</summary>
    BasicMap = 0;
    ///<summary>
    ///  默认类型 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  。
    ///  此类型的集合包含可以合并配置文件的层次结构中的元素。
    ///  在这种层次结构中，任何特定级别 <see langword="add" />
    ///  , ，<see langword="remove" />
    ///  , ，和 <see langword="clear" />
    ///  指令用于修改任何继承的属性，以及指定新的。
    ///</summary>
    AddRemoveClearMap = 1;
    ///<summary>
    ///  与相同 <see cref="F:System.Configuration.ConfigurationElementCollectionType.BasicMap" />
    ///  , 以外，此类型将导致 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  对象，其内容进行排序，以便最后列出继承的元素。
    ///</summary>
    BasicMapAlternate = 2;
    ///<summary>
    ///  与相同 <see cref="F:System.Configuration.ConfigurationElementCollectionType.AddRemoveClearMap" />
    ///  , 以外，此类型将导致 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  对象，其内容进行排序，以便最后列出继承的元素。
    ///</summary>
    AddRemoveClearMapAlternate = 3;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  确定哪些属性写出到配置文件。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSaveMode')]
  DNConfigurationSaveMode = type Integer;
  DNConfigurationSaveModeHelper = record helper for DNConfigurationSaveMode
  public const
    ///<summary>
    ///  仅将修改的属性，以写入配置文件中，即使该值是继承的值相同。
    ///</summary>
    Modified = 0;
    ///<summary>
    ///  将导致不同于继承的值写入到配置文件的属性。
    ///</summary>
    Minimal = 1;
    ///<summary>
    ///  将导致所有属性都写入到配置文件。
    ///  这是主要用于创建配置文件的信息或将配置值从一台计算机移动到另一个非常有用。
    ///</summary>
    Full = 2;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定配置元素的配置元素的覆盖行为子目录中。
  ///</summary>
  [DNTypeName('System.Configuration.OverrideMode')]
  DNOverrideMode = type Integer;
  DNOverrideModeHelper = record helper for DNOverrideMode
  public const
    ///<summary>
    ///  如果显式允许由当前的配置元素或组的父元素的子目录中的配置设置将重写元素或组的配置设置。
    ///  使用指定的权限重写 <see langword="OverrideMode" />
    ///  属性。
    ///</summary>
    Inherit = 0;
    ///<summary>
    ///  子目录中的配置设置可以重写元素或组的配置设置。
    ///</summary>
    Allow = 1;
    ///<summary>
    ///  子目录中的配置设置不能重写元素或组的配置设置。
    ///</summary>
    Deny = 2;
  end;


  //-------------namespace: System.Net.Cache----------------
  ///<summary>
  ///  指定获取使用的资源的缓存行为 <see cref="T:System.Net.WebRequest" />
  ///  及其派生类。
  ///</summary>
  [DNTypeName('System.Net.Cache.RequestCacheLevel')]
  DNRequestCacheLevel = type Integer;
  DNRequestCacheLevelHelper = record helper for DNRequestCacheLevel
  public const
    ///<summary>
    ///  通过使用该资源的缓存的副本或将对资源的请求发送到服务器可满足对资源的请求。
    ///  由当前的缓存策略和缓存中内容的生存期确定要执行的操作。
    ///  这是大多数应用程序应使用的缓存级别。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  使用的服务器满足请求。
    ///  无项是从缓存中取出、 添加到缓存，或从客户端和服务器之间的缓存中移除。
    ///  这是随.NET Framework 一起提供的计算机配置文件中指定的默认缓存行为。
    ///</summary>
    BypassCache = 1;
    ///<summary>
    ///  满足使用本地缓存的资源; 的请求不发送对不在缓存中的项的请求。
    ///  如果指定此缓存策略级别， <see cref="T:System.Net.WebException" />
    ///  如果项不是客户端缓存中将引发异常。
    ///</summary>
    CacheOnly = 2;
    ///<summary>
    ///  如果该资源将可用，则，满足对从缓存中，资源的请求否则，将对资源的请求发送到服务器。
    ///  如果客户端和服务器之间的任何缓存中提供了请求的项，可能通过中间缓存来满足请求。
    ///</summary>
    CacheIfAvailable = 3;
    ///<summary>
    ///  通过使用该资源的缓存的副本，如果时间戳服务器; 上的资源的时间戳相同来满足请求否则为该资源是从服务器下载、 提供给调用方，并存储在缓存中。
    ///</summary>
    Revalidate = 4;
    ///<summary>
    ///  使用的服务器满足请求。
    ///  可以将响应保存在缓存中。
    ///  在 HTTP 缓存协议中，这实现使用 <see langword="no-cache" />
    ///  缓存控制指令和无缓存 <see langword="Pragma" />
    ///  标头。
    ///</summary>
    Reload = 5;
    ///<summary>
    ///  永远不会从缓存中使用的资源满足请求并不会缓存资源。
    ///  如果在本地缓存中存在该资源，则会删除它。
    ///  此策略级别指示中间缓存他们应删除该资源。
    ///  在 HTTP 缓存协议中，这实现使用 <see langword="no-cache" />
    ///  缓存控制指令。
    ///</summary>
    NoCacheNoStore = 6;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  指定 <see cref="T:System.Uri" />
  ///  的各个部分。
  ///</summary>
  [DNTypeName('System.UriComponents')]
  DNUriComponents = type Integer;
  DNUriComponentsHelper = record helper for DNUriComponents
  public const
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  数据。
    ///</summary>
    Scheme = 1;
    ///<summary><see cref="P:System.Uri.UserInfo" />
    ///  数据。
    ///</summary>
    UserInfo = 2;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  数据。
    ///</summary>
    Host = 4;
    ///<summary><see cref="P:System.Uri.Port" />
    ///  数据。
    ///</summary>
    Port = 8;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///</summary>
    SchemeAndServer = 13;
    ///<summary><see cref="P:System.Uri.LocalPath" />
    ///  数据。
    ///</summary>
    Path = 16;
    ///<summary><see cref="P:System.Uri.Query" />
    ///  数据。
    ///</summary>
    Query = 32;
    ///<summary><see cref="P:System.Uri.LocalPath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  数据。
    ///  另请参阅：<see cref="P:System.Uri.PathAndQuery" />
    ///  。
    ///</summary>
    PathAndQuery = 48;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  、<see cref="P:System.Uri.Port" />
    ///  、<see cref="P:System.Uri.LocalPath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  数据。
    ///</summary>
    HttpRequestUrl = 61;
    ///<summary><see cref="P:System.Uri.Fragment" />
    ///  数据。
    ///</summary>
    Fragment = 64;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.UserInfo" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  、<see cref="P:System.Uri.Port" />
    ///  、<see cref="P:System.Uri.LocalPath" />
    ///  、<see cref="P:System.Uri.Query" />
    ///  和 <see cref="P:System.Uri.Fragment" />
    ///  数据。
    ///</summary>
    AbsoluteUri = 127;
    ///<summary><see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果 <see cref="T:System.Uri" />
    ///  中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    StrongPort = 128;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果在 Uri 中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    HostAndPort = 132;
    ///<summary><see cref="P:System.Uri.UserInfo" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果 <see cref="T:System.Uri" />
    ///  中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    StrongAuthority = 134;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  的正常化表格。
    ///</summary>
    NormalizedHost = 256;
    ///<summary>
    ///  指定应包括的分隔符。
    ///</summary>
    KeepDelimiter = 1073741824;
    ///<summary>
    ///  Uri 序列化程序需要的完整的 <see cref="T:System.Uri" />
    ///  上下文。
    ///  该上下文包括 IPv6 作用域。
    ///</summary>
    SerializationInfoString = -2147483648;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  控制 URI 信息的转义方式。
  ///</summary>
  [DNTypeName('System.UriFormat')]
  DNUriFormat = type Integer;
  DNUriFormatHelper = record helper for DNUriFormat
  public const
    ///<summary>
    ///  根据 RFC 2396 中的规则执行转义。
    ///</summary>
    UriEscaped = 1;
    ///<summary>
    ///  未执行任何转义。
    ///</summary>
    Unescaped = 2;
    ///<summary>
    ///  仍然在请求 URI 组件中具有保留的含义的字符进行转义。
    ///  所有其他未转义。
    ///  请参阅“备注”。
    ///</summary>
    SafeUnescaped = 3;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义主机名称类型<see cref="M:System.Uri.CheckHostName(System.String)" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriHostNameType')]
  DNUriHostNameType = type Integer;
  DNUriHostNameTypeHelper = record helper for DNUriHostNameType
  public const
    ///<summary>
    ///  未提供主机名的类型。
    ///</summary>
    Unknown = 0;
    ///<summary>
    ///  主机已设置，但无法确定类型。
    ///</summary>
    Basic = 1;
    ///<summary>
    ///  主机名是域名系统 (DNS) 样式主机名。
    ///</summary>
    Dns = 2;
    ///<summary>
    ///  主机名是 Internet 协议 (IP) 版本 4 的主机地址。
    ///</summary>
    IPv4 = 3;
    ///<summary>
    ///  主机名是 Internet 协议 (IP) 版本 6 主机地址。
    ///</summary>
    IPv6 = 4;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义类型的<see cref="T:System.Uri" />
  ///  s 针对<see cref="M:System.Uri.IsWellFormedUriString(System.String,System.UriKind)" />
  ///  和几个<see cref="Overload:System.Uri.#ctor" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriKind')]
  DNUriKind = type Integer;
  DNUriKindHelper = record helper for DNUriKind
  public const
    ///<summary>
    ///  类别的 Uri 是不确定的。
    ///</summary>
    RelativeOrAbsolute = 0;
    ///<summary>
    ///  Uri 是一个绝对 Uri。
    ///</summary>
    Absolute_ = 1;
    ///<summary>
    ///  Uri 是相对的 Uri。
    ///</summary>
    Relative = 2;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义的 URI 的组成部分<see cref="M:System.Uri.GetLeftPart(System.UriPartial)" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriPartial')]
  DNUriPartial = type Integer;
  DNUriPartialHelper = record helper for DNUriPartial
  public const
    ///<summary>
    ///  URI 方案段。
    ///</summary>
    Scheme = 0;
    ///<summary>
    ///  URI 方案和授权段。
    ///</summary>
    Authority = 1;
    ///<summary>
    ///  URI 方案、 颁发机构和路径段。
    ///</summary>
    Path = 2;
    ///<summary>
    ///  方案、 机构、 路径和查询段的 uri。
    ///</summary>
    Query = 3;
  end;




type


{ declares }

  DNCodeAttributeDeclaration = interface; // type: System.CodeDom.CodeAttributeDeclaration, namespace: System.CodeDom
  DNCodeNamespaceImportCollection = interface; // type: System.CodeDom.CodeNamespaceImportCollection, namespace: System.CodeDom
  DNCodeCompileUnit = interface; // type: System.CodeDom.CodeCompileUnit, namespace: System.CodeDom
  DNCodeExpression = interface; // type: System.CodeDom.CodeExpression, namespace: System.CodeDom
  DNCodeNamespace = interface; // type: System.CodeDom.CodeNamespace, namespace: System.CodeDom
  DNCodeStatement = interface; // type: System.CodeDom.CodeStatement, namespace: System.CodeDom
  DNCodeTypeMember = interface; // type: System.CodeDom.CodeTypeMember, namespace: System.CodeDom
  DNCodeTypeDeclaration = interface; // type: System.CodeDom.CodeTypeDeclaration, namespace: System.CodeDom
  DNCodeTypeReference = interface; // type: System.CodeDom.CodeTypeReference, namespace: System.CodeDom
  DNCodeGeneratorOptions = interface; // type: System.CodeDom.Compiler.CodeGeneratorOptions, namespace: System.CodeDom.Compiler
  DNCompilerError = interface; // type: System.CodeDom.Compiler.CompilerError, namespace: System.CodeDom.Compiler
  DNCompilerInfo = interface; // type: System.CodeDom.Compiler.CompilerInfo, namespace: System.CodeDom.Compiler
  DNCompilerParameters = interface; // type: System.CodeDom.Compiler.CompilerParameters, namespace: System.CodeDom.Compiler
  DNCompilerResults = interface; // type: System.CodeDom.Compiler.CompilerResults, namespace: System.CodeDom.Compiler
  DNICodeCompiler = interface; // type: System.CodeDom.Compiler.ICodeCompiler, namespace: System.CodeDom.Compiler
  DNICodeGenerator = interface; // type: System.CodeDom.Compiler.ICodeGenerator, namespace: System.CodeDom.Compiler
  DNICodeParser = interface; // type: System.CodeDom.Compiler.ICodeParser, namespace: System.CodeDom.Compiler
  DNTempFileCollection = interface; // type: System.CodeDom.Compiler.TempFileCollection, namespace: System.CodeDom.Compiler
  DNCodeAttributeDeclarationCollection = interface; // type: System.CodeDom.CodeAttributeDeclarationCollection, namespace: System.CodeDom
  DNCodeCommentStatementCollection = interface; // type: System.CodeDom.CodeCommentStatementCollection, namespace: System.CodeDom
  DNCodeDirectiveCollection = interface; // type: System.CodeDom.CodeDirectiveCollection, namespace: System.CodeDom
  DNCodeNamespaceCollection = interface; // type: System.CodeDom.CodeNamespaceCollection, namespace: System.CodeDom
  DNCodeTypeDeclarationCollection = interface; // type: System.CodeDom.CodeTypeDeclarationCollection, namespace: System.CodeDom
  DNCompilerErrorCollection = interface; // type: System.CodeDom.Compiler.CompilerErrorCollection, namespace: System.CodeDom.Compiler
  DNConfigurationLocationCollection = interface; // type: System.Configuration.ConfigurationLocationCollection, namespace: System.Configuration
  DNNameObjectCollectionBase_KeysCollection = interface; // type: System.Collections.Specialized.NameObjectCollectionBase+KeysCollection, namespace: System.Collections.Specialized
  DNConfigurationSectionCollection = interface; // type: System.Configuration.ConfigurationSectionCollection, namespace: System.Configuration
  DNConfigurationSectionGroupCollection = interface; // type: System.Configuration.ConfigurationSectionGroupCollection, namespace: System.Configuration
  DNPropertyInformationCollection = interface; // type: System.Configuration.PropertyInformationCollection, namespace: System.Configuration
  DNStringCollection = interface; // type: System.Collections.Specialized.StringCollection, namespace: System.Collections.Specialized
  DNStringEnumerator = interface; // type: System.Collections.Specialized.StringEnumerator, namespace: System.Collections.Specialized
  DNTypeConverter = interface; // type: System.ComponentModel.TypeConverter, namespace: System.ComponentModel
  DNConfiguration = interface; // type: System.Configuration.Configuration, namespace: System.Configuration
  DNConfigurationElement = interface; // type: System.Configuration.ConfigurationElement, namespace: System.Configuration
  DNConfigurationElementCollection = interface; // type: System.Configuration.ConfigurationElementCollection, namespace: System.Configuration
  DNConfigurationSection = interface; // type: System.Configuration.ConfigurationSection, namespace: System.Configuration
  DNAppSettingsSection = interface; // type: System.Configuration.AppSettingsSection, namespace: System.Configuration
  DNConnectionStringsSection = interface; // type: System.Configuration.ConnectionStringsSection, namespace: System.Configuration
  DNConfigurationLockCollection = interface; // type: System.Configuration.ConfigurationLockCollection, namespace: System.Configuration
  DNConfigurationSectionGroup = interface; // type: System.Configuration.ConfigurationSectionGroup, namespace: System.Configuration
  DNConfigurationValidatorBase = interface; // type: System.Configuration.ConfigurationValidatorBase, namespace: System.Configuration
  DNContextInformation = interface; // type: System.Configuration.ContextInformation, namespace: System.Configuration
  DNElementInformation = interface; // type: System.Configuration.ElementInformation, namespace: System.Configuration
  DNConfigurationBuilder = interface; // type: System.Configuration.ConfigurationBuilder, namespace: System.Configuration
  DNProtectedConfigurationProvider = interface; // type: System.Configuration.ProtectedConfigurationProvider, namespace: System.Configuration
  DNSectionInformation = interface; // type: System.Configuration.SectionInformation, namespace: System.Configuration
  DNIContainer = interface; // type: System.ComponentModel.IContainer, namespace: System.ComponentModel
  DNISite = interface; // type: System.ComponentModel.ISite, namespace: System.ComponentModel
  DNCodeDomProvider = interface; // type: System.CodeDom.Compiler.CodeDomProvider, namespace: System.CodeDom.Compiler
  DNRequestCachePolicy = interface; // type: System.Net.Cache.RequestCachePolicy, namespace: System.Net.Cache
  DNICredentials = interface; // type: System.Net.ICredentials, namespace: System.Net
  DNIWebProxy = interface; // type: System.Net.IWebProxy, namespace: System.Net
  DNNetworkCredential = interface; // type: System.Net.NetworkCredential, namespace: System.Net
  DNFrameworkName = interface; // type: System.Runtime.Versioning.FrameworkName, namespace: System.Runtime.Versioning
  DNUri = interface; // type: System.Uri, namespace: System


{ objects }

  //-------------namespace: System.CodeDom----------------
  DNCodeAttributeDeclarationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7824FFF9-FB44-5BB5-9E5E-CDA7E7ACF504}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeAttributeDeclaration; overload;
    ///<summary>
    ///  使用指定的名称初始化 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="name">
    ///  属性名。
    ///</param>
    {class} function init(name: string): DNCodeAttributeDeclaration; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  类使用指定的代码类型引用。
    ///</summary>
    ///  <param name="attributeType"><see cref="T:System.CodeDom.CodeTypeReference" />
    ///  标识属性。
    ///</param>
    {class} function init(attributeType: DNCodeTypeReference): DNCodeAttributeDeclaration; overload;

  end;

  ///<summary>
  ///  表示一个属性声明。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeAttributeDeclaration')]
  DNCodeAttributeDeclaration = interface(DDN.mscorlib.DNObject)
  ['{C0BA0202-2FF3-3E0A-952A-B570B1371DB2}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);
    function get_AttributeType: DNCodeTypeReference;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置要声明的属性的名称。
    ///</summary>
    ///<returns>
    ///  属性名。
    ///</returns>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取代码特性声明代码类型引用。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  ，它标识 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  。
    ///</returns>
    property AttributeType: DNCodeTypeReference read get_AttributeType;
  end;

  TDNCodeAttributeDeclaration = class(TDNGenericImport<DNCodeAttributeDeclarationClass, DNCodeAttributeDeclaration>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeNamespaceImportCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{012A8777-FF9A-5B5F-8413-661E038DADC9}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeNamespaceImportCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeNamespaceImportCollection;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeNamespaceImport" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeNamespaceImportCollection')]
  DNCodeNamespaceImportCollection = interface(DDN.mscorlib.DNObject)
  ['{7A168834-5605-30DB-8274-6B21E621A955}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  清除集合中的成员。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  获取枚举集合成员的枚举数。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  ，该值指示集合成员。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的命名空间的数量。
    ///</summary>
    ///<returns>
    ///  集合中的命名空间的数量。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNCodeNamespaceImportCollection = class(TDNGenericImport<DNCodeNamespaceImportCollectionClass, DNCodeNamespaceImportCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeCompileUnitClass = interface(DNObjectClass)
  ['{B97554D4-9B0B-5145-A41D-A3E6D5223053}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeCompileUnit;

  end;

  ///<summary>
  ///  提供了 CodeDOM 程序图容器。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeCompileUnit')]
  DNCodeCompileUnit = interface(DNObject)
  ['{25A5D609-4D61-3C52-A3E1-49EF93066FD1}']
  { getters & setters } 

    function get_Namespaces: DNCodeNamespaceCollection;
    function get_ReferencedAssemblies: DNStringCollection;
    function get_AssemblyCustomAttributes: DNCodeAttributeDeclarationCollection;
    function get_StartDirectives: DNCodeDirectiveCollection;
    function get_EndDirectives: DNCodeDirectiveCollection;
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取命名空间的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  ，该值指示编译单元使用的命名空间。
    ///</returns>
    property Namespaces: DNCodeNamespaceCollection read get_Namespaces;
    ///<summary>
    ///  获取引用的程序集。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  ，其中包含引用的程序集的文件名。
    ///</returns>
    property ReferencedAssemblies: DNStringCollection read get_ReferencedAssemblies;
    ///<summary>
    ///  获取生成的程序集的自定义特性的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  指示生成的程序集的自定义特性。
    ///</returns>
    property AssemblyCustomAttributes: DNCodeAttributeDeclarationCollection read get_AssemblyCustomAttributes;
    ///<summary>
    ///  获取 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含启动指令。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含启动指令。
    ///</returns>
    property StartDirectives: DNCodeDirectiveCollection read get_StartDirectives;
    ///<summary>
    ///  获取 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</returns>
    property EndDirectives: DNCodeDirectiveCollection read get_EndDirectives;
    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeCompileUnit = class(TDNGenericImport<DNCodeCompileUnitClass, DNCodeCompileUnit>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeExpressionClass = interface(DNObjectClass)
  ['{CCDF92CD-6BE7-5D71-8D5D-5CA584CFCE2D}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeExpression" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeExpression;

  end;

  ///<summary>
  ///  表示代码表达式。
  ///  这是代码表达式的其他对象的基类，不会实例化。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeExpression')]
  DNCodeExpression = interface(DNObject)
  ['{F4267FE0-72E6-34E2-9093-17DEA43078C1}']
  { getters & setters } 

    function get_UserData: DDN.mscorlib.DNIDictionary;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeExpression = class(TDNGenericImport<DNCodeExpressionClass, DNCodeExpression>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeNamespaceClass = interface(DNObjectClass)
  ['{0732F817-E71C-5B82-9A86-E4220CC818B9}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeNamespace; overload;
    ///<summary>
    ///  使用指定的名称初始化 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="name">
    ///  所声明的命名空间的名称。
    ///</param>
    {class} function init(name: string): DNCodeNamespace; overload;

  end;

  ///<summary>
  ///  表示命名空间声明。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeNamespace')]
  DNCodeNamespace = interface(DNObject)
  ['{DD1C0C7A-BC95-339A-8321-9DBF4803CAF4}']
  { getters & setters } 

    function get_Types: DNCodeTypeDeclarationCollection;
    function get_Imports: DNCodeNamespaceImportCollection;
    function get_Name: string;
    procedure set_Name(value: string);
    function get_Comments: DNCodeCommentStatementCollection;
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { events } 

    procedure add_PopulateComments(value: DDN.mscorlib.DNEventHandler);
    procedure remove_PopulateComments(value: DDN.mscorlib.DNEventHandler);
    procedure add_PopulateImports(value: DDN.mscorlib.DNEventHandler);
    procedure remove_PopulateImports(value: DDN.mscorlib.DNEventHandler);
    procedure add_PopulateTypes(value: DDN.mscorlib.DNEventHandler);
    procedure remove_PopulateTypes(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取该命名空间包含的类型的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  ，该值指示包含命名空间中的类型。
    ///</returns>
    property Types: DNCodeTypeDeclarationCollection read get_Types;
    ///<summary>
    ///  获取命名空间的集合使用的命名空间导入指令。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeNamespaceImportCollection" />
    ///  ，该值指示使用由命名空间的命名空间导入指令。
    ///</returns>
    property Imports: DNCodeNamespaceImportCollection read get_Imports;
    ///<summary>
    ///  获取或设置命名空间的名称。
    ///</summary>
    ///<returns>
    ///  命名空间的名称。
    ///</returns>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取为命名空间的注释。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  ，指示命名空间的注释。
    ///</returns>
    property Comments: DNCodeCommentStatementCollection read get_Comments;
    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeNamespace = class(TDNGenericImport<DNCodeNamespaceClass, DNCodeNamespace>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeStatementClass = interface(DNObjectClass)
  ['{9B079EF9-EBDD-5F09-AEE6-D9A7ABBFE3A4}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeStatement" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeStatement;

  end;

  ///<summary>
  ///  表示 <see langword="abstract" />
  ///  基类语句均派生自的所有代码。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeStatement')]
  DNCodeStatement = interface(DNObject)
  ['{10A98D9F-994D-3762-89B4-2116A95063EE}']
  { getters & setters } 

    function get_StartDirectives: DNCodeDirectiveCollection;
    function get_EndDirectives: DNCodeDirectiveCollection;
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含开始指令的对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含启动指令。
    ///</returns>
    property StartDirectives: DNCodeDirectiveCollection read get_StartDirectives;
    ///<summary>
    ///  获取 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</returns>
    property EndDirectives: DNCodeDirectiveCollection read get_EndDirectives;
    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeStatement = class(TDNGenericImport<DNCodeStatementClass, DNCodeStatement>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeTypeMemberClass = interface(DNObjectClass)
  ['{8D9597BB-CC5B-5D6E-8EE9-3B117E7D8654}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeTypeMember" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeTypeMember;

  end;

  ///<summary>
  ///  提供一种类型的成员的基类。
  ///  类型成员包括字段、 方法、 属性、 构造函数和嵌套的类型。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeTypeMember')]
  DNCodeTypeMember = interface(DNObject)
  ['{69DCE654-E184-38E5-BFD6-E0EB6F592A11}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);
    function get_CustomAttributes: DNCodeAttributeDeclarationCollection;
    procedure set_CustomAttributes(value: DNCodeAttributeDeclarationCollection);
    function get_Comments: DNCodeCommentStatementCollection;
    function get_StartDirectives: DNCodeDirectiveCollection;
    function get_EndDirectives: DNCodeDirectiveCollection;
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置成员的名称。
    ///</summary>
    ///<returns>
    ///  成员名。
    ///</returns>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取或设置成员的自定义特性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  ，该值指示该成员的自定义特性。
    ///</returns>
    property CustomAttributes: DNCodeAttributeDeclarationCollection read get_CustomAttributes write set_CustomAttributes;
    ///<summary>
    ///  获取类型成员批注的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  ，指示该成员的注释。
    ///</returns>
    property Comments: DNCodeCommentStatementCollection read get_Comments;
    ///<summary>
    ///  获取开始指令成员的指针。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含启动指令。
    ///</returns>
    property StartDirectives: DNCodeDirectiveCollection read get_StartDirectives;
    ///<summary>
    ///  获取结束指令成员的指针。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</returns>
    property EndDirectives: DNCodeDirectiveCollection read get_EndDirectives;
    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeTypeMember = class(TDNGenericImport<DNCodeTypeMemberClass, DNCodeTypeMember>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeTypeDeclarationClass = interface(DNCodeTypeMemberClass)
  ['{3CD92F40-1C2B-5228-AD31-DA70CB6CC38B}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeTypeDeclaration; overload;
    ///<summary>
    ///  用指定的名称初始化 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="name">
    ///  新的类型的名称。
    ///</param>
    {class} function init(name: string): DNCodeTypeDeclaration; overload;

  end;

  ///<summary>
  ///  表示类、 结构、 接口或枚举的类型声明。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeTypeDeclaration')]
  DNCodeTypeDeclaration = interface(DNCodeTypeMember)
  ['{2B708A48-52D8-3049-9565-6BA42EE2BE17}']
  { getters & setters } 

    function get_TypeAttributes: DDN.mscorlib.DNTypeAttributes;
    procedure set_TypeAttributes(value: DDN.mscorlib.DNTypeAttributes);
    function get_IsClass: Boolean;
    procedure set_IsClass(value: Boolean);
    function get_IsStruct: Boolean;
    procedure set_IsStruct(value: Boolean);
    function get_IsEnum: Boolean;
    procedure set_IsEnum(value: Boolean);
    function get_IsInterface: Boolean;
    procedure set_IsInterface(value: Boolean);
    function get_IsPartial: Boolean;
    procedure set_IsPartial(value: Boolean);
    function get_Name: string;
    procedure set_Name(value: string);
    function get_CustomAttributes: DNCodeAttributeDeclarationCollection;
    procedure set_CustomAttributes(value: DNCodeAttributeDeclarationCollection);
    function get_Comments: DNCodeCommentStatementCollection;
    function get_StartDirectives: DNCodeDirectiveCollection;
    function get_EndDirectives: DNCodeDirectiveCollection;
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { events } 

    procedure add_PopulateBaseTypes(value: DDN.mscorlib.DNEventHandler);
    procedure remove_PopulateBaseTypes(value: DDN.mscorlib.DNEventHandler);
    procedure add_PopulateMembers(value: DDN.mscorlib.DNEventHandler);
    procedure remove_PopulateMembers(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置类型的属性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Reflection.TypeAttributes" />
    ///  对象，它指示类型的属性。
    ///</returns>
    property TypeAttributes: DDN.mscorlib.DNTypeAttributes read get_TypeAttributes write set_TypeAttributes;
    ///<summary>
    ///  获取或设置一个值，该值指示类型是否为类或引用类型。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该类型是类或引用类型;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsClass: Boolean read get_IsClass write set_IsClass;
    ///<summary>
    ///  获取或设置一个值，该值指示类型是否值类型 （结构）。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果类型为值类型，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsStruct: Boolean read get_IsStruct write set_IsStruct;
    ///<summary>
    ///  获取或设置一个值，该值指示类型是否一个枚举。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果类型为枚举，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEnum: Boolean read get_IsEnum write set_IsEnum;
    ///<summary>
    ///  获取或设置一个值，该值指示类型是否一个接口。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果类型是一个接口;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsInterface: Boolean read get_IsInterface write set_IsInterface;
    ///<summary>
    ///  获取或设置一个值，该值指示该类型声明为完整或部分。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果类或结构声明的部分表示形式的新实现。 <see langword="false" />
    ///  如果声明为类或结构的一个完整实现。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsPartial: Boolean read get_IsPartial write set_IsPartial;
    ///<summary>
    ///  获取或设置成员的名称。
    ///</summary>
    ///<returns>
    ///  成员名。
    ///</returns>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取或设置成员的自定义特性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  ，该值指示该成员的自定义特性。
    ///</returns>
    property CustomAttributes: DNCodeAttributeDeclarationCollection read get_CustomAttributes write set_CustomAttributes;
    ///<summary>
    ///  获取类型成员批注的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  ，指示该成员的注释。
    ///</returns>
    property Comments: DNCodeCommentStatementCollection read get_Comments;
    ///<summary>
    ///  获取开始指令成员的指针。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含启动指令。
    ///</returns>
    property StartDirectives: DNCodeDirectiveCollection read get_StartDirectives;
    ///<summary>
    ///  获取结束指令成员的指针。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  包含结束指令的对象。
    ///</returns>
    property EndDirectives: DNCodeDirectiveCollection read get_EndDirectives;
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeTypeDeclaration = class(TDNGenericImport<DNCodeTypeDeclarationClass, DNCodeTypeDeclaration>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeTypeReferenceClass = interface(DNObjectClass)
  ['{34BB9B22-23E9-5C2F-8864-E3AAB65F6C24}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeTypeReference; overload;
    ///<summary>
    ///  使用指定的类型初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Type" />
    ///  为引用。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="type " />
    ///  是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(&type: DDN.mscorlib.DNType): DNCodeTypeReference; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类使用指定的类型名称。
    ///</summary>
    ///  <param name="typeName">
    ///  要引用的类型的名称。
    ///</param>
    {class} function init(typeName: string): DNCodeTypeReference; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类使用指定的类型名称和类型参数。
    ///</summary>
    ///  <param name="typeName">
    ///  要引用的类型的名称。
    ///</param>
    ///  <param name="typeArguments">
    ///  一个数组 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  值。
    ///</param>
    {class} function init(typeName: string; typeArguments: TArray<DNCodeTypeReference>): DNCodeTypeReference; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类使用指定的数组类型名称和级别。
    ///</summary>
    ///  <param name="baseType">
    ///  该数组的元素的类型的名称。
    ///</param>
    ///  <param name="rank">
    ///  数组维度数。
    ///</param>
    {class} function init(baseType: string; rank: Int32): DNCodeTypeReference; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  类使用指定的数组类型和秩。
    ///</summary>
    ///  <param name="arrayType">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  ，该值指示数组的类型。
    ///</param>
    ///  <param name="rank">
    ///  数组中的维度数。
    ///</param>
    {class} function init(arrayType: DNCodeTypeReference; rank: Int32): DNCodeTypeReference; overload;

  end;

  ///<summary>
  ///  表示一种类型的引用。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeTypeReference')]
  DNCodeTypeReference = interface(DNObject)
  ['{F3DE25AC-25ED-374C-8805-4B6456FA0CB2}']
  { getters & setters } 

    function get_ArrayElementType: DNCodeTypeReference;
    procedure set_ArrayElementType(value: DNCodeTypeReference);
    function get_ArrayRank: Int32;
    procedure set_ArrayRank(value: Int32);
    function get_BaseType: string;
    procedure set_BaseType(value: string);
    function get_UserData: DDN.mscorlib.DNIDictionary;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置数组中元素的类型。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  ，该值指示数组元素的类型。
    ///</returns>
    property ArrayElementType: DNCodeTypeReference read get_ArrayElementType write set_ArrayElementType;
    ///<summary>
    ///  获取或设置数组的数组秩。
    ///</summary>
    ///<returns>
    ///  数组维度数。
    ///</returns>
    property ArrayRank: Int32 read get_ArrayRank write set_ArrayRank;
    ///<summary>
    ///  获取或设置所引用的类型的名称。
    ///</summary>
    ///<returns>
    ///  所引用的类型的名称。
    ///</returns>
    property BaseType: string read get_BaseType write set_BaseType;
    ///<summary>
    ///  获取当前对象的可由用户定义的数据。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IDictionary" />
    ///  包含用户数据的当前对象。
    ///</returns>
    property UserData: DDN.mscorlib.DNIDictionary read get_UserData;
  end;

  TDNCodeTypeReference = class(TDNGenericImport<DNCodeTypeReferenceClass, DNCodeTypeReference>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCodeGeneratorOptionsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{098EAA0D-036E-51C3-AADC-D641966FA714}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeGeneratorOptions;

  end;

  ///<summary>
  ///  表示一组使用的代码生成器选项。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CodeGeneratorOptions')]
  DNCodeGeneratorOptions = interface(DDN.mscorlib.DNObject)
  ['{C6506495-674B-3816-8FAF-9E706ECE3326}']
  { getters & setters } 

    function get_Item(index: string): DDN.mscorlib.DNObject;
    procedure set_Item(index: string; value: DDN.mscorlib.DNObject);
    function get_IndentString: string;
    procedure set_IndentString(value: string);
    function get_BracingStyle: string;
    procedure set_BracingStyle(value: string);
    function get_ElseOnClosing: Boolean;
    procedure set_ElseOnClosing(value: Boolean);
    function get_BlankLinesBetweenMembers: Boolean;
    procedure set_BlankLinesBetweenMembers(value: Boolean);
    function get_VerbatimOrder: Boolean;
    procedure set_VerbatimOrder(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: string]: DDN.mscorlib.DNObject read get_Item write set_Item; default;
    ///<summary>
    ///  获取或设置用于缩进的字符串。
    ///</summary>
    ///<returns>
    ///  包含用于缩进的字符的字符串。
    ///</returns>
    property IndentString: string read get_IndentString write set_IndentString;
    ///<summary>
    ///  获取或设置用于大括号的样式。
    ///</summary>
    ///<returns>
    ///  包含要使用的大括号样式的字符串。
    ///</returns>
    property BracingStyle: string read get_BracingStyle write set_BracingStyle;
    ///<summary>
    ///  获取或设置一个值，该值指示是否要追加 <see langword="else" />
    ///  , ，<see langword="catch" />
    ///  , ，或 <see langword="finally" />
    ///  块，包括方括号内，每个以前的结束行处 <see langword="if" />
    ///  或 <see langword="try" />
    ///  块。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应追加其他;否则为 <see langword="false" />
    ///  。
    ///  此属性的默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property ElseOnClosing: Boolean read get_ElseOnClosing write set_ElseOnClosing;
    ///<summary>
    ///  获取或设置一个值，该值指示是否插入成员之间的空行。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应插入空白行;否则为 <see langword="false" />
    ///  。
    ///  默认情况下，此属性的值是 <see langword="true" />
    ///  。
    ///</returns>
    property BlankLinesBetweenMembers: Boolean read get_BlankLinesBetweenMembers write set_BlankLinesBetweenMembers;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在成员集合中发生的顺序生成成员。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要在集合中的成员发生的顺序中生成成员否则为 <see langword="false" />
    ///  。
    ///  此属性的默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property VerbatimOrder: Boolean read get_VerbatimOrder write set_VerbatimOrder;
  end;

  TDNCodeGeneratorOptions = class(TDNGenericImport<DNCodeGeneratorOptionsClass, DNCodeGeneratorOptions>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCompilerErrorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8ACEA8FC-6ABB-5B1F-B305-59E001C27C32}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCompilerError; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  类使用指定的文件名、 行、 列、 错误号和错误文本。
    ///</summary>
    ///  <param name="fileName">
    ///  编译器遇到了错误时正在编译的文件的文件名。
    ///</param>
    ///  <param name="line">
    ///  错误源的行。
    ///</param>
    ///  <param name="column">
    ///  错误源的列。
    ///</param>
    ///  <param name="errorNumber">
    ///  错误错误号。
    ///</param>
    ///  <param name="errorText">
    ///  错误消息文本。
    ///</param>
    {class} function init(fileName: string; line: Int32; column: Int32; errorNumber: string; errorText: string): DNCompilerError; overload;

  end;

  ///<summary>
  ///  表示编译器错误或警告。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CompilerError')]
  DNCompilerError = interface(DDN.mscorlib.DNObject)
  ['{A3C7B849-316F-389D-BE25-4FBF1595B534}']
  { getters & setters } 

    function get_Line: Int32;
    procedure set_Line(value: Int32);
    function get_Column: Int32;
    procedure set_Column(value: Int32);
    function get_ErrorNumber: string;
    procedure set_ErrorNumber(value: string);
    function get_ErrorText: string;
    procedure set_ErrorText(value: string);
    function get_IsWarning: Boolean;
    procedure set_IsWarning(value: Boolean);
    function get_FileName: string;
    procedure set_FileName(value: string);

  { methods } 

    ///<summary>
    ///  提供的对象的实现 <see cref="M:System.Object.ToString" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  编译器错误的字符串表示形式。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置错误的源所在的行号。
    ///</summary>
    ///<returns>
    ///  编译器遇到错误时所在的源文件行号。
    ///</returns>
    property Line: Int32 read get_Line write set_Line;
    ///<summary>
    ///  获取或设置错误的源所在的列号。
    ///</summary>
    ///<returns>
    ///  编译器遇到错误时所在的源文件的列号。
    ///</returns>
    property Column: Int32 read get_Column write set_Column;
    ///<summary>
    ///  获取或设置错误号。
    ///</summary>
    ///<returns>
    ///  一个字符串形式的错误号。
    ///</returns>
    property ErrorNumber: string read get_ErrorNumber write set_ErrorNumber;
    ///<summary>
    ///  获取或设置错误消息的文本。
    ///</summary>
    ///<returns>
    ///  错误消息的文本。
    ///</returns>
    property ErrorText: string read get_ErrorText write set_ErrorText;
    ///<summary>
    ///  获取或设置一个值，该值指示错误是否为警告。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此错误是警告;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsWarning: Boolean read get_IsWarning write set_IsWarning;
    ///<summary>
    ///  获取或设置包含导致错误的代码的源文件的文件名。
    ///</summary>
    ///<returns>
    ///  包含导致错误的代码的源文件的文件名。
    ///</returns>
    property FileName: string read get_FileName write set_FileName;
  end;

  TDNCompilerError = class(TDNGenericImport<DNCompilerErrorClass, DNCompilerError>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCompilerInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{75051793-5501-52FD-ADB5-ED9A3BC8965A}']
  end;

  ///<summary>
  ///  表示一个语言提供程序的配置设置。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CompilerInfo')]
  DNCompilerInfo = interface(DDN.mscorlib.DNObject)
  ['{CBB8F837-C710-3207-A59E-7501E4890887}']
  { getters & setters } 

    function get_CodeDomProviderType: DDN.mscorlib.DNType;
    function get_IsCodeDomProviderTypeValid: Boolean;

  { methods } 

    function CreateProvider(providerOptions: DDN.mscorlib.DNIDictionary<string, string>): DNCodeDomProvider; overload;
    ///<summary>
    ///  获取语言提供程序支持的语言名称。
    ///</summary>
    ///<returns>
    ///  语言提供程序支持的语言名称的数组。
    ///</returns>
    function GetLanguages: TArray<string>;
    ///<summary>
    ///  返回的文件名称扩展支持的语言提供程序。
    ///</summary>
    ///<returns>
    ///  支持的语言提供程序的文件扩展名的数组。
    ///</returns>
    function GetExtensions: TArray<string>;
    ///<summary>
    ///  获取语言提供程序实现的配置的编译器设置。
    ///</summary>
    ///<returns>
    ///  一个只读的 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  实例，它包含编译器选项和为语言提供程序配置设置。
    ///</returns>
    function CreateDefaultCompilerParameters: DNCompilerParameters;
    ///<summary>
    ///  返回当前实例的哈希代码。
    ///</summary>
    ///<returns>
    ///  当前的 32 位有符号的整数哈希代码 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  实例，适合在哈希算法和数据结构，如哈希表中使用。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  确定指定的对象是否表示相同语言提供程序和编译器的设置与当前 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  。
    ///</summary>
    ///  <param name="o">
    ///  将与当前 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="o" />
    ///  是 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  对象，其值是与此实例相同; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(o: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  当前语言提供程序设置的实例。
    ///</summary>
    ///<returns>
    ///  关联语言提供程序配置的 CodeDOM 提供程序。
    ///</returns>
    function CreateProvider: DNCodeDomProvider; overload;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取已配置的类型 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  实现。
    ///</summary>
    ///<returns>
    ///  一个只读的 <see cref="T:System.Type" />
    ///  表示已配置的语言提供程序类型的实例。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationException">
    ///  在此计算机上未配置语言提供程序。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  找不到类型，因为它是 <see langword="null" />
    ///  或空字符串。
    ///  - 或 -
    ///  由于找不到该类型的名称 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  找不到配置文件中。
    ///</exception>
    property CodeDomProviderType: DDN.mscorlib.DNType read get_CodeDomProviderType;
    ///<summary>
    ///  返回一个值，该值指示是否在计算机上配置语言提供程序实现。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果计算机上配置语言提供程序实现类型否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsCodeDomProviderTypeValid: Boolean read get_IsCodeDomProviderTypeValid;
  end;

  TDNCompilerInfo = class(TDNGenericImport<DNCompilerInfoClass, DNCompilerInfo>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCompilerParametersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{98AAC05D-9F4A-52E0-9F3C-86251DA7DA26}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCompilerParameters; overload;
    ///<summary>
    ///  初始化的新实例 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  类使用指定的程序集名称。
    ///</summary>
    ///  <param name="assemblyNames">
    ///  引用的程序集的名称。
    ///</param>
    {class} function init(assemblyNames: TArray<string>): DNCompilerParameters; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  类使用指定的程序集名称和输出文件的名称。
    ///</summary>
    ///  <param name="assemblyNames">
    ///  引用的程序集的名称。
    ///</param>
    ///  <param name="outputName">
    ///  输出文件名。
    ///</param>
    {class} function init(assemblyNames: TArray<string>; outputName: string): DNCompilerParameters; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  类使用指定的程序集名称、 输出名称和值，该值指示是否要包括调试信息。
    ///</summary>
    ///  <param name="assemblyNames">
    ///  引用的程序集的名称。
    ///</param>
    ///  <param name="outputName">
    ///  输出文件名。
    ///</param>
    ///  <param name="includeDebugInformation"><see langword="true" />
    ///  若要包括调试信息; <see langword="false" />
    ///  要排除的调试信息。
    ///</param>
    {class} function init(assemblyNames: TArray<string>; outputName: string; includeDebugInformation: Boolean): DNCompilerParameters; overload;

  end;

  ///<summary>
  ///  表示来调用编译器时使用的参数。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CompilerParameters')]
  DNCompilerParameters = interface(DDN.mscorlib.DNObject)
  ['{48967BCC-A6C5-3321-9537-A4313CF4B316}']
  { getters & setters } 

    function get_CoreAssemblyFileName: string;
    procedure set_CoreAssemblyFileName(value: string);
    function get_GenerateExecutable: Boolean;
    procedure set_GenerateExecutable(value: Boolean);
    function get_GenerateInMemory: Boolean;
    procedure set_GenerateInMemory(value: Boolean);
    function get_ReferencedAssemblies: DNStringCollection;
    function get_MainClass: string;
    procedure set_MainClass(value: string);
    function get_OutputAssembly: string;
    procedure set_OutputAssembly(value: string);
    function get_TempFiles: DNTempFileCollection;
    procedure set_TempFiles(value: DNTempFileCollection);
    function get_IncludeDebugInformation: Boolean;
    procedure set_IncludeDebugInformation(value: Boolean);
    function get_TreatWarningsAsErrors: Boolean;
    procedure set_TreatWarningsAsErrors(value: Boolean);
    function get_WarningLevel: Int32;
    procedure set_WarningLevel(value: Int32);
    function get_CompilerOptions: string;
    procedure set_CompilerOptions(value: string);
    function get_Win32Resource: string;
    procedure set_Win32Resource(value: string);
    function get_EmbeddedResources: DNStringCollection;
    function get_LinkedResources: DNStringCollection;
    function get_UserToken: IntPtr;
    procedure set_UserToken(value: IntPtr);
    function get_Evidence: DDN.mscorlib.DNEvidence;
    procedure set_Evidence(value: DDN.mscorlib.DNEvidence);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置核心或标准程序集，如包含基本类型的名称 <see cref="T:System.Object" />
    ///  , ，<see cref="T:System.String" />
    ///  , ，或 <see cref="T:System.Int32" />
    ///  。
    ///</summary>
    ///<returns>
    ///  包含基本类型的核心程序集的名称。
    ///</returns>
    property CoreAssemblyFileName: string read get_CoreAssemblyFileName write set_CoreAssemblyFileName;
    ///<summary>
    ///  获取或设置一个值，该值指示是否生成可执行文件。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应生成一个可执行文件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property GenerateExecutable: Boolean read get_GenerateExecutable write set_GenerateExecutable;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在内存中生成的输出。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果编译器应在内存中; 生成输出否则为 <see langword="false" />
    ///  。
    ///</returns>
    property GenerateInMemory: Boolean read get_GenerateInMemory write set_GenerateInMemory;
    ///<summary>
    ///  获取由当前的项目引用的程序集。
    ///</summary>
    ///<returns>
    ///  一个包含由要编译的源引用的程序集名称的集合。
    ///</returns>
    property ReferencedAssemblies: DNStringCollection read get_ReferencedAssemblies;
    ///<summary>
    ///  获取或设置的主类的名称。
    ///</summary>
    ///<returns>
    ///  主类的名称。
    ///</returns>
    property MainClass: string read get_MainClass write set_MainClass;
    ///<summary>
    ///  获取或设置输出程序集的名称。
    ///</summary>
    ///<returns>
    ///  在输出程序集名称。
    ///</returns>
    property OutputAssembly: string read get_OutputAssembly write set_OutputAssembly;
    ///<summary>
    ///  获取或设置包含临时文件的集合。
    ///</summary>
    ///<returns>
    ///  一个包含临时文件的集合。
    ///</returns>
    property TempFiles: DNTempFileCollection read get_TempFiles write set_TempFiles;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在已编译可执行文件中包含调试信息。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应生成调试信息;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IncludeDebugInformation: Boolean read get_IncludeDebugInformation write set_IncludeDebugInformation;
    ///<summary>
    ///  获取或设置一个值，该值指示是否将警告视为错误。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应将警告视为错误;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property TreatWarningsAsErrors: Boolean read get_TreatWarningsAsErrors write set_TreatWarningsAsErrors;
    ///<summary>
    ///  获取或设置编译器中止编译的警告级别。
    ///</summary>
    ///<returns>
    ///  编译器将中止编译警告级别。
    ///</returns>
    property WarningLevel: Int32 read get_WarningLevel write set_WarningLevel;
    ///<summary>
    ///  获取或设置要在调用编译器时使用的可选命令行参数。
    ///</summary>
    ///<returns>
    ///  编译器用于任何其他命令行参数。
    ///</returns>
    property CompilerOptions: string read get_CompilerOptions write set_CompilerOptions;
    ///<summary>
    ///  获取或设置要链接到已编译的程序集中的 Win32 资源文件的文件名。
    ///</summary>
    ///<returns>
    ///  将链接到已编译的程序集一个 Win32 资源文件。
    ///</returns>
    property Win32Resource: string read get_Win32Resource write set_Win32Resource;
    ///<summary>
    ///  获取要包括在编译的程序集输出时的.NET Framework 资源文件。
    ///</summary>
    ///<returns>
    ///  一个包含.NET Framework 资源，以生成的程序集中包括的文件路径的集合。
    ///</returns>
    property EmbeddedResources: DNStringCollection read get_EmbeddedResources;
    ///<summary>
    ///  在当前源中获取所引用的.NET Framework 资源文件。
    ///</summary>
    ///<returns>
    ///  一个包含由源引用的.NET Framework 资源的文件路径的集合。
    ///</returns>
    property LinkedResources: DNStringCollection read get_LinkedResources;
    ///<summary>
    ///  获取或设置创建编译器进程时要使用的用户标记。
    ///</summary>
    ///<returns>
    ///  要使用的用户标记。
    ///</returns>
    property UserToken: IntPtr read get_UserToken write set_UserToken;
    ///<summary>
    ///  指定表示要为已编译的程序集授予的安全策略权限的证据对象。
    ///</summary>
    ///<returns>
    ///  一个对象，表示要为已编译的程序集授予的安全策略权限。
    ///</returns>
    property Evidence: DDN.mscorlib.DNEvidence read get_Evidence write set_Evidence;
  end;

  TDNCompilerParameters = class(TDNGenericImport<DNCompilerParametersClass, DNCompilerParameters>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCompilerResultsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{37437627-1F61-520F-A758-23B3183573AA}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  类，该类使用指定的临时文件。
    ///</summary>
    ///  <param name="tempFiles">
    ///  一个 <see cref="T:System.CodeDom.Compiler.TempFileCollection" />
    ///  用来管理和存储对在编译期间生成的中间文件的引用。
    ///</param>
    {class} function init(tempFiles: DNTempFileCollection): DNCompilerResults;

  end;

  ///<summary>
  ///  表示从编译器返回的编译结果。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CompilerResults')]
  DNCompilerResults = interface(DDN.mscorlib.DNObject)
  ['{6A56D79B-F9D7-341C-9FB9-38FA7DBE1719}']
  { getters & setters } 

    function get_TempFiles: DNTempFileCollection;
    procedure set_TempFiles(value: DNTempFileCollection);
    function get_Evidence: DDN.mscorlib.DNEvidence;
    procedure set_Evidence(value: DDN.mscorlib.DNEvidence);
    function get_CompiledAssembly: DDN.mscorlib.DNAssembly;
    procedure set_CompiledAssembly(value: DDN.mscorlib.DNAssembly);
    function get_Errors: DNCompilerErrorCollection;
    function get_Output: DNStringCollection;
    function get_PathToAssembly: string;
    procedure set_PathToAssembly(value: string);
    function get_NativeCompilerReturnValue: Int32;
    procedure set_NativeCompilerReturnValue(value: Int32);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置要使用的临时文件集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.TempFileCollection" />
    ///  用来管理和存储对在编译期间生成的中间文件的引用。
    ///</returns>
    property TempFiles: DNTempFileCollection read get_TempFiles write set_TempFiles;
    ///<summary>
    ///  指示表示已编译的程序集的安全策略权限的证据对象。
    ///</summary>
    ///<returns><see cref="T:System.Security.Policy.Evidence" />
    ///  对象，表示已编译的程序集的安全策略权限。
    ///</returns>
    property Evidence: DDN.mscorlib.DNEvidence read get_Evidence write set_Evidence;
    ///<summary>
    ///  获取或设置编译的程序集。
    ///</summary>
    ///<returns><see cref="T:System.Reflection.Assembly" />
    ///  ，该值指示编译的程序集。
    ///</returns>
    property CompiledAssembly: DDN.mscorlib.DNAssembly read get_CompiledAssembly write set_CompiledAssembly;
    ///<summary>
    ///  获取编译器错误和警告的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  ，该值指示的错误和警告导致编译时，如果有的话。
    ///</returns>
    property Errors: DNCompilerErrorCollection read get_Errors;
    ///<summary>
    ///  获取编译器输出消息。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  ，其中包含输出消息。
    ///</returns>
    property Output: DNStringCollection read get_Output;
    ///<summary>
    ///  获取或设置已编译的程序集的路径。
    ///</summary>
    ///<returns>
    ///  该程序集的路径或 <see langword="null" />
    ///  如果在内存中生成程序集。
    ///</returns>
    property PathToAssembly: string read get_PathToAssembly write set_PathToAssembly;
    ///<summary>
    ///  获取或设置编译器的返回值。
    ///</summary>
    ///<returns>
    ///  编译器的返回值。
    ///</returns>
    property NativeCompilerReturnValue: Int32 read get_NativeCompilerReturnValue write set_NativeCompilerReturnValue;
  end;

  TDNCompilerResults = class(TDNGenericImport<DNCompilerResultsClass, DNCompilerResults>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  ///<summary>
  ///  定义一个接口来调用编译源代码或使用特定的编译器的 CodeDOM 树。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.ICodeCompiler')]
  DNICodeCompiler = interface(DDN.mscorlib.DNObject)
  ['{436B1E43-8A38-359B-9E1A-2A700DBDB6BC}']
  { methods } 

    ///<summary>
    ///  从编译程序集 <see cref="N:System.CodeDom" />
    ///  包含在指定树 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  , ，使用指定的编译器设置。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="compilationUnit">
    ///  一个 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  ，该值指示要编译的代码。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromDom(options: DNCompilerParameters; compilationUnit: DNCodeCompileUnit): DNCompilerResults;
    ///<summary>
    ///  将使用指定的编译器设置包含在指定的文件中的源代码中的程序集编译成。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="fileName">
    ///  包含要编译的源代码文件的文件名。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromFile(options: DNCompilerParameters; fileName: string): DNCompilerResults;
    ///<summary>
    ///  将编译成程序集从指定的字符串包含源代码，并使用指定的编译器设置。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="source">
    ///  若要编译的源代码。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromSource(options: DNCompilerParameters; source: string): DNCompilerResults;
    ///<summary>
    ///  编译程序集基于 <see cref="N:System.CodeDom" />
    ///  树中指定的数组包含 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  对象时，使用指定的编译器设置。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="compilationUnits">
    ///  类型的数组 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  ，该值指示要编译的代码。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromDomBatch(options: DNCompilerParameters; compilationUnits: TArray<DNCodeCompileUnit>): DNCompilerResults;
    ///<summary>
    ///  将使用指定的编译器设置包含在指定的文件中的源代码中的程序集编译成。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="fileNames">
    ///  要编译的文件的文件名。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromFileBatch(options: DNCompilerParameters; fileNames: TArray<string>): DNCompilerResults;
    ///<summary>
    ///  将指定的字符串包含源代码，并使用指定的编译器设置数组中的程序集编译成。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示的编译设置。
    ///</param>
    ///  <param name="sources">
    ///  要编译的源字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    function CompileAssemblyFromSourceBatch(options: DNCompilerParameters; sources: TArray<string>): DNCompilerResults;

  end;

  //-------------namespace: System.CodeDom.Compiler----------------
  ///<summary>
  ///  定义用于生成代码的接口。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.ICodeGenerator')]
  DNICodeGenerator = interface(DDN.mscorlib.DNObject)
  ['{AA6F6449-A84E-377B-A86C-FD956602CB06}']
  { methods } 

    ///<summary>
    ///  获取一个值，该值指示指定的值是否为当前语言有效的标识符。
    ///</summary>
    ///  <param name="value">
    ///  要测试是有效的标识符的值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="value" />
    ///  参数是有效的标识符; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValidIdentifier(value: string): Boolean;
    ///<summary>
    ///  如果指定的值不是有效的标识符，将引发异常。
    ///</summary>
    ///  <param name="value">
    ///  要验证的标识符。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  标识符不是有效的。
    ///</exception>
    procedure ValidateIdentifier(value: string);
    ///<summary>
    ///  创建指定的值的转义的标识符。
    ///</summary>
    ///  <param name="value">
    ///  要创建的转义的标识符的字符串。
    ///</param>
    ///<returns>
    ///  转义的标识符的值。
    ///</returns>
    function CreateEscapedIdentifier(value: string): string;
    ///<summary>
    ///  创建指定的值的有效标识符。
    ///</summary>
    ///  <param name="value">
    ///  要生成的有效标识符的字符串。
    ///</param>
    ///<returns>
    ///  指定值的有效标识符。
    ///</returns>
    function CreateValidIdentifier(value: string): string;
    ///<summary>
    ///  获取指示指定的类型 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  。
    ///</summary>
    ///  <param name="type">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  ，该值指示要返回的类型。
    ///</param>
    ///<returns>
    ///  文本表示形式的指定类型的语言，此代码生成器用于在其中生成代码。
    ///  例如，在 Visual Basic 中，传入 System.Int32 类型将返回"Integer"。
    ///</returns>
    function GetTypeOutput(&type: DNCodeTypeReference): string;
    ///<summary>
    ///  获取一个值，该值指示是否生成器支持表示由指定的语言功能 <see cref="T:System.CodeDom.Compiler.GeneratorSupport" />
    ///  对象。
    ///</summary>
    ///  <param name="supports">
    ///  若要测试的生成器功能。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的功能都受支持;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Supports(supports: DNGeneratorSupport): Boolean;
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 表达式生成代码，并输出到指定的文本编写器。
    ///</summary>
    ///  <param name="e">
    ///  一个 <see cref="T:System.CodeDom.CodeExpression" />
    ///  ，指示表达式为其生成代码。
    ///</param>
    ///  <param name="w"><see cref="T:System.IO.TextWriter" />
    ///  向其中输出代码。
    ///</param>
    ///  <param name="o">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    procedure GenerateCodeFromExpression(e: DNCodeExpression; w: DDN.mscorlib.DNTextWriter; o: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 语句生成代码，并输出到指定的文本编写器使用指定的选项。
    ///</summary>
    ///  <param name="e">
    ///  一个 <see cref="T:System.CodeDom.CodeStatement" />
    ///  包含要转换的 CodeDOM 元素。
    ///</param>
    ///  <param name="w"><see cref="T:System.IO.TextWriter" />
    ///  向其中输出代码。
    ///</param>
    ///  <param name="o">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    procedure GenerateCodeFromStatement(e: DNCodeStatement; w: DDN.mscorlib.DNTextWriter; o: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 命名空间生成代码，并输出到指定的文本编写器使用指定的选项。
    ///</summary>
    ///  <param name="e">
    ///  一个 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  ，该值指示要生成的代码的命名空间。
    ///</param>
    ///  <param name="w"><see cref="T:System.IO.TextWriter" />
    ///  向其中输出代码。
    ///</param>
    ///  <param name="o">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    procedure GenerateCodeFromNamespace(e: DNCodeNamespace; w: DDN.mscorlib.DNTextWriter; o: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 编译单元中生成代码并将其输出到指定的文本编写器使用指定的选项。
    ///</summary>
    ///  <param name="e">
    ///  要为其生成代码的 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  。
    ///</param>
    ///  <param name="w"><see cref="T:System.IO.TextWriter" />
    ///  向其中输出代码。
    ///</param>
    ///  <param name="o">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    procedure GenerateCodeFromCompileUnit(e: DNCodeCompileUnit; w: DDN.mscorlib.DNTextWriter; o: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 类型声明生成代码，并输出到指定的文本编写器使用指定的选项。
    ///</summary>
    ///  <param name="e">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  ，该值指示为其生成代码的类型。
    ///</param>
    ///  <param name="w"><see cref="T:System.IO.TextWriter" />
    ///  向其中输出代码。
    ///</param>
    ///  <param name="o">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    procedure GenerateCodeFromType(e: DNCodeTypeDeclaration; w: DDN.mscorlib.DNTextWriter; o: DNCodeGeneratorOptions);

  end;

  //-------------namespace: System.CodeDom.Compiler----------------
  ///<summary>
  ///  定义用于分析代码转换为一个接口 <see cref="T:System.CodeDom.CodeCompileUnit" />
  ///  。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.ICodeParser')]
  DNICodeParser = interface(DDN.mscorlib.DNObject)
  ['{E4091F1C-1C69-39D7-BDB7-C84B60AB3A07}']
  { methods } 

    ///<summary>
    ///  派生类中实现时，将编译到指定的文本流 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  。
    ///</summary>
    ///  <param name="codeStream">
    ///  一个 <see cref="T:System.IO.TextReader" />
    ///  ，可用于读取要编译的代码。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  ，包含表示形式的已分析的代码。
    ///</returns>
    function Parse(codeStream: DDN.mscorlib.DNTextReader): DNCodeCompileUnit;

  end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNTempFileCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8720C78F-8D29-533B-A6C5-8E0C45930103}']
  { constructors } 

    ///<summary>
    ///  使用默认值初始化 <see cref="T:System.CodeDom.Compiler.TempFileCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNTempFileCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.TempFileCollection" />
    ///  类指定为默认设置为其生成和使用后, 删除临时文件的临时目录。
    ///</summary>
    ///  <param name="tempDir">
    ///  要用于存储临时文件的临时目录路径。
    ///</param>
    {class} function init(tempDir: string): DNTempFileCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.TempFileCollection" />
    ///  类使用指定的临时目录和指定的值，该值指示是否要保留还是后它们生成和使用时，默认情况下删除临时文件。
    ///</summary>
    ///  <param name="tempDir">
    ///  要用于存储临时文件的临时目录路径。
    ///</param>
    ///  <param name="keepFiles"><see langword="true" />
    ///  如果应在使用; 后保留的临时文件 <see langword="false" />
    ///  如果应删除临时文件。
    ///</param>
    {class} function init(tempDir: string; keepFiles: Boolean): DNTempFileCollection; overload;

  end;

  ///<summary>
  ///  表示临时文件的集合。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.TempFileCollection')]
  DNTempFileCollection = interface(DDN.mscorlib.DNObject)
  ['{90C29C80-D7C1-3265-A8FF-DCE48A64EDF6}']
  { getters & setters } 

    function get_Count: Int32;
    function get_TempDir: string;
    function get_BasePath: string;
    function get_KeepFiles: Boolean;
    procedure set_KeepFiles(value: Boolean);

  { methods } 

    ///<summary>
    ///  将具有指定的文件扩展名的文件名添加到集合，并使用指定的值，该值指示是否应删除或保留该文件。
    ///</summary>
    ///  <param name="fileExtension">
    ///  要添加到集合的自动生成的临时文件名称文件扩展名。
    ///</param>
    ///  <param name="keepFile"><see langword="true" />
    ///  如果该文件应显示在使用; 之后 <see langword="false" />
    ///  如果应删除该文件。
    ///</param>
    ///<returns>
    ///  具有指定刚才添加到集合的扩展名的文件名。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="fileExtension" />
    ///  为 <see langword="null" />
    ///  或空字符串。
    ///</exception>
    function AddExtension(fileExtension: string; keepFile: Boolean): string; overload;
    ///<summary>
    ///  将指定的文件添加到集合，并使用指定的值，该值指示是否保留的文件，或释放集合之后 <see cref="M:System.CodeDom.Compiler.TempFileCollection.Delete" />
    ///  调用方法。
    ///</summary>
    ///  <param name="fileName">
    ///  要向集合中添加的文件的名称。
    ///</param>
    ///  <param name="keepFile"><see langword="true" />
    ///  如果该文件应显示在使用; 之后 <see langword="false" />
    ///  如果应删除该文件。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="fileName" />
    ///  为 <see langword="null" />
    ///  或空字符串。
    ///  - 或 -
    ///  <paramref name="fileName" />
    ///  是一个副本。
    ///</exception>
    procedure AddFile(fileName: string; keepFile: Boolean);
    ///<summary>
    ///  删除此集合中未标记为保留临时的文件。
    ///</summary>
    procedure Delete;
    ///<summary>
    ///  向集合添加具有指定的文件扩展名的文件名。
    ///</summary>
    ///  <param name="fileExtension">
    ///  要添加到集合的自动生成的临时文件名称文件扩展名。
    ///</param>
    ///<returns>
    ///  具有指定刚才添加到集合的扩展名的文件名。
    ///</returns>
    function AddExtension(fileExtension: string): string; overload;
    ///<summary>
    ///  获取可枚举集合中的成员的枚举器。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  ，其中包含该集合的成员。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  将集合中的成员复制到指定的字符串，指定索引处开始。
    ///</summary>
    ///  <param name="fileNames">
    ///  要将复制到的字符串数组。
    ///</param>
    ///  <param name="start">
    ///  要开始向复制的数组的索引。
    ///</param>
    procedure CopyTo(fileNames: TArray<string>; start: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的文件数。
    ///</summary>
    ///<returns>
    ///  集合中的文件的数量。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取要存储在临时文件的临时目录。
    ///</summary>
    ///<returns>
    ///  要存储在临时文件的临时目录。
    ///</returns>
    property TempDir: string read get_TempDir;
    ///<summary>
    ///  获取基文件名，不带文件扩展名的完整路径上的临时目录路径，用于生成临时文件名的集合。
    ///</summary>
    ///<returns>
    ///  为基的文件名，不带文件扩展名，在临时目录路径，用于生成临时文件名的集合上的完整路径。
    ///</returns>
    ///<exception cref="T:System.Security.SecurityException">
    ///  如果 <see cref="P:System.CodeDom.Compiler.TempFileCollection.BasePath" />
    ///  属性未设置或设置为 <see langword="null" />
    ///  , ，和 <see cref="F:System.Security.Permissions.FileIOPermissionAccess.AllAccess" />
    ///  未授予所指示的临时目录 <see cref="P:System.CodeDom.Compiler.TempFileCollection.TempDir" />
    ///  属性。
    ///</exception>
    property BasePath: string read get_BasePath;
    ///<summary>
    ///  获取或设置一个值，该值指示是否保留这些文件中，默认情况下，当 <see cref="M:System.CodeDom.Compiler.TempFileCollection.Delete" />
    ///  调用方法或释放集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应保留这些文件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property KeepFiles: Boolean read get_KeepFiles write set_KeepFiles;
  end;

  TDNTempFileCollection = class(TDNGenericImport<DNTempFileCollectionClass, DNTempFileCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeAttributeDeclarationCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{D6CA8D17-800B-5AF3-AFD4-AC6FDC8071C8}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeAttributeDeclarationCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  包含指定的源集合元素的类。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  用来初始化集合。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: DNCodeAttributeDeclarationCollection): DNCodeAttributeDeclarationCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  包含指定的数组类 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  一个数组 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  用来初始化集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  数组中的一个或多个对象都 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: TArray<DNCodeAttributeDeclaration>): DNCodeAttributeDeclarationCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeAttributeDeclarationCollection')]
  DNCodeAttributeDeclarationCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{3A8E937E-C560-3779-A423-B645BAD276A1}']
  { getters & setters } 

    function get_Item(index: Int32): DNCodeAttributeDeclaration;
    procedure set_Item(index: Int32; value: DNCodeAttributeDeclaration);
    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  添加 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  具有指定值对集合对象。
    ///</summary>
    ///  <param name="value">
    ///  要添加的 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  在该位置插入新元素的索引。
    ///</returns>
    function Add(value: DNCodeAttributeDeclaration): Int32;
    ///<summary>
    ///  将指定的元素复制 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  数组转换为集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  类型的数组 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<DNCodeAttributeDeclaration>); overload;
    ///<summary>
    ///  将另一个的内容复制 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  对象传递给集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCodeAttributeDeclarationCollection); overload;
    ///<summary>
    ///  获取或设置一个值，该值指示集合是否包含指定 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  要查找对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果集合包含指定的对象;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DNCodeAttributeDeclaration): Boolean;
    ///<summary>
    ///  将集合对象复制到一维 <see cref="T:System.Array" />
    ///  实例的指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  从集合复制的值的目标。
    ///</param>
    ///  <param name="index">
    ///  插入的开始处的数组的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  目标数组是多维的。
    ///  - 或 -
    ///  中的元素数 <see cref="T:System.CodeDom.CodeAttributeDeclarationCollection" />
    ///  大于指定的目标数组的索引之间的可用空间 <paramref name="index" />
    ///  参数和目标数组的末尾。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  参数小于目标数组的最小索引。
    ///</exception>
    procedure CopyTo(&array: TArray<DNCodeAttributeDeclaration>; index: Int32);
    ///<summary>
    ///  获取指定的索引 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象在集合中，如果它在集合中存在。
    ///</summary>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  要在集合中定位对象。
    ///</param>
    ///<returns>
    ///  指定对象的集合中的索引如果找到，则否则为-1。
    ///</returns>
    function IndexOf(value: DNCodeAttributeDeclaration): Int32;
    ///<summary>
    ///  将指定 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象插入集合中的指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  应插入指定的对象的位置的从零开始索引。
    ///</param>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  要插入对象。
    ///</param>
    procedure Insert(index: Int32; value: DNCodeAttributeDeclaration);
    ///<summary>
    ///  从集合中移除指定的 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  要从集合中移除的 <see cref="T:System.CodeDom.CodeAttributeDeclaration" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  集合中找不到指定的对象。
    ///</exception>
    procedure Remove(value: DNCodeAttributeDeclaration);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNCodeAttributeDeclaration read get_Item write set_Item; default;
    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCodeAttributeDeclarationCollection = class(TDNGenericImport<DNCodeAttributeDeclarationCollectionClass, DNCodeAttributeDeclarationCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeCommentStatementCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{C1EFBDC7-6F16-561C-ADE9-47CAC9A4D2C2}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeCommentStatementCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  包含指定的源集合元素的类。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  用来初始化集合。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: DNCodeCommentStatementCollection): DNCodeCommentStatementCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeCommentStatement" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeCommentStatementCollection')]
  DNCodeCommentStatementCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{C12A8292-F24A-3BA8-94E6-EB3206D225E2}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将另一个的内容复制 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  对象传递给集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeCommentStatementCollection" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCodeCommentStatementCollection);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCodeCommentStatementCollection = class(TDNGenericImport<DNCodeCommentStatementCollectionClass, DNCodeCommentStatementCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeDirectiveCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{3AE85A91-85DE-55CE-82B9-53A708347559}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeDirectiveCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  类，具有指定的代码指令集合中的元素。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  用来初始化集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: DNCodeDirectiveCollection): DNCodeDirectiveCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeDirective" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeDirectiveCollection')]
  DNCodeDirectiveCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{ED78C3FA-AB56-353C-98BB-9280D3404C81}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将指定的内容添加 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象传递给集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeDirectiveCollection" />
    ///  对象，其中包含 <see cref="T:System.CodeDom.CodeDirective" />
    ///  要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCodeDirectiveCollection);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCodeDirectiveCollection = class(TDNGenericImport<DNCodeDirectiveCollectionClass, DNCodeDirectiveCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeNamespaceCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{D311E3C1-9640-5B8A-AA57-723AC0DEE45D}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeNamespaceCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  类，其中包含指定的源集合中的元素。
    ///</summary>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  用来初始化集合。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: DNCodeNamespaceCollection): DNCodeNamespaceCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  类，其中包含指定的数组 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  一个数组 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  用来初始化集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  数组中的一个或多个对象都 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: TArray<DNCodeNamespace>): DNCodeNamespaceCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeNamespace" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeNamespaceCollection')]
  DNCodeNamespaceCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{D4985194-80E5-36FE-8B95-8CD2E35E5FF5}']
  { getters & setters } 

    function get_Item(index: Int32): DNCodeNamespace;
    procedure set_Item(index: Int32; value: DNCodeNamespace);
    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将指定的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象添加到集合。
    ///</summary>
    ///  <param name="value">
    ///  要添加的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  。
    ///</param>
    ///<returns>
    ///  在该位置插入新元素的索引。
    ///</returns>
    function Add(value: DNCodeNamespace): Int32;
    ///<summary>
    ///  将指定的元素复制 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  数组转换为集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  类型的数组 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<DNCodeNamespace>); overload;
    ///<summary>
    ///  将指定的内容添加 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  对象传递给集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCodeNamespaceCollection); overload;
    ///<summary>
    ///  获取一个值，该值指示集合是否包含指定 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象。
    ///</summary>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeNamespace" />
    ///  要在集合中搜索。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  包含在集合; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DNCodeNamespace): Boolean;
    ///<summary>
    ///  将集合对象复制到一维 <see cref="T:System.Array" />
    ///  情况下，指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  从集合复制的值的目标。
    ///</param>
    ///  <param name="index">
    ///  插入的开始处的数组的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  目标数组是多维的。
    ///  - 或 -
    ///  中的元素数 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  大于指定的目标数组的索引之间的可用空间 <paramref name="index" />
    ///  参数和目标数组的末尾。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  参数小于目标数组的最小索引。
    ///</exception>
    procedure CopyTo(&array: TArray<DNCodeNamespace>; index: Int32);
    ///<summary>
    ///  获取指定的索引 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象在 <see cref="T:System.CodeDom.CodeNamespaceCollection" />
    ///  , ，如果它在集合中存在。
    ///</summary>
    ///  <param name="value">
    ///  要查找的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  。
    ///</param>
    ///<returns>
    ///  指定的索引 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  , ，如果它是，在集合中找到; 否则为-1。
    ///</returns>
    function IndexOf(value: DNCodeNamespace): Int32;
    ///<summary>
    ///  将指定 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象插入集合中的指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  应插入新项的位置的从零开始索引。
    ///</param>
    ///  <param name="value">
    ///  要插入的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  。
    ///</param>
    procedure Insert(index: Int32; value: DNCodeNamespace);
    ///<summary>
    ///  从集合中移除指定的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  要从该集合中移除的 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  集合中找不到指定的对象。
    ///</exception>
    procedure Remove(value: DNCodeNamespace);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNCodeNamespace read get_Item write set_Item; default;
    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCodeNamespaceCollection = class(TDNGenericImport<DNCodeNamespaceCollectionClass, DNCodeNamespaceCollection>) end;

  //-------------namespace: System.CodeDom----------------
  DNCodeTypeDeclarationCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{51287AF6-A040-5047-80F6-F555BAE09B77}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCodeTypeDeclarationCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  类，其中包含指定的源集合中的元素。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  用来初始化集合的对象。
    ///</param>
    {class} function init(value: DNCodeTypeDeclarationCollection): DNCodeTypeDeclarationCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  类，其中包含指定的数组 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  一个数组 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  用来初始化集合的对象。
    ///</param>
    {class} function init(value: TArray<DNCodeTypeDeclaration>): DNCodeTypeDeclarationCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.CodeTypeDeclarationCollection')]
  DNCodeTypeDeclarationCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{A0BD9913-B07D-32C3-8DF1-AA998B3FB10E}']
  { getters & setters } 

    function get_Item(index: Int32): DNCodeTypeDeclaration;
    procedure set_Item(index: Int32; value: DNCodeTypeDeclaration);
    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将指定的 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象添加到集合。
    ///</summary>
    ///  <param name="value">
    ///  要添加的 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  在该位置插入新元素的索引。
    ///</returns>
    function Add(value: DNCodeTypeDeclaration): Int32;
    ///<summary>
    ///  将指定数组的元素复制到该集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  类型的数组 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<DNCodeTypeDeclaration>); overload;
    ///<summary>
    ///  将另一个的内容添加 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  对象传递给集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  对象，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCodeTypeDeclarationCollection); overload;
    ///<summary>
    ///  获取一个值，该值指示集合是否包含指定 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  要在集合中搜索对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果集合包含指定的对象;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DNCodeTypeDeclaration): Boolean;
    ///<summary>
    ///  中的元素复制 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  到一维对象 <see cref="T:System.Array" />
    ///  实例，指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  从集合复制的值的目标。
    ///</param>
    ///  <param name="index">
    ///  插入的开始处的数组的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  目标数组是多维的。
    ///  - 或 -
    ///  中的元素数 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  大于指定的目标数组的索引之间的可用空间 <paramref name="index" />
    ///  参数和目标数组的末尾。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  参数小于目标数组的最小索引。
    ///</exception>
    procedure CopyTo(&array: TArray<DNCodeTypeDeclaration>; index: Int32);
    ///<summary>
    ///  获取指定的索引 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象在 <see cref="T:System.CodeDom.CodeTypeDeclarationCollection" />
    ///  , ，如果它在集合中存在。
    ///</summary>
    ///  <param name="value">
    ///  要在集合中查找的 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果找到，集合中的指定对象的索引否则为-1。
    ///</returns>
    function IndexOf(value: DNCodeTypeDeclaration): Int32;
    ///<summary>
    ///  将指定 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象插入集合中的指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  应插入指定的对象的位置的从零开始索引。
    ///</param>
    ///  <param name="value"><see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  要插入对象。
    ///</param>
    procedure Insert(index: Int32; value: DNCodeTypeDeclaration);
    ///<summary>
    ///  从集合中移除指定的 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  要从该集合中移除的 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  集合中找不到指定的对象。
    ///</exception>
    procedure Remove(value: DNCodeTypeDeclaration);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNCodeTypeDeclaration read get_Item write set_Item; default;
    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCodeTypeDeclarationCollection = class(TDNGenericImport<DNCodeTypeDeclarationCollectionClass, DNCodeTypeDeclarationCollection>) end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCompilerErrorCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{5C187F4F-CBF8-50C0-97DB-589EE88F1669}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCompilerErrorCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  类，其中包含指定的内容 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  用来初始化集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: DNCompilerErrorCollection): DNCompilerErrorCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  ，其中包含指定的数组 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  一个数组 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象来初始化具有的集合。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(value: TArray<DNCompilerError>): DNCompilerErrorCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.CodeDom.Compiler.CompilerError" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CompilerErrorCollection')]
  DNCompilerErrorCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{074B0421-0346-38F9-BF08-9F4B52FC292E}']
  { getters & setters } 

    function get_Item(index: Int32): DNCompilerError;
    procedure set_Item(index: Int32; value: DNCompilerError);
    function get_HasErrors: Boolean;
    function get_HasWarnings: Boolean;
    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  添加指定 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象传递给错误集合。
    ///</summary>
    ///  <param name="value">
    ///  要添加的 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  在该位置插入新元素的索引。
    ///</returns>
    function Add(value: DNCompilerError): Int32;
    ///<summary>
    ///  将一个数组的元素复制到错误集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  类型的数组 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  ，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<DNCompilerError>); overload;
    ///<summary>
    ///  将指定的编译器错误集合的内容添加到错误集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  对象，其中包含要添加到集合的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNCompilerErrorCollection); overload;
    ///<summary>
    ///  获取一个值，该值指示集合是否包含指定 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象。
    ///</summary>
    ///  <param name="value">
    ///  要查找的 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  包含在集合; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DNCompilerError): Boolean;
    ///<summary>
    ///  将集合的值复制到一维 <see cref="T:System.Array" />
    ///  实例的指定索引位置。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  从复制的值的目标 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  中开始复制处的数组的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该数组由 <paramref name="array" />
    ///  参数是多维的。
    ///  - 或 -
    ///  中的元素数 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  个的索引值之间的可用空间大于 <paramref name="arrayIndex" />
    ///  数组中的参数由 <paramref name="array" />
    ///  参数和数组的末尾由 <paramref name="array" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  参数小于所指示的数组下限 <paramref name="array" />
    ///  参数。
    ///</exception>
    procedure CopyTo(&array: TArray<DNCompilerError>; index: Int32);
    ///<summary>
    ///  获取指定的索引 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  对象在集合中，如果它在集合中存在。
    ///</summary>
    ///  <param name="value">
    ///  要查找的 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  。
    ///</param>
    ///<returns>
    ///  指定的索引 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  中 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  , ，如果找到; 否则为-1。
    ///</returns>
    function IndexOf(value: DNCompilerError): Int32;
    ///<summary>
    ///  将指定 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  插入集合中的指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  编译器错误应插入位置的从零开始索引。
    ///</param>
    ///  <param name="value">
    ///  要插入的 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  。
    ///</param>
    procedure Insert(index: Int32; value: DNCompilerError);
    ///<summary>
    ///  中移除特定 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  集合中。
    ///</summary>
    ///  <param name="value">
    ///  要从 <see cref="T:System.CodeDom.Compiler.CompilerError" />
    ///  移除的 <see cref="T:System.CodeDom.Compiler.CompilerErrorCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  集合中找不到指定的对象。
    ///</exception>
    procedure Remove(value: DNCompilerError);
    procedure RemoveAt(index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNCompilerError read get_Item write set_Item; default;
    ///<summary>
    ///  获取一个值，该值指示集合是否包含错误。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果集合包含错误;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasErrors: Boolean read get_HasErrors;
    ///<summary>
    ///  获取一个值，该值指示集合是否包含警告。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果集合包含警告产生;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasWarnings: Boolean read get_HasWarnings;
    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNCompilerErrorCollection = class(TDNGenericImport<DNCompilerErrorCollectionClass, DNCompilerErrorCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationLocationCollectionClass = interface(DDN.mscorlib.DNReadOnlyCollectionBaseClass)
  ['{02D66BE0-53B8-5F61-97E0-50F521AFCE27}']
  end;

  ///<summary>
  ///  包含 <see cref="T:System.Configuration.ConfigurationLocationCollection" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationLocationCollection')]
  DNConfigurationLocationCollection = interface(DDN.mscorlib.DNReadOnlyCollectionBase)
  ['{858C9C17-6D2C-3327-B1A3-D06DF578E96A}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNConfigurationLocationCollection = class(TDNGenericImport<DNConfigurationLocationCollectionClass, DNConfigurationLocationCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameObjectCollectionBase_KeysCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8056D97B-E35F-57D6-A66E-94C97EE8836D}']
  end;

  ///<summary>
  ///  表示集合中 <see cref="T:System.String" />
  ///  密钥的集合。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase+KeysCollection')]
  DNNameObjectCollectionBase_KeysCollection = interface(DDN.mscorlib.DNObject)
  ['{4F00D501-6A21-3AF8-8BE7-5B41DF6456A1}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  获取集合的指定索引处的键。
    ///</summary>
    ///  <param name="index">
    ///  要从集合中获取的从零开始的键索引。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含集合的指定索引处的键。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  超出了集合的有效索引范围。
    ///</exception>
    function Get(index: Int32): string;
    ///<summary>
    ///  返回循环访问 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: string read get_Item; default;
    ///<summary>
    ///  获取中的键数 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  中的键数 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNNameObjectCollectionBase_KeysCollection = class(TDNGenericImport<DNNameObjectCollectionBase_KeysCollectionClass, DNNameObjectCollectionBase_KeysCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionCollectionClass = interface(DNObjectClass)
  ['{A06CC875-686F-5A40-96CF-7F0DBC196F65}']
  end;

  ///<summary>
  ///  表示配置文件中相关章节的集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionCollection')]
  DNConfigurationSectionCollection = interface(DNObject)
  ['{AAF38C07-72FC-3DC8-8BD1-14A7CAB678ED}']
  { getters & setters } 

    function get_Item(name: string): DNConfigurationSection; overload;
    function get_Item(index: Int32): DNConfigurationSection; overload;
    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    ///<summary>
    ///  在序列化过程使用由系统。
    ///</summary>
    ///  <param name="info">
    ///  适用 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象。
    ///</param>
    ///  <param name="context">
    ///  适用 <see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象。
    ///</param>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  添加 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象传递给 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要添加部分的名称。
    ///</param>
    ///  <param name="section">
    ///  要添加的部分。
    ///</param>
    procedure Add(name: string; section: DNConfigurationSection);
    ///<summary>
    ///  清除此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  这会将复制 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  到一个数组对象。
    ///</summary>
    ///  <param name="array">
    ///  要复制的数组 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象传递给。
    ///</param>
    ///  <param name="index">
    ///  在此处开始将复制的索引位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="array" />
    ///  的值少于 <see cref="P:System.Configuration.ConfigurationSectionCollection.Count" />
    ///  加上 <paramref name="index" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<DNConfigurationSection>; index: Int32);
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSection" />
    ///  中指定索引处的对象。
    ///</returns>
    function Get(index: Int32): DNConfigurationSection; overload;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSection" />
    ///  具有指定名称的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    function Get(name: string): DNConfigurationSection; overload;
    ///<summary>
    ///  获取指定的键 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  它的键是要返回的对象。
    ///</param>
    ///<returns>
    ///  键 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  中指定索引处的对象。
    ///</returns>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  移除指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  从此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要删除的段的名称。
    ///</param>
    procedure Remove(name: string);
    ///<summary>
    ///  移除指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  从此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  要删除的部分的索引。
    ///</param>
    procedure RemoveAt(index: Int32);
    ///<summary>
    ///  获取一个枚举器可循环访问此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNConfigurationSection read get_Item; default;
    property Item[index: Int32]: DNConfigurationSection read get_Item; default;
    ///<summary>
    ///  在此获取节的数目 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个整数，表示集合中的节的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取所有键 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象中包含此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  对象，其中包含此集合中的所有部分的键。
    ///</returns>
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNConfigurationSectionCollection = class(TDNGenericImport<DNConfigurationSectionCollectionClass, DNConfigurationSectionCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionGroupCollectionClass = interface(DNObjectClass)
  ['{BA6A542B-5D0E-5A2B-8A28-47FB90389A84}']
  end;

  ///<summary>
  ///  表示 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionGroupCollection')]
  DNConfigurationSectionGroupCollection = interface(DNObject)
  ['{938631B8-20E6-3C88-8F9C-5CF92BF7B063}']
  { getters & setters } 

    function get_Item(name: string): DNConfigurationSectionGroup; overload;
    function get_Item(index: Int32): DNConfigurationSectionGroup; overload;
    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    ///<summary>
    ///  在序列化过程使用由系统。
    ///</summary>
    ///  <param name="info">
    ///  适用 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象。
    ///</param>
    ///  <param name="context">
    ///  适用 <see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象。
    ///</param>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  添加 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象传递给此 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要添加对象。
    ///</param>
    ///  <param name="sectionGroup"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要添加对象。
    ///</param>
    procedure Add(name: string; sectionGroup: DNConfigurationSectionGroup);
    ///<summary>
    ///  清除集合。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  这会将复制 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  到一个数组对象。
    ///</summary>
    ///  <param name="array">
    ///  要向其中复制对象的数组。
    ///</param>
    ///  <param name="index">
    ///  在此处开始将复制的索引位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="array" />
    ///  的值少于 <see cref="P:System.Configuration.ConfigurationSectionGroupCollection.Count" />
    ///  加上 <paramref name="index" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<DNConfigurationSectionGroup>; index: Int32);
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  集合中包含的对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  中指定索引处的对象。
    ///</returns>
    function Get(index: Int32): DNConfigurationSectionGroup; overload;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  来自集合对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  具有指定名称的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    function Get(name: string): DNConfigurationSectionGroup; overload;
    ///<summary>
    ///  获取指定的键 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  它的键是要返回的节组的索引。
    ///</param>
    ///<returns>
    ///  键 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  中指定索引处的对象。
    ///</returns>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  删除 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象名称指定从此 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要删除的节组的名称。
    ///</param>
    procedure Remove(name: string);
    ///<summary>
    ///  删除 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  其索引指定从此对象 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  要删除的节组的索引。
    ///</param>
    procedure RemoveAt(index: Int32);
    ///<summary>
    ///  获取可循环访问的枚举器 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNConfigurationSectionGroup read get_Item; default;
    property Item[index: Int32]: DNConfigurationSectionGroup read get_Item; default;
    ///<summary>
    ///  获取集合中的节组的数目。
    ///</summary>
    ///<returns>
    ///  一个整数，表示集合中的节组的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取所有键 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象中包含此 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  对象，其中包含此集合中的所有节组的名称。
    ///</returns>
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNConfigurationSectionGroupCollection = class(TDNGenericImport<DNConfigurationSectionGroupCollectionClass, DNConfigurationSectionGroupCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNPropertyInformationCollectionClass = interface(DNObjectClass)
  ['{D4484712-AE47-5810-9027-E568B0572B00}']
  end;

  ///<summary>
  ///  包含 <see cref="T:System.Configuration.PropertyInformation" />
  ///  对象的集合。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.PropertyInformationCollection')]
  DNPropertyInformationCollection = interface(DNObject)
  ['{F88B5872-E250-3285-9FCE-024B9DE86610}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Keys: DNNameObjectCollectionBase_KeysCollection;

  { methods } 

    ///<summary>
    ///  填充 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象序列化所需的数据 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例。
    ///</summary>
    ///  <param name="info"><see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象，该对象包含序列化 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例所需的信息。
    ///</param>
    ///  <param name="context"><see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象，该对象包含与 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例关联的序列化流的源和目标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="info" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  集合。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
    property Keys: DNNameObjectCollectionBase_KeysCollection read get_Keys;
  end;

  TDNPropertyInformationCollection = class(TDNGenericImport<DNPropertyInformationCollectionClass, DNPropertyInformationCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1965CB76-8D43-59C0-9731-2E68ADCF2BB8}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNStringCollection;

  end;

  ///<summary>
  ///  表示字符串的集合。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.StringCollection')]
  DNStringCollection = interface(DDN.mscorlib.DNObject)
  ['{CFA0C6EB-5176-38E7-95B7-D13D6677CEED}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    procedure set_Item(index: Int32; value: string);
    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;

  { methods } 

    ///<summary>
    ///  将一个字符串添加到末尾 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要添加到结尾的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  从零开始的索引，在该位置插入新元素。
    ///</returns>
    function Add(value: string): Int32;
    ///<summary>
    ///  将字符串数组的元素复制到的末尾 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要将添加到结尾的字符串数组 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  不能是数组本身 <see langword="null" />
    ///  但它可以包含的元素 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<string>);
    ///<summary>
    ///  确定指定的字符串是否在 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要在中找到的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果在 <see langword="true" />
    ///  中找到 <paramref name="value" />
    ///  ，则为 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: string): Boolean;
    ///<summary>
    ///  将复制整个 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  到字符串，从目标数组的指定索引处开始的一维数组的值。
    ///</summary>
    ///  <param name="array">
    ///  从复制的元素目标的一维字符串数组 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="array" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="array" />
    ///  是多维的。
    ///  - 或 -
    ///  源中的元素数目 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="array" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  源类型 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  无法自动转换为目标类型 <paramref name="array" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<string>; index: Int32);
    ///<summary>
    ///  返回 <see cref="T:System.Collections.Specialized.StringEnumerator" />
    ///  ，它循环访问 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.Specialized.StringEnumerator" />
    ///  的 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DNStringEnumerator;
    ///<summary>
    ///  搜索指定的字符串，并返回内的第一个匹配项的从零开始索引 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要查找的字符串。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  第一个匹配项的从零开始索引 <paramref name="value" />
    ///  中 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  , ，如果找到; 否则为-1。
    ///</returns>
    function IndexOf(value: string): Int32;
    ///<summary>
    ///  将字符串插入 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  中指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  从零开始的索引，在此处插入 <paramref name="value" />
    ///  。
    ///</param>
    ///  <param name="value">
    ///  要插入的字符串。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  大于 <see cref="P:System.Collections.Specialized.StringCollection.Count" />
    ///  。
    ///</exception>
    procedure Insert(index: Int32; value: string);
    ///<summary>
    ///  移除从特定的字符串的第一个匹配项 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要移除的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    procedure Remove(value: string);
    ///<summary>
    ///  删除指定索引处的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="index">
    ///  要删除的字符串的从零开始的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  等于或大于 <see cref="P:System.Collections.Specialized.StringCollection.Count" />
    ///  。
    ///</exception>
    procedure RemoveAt(index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: string read get_Item write set_Item; default;
    ///<summary>
    ///  获取字符串中包含的数量 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  字符串中包含的数量 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  是否为只读。
    ///</summary>
    ///<returns>
    ///  此属性始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取一个值，该值指示是否同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问（线程安全）。
    ///</summary>
    ///<returns>
    ///  此属性始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取可用于同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问的对象。
    ///</summary>
    ///<returns>
    ///  可用于同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问的对象。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
  end;

  TDNStringCollection = class(TDNGenericImport<DNStringCollectionClass, DNStringCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringEnumeratorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{79BC84CF-8651-5043-9070-69C2FDB3F737}']
  end;

  ///<summary>
  ///  支持对简单迭代 <see cref="T:System.Collections.Specialized.StringCollection" />
  ///  。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.StringEnumerator')]
  DNStringEnumerator = interface(DDN.mscorlib.DNObject)
  ['{60E3B2B8-FF7D-3B3C-A540-E5A0DB767EBA}']
  { getters & setters } 

    function get_Current: string;

  { methods } 

    ///<summary>
    ///  将枚举数推进到集合的下一个元素。
    ///</summary>
    ///<returns>
    ///  如果枚举数已成功地推进到下一个元素，则为 <see langword="true" />
    ///  ；如果枚举数传递到集合的末尾，则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  创建枚举器后，已修改该集合。
    ///</exception>
    function MoveNext: Boolean;
    ///<summary>
    ///  将枚举数设置为其初始位置，该位置位于集合中第一个元素之前。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  创建枚举器后，已修改该集合。
    ///</exception>
    procedure Reset;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的当前元素。
    ///</summary>
    ///<returns>
    ///  集合中的当前元素。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  枚举器位于集合中第一个元素之前或最后一个元素之后。
    ///</exception>
    property Current: string read get_Current;
  end;

  TDNStringEnumerator = class(TDNGenericImport<DNStringEnumeratorClass, DNStringEnumerator>) end;

  //-------------namespace: System.ComponentModel----------------
  DNTypeConverterClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8D2BD4DC-2859-5F29-A55C-88C9804C1E73}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNTypeConverter;

  end;

  ///<summary>
  ///  提供了一种统一的方法将类型的值转换为其他类型，以及用于访问标准值和子属性。
  ///</summary>
  [DNTypeName('System.ComponentModel.TypeConverter')]
  DNTypeConverter = interface(DDN.mscorlib.DNObject)
  ['{75992C48-BF7A-3B44-AC68-A946CFFDB2BF}']
  { methods } 

    ///<summary>
    ///  返回此转换器是否可以将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  返回此转换器是否可以将对象转换为指定的类型。
    ///</summary>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  将给定的值转换为此转换器的类型。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性的类型。
    ///</summary>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject;
    ///<summary>
    ///  将指定的文本转换为一个对象。
    ///</summary>
    ///  <param name="text">
    ///  要转换的对象文本表示。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  无法将字符串转换为适当的对象。
    ///</exception>
    function ConvertFromString(text: string): DDN.mscorlib.DNObject;
    ///<summary>
    ///  将给定的值对象转换为指定的类型使用的参数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string;
    ///<summary>
    ///  将指定的值转换为字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(value: DDN.mscorlib.DNObject): string;
    ///<summary>
    ///  重新创建 <see cref="T:System.Object" />
    ///  对象给定的一组属性值。
    ///</summary>
    ///  <param name="propertyValues"><see cref="T:System.Collections.IDictionary" />
    ///  表示新属性值的字典。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  方法来创建一个新值。
    ///</summary>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported: Boolean;
    ///<summary>
    ///  返回此对象是否支持属性。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported: Boolean;
    ///<summary>
    ///  从适用于此类型转换器的数据类型的默认上下文中返回的标准值的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  包含一组标准的有效的值或 <see langword="null" />
    ///  如果数据类型不支持标准值集。
    ///</returns>
    function GetStandardValues: DDN.mscorlib.DNICollection;
    ///<summary>
    ///  返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为独占列表。
    ///</summary>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive: Boolean;
    ///<summary>
    ///  返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported: Boolean;
    ///<summary>
    ///  返回给定的值的对象是否对此类型有效。
    ///</summary>
    ///  <param name="value">
    ///  要测试其有效性的对象。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(value: DDN.mscorlib.DNObject): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTypeConverter = class(TDNGenericImport<DNTypeConverterClass, DNTypeConverter>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{072F76EE-89FD-550C-9CCD-337EEB048770}']
  end;

  ///<summary>
  ///  表示适用于特定计算机、 应用程序中或资源的配置文件。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.Configuration')]
  DNConfiguration = interface(DDN.mscorlib.DNObject)
  ['{147BA60B-D0AD-3CCD-B6E0-0459B8E77A7F}']
  { getters & setters } 

    function get_AppSettings: DNAppSettingsSection;
    function get_ConnectionStrings: DNConnectionStringsSection;
    function get_FilePath: string;
    function get_HasFile: Boolean;
    function get_Locations: DNConfigurationLocationCollection;
    function get_EvaluationContext: DNContextInformation;
    function get_RootSectionGroup: DNConfigurationSectionGroup;
    function get_Sections: DNConfigurationSectionCollection;
    function get_SectionGroups: DNConfigurationSectionGroupCollection;
    function get_NamespaceDeclared: Boolean;
    procedure set_NamespaceDeclared(value: Boolean);
    function get_TargetFramework: DNFrameworkName;
    procedure set_TargetFramework(value: DNFrameworkName);

  { methods } 

    ///<summary>
    ///  返回指定的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///  <param name="sectionName">
    ///  指向要返回的部分的路径。
    ///</param>
    ///<returns>
    ///  指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    function GetSection(sectionName: string): DNConfigurationSection;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///  <param name="sectionGroupName">
    ///  路径名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  返回。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  指定。
    ///</returns>
    function GetSectionGroup(sectionGroupName: string): DNConfigurationSectionGroup;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save; overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save(saveMode: DNConfigurationSaveMode); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///  <param name="forceSaveAll"><see langword="true" />
    ///  若要保存即使未修改的配置;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save(saveMode: DNConfigurationSaveMode; forceSaveAll: Boolean); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure SaveAs(filename: string); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure SaveAs(filename: string; saveMode: DNConfigurationSaveMode); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///  <param name="forceSaveAll"><see langword="true" />
    ///  若要保存即使未修改的配置;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="filename" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    procedure SaveAs(filename: string; saveMode: DNConfigurationSaveMode; forceSaveAll: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.AppSettingsSection" />
    ///  应用于此对象配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.AppSettingsSection" />
    ///  对象，表示 <see langword="appSettings" />
    ///  应用到此配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property AppSettings: DNAppSettingsSection read get_AppSettings;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  应用到此配置节对象 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  对象，表示配置节 <see langword="connectionStrings" />
    ///  应用到此配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property ConnectionStrings: DNConnectionStringsSection read get_ConnectionStrings;
    ///<summary>
    ///  获取由此配置文件的物理路径 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  这表示的配置文件的物理路径 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property FilePath: string read get_FilePath;
    ///<summary>
    ///  获取一个值，该值指示由此所表示的资源是否存在文件 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果没有配置文件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasFile: Boolean read get_HasFile;
    ///<summary>
    ///  获取定义在此位置 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationLocationCollection" />
    ///  包含在此定义的位置 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property Locations: DNConfigurationLocationCollection read get_Locations;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.Configuration" />
    ///  对象的 <see cref="T:System.Configuration.ContextInformation" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ContextInformation" />
    ///  对象 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property EvaluationContext: DNContextInformation read get_EvaluationContext;
    ///<summary>
    ///  获取根 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  此 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此根节组 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property RootSectionGroup: DNConfigurationSectionGroup read get_RootSectionGroup;
    ///<summary>
    ///  获取此定义的节的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此定义的节的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property Sections: DNConfigurationSectionCollection read get_Sections;
    ///<summary>
    ///  获取定义此配置节组的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  表示为此节组的集合的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property SectionGroups: DNConfigurationSectionGroupCollection read get_SectionGroups;
    ///<summary>
    ///  获取或设置一个值，指示配置文件是否有 XML 命名空间。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果配置文件的 XML 命名空间;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property NamespaceDeclared: Boolean read get_NamespaceDeclared write set_NamespaceDeclared;
    ///<summary>
    ///  指定.NET Framework 的目标的版本时版本早于当前作为目标。
    ///</summary>
    ///<returns>
    ///  .NET Framework 的目标版本的名称。
    ///  默认值是 <see langword="null" />
    ///  , ，指示当前的版本作为目标。
    ///</returns>
    property TargetFramework: DNFrameworkName read get_TargetFramework write set_TargetFramework;
  end;

  TDNConfiguration = class(TDNGenericImport<DNConfigurationClass, DNConfiguration>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationElementClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F985297E-05F3-52D2-9F5E-60845F06A6E7}']
  end;

  ///<summary>
  ///  表示一个配置文件中的配置元素。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationElement')]
  DNConfigurationElement = interface(DDN.mscorlib.DNObject)
  ['{15707344-0F22-3BFE-95FE-8AA44E29CB8E}']
  { getters & setters } 

    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsReadOnly: Boolean;
    ///<summary>
    ///  比较当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例与指定的对象。
    ///</summary>
    ///  <param name="compareTo">
    ///  要与进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  要与进行比较的对象是否等于当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取表示当前的唯一值 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  唯一的值，表示当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</returns>
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取被锁定的特性的集合
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    ///<summary>
    ///  获取被锁定的特性的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    ///<summary>
    ///  获取或设置一个值，该值指示元素是否已锁定。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该元素被锁定;否则为<see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  元素被锁定在更高版本的配置级别。
    ///</exception>
    property LockItem: Boolean read get_LockItem write set_LockItem;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ElementInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ElementInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  。
    ///</returns>
    property ElementInformation: DNElementInformation read get_ElementInformation;
    ///<summary>
    ///  获取对顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例，它表示在配置层次结构的当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</summary>
    ///<returns>
    ///  顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</returns>
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConfigurationElement = class(TDNGenericImport<DNConfigurationElementClass, DNConfigurationElement>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationElementCollectionClass = interface(DNConfigurationElementClass)
  ['{A3E24DD2-A599-53A9-A840-841F66CEA0DA}']
  end;

  ///<summary>
  ///  表示一个配置元素，该元素包含子元素的集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationElementCollection')]
  DNConfigurationElementCollection = interface(DNConfigurationElement)
  ['{01814924-3A8D-3C8C-967F-B974D61F464C}']
  { getters & setters } 

    function get_Count: Int32;
    function get_EmitClear: Boolean;
    procedure set_EmitClear(value: Boolean);
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;
    function get_CollectionType: DNConfigurationElementCollectionType;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    ///<summary>
    ///  指示是否 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  对象为只读模式。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  对象只读; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsReadOnly: Boolean;
    ///<summary>
    ///  比较 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  到指定的对象。
    ///</summary>
    ///  <param name="compareTo">
    ///  要比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  要与进行比较的对象是否等于当前 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  实例; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取唯一值，该值表示 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  唯一值，该值表示 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  当前实例。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  中的内容复制 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  到一个数组。
    ///</summary>
    ///  <param name="array">
    ///  要的内容复制到数组 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从此处开始复制的索引位置。
    ///</param>
    procedure CopyTo(&array: TArray<DNConfigurationElement>; index: Int32);
    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEnumerator" />
    ///  用于循环访问 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  用于循环访问 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的元素数。
    ///</summary>
    ///<returns>
    ///  集合中的元素数。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取或设置一个值，指定是否清除集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果已清除的集合;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  配置是只读的。
    ///</exception>
    property EmitClear: Boolean read get_EmitClear write set_EmitClear;
    ///<summary>
    ///  获取一个值，它指示对集合的访问是否同步。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果访问 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  同步; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取用于对访问进行同步的对象 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  用于同步 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  访问的对象。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  的类型。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationElementCollectionType" />
    ///  此集合。
    ///</returns>
    property CollectionType: DNConfigurationElementCollectionType read get_CollectionType;
    ///<summary>
    ///  获取被锁定的特性的集合
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    ///<summary>
    ///  获取被锁定的特性的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    ///<summary>
    ///  获取或设置一个值，该值指示元素是否已锁定。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该元素被锁定;否则为<see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  元素被锁定在更高版本的配置级别。
    ///</exception>
    property LockItem: Boolean read get_LockItem write set_LockItem;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ElementInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ElementInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  。
    ///</returns>
    property ElementInformation: DNElementInformation read get_ElementInformation;
    ///<summary>
    ///  获取对顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例，它表示在配置层次结构的当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</summary>
    ///<returns>
    ///  顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</returns>
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConfigurationElementCollection = class(TDNGenericImport<DNConfigurationElementCollectionClass, DNConfigurationElementCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionClass = interface(DNConfigurationElementClass)
  ['{D8B99D8F-5652-525D-A9C4-AC48087F1730}']
  end;

  ///<summary>
  ///  表示一个配置文件中的一个部分。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSection')]
  DNConfigurationSection = interface(DNConfigurationElement)
  ['{BF734F72-E579-3EE5-BD86-D9AC7216F6A2}']
  { getters & setters } 

    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsReadOnly: Boolean;
    ///<summary>
    ///  比较当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例与指定的对象。
    ///</summary>
    ///  <param name="compareTo">
    ///  要与进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  要与进行比较的对象是否等于当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取表示当前的唯一值 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  唯一的值，表示当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</returns>
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    ///<summary>
    ///  获取被锁定的特性的集合
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    ///<summary>
    ///  获取被锁定的特性的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    ///<summary>
    ///  获取或设置一个值，该值指示元素是否已锁定。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该元素被锁定;否则为<see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  元素被锁定在更高版本的配置级别。
    ///</exception>
    property LockItem: Boolean read get_LockItem write set_LockItem;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ElementInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ElementInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  。
    ///</returns>
    property ElementInformation: DNElementInformation read get_ElementInformation;
    ///<summary>
    ///  获取对顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例，它表示在配置层次结构的当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</summary>
    ///<returns>
    ///  顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</returns>
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConfigurationSection = class(TDNGenericImport<DNConfigurationSectionClass, DNConfigurationSection>) end;

  //-------------namespace: System.Configuration----------------
  DNAppSettingsSectionClass = interface(DNConfigurationSectionClass)
  ['{C1CFBA23-EC59-5177-9A48-75995F96EE28}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.AppSettingsSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNAppSettingsSection;

  end;

  ///<summary>
  ///  提供有关配置系统支持 <see langword="appSettings" />
  ///  配置节。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.AppSettingsSection')]
  DNAppSettingsSection = interface(DNConfigurationSection)
  ['{C67D99B0-1A20-32AA-9C43-22087FDDE286}']
  { getters & setters } 

    function get_File: string;
    procedure set_File(value: string);
    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置提供其他设置或重写中指定的设置的配置文件 <see langword="appSettings" />
    ///  元素。
    ///</summary>
    ///<returns>
    ///  提供其他设置或重写中指定的设置的配置文件 <see langword="appSettings" />
    ///  元素。
    ///</returns>
    property &File: string read get_File write set_File;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNAppSettingsSection = class(TDNGenericImport<DNAppSettingsSectionClass, DNAppSettingsSection>) end;

  //-------------namespace: System.Configuration----------------
  DNConnectionStringsSectionClass = interface(DNConfigurationSectionClass)
  ['{A2C5DCAB-F515-522C-9AAA-A5170603BF25}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNConnectionStringsSection;

  end;

  ///<summary>
  ///  提供以编程方式访问连接字符串配置文件部分。
  ///</summary>
  [DNTypeName('System.Configuration.ConnectionStringsSection')]
  DNConnectionStringsSection = interface(DNConfigurationSection)
  ['{CD0C6620-E0F0-3293-8450-2EB8B6E7F0B3}']
  { getters & setters } 

    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConnectionStringsSection = class(TDNGenericImport<DNConnectionStringsSectionClass, DNConnectionStringsSection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationLockCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{93E9F554-D478-5288-9DE9-EE15D67B1418}']
  end;

  ///<summary>
  ///  包含锁定的配置对象的集合。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationLockCollection')]
  DNConfigurationLockCollection = interface(DDN.mscorlib.DNObject)
  ['{F3E926E9-A2BF-3F5E-B2BF-8191A53E3DB0}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;
    function get_IsModified: Boolean;
    function get_AttributeList: string;
    function get_HasParentElements: Boolean;

  { methods } 

    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.IEnumerator" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  清除集合中的所有配置对象。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  验证是否已锁定特定的配置对象。
    ///</summary>
    ///  <param name="name">
    ///  要验证的配置对象的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  包含指定的配置对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(name: string): Boolean;
    ///<summary>
    ///  将复制整个 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合到一维兼容 <see cref="T:System.Array" />
    ///  , ，从目标数组的指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  ，它是从复制的元素的目标 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="array" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    procedure CopyTo(&array: TArray<string>; index: Int32);
    ///<summary>
    ///  通过将其添加到集合中锁定该配置对象。
    ///</summary>
    ///  <param name="name">
    ///  配置对象的名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  发生时 <paramref name="name" />
    ///  与现有的配置对象在集合中不匹配。
    ///</exception>
    procedure Add(name: string);
    ///<summary>
    ///  从集合中移除的配置对象。
    ///</summary>
    ///  <param name="name">
    ///  配置对象的名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  发生时 <paramref name="name" />
    ///  与现有的配置对象在集合中不匹配。
    ///</exception>
    procedure Remove(name: string);
    ///<summary>
    ///  验证特定的配置对象是只读的。
    ///</summary>
    ///  <param name="name">
    ///  要验证的配置对象的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的配置对象中 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合是只读的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  指定的配置对象不在集合中。
    ///</exception>
    function IsReadOnly(name: string): Boolean;
    ///<summary>
    ///  锁定一的组基于提供的列表的配置对象。
    ///</summary>
    ///  <param name="attributeList">
    ///  以逗号分隔的字符串。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  中的某个项时发生 <paramref name="attributeList" />
    ///  参数不是有效的可锁定配置属性。
    ///</exception>
    procedure SetFromList(attributeList: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中包含的锁定的配置对象的数目。
    ///</summary>
    ///<returns>
    ///  集合中包含的锁定的配置对象数。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，指示集合是否已同步。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合是同步; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取一个对象，该对象用于同步访问此 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</summary>
    ///<returns>
    ///  用于同步对此的访问的对象 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
    ///<summary>
    ///  获取一个值，指定是否已修改该集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合已修改; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsModified: Boolean read get_IsModified;
    ///<summary>
    ///  获取集合中包含的配置对象的列表。
    ///</summary>
    ///<returns>
    ///  以逗号分隔的字符串，其中列出了在集合中的锁定配置对象。
    ///</returns>
    property AttributeList: string read get_AttributeList;
    ///<summary>
    ///  获取一个值，指定锁定的对象的集合是否具有父元素。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合具有父元素; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasParentElements: Boolean read get_HasParentElements;
  end;

  TDNConfigurationLockCollection = class(TDNGenericImport<DNConfigurationLockCollectionClass, DNConfigurationLockCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionGroupClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0B422D1B-089D-5A68-BAF7-FCE518EE947A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNConfigurationSectionGroup;

  end;

  ///<summary>
  ///  表示一组配置文件中的相关章节。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionGroup')]
  DNConfigurationSectionGroup = interface(DDN.mscorlib.DNObject)
  ['{43493E08-E461-33E9-9454-68655A5CEBEC}']
  { getters & setters } 

    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_SectionGroupName: string;
    function get_Name: string;
    function get_Type: string;
    procedure set_Type(value: string);
    function get_Sections: DNConfigurationSectionCollection;
    function get_SectionGroups: DNConfigurationSectionGroupCollection;

  { methods } 

    ///<summary>
    ///  强制的声明 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    procedure ForceDeclaration; overload;
    ///<summary>
    ///  强制的声明 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///  <param name="force"><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象必须是写入到该文件; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象是根节组。
    ///  - 或 -
    ///<see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象都有一个位置。
    ///</exception>
    procedure ForceDeclaration(force: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明对象。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclared: Boolean read get_IsDeclared;
    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象声明是必需的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明是必选的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    ///<summary>
    ///  获取与此相关的节组名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此节组名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property SectionGroupName: string read get_SectionGroupName;
    ///<summary>
    ///  获取此名称属性 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  Name 属性 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取或设置此类型 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  这种 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象是根节组。
    ///  - 或 -
    ///<see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象都有一个位置。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  已在另一级别定义的节或组。
    ///</exception>
    property &Type: string read get_Type write set_Type;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象，其中包含的所有 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象在此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象在此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property Sections: DNConfigurationSectionCollection read get_Sections;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象的子级的这 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象的子级的这 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property SectionGroups: DNConfigurationSectionGroupCollection read get_SectionGroups;
  end;

  TDNConfigurationSectionGroup = class(TDNGenericImport<DNConfigurationSectionGroupClass, DNConfigurationSectionGroup>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationValidatorBaseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0E873FC7-70A0-5571-99FE-E7B8FE011407}']
  end;

  ///<summary>
  ///  作为基类的类用于派生验证类，以便可以验证某个对象的值。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationValidatorBase')]
  DNConfigurationValidatorBase = interface(DDN.mscorlib.DNObject)
  ['{AAAF2860-120E-393D-8451-49B2A6FEE2FA}']
  { methods } 

    ///<summary>
    ///  确定是否可以根据类型验证对象。
    ///</summary>
    ///  <param name="type">
    ///  对象类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="type" />
    ///  参数值与预期匹配 <see langword="type" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanValidate(&type: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  确定某个对象的值是否有效。
    ///</summary>
    ///  <param name="value">
    ///  对象值。
    ///</param>
    procedure Validate(value: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNConfigurationValidatorBase = class(TDNGenericImport<DNConfigurationValidatorBaseClass, DNConfigurationValidatorBase>) end;

  //-------------namespace: System.Configuration----------------
  DNContextInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E31BACA7-1537-5A9D-B671-695BEB4FD0B4}']
  end;

  ///<summary>
  ///  封装与相关联的上下文信息 <see cref="T:System.Configuration.ConfigurationElement" />
  ///  对象。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ContextInformation')]
  DNContextInformation = interface(DDN.mscorlib.DNObject)
  ['{0F5DA8AB-826A-3A3F-B325-C5B11EA1EF86}']
  { getters & setters } 

    function get_HostingContext: DDN.mscorlib.DNObject;
    function get_IsMachineLevel: Boolean;

  { methods } 

    ///<summary>
    ///  提供了一个包含基于指定的节名称的配置节信息的对象。
    ///</summary>
    ///  <param name="sectionName">
    ///  配置部分的名称。
    ///</param>
    ///<returns>
    ///  包含配置中指定的节的对象。
    ///</returns>
    function GetSection(sectionName: string): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取要计算的配置属性的环境的上下文。
    ///</summary>
    ///<returns>
    ///  一个对象，指定要计算的配置属性的环境。
    ///</returns>
    property HostingContext: DDN.mscorlib.DNObject read get_HostingContext;
    ///<summary>
    ///  获取一个值，指定在计算机配置级别是否正在计算配置属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在计算机配置级别; 正在计算配置属性否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsMachineLevel: Boolean read get_IsMachineLevel;
  end;

  TDNContextInformation = class(TDNGenericImport<DNContextInformationClass, DNContextInformation>) end;

  //-------------namespace: System.Configuration----------------
  DNElementInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3E8F35FF-D7E0-597B-B3DE-B81956D05639}']
  end;

  ///<summary>
  ///  包含有关配置中的单个元素的元信息。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ElementInformation')]
  DNElementInformation = interface(DDN.mscorlib.DNObject)
  ['{EE60054D-6B18-3C2E-9F18-A59E71FAB3A1}']
  { getters & setters } 

    function get_Properties: DNPropertyInformationCollection;
    function get_IsPresent: Boolean;
    function get_IsLocked: Boolean;
    function get_IsCollection: Boolean;
    function get_Source: string;
    function get_LineNumber: Int32;
    function get_Type: DDN.mscorlib.DNType;
    function get_Validator: DNConfigurationValidatorBase;
    function get_Errors: DDN.mscorlib.DNICollection;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  中关联属性的集合 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  中关联属性的集合 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property Properties: DNPropertyInformationCollection read get_Properties;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是在配置文件中。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是在配置文件中; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsPresent: Boolean read get_IsPresent;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象不能修改。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象不能为已修改; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsLocked: Boolean read get_IsLocked;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  集合; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsCollection: Boolean read get_IsCollection;
    ///<summary>
    ///  获取的源文件位置关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  发起的对象。
    ///</summary>
    ///<returns>
    ///  源文件关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  发起的对象。
    ///</returns>
    property Source: string read get_Source;
    ///<summary>
    ///  在配置文件中获取的行号其中关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  定义对象。
    ///</summary>
    ///<returns>
    ///  在配置中的行号文件的位置关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  定义对象。
    ///</returns>
    property LineNumber: Int32 read get_LineNumber;
    ///<summary>
    ///  获取关联的类型 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  关联的类型 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property &Type: DDN.mscorlib.DNType read get_Type;
    ///<summary>
    ///  获取用于验证关联的对象 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  用来验证关联的对象 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property Validator: DNConfigurationValidatorBase read get_Validator;
    ///<summary>
    ///  获取有关关联的元素和子元素的错误
    ///</summary>
    ///<returns>
    ///  包含关联的元素和子元素的错误的集合
    ///</returns>
    property Errors: DDN.mscorlib.DNICollection read get_Errors;
  end;

  TDNElementInformation = class(TDNGenericImport<DNElementInformationClass, DNElementInformation>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationBuilderClass = interface(DNObjectClass)
  ['{5906E833-2FEF-5A38-A175-E84485C67BAD}']
  end;

  ///<summary>
  ///  表示将由自定义配置生成器实现扩展的基类。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationBuilder')]
  DNConfigurationBuilder = interface(DNObject)
  ['{9C22882E-1C30-3E0F-8C7B-0E0548662990}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    ///<summary>
    ///  接受配置系统中的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象，并返回一个修改后的或新的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象供将来使用。
    ///</summary>
    ///  <param name="configSection">
    ///  要处理的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</param>
    ///<returns>
    ///  已处理的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    function ProcessConfigurationSection(configSection: DNConfigurationSection): DNConfigurationSection;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于在配置过程中引用该提供程序的友好名称。
    ///</summary>
    ///<returns>
    ///  用于在配置过程中引用该提供程序的友好名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取一个简短的友好说明适合显示在管理工具或其他用户界面 (Ui)。
    ///</summary>
    ///<returns>
    ///  简短的易懂描述适用于在管理工具或其他用户界面中显示。
    ///</returns>
    property Description: string read get_Description;
  end;

  TDNConfigurationBuilder = class(TDNGenericImport<DNConfigurationBuilderClass, DNConfigurationBuilder>) end;

  //-------------namespace: System.Configuration----------------
  DNProtectedConfigurationProviderClass = interface(DNObjectClass)
  ['{9B2F60FD-F53D-5A1D-82A0-8541C40C35CC}']
  end;

  ///<summary>
  ///  是用于加密和解密受保护的配置数据创建提供程序的基类。
  ///</summary>
  [DNTypeName('System.Configuration.ProtectedConfigurationProvider')]
  DNProtectedConfigurationProvider = interface(DNObject)
  ['{0DFE9FBE-E232-3F9E-A512-E86559E3C350}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于在配置过程中引用该提供程序的友好名称。
    ///</summary>
    ///<returns>
    ///  用于在配置过程中引用该提供程序的友好名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取一个简短的友好说明适合显示在管理工具或其他用户界面 (Ui)。
    ///</summary>
    ///<returns>
    ///  简短的易懂描述适用于在管理工具或其他用户界面中显示。
    ///</returns>
    property Description: string read get_Description;
  end;

  TDNProtectedConfigurationProvider = class(TDNGenericImport<DNProtectedConfigurationProviderClass, DNProtectedConfigurationProvider>) end;

  //-------------namespace: System.Configuration----------------
  DNSectionInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AFB4D567-349A-5475-8957-A262AF7EB809}']
  end;

  ///<summary>
  ///  包含有关在配置层次结构中的各个部分的元数据。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.SectionInformation')]
  DNSectionInformation = interface(DDN.mscorlib.DNObject)
  ['{D1A006C4-4992-37F1-BB5A-CC8D068551AD}']
  { getters & setters } 

    function get_SectionName: string;
    function get_Name: string;
    function get_AllowDefinition: DNConfigurationAllowDefinition;
    procedure set_AllowDefinition(value: DNConfigurationAllowDefinition);
    function get_AllowExeDefinition: DNConfigurationAllowExeDefinition;
    procedure set_AllowExeDefinition(value: DNConfigurationAllowExeDefinition);
    function get_OverrideModeDefault: DNOverrideMode;
    procedure set_OverrideModeDefault(value: DNOverrideMode);
    function get_AllowLocation: Boolean;
    procedure set_AllowLocation(value: Boolean);
    function get_AllowOverride: Boolean;
    procedure set_AllowOverride(value: Boolean);
    function get_OverrideMode: DNOverrideMode;
    procedure set_OverrideMode(value: DNOverrideMode);
    function get_OverrideModeEffective: DNOverrideMode;
    function get_ConfigSource: string;
    procedure set_ConfigSource(value: string);
    function get_InheritInChildApplications: Boolean;
    procedure set_InheritInChildApplications(value: Boolean);
    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_IsLocked: Boolean;
    function get_IsProtected: Boolean;
    function get_ConfigurationBuilder: DNConfigurationBuilder;
    function get_ProtectionProvider: DNProtectedConfigurationProvider;
    function get_RestartOnExternalChanges: Boolean;
    procedure set_RestartOnExternalChanges(value: Boolean);
    function get_RequirePermission: Boolean;
    procedure set_RequirePermission(value: Boolean);
    function get_Type: string;
    procedure set_Type(value: string);
    function get_ForceSave: Boolean;
    procedure set_ForceSave(value: Boolean);

  { methods } 

    ///<summary>
    ///  强制显示在配置文件关联的配置节。
    ///</summary>
    procedure ForceDeclaration; overload;
    ///<summary>
    ///  强制关联的配置节，才会出现在配置文件中，或从配置文件中删除现有的内容。
    ///</summary>
    ///  <param name="force"><see langword="true" />
    ///  如果用配置文件，则应编写的关联部分否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException"><paramref name="force" />
    ///  是 <see langword="true" />
    ///  和关联的节不能导出到子配置文件中，或者未声明。
    ///</exception>
    procedure ForceDeclaration(force: Boolean); overload;
    ///<summary>
    ///  从关联的配置节中删除受保护的配置加密。
    ///</summary>
    procedure UnprotectSection;
    ///<summary>
    ///  获取包含与此对象关联的配置节的配置节。
    ///</summary>
    ///<returns>
    ///  包含的配置节 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  这与该键相关联 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  从父节调用的方法。
    ///</exception>
    function GetParentSection: DNConfigurationSection;
    ///<summary>
    ///  返回一个 XML 节点对象，表示关联的配置节对象。
    ///</summary>
    ///<returns>
    ///  用于此配置节的 XML 表示形式。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此配置对象已被锁定，因此无法编辑。
    ///</exception>
    function GetRawXml: string;
    ///<summary>
    ///  将该对象设置的 XML 表示形式中的配置文件关联的配置节。
    ///</summary>
    ///  <param name="rawXml">
    ///  要使用的 XML。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rawXml" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure SetRawXml(rawXml: string);
    ///<summary>
    ///  导致关联的配置节，以从其父节继承其所有值。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  不能在编辑模式下调用此方法。
    ///</exception>
    procedure RevertToParent;
    ///<summary>
    ///  标记用于保护的配置节。
    ///</summary>
    ///  <param name="protectionProvider">
    ///  要使用的保护提供程序的名称。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="P:System.Configuration.SectionInformation.AllowLocation" />
    ///  属性设置为 <see langword="false" />
    ///  。
    ///  - 或 -
    ///  目标部分已是受保护的数据部分。
    ///</exception>
    procedure ProtectSection(protectionProvider: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取关联的配置节的名称。
    ///</summary>
    ///<returns>
    ///  关联的名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    property SectionName: string read get_SectionName;
    ///<summary>
    ///  获取关联的配置节的名称。
    ///</summary>
    ///<returns>
    ///  配置部分完整名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取或设置一个值，指示配置文件层次结构中可以定义关联的配置节的位置。
    ///</summary>
    ///<returns>
    ///  一个值，指示其中在配置文件层次结构关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以声明对象。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowDefinition: DNConfigurationAllowDefinition read get_AllowDefinition write set_AllowDefinition;
    ///<summary>
    ///  获取或设置一个值，指示关联的配置节可以在配置文件层次结构中声明的位置。
    ///</summary>
    ///<returns>
    ///  一个值，指示其中在配置文件层次结构关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象可声明为.exe 文件。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowExeDefinition: DNConfigurationAllowExeDefinition read get_AllowExeDefinition write set_AllowExeDefinition;
    ///<summary>
    ///  获取或设置一个值，指定默认值来重写行为由子配置文件的配置节。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  重写行为是在父配置节中指定的。
    ///</exception>
    property OverrideModeDefault: DNOverrideMode read get_OverrideModeDefault write set_OverrideModeDefault;
    ///<summary>
    ///  获取或设置一个值，该值指示是否允许使用配置部分 <see langword="location" />
    ///  属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see langword="location" />
    ///  特性是允许; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowLocation: Boolean read get_AllowLocation write set_AllowLocation;
    ///<summary>
    ///  获取或设置一个值，该值指示是否可以覆盖关联的配置节由低级别的配置文件。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果可以重写该节。否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property AllowOverride: Boolean read get_AllowOverride write set_AllowOverride;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值，该值指定由子配置文件是否可以重写相关联的配置节。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  尝试同时更改两者 <see cref="P:System.Configuration.SectionInformation.AllowOverride" />
    ///  和 <see cref="P:System.Configuration.SectionInformation.OverrideMode" />
    ///  属性，这出于兼容性原因不受支持。
    ///</exception>
    property OverrideMode: DNOverrideMode read get_OverrideMode write set_OverrideMode;
    ///<summary>
    ///  获取一个配置节，又基于子配置文件是否可以锁定配置节的覆盖行为。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    property OverrideModeEffective: DNOverrideMode read get_OverrideModeEffective;
    ///<summary>
    ///  获取或设置在其中定义关联的配置节，该包含文件的名称，如果存在这样的文件。
    ///</summary>
    ///<returns>
    ///  在其中包含文件的名称关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  定义的如果存在这样的文件; 否则为空字符串 ("")。
    ///</returns>
    property ConfigSource: string read get_ConfigSource write set_ConfigSource;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在关联的配置节中指定的设置继承由驻留在相关应用程序的子目录中的应用程序。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在此指定的设置 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象是由子应用程序继承; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property InheritInChildApplications: Boolean read get_InheritInChildApplications write set_InheritInChildApplications;
    ///<summary>
    ///  获取一个值，该值指示是否在配置文件中声明关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  配置文件中声明; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property IsDeclared: Boolean read get_IsDeclared;
    ///<summary>
    ///  获取一个值，该值指示是否必须在配置文件中声明配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象必须是在配置文件中声明; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    ///<summary>
    ///  获取一个值，该值指示是否锁定了关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节被锁定;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsLocked: Boolean read get_IsLocked;
    ///<summary>
    ///  获取一个值，该值指示是否受到保护关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  受保护; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsProtected: Boolean read get_IsProtected;
    ///<summary>
    ///  获取此配置节的 <see cref="T:System.Configuration.ConfigurationBuilder" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此配置节的 <see cref="T:System.Configuration.ConfigurationBuilder" />
    ///  对象。
    ///</returns>
    property ConfigurationBuilder: DNConfigurationBuilder read get_ConfigurationBuilder;
    ///<summary>
    ///  获取对受保护的配置提供程序关联的配置节。
    ///</summary>
    ///<returns>
    ///  为此保护的配置提供程序 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    property ProtectionProvider: DNProtectedConfigurationProvider read get_ProtectionProvider;
    ///<summary>
    ///  获取或设置一个值，指定是否包含更改对外部配置文件需要重新启动应用程序。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果文件包含对外部配置更改，需要重新启动应用程序;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property RestartOnExternalChanges: Boolean read get_RestartOnExternalChanges write set_RestartOnExternalChanges;
    ///<summary>
    ///  获取一个值，该值指示是否在关联的配置节要求访问权限。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see langword="requirePermission" />
    ///  属性设置为 <see langword="true" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property RequirePermission: Boolean read get_RequirePermission write set_RequirePermission;
    ///<summary>
    ///  获取或设置节的类名称。
    ///</summary>
    ///<returns>
    ///  与此关联的类名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  部分。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  所选的值是 <see langword="null" />
    ///  或空字符串 ("")。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property &Type: string read get_Type write set_Type;
    ///<summary>
    ///  获取或设置一个值，该值指示是否将保存关联的配置节，即使尚未修改。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  将保存对象，即使尚未修改; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///  如果配置文件的保存 （即使有不做任何修改），ASP.NET 将重新启动该应用程序。
    ///</returns>
    property ForceSave: Boolean read get_ForceSave write set_ForceSave;
  end;

  TDNSectionInformation = class(TDNGenericImport<DNSectionInformationClass, DNSectionInformation>) end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供容器的功能。
  ///  容器是在逻辑上包含零个或多个组件的对象。
  ///</summary>
  [DNTypeName('System.ComponentModel.IContainer')]
  DNIContainer = interface(DDN.mscorlib.DNIDisposable)
  ['{61D9C50C-4AAD-3539-AF82-4F36C19D77C8}']
  end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供站点所需的功能。
  ///</summary>
  [DNTypeName('System.ComponentModel.ISite')]
  DNISite = interface(DDN.mscorlib.DNIServiceProvider)
  ['{C4E1006A-9D98-3E96-A07E-921725135C28}']
  { getters & setters } 

    function get_Container: DNIContainer;
    function get_DesignMode: Boolean;
    function get_Name: string;
    procedure set_Name(value: string);

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.IContainer" />
    ///  与关联 <see cref="T:System.ComponentModel.ISite" />
    ///  时由类实现。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IContainer" />
    ///  与关联实例 <see cref="T:System.ComponentModel.ISite" />
    ///  。
    ///</returns>
    property Container: DNIContainer read get_Container;
    ///<summary>
    ///  确定组件是否在设计模式下时由类实现。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该组件是在设计模式下;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property DesignMode: Boolean read get_DesignMode;
    ///<summary>
    ///  获取或设置与关联的组件的名称 <see cref="T:System.ComponentModel.ISite" />
    ///  时由类实现。
    ///</summary>
    ///<returns>
    ///  与关联的组件的名称 <see cref="T:System.ComponentModel.ISite" />
    ///  ; 或 <see langword="null" />
    ///  , ，如果没有名称分配给该组件。
    ///</returns>
    property Name: string read get_Name write set_Name;
  end;

  //-------------namespace: System.CodeDom.Compiler----------------
  DNCodeDomProviderClass = interface(DNObjectClass)
  ['{C908D219-F79F-533C-AE4C-FB7D641DC3FB}']
  { static methods } 

    {class} function CreateProvider(language: string; providerOptions: DDN.mscorlib.DNIDictionary<string, string>): DNCodeDomProvider; overload;
    ///<summary>
    ///  测试是否有一个关联文件扩展名为 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  的计算机上配置的实现。
    ///</summary>
    ///  <param name="extension">
    ///  文件扩展名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  实现是配置为指定的文件扩展名; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="extension" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function IsDefinedExtension(extension: string): Boolean;
    ///<summary>
    ///  返回此计算机的提供程序和编译器配置设置的语言。
    ///</summary>
    ///<returns>
    ///  类型的数组 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  表示所有配置的设置 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  实现。
    ///</returns>
    ///<exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function GetAllCompilerInfo: TArray<DNCompilerInfo>;
    ///<summary>
    ///  返回具有指定的文件扩展名关联的语言名称，如在配置 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  编译器配置节。
    ///</summary>
    ///  <param name="extension">
    ///  文件扩展名。
    ///</param>
    ///<returns>
    ///  在中配置具有文件扩展名关联的语言名称 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  编译器配置设置。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationException"><paramref name="extension" />
    ///  不在此计算机上具有已配置的语言提供程序。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException"><paramref name="extension" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function GetLanguageFromExtension(extension: string): string;
    ///<summary>
    ///  返回指定的语言的提供程序和编译器配置设置的语言。
    ///</summary>
    ///  <param name="language">
    ///  语言名称。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerInfo" />
    ///  对象的已配置的设置进行填充 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  实现。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationException"><paramref name="language" />
    ///  不在此计算机上具有配置的提供程序。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException"><paramref name="language" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function GetCompilerInfo(language: string): DNCompilerInfo;
    ///<summary>
    ///  获取 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  指定语言的实例。
    ///</summary>
    ///  <param name="language">
    ///  该语言的名称。
    ///</param>
    ///<returns>
    ///  一个 CodeDOM 提供程序实现为指定的语言名称。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException"><paramref name="language" />
    ///  不在此计算机上具有配置的提供程序。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="language" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function CreateProvider(language: string): DNCodeDomProvider; overload;
    ///<summary>
    ///  测试是否一种语言具有 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  的计算机上配置的实现。
    ///</summary>
    ///  <param name="language">
    ///  该语言的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
    ///  实现是配置为指定的语言; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="language" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    {class} function IsDefinedLanguage(language: string): Boolean;

  end;

  ///<summary>
  ///  提供类的基类 <see cref="T:System.CodeDom.Compiler.CodeDomProvider" />
  ///  实现。
  ///  此类为抽象类。
  ///</summary>
  [DNTypeName('System.CodeDom.Compiler.CodeDomProvider')]
  DNCodeDomProvider = interface(DNObject)
  ['{5FAD3639-1A4D-3BDC-A4A5-C59E36165F5B}']
  { getters & setters } 

    function get_FileExtension: string;
    function get_LanguageOptions: DNLanguageOptions;
    function get_Site: DNISite;
    procedure set_Site(value: DNISite);
    function get_Container: DNIContainer;

  { events } 

    procedure add_Disposed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Disposed(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    ///<summary>
    ///  当在派生类中重写时创建新的代码生成器使用指定 <see cref="T:System.IO.TextWriter" />
    ///  输出。
    ///</summary>
    ///  <param name="output">
    ///  一个 <see cref="T:System.IO.TextWriter" />
    ///  使用到输出。
    ///</param>
    ///<returns><see cref="T:System.CodeDom.Compiler.ICodeGenerator" />
    ///  可以用于生成 <see cref="N:System.CodeDom" />
    ///  基于源代码表示形式。
    ///</returns>
    function CreateGenerator(output: DDN.mscorlib.DNTextWriter): DNICodeGenerator; overload;
    ///<summary>
    ///  当在派生类中重写时创建新的代码生成器使用为输出指定的文件名。
    ///</summary>
    ///  <param name="fileName">
    ///  要输出到的文件名称。
    ///</param>
    ///<returns><see cref="T:System.CodeDom.Compiler.ICodeGenerator" />
    ///  可以用于生成 <see cref="N:System.CodeDom" />
    ///  基于源代码表示形式。
    ///</returns>
    function CreateGenerator(fileName: string): DNICodeGenerator; overload;
    ///<summary>
    ///  当在派生类中重写，创建一个新的代码分析器。
    ///</summary>
    ///<returns><see cref="T:System.CodeDom.Compiler.ICodeParser" />
    ///  可以用于分析源代码。
    ///  基实现始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateParser: DNICodeParser;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  为指定的数据类型。
    ///</summary>
    ///  <param name="type">
    ///  要为其检索类型转换器的对象类型。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  对于指定的类型，或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  找不到指定的类型。
    ///</returns>
    function GetConverter(&type: DDN.mscorlib.DNType): DNTypeConverter;
    ///<summary>
    ///  编译程序集基于 <see cref="N:System.CodeDom" />
    ///  树中指定的数组包含 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  对象时，使用指定的编译器设置。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示用于编译的设置。
    ///</param>
    ///  <param name="compilationUnits">
    ///  类型的数组 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  ，该值指示要编译的代码。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateCompiler" />
    ///  在派生类中重写方法。
    ///</exception>
    function CompileAssemblyFromDom(options: DNCompilerParameters; compilationUnits: TArray<DNCodeCompileUnit>): DNCompilerResults;
    ///<summary>
    ///  将使用指定的编译器设置将指定文件中包含的源代码中的程序集编译成。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示用于编译的设置。
    ///</param>
    ///  <param name="fileNames">
    ///  要编译的文件的名称的数组。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateCompiler" />
    ///  在派生类中重写方法。
    ///</exception>
    function CompileAssemblyFromFile(options: DNCompilerParameters; fileNames: TArray<string>): DNCompilerResults;
    ///<summary>
    ///  将指定的字符串包含源代码，并使用指定的编译器设置数组中的程序集编译成。
    ///</summary>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerParameters" />
    ///  对象，它指示此编译的编译器设置。
    ///</param>
    ///  <param name="sources">
    ///  若要编译的源代码字符串的数组。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.Compiler.CompilerResults" />
    ///  指示编译结果的对象。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateCompiler" />
    ///  在派生类中重写方法。
    ///</exception>
    function CompileAssemblyFromSource(options: DNCompilerParameters; sources: TArray<string>): DNCompilerResults;
    ///<summary>
    ///  返回一个值，该值指示指定的值是否为当前语言有效的标识符。
    ///</summary>
    ///  <param name="value">
    ///  要验证为有效的标识符的值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="value" />
    ///  参数是有效的标识符; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    function IsValidIdentifier(value: string): Boolean;
    ///<summary>
    ///  创建指定的值的转义的标识符。
    ///</summary>
    ///  <param name="value">
    ///  要为其创建转义的标识符字符串。
    ///</param>
    ///<returns>
    ///  转义的标识符的值。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  既不此方法也不<see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  派生类中重写方法。
    ///</exception>
    function CreateEscapedIdentifier(value: string): string;
    ///<summary>
    ///  创建指定的值的有效标识符。
    ///</summary>
    ///  <param name="value">
    ///  要为其生成有效的标识符字符串。
    ///</param>
    ///<returns>
    ///  指定值的有效标识符。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    function CreateValidIdentifier(value: string): string;
    ///<summary>
    ///  获取指示指定的类型 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  。
    ///</summary>
    ///  <param name="type">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  ，该值指示要返回的类型。
    ///</param>
    ///<returns>
    ///  此代码生成器在其中生成代码的语言为格式化的文本表示形式指定的类型。
    ///  在 Visual Basic 中，例如，传入 <see cref="T:System.CodeDom.CodeTypeReference" />
    ///  为 <see cref="T:System.Int32" />
    ///  类型将返回"Integer"。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    function GetTypeOutput(&type: DNCodeTypeReference): string;
    ///<summary>
    ///  提供返回值，该值指示是否支持指定的代码生成。
    ///</summary>
    ///  <param name="generatorSupport">
    ///  一个 <see cref="T:System.CodeDom.Compiler.GeneratorSupport" />
    ///  对象，它指示要验证的代码生成支持的类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的代码生成支持，提供;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    function Supports(generatorSupport: DNGeneratorSupport): Boolean;
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 表达式生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="expression">
    ///  一个 <see cref="T:System.CodeDom.CodeExpression" />
    ///  对象，它指示要为其生成代码的表达式。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  代码发送到哪个输出。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    procedure GenerateCodeFromExpression(expression: DNCodeExpression; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 语句生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="statement">
    ///  一个 <see cref="T:System.CodeDom.CodeStatement" />
    ///  包含要为其生成代码的 CodeDOM 元素。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  代码发送到哪个输出。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    procedure GenerateCodeFromStatement(statement: DNCodeStatement; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 命名空间生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="codeNamespace">
    ///  一个 <see cref="T:System.CodeDom.CodeNamespace" />
    ///  对象，它指示要为其生成代码的命名空间。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  代码发送到哪个输出。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    procedure GenerateCodeFromNamespace(codeNamespace: DNCodeNamespace; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 编译单元生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="compileUnit">
    ///  一个 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  要为其生成代码。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  输出代码发送到。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    procedure GenerateCodeFromCompileUnit(compileUnit: DNCodeCompileUnit; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 类型声明生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="codeType">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeDeclaration" />
    ///  对象，它指示要为其生成代码的类型。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  代码发送到哪个输出。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    procedure GenerateCodeFromType(codeType: DNCodeTypeDeclaration; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  为指定的代码文档对象模型 (CodeDOM) 成员声明生成代码并将其发送到指定的文本编写器，使用指定的选项。
    ///</summary>
    ///  <param name="member">
    ///  一个 <see cref="T:System.CodeDom.CodeTypeMember" />
    ///  对象，它指示要为其生成代码的成员。
    ///</param>
    ///  <param name="writer"><see cref="T:System.IO.TextWriter" />
    ///  代码发送到哪个输出。
    ///</param>
    ///  <param name="options">
    ///  一个 <see cref="T:System.CodeDom.Compiler.CodeGeneratorOptions" />
    ///  ，该值指示要用于生成代码的选项。
    ///</param>
    ///<exception cref="T:System.NotImplementedException">
    ///  在派生类中不重写此方法。
    ///</exception>
    procedure GenerateCodeFromMember(member: DNCodeTypeMember; writer: DDN.mscorlib.DNTextWriter; options: DNCodeGeneratorOptions);
    ///<summary>
    ///  将从到指定的文本流中读取的代码编译 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  。
    ///</summary>
    ///  <param name="codeStream">
    ///  一个 <see cref="T:System.IO.TextReader" />
    ///  用于读取待分析代码的对象。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.CodeDom.CodeCompileUnit" />
    ///  ，包含表示形式的已分析的代码。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  此方法都不和 <see cref="M:System.CodeDom.Compiler.CodeDomProvider.CreateGenerator" />
    ///  在派生类中重写方法。
    ///</exception>
    function Parse(codeStream: DDN.mscorlib.DNTextReader): DNCodeCompileUnit;
    ///<summary>
    ///  当在派生类中重写时创建新的代码生成器。
    ///</summary>
    ///<returns><see cref="T:System.CodeDom.Compiler.ICodeGenerator" />
    ///  可以用于生成 <see cref="N:System.CodeDom" />
    ///  基于源代码表示形式。
    ///</returns>
    function CreateGenerator: DNICodeGenerator; overload;
    ///<summary>
    ///  当在派生类中重写，创建新的代码编译器。
    ///</summary>
    ///<returns><see cref="T:System.CodeDom.Compiler.ICodeCompiler" />
    ///  可用于编译 <see cref="N:System.CodeDom" />
    ///  基于源代码表示形式。
    ///</returns>
    function CreateCompiler: DNICodeCompiler;
    ///<summary>
    ///  释放由 <see cref="T:System.ComponentModel.Component" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  返回 <see cref="T:System.String" />
    ///  包含名称的 <see cref="T:System.ComponentModel.Component" />
    ///  , ，如果有的话。
    ///  不应重写此方法。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含名称的 <see cref="T:System.ComponentModel.Component" />
    ///  , (如果有） 或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  是未命名。
    ///</returns>
    function ToString: string;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取默认文件扩展名用于中的当前语言的源代码文件。
    ///</summary>
    ///<returns>
    ///  文件扩展名对应的当前语言的源文件的扩展名。
    ///  基实现始终返回 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    property FileExtension: string read get_FileExtension;
    ///<summary>
    ///  获取语言功能标识符。
    ///</summary>
    ///<returns>
    ///  指示语言的特殊功能的 <see cref="T:System.CodeDom.Compiler.LanguageOptions" />
    ///  。
    ///</returns>
    property LanguageOptions: DNLanguageOptions read get_LanguageOptions;
    ///<summary>
    ///  获取或设置 <see cref="T:System.ComponentModel.ISite" />
    ///  的 <see cref="T:System.ComponentModel.Component" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.ISite" />
    ///  与关联 <see cref="T:System.ComponentModel.Component" />
    ///  , ，或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  不封装在 <see cref="T:System.ComponentModel.IContainer" />
    ///  , 、 <see cref="T:System.ComponentModel.Component" />
    ///  没有 <see cref="T:System.ComponentModel.ISite" />
    ///  与之关联，或 <see cref="T:System.ComponentModel.Component" />
    ///  也会从其 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</returns>
    property Site: DNISite read get_Site write set_Site;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.IContainer" />
    ///  ，其中包含 <see cref="T:System.ComponentModel.Component" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IContainer" />
    ///  ，其中包含 <see cref="T:System.ComponentModel.Component" />
    ///  , (如果有） 或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  不封装在 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</returns>
    property Container: DNIContainer read get_Container;
  end;

  TDNCodeDomProvider = class(TDNGenericImport<DNCodeDomProviderClass, DNCodeDomProvider>) end;

  //-------------namespace: System.Net.Cache----------------
  DNRequestCachePolicyClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F0AE4B8B-B8E8-51D6-93E9-ED2F8613E04A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.Cache.RequestCachePolicy" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNRequestCachePolicy; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Net.Cache.RequestCachePolicy" />
    ///  类的新实例。
    ///  使用指定的缓存策略。
    ///</summary>
    ///  <param name="level">
    ///  一个 <see cref="T:System.Net.Cache.RequestCacheLevel" />
    ///  ，它指定使用获取的资源的缓存行为 <see cref="T:System.Net.WebRequest" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  级别不是有效 <see cref="T:System.Net.Cache.RequestCacheLevel" />
    ///  .value。
    ///</exception>
    {class} function init(level: DNRequestCacheLevel): DNRequestCachePolicy; overload;

  end;

  ///<summary>
  ///  定义通过使用获取的资源的应用程序的缓存要求 <see cref="T:System.Net.WebRequest" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Net.Cache.RequestCachePolicy')]
  DNRequestCachePolicy = interface(DDN.mscorlib.DNObject)
  ['{3B5DCC72-7FC6-3142-AD95-44284F8DF7FC}']
  { getters & setters } 

    function get_Level: DNRequestCacheLevel;

  { methods } 

    ///<summary>
    ///  返回此实例的字符串表示。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含 <see cref="P:System.Net.Cache.RequestCachePolicy.Level" />
    ///  此实例。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Net.Cache.RequestCacheLevel" />
    ///  构造此实例时指定的值。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Net.Cache.RequestCacheLevel" />
    ///  值，该值指定使用获取的资源的缓存行为 <see cref="T:System.Net.WebRequest" />
    ///  对象。
    ///</returns>
    property Level: DNRequestCacheLevel read get_Level;
  end;

  TDNRequestCachePolicy = class(TDNGenericImport<DNRequestCachePolicyClass, DNRequestCachePolicy>) end;

  //-------------namespace: System.Net----------------
  ///<summary>
  ///  提供用于检索 Web 客户端身份验证的凭据的基本身份验证接口。
  ///</summary>
  [DNTypeName('System.Net.ICredentials')]
  DNICredentials = interface(DDN.mscorlib.DNObject)
  ['{AA928FDF-0CBF-3845-8ECB-08339B2DC61D}']
  { methods } 

    ///<summary>
    ///  返回 <see cref="T:System.Net.NetworkCredential" />
    ///  与指定的 URI、 和身份验证类型相关联的对象。
    ///</summary>
    ///  <param name="uri"><see cref="T:System.Uri" />
    ///  客户端提供了有关身份验证。
    ///</param>
    ///  <param name="authType">
    ///  身份验证，如中所定义的类型 <see cref="P:System.Net.IAuthenticationModule.AuthenticationType" />
    ///  属性。
    ///</param>
    ///<returns><see cref="T:System.Net.NetworkCredential" />
    ///  与指定的 URI 和身份验证类型相关联; 如果没有凭据，则有 <see langword="null" />
    ///  。
    ///</returns>
    function GetCredential(uri: DNUri; authType: string): DNNetworkCredential;

  end;

  //-------------namespace: System.Net----------------
  ///<summary>
  ///  提供用于实现的代理访问基接口 <see cref="T:System.Net.WebRequest" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Net.IWebProxy')]
  DNIWebProxy = interface(DDN.mscorlib.DNObject)
  ['{26EE9E09-527D-3AB2-B8F2-6C0425580210}']
  { getters & setters } 

    function get_Credentials: DNICredentials;
    procedure set_Credentials(value: DNICredentials);

  { methods } 

    ///<summary>
    ///  返回的代理的 URI。
    ///</summary>
    ///  <param name="destination">
    ///  一个 <see cref="T:System.Uri" />
    ///  ，它指定所请求的 Internet 资源。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Uri" />
    ///  实例，它包含用于联系代理服务器的 URI <paramref name="destination" />
    ///  。
    ///</returns>
    function GetProxy(destination: DNUri): DNUri;
    ///<summary>
    ///  指示指定的主机不使用的代理后应。
    ///</summary>
    ///  <param name="host"><see cref="T:System.Uri" />
    ///  要检查代理的主机使用。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果代理服务器不应该用于 <paramref name="host" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsBypassed(host: DNUri): Boolean;

  { propertys } 

    ///<summary>
    ///  要提交到代理服务器进行身份验证的凭据。
    ///</summary>
    ///<returns><see cref="T:System.Net.ICredentials" />
    ///  实例，其中包含所需的代理服务器对请求进行身份验证的凭据。
    ///</returns>
    property Credentials: DNICredentials read get_Credentials write set_Credentials;
  end;

  //-------------namespace: System.Net----------------
  DNNetworkCredentialClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D309109D-58F6-59FE-8F05-EE7DD87BBE6A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.NetworkCredential" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNNetworkCredential; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.NetworkCredential" />
    ///  类，具有指定的用户名和密码。
    ///</summary>
    ///  <param name="userName">
    ///  与凭据关联的用户名。
    ///</param>
    ///  <param name="password">
    ///  与凭据关联的用户名密码。
    ///</param>
    {class} function init(userName: string; password: string): DNNetworkCredential; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.NetworkCredential" />
    ///  类，具有指定的用户名和密码。
    ///</summary>
    ///  <param name="userName">
    ///  与凭据关联的用户名。
    ///</param>
    ///  <param name="password">
    ///  与凭据关联的用户名密码。
    ///</param>
    ///<exception cref="T:System.NotSupportedException"><see cref="T:System.Security.SecureString" />
    ///  此平台上不支持类。
    ///</exception>
    {class} function init(userName: string; password: DDN.mscorlib.DNSecureString): DNNetworkCredential; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.NetworkCredential" />
    ///  类，具有指定的用户名、 密码和域。
    ///</summary>
    ///  <param name="userName">
    ///  与凭据关联的用户名。
    ///</param>
    ///  <param name="password">
    ///  与凭据关联的用户名密码。
    ///</param>
    ///  <param name="domain">
    ///  这些凭据与关联的域。
    ///</param>
    {class} function init(userName: string; password: string; domain: string): DNNetworkCredential; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.NetworkCredential" />
    ///  类，具有指定的用户名、 密码和域。
    ///</summary>
    ///  <param name="userName">
    ///  与凭据关联的用户名。
    ///</param>
    ///  <param name="password">
    ///  与凭据关联的用户名密码。
    ///</param>
    ///  <param name="domain">
    ///  这些凭据与关联的域。
    ///</param>
    ///<exception cref="T:System.NotSupportedException"><see cref="T:System.Security.SecureString" />
    ///  此平台上不支持类。
    ///</exception>
    {class} function init(userName: string; password: DDN.mscorlib.DNSecureString; domain: string): DNNetworkCredential; overload;

  end;

  ///<summary>
  ///  为基于密码的身份验证方案（如基本、摘要式、NTLM 和 Kerberos 身份验证）提供凭据。
  ///</summary>
  [DNTypeName('System.Net.NetworkCredential')]
  DNNetworkCredential = interface(DDN.mscorlib.DNObject)
  ['{860A775E-72AE-3B0A-B4B3-3B299B650D80}']
  { getters & setters } 

    function get_UserName: string;
    procedure set_UserName(value: string);
    function get_Password: string;
    procedure set_Password(value: string);
    function get_SecurePassword: DDN.mscorlib.DNSecureString;
    procedure set_SecurePassword(value: DDN.mscorlib.DNSecureString);
    function get_Domain: string;
    procedure set_Domain(value: string);

  { methods } 

    ///<summary>
    ///  返回的实例 <see cref="T:System.Net.NetworkCredential" />
    ///  指定的统一资源标识符 (URI) 和身份验证类型的类。
    ///</summary>
    ///  <param name="uri">
    ///  客户端提供的身份验证的 URI。
    ///</param>
    ///  <param name="authType">
    ///  身份验证请求，如中所定义的类型 <see cref="P:System.Net.IAuthenticationModule.AuthenticationType" />
    ///  属性。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Net.NetworkCredential" />
    ///  对象。
    ///</returns>
    function GetCredential(uri: DNUri; authType: string): DNNetworkCredential; overload;
    ///<summary>
    ///  返回的实例 <see cref="T:System.Net.NetworkCredential" />
    ///  类指定的主机、 端口和身份验证类型。
    ///</summary>
    ///  <param name="host">
    ///  对客户端进行身份验证的主机。
    ///</param>
    ///  <param name="port">
    ///  上的端口 <paramref name="host" />
    ///  客户端与之通信。
    ///</param>
    ///  <param name="authenticationType">
    ///  身份验证请求，如中所定义的类型 <see cref="P:System.Net.IAuthenticationModule.AuthenticationType" />
    ///  属性。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Net.NetworkCredential" />
    ///  为指定的主机、 端口和身份验证协议或 <see langword="null" />
    ///  是否有任何凭据可用于指定的主机、 端口和身份验证协议。
    ///</returns>
    function GetCredential(host: string; port: Int32; authenticationType: string): DNNetworkCredential; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置与凭据关联的用户名。
    ///</summary>
    ///<returns>
    ///  与凭据关联的用户名。
    ///</returns>
    property UserName: string read get_UserName write set_UserName;
    ///<summary>
    ///  获取或设置与凭据关联的用户名的密码。
    ///</summary>
    ///<returns>
    ///  与凭据关联的密码。
    ///  如果此 <see cref="T:System.Net.NetworkCredential" />
    ///  与已初始化实例 <paramref name="password" />
    ///  参数设置为 <see langword="null" />
    ///  , ，则 <see cref="P:System.Net.NetworkCredential.Password" />
    ///  属性将返回一个空字符串。
    ///</returns>
    property Password: string read get_Password write set_Password;
    ///<summary>
    ///  获取或设置该密码作为 <see cref="T:System.Security.SecureString" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  与凭据关联的用户名密码。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException"><see cref="T:System.Security.SecureString" />
    ///  此平台上不支持类。
    ///</exception>
    property SecurePassword: DDN.mscorlib.DNSecureString read get_SecurePassword write set_SecurePassword;
    ///<summary>
    ///  获取或设置验证凭据的域或计算机名称。
    ///</summary>
    ///<returns>
    ///  与凭据关联的域的名称。
    ///</returns>
    property Domain: string read get_Domain write set_Domain;
  end;

  TDNNetworkCredential = class(TDNGenericImport<DNNetworkCredentialClass, DNNetworkCredential>) end;

  //-------------namespace: System.Runtime.Versioning----------------
  DNFrameworkNameClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DACFE325-96FA-5FEE-8665-021F12739DA2}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  从字符串的类和一个 <see cref="T:System.Version" />
    ///  标识的.NET Framework 版本的对象。
    ///</summary>
    ///  <param name="identifier">
    ///  一个字符串，标识的.NET Framework 版本。
    ///</param>
    ///  <param name="version">
    ///  一个包含.NET Framework 的版本信息的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="identifier" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="identifier" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="version" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(identifier: string; version: DDN.mscorlib.DNVersion): DNFrameworkName; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  类，从字符串 <see cref="T:System.Version" />
    ///  标识的.NET Framework 版本，以及配置文件名称的对象。
    ///</summary>
    ///  <param name="identifier">
    ///  一个字符串，标识的.NET Framework 版本。
    ///</param>
    ///  <param name="version">
    ///  一个包含.NET Framework 的版本信息的对象。
    ///</param>
    ///  <param name="profile">
    ///  配置文件名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="identifier" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="identifier" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="version" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(identifier: string; version: DDN.mscorlib.DNVersion; profile: string): DNFrameworkName; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  从一个字符串，包含有关.NET Framework 的版本信息的类。
    ///</summary>
    ///  <param name="frameworkName">
    ///  一个字符串，包含.NET Framework 的版本信息。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="frameworkName" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///  - 或 -
    ///  <paramref name="frameworkName" />
    ///  具有少于两个部分或三个以上的组件。
    ///  - 或 -
    ///  <paramref name="frameworkName" />
    ///  不包括主版本号和次版本号。
    ///  - 或 -
    ///  <paramref name="frameworkName " />
    ///  不包括有效的版本号。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="frameworkName" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(frameworkName: string): DNFrameworkName; overload;

  end;

  ///<summary>
  ///  表示 .NET Framework 的版本名称。
  ///</summary>
  [DNTypeName('System.Runtime.Versioning.FrameworkName')]
  DNFrameworkName = interface(DDN.mscorlib.DNObject)
  ['{80B9C665-1969-3BA7-9E64-BCED9A56B36E}']
  { getters & setters } 

    function get_Identifier: string;
    function get_Version: DDN.mscorlib.DNVersion;
    function get_Profile: string;
    function get_FullName: string;

  { methods } 

    ///<summary>
    ///  返回一个值，该值指示是否此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例表示相同的.NET Framework 版本与指定的对象。
    ///</summary>
    ///  <param name="obj">
    ///  要与当前类型进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果当前的每个组件 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的相应部分匹配 <paramref name="obj" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回一个值，该值指示是否此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例表示与指定相同的.NET Framework 版本 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例。
    ///</summary>
    ///  <param name="other">
    ///  要与当前类型进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果当前的每个组件 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的相应部分匹配 <paramref name="other" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(other: DNFrameworkName): Boolean; overload;
    ///<summary>
    ///  返回的哈希代码 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  32 位有符号的整数，表示此实例的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  返回的字符串表示形式 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取此标识符 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此标识符 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Identifier: string read get_Identifier;
    ///<summary>
    ///  获取此版本 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个对象，包含有关此版本信息 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Version: DDN.mscorlib.DNVersion read get_Version;
    ///<summary>
    ///  获取此配置文件名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此配置文件名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Profile: string read get_Profile;
    ///<summary>
    ///  获取此的完整名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  完整名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property FullName: string read get_FullName;
  end;

  TDNFrameworkName = class(TDNGenericImport<DNFrameworkNameClass, DNFrameworkName>) end;

  //-------------namespace: System----------------
  DNUriClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8A027B3B-A57B-527D-952E-7A148425AE4A}']
  { constructors } 

    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="uriString">
    ///  一个 URI。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  <paramref name="uriString" />
    ///  为空。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案格式不正确。
    ///  请参阅<see cref="M:System.Uri.CheckSchemeName(System.String)" />
    ///  。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string): DNUri; overload;
    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例，并对字符转义进行显式控制。
    ///</summary>
    ///  <param name="uriString">
    ///  URI。
    ///</param>
    ///  <param name="dontEscape">
    ///  如果 <see langword="true" />
    ///  已完全转义，则为 <paramref name="uriString" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  请参阅“备注”。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException"><paramref name="uriString" />
    ///  为空或仅包含空格。
    ///  - 或 -
    ///  中指定的方案<paramref name="uriString" />
    ///  无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string; dontEscape: Boolean): DNUri; overload;
    ///<summary>
    ///  根据指定的基 URI 和相对 URI，初始化 <see cref="T:System.Uri" />
    ///  类的新实例，并对字符转义进行显式控制。
    ///</summary>
    ///  <param name="baseUri">
    ///  基 URI。
    ///</param>
    ///  <param name="relativeUri">
    ///  要添加到基 URI 的相对 URI。
    ///</param>
    ///  <param name="dontEscape">
    ///  如果 <see langword="true" />
    ///  已完全转义，则为 <paramref name="uriString" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  请参阅“备注”。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: string; dontEscape: Boolean): DNUri; overload;
    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///  此构造函数允许指定 URI 字符串是相对 URI、绝对 URI 还是不确定。
    ///</summary>
    ///  <param name="uriString">
    ///  标识将由 <see cref="T:System.Uri" />
    ///  实例表示的资源的字符串。
    ///</param>
    ///  <param name="uriKind">
    ///  指定 URI 字符串是相对 URI、绝对 URI 还是不确定。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="uriKind" />
    ///  无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  <paramref name="uriString" />
    ///  包含相对 URI，而 <paramref name="uriKind" />
    ///  为 <see cref="F:System.UriKind.Absolute" />
    ///  。
    ///  或
    ///  <paramref name="uriString" />
    ///  包含绝对 URI，而 <paramref name="uriKind" />
    ///  为 <see cref="F:System.UriKind.Relative" />
    ///  。
    ///  或
    ///  <paramref name="uriString" />
    ///  为空。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案格式不正确。
    ///  请参阅<see cref="M:System.Uri.CheckSchemeName(System.String)" />
    ///  。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string; uriKind: DNUriKind): DNUri; overload;
    ///<summary>
    ///  根据指定的基 URI 和相对 URI 字符串，初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="baseUri">
    ///  基 URI。
    ///</param>
    ///  <param name="relativeUri">
    ///  要添加到基 URI 的相对 URI。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: string): DNUri; overload;
    ///<summary>
    ///  根据指定的基 <see cref="T:System.Uri" />
    ///  实例和相对 <see cref="T:System.Uri" />
    ///  实例的组合，初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="baseUri">
    ///  作为新 <see cref="T:System.Uri" />
    ///  实例的基的绝对 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="relativeUri">
    ///  与 <see cref="T:System.Uri" />
    ///  组合的相对 <paramref name="baseUri" />
    ///  实例。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: DNUri): DNUri; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_UriSchemeFile: string;
   function __fakeFieldGet_UriSchemeFtp: string;
   function __fakeFieldGet_UriSchemeGopher: string;
   function __fakeFieldGet_UriSchemeHttp: string;
   function __fakeFieldGet_UriSchemeHttps: string;
   function __fakeFieldGet_UriSchemeMailto: string;
   function __fakeFieldGet_UriSchemeNews: string;
   function __fakeFieldGet_UriSchemeNntp: string;
   function __fakeFieldGet_UriSchemeNetTcp: string;
   function __fakeFieldGet_UriSchemeNetPipe: string;
   function __fakeFieldGet_SchemeDelimiter: string;

  { static fields } 

    ///<summary>
    ///  指定 URI 是指向文件的指针。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeFile: string read __fakeFieldGet_UriSchemeFile;
    ///<summary>
    ///  指定通过文件传输协议 (FTP) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeFtp: string read __fakeFieldGet_UriSchemeFtp;
    ///<summary>
    ///  指定通过 Gopher 协议访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeGopher: string read __fakeFieldGet_UriSchemeGopher;
    ///<summary>
    ///  指定通过超文本传输协议 (HTTP) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeHttp: string read __fakeFieldGet_UriSchemeHttp;
    ///<summary>
    ///  指定通过安全超文本传输协议 (HTTPS) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeHttps: string read __fakeFieldGet_UriSchemeHttps;
    ///<summary>
    ///  指定 URI 是一个电子邮件地址，需通过简单邮件传输协议 (SMTP) 访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeMailto: string read __fakeFieldGet_UriSchemeMailto;
    ///<summary>
    ///  指定 URI 是 Internet 新闻组，而且可以通过 Network 新闻传输协议 (NNTP) 进行访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNews: string read __fakeFieldGet_UriSchemeNews;
    ///<summary>
    ///  指定 URI 是 Internet 新闻组，而且可以通过 Network 新闻传输协议 (NNTP) 进行访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNntp: string read __fakeFieldGet_UriSchemeNntp;
    ///<summary>
    ///  指明通过 Windows Communication Foundation (WCF) 使用的 NetTcp 方案访问该 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNetTcp: string read __fakeFieldGet_UriSchemeNetTcp;
    ///<summary>
    ///  指明通过 Windows Communication Foundation (WCF) 使用的 NetPipe 方案访问该 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNetPipe: string read __fakeFieldGet_UriSchemeNetPipe;
    ///<summary>
    ///  指定将通讯协议方案同 URI 的地址部分分开的字符。
    ///  此字段为只读。
    ///</summary>
    {class} property SchemeDelimiter: string read __fakeFieldGet_SchemeDelimiter;

  { static methods } 

    {class} function HexUnescape(pattern: string; out index: Int32): Char;
    ///<summary>
    ///  确定字符串中的一个字符是否为十六进制编码。
    ///</summary>
    ///  <param name="pattern">
    ///  要检查的字符串。
    ///</param>
    ///  <param name="index">
    ///  检查十六进制编码的 <paramref name="pattern" />
    ///  中的位置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  在指定位置进行了十六进制编码，则该值为 <paramref name="pattern" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsHexEncoding(pattern: string; index: Int32): Boolean;
    ///<summary>
    ///  确定指定的方案名是否有效。
    ///</summary>
    ///  <param name="schemeName">
    ///  要验证的方案名。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果方案名有效，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function CheckSchemeName(schemeName: string): Boolean;
    ///<summary>
    ///  确定指定的字符是否为有效的十六进制数字。
    ///</summary>
    ///  <param name="character">
    ///  要验证的字符。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果字符是有效的十六进制数字，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsHexDigit(character: Char): Boolean;
    ///<summary>
    ///  获取十六进制数字的十进制值。
    ///</summary>
    ///  <param name="digit">
    ///  要转换的十六进制数字（0-9、a-f、A-F）。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  值，包含与指定的十六进制数字对应的介于 0 到 15 之间的数字。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="digit" />
    ///  不是有效的十六进制数字 (0-9、 a-f、 A-F)。
    ///</exception>
    {class} function FromHex(digit: Char): Int32;
    {class} function TryCreate(uriString: string; uriKind: DNUriKind; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: string; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: DNUri; out result: DNUri): Boolean; overload;
    ///<summary>
    ///  使用指定的比较规则比较两个 URI 的指定部分。
    ///</summary>
    ///  <param name="uri1">
    ///  第一个 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="uri2">
    ///  第二个 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="partsToCompare"><see cref="T:System.UriComponents" />
    ///  值的按位组合，它指定要比较的 <paramref name="uri1" />
    ///  和 <paramref name="uri2" />
    ///  的部分。
    ///</param>
    ///  <param name="compareFormat"><see cref="T:System.UriFormat" />
    ///  值中的一个，它指定在比较 URI 部分时使用的字符转义。
    ///</param>
    ///  <param name="comparisonType"><see cref="T:System.StringComparison" />
    ///  值之一。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  值，指示进行比较的 <see cref="T:System.Uri" />
    ///  部分之间的词法关系。
    ///  值
    ///  含义
    ///  小于零
    ///  <paramref name="uri1" />
    ///  小于 <paramref name="uri2" />
    ///  。
    ///  零
    ///  <paramref name="uri1" />
    ///  等于 <paramref name="uri2" />
    ///  。
    ///  大于零
    ///  <paramref name="uri1" />
    ///  大于 <paramref name="uri2" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="comparisonType" />
    ///  不是有效的 <see cref="T:System.StringComparison" />
    ///  值。
    ///</exception>
    {class} function Compare(uri1: DNUri; uri2: DNUri; partsToCompare: DNUriComponents; compareFormat: DNUriFormat; comparisonType: DDN.mscorlib.DNStringComparison): Int32;
    ///<summary>
    ///  通过尝试用字符串构造一个 URI 来指示字符串是否为格式良好的，并确保字符串不需要进一步转义。
    ///</summary>
    ///  <param name="uriString">
    ///  用于尝试构造 <see cref="T:System.Uri" />
    ///  的字符串。
    ///</param>
    ///  <param name="uriKind"><see cref="T:System.Uri" />
    ///  中的 <paramref name="uriString" />
    ///  的类型。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果该字符串格式正确，则该值为 <see langword="true " />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsWellFormedUriString(uriString: string; uriKind: DNUriKind): Boolean;
    ///<summary>
    ///  将 URI 字符串转换为它的转义表示形式。
    ///</summary>
    ///  <param name="stringToEscape">
    ///  要转义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToEscape" />
    ///  的转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToEscape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在 .NET for Windows Store apps 或 可移植类库, ，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  , ，而不是。
    ///  <paramref name="stringToEscape" />
    ///  的长度超过 32766 个字符。
    ///</exception>
    {class} function EscapeUriString(stringToEscape: string): string;
    ///<summary>
    ///  将字符串转换为它的转义表示形式。
    ///</summary>
    ///  <param name="stringToEscape">
    ///  要转义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToEscape" />
    ///  的转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToEscape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在 .NET for Windows Store apps 或 可移植类库, ，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  , ，而不是。
    ///  <paramref name="stringToEscape" />
    ///  的长度超过 32766 个字符。
    ///</exception>
    {class} function EscapeDataString(stringToEscape: string): string;
    ///<summary>
    ///  确定指定的主机名是否为有效的 DNS 名称。
    ///</summary>
    ///  <param name="name">
    ///  要验证的主机名。
    ///  可以是 IPv4 或 IPv6 地址或 Internet 主机名。
    ///</param>
    ///<returns>
    ///  指示主机名类型的 <see cref="T:System.UriHostNameType" />
    ///  。
    ///  如果无法确定主机名的类型，或者主机名为 <see langword="null" />
    ///  或零长度字符串，则此方法返回 <see cref="F:System.UriHostNameType.Unknown" />
    ///  。
    ///</returns>
    {class} function CheckHostName(name: string): DNUriHostNameType;
    ///<summary>
    ///  将指定的字符转换为它的等效十六进制字符。
    ///</summary>
    ///  <param name="character">
    ///  要转换为十六进制表示形式的字符。
    ///</param>
    ///<returns>
    ///  指定字符的十六进制表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="character" />
    ///  大于 255。
    ///</exception>
    {class} function HexEscape(character: Char): string;
    ///<summary>
    ///  将字符串转换为它的非转义表示形式。
    ///</summary>
    ///  <param name="stringToUnescape">
    ///  要恢复原义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToUnescape" />
    ///  的非转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToUnescape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function UnescapeDataString(stringToUnescape: string): string;

  end;

  ///<summary>
  ///  提供统一资源标识符 (URI) 的对象表示形式和对 URI 各部分的轻松访问。
  ///</summary>
  [DNTypeName('System.Uri')]
  DNUri = interface(DDN.mscorlib.DNObject)
  ['{9BB92499-99AB-3AE5-93D2-0F41F92018D0}']
  { getters & setters } 

    function get_AbsolutePath: string;
    function get_AbsoluteUri: string;
    function get_LocalPath: string;
    function get_Authority: string;
    function get_HostNameType: DNUriHostNameType;
    function get_IsDefaultPort: Boolean;
    function get_IsFile: Boolean;
    function get_IsLoopback: Boolean;
    function get_PathAndQuery: string;
    function get_Segments: TArray<string>;
    function get_IsUnc: Boolean;
    function get_Host: string;
    function get_Port: Int32;
    function get_Query: string;
    function get_Fragment: string;
    function get_Scheme: string;
    function get_OriginalString: string;
    function get_DnsSafeHost: string;
    function get_IdnHost: string;
    function get_IsAbsoluteUri: Boolean;
    function get_UserEscaped: Boolean;
    function get_UserInfo: string;

  { methods } 

    ///<summary>
    ///  获取 <see cref="T:System.Uri" />
    ///  实例的指定部分。
    ///</summary>
    ///  <param name="part"><see cref="T:System.UriPartial" />
    ///  值之一，指定要返回的 URI 部分的结尾。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，其中包含 <see cref="T:System.Uri" />
    ///  实例的指定部分。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前<see cref="T:System.Uri" />
    ///  实例不是绝对的实例。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定<paramref name="part" />
    ///  无效。
    ///</exception>
    function GetLeftPart(part: DNUriPartial): string;
    ///<summary>
    ///  获取 URI 的哈希代码。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  ，其中包含为此 URI 生成的哈希值。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  获取指定的 <see cref="T:System.Uri" />
    ///  实例的规范化字符串表示形式。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  实例，它包含 <see cref="T:System.Uri" />
    ///  实例的非转义规范化表示形式。
    ///  除了 #、? 和 %，所有字符均为非转义字符。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  比较两个 <see cref="T:System.Uri" />
    ///  实例是否相等。
    ///</summary>
    ///  <param name="comparand">
    ///  与当前实例相比较的 <see cref="T:System.Uri" />
    ///  实例或 URI 标识符。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果两个实例表示相同的 URI，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(comparand: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  确定两个 <see cref="T:System.Uri" />
    ///  实例之间的差异。
    ///</summary>
    ///  <param name="toUri">
    ///  与当前 URI 进行比较的 URI。
    ///</param>
    ///<returns>
    ///  如果此 URI 实例与 <paramref name="toUri" />
    ///  的主机名和方案相同，则此方法返回一个表示相对 URI 的 <see cref="T:System.String" />
    ///  。若将此相对 URI 追加到当前 URI 实例，就可以得到 <paramref name="toUri" />
    ///  参数。
    ///  如果主机名或方案不同，则此方法返回一个表示 <see cref="T:System.String" />
    ///  参数的 <paramref name="toUri" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="toUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此实例表示相对的 URI，并且此方法是仅对绝对 Uri 有效。
    ///</exception>
    function MakeRelative(toUri: DNUri): string;
    ///<summary>
    ///  使用特殊字符的指定转义，获取当前实例的指定部分。
    ///</summary>
    ///  <param name="components"><see cref="T:System.UriComponents" />
    ///  值的按位组合，它指定当前实例中要返回到调用方的部分。
    ///</param>
    ///  <param name="format"><see cref="T:System.UriFormat" />
    ///  值中的一个，它控制如何转义特殊字符。
    ///</param>
    ///<returns>
    ///  一个包含这些部分的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="components" />
    ///  不是有效的组合<see cref="T:System.UriComponents" />
    ///  值。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前<see cref="T:System.Uri" />
    ///  不是一个绝对 URI。
    ///  相对 Uri 不能使用此方法。
    ///</exception>
    function GetComponents(components: DNUriComponents; format: DNUriFormat): string;
    ///<summary>
    ///  指示用于构造此 <see cref="T:System.Uri" />
    ///  的字符串是否格式良好，以及它是否不需要进一步转义。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果该字符串格式正确，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsWellFormedOriginalString: Boolean;
    ///<summary>
    ///  确定当前的 <see cref="T:System.Uri" />
    ///  实例是否为指定 <see cref="T:System.Uri" />
    ///  实例的基。
    ///</summary>
    ///  <param name="uri">
    ///  要测试的指定 <see cref="T:System.Uri" />
    ///  实例。
    ///</param>
    ///<returns>
    ///  如果当前 <see langword="true" />
    ///  实例是 <see cref="T:System.Uri" />
    ///  的基，则为 <paramref name="uri" />
    ///  ；否则，为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function IsBaseOf(uri: DNUri): Boolean;
    ///<summary>
    ///  确定两个 <see cref="T:System.Uri" />
    ///  实例之间的差异。
    ///</summary>
    ///  <param name="uri">
    ///  与当前 URI 进行比较的 URI。
    ///</param>
    ///<returns>
    ///  如果此 URI 实例与 <paramref name="uri" />
    ///  的主机名和方案相同，则此方法返回一个相对 <see cref="T:System.Uri" />
    ///  。若将此相对 URI 追加到当前 URI 实例，就可以得到 <paramref name="uri" />
    ///  。
    ///  如果主机名或方案不同，则此方法返回一个表示 <see cref="T:System.Uri" />
    ///  参数的 <paramref name="uri" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    function MakeRelativeUri(uri: DNUri): DNUri;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取 URI 的绝对路径。
    ///</summary>
    ///<returns>
    ///  包含资源的绝对路径的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property AbsolutePath: string read get_AbsolutePath;
    ///<summary>
    ///  获取绝对 URI。
    ///</summary>
    ///<returns>
    ///  包含整个 URI 的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property AbsoluteUri: string read get_AbsoluteUri;
    ///<summary>
    ///  获取文件名的本地操作系统表示形式。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含文件名的本地操作系统表示形式。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property LocalPath: string read get_LocalPath;
    ///<summary>
    ///  获取服务器的域名系统 (DNS) 主机名或 IP 地址和端口号。
    ///</summary>
    ///<returns>
    ///  包含此实例所表示的 URI 的证书颁发机构部分的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Authority: string read get_Authority;
    ///<summary>
    ///  获取 URI 中指定的主机名的类型。
    ///</summary>
    ///<returns><see cref="T:System.UriHostNameType" />
    ///  枚举的一个成员。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property HostNameType: DNUriHostNameType read get_HostNameType;
    ///<summary>
    ///  获取一个值，该值指示 URI 的端口值是否为此方案的默认值。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  属性中的值是此方案的默认端口，则该值为 <see cref="P:System.Uri.Port" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsDefaultPort: Boolean read get_IsDefaultPort;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否为文件 URI。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  是文件 URI，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsFile: Boolean read get_IsFile;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否引用了本地主机。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果此 <see langword="true" />
    ///  引用了本地主机，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsLoopback: Boolean read get_IsLoopback;
    ///<summary>
    ///  获取用问号 (?) 分隔的 <see cref="P:System.Uri.AbsolutePath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  属性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，它包含用问号 (?) 分隔的 <see cref="P:System.Uri.AbsolutePath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  属性。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property PathAndQuery: string read get_PathAndQuery;
    ///<summary>
    ///  获取包含构成指定 URI 的路径段的数组。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  数组，包含构成指定 URI 的路径段。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Segments: TArray<string> read get_Segments;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否为统一命名约定 (UNC) 路径。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  是 UNC 路径，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsUnc: Boolean read get_IsUnc;
    ///<summary>
    ///  获取此实例的主机部分。
    ///</summary>
    ///<returns>
    ///  一个包含主机名的 <see cref="T:System.String" />
    ///  。
    ///  这通常是服务器的 DNS 主机名或 IP 地址。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Host: string read get_Host;
    ///<summary>
    ///  获取此 URI 的端口号。
    ///</summary>
    ///<returns>
    ///  一个包含此 URI 的端口号的 <see cref="T:System.Int32" />
    ///  值。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Port: Int32 read get_Port;
    ///<summary>
    ///  获取指定 URI 中包括的任何查询信息。
    ///</summary>
    ///<returns>
    ///  一个<see cref="T:System.String" />
    ///  ，包含指定 URI 中包括的任何查询信息。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Query: string read get_Query;
    ///<summary>
    ///  获取转义 URI 片段。
    ///</summary>
    ///<returns>
    ///  一个包含任意 URI 片段信息的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Fragment: string read get_Fragment;
    ///<summary>
    ///  获取此 URI 的方案名称。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含此 URI 的方案（已转换为小写形式）。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Scheme: string read get_Scheme;
    ///<summary>
    ///  获取传递给 <see cref="T:System.Uri" />
    ///  构造函数的原始 URI 字符串。
    ///</summary>
    ///<returns>
    ///  包含构造此实例时指定的同一 URI，则为 <see cref="T:System.String" />
    ///  ；否则，为 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property OriginalString: string read get_OriginalString;
    ///<summary>
    ///  获得可安全用于 DNS 解析的未转义主机名。
    ///</summary>
    ///<returns>
    ///  一个包含适用于 DNS 解析的未转义 URI 主机部分的 <see cref="T:System.String" />
    ///  ；或者，如果原始的未转义主机字符串已适用于解析，则为原始的未转义主机字符串。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例表示一个相对 URI，并且此属性仅对绝对 Uri 有效。
    ///</exception>
    property DnsSafeHost: string read get_DnsSafeHost;
    ///<summary>
    ///  RFC 3490 根据需要使用 Punycode，符合主机的国际域名要求。
    ///</summary>
    ///<returns>
    ///  根据 IDN 标准，返回采用 Punycode 格式的主机名。<see cref="T:System.String" />
    ///  。
    ///</returns>
    property IdnHost: string read get_IdnHost;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Uri" />
    ///  实例是否为绝对 URI。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  实例是绝对 URI，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsAbsoluteUri: Boolean read get_IsAbsoluteUri;
    ///<summary>
    ///  指示 URI 字符串在创建 <see cref="T:System.Uri" />
    ///  实例之前已被完全转义。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果在创建 <see langword="true" />
    ///  实例时 <paramref name="dontEscape" />
    ///  参数设置为 <see langword="true" />
    ///  ，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property UserEscaped: Boolean read get_UserEscaped;
    ///<summary>
    ///  获取用户名、密码或其他与指定 URI 关联的特定于用户的信息。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含与该 URI 关联的用户信息。
    ///  返回值不包括“@”字符，该字符是一个保留字符，用于分隔 URI 的用户信息部分。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property UserInfo: string read get_UserInfo;
  end;

  TDNUri = class(TDNGenericImport<DNUriClass, DNUri>) end;


implementation

end.
