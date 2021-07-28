//-----------------------------------------------------------//
//                                                           //
//     DDN.WebDriver.Common                         
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.WebDriver.Common;

interface

uses
  DDN.Runtime,
  DDN.mscorlib;

type

{ enums }

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


  //-------------namespace: System.Net----------------
  ///<summary>
  ///  表示要用于压缩响应中收到的数据的文件压缩和解压缩编码格式 <see cref="T:System.Net.HttpWebRequest" />
  ///  。
  ///</summary>
  [DNTypeName('System.Net.DecompressionMethods')]
  DNDecompressionMethods = type Integer;
  DNDecompressionMethodsHelper = record helper for DNDecompressionMethods
  public const
    ///<summary>
    ///  不使用压缩。
    ///</summary>
    None = 0;
    ///<summary>
    ///  使用 gZip 压缩解压缩算法。
    ///</summary>
    GZip = 1;
    ///<summary>
    ///  使用 deflate 压缩解压缩算法。
    ///</summary>
    Deflate = 2;
  end;


  //-------------namespace: System.Net----------------
  ///<summary>
  ///  可能在客户端请求中指定的 HTTP 标头。
  ///</summary>
  [DNTypeName('System.Net.HttpRequestHeader')]
  DNHttpRequestHeader = type Integer;
  DNHttpRequestHeaderHelper = record helper for DNHttpRequestHeader
  public const
    ///<summary>
    ///  Cache-Control 标头，指定请求/响应链上所有缓存控制机制必须服从的指令。
    ///</summary>
    CacheControl = 0;
    ///<summary>
    ///  Connection 标头，指定特定连接所需的选项。
    ///</summary>
    Connection = 1;
    ///<summary>
    ///  Date 标头，指定发出请求的日期和时间。
    ///</summary>
    Date = 2;
    ///<summary>
    ///  Keep-Alive 标头，指定用于保持持久性连接的参数。
    ///</summary>
    KeepAlive = 3;
    ///<summary>
    ///  Pragma 标头，指定特定于实现的指令，这些指令可应用到请求/响应链上的任意代理。
    ///</summary>
    Pragma = 4;
    ///<summary>
    ///  Trailer 标头，指定显示在以成块传输编码方式编码的消息尾部的标头字段。
    ///</summary>
    Trailer = 5;
    ///<summary>
    ///  Transfer-Encoding 标头，指定应用到消息正文的转换类型（如果有）。
    ///</summary>
    TransferEncoding = 6;
    ///<summary>
    ///  Upgrade 标头，指定客户端支持的其他通信协议。
    ///</summary>
    Upgrade = 7;
    ///<summary>
    ///  Via 标头，指定网关和代理要使用的中间协议。
    ///</summary>
    Via = 8;
    ///<summary>
    ///  Warning 标头，指定消息中可能不会反映的有关消息的状态或转换的其他信息。
    ///</summary>
    Warning = 9;
    ///<summary>
    ///  Allow 标头，指定支持的 HTTP 方法集。
    ///</summary>
    Allow = 10;
    ///<summary>
    ///  Content-Length 标头，指定随附的正文数据的长度（以字节为单位）。
    ///</summary>
    ContentLength = 11;
    ///<summary>
    ///  Content-Type 标头，指定随附的正文数据的 MIME 类型。
    ///</summary>
    ContentType = 12;
    ///<summary>
    ///  Content-Encoding 标头，指定应用到随附的正文数据的编码。
    ///</summary>
    ContentEncoding = 13;
    ///<summary>
    ///  Content-Langauge 标头，指定随附的正文数据的自然语言。
    ///</summary>
    ContentLanguage = 14;
    ///<summary>
    ///  Content-Location 标头，指定可从中获取随附的正文的 URI。
    ///</summary>
    ContentLocation = 15;
    ///<summary>
    ///  Content-MD5 标头，指定随附的正文数据的 MD5 摘要，以便提供端到端消息完整性检查。
    ///</summary>
    ContentMd5 = 16;
    ///<summary>
    ///  Content-Range 标头，指定完整正文中应用随附的部分正文数据的位置。
    ///</summary>
    ContentRange = 17;
    ///<summary>
    ///  Expires 标头，指定日期和时间，在该日期和时间之后随附的正文数据将被视为已过期。
    ///</summary>
    Expires = 18;
    ///<summary>
    ///  Last-Modified 标头，指定上次修改随附的正文数据的日期和时间。
    ///</summary>
    LastModified = 19;
    ///<summary>
    ///  Accept 标头，指定响应可接受的 MIME 类型。
    ///</summary>
    Accept = 20;
    ///<summary>
    ///  Accept-Charset 标头，指定响应可接受的字符集。
    ///</summary>
    AcceptCharset = 21;
    ///<summary>
    ///  Accept-Charset 标头，指定响应可接受的内容编码。
    ///</summary>
    AcceptEncoding = 22;
    ///<summary>
    ///  Accept-Langauge 标头，指定响应首选的自然语言。
    ///</summary>
    AcceptLanguage = 23;
    ///<summary>
    ///  Authorization 标头，指定客户端提供的以向服务器验证自身身份的凭据。
    ///</summary>
    Authorization = 24;
    ///<summary>
    ///  Cookie 标头，指定向服务器提供的 cookie 数据。
    ///</summary>
    Cookie = 25;
    ///<summary>
    ///  Expect 标头，指定客户端所需的特定服务器行为。
    ///</summary>
    Expect = 26;
    ///<summary>
    ///  From 标头，指定控制请求的用户代理的用户的 Internet 电子邮件地址。
    ///</summary>
    From = 27;
    ///<summary>
    ///  Host 标头，指定要请求的资源的主机名和端口号。
    ///</summary>
    Host = 28;
    ///<summary>
    ///  If-match 标头，指定仅当客户端所指示的资源的缓存副本是最新的时，才执行所请求的操作。
    ///</summary>
    IfMatch = 29;
    ///<summary>
    ///  If-Modified-Since 标头，指定仅当自指示的数据和时间之后修改了请求的资源时，才执行请求的操作。
    ///</summary>
    IfModifiedSince = 30;
    ///<summary>
    ///  If-None-Match 标头，指定仅当客户端所指示的资源的缓存副本都不是最新的时，才执行所请求的操作。
    ///</summary>
    IfNoneMatch = 31;
    ///<summary>
    ///  If-Range 标头，指定如果客户端的缓存副本是最新的，则仅发送指定范围的请求资源。
    ///</summary>
    IfRange = 32;
    ///<summary>
    ///  If-Unmodified-Since 标头，指定仅当自指示的数据和时间之后未修改请求的资源时，才执行请求的操作。
    ///</summary>
    IfUnmodifiedSince = 33;
    ///<summary>
    ///  Max-Forwards 标头，指定一个整数，表示此请求还可以被转发的次数。
    ///</summary>
    MaxForwards = 34;
    ///<summary>
    ///  Proxy-Authorization 标头，指定客户端提供的以向代理验证自身身份的凭据。
    ///</summary>
    ProxyAuthorization = 35;
    ///<summary>
    ///  Referer 标头，指定可从中获取请求 URI 的资源 URI。
    ///</summary>
    Referer = 36;
    ///<summary>
    ///  Range 标头，指定代替整个响应返回的客户端请求的响应的子范围。
    ///</summary>
    Range = 37;
    ///<summary>
    ///  TE 标头，指定响应可接受的传输编码。
    ///</summary>
    Te = 38;
    ///<summary>
    ///  Translate 标头，与 WebDAV 功能一起使用的 HTTP 规范的 Microsoft 扩展。
    ///</summary>
    Translate = 39;
    ///<summary>
    ///  User-Agent 标头，指定有关客户端代理的信息。
    ///</summary>
    UserAgent = 40;
  end;


  //-------------namespace: System.Net----------------
  ///<summary>
  ///  可在服务器响应中指定的 HTTP 标头。
  ///</summary>
  [DNTypeName('System.Net.HttpResponseHeader')]
  DNHttpResponseHeader = type Integer;
  DNHttpResponseHeaderHelper = record helper for DNHttpResponseHeader
  public const
    ///<summary>
    ///  缓存控制标头，指定缓存必须遵守的请求/响应链沿所有缓存机制的指令。
    ///</summary>
    CacheControl = 0;
    ///<summary>
    ///  Connection 标头，指定特定连接所需的选项。
    ///</summary>
    Connection = 1;
    ///<summary>
    ///  日期标头，指定的日期和时间起源响应。
    ///</summary>
    Date = 2;
    ///<summary>
    ///  保持活动状态标头，它指定要用于维护的持续性连接的参数。
    ///</summary>
    KeepAlive = 3;
    ///<summary>
    ///  Pragma 标头，指定特定于实现的指令，这些指令可应用到请求/响应链上的任意代理。
    ///</summary>
    Pragma = 4;
    ///<summary>
    ///  尾部标头，指定使用 chunked 传输编码进行编码的消息的尾部显示指示的标头字段。
    ///</summary>
    Trailer = 5;
    ///<summary>
    ///  传输编码标头，它指定的内容 （如果有） 的转换类型已应用于消息正文。
    ///</summary>
    TransferEncoding = 6;
    ///<summary>
    ///  Upgrade 标头，指定客户端支持的其他通信协议。
    ///</summary>
    Upgrade = 7;
    ///<summary>
    ///  Via 标头，指定网关和代理要使用的中间协议。
    ///</summary>
    Via = 8;
    ///<summary>
    ///  Warning 标头，指定消息中可能不会反映的有关消息的状态或转换的其他信息。
    ///</summary>
    Warning = 9;
    ///<summary>
    ///  允许标头，指定的受支持的 HTTP 方法集。
    ///</summary>
    Allow = 10;
    ///<summary>
    ///  Content-Length 标头，指定随附的正文数据的长度（以字节为单位）。
    ///</summary>
    ContentLength = 11;
    ///<summary>
    ///  Content-Type 标头，指定随附的正文数据的 MIME 类型。
    ///</summary>
    ContentType = 12;
    ///<summary>
    ///  Content-Encoding 标头，指定应用到随附的正文数据的编码。
    ///</summary>
    ContentEncoding = 13;
    ///<summary>
    ///  内容语言标头，指定的自然语言或语言伴随的正文数据。
    ///</summary>
    ContentLanguage = 14;
    ///<summary>
    ///  内容位置标头，指定一个 uri，该 URI 可以从中获得随附的正文。
    ///</summary>
    ContentLocation = 15;
    ///<summary>
    ///  Content-MD5 标头，指定随附的正文数据的 MD5 摘要，以便提供端到端消息完整性检查。
    ///</summary>
    ContentMd5 = 16;
    ///<summary>
    ///  Range 标头，指定的子范围或子范围的代替整个响应返回客户端请求的响应。
    ///</summary>
    ContentRange = 17;
    ///<summary>
    ///  Expires 标头，指定日期和时间，在该日期和时间之后随附的正文数据将被视为已过期。
    ///</summary>
    Expires = 18;
    ///<summary>
    ///  Last-Modified 标头，指定上次修改随附的正文数据的日期和时间。
    ///</summary>
    LastModified = 19;
    ///<summary>
    ///  Accept-ranges 标头，指定服务器接受的范围。
    ///</summary>
    AcceptRanges = 20;
    ///<summary>
    ///  Age 标头，以秒为单位，指定的时间，因为源服务器通过为生成响应。
    ///</summary>
    Age = 21;
    ///<summary>
    ///  Etag 标头，指定请求的变量的当前值。
    ///</summary>
    ETag = 22;
    ///<summary>
    ///  位置标头，指定客户端将重定向至以获取所请求的资源的 URI。
    ///</summary>
    Location = 23;
    ///<summary>
    ///  代理服务器进行身份验证标头，它指定客户端必须验证自身身份向代理服务器。
    ///</summary>
    ProxyAuthenticate = 24;
    ///<summary>
    ///  重试后标头，它指定时间 （以秒为单位），或日期和时间，此后客户端可以重试请求。
    ///</summary>
    RetryAfter = 25;
    ///<summary>
    ///  服务器标头，指定有关源服务器代理的信息。
    ///</summary>
    Server = 26;
    ///<summary>
    ///  Set-cookie 标头，指定将此信息将提供给客户端的 cookie 数据。
    ///</summary>
    SetCookie = 27;
    ///<summary>
    ///  Vary 标头，指定用于确定缓存的响应是否是最新的请求标头。
    ///</summary>
    Vary = 28;
    ///<summary>
    ///  WWW 身份验证标头，它指定客户端必须进行自我验证到服务器。
    ///</summary>
    WwwAuthenticate = 29;
  end;


  //-------------namespace: System.Net.Security----------------
  ///<summary>
  ///  指定的身份验证和模拟客户端要求使用时 <see cref="T:System.Net.WebRequest" />
  ///  类和派生的类，以请求资源。
  ///</summary>
  [DNTypeName('System.Net.Security.AuthenticationLevel')]
  DNAuthenticationLevel = type Integer;
  DNAuthenticationLevelHelper = record helper for DNAuthenticationLevel
  public const
    ///<summary>
    ///  不进行身份验证是必需的客户端和服务器。
    ///</summary>
    None = 0;
    ///<summary>
    ///  客户端和服务器应进行身份验证。
    ///  如果服务器未经过身份验证，该请求不会失败。
    ///  若要确定是否发生了相互身份验证，请检查的值 <see cref="P:System.Net.WebResponse.IsMutuallyAuthenticated" />
    ///  属性。
    ///</summary>
    MutualAuthRequested = 1;
    ///<summary>
    ///  客户端和服务器应进行身份验证。
    ///  如果服务器未经过身份验证，则应用程序将收到 <see cref="T:System.IO.IOException" />
    ///  与 <see cref="T:System.Net.ProtocolViolationException" />
    ///  内部异常，指示相互身份验证失败
    ///</summary>
    MutualAuthRequired = 2;
  end;


  //-------------namespace: System.Net.Security----------------
  ///<summary>
  ///  枚举安全套接字层 (SSL) 策略错误。
  ///</summary>
  [DNTypeName('System.Net.Security.SslPolicyErrors')]
  DNSslPolicyErrors = type Integer;
  DNSslPolicyErrorsHelper = record helper for DNSslPolicyErrors
  public const
    ///<summary>
    ///  没有 SSL 策略错误。
    ///</summary>
    None = 0;
    ///<summary>
    ///  证书不可用。
    ///</summary>
    RemoteCertificateNotAvailable = 1;
    ///<summary>
    ///  证书名称不匹配。
    ///</summary>
    RemoteCertificateNameMismatch = 2;
    ///<summary><see cref="P:System.Security.Cryptography.X509Certificates.X509Chain.ChainStatus" />
    ///  返回一个非空数组。
    ///</summary>
    RemoteCertificateChainErrors = 4;
  end;


  //-------------namespace: System.Security.Authentication.ExtendedProtection----------------
  ///<summary><see cref="T:System.Security.Authentication.ExtendedProtection.ChannelBindingKind" />
  ///  枚举表示可以查询从安全通道的通道绑定的类型。
  ///</summary>
  [DNTypeName('System.Security.Authentication.ExtendedProtection.ChannelBindingKind')]
  DNChannelBindingKind = type Integer;
  DNChannelBindingKindHelper = record helper for DNChannelBindingKind
  public const
    ///<summary>
    ///  未知的通道绑定类型。
    ///</summary>
    Unknown = 0;
    ///<summary>
    ///  完全唯一通道绑定到给定通道 （如 TLS 会话密钥）。
    ///</summary>
    Unique = 25;
    ///<summary>
    ///  唯一通道绑定到给定的终结点 （如 TLS 服务器证书）。
    ///</summary>
    Endpoint = 26;
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

  DNX509CertificateCollection = interface; // type: System.Security.Cryptography.X509Certificates.X509CertificateCollection, namespace: System.Security.Cryptography.X509Certificates
  DNKeysCollection = interface; // type: System.Collections.Specialized.NameObjectCollectionBase+KeysCollection, namespace: System.Collections.Specialized
  DNNameValueCollection = interface; // type: System.Collections.Specialized.NameValueCollection, namespace: System.Collections.Specialized
  DNWebHeaderCollection = interface; // type: System.Net.WebHeaderCollection, namespace: System.Net
  DNBindIPEndPoint = interface; // type: System.Net.BindIPEndPoint, namespace: System.Net
  DNHttpContinueDelegate = interface; // type: System.Net.HttpContinueDelegate, namespace: System.Net
  DNRemoteCertificateValidationCallback = interface; // type: System.Net.Security.RemoteCertificateValidationCallback, namespace: System.Net.Security
  DNImageFormat = interface; // type: System.Drawing.Imaging.ImageFormat, namespace: System.Drawing.Imaging
  DNWebRequest = interface; // type: System.Net.WebRequest, namespace: System.Net
  DNHttpWebRequest = interface; // type: System.Net.HttpWebRequest, namespace: System.Net
  DNWebResponse = interface; // type: System.Net.WebResponse, namespace: System.Net
  DNRequestCachePolicy = interface; // type: System.Net.Cache.RequestCachePolicy, namespace: System.Net.Cache
  DNCookie = interface; // type: System.Net.Cookie, namespace: System.Net
  DNCookieCollection = interface; // type: System.Net.CookieCollection, namespace: System.Net
  DNCookieContainer = interface; // type: System.Net.CookieContainer, namespace: System.Net
  DNICredentials = interface; // type: System.Net.ICredentials, namespace: System.Net
  DNIWebProxy = interface; // type: System.Net.IWebProxy, namespace: System.Net
  DNIWebRequestCreate = interface; // type: System.Net.IWebRequestCreate, namespace: System.Net
  DNNetworkCredential = interface; // type: System.Net.NetworkCredential, namespace: System.Net
  DNServicePoint = interface; // type: System.Net.ServicePoint, namespace: System.Net
  DNTransportContext = interface; // type: System.Net.TransportContext, namespace: System.Net
  DNChannelBinding = interface; // type: System.Security.Authentication.ExtendedProtection.ChannelBinding, namespace: System.Security.Authentication.ExtendedProtection
  DNTokenBinding = interface; // type: System.Security.Authentication.ExtendedProtection.TokenBinding, namespace: System.Security.Authentication.ExtendedProtection
  DNX509CertificateEnumerator = interface; // type: System.Security.Cryptography.X509Certificates.X509CertificateCollection+X509CertificateEnumerator, namespace: System.Security.Cryptography.X509Certificates
  DNX509Chain = interface; // type: System.Security.Cryptography.X509Certificates.X509Chain, namespace: System.Security.Cryptography.X509Certificates
  DNUri = interface; // type: System.Uri, namespace: System
  DNPoint = interface; // type: System.Drawing.Point, namespace: System.Drawing
  DNPointF = interface; // type: System.Drawing.PointF, namespace: System.Drawing
  DNSize = interface; // type: System.Drawing.Size, namespace: System.Drawing
  DNSizeF = interface; // type: System.Drawing.SizeF, namespace: System.Drawing


{ objects }

  //-------------namespace: System.Security.Cryptography.X509Certificates----------------
  DNX509CertificateCollectionClass = interface(DDN.mscorlib.DNCollectionBaseClass)
  ['{83C3CA7F-F03B-57EF-A7C6-5777897E6B60}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNX509CertificateCollection; overload;
    ///<summary>
    ///  从另一个 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的新实例。
    ///</summary>
    ///  <param name="value">
    ///  用于初始化新对象的 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  。
    ///</param>
    {class} function init(value: DNX509CertificateCollection): DNX509CertificateCollection; overload;
    ///<summary>
    ///  从 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  对象的数组初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="value">
    ///  用来初始化新对象的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  对象数组。
    ///</param>
    {class} function init(value: TArray<DDN.mscorlib.DNX509Certificate>): DNX509CertificateCollection; overload;

  end;

  ///<summary>
  ///  定义一个存储 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Security.Cryptography.X509Certificates.X509CertificateCollection')]
  DNX509CertificateCollection = interface(DDN.mscorlib.DNCollectionBase)
  ['{2794BB5A-5E85-3BC9-892B-C863B375B2EF}']
  { getters & setters } 

    function get_Item(index: Int32): DDN.mscorlib.DNX509Certificate;
    procedure set_Item(index: Int32; value: DDN.mscorlib.DNX509Certificate);
    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  向当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  添加具有指定值的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要添加到当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</param>
    ///<returns>
    ///  当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  内的索引，于此处插入了新的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</returns>
    function Add(value: DDN.mscorlib.DNX509Certificate): Int32;
    ///<summary>
    ///  将 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  类型数组的元素复制到当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的末尾。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  类型数组，包含要添加到当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<DDN.mscorlib.DNX509Certificate>); overload;
    ///<summary>
    ///  将所指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的元素复制到当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的末尾。
    ///</summary>
    ///  <param name="value">
    ///  包含要添加到集合的对象的 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: DNX509CertificateCollection); overload;
    ///<summary>
    ///  获取一个值，该值指示当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  是否包含指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要查找的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果此集合中包含 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DDN.mscorlib.DNX509Certificate): Boolean;
    ///<summary>
    ///  将当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  值复制到指定索引处的一维 <see cref="T:System.Array" />
    ///  实例中。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  ，它是从 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  复制的值的目标。
    ///</param>
    ///  <param name="index"><paramref name="array" />
    ///  内的索引，从此处开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="array" />
    ///  参数多维。
    ///  - 或 -
    ///<see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中的元素个数大于 <paramref name="arrayIndex" />
    ///  和 <paramref name="array" />
    ///  末尾之间的可用空间。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="arrayIndex" />
    ///  参数小于 <paramref name="array" />
    ///  参数的下限。
    ///</exception>
    procedure CopyTo(&array: TArray<DDN.mscorlib.DNX509Certificate>; index: Int32);
    ///<summary>
    ///  返回当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  的索引。
    ///</summary>
    ///  <param name="value">
    ///  要查找的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</param>
    ///<returns>
    ///  若找到，则为 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中 <paramref name="value" />
    ///  参数指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  的索引；否则为 -1。
    ///</returns>
    function IndexOf(value: DDN.mscorlib.DNX509Certificate): Int32;
    ///<summary>
    ///  将 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  插入到指定索引处的当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  。
    ///</summary>
    ///  <param name="index">
    ///  从零开始的索引，应在该位置插入 <paramref name="value" />
    ///  。
    ///</param>
    ///  <param name="value">
    ///  要插入的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</param>
    procedure Insert(index: Int32; value: DDN.mscorlib.DNX509Certificate);
    ///<summary>
    ///  返回可循环访问 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的枚举器。
    ///</summary>
    ///<returns>
    ///  可用于循环访问集合的 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  的子元素枚举器。
    ///</returns>
    function GetEnumerator: DNX509CertificateEnumerator;
    ///<summary>
    ///  从当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中移除特定 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要从当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中移除的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  未在当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中找到由 <paramref name="value" />
    ///  参数指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  。
    ///</exception>
    procedure Remove(value: DDN.mscorlib.DNX509Certificate);
    ///<summary>
    ///  生成基于当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中包含的所有值的哈希值。
    ///</summary>
    ///<returns>
    ///  基于当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  中包含的所有值的哈希值。
    ///</returns>
    function GetHashCode: Int32;
    procedure RemoveAt(index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DDN.mscorlib.DNX509Certificate read get_Item write set_Item; default;
    property Capacity: Int32 read get_Capacity write set_Capacity;
    property Count: Int32 read get_Count;
  end;

  TDNX509CertificateCollection = class(TDNGenericImport<DNX509CertificateCollectionClass, DNX509CertificateCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNKeysCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8056D97B-E35F-57D6-A66E-94C97EE8836D}']
  end;

  ///<summary>
  ///  表示集合中 <see cref="T:System.String" />
  ///  密钥的集合。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.NameObjectCollectionBase+KeysCollection')]
  DNKeysCollection = interface(DDN.mscorlib.DNObject)
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

  TDNKeysCollection = class(TDNGenericImport<DNKeysCollectionClass, DNKeysCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNNameValueCollectionClass = interface(DNObjectClass)
  ['{8A48AC0E-4E01-5F5E-AB8C-561846E46221}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空且具有默认初始容量，并使用不区分大小写的默认哈希代码提供程序和不区分大小写的默认比较器。
    ///</summary>
    {class} function init: DNNameValueCollection; overload;
    ///<summary>
    ///  将项从指定的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制到一个新的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  ，这个新集合的初始容量与复制的项数相等，并使用与源集合相同的哈希代码提供程序和比较器。
    ///</summary>
    ///  <param name="col">
    ///  要复制到新 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  实例的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="col" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(col: DNNameValueCollection): DNNameValueCollection; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空且具有默认初始容量，并使用指定的哈希代码提供程序和指定的比较器。
    ///</summary>
    ///  <param name="hashProvider"><see cref="T:System.Collections.IHashCodeProvider" />
    ///  将为 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的所有键提供哈希代码。
    ///</param>
    ///  <param name="comparer"><see cref="T:System.Collections.IComparer" />
    ///  ，用于确定两个键是否相等。
    ///</param>
    {class} function init(hashProvider: DDN.mscorlib.DNIHashCodeProvider; comparer: DDN.mscorlib.DNIComparer): DNNameValueCollection; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空且具有指定的初始容量，并使用不区分大小写的默认哈希代码提供程序和不区分大小写的默认比较器。
    ///</summary>
    ///  <param name="capacity"><see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  可包含的初始项数。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity" />
    ///  小于零。
    ///</exception>
    {class} function init(capacity: Int32): DNNameValueCollection; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空、具有默认的初始容量并使用指定的 <see cref="T:System.Collections.IEqualityComparer" />
    ///  对象。
    ///</summary>
    ///  <param name="equalityComparer"><see cref="T:System.Collections.IEqualityComparer" />
    ///  对象，用于确定两个键是否相等，并为集合中的键生成哈希代码。
    ///</param>
    {class} function init(equalityComparer: DDN.mscorlib.DNIEqualityComparer): DNNameValueCollection; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空、具有指定的初始容量并使用指定的 <see cref="T:System.Collections.IEqualityComparer" />
    ///  对象。
    ///</summary>
    ///  <param name="capacity"><see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  对象可包含的初始项数。
    ///</param>
    ///  <param name="equalityComparer"><see cref="T:System.Collections.IEqualityComparer" />
    ///  对象，用于确定两个键是否相等，并为集合中的键生成哈希代码。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity" />
    ///  小于零。
    ///</exception>
    {class} function init(capacity: Int32; equalityComparer: DDN.mscorlib.DNIEqualityComparer): DNNameValueCollection; overload;
    ///<summary>
    ///  将项从指定的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制到一个新的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  ，这个新集合使用指定的初始容量或与具有与复制的项数相等的初始容量（两者中较大的一个），并使用不区分大小写的默认哈希代码提供程序和不区分大小写的默认比较器。
    ///</summary>
    ///  <param name="capacity"><see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  可包含的初始项数。
    ///</param>
    ///  <param name="col">
    ///  要复制到新 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  实例的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="col" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(capacity: Int32; col: DNNameValueCollection): DNNameValueCollection; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  类的新实例，该实例为空且具有指定的初始容量，并使用指定的哈希代码提供程序和指定的比较器。
    ///</summary>
    ///  <param name="capacity"><see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  可包含的初始项数。
    ///</param>
    ///  <param name="hashProvider"><see cref="T:System.Collections.IHashCodeProvider" />
    ///  将为 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的所有键提供哈希代码。
    ///</param>
    ///  <param name="comparer"><see cref="T:System.Collections.IComparer" />
    ///  ，用于确定两个键是否相等。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="capacity" />
    ///  小于零。
    ///</exception>
    {class} function init(capacity: Int32; hashProvider: DDN.mscorlib.DNIHashCodeProvider; comparer: DDN.mscorlib.DNIComparer): DNNameValueCollection; overload;

  end;

  ///<summary>
  ///  表示可通过键或索引访问的关联 <see cref="T:System.String" />
  ///  键和 <see cref="T:System.String" />
  ///  值的集合。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.NameValueCollection')]
  DNNameValueCollection = interface(DNObject)
  ['{AA01B7E8-9A70-3252-B321-4D5D85FDEF2C}']
  { getters & setters } 

    function get_Item(name: string): string; overload;
    procedure set_Item(name: string; value: string);
    function get_Item(index: Int32): string; overload;
    function get_AllKeys: TArray<string>;
    function get_Count: Int32;
    function get_Keys: DNKeysCollection;

  { methods } 

    ///<summary>
    ///  将指定 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的项复制到当前 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</summary>
    ///  <param name="c">
    ///  要复制到当前 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="c" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(c: DNNameValueCollection); overload;
    ///<summary>
    ///  使缓存数组无效，并将所有项从 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中移除。
    ///</summary>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Clear;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  是否包含非 <see langword="null" />
    ///  的键。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  包含非 <see langword="null" />
    ///  的键，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function HasKeys: Boolean;
    ///<summary>
    ///  将具有指定名称和值的项添加到 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  要添加的项的 <see cref="T:System.String" />
    ///  键。
    ///  键可以是 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="value">
    ///  要添加的项的 <see cref="T:System.String" />
    ///  值。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Add(name: string; value: string); overload;
    ///<summary>
    ///  获取与 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的指定键关联的值，这些值已合并为一个以逗号分隔的列表。
    ///</summary>
    ///  <param name="name">
    ///  项的 <see cref="T:System.String" />
    ///  键，该项包含要获取的值。
    ///  键可以是 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果找到，则为一个 <see cref="T:System.String" />
    ///  ，包含与 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的指定键关联的值的列表（此列表以逗号分隔）；否则为 <see langword="null" />
    ///  。
    ///</returns>
    function Get(name: string): string; overload;
    ///<summary>
    ///  获取与 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的指定键关联的值。
    ///</summary>
    ///  <param name="name">
    ///  项的 <see cref="T:System.String" />
    ///  键，该项包含要获取的值。
    ///  键可以是 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果找到，则为一个 <see cref="T:System.String" />
    ///  数组，包含与 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的指定键关联的值；否则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetValues(name: string): TArray<string>; overload;
    ///<summary>
    ///  设置 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中某个项的值。
    ///</summary>
    ///  <param name="name">
    ///  要向其添加新值的项的 <see cref="T:System.String" />
    ///  键。
    ///  键可以是 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="value"><see cref="T:System.Object" />
    ///  ，表示要添加到指定项的新值。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure &Set(name: string; value: string);
    ///<summary>
    ///  移除 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例中具有指定键的项。
    ///</summary>
    ///  <param name="name">
    ///  要移除的项的 <see cref="T:System.String" />
    ///  键。
    ///  键可以是 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Remove(name: string);
    ///<summary>
    ///  获取 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中指定索引处的值，这些值已合并为一个以逗号分隔的列表。
    ///</summary>
    ///  <param name="index">
    ///  项的从零开始的索引，该项包含要从集合中获取的值。
    ///</param>
    ///<returns>
    ///  如果找到，则为一个 <see cref="T:System.String" />
    ///  ，包含 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中指定索引处的值的列表（此列表以逗号分隔）；否则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  超出了集合的有效索引范围。
    ///</exception>
    function Get(index: Int32): string; overload;
    ///<summary>
    ///  获取 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中指定索引处的值。
    ///</summary>
    ///  <param name="index">
    ///  项的从零开始的索引，该项包含要从集合中获取的值。
    ///</param>
    ///<returns>
    ///  如果找到，则为一个 <see cref="T:System.String" />
    ///  数组，包含 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中指定索引处的值；否则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  超出了集合的有效索引范围。
    ///</exception>
    function GetValues(index: Int32): TArray<string>; overload;
    ///<summary>
    ///  获取 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  的指定索引处的键。
    ///</summary>
    ///  <param name="index">
    ///  要从集合中获取的从零开始的键索引。
    ///</param>
    ///<returns>
    ///  如果找到，则为一个 <see cref="T:System.String" />
    ///  ，包含 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中指定索引处的键；否则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  超出了集合的有效索引范围。
    ///</exception>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  从目标数组的指定索引处开始将整个 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制到兼容的一维 <see cref="T:System.Array" />
    ///  。
    ///</summary>
    ///  <param name="dest">
    ///  一维 <see cref="T:System.Array" />
    ///  ，它是从 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制的元素的目标。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="dest" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="dest" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="dest" />
    ///  是多维的。
    ///  - 或 -
    ///  源中的元素数目 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="dest" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  源类型 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  无法自动转换为目标类型 <paramref name="dest" />
    ///  。
    ///</exception>
    procedure CopyTo(dest: DDN.mscorlib.DNArray; index: Int32);
    ///<summary>
    ///  返回循环访问 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例的 <see cref="T:System.Collections.IEnumerator" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  实现 <see cref="T:System.Runtime.Serialization.ISerializable" />
    ///  接口，并返回序列化 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例所需的数据。
    ///</summary>
    ///  <param name="info"><see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象，该对象包含序列化 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例所需的信息。
    ///</param>
    ///  <param name="context"><see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象，该对象包含与 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例关联的序列化流的源和目标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="info" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  实现 <see cref="T:System.Runtime.Serialization.ISerializable" />
    ///  接口，并在完成反序列化之后引发反序列化事件。
    ///</summary>
    ///  <param name="sender">
    ///  反序列化事件源。
    ///</param>
    ///<exception cref="T:System.Runtime.Serialization.SerializationException"><see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  关联与当前对象 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例无效。
    ///</exception>
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: string read get_Item write set_Item; default;
    property Item[index: Int32]: string read get_Item; default;
    ///<summary>
    ///  获取 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的所有键。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  数组，包含 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的所有键。
    ///</returns>
    property AllKeys: TArray<string> read get_AllKeys;
    ///<summary>
    ///  获取包含在 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例中的键/值对的数目。
    ///</summary>
    ///<returns>
    ///  包含在 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例中的键/值对的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  实例，该实例包含 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例中的所有键。
    ///</summary>
    ///<returns><see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  实例，该实例包含 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase" />
    ///  实例中的所有键。
    ///</returns>
    property Keys: DNKeysCollection read get_Keys;
  end;

  TDNNameValueCollection = class(TDNGenericImport<DNNameValueCollectionClass, DNNameValueCollection>) end;

  //-------------namespace: System.Net----------------
  DNWebHeaderCollectionClass = interface(DNNameValueCollectionClass)
  ['{61575522-2A63-5D65-B1E7-524CA859D619}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.WebHeaderCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNWebHeaderCollection;

  { static methods } 

    ///<summary>
    ///  测试是否能够为请求设置指定的 HTTP 标头。
    ///</summary>
    ///  <param name="headerName">
    ///  要测试的标头。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果标头是受限制;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="headerName" />
    ///  是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="headerName" />
    ///  包含无效字符。
    ///</exception>
    {class} function IsRestricted(headerName: string): Boolean; overload;
    ///<summary>
    ///  测试是否能够为请求或响应设置指定的 HTTP 标头。
    ///</summary>
    ///  <param name="headerName">
    ///  要测试的标头。
    ///</param>
    ///  <param name="response">
    ///  Framework 是否测试响应或请求？
    ///</param>
    ///<returns><see langword="true" />
    ///  如果标头是受限制;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="headerName" />
    ///  是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="headerName" />
    ///  包含无效字符。
    ///</exception>
    {class} function IsRestricted(headerName: string; response: Boolean): Boolean; overload;

  end;

  ///<summary>
  ///  包含与请求或响应关联的协议标头。
  ///</summary>
  [DNTypeName('System.Net.WebHeaderCollection')]
  DNWebHeaderCollection = interface(DNNameValueCollection)
  ['{430D1273-C3E9-3632-9988-389C81849C00}']
  { getters & setters } 

    function get_Item(header: DNHttpRequestHeader): string; overload;
    procedure set_Item(header: DNHttpRequestHeader; value: string); overload;
    function get_Item(header: DNHttpResponseHeader): string; overload;
    procedure set_Item(header: DNHttpResponseHeader; value: string); overload;
    function get_Count: Int32;
    function get_Keys: DNKeysCollection;
    function get_AllKeys: TArray<string>;
    function get_Item(name: string): string; overload;
    procedure set_Item(name: string; value: string); overload;
    function get_Item(index: Int32): string; overload;

  { methods } 

    ///<summary>
    ///  将包含指定值的指定标头插入到集合中。
    ///</summary>
    ///  <param name="header">
    ///  要添加到集合中的标头。
    ///</param>
    ///  <param name="value">
    ///  标头的内容。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许 <see cref="T:System.Net.HttpRequestHeader" />
    ///  的实例。
    ///</exception>
    procedure Add(header: DNHttpRequestHeader; value: string); overload;
    ///<summary>
    ///  将指定的标头设置为指定的值。
    ///</summary>
    ///  <param name="header">
    ///  要设置的 <see cref="T:System.Net.HttpRequestHeader" />
    ///  值。
    ///</param>
    ///  <param name="value">
    ///  要设置的标头内容。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许 <see cref="T:System.Net.HttpRequestHeader" />
    ///  的实例。
    ///</exception>
    procedure &Set(header: DNHttpRequestHeader; value: string); overload;
    ///<summary>
    ///  从集合中移除指定的标头。
    ///</summary>
    ///  <param name="header"><see cref="T:System.Net.HttpRequestHeader" />
    ///  要从集合中移除实例。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许 <see cref="T:System.Net.HttpRequestHeader" />
    ///  的实例。
    ///</exception>
    procedure Remove(header: DNHttpRequestHeader); overload;
    ///<summary>
    ///  从集合中移除指定的标头。
    ///</summary>
    ///  <param name="header"><see cref="T:System.Net.HttpResponseHeader" />
    ///  要从集合中移除实例。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许 <see cref="T:System.Net.HttpResponseHeader" />
    ///  的实例。
    ///</exception>
    procedure Remove(header: DNHttpResponseHeader); overload;
    ///<summary>
    ///  从集合中移除指定的标头。
    ///</summary>
    ///  <param name="name">
    ///  要从集合中移除的标头名称。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="name" />
    ///  为 <see langword="null" />
    ///<see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  是受限制的标头。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  包含无效字符。
    ///</exception>
    procedure Remove(name: string); overload;
    ///<summary>
    ///  此方法已过时。
    ///</summary>
    ///<returns>
    ///  该集合的 <see cref="T:System.String" />
    ///  表示形式。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  将转换 <see cref="T:System.Net.WebHeaderCollection" />
    ///  到字节数组...
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Byte" />
    ///  保存标头集合的数组。
    ///</returns>
    function ToByteArray: TArray<Byte>;
    ///<summary>
    ///  实现 <see cref="T:System.Runtime.Serialization.ISerializable" />
    ///  接口，并在完成反序列化之后引发反序列化事件。
    ///</summary>
    ///  <param name="sender">
    ///  反序列化事件源。
    ///</param>
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    ///<summary>
    ///  获取集合中特定标头的值，该值由标头名指定。
    ///</summary>
    ///  <param name="name">
    ///  Web 标头的名称。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含指定标头的值。
    ///</returns>
    function Get(name: string): string; overload;
    ///<summary>
    ///  返回可循环访问 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例的枚举器。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Net.WebHeaderCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  获取集合中特定标头的值，该值由索引指定到集合中。
    ///</summary>
    ///  <param name="index">
    ///  要从集合中获取的从零开始的键索引。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含指定标头的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  为负数。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  超出了集合的大小。
    ///</exception>
    function Get(index: Int32): string; overload;
    ///<summary>
    ///  获取标头中存储的值的数组 <paramref name="index" />
    ///  标头集合的位置。
    ///</summary>
    ///  <param name="index">
    ///  要返回的标头索引。
    ///</param>
    ///<returns>
    ///  标头字符串数组。
    ///</returns>
    function GetValues(index: Int32): TArray<string>; overload;
    ///<summary>
    ///  获取集合中位于指定位置的标头名。
    ///</summary>
    ///  <param name="index">
    ///  要从集合中获取的从零开始的键索引。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  保存标头名。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  为负数。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  超出了集合的大小。
    ///</exception>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  从集合中移除所有标头。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  将包含指定值的指定标头插入到集合中。
    ///</summary>
    ///  <param name="header">
    ///  要添加到集合中的标头。
    ///</param>
    ///  <param name="value">
    ///  标头的内容。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  这 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许的实例 <see cref="T:System.Net.HttpResponseHeader" />
    ///  。
    ///</exception>
    procedure Add(header: DNHttpResponseHeader; value: string); overload;
    ///<summary>
    ///  将指定的标头设置为指定的值。
    ///</summary>
    ///  <param name="header">
    ///  要设置的 <see cref="T:System.Net.HttpResponseHeader" />
    ///  值。
    ///</param>
    ///  <param name="value">
    ///  要设置的标头内容。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  这 <see cref="T:System.Net.WebHeaderCollection" />
    ///  实例不允许的实例 <see cref="T:System.Net.HttpResponseHeader" />
    ///  。
    ///</exception>
    procedure &Set(header: DNHttpResponseHeader; value: string); overload;
    ///<summary>
    ///  将具有指定名称和值的标头插入到集合中。
    ///</summary>
    ///  <param name="name">
    ///  要添加到集合中的标头。
    ///</param>
    ///  <param name="value">
    ///  标头的内容。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  是 <see langword="null" />
    ///  , ，<see cref="F:System.String.Empty" />
    ///  , ，或包含无效字符。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  受限制的标头必须进行设置的属性将设置。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  包含无效字符。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception>
    procedure Add(name: string; value: string); overload;
    ///<summary>
    ///  将指定的标头插入集合中。
    ///</summary>
    ///  <param name="header">
    ///  要添加的标头，其名称和值用冒号分隔。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="header" />
    ///  是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="header" />
    ///  不包含冒号 （:） 字符。
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///  - 或 -
    ///  名称部分 <paramref name="header" />
    ///  是 <see cref="F:System.String.Empty" />
    ///  或包含无效字符。
    ///  - 或 -
    ///  <paramref name="header" />
    ///  是受限制的标头应设置的属性。
    ///  - 或 -
    ///  值部分 <paramref name="header" />
    ///  包含无效字符。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度大于 65535 是冒号 （:） 后的字符串。
    ///</exception>
    procedure Add(header: string); overload;
    ///<summary>
    ///  将指定的标头设置为指定的值。
    ///</summary>
    ///  <param name="name">
    ///  要设置的标头。
    ///</param>
    ///  <param name="value">
    ///  要设置的标头内容。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="name" />
    ///  是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="value" />
    ///  大于 65535。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  是受限制的标头。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  或 <paramref name="value" />
    ///  包含无效字符。
    ///</exception>
    procedure &Set(name: string; value: string); overload;
    ///<summary>
    ///  获取标头中存储的标头值数组。
    ///</summary>
    ///  <param name="header">
    ///  要返回的标头。
    ///</param>
    ///<returns>
    ///  标头字符串数组。
    ///</returns>
    function GetValues(header: string): TArray<string>; overload;
    ///<summary>
    ///  使用将目标对象序列化所需的数据填充 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  。
    ///</summary>
    ///  <param name="serializationInfo">
    ///  要填充数据的 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  。
    ///</param>
    ///  <param name="streamingContext">
    ///  用于指定该序列化的目标的 <see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  。
    ///</param>
    procedure GetObjectData(serializationInfo: DDN.mscorlib.DNSerializationInfo; streamingContext: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  将指定 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的项复制到当前 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</summary>
    ///  <param name="c">
    ///  要复制到当前 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  中的 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="c" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(c: DNNameValueCollection); overload;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  是否包含非 <see langword="null" />
    ///  的键。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  包含非 <see langword="null" />
    ///  的键，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function HasKeys: Boolean;
    ///<summary>
    ///  从目标数组的指定索引处开始将整个 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制到兼容的一维 <see cref="T:System.Array" />
    ///  。
    ///</summary>
    ///  <param name="dest">
    ///  一维 <see cref="T:System.Array" />
    ///  ，它是从 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  复制的元素的目标。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="dest" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="dest" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="dest" />
    ///  是多维的。
    ///  - 或 -
    ///  源中的元素数目 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="dest" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  源类型 <see cref="T:System.Collections.Specialized.NameValueCollection" />
    ///  无法自动转换为目标类型 <paramref name="dest" />
    ///  。
    ///</exception>
    procedure CopyTo(dest: DDN.mscorlib.DNArray; index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Item[header: DNHttpRequestHeader]: string read get_Item write set_Item; default;
    property Item[header: DNHttpResponseHeader]: string read get_Item write set_Item; default;
    ///<summary>
    ///  获取集合中的标头数。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  ，指示请求中的标头数。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取集合中的标头名（关键字）的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.Specialized.NameObjectCollectionBase.KeysCollection" />
    ///  包含 Web 请求中的所有标头名称。
    ///</returns>
    property Keys: DNKeysCollection read get_Keys;
    ///<summary>
    ///  获取集合中的所有标头名（关键字）。
    ///</summary>
    ///<returns>
    ///  包含 Web 请求中所有标头名的 <see cref="T:System.String" />
    ///  类型的数组。
    ///</returns>
    property AllKeys: TArray<string> read get_AllKeys;
    property Item[name: string]: string read get_Item write set_Item; default;
    property Item[index: Int32]: string read get_Item; default;
  end;

  TDNWebHeaderCollection = class(TDNGenericImport<DNWebHeaderCollectionClass, DNWebHeaderCollection>) end;

  //-------------namespace: System.Net----------------
  DNBindIPEndPointClass = interface(DDN.mscorlib.DNMulticastDelegateClass)
  ['{9ABED677-50DA-5541-A326-F75CB53F8B03}']
  { constructors } 

    {class} function init(&object: DDN.mscorlib.DNObject; method: IntPtr): DNBindIPEndPoint;

  end;

  ///<summary>
  ///  表示指定的本地 Internet 协议地址和端口号的方法 <see cref="T:System.Net.ServicePoint" />
  ///  。
  ///</summary>
  ///  <param name="servicePoint"><see cref="T:System.Net.ServicePoint" />
  ///  与要创建的连接关联。
  ///</param>
  ///  <param name="remoteEndPoint">
  ///  远程 <see cref="T:System.Net.IPEndPoint" />
  ///  指定远程主机。
  ///</param>
  ///  <param name="retryCount">
  ///  此委托曾为指定的连接的次数。
  ///</param>
  ///<returns>
  ///  本地 <see cref="T:System.Net.IPEndPoint" />
  ///  到 <see cref="T:System.Net.ServicePoint" />
  ///  绑定。
  ///</returns>
  ///<exception cref="T:System.OverflowException"><paramref name="retryCount" />
  ///  等于 <see cref="F:System.Int32.MaxValue" />
  ///</exception>
  [DNTypeName('System.Net.BindIPEndPoint')]
  DNBindIPEndPoint = interface(DDN.mscorlib.DNMulticastDelegate)
  ['{C76C70EE-B322-3055-A34C-5538E3260F82}']
  { getters & setters } 

    function get_Method: DDN.mscorlib.DNMethodInfo;
    function get_Target: DDN.mscorlib.DNObject;

  { methods } 

    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetInvocationList: TArray<DDN.mscorlib.DNDelegate>;
    function GetHashCode: Int32;
    function DynamicInvoke(args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function Clone: DDN.mscorlib.DNObject;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Method: DDN.mscorlib.DNMethodInfo read get_Method;
    property Target: DDN.mscorlib.DNObject read get_Target;
  end;

  TDNBindIPEndPoint = class(TDNGenericImport<DNBindIPEndPointClass, DNBindIPEndPoint>) end;

  //-------------namespace: System.Net----------------
  DNHttpContinueDelegateClass = interface(DDN.mscorlib.DNMulticastDelegateClass)
  ['{1E9DF363-946C-5E70-B4B8-7CF98486F3C5}']
  { constructors } 

    {class} function init(&object: DDN.mscorlib.DNObject; method: IntPtr): DNHttpContinueDelegate;

  end;

  ///<summary>
  ///  表示由客户端收到继续响应时通知调用方的方法。
  ///</summary>
  ///  <param name="StatusCode">
  ///  从服务器的 HTTP 状态的数值。
  ///</param>
  ///  <param name="httpHeaders">
  ///  使用了返回的标头-继续来自服务器的响应。
  ///</param>
  [DNTypeName('System.Net.HttpContinueDelegate')]
  DNHttpContinueDelegate = interface(DDN.mscorlib.DNMulticastDelegate)
  ['{A6F6E693-C8BB-3C11-AD9D-6C88382BF1AB}']
  { getters & setters } 

    function get_Method: DDN.mscorlib.DNMethodInfo;
    function get_Target: DDN.mscorlib.DNObject;

  { methods } 

    procedure Invoke(StatusCode: Int32; httpHeaders: DNWebHeaderCollection);
    function BeginInvoke(StatusCode: Int32; httpHeaders: DNWebHeaderCollection; callback: DDN.mscorlib.DNAsyncCallback; &object: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    procedure EndInvoke(result: DDN.mscorlib.DNIAsyncResult);
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetInvocationList: TArray<DDN.mscorlib.DNDelegate>;
    function GetHashCode: Int32;
    function DynamicInvoke(args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function Clone: DDN.mscorlib.DNObject;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Method: DDN.mscorlib.DNMethodInfo read get_Method;
    property Target: DDN.mscorlib.DNObject read get_Target;
  end;

  TDNHttpContinueDelegate = class(TDNGenericImport<DNHttpContinueDelegateClass, DNHttpContinueDelegate>) end;

  //-------------namespace: System.Net.Security----------------
  DNRemoteCertificateValidationCallbackClass = interface(DDN.mscorlib.DNMulticastDelegateClass)
  ['{75DC519A-02CB-539A-BFB8-15964ACEF465}']
  { constructors } 

    {class} function init(&object: DDN.mscorlib.DNObject; method: IntPtr): DNRemoteCertificateValidationCallback;

  end;

  ///<summary>
  ///  验证用于进行身份验证的远程安全套接字层 (SSL) 证书。
  ///</summary>
  ///  <param name="sender">
  ///  一个包含此验证的状态信息的对象。
  ///</param>
  ///  <param name="certificate">
  ///  用于对远程方进行身份验证的证书。
  ///</param>
  ///  <param name="chain">
  ///  与远程证书相关联的证书颁发机构链。
  ///</param>
  ///  <param name="sslPolicyErrors">
  ///  与远程证书关联的一个或多个错误。
  ///</param>
  ///<returns>
  ///  一个 <see cref="T:System.Boolean" />
  ///  值，该值确定是否进行身份验证接受指定的证书。
  ///</returns>
  [DNTypeName('System.Net.Security.RemoteCertificateValidationCallback')]
  DNRemoteCertificateValidationCallback = interface(DDN.mscorlib.DNMulticastDelegate)
  ['{08235C43-74A8-3146-AB9C-0FBE96DF5F15}']
  { getters & setters } 

    function get_Method: DDN.mscorlib.DNMethodInfo;
    function get_Target: DDN.mscorlib.DNObject;

  { methods } 

    function Invoke(sender: DDN.mscorlib.DNObject; certificate: DDN.mscorlib.DNX509Certificate; chain: DNX509Chain; sslPolicyErrors: DNSslPolicyErrors): Boolean;
    function BeginInvoke(sender: DDN.mscorlib.DNObject; certificate: DDN.mscorlib.DNX509Certificate; chain: DNX509Chain; sslPolicyErrors: DNSslPolicyErrors; callback: DDN.mscorlib.DNAsyncCallback; &object: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    function EndInvoke(result: DDN.mscorlib.DNIAsyncResult): Boolean;
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetInvocationList: TArray<DDN.mscorlib.DNDelegate>;
    function GetHashCode: Int32;
    function DynamicInvoke(args: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function Clone: DDN.mscorlib.DNObject;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Method: DDN.mscorlib.DNMethodInfo read get_Method;
    property Target: DDN.mscorlib.DNObject read get_Target;
  end;

  TDNRemoteCertificateValidationCallback = class(TDNGenericImport<DNRemoteCertificateValidationCallbackClass, DNRemoteCertificateValidationCallback>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNImageFormatClass = interface(DDN.mscorlib.DNObjectClass)
  ['{25FC6ED2-3943-578C-9A01-211CB8B0A6F6}']
  { static getter & setter } 

    {class} function get_MemoryBmp: DNImageFormat;
    {class} function get_Bmp: DNImageFormat;
    {class} function get_Emf: DNImageFormat;
    {class} function get_Wmf: DNImageFormat;
    {class} function get_Gif: DNImageFormat;
    {class} function get_Jpeg: DNImageFormat;
    {class} function get_Png: DNImageFormat;
    {class} function get_Tiff: DNImageFormat;
    {class} function get_Exif: DNImageFormat;
    {class} function get_Icon: DNImageFormat;

  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  使用指定的类 <see cref="T:System.Guid" />
    ///  结构。
    ///</summary>
    ///  <param name="guid"><see cref="T:System.Guid" />
    ///  结构，它指定特定图像格式。
    ///</param>
    {class} function init(guid: DDN.mscorlib.DNGuid): DNImageFormat;

  { static propertys } 

    ///<summary>
    ///  获取在内存中的位图的格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示在内存中的位图的格式。
    ///</returns>
    {class} property MemoryBmp: DNImageFormat read get_MemoryBmp;
    ///<summary>
    ///  获取位图 (BMP) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示位图图像格式。
    ///</returns>
    {class} property Bmp: DNImageFormat read get_Bmp;
    ///<summary>
    ///  获取增强型图元文件 (EMF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示增强型图元文件图像格式。
    ///</returns>
    {class} property Emf: DNImageFormat read get_Emf;
    ///<summary>
    ///  获取 Windows 图元文件 (WMF) 映像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Windows 图元文件图像格式。
    ///</returns>
    {class} property Wmf: DNImageFormat read get_Wmf;
    ///<summary>
    ///  获取图形交换格式 (GIF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 GIF 图像格式。
    ///</returns>
    {class} property Gif: DNImageFormat read get_Gif;
    ///<summary>
    ///  获取联合图像专家组 (JPEG) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 JPEG 图像格式。
    ///</returns>
    {class} property Jpeg: DNImageFormat read get_Jpeg;
    ///<summary>
    ///  获取 W3C 可移植网络图形 (PNG) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 PNG 图像格式。
    ///</returns>
    {class} property Png: DNImageFormat read get_Png;
    ///<summary>
    ///  获取标记图像文件格式 (TIFF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 TIFF 图像格式。
    ///</returns>
    {class} property Tiff: DNImageFormat read get_Tiff;
    ///<summary>
    ///  获取可交换图像文件 (Exif) 格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Exif 格式。
    ///</returns>
    {class} property Exif: DNImageFormat read get_Exif;
    ///<summary>
    ///  获取 Windows 图标图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Windows 图标图像格式。
    ///</returns>
    {class} property Icon: DNImageFormat read get_Icon;
  end;

  ///<summary>
  ///  指定图像文件格式。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ImageFormat')]
  DNImageFormat = interface(DDN.mscorlib.DNObject)
  ['{EBB52948-9B23-3FA2-A8D3-F339D076BDA1}']
  { getters & setters } 

    function get_Guid: DDN.mscorlib.DNGuid;

  { methods } 

    ///<summary>
    ///  返回一个值，该值指示指定的对象是否为 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它等效于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</summary>
    ///  <param name="o">
    ///  要测试的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="o" />
    ///  是 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它等效于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(o: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回一个表示此对象的哈希代码值。
    ///</summary>
    ///<returns>
    ///  表示此对象哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象转换为可读的字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Guid" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Guid" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</returns>
    property Guid: DDN.mscorlib.DNGuid read get_Guid;
  end;

  TDNImageFormat = class(TDNGenericImport<DNImageFormatClass, DNImageFormat>) end;

  //-------------namespace: System.Net----------------
  DNWebRequestClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{A893EED0-681F-5C7D-867A-C623F651184B}']
  { static getter & setter } 

    {class} function get_DefaultCachePolicy: DNRequestCachePolicy;
    {class} procedure set_DefaultCachePolicy(value: DNRequestCachePolicy);
    {class} function get_DefaultWebProxy: DNIWebProxy;
    {class} procedure set_DefaultWebProxy(value: DNIWebProxy);

  { static methods } 

    ///<summary>
    ///  注册 <see cref="T:System.Net.IWebRequestCreate" />
    ///  对象。
    ///</summary>
    ///  <param name="creator">
    ///  要注册的 <see cref="T:System.Net.IWebRequestCreate" />
    ///  对象。
    ///</param>
    {class} procedure RegisterPortableWebRequestCreator(creator: DNIWebRequestCreate);
    ///<summary>
    ///  为指定的 URI 方案初始化新的 <see cref="T:System.Net.WebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="requestUriString">
    ///  标识 Internet 资源的 URI。
    ///</param>
    ///<returns>
    ///  特定 URI 方案的 <see cref="T:System.Net.WebRequest" />
    ///  子代。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException"><paramref name="requestUriString" />
    ///  中指定的请求方案尚未注册。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="requestUriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有连接到请求的 URI 或请求重定向到的 URI 的权限。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在适用于 Windows 应用商店应用的 .NET 或可移植类库中，改为捕获基类异常 <see cref="T:System.FormatException" />
    ///  。
    ///  <paramref name="requestUriString" />
    ///  中指定的 URI 不是有效的 URI。
    ///</exception>
    {class} function Create(requestUriString: string): DNWebRequest; overload;
    ///<summary>
    ///  为指定的 URI 方案初始化新的 <see cref="T:System.Net.WebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="requestUri">
    ///  包含请求的资源的 URI 的 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///<returns>
    ///  指定的 URI 方案的 <see cref="T:System.Net.WebRequest" />
    ///  子代。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  中指定的请求方案 <paramref name="requestUri" />
    ///  未注册。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="requestUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有权限来连接到请求的 URI 或请求重定向到的 URI。
    ///</exception>
    {class} function Create(requestUri: DNUri): DNWebRequest; overload;
    ///<summary>
    ///  为指定的 URI 方案初始化新的 <see cref="T:System.Net.WebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="requestUri">
    ///  包含请求的资源的 URI 的 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///<returns>
    ///  指定的 URI 方案的 <see cref="T:System.Net.WebRequest" />
    ///  子代。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  中指定的请求方案 <paramref name="requestUri" />
    ///  未注册。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="requestUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有权限来连接到请求的 URI 或请求重定向到的 URI。
    ///</exception>
    {class} function CreateDefault(requestUri: DNUri): DNWebRequest;
    ///<summary>
    ///  为指定的 URI 字符串初始化新的 <see cref="T:System.Net.HttpWebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="requestUriString">
    ///  标识 Internet 资源的 URI 字符串。
    ///</param>
    ///<returns>
    ///  返回 <see cref="T:System.Net.HttpWebRequest" />
    ///  。
    ///  特定 URI 字符串的 <see cref="T:System.Net.HttpWebRequest" />
    ///  实例。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  中指定的请求方案 <paramref name="requestUriString" />
    ///  是 http 或 https 方案。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="requestUriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有权限来连接到请求的 URI 或请求重定向到的 URI。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在指定的 URI <paramref name="requestUriString" />
    ///  不是有效的 URI。
    ///</exception>
    {class} function CreateHttp(requestUriString: string): DNHttpWebRequest; overload;
    ///<summary>
    ///  为指定的 URI 初始化新的 <see cref="T:System.Net.HttpWebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="requestUri">
    ///  标识 Internet 资源的 URI。
    ///</param>
    ///<returns>
    ///  返回 <see cref="T:System.Net.HttpWebRequest" />
    ///  。
    ///  特定 URI 字符串的 <see cref="T:System.Net.HttpWebRequest" />
    ///  实例。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  中指定的请求方案 <paramref name="requestUri" />
    ///  是 http 或 https 方案。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="requestUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有权限来连接到请求的 URI 或请求重定向到的 URI。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在指定的 URI <paramref name="requestUri" />
    ///  不是有效的 URI。
    ///</exception>
    {class} function CreateHttp(requestUri: DNUri): DNHttpWebRequest; overload;
    ///<summary>
    ///  为指定的 URI 注册 <see cref="T:System.Net.WebRequest" />
    ///  子代。
    ///</summary>
    ///  <param name="prefix"><see cref="T:System.Net.WebRequest" />
    ///  子代为其提供服务的完整 URI 或 URI 前缀。
    ///</param>
    ///  <param name="creator">
    ///  创建方法，<see cref="T:System.Net.WebRequest" />
    ///  调用它以创建 <see cref="T:System.Net.WebRequest" />
    ///  子代。
    ///</param>
    ///<returns>
    ///  如果注册成功，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="prefix" />
    ///  为 <see langword="null" />
    ///  - 或 -
    ///  <paramref name="creator" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function RegisterPrefix(prefix: string; creator: DNIWebRequestCreate): Boolean;
    ///<summary>
    ///  返回当前模拟用户的 Internet Explorer 设置中配置的代理。
    ///</summary>
    ///<returns>
    ///  对 <see cref="T:System.Net.WebRequest" />
    ///  实例的每一次调用所使用的 <see cref="T:System.Net.IWebProxy" />
    ///  。
    ///</returns>
    {class} function GetSystemWebProxy: DNIWebProxy;

  { static propertys } 

    ///<summary>
    ///  获取或设置此请求的默认缓存策略。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Net.Cache.HttpRequestCachePolicy" />
    ///  ，它指定当没有其他策略适用时对此请求有效的缓存策略。
    ///</returns>
    {class} property DefaultCachePolicy: DNRequestCachePolicy read get_DefaultCachePolicy write set_DefaultCachePolicy;
    ///<summary>
    ///  获取或设置全局 HTTP 代理。
    ///</summary>
    ///<returns>
    ///  对 <see cref="T:System.Net.WebRequest" />
    ///  实例的每一次调用所使用的 <see cref="T:System.Net.IWebProxy" />
    ///  。
    ///</returns>
    {class} property DefaultWebProxy: DNIWebProxy read get_DefaultWebProxy write set_DefaultWebProxy;
  end;

  ///<summary>
  ///  对统一资源标识符 (URI) 发出请求。
  ///  这是一个 <see langword="abstract" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Net.WebRequest')]
  DNWebRequest = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{B27539AB-FAD9-3CB2-BAB5-BC9F492C5C2F}']
  { getters & setters } 

    function get_CreatorInstance: DNIWebRequestCreate;
    function get_CachePolicy: DNRequestCachePolicy;
    procedure set_CachePolicy(value: DNRequestCachePolicy);
    function get_Method: string;
    procedure set_Method(value: string);
    function get_RequestUri: DNUri;
    function get_ConnectionGroupName: string;
    procedure set_ConnectionGroupName(value: string);
    function get_Headers: DNWebHeaderCollection;
    procedure set_Headers(value: DNWebHeaderCollection);
    function get_ContentLength: Int64;
    procedure set_ContentLength(value: Int64);
    function get_ContentType: string;
    procedure set_ContentType(value: string);
    function get_Credentials: DNICredentials;
    procedure set_Credentials(value: DNICredentials);
    function get_UseDefaultCredentials: Boolean;
    procedure set_UseDefaultCredentials(value: Boolean);
    function get_Proxy: DNIWebProxy;
    procedure set_Proxy(value: DNIWebProxy);
    function get_PreAuthenticate: Boolean;
    procedure set_PreAuthenticate(value: Boolean);
    function get_Timeout: Int32;
    procedure set_Timeout(value: Int32);
    function get_AuthenticationLevel: DNAuthenticationLevel;
    procedure set_AuthenticationLevel(value: DNAuthenticationLevel);
    function get_ImpersonationLevel: DDN.mscorlib.DNTokenImpersonationLevel;
    procedure set_ImpersonationLevel(value: DDN.mscorlib.DNTokenImpersonationLevel);

  { methods } 

    ///<summary>
    ///  当在子类中重写时，返回用于将数据写入 Internet 资源的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</summary>
    ///<returns>
    ///  用于将数据写入 Internet 资源的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function GetRequestStream: DDN.mscorlib.DNStream;
    ///<summary>
    ///  当在子类中被重写时，返回对 Internet 请求的响应。
    ///</summary>
    ///<returns>
    ///  包含对 Internet 请求的响应的 <see cref="T:System.Net.WebResponse" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function GetResponse: DNWebResponse;
    ///<summary>
    ///  当在子类中被重写时，开始对 Internet 资源的异步请求。
    ///</summary>
    ///  <param name="callback"><see cref="T:System.AsyncCallback" />
    ///  委托。
    ///</param>
    ///  <param name="state">
    ///  包含此异步请求的状态信息的对象。
    ///</param>
    ///<returns>
    ///  引用该异步请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function BeginGetResponse(callback: DDN.mscorlib.DNAsyncCallback; state: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    ///<summary>
    ///  当在子类中重写时，返回 <see cref="T:System.Net.WebResponse" />
    ///  。
    ///</summary>
    ///  <param name="asyncResult">
    ///  引用对响应的挂起请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</param>
    ///<returns>
    ///  包含对 Internet 请求的响应的 <see cref="T:System.Net.WebResponse" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function EndGetResponse(asyncResult: DDN.mscorlib.DNIAsyncResult): DNWebResponse;
    ///<summary>
    ///  当在子类中重写时，提供 <see cref="M:System.Net.WebRequest.GetRequestStream" />
    ///  方法的异步版本。
    ///</summary>
    ///  <param name="callback"><see cref="T:System.AsyncCallback" />
    ///  委托。
    ///</param>
    ///  <param name="state">
    ///  包含此异步请求的状态信息的对象。
    ///</param>
    ///<returns>
    ///  引用该异步请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function BeginGetRequestStream(callback: DDN.mscorlib.DNAsyncCallback; state: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    ///<summary>
    ///  当在子类中重写时，返回用于将数据写入 Internet 资源的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</summary>
    ///  <param name="asyncResult">
    ///  引用对流的挂起请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</param>
    ///<returns>
    ///  将数据写入的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function EndGetRequestStream(asyncResult: DDN.mscorlib.DNIAsyncResult): DDN.mscorlib.DNStream;
    ///<summary>
    ///  中止请求
    ///</summary>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    procedure &Abort;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  当在子类中重写时，获取从 <see cref="T:System.Net.IWebRequestCreate" />
    ///  类派生的工厂对象，该类用于创建为生成对指定 URI 的请求而实例化的 <see cref="T:System.Net.WebRequest" />
    ///  。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Net.IWebRequestCreate" />
    ///  。
    ///  由 <see cref="M:System.Net.IWebRequestCreate.Create(System.Uri)" />
    ///  方法返回的派生 <see cref="T:System.Net.WebRequest" />
    ///  类型。
    ///</returns>
    property CreatorInstance: DNIWebRequestCreate read get_CreatorInstance;
    ///<summary>
    ///  获取或设置此请求的缓存策略。
    ///</summary>
    ///<returns>
    ///  定义缓存策略的 <see cref="T:System.Net.Cache.RequestCachePolicy" />
    ///  对象。
    ///</returns>
    property CachePolicy: DNRequestCachePolicy read get_CachePolicy write set_CachePolicy;
    ///<summary>
    ///  当在子类中被重写时，获取或设置要在此请求中使用的协议方法。
    ///</summary>
    ///<returns>
    ///  要在此请求中使用的协议方法。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  属性不在子代类中重写，尝试获取或设置属性。
    ///</exception>
    property Method: string read get_Method write set_Method;
    ///<summary>
    ///  当在子类中被重写时，获取与请求关联的 Internet 资源的 URI。
    ///</summary>
    ///<returns>
    ///  表示与请求关联的资源的 <see cref="T:System.Uri" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property RequestUri: DNUri read get_RequestUri;
    ///<summary>
    ///  当在子类中重写时，获取或设置请求的连接组的名称。
    ///</summary>
    ///<returns>
    ///  请求的连接组的名称。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ConnectionGroupName: string read get_ConnectionGroupName write set_ConnectionGroupName;
    ///<summary>
    ///  当在子类中被重写时，获取或设置与请求关联的标头名称/值对的集合。
    ///</summary>
    ///<returns>
    ///  包含与此请求关联的标头名称/值对的 <see cref="T:System.Net.WebHeaderCollection" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property Headers: DNWebHeaderCollection read get_Headers write set_Headers;
    ///<summary>
    ///  当在子类中被重写时，获取或设置所发送的请求数据的内容长度。
    ///</summary>
    ///<returns>
    ///  发送的请求数据的字节数。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ContentLength: Int64 read get_ContentLength write set_ContentLength;
    ///<summary>
    ///  当在子类中被重写时，获取或设置所发送的请求数据的内容类型。
    ///</summary>
    ///<returns>
    ///  请求数据的内容类型。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ContentType: string read get_ContentType write set_ContentType;
    ///<summary>
    ///  当在子类中被重写时，获取或设置用于对 Internet 资源请求进行身份验证的网络凭据。
    ///</summary>
    ///<returns>
    ///  包含与该请求关联的身份验证凭据的 <see cref="T:System.Net.ICredentials" />
    ///  。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property Credentials: DNICredentials read get_Credentials write set_Credentials;
    ///<summary>
    ///  当在子代类中重写时，获取或设置一个 <see cref="T:System.Boolean" />
    ///  值，该值控制 <see cref="P:System.Net.CredentialCache.DefaultCredentials" />
    ///  是否随请求一起发送。
    ///</summary>
    ///<returns>
    ///  如果使用默认凭据，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  你试图在发送请求后设置该属性。
    ///</exception><exception cref="T:System.NotImplementedException">
    ///  任何尝试访问该属性不在子代类中重写该属性时。
    ///</exception>
    property UseDefaultCredentials: Boolean read get_UseDefaultCredentials write set_UseDefaultCredentials;
    ///<summary>
    ///  当在子类中被重写时，获取或设置用于访问此 Internet 资源的网络代理。
    ///</summary>
    ///<returns>
    ///  用于访问 Internet 资源的 <see cref="T:System.Net.IWebProxy" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property Proxy: DNIWebProxy read get_Proxy write set_Proxy;
    ///<summary>
    ///  当在子类中被重写时，指示是否对请求进行预身份验证。
    ///</summary>
    ///<returns>
    ///  若要进行预身份验证，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property PreAuthenticate: Boolean read get_PreAuthenticate write set_PreAuthenticate;
    ///<summary>
    ///  获取或设置请求超时之前的时间长度（以毫秒为单位）。
    ///</summary>
    ///<returns>
    ///  请求超时前的时间长度（以毫秒为单位）或指示请求不超时的 <see cref="F:System.Threading.Timeout.Infinite" />
    ///  值。
    ///  默认值是由子代类定义的。
    ///</returns>
    ///<exception cref="T:System.NotImplementedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property Timeout: Int32 read get_Timeout write set_Timeout;
    ///<summary>
    ///  获取或设置用于此请求的身份验证和模拟的级别。
    ///</summary>
    ///<returns><see cref="T:System.Net.Security.AuthenticationLevel" />
    ///  值的按位组合。
    ///  默认值为 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequested" />
    ///  。
    ///  在相互身份验证中，客户端和服务器双方都出示凭据以确定其身份。
    ///<see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequired" />
    ///  和 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequested" />
    ///  值与 Kerberos 身份验证有关。
    ///  可以直接支持 Kerberos 身份验证，也可以仅在使用 Negotiate 安全协议选择实际的安全协议时使用该身份验证。
    ///  有关身份验证协议的更多信息，请参见 Internet 身份验证。
    ///  若要确定相互身份验证是否发生，请检查 <see cref="P:System.Net.WebResponse.IsMutuallyAuthenticated" />
    ///  属性。
    ///  如果你指定了 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequired" />
    ///  身份验证标志值，而未发生相互身份验证，则应用程序将收到一个带有 <see cref="T:System.Net.ProtocolViolationException" />
    ///  内部异常的 <see cref="T:System.IO.IOException" />
    ///  ，指示相互身份验证失败。
    ///</returns>
    property AuthenticationLevel: DNAuthenticationLevel read get_AuthenticationLevel write set_AuthenticationLevel;
    ///<summary>
    ///  获取或设置当前请求的模拟级别。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Security.Principal.TokenImpersonationLevel" />
    ///  值。
    ///</returns>
    property ImpersonationLevel: DDN.mscorlib.DNTokenImpersonationLevel read get_ImpersonationLevel write set_ImpersonationLevel;
  end;

  TDNWebRequest = class(TDNGenericImport<DNWebRequestClass, DNWebRequest>) end;

  //-------------namespace: System.Net----------------
  DNHttpWebRequestClass = interface(DNWebRequestClass)
  ['{68C3FA13-49E0-58F1-9BB2-51D94BE799D0}']
  { static getter & setter } 

    {class} function get_DefaultCachePolicy: DNRequestCachePolicy;
    {class} procedure set_DefaultCachePolicy(value: DNRequestCachePolicy);
    {class} function get_DefaultMaximumResponseHeadersLength: Int32;
    {class} procedure set_DefaultMaximumResponseHeadersLength(value: Int32);
    {class} function get_DefaultMaximumErrorResponseLength: Int32;
    {class} procedure set_DefaultMaximumErrorResponseLength(value: Int32);

  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.HttpWebRequest" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNHttpWebRequest;

  { static propertys } 

    ///<summary>
    ///  获取或设置此请求的默认缓存策略。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Net.Cache.HttpRequestCachePolicy" />
    ///  ，它指定当没有其他策略适用时对此请求有效的缓存策略。
    ///</returns>
    {class} property DefaultCachePolicy: DNRequestCachePolicy read get_DefaultCachePolicy write set_DefaultCachePolicy;
    ///<summary>
    ///  获取或设置 <see cref="P:System.Net.HttpWebRequest.MaximumResponseHeadersLength" />
    ///  属性的默认值。
    ///</summary>
    ///<returns>
    ///  接收的响应标头的默认最大长度，以 KB（1024 字节）为单位。
    ///  默认配置文件将此值设置为 64 KB。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  该值不等于 -1 且小于 0。
    ///</exception>
    {class} property DefaultMaximumResponseHeadersLength: Int32 read get_DefaultMaximumResponseHeadersLength write set_DefaultMaximumResponseHeadersLength;
    ///<summary>
    ///  获取或设置 HTTP 错误响应的默认最大长度。
    ///</summary>
    ///<returns>
    ///  HTTP 错误响应的默认最大长度。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  值小于 0 并且不等于 -1。
    ///</exception>
    {class} property DefaultMaximumErrorResponseLength: Int32 read get_DefaultMaximumErrorResponseLength write set_DefaultMaximumErrorResponseLength;
  end;

  ///<summary>
  ///  提供 <see cref="T:System.Net.WebRequest" />
  ///  类的 HTTP 特定的实现。
  ///</summary>
  [DNTypeName('System.Net.HttpWebRequest')]
  DNHttpWebRequest = interface(DNWebRequest)
  ['{4191AC1F-317E-354B-8F40-AE1227375046}']
  { getters & setters } 

    function get_AllowAutoRedirect: Boolean;
    procedure set_AllowAutoRedirect(value: Boolean);
    function get_AllowWriteStreamBuffering: Boolean;
    procedure set_AllowWriteStreamBuffering(value: Boolean);
    function get_AllowReadStreamBuffering: Boolean;
    procedure set_AllowReadStreamBuffering(value: Boolean);
    function get_HaveResponse: Boolean;
    function get_KeepAlive: Boolean;
    procedure set_KeepAlive(value: Boolean);
    function get_Pipelined: Boolean;
    procedure set_Pipelined(value: Boolean);
    function get_PreAuthenticate: Boolean;
    procedure set_PreAuthenticate(value: Boolean);
    function get_UnsafeAuthenticatedConnectionSharing: Boolean;
    procedure set_UnsafeAuthenticatedConnectionSharing(value: Boolean);
    function get_SendChunked: Boolean;
    procedure set_SendChunked(value: Boolean);
    function get_AutomaticDecompression: DNDecompressionMethods;
    procedure set_AutomaticDecompression(value: DNDecompressionMethods);
    function get_MaximumResponseHeadersLength: Int32;
    procedure set_MaximumResponseHeadersLength(value: Int32);
    function get_ClientCertificates: DNX509CertificateCollection;
    procedure set_ClientCertificates(value: DNX509CertificateCollection);
    function get_CookieContainer: DNCookieContainer;
    procedure set_CookieContainer(value: DNCookieContainer);
    function get_SupportsCookieContainer: Boolean;
    function get_RequestUri: DNUri;
    function get_ContentLength: Int64;
    procedure set_ContentLength(value: Int64);
    function get_Timeout: Int32;
    procedure set_Timeout(value: Int32);
    function get_ReadWriteTimeout: Int32;
    procedure set_ReadWriteTimeout(value: Int32);
    function get_ContinueTimeout: Int32;
    procedure set_ContinueTimeout(value: Int32);
    function get_Address: DNUri;
    function get_ContinueDelegate: DNHttpContinueDelegate;
    procedure set_ContinueDelegate(value: DNHttpContinueDelegate);
    function get_ServicePoint: DNServicePoint;
    function get_Host: string;
    procedure set_Host(value: string);
    function get_MaximumAutomaticRedirections: Int32;
    procedure set_MaximumAutomaticRedirections(value: Int32);
    function get_Method: string;
    procedure set_Method(value: string);
    function get_Credentials: DNICredentials;
    procedure set_Credentials(value: DNICredentials);
    function get_UseDefaultCredentials: Boolean;
    procedure set_UseDefaultCredentials(value: Boolean);
    function get_ConnectionGroupName: string;
    procedure set_ConnectionGroupName(value: string);
    function get_Headers: DNWebHeaderCollection;
    procedure set_Headers(value: DNWebHeaderCollection);
    function get_Proxy: DNIWebProxy;
    procedure set_Proxy(value: DNIWebProxy);
    function get_ProtocolVersion: DDN.mscorlib.DNVersion;
    procedure set_ProtocolVersion(value: DDN.mscorlib.DNVersion);
    function get_ContentType: string;
    procedure set_ContentType(value: string);
    function get_MediaType: string;
    procedure set_MediaType(value: string);
    function get_TransferEncoding: string;
    procedure set_TransferEncoding(value: string);
    function get_Connection: string;
    procedure set_Connection(value: string);
    function get_Accept: string;
    procedure set_Accept(value: string);
    function get_Referer: string;
    procedure set_Referer(value: string);
    function get_UserAgent: string;
    procedure set_UserAgent(value: string);
    function get_Expect: string;
    procedure set_Expect(value: string);
    function get_IfModifiedSince: DDN.mscorlib.DNDateTime;
    procedure set_IfModifiedSince(value: DDN.mscorlib.DNDateTime);
    function get_Date: DDN.mscorlib.DNDateTime;
    procedure set_Date(value: DDN.mscorlib.DNDateTime);
    function get_ServerCertificateValidationCallback: DNRemoteCertificateValidationCallback;
    procedure set_ServerCertificateValidationCallback(value: DNRemoteCertificateValidationCallback);
    function get_CreatorInstance: DNIWebRequestCreate;
    function get_CachePolicy: DNRequestCachePolicy;
    procedure set_CachePolicy(value: DNRequestCachePolicy);
    function get_AuthenticationLevel: DNAuthenticationLevel;
    procedure set_AuthenticationLevel(value: DNAuthenticationLevel);
    function get_ImpersonationLevel: DDN.mscorlib.DNTokenImpersonationLevel;
    procedure set_ImpersonationLevel(value: DDN.mscorlib.DNTokenImpersonationLevel);

  { methods } 

    ///<summary>
    ///  结束对用来写入数据的 <see cref="T:System.IO.Stream" />
    ///  对象的异步请求。
    ///</summary>
    ///  <param name="asyncResult">
    ///  对流的挂起请求。
    ///</param>
    ///<returns>
    ///  用于写入请求数据的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="asyncResult" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.IO.IOException">
    ///  请求未完成，没有可用的流。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  当前实例没有从对 <see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  的调用返回 <paramref name="asyncResult" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  以前使用 <paramref name="asyncResult" />
    ///  调用过此方法。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception>
    function EndGetRequestStream(asyncResult: DDN.mscorlib.DNIAsyncResult): DDN.mscorlib.DNStream; overload;
    ///<summary>
    ///  获取用于写入请求数据的 <see cref="T:System.IO.Stream" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  用于写入请求数据的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Net.ProtocolViolationException"><see cref="P:System.Net.HttpWebRequest.Method" />
    ///  属性为 GET 或 HEAD。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.KeepAlive" />
    ///  为 <see langword="true" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.AllowWriteStreamBuffering" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  为 -1，<see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 POST 或 PUT。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  方法被调用多次。
    ///  - 或 -
    ///  将 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  设置为一个值，且 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  请求缓存验证程序指示对此请求的响应可从缓存中提供；但是，写入数据的请求不得使用缓存。
    ///  如果你正在使用错误实现的自定义缓存验证程序，则会发生此异常。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///  - 或 -
    ///  请求的超时期限到期。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception><exception cref="T:System.ObjectDisposedException">
    ///  在 .NET Compact Framework 应用程序中，未正确获得和关闭一个内容长度为零的请求流。
    ///  有关处理零内容长度的请求的详细信息，请参阅 Network Programming in the .NET Compact Framework。
    ///</exception>
    function GetRequestStream: DDN.mscorlib.DNStream; overload;
    ///<summary>
    ///  取消对 Internet 资源的请求。
    ///</summary>
    procedure &Abort;
    ///<summary>
    ///  开始对用于写入数据的 <see cref="T:System.IO.Stream" />
    ///  对象执行异步请求。
    ///</summary>
    ///  <param name="callback"><see cref="T:System.AsyncCallback" />
    ///  委托。
    ///</param>
    ///  <param name="state">
    ///  此请求的状态对象。
    ///</param>
    ///<returns>
    ///  引用该异步请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Net.ProtocolViolationException"><see cref="P:System.Net.HttpWebRequest.Method" />
    ///  属性为 GET 或 HEAD。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.KeepAlive" />
    ///  为 <see langword="true" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.AllowWriteStreamBuffering" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  为 -1，<see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 POST 或 PUT。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  对 <see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  的前一次调用正在使用流
    ///  - 或 -
    ///  将 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  设置为一个值，且 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  。
    ///  - 或 -
    ///  线程池中线程即将耗尽。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  请求缓存验证程序指示对此请求的响应可从缓存中提供；但是，写入数据的请求不得使用缓存。
    ///  如果你正在使用错误实现的自定义缓存验证程序，则会发生此异常。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///</exception><exception cref="T:System.ObjectDisposedException">
    ///  在 .NET Compact Framework 应用程序中，未正确获得和关闭一个内容长度为零的请求流。
    ///  有关处理内容长度为零的请求的详细信息，请参阅 .NET Compact Framework 中的网络编程。
    ///</exception>
    function BeginGetRequestStream(callback: DDN.mscorlib.DNAsyncCallback; state: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    function EndGetRequestStream(asyncResult: DDN.mscorlib.DNIAsyncResult; out context: DNTransportContext): DDN.mscorlib.DNStream; overload;
    function GetRequestStream(out context: DNTransportContext): DDN.mscorlib.DNStream; overload;
    ///<summary>
    ///  开始对 Internet 资源的异步请求。
    ///</summary>
    ///  <param name="callback"><see cref="T:System.AsyncCallback" />
    ///  委托
    ///</param>
    ///  <param name="state">
    ///  此请求的状态对象。
    ///</param>
    ///<returns>
    ///  引用响应的异步请求的 <see cref="T:System.IAsyncResult" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  对 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  的上一个调用已使用该流
    ///  - 或 -
    ///  将 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  设置为一个值，且 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  。
    ///  - 或 -
    ///  线程池中线程即将耗尽。
    ///</exception><exception cref="T:System.Net.ProtocolViolationException"><see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 GET 或 HEAD，并且 <see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  大于零或 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="true" />
    ///  。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.KeepAlive" />
    ///  为 <see langword="true" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.AllowWriteStreamBuffering" />
    ///  为 <see langword="false" />
    ///  ，并且 <see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  为 -1 或者 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  ，且 <see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 POST 或 PUT。
    ///  - 或 -
    ///<see cref="T:System.Net.HttpWebRequest" />
    ///  具有实体主体，但在不调用 <see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  方法的情况下调用了 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  方法。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  大于零，但应用程序不会写入所有承诺的数据。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///</exception>
    function BeginGetResponse(callback: DDN.mscorlib.DNAsyncCallback; state: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
    ///<summary>
    ///  结束对 Internet 资源的异步请求。
    ///</summary>
    ///  <param name="asyncResult">
    ///  对响应的挂起请求。
    ///</param>
    ///<returns>
    ///  包含来自 Internet 资源的响应的 <see cref="T:System.Net.WebResponse" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="asyncResult" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  之前已使用 <paramref name="asyncResult." />
    ///  调用了此方法
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  属性大于 0，但数据尚未写入到请求流。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  当前实例没有从对 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  的调用返回 <paramref name="asyncResult" />
    ///  。
    ///</exception>
    function EndGetResponse(asyncResult: DDN.mscorlib.DNIAsyncResult): DNWebResponse;
    ///<summary>
    ///  返回来自 Internet 资源的响应。
    ///</summary>
    ///<returns>
    ///  包含来自 Internet 资源的响应的 <see cref="T:System.Net.WebResponse" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  该流已由对 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  的上一个调用使用。
    ///  - 或 -
    ///  将 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  设置为一个值，且 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  。
    ///</exception><exception cref="T:System.Net.ProtocolViolationException"><see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 GET 或 HEAD，且 <see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  大于或等于零，或 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="true" />
    ///  。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.KeepAlive" />
    ///  为 <see langword="true" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.AllowWriteStreamBuffering" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  为 -1，<see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  ，<see cref="P:System.Net.HttpWebRequest.Method" />
    ///  为 POST 或 PUT。
    ///  - 或 -
    ///<see cref="T:System.Net.HttpWebRequest" />
    ///  具有实体主体，但在不调用 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  方法的情况下调用了 <see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  方法。
    ///  - 或 -
    ///<see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  大于零，但应用程序不会写入所有承诺的数据。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  请求缓存验证程序表示对此请求的响应可从缓存中提供；但是该请求包含要发送到服务器的数据。
    ///  发送数据的请求不可使用缓存。
    ///  如果你正在使用错误实现的自定义缓存验证程序，则会发生此异常。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  之前已调用 <see cref="M:System.Net.HttpWebRequest.Abort" />
    ///  。
    ///  - 或 -
    ///  请求的超时期限到期。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception>
    function GetResponse: DNWebResponse;
    ///<summary>
    ///  向请求添加指定范围的字节范围标头。
    ///</summary>
    ///  <param name="from">
    ///  开始发送数据的位置。
    ///</param>
    ///  <param name="to">
    ///  停止发送数据的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="from" />
    ///  大于 <paramref name="to" />
    ///  - 或 -
    ///  <paramref name="from" />
    ///  或 <paramref name="to" />
    ///  小于 0。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(from: Int32; &to: Int32); overload;
    ///<summary>
    ///  向请求添加指定范围的字节范围标头。
    ///</summary>
    ///  <param name="from">
    ///  开始发送数据的位置。
    ///</param>
    ///  <param name="to">
    ///  停止发送数据的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="from" />
    ///  大于 <paramref name="to" />
    ///  - 或 -
    ///  <paramref name="from" />
    ///  或 <paramref name="to" />
    ///  小于 0。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(from: Int64; &to: Int64); overload;
    ///<summary>
    ///  向请求添加从请求数据的开始处或结束处的特定范围的字节范围标头。
    ///</summary>
    ///  <param name="range">
    ///  范围的开始点或结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(range: Int32); overload;
    ///<summary>
    ///  向请求添加从请求数据的开始处或结束处的特定范围的字节范围标头。
    ///</summary>
    ///  <param name="range">
    ///  范围的开始点或结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(range: Int64); overload;
    ///<summary>
    ///  向请求添加指定范围的范围标头。
    ///</summary>
    ///  <param name="rangeSpecifier">
    ///  范围说明。
    ///</param>
    ///  <param name="from">
    ///  开始发送数据的位置。
    ///</param>
    ///  <param name="to">
    ///  停止发送数据的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="rangeSpecifier" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="from" />
    ///  大于 <paramref name="to" />
    ///  - 或 -
    ///  <paramref name="from" />
    ///  或 <paramref name="to" />
    ///  小于 0。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(rangeSpecifier: string; from: Int32; &to: Int32); overload;
    ///<summary>
    ///  向请求添加指定范围的范围标头。
    ///</summary>
    ///  <param name="rangeSpecifier">
    ///  范围说明。
    ///</param>
    ///  <param name="from">
    ///  开始发送数据的位置。
    ///</param>
    ///  <param name="to">
    ///  停止发送数据的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="rangeSpecifier" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="from" />
    ///  大于 <paramref name="to" />
    ///  - 或 -
    ///  <paramref name="from" />
    ///  或 <paramref name="to" />
    ///  小于 0。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(rangeSpecifier: string; from: Int64; &to: Int64); overload;
    ///<summary>
    ///  向请求添加从请求数据的开始处或结束处计算的特定范围的 Range 标头。
    ///</summary>
    ///  <param name="rangeSpecifier">
    ///  范围说明。
    ///</param>
    ///  <param name="range">
    ///  范围的开始点或结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="rangeSpecifier" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(rangeSpecifier: string; range: Int32); overload;
    ///<summary>
    ///  向请求添加从请求数据的开始处或结束处计算的特定范围的 Range 标头。
    ///</summary>
    ///  <param name="rangeSpecifier">
    ///  范围说明。
    ///</param>
    ///  <param name="range">
    ///  范围的开始点或结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="rangeSpecifier" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rangeSpecifier" />
    ///  无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法添加范围标头。
    ///</exception>
    procedure AddRange(rangeSpecifier: string; range: Int64); overload;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，该值指示请求是否应跟随重定向响应。
    ///</summary>
    ///<returns>
    ///  如果请求应自动遵循来自 Internet 资源的重定向响应，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property AllowAutoRedirect: Boolean read get_AllowAutoRedirect write set_AllowAutoRedirect;
    ///<summary>
    ///  获取或设置一个值，该值指示是否对发送到 Internet 资源的数据进行缓冲处理。
    ///</summary>
    ///<returns>
    ///  如果为 <see langword="true" />
    ///  ，则允许对发送到 Internet 资源的数据进行缓冲处理；如果为 <see langword="false" />
    ///  ，则禁用缓冲处理。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property AllowWriteStreamBuffering: Boolean read get_AllowWriteStreamBuffering write set_AllowWriteStreamBuffering;
    ///<summary>
    ///  获取或设置一个值，该值指示是否对从 Internet 资源接收的数据进行缓冲处理。
    ///</summary>
    ///<returns>
    ///  如果为 <see langword="true" />
    ///  ，则对从 Internet 资源接收到的数据进行缓冲处理；否则为 <see langword="false" />
    ///  。
    ///  如果为 <see langword="true" />
    ///  ，则启用对从 Internet 资源接收的数据进行缓冲处理；如果为 <see langword="false" />
    ///  ，则禁用缓冲处理。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property AllowReadStreamBuffering: Boolean read get_AllowReadStreamBuffering write set_AllowReadStreamBuffering;
    ///<summary>
    ///  获取一个值，该值指示是否收到了来自 Internet 资源的响应。
    ///</summary>
    ///<returns>
    ///  如果接收到了响应，则为 <see langword="true" />
    ///  ，否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HaveResponse: Boolean read get_HaveResponse;
    ///<summary>
    ///  获取或设置一个值，该值指示是否与 Internet 资源建立持续型连接。
    ///</summary>
    ///<returns>
    ///  如果对 Internet 资源的请求所包含的 HTTP <see langword="Connection" />
    ///  标头带有 Keep-alive 这一值，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property KeepAlive: Boolean read get_KeepAlive write set_KeepAlive;
    ///<summary>
    ///  获取或设置一个值，该值指示是否通过管线将请求传输到 Internet 资源。
    ///</summary>
    ///<returns>
    ///  如果通过管线传输请求，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property Pipelined: Boolean read get_Pipelined write set_Pipelined;
    ///<summary>
    ///  获取或设置一个值，该值指示是否随请求发送一个 Authorization 标头。
    ///</summary>
    ///<returns>
    ///  如果在发生身份验证之后随请求一起发送 HTTP Authorization 标头，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property PreAuthenticate: Boolean read get_PreAuthenticate write set_PreAuthenticate;
    ///<summary>
    ///  获取或设置一个值，该值指示是否允许经过高速 NTLM 身份验证的连接共享。
    ///</summary>
    ///<returns><see langword="true" />
    ///  表示使经过身份验证的连接保持打开状态；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property UnsafeAuthenticatedConnectionSharing: Boolean read get_UnsafeAuthenticatedConnectionSharing write set_UnsafeAuthenticatedConnectionSharing;
    ///<summary>
    ///  获取或设置一个值，该值指示是否将数据分段发送到 Internet 资源。
    ///</summary>
    ///<returns>
    ///  如果为 <see langword="true" />
    ///  ，则将数据分段发送到 Internet 资源；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  已通过调用 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  、<see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  、<see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  或 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  方法启动请求。
    ///</exception>
    property SendChunked: Boolean read get_SendChunked write set_SendChunked;
    ///<summary>
    ///  获取或设置所使用的解压缩类型。
    ///</summary>
    ///<returns>
    ///  一个 T:System.Net.DecompressionMethods 对象，该对象指示所使用的解压缩类型。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  对象的当前状态不允许设置此属性。
    ///</exception>
    property AutomaticDecompression: DNDecompressionMethods read get_AutomaticDecompression write set_AutomaticDecompression;
    ///<summary>
    ///  获取或设置响应标头允许的最大长度。
    ///</summary>
    ///<returns>
    ///  响应标头的长度，以 KB（1024 字节）为单位。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  已提交请求后设置属性。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  值小于 0 并且不等于 -1。
    ///</exception>
    property MaximumResponseHeadersLength: Int32 read get_MaximumResponseHeadersLength write set_MaximumResponseHeadersLength;
    ///<summary>
    ///  获取或设置与此请求关联的安全证书集合。
    ///</summary>
    ///<returns><see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  ，包含与此请求关联的安全证书。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  为集运算指定的值为 <see langword="null" />
    ///  。
    ///</exception>
    property ClientCertificates: DNX509CertificateCollection read get_ClientCertificates write set_ClientCertificates;
    ///<summary>
    ///  获取或设置与此请求关联的 Cookie。
    ///</summary>
    ///<returns>
    ///  包含与此请求关联的 Cookie 的 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</returns>
    property CookieContainer: DNCookieContainer read get_CookieContainer write set_CookieContainer;
    ///<summary>
    ///  获取指示请求是否为 <see cref="T:System.Net.CookieContainer" />
    ///  提供支持的值。
    ///</summary>
    ///<returns>
    ///  如果请求为 <see cref="T:System.Net.CookieContainer" />
    ///  提供支持，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果支持 <see cref="T:System.Net.CookieContainer" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SupportsCookieContainer: Boolean read get_SupportsCookieContainer;
    ///<summary>
    ///  获取请求的原始统一资源标识符 (URI)。
    ///</summary>
    ///<returns><see cref="T:System.Uri" />
    ///  ，它包含传递给 <see cref="M:System.Net.WebRequest.Create(System.String)" />
    ///  方法的 Internet 资源的 URI。
    ///</returns>
    property RequestUri: DNUri read get_RequestUri;
    ///<summary>
    ///  获取或设置 <see langword="Content-length" />
    ///  HTTP 标头。
    ///</summary>
    ///<returns>
    ///  要发送到 Internet 资源的数据的字节数。
    ///  默认值为 -1，该值指示尚未设置该属性，并且没有要发送的请求数据。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  已通过调用 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  、<see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  、<see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  或 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  方法启动请求。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  新的 <see cref="P:System.Net.HttpWebRequest.ContentLength" />
    ///  值小于 0。
    ///</exception>
    property ContentLength: Int64 read get_ContentLength write set_ContentLength;
    ///<summary>
    ///  获取或设置 <see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  和 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  方法的超时值（以毫秒为单位）。
    ///</summary>
    ///<returns>
    ///  请求超时前等待的毫秒数。
    ///  默认值是 100,000 毫秒（100 秒）。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  指定的值是小于零，且不是 <see cref="F:System.Threading.Timeout.Infinite" />
    ///  。
    ///</exception>
    property Timeout: Int32 read get_Timeout write set_Timeout;
    ///<summary>
    ///  获取或设置写入或读取流时的超时（以毫秒为单位）。
    ///</summary>
    ///<returns>
    ///  在写入超时或读取超时之前的毫秒数。
    ///  默认值为 300,000 毫秒（5 分钟）。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  已发送请求。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  为集运算指定的值小于或等于零，且不等于 <see cref="F:System.Threading.Timeout.Infinite" />
    ///</exception>
    property ReadWriteTimeout: Int32 read get_ReadWriteTimeout write set_ReadWriteTimeout;
    ///<summary>
    ///  获取或设置在接收到来自服务器的 100-Continue 之前要等待的超时（以毫秒为单位）。
    ///</summary>
    ///<returns>
    ///  在接收到 100-Continue 之前要等待的超时（以毫秒为单位）。
    ///</returns>
    property ContinueTimeout: Int32 read get_ContinueTimeout write set_ContinueTimeout;
    ///<summary>
    ///  获取实际响应请求的 Internet 资源的统一资源标识符 (URI)。
    ///</summary>
    ///<returns>
    ///  标识实际对请求作出响应的 Internet 资源的 <see cref="T:System.Uri" />
    ///  。
    ///  默认值是供 <see cref="M:System.Net.WebRequest.Create(System.String)" />
    ///  方法用来初始化请求的 URI。
    ///</returns>
    property Address: DNUri read get_Address;
    ///<summary>
    ///  获取或设置当从 Internet 资源接收到 HTTP 100-continue 响应时调用的委托方法。
    ///</summary>
    ///<returns>
    ///  实现回调方法的委托，该方法在从 Internet 资源返回 HTTP Continue 响应时执行。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property ContinueDelegate: DNHttpContinueDelegate read get_ContinueDelegate write set_ContinueDelegate;
    ///<summary>
    ///  获取用于请求的服务点。
    ///</summary>
    ///<returns>
    ///  表示与 Internet 资源的网络连接的 <see cref="T:System.Net.ServicePoint" />
    ///  。
    ///</returns>
    property ServicePoint: DNServicePoint read get_ServicePoint;
    ///<summary>
    ///  获取或设置要在 HTTP 请求中独立于请求 URI 使用的 Host 标头值。
    ///</summary>
    ///<returns>
    ///  HTTP 请求中的 Host 标头值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  无法将 Host 标头设置为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  无法将 Host 标头设置为无效值。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  无法在已开始发送 <see cref="T:System.Net.HttpWebRequest" />
    ///  之后设置 Host 标头。
    ///</exception>
    property Host: string read get_Host write set_Host;
    ///<summary>
    ///  获取或设置请求将跟随的重定向的最大数目。
    ///</summary>
    ///<returns>
    ///  请求将跟随的重定向响应的最大数目。
    ///  默认值为 50。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  值设置为 0 或更小。
    ///</exception>
    property MaximumAutomaticRedirections: Int32 read get_MaximumAutomaticRedirections write set_MaximumAutomaticRedirections;
    ///<summary>
    ///  获取或设置请求的方法。
    ///</summary>
    ///<returns>
    ///  用于联系 Internet 资源的请求方法。
    ///  默认值为 GET。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  未提供任何方法。
    ///  - 或 -
    ///  方法字符串包含无效字符。
    ///</exception>
    property Method: string read get_Method write set_Method;
    ///<summary>
    ///  获取或设置请求的身份验证信息。
    ///</summary>
    ///<returns>
    ///  包含与该请求关联的身份验证凭据的 <see cref="T:System.Net.ICredentials" />
    ///  。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property Credentials: DNICredentials read get_Credentials write set_Credentials;
    ///<summary>
    ///  获取或设置一个 <see cref="T:System.Boolean" />
    ///  值，该值控制是否随请求一起发送默认凭据。
    ///</summary>
    ///<returns>
    ///  如果使用默认凭据，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  你试图在发送请求后设置该属性。
    ///</exception>
    property UseDefaultCredentials: Boolean read get_UseDefaultCredentials write set_UseDefaultCredentials;
    ///<summary>
    ///  获取或设置请求的连接组的名称。
    ///</summary>
    ///<returns>
    ///  该请求的连接组的名称。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property ConnectionGroupName: string read get_ConnectionGroupName write set_ConnectionGroupName;
    ///<summary>
    ///  指定构成 HTTP 标头的名称/值对的集合。
    ///</summary>
    ///<returns>
    ///  包含构成 HTTP 请求标头的名称/值对的 <see cref="T:System.Net.WebHeaderCollection" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  已通过调用 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  、<see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  、<see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  或 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  方法启动请求。
    ///</exception>
    property Headers: DNWebHeaderCollection read get_Headers write set_Headers;
    ///<summary>
    ///  获取或设置请求的代理信息。
    ///</summary>
    ///<returns>
    ///  用于代理请求的 <see cref="T:System.Net.IWebProxy" />
    ///  对象。
    ///  默认值通过调用 <see cref="P:System.Net.GlobalProxySelection.Select" />
    ///  属性设置。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  将 <see cref="P:System.Net.HttpWebRequest.Proxy" />
    ///  设置为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  已通过调用 <see cref="M:System.Net.HttpWebRequest.GetRequestStream" />
    ///  、<see cref="M:System.Net.HttpWebRequest.BeginGetRequestStream(System.AsyncCallback,System.Object)" />
    ///  、<see cref="M:System.Net.HttpWebRequest.GetResponse" />
    ///  或 <see cref="M:System.Net.HttpWebRequest.BeginGetResponse(System.AsyncCallback,System.Object)" />
    ///  启动请求。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方无权执行所请求的操作。
    ///</exception>
    property Proxy: DNIWebProxy read get_Proxy write set_Proxy;
    ///<summary>
    ///  获取或设置用于请求的 HTTP 版本。
    ///</summary>
    ///<returns>
    ///  用于请求的 HTTP 版本。
    ///  默认值为 <see cref="F:System.Net.HttpVersion.Version11" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  HTTP 版本设置为 1.0 或 1.1 以外的值。
    ///</exception>
    property ProtocolVersion: DDN.mscorlib.DNVersion read get_ProtocolVersion write set_ProtocolVersion;
    ///<summary>
    ///  获取或设置 <see langword="Content-type" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Content-type" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property ContentType: string read get_ContentType write set_ContentType;
    ///<summary>
    ///  获取或设置请求的媒体类型。
    ///</summary>
    ///<returns>
    ///  请求的媒体类型。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property MediaType: string read get_MediaType write set_MediaType;
    ///<summary>
    ///  获取或设置 <see langword="Transfer-encoding" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Transfer-encoding" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当 <see cref="P:System.Net.HttpWebRequest.SendChunked" />
    ///  为 <see langword="false" />
    ///  时设置 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  将 <see cref="P:System.Net.HttpWebRequest.TransferEncoding" />
    ///  设置为值“Chunked”。
    ///</exception>
    property TransferEncoding: string read get_TransferEncoding write set_TransferEncoding;
    ///<summary>
    ///  获取或设置 <see langword="Connection" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Connection" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Net.HttpWebRequest.Connection" />
    ///  的值设置为保持连接或关闭。
    ///</exception>
    property Connection: string read get_Connection write set_Connection;
    ///<summary>
    ///  获取或设置 <see langword="Accept" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Accept" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property Accept: string read get_Accept write set_Accept;
    ///<summary>
    ///  获取或设置 <see langword="Referer" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Referer" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property Referer: string read get_Referer write set_Referer;
    ///<summary>
    ///  获取或设置 <see langword="User-agent" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="User-agent" />
    ///  HTTP 标头的值。
    ///  默认值为 <see langword="null" />
    ///  。
    ///  此属性的值存储在 <see cref="T:System.Net.WebHeaderCollection" />
    ///  。
    ///  如果设置了 WebHeaderCollection，则该属性值将丢失。
    ///</returns>
    property UserAgent: string read get_UserAgent write set_UserAgent;
    ///<summary>
    ///  获取或设置 <see langword="Expect" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns><see langword="Expect" />
    ///  HTTP 标头的内容。
    ///  默认值为 <see langword="null" />
    ///  。
    ///  此属性的值存储在 <see cref="T:System.Net.WebHeaderCollection" />
    ///  。
    ///  如果设置了 WebHeaderCollection，则该属性值将丢失。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  将 <see langword="Expect" />
    ///  设置为一个包含“100-continue”的字符串作为子字符串。
    ///</exception>
    property Expect: string read get_Expect write set_Expect;
    ///<summary>
    ///  获取或设置 <see langword="If-Modified-Since" />
    ///  HTTP 标头的值。
    ///</summary>
    ///<returns>
    ///  包含 HTTP <see langword="If-Modified-Since" />
    ///  标头内容的 <see cref="T:System.DateTime" />
    ///  。
    ///  默认值是当前日期和时间。
    ///</returns>
    property IfModifiedSince: DDN.mscorlib.DNDateTime read get_IfModifiedSince write set_IfModifiedSince;
    ///<summary>
    ///  获取或设置要在 HTTP 请求中使用的 <see langword="Date" />
    ///  HTTP 标头值。
    ///</summary>
    ///<returns>
    ///  HTTP 请求中的 Date 标头值。
    ///</returns>
    property Date: DDN.mscorlib.DNDateTime read get_Date write set_Date;
    ///<summary>
    ///  获取或设置用于验证服务器证书的回调函数。
    ///</summary>
    ///<returns>
    ///  用于验证服务器证书的回调函数。
    ///  用于验证服务器证书的回调函数。
    ///</returns>
    property ServerCertificateValidationCallback: DNRemoteCertificateValidationCallback read get_ServerCertificateValidationCallback write set_ServerCertificateValidationCallback;
    ///<summary>
    ///  当在子类中重写时，获取从 <see cref="T:System.Net.IWebRequestCreate" />
    ///  类派生的工厂对象，该类用于创建为生成对指定 URI 的请求而实例化的 <see cref="T:System.Net.WebRequest" />
    ///  。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Net.IWebRequestCreate" />
    ///  。
    ///  由 <see cref="M:System.Net.IWebRequestCreate.Create(System.Uri)" />
    ///  方法返回的派生 <see cref="T:System.Net.WebRequest" />
    ///  类型。
    ///</returns>
    property CreatorInstance: DNIWebRequestCreate read get_CreatorInstance;
    ///<summary>
    ///  获取或设置此请求的缓存策略。
    ///</summary>
    ///<returns>
    ///  定义缓存策略的 <see cref="T:System.Net.Cache.RequestCachePolicy" />
    ///  对象。
    ///</returns>
    property CachePolicy: DNRequestCachePolicy read get_CachePolicy write set_CachePolicy;
    ///<summary>
    ///  获取或设置用于此请求的身份验证和模拟的级别。
    ///</summary>
    ///<returns><see cref="T:System.Net.Security.AuthenticationLevel" />
    ///  值的按位组合。
    ///  默认值为 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequested" />
    ///  。
    ///  在相互身份验证中，客户端和服务器双方都出示凭据以确定其身份。
    ///<see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequired" />
    ///  和 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequested" />
    ///  值与 Kerberos 身份验证有关。
    ///  可以直接支持 Kerberos 身份验证，也可以仅在使用 Negotiate 安全协议选择实际的安全协议时使用该身份验证。
    ///  有关身份验证协议的更多信息，请参见 Internet 身份验证。
    ///  若要确定相互身份验证是否发生，请检查 <see cref="P:System.Net.WebResponse.IsMutuallyAuthenticated" />
    ///  属性。
    ///  如果你指定了 <see cref="F:System.Net.Security.AuthenticationLevel.MutualAuthRequired" />
    ///  身份验证标志值，而未发生相互身份验证，则应用程序将收到一个带有 <see cref="T:System.Net.ProtocolViolationException" />
    ///  内部异常的 <see cref="T:System.IO.IOException" />
    ///  ，指示相互身份验证失败。
    ///</returns>
    property AuthenticationLevel: DNAuthenticationLevel read get_AuthenticationLevel write set_AuthenticationLevel;
    ///<summary>
    ///  获取或设置当前请求的模拟级别。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Security.Principal.TokenImpersonationLevel" />
    ///  值。
    ///</returns>
    property ImpersonationLevel: DDN.mscorlib.DNTokenImpersonationLevel read get_ImpersonationLevel write set_ImpersonationLevel;
  end;

  TDNHttpWebRequest = class(TDNGenericImport<DNHttpWebRequestClass, DNHttpWebRequest>) end;

  //-------------namespace: System.Net----------------
  DNWebResponseClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{4EA54D4F-59E9-527A-A392-AC66D8305327}']
  end;

  ///<summary>
  ///  提供来自统一资源标识符 (URI) 的响应。
  ///  这是一个 <see langword="abstract" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Net.WebResponse')]
  DNWebResponse = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{8469B5E5-2E45-37FE-AF2B-9E809F690087}']
  { getters & setters } 

    function get_IsFromCache: Boolean;
    function get_IsMutuallyAuthenticated: Boolean;
    function get_ContentLength: Int64;
    procedure set_ContentLength(value: Int64);
    function get_ContentType: string;
    procedure set_ContentType(value: string);
    function get_ResponseUri: DNUri;
    function get_Headers: DNWebHeaderCollection;
    function get_SupportsHeaders: Boolean;

  { methods } 

    ///<summary>
    ///  当由子类重写时，将关闭响应流。
    ///</summary>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    procedure Close;
    ///<summary>
    ///  释放 <see cref="T:System.Net.WebResponse" />
    ///  对象使用的非托管资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  当在子类中重写时，从 Internet 资源返回数据流。
    ///</summary>
    ///<returns>
    ///  用于从 Internet 资源中读取数据的 <see cref="T:System.IO.Stream" />
    ///  类的实例。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试访问该方法时，不在子代类中重写该方法时。
    ///</exception>
    function GetResponseStream: DDN.mscorlib.DNStream;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个 <see cref="T:System.Boolean" />
    ///  值，该值指示此响应是否为从缓存中获取的。
    ///</summary>
    ///<returns>
    ///  如果此响应来自缓存，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsFromCache: Boolean read get_IsFromCache;
    ///<summary>
    ///  获取一个 <see cref="T:System.Boolean" />
    ///  值，该值指示是否发生了相互身份验证。
    ///</summary>
    ///<returns>
    ///  如果客户端和服务器均经过验证，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsMutuallyAuthenticated: Boolean read get_IsMutuallyAuthenticated;
    ///<summary>
    ///  当在子类中重写时，获取或设置接收的数据的内容长度。
    ///</summary>
    ///<returns>
    ///  从 Internet 资源返回的字节数。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ContentLength: Int64 read get_ContentLength write set_ContentLength;
    ///<summary>
    ///  当在派生类中重写时，获取或设置接收的数据的内容类型。
    ///</summary>
    ///<returns>
    ///  包含响应的内容类型的字符串。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ContentType: string read get_ContentType write set_ContentType;
    ///<summary>
    ///  当在派生类中重写时，获取实际响应此请求的 Internet 资源的 URI。
    ///</summary>
    ///<returns><see cref="T:System.Uri" />
    ///  类的实例，包含实际响应此请求的 Internet 资源的 URI。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property ResponseUri: DNUri read get_ResponseUri;
    ///<summary>
    ///  当在派生类中重写时，获取与此请求关联的标头名称/值对的集合。
    ///</summary>
    ///<returns><see cref="T:System.Net.WebHeaderCollection" />
    ///  类的实例，包含与此响应关联的标头值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  任何尝试获取或设置该属性不在子代类中重写该属性时。
    ///</exception>
    property Headers: DNWebHeaderCollection read get_Headers;
    ///<summary>
    ///  获取指示是否支持标题的值。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Boolean" />
    ///  。
    ///  如果标题受支持，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SupportsHeaders: Boolean read get_SupportsHeaders;
  end;

  TDNWebResponse = class(TDNGenericImport<DNWebResponseClass, DNWebResponse>) end;

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
  DNCookieClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6F2B2C1D-FD9A-505D-B28A-02DD5418646C}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.Cookie" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCookie; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.Cookie" />
    ///  与指定类 <see cref="P:System.Net.Cookie.Name" />
    ///  和 <see cref="P:System.Net.Cookie.Value" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  以下字符必须不在内部使用 <paramref name="name" />
    ///  ︰ 等号、 分号、 逗号、 换行符 (\n)、 (\r)、 制表符 (\t) 和空格字符。
    ///  美元符号字符 （"$"） 不能为第一个字符。
    ///</param>
    ///  <param name="value">
    ///  值 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  以下字符必须不在内部使用 <paramref name="value" />
    ///  ︰ 分号、 逗号。
    ///</param>
    ///<exception cref="T:System.Net.CookieException"><paramref name="name" />
    ///  参数为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数长度为零。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数包含无效字符。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数包含一个包含无效字符的字符串未用引号引起来。
    ///</exception>
    {class} function init(name: string; value: string): DNCookie; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.Cookie" />
    ///  与指定类 <see cref="P:System.Net.Cookie.Name" />
    ///  , ，<see cref="P:System.Net.Cookie.Value" />
    ///  , ，和 <see cref="P:System.Net.Cookie.Path" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  以下字符必须不在内部使用 <paramref name="name" />
    ///  ︰ 等号、 分号、 逗号、 换行符 (\n)、 (\r)、 制表符 (\t) 和空格字符。
    ///  美元符号字符 （"$"） 不能为第一个字符。
    ///</param>
    ///  <param name="value">
    ///  值 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  以下字符必须不在内部使用 <paramref name="value" />
    ///  ︰ 分号、 逗号。
    ///</param>
    ///  <param name="path">
    ///  与此源服务器上的 Uri 的子集 <see cref="T:System.Net.Cookie" />
    ///  适用。
    ///  默认值是"/"。
    ///</param>
    ///<exception cref="T:System.Net.CookieException"><paramref name="name" />
    ///  参数为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数长度为零。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数包含无效字符。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数包含一个包含无效字符的字符串未用引号引起来。
    ///</exception>
    {class} function init(name: string; value: string; path: string): DNCookie; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.Cookie" />
    ///  与指定类 <see cref="P:System.Net.Cookie.Name" />
    ///  , ，<see cref="P:System.Net.Cookie.Value" />
    ///  , ，<see cref="P:System.Net.Cookie.Path" />
    ///  , ，和 <see cref="P:System.Net.Cookie.Domain" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  以下字符必须不在内部使用 <paramref name="name" />
    ///  ︰ 等号、 分号、 逗号、 换行符 (\n)、 (\r)、 制表符 (\t) 和空格字符。
    ///  美元符号字符 （"$"） 不能为第一个字符。
    ///</param>
    ///  <param name="value">
    ///  值 <see cref="T:System.Net.Cookie" />
    ///  对象。
    ///  以下字符必须不在内部使用 <paramref name="value" />
    ///  ︰ 分号、 逗号。
    ///</param>
    ///  <param name="path">
    ///  与此源服务器上的 Uri 的子集 <see cref="T:System.Net.Cookie" />
    ///  适用。
    ///  默认值是"/"。
    ///</param>
    ///  <param name="domain">
    ///  此可选的 internet 域 <see cref="T:System.Net.Cookie" />
    ///  是否有效。
    ///  默认值这是主机 <see cref="T:System.Net.Cookie" />
    ///  尚未收到来自。
    ///</param>
    ///<exception cref="T:System.Net.CookieException"><paramref name="name" />
    ///  参数为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数长度为零。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  参数包含无效字符。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="value" />
    ///  参数包含一个包含无效字符的字符串未用引号引起来。
    ///</exception>
    {class} function init(name: string; value: string; path: string; domain: string): DNCookie; overload;

  end;

  ///<summary>
  ///  提供一组用于管理 Cookie 的属性和方法。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Net.Cookie')]
  DNCookie = interface(DDN.mscorlib.DNObject)
  ['{44CE4218-5EA4-34B0-9BAA-07EB434BFC16}']
  { getters & setters } 

    function get_Comment: string;
    procedure set_Comment(value: string);
    function get_CommentUri: DNUri;
    procedure set_CommentUri(value: DNUri);
    function get_HttpOnly: Boolean;
    procedure set_HttpOnly(value: Boolean);
    function get_Discard: Boolean;
    procedure set_Discard(value: Boolean);
    function get_Domain: string;
    procedure set_Domain(value: string);
    function get_Expired: Boolean;
    procedure set_Expired(value: Boolean);
    function get_Expires: DDN.mscorlib.DNDateTime;
    procedure set_Expires(value: DDN.mscorlib.DNDateTime);
    function get_Name: string;
    procedure set_Name(value: string);
    function get_Path: string;
    procedure set_Path(value: string);
    function get_Port: string;
    procedure set_Port(value: string);
    function get_Secure: Boolean;
    procedure set_Secure(value: Boolean);
    function get_TimeStamp: DDN.mscorlib.DNDateTime;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_Version: Int32;
    procedure set_Version(value: Int32);

  { methods } 

    ///<summary>
    ///  重写 <see cref="M:System.Object.Equals(System.Object)" />
    ///  方法。
    ///</summary>
    ///  <param name="comparand">
    ///  对引用 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Net.Cookie" />
    ///  是否等同于 <paramref name="comparand" />
    ///  。
    ///  两个 <see cref="T:System.Net.Cookie" />
    ///  实例相等，如果其 <see cref="P:System.Net.Cookie.Name" />
    ///  , ，<see cref="P:System.Net.Cookie.Value" />
    ///  , ，<see cref="P:System.Net.Cookie.Path" />
    ///  , ，<see cref="P:System.Net.Cookie.Domain" />
    ///  , ，和 <see cref="P:System.Net.Cookie.Version" />
    ///  属性是否相等。
    ///<see cref="P:System.Net.Cookie.Name" />
    ///  和 <see cref="P:System.Net.Cookie.Domain" />
    ///  字符串比较不区分大小写。
    ///</returns>
    function Equals(comparand: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  重写 <see cref="M:System.Object.GetHashCode" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  此实例的 32 位有符号的整数哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  重写 <see cref="M:System.Object.ToString" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  返回的字符串表示形式 <see cref="T:System.Net.Cookie" />
    ///  适用于 HTTP Cookie 中包括的对象︰ 请求标头。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置可以将服务器添加到注释 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns>
    ///  对文档的可选备注适用于此用法 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</returns>
    property Comment: string read get_Comment write set_Comment;
    ///<summary>
    ///  获取或设置服务器可以为提供的 URI 注释 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示此 URI 引用的预期的用法的可选备注 <see cref="T:System.Net.Cookie" />
    ///  。
    ///  值必须符合 URI 格式。
    ///</returns>
    property CommentUri: DNUri read get_CommentUri write set_CommentUri;
    ///<summary>
    ///  确定页脚本或其他活动内容是否可访问此 cookie。
    ///</summary>
    ///<returns>
    ///  布尔值，该值确定页面脚本或其他活动内容是否可以访问此 cookie。
    ///</returns>
    property HttpOnly: Boolean read get_HttpOnly write set_HttpOnly;
    ///<summary>
    ///  获取或设置由服务器设置的丢弃标志。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果客户端就是必须放弃 <see cref="T:System.Net.Cookie" />
    ///  末尾的当前会话; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Discard: Boolean read get_Discard write set_Discard;
    ///<summary>
    ///  获取或设置 URI，其中 <see cref="T:System.Net.Cookie" />
    ///  是否有效。
    ///</summary>
    ///<returns>
    ///  为其 URI <see cref="T:System.Net.Cookie" />
    ///  是否有效。
    ///</returns>
    property Domain: string read get_Domain write set_Domain;
    ///<summary>
    ///  获取或设置的当前状态 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Net.Cookie" />
    ///  已过期; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Expired: Boolean read get_Expired write set_Expired;
    ///<summary>
    ///  获取或设置的过期日期和时间 <see cref="T:System.Net.Cookie" />
    ///  作为 <see cref="T:System.DateTime" />
    ///  。
    ///</summary>
    ///<returns>
    ///  到期日期和时间 <see cref="T:System.Net.Cookie" />
    ///  作为 <see cref="T:System.DateTime" />
    ///  实例。
    ///</returns>
    property Expires: DDN.mscorlib.DNDateTime read get_Expires write set_Expires;
    ///<summary>
    ///  获取或设置的名称 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Net.Cookie" />
    ///  的名称。
    ///</returns>
    ///<exception cref="T:System.Net.CookieException">
    ///  为设置操作是指定的值 <see langword="null" />
    ///  或空字符串
    ///  - 或 -
    ///  设置操作为指定的值包含非法字符。
    ///  以下字符必须不在内部使用 <see cref="P:System.Net.Cookie.Name" />
    ///  属性︰ 等号、 分号、 逗号、 换行符 (\n)、 (\r)、 制表符 (\t) 和空格字符。
    ///  美元符号字符 （"$"） 不能为第一个字符。
    ///</exception>
    property Name: string read get_Name write set_Name;
    ///<summary>
    ///  获取或设置到的 Uri <see cref="T:System.Net.Cookie" />
    ///  适用。
    ///</summary>
    ///<returns>
    ///  向其 Uri <see cref="T:System.Net.Cookie" />
    ///  适用。
    ///</returns>
    property Path: string read get_Path write set_Path;
    ///<summary>
    ///  获取或设置 TCP 端口的列表， <see cref="T:System.Net.Cookie" />
    ///  适用范围。
    ///</summary>
    ///<returns>
    ///  列表中的 TCP 端口 <see cref="T:System.Net.Cookie" />
    ///  适用于。
    ///</returns>
    ///<exception cref="T:System.Net.CookieException">
    ///  设置操作为指定的值无法分析或没有用双引号括起来。
    ///</exception>
    property Port: string read get_Port write set_Port;
    ///<summary>
    ///  获取或设置安全级别为 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果客户端是仅返回该 cookie 在后续请求中，如果这些请求都使用安全超文本传输协议 (HTTPS);否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Secure: Boolean read get_Secure write set_Secure;
    ///<summary>
    ///  获取作为该 cookie 是的颁发时 <see cref="T:System.DateTime" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当以颁发 cookie 的时间 <see cref="T:System.DateTime" />
    ///  。
    ///</returns>
    property TimeStamp: DDN.mscorlib.DNDateTime read get_TimeStamp;
    ///<summary>
    ///  获取或设置 <see cref="P:System.Net.Cookie.Value" />
    ///  的 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns><see cref="P:System.Net.Cookie.Value" />
    ///  的 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</returns>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取或设置 cookie 符合 HTTP 状态维护的版本。
    ///</summary>
    ///<returns>
    ///  Cookie 一致的 HTTP 状态维护版本。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  不允许指定的版本的值。
    ///</exception>
    property Version: Int32 read get_Version write set_Version;
  end;

  TDNCookie = class(TDNGenericImport<DNCookieClass, DNCookie>) end;

  //-------------namespace: System.Net----------------
  DNCookieCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DAD5CD48-00CC-5F3B-9B76-D2F5DFC2810A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.CookieCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCookieCollection;

  end;

  ///<summary>
  ///  提供集合容器的实例 <see cref="T:System.Net.Cookie" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Net.CookieCollection')]
  DNCookieCollection = interface(DDN.mscorlib.DNObject)
  ['{99F5373A-997D-36D4-A225-D970B8B1B9F8}']
  { getters & setters } 

    function get_IsReadOnly: Boolean;
    function get_Item(index: Int32): DNCookie; overload;
    function get_Item(name: string): DNCookie; overload;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;

  { methods } 

    ///<summary>
    ///  添加 <see cref="T:System.Net.Cookie" />
    ///  到 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</summary>
    ///  <param name="cookie"><see cref="T:System.Net.Cookie" />
    ///  要添加到 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="cookie" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(cookie: DNCookie); overload;
    ///<summary>
    ///  将内容添加 <see cref="T:System.Net.CookieCollection" />
    ///  与当前实例。
    ///</summary>
    ///  <param name="cookies">
    ///  要添加的 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="cookies" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(cookies: DNCookieCollection); overload;
    ///<summary>
    ///  中的元素复制 <see cref="T:System.Net.CookieCollection" />
    ///  实例 <see cref="T:System.Array" />
    ///  类，从特定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  目标 <see cref="T:System.Array" />
    ///  到 <see cref="T:System.Net.CookieCollection" />
    ///  将被复制。
    ///</param>
    ///  <param name="index">
    ///  在目标中从零开始的索引 <see cref="T:System.Array" />
    ///  开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="array" />
    ///  是多维的。
    ///  - 或 -
    ///  在此元素的数目 <see cref="T:System.Net.CookieCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="array" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  在此元素 <see cref="T:System.Net.CookieCollection" />
    ///  无法自动转换为目标类型 <paramref name="array" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: DDN.mscorlib.DNArray; index: Int32); overload;
    ///<summary>
    ///  此元素复制 <see cref="T:System.Net.CookieCollection" />
    ///  到 <see cref="T:System.Net.Cookie" />
    ///  数组中从目标数组的指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  目标 <see cref="T:System.Net.Cookie" />
    ///  数组转换为其 <see cref="T:System.Net.CookieCollection" />
    ///  将被复制。
    ///</param>
    ///  <param name="index">
    ///  在目标中从零开始的索引 <see cref="T:System.Array" />
    ///  开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="array" />
    ///  是多维的。
    ///  - 或 -
    ///  在此元素的数目 <see cref="T:System.Net.CookieCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="array" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  在此元素 <see cref="T:System.Net.CookieCollection" />
    ///  无法自动转换为目标类型 <paramref name="array" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<DNCookie>; index: Int32); overload;
    ///<summary>
    ///  获取可循环访问的枚举器 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  实现的实例 <see cref="T:System.Collections.IEnumerator" />
    ///  可循环访问的接口 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="T:System.Net.CookieCollection" />
    ///  是只读的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果这是一个只读的 <see cref="T:System.Net.CookieCollection" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    property Item[index: Int32]: DNCookie read get_Item; default;
    property Item[name: string]: DNCookie read get_Item; default;
    ///<summary>
    ///  获取 cookie 中包含的数 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  中包含的 cookie 数 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，该值指示是否访问 <see cref="T:System.Net.CookieCollection" />
    ///  是线程安全的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果访问 <see cref="T:System.Net.CookieCollection" />
    ///  是线程安全的; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取一个对象对访问进行同步 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  对访问进行同步的对象 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
  end;

  TDNCookieCollection = class(TDNGenericImport<DNCookieCollectionClass, DNCookieCollection>) end;

  //-------------namespace: System.Net----------------
  DNCookieContainerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{A16EBFC3-2024-530A-B79C-91300C176C6A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Net.CookieContainer" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNCookieContainer; overload;
    ///<summary>
    ///  初始化的新实例 <see cref="T:System.Net.CookieContainer" />
    ///  类具有指定值的数目 <see cref="T:System.Net.Cookie" />
    ///  容器可以包含的实例。
    ///</summary>
    ///  <param name="capacity">
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="capacity" />
    ///  小于或等于零。
    ///</exception>
    {class} function init(capacity: Int32): DNCookieContainer; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Net.CookieContainer" />
    ///  具有特定属性的类。
    ///</summary>
    ///  <param name="capacity">
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///</param>
    ///  <param name="perDomainCapacity">
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  每个域的实例。
    ///</param>
    ///  <param name="maxCookieSize">
    ///  最大大小 （字节） 对任何单一 <see cref="T:System.Net.Cookie" />
    ///  中 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="perDomainCapacity" />
    ///  不等于 <see cref="F:System.Int32.MaxValue" />
    ///  。
    ///  和
    ///  <paramref name="(perDomainCapacity" />
    ///  小于或等于零或 <paramref name="perDomainCapacity" />
    ///  大于 <paramref name="capacity)" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="maxCookieSize" />
    ///  小于或等于零。
    ///</exception>
    {class} function init(capacity: Int32; perDomainCapacity: Int32; maxCookieSize: Int32): DNCookieContainer; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_DefaultCookieLimit: Int32;
   function __fakeFieldGet_DefaultPerDomainCookieLimit: Int32;
   function __fakeFieldGet_DefaultCookieLengthLimit: Int32;

  { static fields } 

    ///<summary>
    ///  表示默认最大数量的 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///  此字段为常数。
    ///</summary>
    {class} property DefaultCookieLimit: Int32 read __fakeFieldGet_DefaultCookieLimit;
    ///<summary>
    ///  表示默认最大数量的 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以引用每个域。
    ///  此字段为常数。
    ///</summary>
    {class} property DefaultPerDomainCookieLimit: Int32 read __fakeFieldGet_DefaultPerDomainCookieLimit;
    ///<summary>
    ///  表示的默认最大大小，以字节为单位， <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///  此字段为常数。
    ///</summary>
    {class} property DefaultCookieLengthLimit: Int32 read __fakeFieldGet_DefaultCookieLengthLimit;

  end;

  ///<summary>
  ///  为集合提供容器 <see cref="T:System.Net.CookieCollection" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Net.CookieContainer')]
  DNCookieContainer = interface(DDN.mscorlib.DNObject)
  ['{D9BC3BB7-A863-3793-93A2-445D8B806A67}']
  { getters & setters } 

    function get_Capacity: Int32;
    procedure set_Capacity(value: Int32);
    function get_Count: Int32;
    function get_MaxCookieSize: Int32;
    procedure set_MaxCookieSize(value: Int32);
    function get_PerDomainCapacity: Int32;
    procedure set_PerDomainCapacity(value: Int32);

  { methods } 

    ///<summary>
    ///  将内容添加 <see cref="T:System.Net.CookieCollection" />
    ///  到 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</summary>
    ///  <param name="cookies">
    ///  要添加到 <see cref="T:System.Net.CookieCollection" />
    ///  的 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="cookies" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(cookies: DNCookieCollection); overload;
    ///<summary>
    ///  添加 <see cref="T:System.Net.Cookie" />
    ///  到 <see cref="T:System.Net.CookieContainer" />
    ///  特定 uri。
    ///</summary>
    ///  <param name="uri">
    ///  URI 的 <see cref="T:System.Net.Cookie" />
    ///  要添加到 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///  <param name="cookie">
    ///  要添加到 <see cref="T:System.Net.Cookie" />
    ///  的 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  或 <paramref name="cookie" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Net.CookieException"><paramref name="cookie" />
    ///  大于 <paramref name="maxCookieSize" />
    ///  。
    ///  - 或 -
    ///  对于域 <paramref name="cookie" />
    ///  不是有效的 URI。
    ///</exception>
    procedure Add(uri: DNUri; cookie: DNCookie); overload;
    ///<summary>
    ///  将内容添加 <see cref="T:System.Net.CookieCollection" />
    ///  到 <see cref="T:System.Net.CookieContainer" />
    ///  特定 uri。
    ///</summary>
    ///  <param name="uri">
    ///  URI 的 <see cref="T:System.Net.CookieCollection" />
    ///  要添加到 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///  <param name="cookies">
    ///  要添加到 <see cref="T:System.Net.CookieCollection" />
    ///  的 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="cookies" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  一个 cookie 中的域 <paramref name="cookies" />
    ///  是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Net.CookieException">
    ///  中的 cookie 之一 <paramref name="cookies" />
    ///  包含了无效的域。
    ///</exception>
    procedure Add(uri: DNUri; cookies: DNCookieCollection); overload;
    ///<summary>
    ///  获取 <see cref="T:System.Net.CookieCollection" />
    ///  ，其中包含 <see cref="T:System.Net.Cookie" />
    ///  与特定 URI 相关联的实例。
    ///</summary>
    ///  <param name="uri">
    ///  URI 的 <see cref="T:System.Net.Cookie" />
    ///  所需的实例。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Net.CookieCollection" />
    ///  ，其中包含 <see cref="T:System.Net.Cookie" />
    ///  与特定 URI 相关联的实例。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetCookies(uri: DNUri): DNCookieCollection;
    ///<summary>
    ///  获取包含表示的 HTTP cookie 的 HTTP cookie 标头 <see cref="T:System.Net.Cookie" />
    ///  与特定 URI 相关联的实例。
    ///</summary>
    ///  <param name="uri">
    ///  URI 的 <see cref="T:System.Net.Cookie" />
    ///  所需的实例。
    ///</param>
    ///<returns>
    ///  HTTP cookie 标头，使用字符串表示 <see cref="T:System.Net.Cookie" />
    ///  用分号分隔的实例。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetCookieHeader(uri: DNUri): string;
    ///<summary>
    ///  添加 <see cref="T:System.Net.Cookie" />
    ///  实例的 HTTP cookie 标头与一个或多个 cookie <see cref="T:System.Net.CookieContainer" />
    ///  为特定的 URI。
    ///</summary>
    ///  <param name="uri">
    ///  URI 的 <see cref="T:System.Net.CookieCollection" />
    ///  。
    ///</param>
    ///  <param name="cookieHeader">
    ///  HTTP 设置 cookie 的内容标头返回的 HTTP 服务器时，与 <see cref="T:System.Net.Cookie" />
    ///  以逗号分隔的实例。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="cookieHeader" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Net.CookieException">
    ///  其中一个 cookie 无效。
    ///  - 或 -
    ///  将一个 cookie 添加到容器时出错。
    ///</exception>
    procedure SetCookies(uri: DNUri; cookieHeader: string);
    ///<summary>
    ///  添加 <see cref="T:System.Net.Cookie" />
    ///  到 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///  此方法使用从域 <see cref="T:System.Net.Cookie" />
    ///  来确定哪些域集合相关联 <see cref="T:System.Net.Cookie" />
    ///  与。
    ///</summary>
    ///  <param name="cookie">
    ///  要添加到 <see cref="T:System.Net.Cookie" />
    ///  的 <see cref="T:System.Net.CookieContainer" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="cookie" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  对于域 <paramref name="cookie" />
    ///  是 <see langword="null" />
    ///  或空字符串 ("")。
    ///</exception><exception cref="T:System.Net.CookieException"><paramref name="cookie" />
    ///  大于 <paramref name="maxCookieSize" />
    ///  。
    ///  - 或 -
    ///  对于域 <paramref name="cookie" />
    ///  不是有效的 URI。
    ///</exception>
    procedure Add(cookie: DNCookie); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取和设置数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///</summary>
    ///<returns>
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///  这是一种硬性限制，不能超过通过添加 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="Capacity" />
    ///  小于或等于零或 (值是小于 <see cref="P:System.Net.CookieContainer.PerDomainCapacity" />
    ///  和 <see cref="P:System.Net.CookieContainer.PerDomainCapacity" />
    ///  是否不等于 <see cref="F:System.Int32.MaxValue" />
    ///  )。
    ///</exception>
    property Capacity: Int32 read get_Capacity write set_Capacity;
    ///<summary>
    ///  获取的数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  当前持有。
    ///</summary>
    ///<returns>
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  当前持有。
    ///  这是总数的 <see cref="T:System.Net.Cookie" />
    ///  中的所有域的实例。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  表示允许的长度最大 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</summary>
    ///<returns>
    ///  长度 （字节），允许的最大 <see cref="T:System.Net.Cookie" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="MaxCookieSize" />
    ///  小于或等于零。
    ///</exception>
    property MaxCookieSize: Int32 read get_MaxCookieSize write set_MaxCookieSize;
    ///<summary>
    ///  获取和设置数 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳每个域。
    ///</summary>
    ///<returns>
    ///  数 <see cref="T:System.Net.Cookie" />
    ///  允许每个域的实例。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="PerDomainCapacity" />
    ///  小于或等于零。
    ///  - 或 -
    ///  <paramref name="(PerDomainCapacity" />
    ///  超出了允许的最大 cookie 数实例，300，并且不等于 <see cref="F:System.Int32.MaxValue" />
    ///  )。
    ///</exception>
    property PerDomainCapacity: Int32 read get_PerDomainCapacity write set_PerDomainCapacity;
  end;

  TDNCookieContainer = class(TDNGenericImport<DNCookieContainerClass, DNCookieContainer>)
  public const
    ///<summary>
    ///  表示默认最大数量的 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///  此字段为常数。
    ///</summary>
   DefaultCookieLimit = 300;
    ///<summary>
    ///  表示默认最大数量的 <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以引用每个域。
    ///  此字段为常数。
    ///</summary>
   DefaultPerDomainCookieLimit = 20;
    ///<summary>
    ///  表示的默认最大大小，以字节为单位， <see cref="T:System.Net.Cookie" />
    ///  实例 <see cref="T:System.Net.CookieContainer" />
    ///  可以容纳。
    ///  此字段为常数。
    ///</summary>
   DefaultCookieLengthLimit = 4096;
  end;

  //-------------namespace: System.Net----------------
  ///<summary>
  ///  提供用于检索 Web 客户端身份验证的凭据的基本身份验证接口。
  ///</summary>
  [DNTypeName('System.Net.ICredentials')]
  DNICredentials = interface(DNObject)
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
  DNIWebProxy = interface(DNObject)
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
  ///<summary>
  ///  提供用于创建基接口 <see cref="T:System.Net.WebRequest" />
  ///  实例。
  ///</summary>
  [DNTypeName('System.Net.IWebRequestCreate')]
  DNIWebRequestCreate = interface(DNObject)
  ['{9801F161-166F-3532-85DF-DB6C310570BE}']
  { methods } 

    ///<summary>
    ///  创建一个 <see cref="T:System.Net.WebRequest" />
    ///  实例。
    ///</summary>
    ///  <param name="uri">
    ///  Web 资源的统一资源标识符 (URI)。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Net.WebRequest" />
    ///  实例。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  此 <see cref="T:System.Net.IWebRequestCreate" />
    ///  实例不支持 <paramref name="uri" />
    ///  中指定的请求方案。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在适用于 Windows 应用商店应用的 .NET 或可移植类库中，改为捕获基类异常 <see cref="T:System.FormatException" />
    ///  。
    ///  <paramref name="uri" />
    ///  中指定的 URI 不是有效的 URI。
    ///</exception>
    function Create(uri: DNUri): DNWebRequest;

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

  //-------------namespace: System.Net----------------
  DNServicePointClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D6019723-CF9B-5A89-8DC4-B48E117B46B0}']
  end;

  ///<summary>
  ///  提供 HTTP 连接的连接管理。
  ///</summary>
  [DNTypeName('System.Net.ServicePoint')]
  DNServicePoint = interface(DDN.mscorlib.DNObject)
  ['{9D66BFBD-8384-3EED-9B04-C306D3EA175A}']
  { getters & setters } 

    function get_BindIPEndPointDelegate: DNBindIPEndPoint;
    procedure set_BindIPEndPointDelegate(value: DNBindIPEndPoint);
    function get_ConnectionLeaseTimeout: Int32;
    procedure set_ConnectionLeaseTimeout(value: Int32);
    function get_Address: DNUri;
    function get_MaxIdleTime: Int32;
    procedure set_MaxIdleTime(value: Int32);
    function get_UseNagleAlgorithm: Boolean;
    procedure set_UseNagleAlgorithm(value: Boolean);
    function get_ReceiveBufferSize: Int32;
    procedure set_ReceiveBufferSize(value: Int32);
    function get_Expect100Continue: Boolean;
    procedure set_Expect100Continue(value: Boolean);
    function get_IdleSince: DDN.mscorlib.DNDateTime;
    function get_ProtocolVersion: DDN.mscorlib.DNVersion;
    function get_ConnectionName: string;
    function get_ConnectionLimit: Int32;
    procedure set_ConnectionLimit(value: Int32);
    function get_CurrentConnections: Int32;
    function get_Certificate: DDN.mscorlib.DNX509Certificate;
    function get_ClientCertificate: DDN.mscorlib.DNX509Certificate;
    function get_SupportsPipelining: Boolean;

  { methods } 

    ///<summary>
    ///  对 TCP 连接启用或禁用 keep-alive 选项。
    ///</summary>
    ///  <param name="enabled">
    ///  如果设置为 true，则将使用指定的 <paramref name="keepAliveTime " />
    ///  和 <paramref name="keepAliveInterval" />
    ///  值启用 TCP 连接上的 TCP keep-alive 选项。
    ///  如果设置为 false，则将禁用 TCP keep-alive 选项，并忽略剩余参数。
    ///  默认值为 False。
    ///</param>
    ///  <param name="keepAliveTime">
    ///  指定发送第一个 keep-alive 数据包之前没有活动的超时时间（以毫秒为单位）。
    ///  该值必须大于 0。
    ///  如果传递的值小于或等于零，则会引发 <see cref="T:System.ArgumentOutOfRangeException" />
    ///  。
    ///</param>
    ///  <param name="keepAliveInterval">
    ///  指定当未收到确认消息时发送连续 keep-alive 数据包之间的间隔（以毫秒为单位）。
    ///  该值必须大于 0。
    ///  如果传递的值小于或等于零，则会引发 <see cref="T:System.ArgumentOutOfRangeException" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  为指定的值 <paramref name="keepAliveTime" />
    ///  或 <paramref name="keepAliveInterval" />
    ///  参数小于或等于 0。
    ///</exception>
    procedure SetTcpKeepAlive(enabled: Boolean; keepAliveTime: Int32; keepAliveInterval: Int32);
    ///<summary>
    ///  从此 <see cref="T:System.Net.ServicePoint" />
    ///  对象移除指定的连接组。
    ///</summary>
    ///  <param name="connectionGroupName">
    ///  连接组的名称，该连接组包含要关闭的和要从此服务点移除的连接。
    ///</param>
    ///<returns>
    ///  指示连接组是否关闭的 <see cref="T:System.Boolean" />
    ///  值。
    ///</returns>
    function CloseConnectionGroup(connectionGroupName: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  指定用于将本地 <see cref="T:System.Net.IPEndPoint" />
    ///  与 <see cref="T:System.Net.ServicePoint" />
    ///  关联的委托。
    ///</summary>
    ///<returns>
    ///  强制 <see cref="T:System.Net.ServicePoint" />
    ///  使用特定的本地 Internet 协议 (IP) 地址和端口号的委托。
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property BindIPEndPointDelegate: DNBindIPEndPoint read get_BindIPEndPointDelegate write set_BindIPEndPointDelegate;
    ///<summary>
    ///  获取或设置在多少毫秒之后关闭活动 <see cref="T:System.Net.ServicePoint" />
    ///  连接。
    ///</summary>
    ///<returns><see cref="T:System.Int32" />
    ///  ，它指定活动 <see cref="T:System.Net.ServicePoint" />
    ///  连接保持打开的毫秒数。
    ///  默认值为 -1，这样活动 <see cref="T:System.Net.ServicePoint" />
    ///  连接可以无限期保持连接。
    ///  将此属性设置为 0 可在 <see cref="T:System.Net.ServicePoint" />
    ///  连接为请求提供服务之后强制关闭该连接。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  设置操作为指定的值为负的数字小于-1。
    ///</exception>
    property ConnectionLeaseTimeout: Int32 read get_ConnectionLeaseTimeout write set_ConnectionLeaseTimeout;
    ///<summary>
    ///  获取此 <see cref="T:System.Net.ServicePoint" />
    ///  对象连接到的服务器的统一资源标识符 (URI)。
    ///</summary>
    ///<returns><see cref="T:System.Uri" />
    ///  类的实例，包含此 <see cref="T:System.Net.ServicePoint" />
    ///  对象连接到的 Internet 服务器的 URI。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException"><see cref="T:System.Net.ServicePoint" />
    ///  处于宿主模式。
    ///</exception>
    property Address: DNUri read get_Address;
    ///<summary>
    ///  获取或设置与 <see cref="T:System.Net.ServicePoint" />
    ///  对象关联的连接在关闭前可以持续空闲的时间。
    ///</summary>
    ///<returns>
    ///  与 <see cref="T:System.Net.ServicePoint" />
    ///  对象关联的连接在关闭和重用于另一个连接前可以持续空闲的时间长度（以毫秒为单位）。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><see cref="P:System.Net.ServicePoint.MaxIdleTime" />
    ///  设置为小于 <see cref="F:System.Threading.Timeout.Infinite" />
    ///  或大于 <see cref="F:System.Int32.MaxValue" />
    ///  。
    ///</exception>
    property MaxIdleTime: Int32 read get_MaxIdleTime write set_MaxIdleTime;
    ///<summary>
    ///  获取或设置一个 <see cref="T:System.Boolean" />
    ///  值，该值确定在此 <see cref="T:System.Net.ServicePoint" />
    ///  对象所管理的连接上是否使用 Nagle 算法。
    ///</summary>
    ///<returns>
    ///  如果使用 Nagle 算法，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property UseNagleAlgorithm: Boolean read get_UseNagleAlgorithm write set_UseNagleAlgorithm;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Net.ServicePoint" />
    ///  使用的套接字的接收缓冲区的大小。
    ///</summary>
    ///<returns>
    ///  包含接收缓冲区的大小（以字节为单位）的 <see cref="T:System.Int32" />
    ///  。
    ///  默认值为 8192。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  为一个集运算是否大于指定的值 <see cref="F:System.Int32.MaxValue" />
    ///  。
    ///</exception>
    property ReceiveBufferSize: Int32 read get_ReceiveBufferSize write set_ReceiveBufferSize;
    ///<summary>
    ///  获取或设置一个 <see cref="T:System.Boolean" />
    ///  值，该值确定是否使用 100-Continue 行为。
    ///</summary>
    ///<returns>
    ///  如果 <see langword="POST" />
    ///  请求需要 100-Continue 响应，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property Expect100Continue: Boolean read get_Expect100Continue write set_Expect100Continue;
    ///<summary>
    ///  获取上次将 <see cref="T:System.Net.ServicePoint" />
    ///  对象连接到主机的日期和时间。
    ///</summary>
    ///<returns><see cref="T:System.DateTime" />
    ///  对象，包含上次连接 <see cref="T:System.Net.ServicePoint" />
    ///  对象的日期和时间。
    ///</returns>
    property IdleSince: DDN.mscorlib.DNDateTime read get_IdleSince;
    ///<summary>
    ///  获取 <see cref="T:System.Net.ServicePoint" />
    ///  对象使用的 HTTP 协议的版本。
    ///</summary>
    ///<returns><see cref="T:System.Version" />
    ///  对象，它包含 <see cref="T:System.Net.ServicePoint" />
    ///  对象使用的 HTTP 协议版本。
    ///</returns>
    property ProtocolVersion: DDN.mscorlib.DNVersion read get_ProtocolVersion;
    ///<summary>
    ///  获取连接名。
    ///</summary>
    ///<returns>
    ///  一个表示连接名的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    property ConnectionName: string read get_ConnectionName;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Net.ServicePoint" />
    ///  对象上允许的最大连接数。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Net.ServicePoint" />
    ///  对象上允许的最大连接数。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  连接限制为等于或小于 0。
    ///</exception>
    property ConnectionLimit: Int32 read get_ConnectionLimit write set_ConnectionLimit;
    ///<summary>
    ///  获取与此 <see cref="T:System.Net.ServicePoint" />
    ///  对象关联的打开连接的数目。
    ///</summary>
    ///<returns>
    ///  与此 <see cref="T:System.Net.ServicePoint" />
    ///  对象关联的打开连接的数目。
    ///</returns>
    property CurrentConnections: Int32 read get_CurrentConnections;
    ///<summary>
    ///  获取为此 <see cref="T:System.Net.ServicePoint" />
    ///  对象接收的证书。
    ///</summary>
    ///<returns><see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  类的实例，包含为此 <see cref="T:System.Net.ServicePoint" />
    ///  对象接收的安全证书。
    ///</returns>
    property Certificate: DDN.mscorlib.DNX509Certificate read get_Certificate;
    ///<summary>
    ///  获取发送到服务器的上一个客户端证书。
    ///</summary>
    ///<returns><see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  对象，包含发送到服务器的上一个客户端证书的公共值。
    ///</returns>
    property ClientCertificate: DDN.mscorlib.DNX509Certificate read get_ClientCertificate;
    ///<summary>
    ///  指示 <see cref="T:System.Net.ServicePoint" />
    ///  对象是否支持管道连接。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Net.ServicePoint" />
    ///  对象支持管道连接，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SupportsPipelining: Boolean read get_SupportsPipelining;
  end;

  TDNServicePoint = class(TDNGenericImport<DNServicePointClass, DNServicePoint>) end;

  //-------------namespace: System.Net----------------
  DNTransportContextClass = interface(DDN.mscorlib.DNObjectClass)
  ['{22EC3759-9004-5B32-BA20-B68D797E8E75}']
  end;

  ///<summary><see cref="T:System.Net.TransportContext" />
  ///  类提供了有关基础传输层的附加上下文。
  ///</summary>
  [DNTypeName('System.Net.TransportContext')]
  DNTransportContext = interface(DDN.mscorlib.DNObject)
  ['{1F864FAF-64F8-32A4-9EA7-200E0AFA2775}']
  { methods } 

    ///<summary>
    ///  获取传输安全层令牌绑定。
    ///</summary>
    ///<returns>
    ///  传输安全层令牌绑定。
    ///</returns>
    function GetTlsTokenBindings: DDN.mscorlib.DNIEnumerable<DNTokenBinding>;
    ///<summary>
    ///  检索请求的通道绑定。
    ///</summary>
    ///  <param name="kind">
    ///  要检索的通道绑定的类型。
    ///</param>
    ///<returns>
    ///  请求 <see cref="T:System.Security.Authentication.ExtendedProtection.ChannelBinding" />
    ///  , ，或 <see langword="null" />
    ///  当前传输或由操作系统，如果不支持通道绑定。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException"><paramref name="kind" />
    ///  必须将 <see cref="F:System.Security.Authentication.ExtendedProtection.ChannelBindingKind.Endpoint" />
    ///  用于 <see cref="T:System.Net.TransportContext" />
    ///  从检索 <see cref="P:System.Net.HttpListenerRequest.TransportContext" />
    ///  属性。
    ///</exception>
    function GetChannelBinding(kind: DNChannelBindingKind): DNChannelBinding;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTransportContext = class(TDNGenericImport<DNTransportContextClass, DNTransportContext>) end;

  //-------------namespace: System.Security.Authentication.ExtendedProtection----------------
  DNChannelBindingClass = interface(DDN.mscorlib.DNSafeHandleZeroOrMinusOneIsInvalidClass)
  ['{5D76701B-1FD2-53F0-9264-ADF75E1A6685}']
  end;

  ///<summary><see cref="T:System.Security.Authentication.ExtendedProtection.ChannelBinding" />
  ///  类封装了指向用于将身份验证的事务绑定到一个安全通道的不透明数据的指针。
  ///</summary>
  [DNTypeName('System.Security.Authentication.ExtendedProtection.ChannelBinding')]
  DNChannelBinding = interface(DDN.mscorlib.DNSafeHandleZeroOrMinusOneIsInvalid)
  ['{8E6DBC05-A506-3E26-A004-7103E8CA8A8B}']
  { getters & setters } 

    function get_Size: Int32;
    function get_IsInvalid: Boolean;
    function get_IsClosed: Boolean;

  { methods } 

    function DangerousGetHandle: IntPtr;
    procedure Close;
    procedure Dispose;
    procedure SetHandleAsInvalid;
    procedure DangerousAddRef(out success: Boolean);
    procedure DangerousRelease;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary><see cref="P:System.Security.Authentication.ExtendedProtection.ChannelBinding.Size" />
    ///  属性获取的大小，以字节为单位，与关联的通道绑定令牌 <see cref="T:System.Security.Authentication.ExtendedProtection.ChannelBinding" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  大小 （字节） 中的通道绑定令牌 <see cref="T:System.Security.Authentication.ExtendedProtection.ChannelBinding" />
    ///  实例。
    ///</returns>
    property Size: Int32 read get_Size;
    property IsInvalid: Boolean read get_IsInvalid;
    property IsClosed: Boolean read get_IsClosed;
  end;

  TDNChannelBinding = class(TDNGenericImport<DNChannelBindingClass, DNChannelBinding>) end;

  //-------------namespace: System.Security.Authentication.ExtendedProtection----------------
  DNTokenBindingClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1B8228F7-8067-5C99-AE44-DD47B671F5AC}']
  end;

  ///<summary>
  ///  包含用于令牌绑定的 API。
  ///</summary>
  [DNTypeName('System.Security.Authentication.ExtendedProtection.TokenBinding')]
  DNTokenBinding = interface(DDN.mscorlib.DNObject)
  ['{1682F1E3-342B-39DC-9DBF-63988669CF82}']
  { methods } 

    ///<summary>
    ///  获取原始令牌绑定 id。
    ///</summary>
    ///<returns>
    ///  原始令牌绑定 id。
    ///  将删除原始 ID 的第一个字节，该字节表示绑定类型。
    ///</returns>
    function GetRawTokenBindingId: TArray<Byte>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTokenBinding = class(TDNGenericImport<DNTokenBindingClass, DNTokenBinding>) end;

  //-------------namespace: System.Security.Cryptography.X509Certificates----------------
  DNX509CertificateEnumeratorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{303E6666-29EC-5ED0-BE14-F06FB7560376}']
  { constructors } 

    ///<summary>
    ///  为指定的 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection.X509CertificateEnumerator" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="mappings"><see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  枚举。
    ///</param>
    {class} function init(mappings: DNX509CertificateCollection): DNX509CertificateEnumerator;

  end;

  ///<summary>
  ///  枚举 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
  ///  中的 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Security.Cryptography.X509Certificates.X509CertificateCollection+X509CertificateEnumerator')]
  DNX509CertificateEnumerator = interface(DDN.mscorlib.DNObject)
  ['{D8D12C69-3B6B-3983-8A5A-063CCC94D061}']
  { getters & setters } 

    function get_Current: DDN.mscorlib.DNX509Certificate;

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
    ///  枚举器已实例化后，已修改该集合。
    ///</exception>
    function MoveNext: Boolean;
    ///<summary>
    ///  将枚举数设置为其初始位置，该位置位于集合中第一个元素之前。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  枚举器实例化后修改该集合。
    ///</exception>
    procedure Reset;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  中 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate" />
    ///  中 <see cref="T:System.Security.Cryptography.X509Certificates.X509CertificateCollection" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  枚举数定位在集合或最后一个元素之后的第一个元素之前。
    ///</exception>
    property Current: DDN.mscorlib.DNX509Certificate read get_Current;
  end;

  TDNX509CertificateEnumerator = class(TDNGenericImport<DNX509CertificateEnumeratorClass, DNX509CertificateEnumerator>) end;

  //-------------namespace: System.Security.Cryptography.X509Certificates----------------
  DNX509ChainClass = interface(DDN.mscorlib.DNObjectClass)
  ['{896F2DDC-0F4A-5487-BC01-C5521CA05EA7}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNX509Chain; overload;
    ///<summary>
    ///  通过指定一个值指示是否应使用计算机上下文，初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="useMachineContext">
    ///  如果为 <see langword="true" />
    ///  ，则使用计算机上下文；如果为 <see langword="false" />
    ///  ，则使用当前用户上下文。
    ///</param>
    {class} function init(useMachineContext: Boolean): DNX509Chain; overload;
    ///<summary>
    ///  使用 X.509 链的 <see cref="T:System.IntPtr" />
    ///  句柄初始化 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="chainContext">
    ///  X.509 链的 <see cref="T:System.IntPtr" />
    ///  句柄。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="chainContext" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.Cryptography.CryptographicException"><paramref name="chainContext" />
    ///  参数指向无效的上下文。
    ///</exception>
    {class} function init(chainContext: IntPtr): DNX509Chain; overload;

  { static methods } 

    ///<summary>
    ///  查询 CryptoConfig 文件中定义的映射后，创建一个 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  对象，并将链映射到该映射。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  对象。
    ///</returns>
    {class} function Create: DNX509Chain;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.Security.Cryptography.X509Certificates.X509Certificate2" />
  ///  证书的链生成引擎。
  ///</summary>
  [DNTypeName('System.Security.Cryptography.X509Certificates.X509Chain')]
  DNX509Chain = interface(DDN.mscorlib.DNObject)
  ['{E7547572-505D-39B6-8C1A-9213662B7E5C}']
  { getters & setters } 

    function get_ChainContext: IntPtr;

  { methods } 

    ///<summary>
    ///  清除当前 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  对象。
    ///</summary>
    procedure Reset;
    ///<summary>
    ///  释放此 <see cref="T:System.Security.Cryptography.X509Certificates.X509Chain" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 X.509 链的句柄。
    ///</summary>
    ///<returns>
    ///  X.509 链的 <see cref="T:System.IntPtr" />
    ///  句柄。
    ///</returns>
    property ChainContext: IntPtr read get_ChainContext;
  end;

  TDNX509Chain = class(TDNGenericImport<DNX509ChainClass, DNX509Chain>) end;

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

  //-------------namespace: System.Drawing----------------
  DNPointClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{B23E3AA6-C68F-573E-8FD5-A8150E5D4997}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类的指定坐标。
    ///</summary>
    ///  <param name="x">
    ///  点的水平位置。
    ///</param>
    ///  <param name="y">
    ///  点的垂直位置。
    ///</param>
    {class} function init(x: Int32; y: Int32): DNPoint; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</summary>
    ///  <param name="sz">
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  新指定的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    {class} function init(sz: DNSize): DNPoint; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类使用的整数值所指定的坐标。
    ///</summary>
    ///  <param name="dw">
    ///  一个 32 位整数，它指定为新的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    {class} function init(dw: Int32): DNPoint; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNPoint;

  { static fields } 

    ///<summary>
    ///  表示 <see cref="T:System.Drawing.Point" />
    ///  具有 <see cref="P:System.Drawing.Point.X" />
    ///  和 <see cref="P:System.Drawing.Point.Y" />
    ///  值设置为零。
    ///</summary>
    {class} property Empty: DNPoint read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加指定 <see cref="T:System.Drawing.Size" />
    ///  到指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  要添加的 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  添加
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  即加法运算的结果。
    ///</returns>
    {class} function Add(pt: DNPoint; sz: DNSize): DNPoint;
    ///<summary>
    ///  返回的结果中减去指定 <see cref="T:System.Drawing.Size" />
    ///  从指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.Point" />
    ///  被减数。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  要从中减去 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  它是减法运算的结果。
    ///</returns>
    {class} function Subtract(pt: DNPoint; sz: DNSize): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过舍入的值 <see cref="T:System.Drawing.PointF" />
    ///  到下一个较大的整数值。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Ceiling(value: DNPointF): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过截断的值 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Truncate(value: DNPointF): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过舍入的对象 <see cref="T:System.Drawing.Point" />
    ///  值到最接近的整数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Round(value: DNPointF): DNPoint;

  end;

  ///<summary>
  ///  表示的整数 x 坐标和 y 坐标点定义在二维平面中的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.Point')]
  DNPoint = interface(DDN.mscorlib.DNValueType)
  ['{CD6CB0A8-D6EF-33E8-888E-FE8C78CA568F}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_X: Int32;
    procedure set_X(value: Int32);
    function get_Y: Int32;
    procedure set_Y(value: Int32);

  { methods } 

    ///<summary>
    ///  指定是否这 <see cref="T:System.Drawing.Point" />
    ///  包含与指定相同的坐标 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Point" />
    ///  并且具有与此相同的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  按指定量平移此 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="dx">
    ///  x 坐标的偏移量。
    ///</param>
    ///  <param name="dy">
    ///  y 坐标的偏移量。
    ///</param>
    procedure Offset(dx: Int32; dy: Int32); overload;
    ///<summary>
    ///  会将其转换 <see cref="T:System.Drawing.Point" />
    ///  由指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="p"><see cref="T:System.Drawing.Point" />
    ///  使用偏移量这 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    procedure Offset(p: DNPoint); overload;
    ///<summary>
    ///  将此转换 <see cref="T:System.Drawing.Point" />
    ///  到用户可读字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Point" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Point" />
    ///  是否为空。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果两个 <see cref="P:System.Drawing.Point.X" />
    ///  和 <see cref="P:System.Drawing.Point.Y" />
    ///  0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此的 x 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 x 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    property X: Int32 read get_X write set_X;
    ///<summary>
    ///  获取或设置此的 y 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 y 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    property Y: Int32 read get_Y write set_Y;
  end;

  TDNPoint = class(TDNGenericImport<DNPointClass, DNPoint>) end;

  //-------------namespace: System.Drawing----------------
  DNPointFClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{68F24B46-D3A6-59B7-BF29-00901DF2B211}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.PointF" />
    ///  类的指定坐标。
    ///</summary>
    ///  <param name="x">
    ///  点的水平位置。
    ///</param>
    ///  <param name="y">
    ///  点的垂直位置。
    ///</param>
    {class} function init(x: Single; y: Single): DNPointF;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNPointF;

  { static fields } 

    ///<summary>
    ///  表示的新实例 <see cref="T:System.Drawing.PointF" />
    ///  类的成员数据未被初始化。
    ///</summary>
    {class} property Empty: DNPointF read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  将转换给定 <see cref="T:System.Drawing.PointF" />
    ///  由指定 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  ，它指定要添加到的坐标的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Add(pt: DNPointF; sz: DNSize): DNPointF; overload;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.PointF" />
    ///  按指定大小的负值。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  ，它指定要从中的坐标减去的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Subtract(pt: DNPointF; sz: DNSize): DNPointF; overload;
    ///<summary>
    ///  将转换给定 <see cref="T:System.Drawing.PointF" />
    ///  由指定 <see cref="T:System.Drawing.SizeF" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.SizeF" />
    ///  ，它指定要添加到的坐标的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Add(pt: DNPointF; sz: DNSizeF): DNPointF; overload;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.PointF" />
    ///  按指定大小的负值。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.SizeF" />
    ///  ，它指定要从中的坐标减去的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Subtract(pt: DNPointF; sz: DNSizeF): DNPointF; overload;

  end;

  ///<summary>
  ///  表示的浮点 x 坐标和 y 坐标点定义在二维平面中的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.PointF')]
  DNPointF = interface(DDN.mscorlib.DNValueType)
  ['{A521101D-A776-3125-B530-67030F2E0A21}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_X: Single;
    procedure set_X(value: Single);
    function get_Y: Single;
    procedure set_Y(value: Single);

  { methods } 

    ///<summary>
    ///  指定是否这 <see cref="T:System.Drawing.PointF" />
    ///  包含与指定相同的坐标 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.PointF" />
    ///  并且具有与此相同的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此转换 <see cref="T:System.Drawing.PointF" />
    ///  到可读字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.PointF" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.PointF" />
    ///  是否为空。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果两个 <see cref="P:System.Drawing.PointF.X" />
    ///  和 <see cref="P:System.Drawing.PointF.Y" />
    ///  0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此的 x 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 x 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    property X: Single read get_X write set_X;
    ///<summary>
    ///  获取或设置此的 y 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 y 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    property Y: Single read get_Y write set_Y;
  end;

  TDNPointF = class(TDNGenericImport<DNPointFClass, DNPointF>) end;

  //-------------namespace: System.Drawing----------------
  DNSizeClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{156B7BC2-8B4A-54A9-9F29-1BBCFEFCB428}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Size" />
    ///  从指定的结构 <see cref="T:System.Drawing.Point" />
    ///  结构。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.Point" />
    ///  结构，可用于初始化此 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</param>
    {class} function init(pt: DNPoint): DNSize; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Size" />
    ///  根据指定的维度的结构。
    ///</summary>
    ///  <param name="width">
    ///  新的宽度分量 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  新的高度分量 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</param>
    {class} function init(width: Int32; height: Int32): DNSize; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNSize;

  { static fields } 

    ///<summary>
    ///  获取 <see cref="T:System.Drawing.Size" />
    ///  结构具有 <see cref="P:System.Drawing.Size.Height" />
    ///  和 <see cref="P:System.Drawing.Size.Width" />
    ///  值为 0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  具有 <see cref="P:System.Drawing.Size.Height" />
    ///  和 <see cref="P:System.Drawing.Size.Width" />
    ///  值为 0。
    ///</returns>
    {class} property Empty: DNSize read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加的宽度和高度的其中一个 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度与另一个 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1">
    ///  第一个 <see cref="T:System.Drawing.Size" />
    ///  可添加结构。
    ///</param>
    ///  <param name="sz2">
    ///  第二个 <see cref="T:System.Drawing.Size" />
    ///  可添加结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它是加法运算的结果。
    ///</returns>
    {class} function Add(sz1: DNSize; sz2: DNSize): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  按舍入的值显示结构 <see cref="T:System.Drawing.Size" />
    ///  到下一个较大的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Ceiling(value: DNSizeF): DNSize;
    ///<summary>
    ///  减去的宽度和高度的其中一个 <see cref="T:System.Drawing.Size" />
    ///  从宽度和高度与另一个结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1"><see cref="T:System.Drawing.Size" />
    ///  减法运算符左侧的结构。
    ///</param>
    ///  <param name="sz2"><see cref="T:System.Drawing.Size" />
    ///  减法运算符右侧的结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它是减法运算的结果。
    ///</returns>
    {class} function Subtract(sz1: DNSize; sz2: DNSize): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  通过截断的值的结构 <see cref="T:System.Drawing.SizeF" />
    ///  到下一个较低的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Truncate(value: DNSizeF): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  按舍入的值显示结构 <see cref="T:System.Drawing.SizeF" />
    ///  到最接近的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Round(value: DNSizeF): DNSize;

  end;

  ///<summary>
  ///  存储的整数，指定一个有序的对 <see cref="P:System.Drawing.Size.Height" />
  ///  和 <see cref="P:System.Drawing.Size.Width" />
  ///  。
  ///</summary>
  [DNTypeName('System.Drawing.Size')]
  DNSize = interface(DDN.mscorlib.DNValueType)
  ['{ECD5EB7F-1CD0-3F82-9997-5E4C9AB9F326}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Width: Int32;
    procedure set_Width(value: Int32);
    function get_Height: Int32;
    procedure set_Height(value: Int32);

  { methods } 

    ///<summary>
    ///  测试以确定指定的对象是否为 <see cref="T:System.Drawing.Size" />
    ///  具有与此相同的维度的结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Size" />
    ///  具有相同的宽度和高度与此 <see cref="T:System.Drawing.Size" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  创建一个用户可读的字符串，表示此 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Size" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  测试是否这 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度均为 0。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  时这 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度均为 0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此水平组件<see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此水平组件<see cref="T:System.Drawing.Size" />
    ///  结构，通常以像素度量。
    ///</returns>
    property Width: Int32 read get_Width write set_Width;
    ///<summary>
    ///  获取或设置的垂直分量 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  垂直分量 <see cref="T:System.Drawing.Size" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Height: Int32 read get_Height write set_Height;
  end;

  TDNSize = class(TDNGenericImport<DNSizeClass, DNSize>) end;

  //-------------namespace: System.Drawing----------------
  DNSizeFClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{889E69F7-7C5F-5D31-9A96-7A897B044864}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  从指定的现有结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="size"><see cref="T:System.Drawing.SizeF" />
    ///  从中创建新的结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(size: DNSizeF): DNSizeF; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  从指定的结构 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  结构，可用于初始化此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(pt: DNPointF): DNSizeF; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  根据指定的维度的结构。
    ///</summary>
    ///  <param name="width">
    ///  新的宽度分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    ///  <param name="height">
    ///  新的高度分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(width: Single; height: Single): DNSizeF; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNSizeF;

  { static fields } 

    ///<summary>
    ///  获取 <see cref="T:System.Drawing.SizeF" />
    ///  结构具有 <see cref="P:System.Drawing.SizeF.Height" />
    ///  和 <see cref="P:System.Drawing.SizeF.Width" />
    ///  值为 0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构具有 <see cref="P:System.Drawing.SizeF.Height" />
    ///  和 <see cref="P:System.Drawing.SizeF.Width" />
    ///  值为 0。
    ///</returns>
    {class} property Empty: DNSizeF read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加的宽度和高度的其中一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构的宽度和高度与另一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1">
    ///  第一个 <see cref="T:System.Drawing.SizeF" />
    ///  可添加结构。
    ///</param>
    ///  <param name="sz2">
    ///  第二个 <see cref="T:System.Drawing.SizeF" />
    ///  可添加结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构，它是加法运算的结果。
    ///</returns>
    {class} function Add(sz1: DNSizeF; sz2: DNSizeF): DNSizeF;
    ///<summary>
    ///  减去的宽度和高度的其中一个 <see cref="T:System.Drawing.SizeF" />
    ///  从宽度和高度与另一个结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1"><see cref="T:System.Drawing.SizeF" />
    ///  减法运算符左侧的结构。
    ///</param>
    ///  <param name="sz2"><see cref="T:System.Drawing.SizeF" />
    ///  减法运算符右侧的结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构，它是减法运算的结果。
    ///</returns>
    {class} function Subtract(sz1: DNSizeF; sz2: DNSizeF): DNSizeF;

  end;

  ///<summary>
  ///  将存储浮点数、 通常的宽度和高度的矩形的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.SizeF')]
  DNSizeF = interface(DDN.mscorlib.DNValueType)
  ['{56ABB41C-4516-30F6-882E-57F234AB5028}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Width: Single;
    procedure set_Width(value: Single);
    function get_Height: Single;
    procedure set_Height(value: Single);

  { methods } 

    ///<summary>
    ///  测试以确定指定的对象是否为 <see cref="T:System.Drawing.SizeF" />
    ///  具有与此相同的维度的结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.SizeF" />
    ///  具有相同的宽度和高度与此 <see cref="T:System.Drawing.SizeF" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</returns>
    function ToPointF: DNPointF;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function ToSize: DNSize;
    ///<summary>
    ///  创建一个用户可读的字符串，表示此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个字符串，表示此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Drawing.SizeF" />
    ///  结构的零宽度和高度。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  时这 <see cref="T:System.Drawing.SizeF" />
    ///  结构的宽度和高度均为零; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置的水平分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  水平分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Width: Single read get_Width write set_Width;
    ///<summary>
    ///  获取或设置的垂直分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  垂直分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Height: Single read get_Height write set_Height;
  end;

  TDNSizeF = class(TDNGenericImport<DNSizeFClass, DNSizeF>) end;


implementation

end.
