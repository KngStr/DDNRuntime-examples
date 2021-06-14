//-----------------------------------------------------------//
//                                                           //
//     DDN.System.Common                            
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.System.Common;

interface

uses
  DDN.Runtime,
  DDN.mscorlib;

type

{ enums }

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


  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  指定用于处理 DTD 的选项。
  ///<see cref="T:System.Xml.DtdProcessing" />
  ///  枚举由 <see cref="T:System.Xml.XmlReaderSettings" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Xml.DtdProcessing')]
  DNDtdProcessing = type Integer;
  DNDtdProcessingHelper = record helper for DNDtdProcessing
  public const
    ///<summary>
    ///  指定当遇到 DTD， <see cref="T:System.Xml.XmlException" />
    ///  会引发一条消息，表明 Dtd 被禁止。
    ///  这是默认行为。
    ///</summary>
    Prohibit = 0;
    ///<summary>
    ///  将导致 DOCTYPE 元素被忽略。
    ///  不进行 DTD 处理时发生。
    ///</summary>
    Ignore = 1;
    ///<summary>
    ///  用于分析 Dtd。
    ///</summary>
    Parse = 2;
  end;


  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  指定如何 <see cref="T:System.Xml.XmlTextReader" />
  ///  或 <see cref="T:System.Xml.XmlValidatingReader" />
  ///  处理实体。
  ///</summary>
  [DNTypeName('System.Xml.EntityHandling')]
  DNEntityHandling = type Integer;
  DNEntityHandlingHelper = record helper for DNEntityHandling
  public const
    ///<summary>
    ///  展开所有实体，并返回展开的节点。
    ///</summary>
    ExpandEntities = 1;
    ///<summary>
    ///  扩展字符实体，并返回作为常规实体 <see cref="F:System.Xml.XmlNodeType.EntityReference" />
    ///  节点。
    ///</summary>
    ExpandCharEntities = 2;
  end;


  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  指定如何处理空白区域。
  ///</summary>
  [DNTypeName('System.Xml.WhitespaceHandling')]
  DNWhitespaceHandling = type Integer;
  DNWhitespaceHandlingHelper = record helper for DNWhitespaceHandling
  public const
    ///<summary>
    ///  返回 <see langword="Whitespace" />
    ///  和 <see langword="SignificantWhitespace" />
    ///  节点。
    ///  这是默认设置。
    ///</summary>
    All = 0;
    ///<summary>
    ///  返回 <see langword="SignificantWhitespace" />
    ///  仅限节点。
    ///</summary>
    Significant = 1;
    ///<summary>
    ///  不返回任何 <see langword="Whitespace" />
    ///  和 no <see langword="SignificantWhitespace" />
    ///  节点。
    ///</summary>
    None = 2;
  end;


  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  定义命名空间范围。
  ///</summary>
  [DNTypeName('System.Xml.XmlNamespaceScope')]
  DNXmlNamespaceScope = type Integer;
  DNXmlNamespaceScopeHelper = record helper for DNXmlNamespaceScope
  public const
    ///<summary>
    ///  在当前节点的范围内定义的所有命名空间。
    ///  这包括总是隐式声明的 xmlns: xml 命名空间。
    ///  未定义的顺序返回的命名空间。
    ///</summary>
    All = 0;
    ///<summary>
    ///  在当前节点，包括总是隐式声明 xmlns: xml 命名空间范围内定义的所有命名空间。
    ///  未定义的顺序返回的命名空间。
    ///</summary>
    ExcludeXml = 1;
    ///<summary>
    ///  在当前节点本地定义的所有命名空间。
    ///</summary>
    Local = 2;
  end;


  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  指定节点的类型。
  ///</summary>
  [DNTypeName('System.Xml.XmlNodeType')]
  DNXmlNodeType = type Integer;
  DNXmlNodeTypeHelper = record helper for DNXmlNodeType
  public const
    ///<summary>
    ///  这由返回 <see cref="T:System.Xml.XmlReader" />
    ///  如果 <see langword="Read" />
    ///  不调用方法。
    ///</summary>
    None = 0;
    ///<summary>
    ///  元素 (例如， &lt;item&gt; )。
    ///</summary>
    Element = 1;
    ///<summary>
    ///  属性 (例如， id='123' )。
    ///</summary>
    Attribute = 2;
    ///<summary>
    ///  节点的文本内容。
    ///</summary>
    Text = 3;
    ///<summary>
    ///  CDATA 节 (例如， &lt;![CDATA[my escaped text]]&gt; )。
    ///</summary>
    CDATA = 4;
    ///<summary>
    ///  对实体的引用 (例如， &amp;num; )。
    ///</summary>
    EntityReference = 5;
    ///<summary>
    ///  实体声明 (例如， &lt;!ENTITY...&gt; )。
    ///</summary>
    Entity = 6;
    ///<summary>
    ///  处理指令 (例如， &lt;?pi test?&gt; )。
    ///</summary>
    ProcessingInstruction = 7;
    ///<summary>
    ///  注释 (例如， &lt;!-- my comment --&gt; )。
    ///</summary>
    Comment = 8;
    ///<summary>
    ///  文档提供的对象，作为文档树的根访问整个 XML 文档。
    ///</summary>
    Document = 9;
    ///<summary>
    ///  文档类型声明中，由以下标记 (例如， &lt;!DOCTYPE...&gt; )。
    ///</summary>
    DocumentType = 10;
    ///<summary>
    ///  将文档片段。
    ///</summary>
    DocumentFragment = 11;
    ///<summary>
    ///  在文档类型声明中的表示法 (例如， &lt;!NOTATION...&gt; )。
    ///</summary>
    Notation = 12;
    ///<summary>
    ///  标记之间的空白区域。
    ///</summary>
    Whitespace = 13;
    ///<summary>
    ///  在混合内容模型或内的空格中标记之间空白区域 xml:space="preserve" 作用域。
    ///</summary>
    SignificantWhitespace = 14;
    ///<summary>
    ///  结束元素标记 (例如， &lt;/item&gt; )。
    ///</summary>
    EndElement = 15;
    ///<summary>
    ///  返回当 <see langword="XmlReader" />
    ///  到达实体替换为调用的结果末尾 <see cref="M:System.Xml.XmlReader.ResolveEntity" />
    ///  。
    ///</summary>
    EndEntity = 16;
    ///<summary>
    ///  XML 声明 (例如， &lt;?xml version='1.0'?&gt; )。
    ///</summary>
    XmlDeclaration = 17;
  end;


  //-------------namespace: System.Xml.XPath----------------
  ///<summary>
  ///  定义命名空间范围。
  ///</summary>
  [DNTypeName('System.Xml.XPath.XPathNamespaceScope')]
  DNXPathNamespaceScope = type Integer;
  DNXPathNamespaceScopeHelper = record helper for DNXPathNamespaceScope
  public const
    ///<summary>
    ///  返回当前节点的作用域中定义的所有命名空间。
    ///  这包括 xmlns:xml 总是隐式声明的命名空间。
    ///  未定义的顺序返回的命名空间。
    ///</summary>
    All = 0;
    ///<summary>
    ///  返回在当前节点范围内定义的所有命名空间不包括 xmlns:xml 命名空间。
    ///  xmlns:xml 总是隐式声明命名空间。
    ///  未定义的顺序返回的命名空间。
    ///</summary>
    ExcludeXml = 1;
    ///<summary>
    ///  返回在当前节点本地定义的所有命名空间。
    ///</summary>
    Local = 2;
  end;


  //-------------namespace: System.Xml.XPath----------------
  ///<summary>
  ///  定义可从返回的 XPath 节点类型 <see cref="T:System.Xml.XPath.XPathNavigator" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Xml.XPath.XPathNodeType')]
  DNXPathNodeType = type Integer;
  DNXPathNodeTypeHelper = record helper for DNXPathNodeType
  public const
    ///<summary>
    ///  XML 文档或节点树的根节点。
    ///</summary>
    Root = 0;
    ///<summary>
    ///  一个元素，如 &lt;element&gt;。
    ///</summary>
    Element = 1;
    ///<summary>
    ///  一个属性，如 id='123'。
    ///</summary>
    Attribute = 2;
    ///<summary>
    ///  命名空间，如 xmlns="namespace"。
    ///</summary>
    Namespace = 3;
    ///<summary>
    ///  节点的文本内容。
    ///  等效于文档对象模型 (DOM) 的文本和 CDATA 节点类型。
    ///  包含至少一个字符。
    ///</summary>
    Text = 4;
    ///<summary>
    ///  具有空白字符的节点和 xml:space 设置为 preserve。
    ///</summary>
    SignificantWhitespace = 5;
    ///<summary>
    ///  与空白字符和任何有意义的空白节点。
    ///  空白字符 #x20, ，#x9, ，#xD, ，或 #xA。
    ///</summary>
    Whitespace = 6;
    ///<summary>
    ///  一个处理指令，如 &lt;?pi test?&gt;。
    ///  这不包括 XML 声明，看不到 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  类。
    ///</summary>
    ProcessingInstruction = 7;
    ///<summary>
    ///  一个注释，如 &lt;!-- my comment --&gt;
    ///</summary>
    Comment = 8;
    ///<summary>
    ///  任一 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  节点类型。
    ///</summary>
    All = 9;
  end;




type

{ declares }

  DNNameValueCollection = interface; // type: System.Collections.Specialized.NameValueCollection, namespace: System.Collections.Specialized
  DNConfigurationSectionCollection = interface; // type: System.Configuration.ConfigurationSectionCollection, namespace: System.Configuration
  DNConfigurationSectionGroupCollection = interface; // type: System.Configuration.ConfigurationSectionGroupCollection, namespace: System.Configuration
  DNConfiguration = interface; // type: System.Configuration.Configuration, namespace: System.Configuration
  DNConfigurationElement = interface; // type: System.Configuration.ConfigurationElement, namespace: System.Configuration
  DNConfigurationElementCollection = interface; // type: System.Configuration.ConfigurationElementCollection, namespace: System.Configuration
  DNConfigurationSection = interface; // type: System.Configuration.ConfigurationSection, namespace: System.Configuration
  DNConfigurationLockCollection = interface; // type: System.Configuration.ConfigurationLockCollection, namespace: System.Configuration
  DNConfigurationSectionGroup = interface; // type: System.Configuration.ConfigurationSectionGroup, namespace: System.Configuration
  DNElementInformation = interface; // type: System.Configuration.ElementInformation, namespace: System.Configuration
  DNProviderBase = interface; // type: System.Configuration.Provider.ProviderBase, namespace: System.Configuration.Provider
  DNProviderCollection = interface; // type: System.Configuration.Provider.ProviderCollection, namespace: System.Configuration.Provider
  DNSectionInformation = interface; // type: System.Configuration.SectionInformation, namespace: System.Configuration
  DNValidationEventHandler = interface; // type: System.Xml.Schema.ValidationEventHandler, namespace: System.Xml.Schema
  DNXmlNodeChangedEventHandler = interface; // type: System.Xml.XmlNodeChangedEventHandler, namespace: System.Xml
  DNValidationEventArgs = interface; // type: System.Xml.Schema.ValidationEventArgs, namespace: System.Xml.Schema
  DNICredentials = interface; // type: System.Net.ICredentials, namespace: System.Net
  DNFrameworkName = interface; // type: System.Runtime.Versioning.FrameworkName, namespace: System.Runtime.Versioning
  DNUri = interface; // type: System.Uri, namespace: System
  DNIXmlNamespaceResolver = interface; // type: System.Xml.IXmlNamespaceResolver, namespace: System.Xml
  DNIXmlSchemaInfo = interface; // type: System.Xml.Schema.IXmlSchemaInfo, namespace: System.Xml.Schema
  DNXmlSchemaCompilationSettings = interface; // type: System.Xml.Schema.XmlSchemaCompilationSettings, namespace: System.Xml.Schema
  DNXmlSchema = interface; // type: System.Xml.Schema.XmlSchema, namespace: System.Xml.Schema
  DNXmlSchemaSet = interface; // type: System.Xml.Schema.XmlSchemaSet, namespace: System.Xml.Schema
  DNXmlImplementation = interface; // type: System.Xml.XmlImplementation, namespace: System.Xml
  DNXmlAttributeCollection = interface; // type: System.Xml.XmlAttributeCollection, namespace: System.Xml
  DNXmlNamespaceManager = interface; // type: System.Xml.XmlNamespaceManager, namespace: System.Xml
  DNXmlNameTable = interface; // type: System.Xml.XmlNameTable, namespace: System.Xml
  DNXmlNode = interface; // type: System.Xml.XmlNode, namespace: System.Xml
  DNXmlAttribute = interface; // type: System.Xml.XmlAttribute, namespace: System.Xml
  DNXmlDocument = interface; // type: System.Xml.XmlDocument, namespace: System.Xml
  DNXmlDocumentFragment = interface; // type: System.Xml.XmlDocumentFragment, namespace: System.Xml
  DNXmlCDataSection = interface; // type: System.Xml.XmlCDataSection, namespace: System.Xml
  DNXmlComment = interface; // type: System.Xml.XmlComment, namespace: System.Xml
  DNXmlSignificantWhitespace = interface; // type: System.Xml.XmlSignificantWhitespace, namespace: System.Xml
  DNXmlText = interface; // type: System.Xml.XmlText, namespace: System.Xml
  DNXmlWhitespace = interface; // type: System.Xml.XmlWhitespace, namespace: System.Xml
  DNXmlDeclaration = interface; // type: System.Xml.XmlDeclaration, namespace: System.Xml
  DNXmlDocumentType = interface; // type: System.Xml.XmlDocumentType, namespace: System.Xml
  DNXmlElement = interface; // type: System.Xml.XmlElement, namespace: System.Xml
  DNXmlEntityReference = interface; // type: System.Xml.XmlEntityReference, namespace: System.Xml
  DNXmlProcessingInstruction = interface; // type: System.Xml.XmlProcessingInstruction, namespace: System.Xml
  DNXmlNodeList = interface; // type: System.Xml.XmlNodeList, namespace: System.Xml
  DNXmlParserContext = interface; // type: System.Xml.XmlParserContext, namespace: System.Xml
  DNXmlReader = interface; // type: System.Xml.XmlReader, namespace: System.Xml
  DNXmlTextReader = interface; // type: System.Xml.XmlTextReader, namespace: System.Xml
  DNXmlReaderSettings = interface; // type: System.Xml.XmlReaderSettings, namespace: System.Xml
  DNXmlResolver = interface; // type: System.Xml.XmlResolver, namespace: System.Xml
  DNXmlWriter = interface; // type: System.Xml.XmlWriter, namespace: System.Xml
  DNXmlWriterSettings = interface; // type: System.Xml.XmlWriterSettings, namespace: System.Xml
  DNXPathExpression = interface; // type: System.Xml.XPath.XPathExpression, namespace: System.Xml.XPath
  DNXPathNavigator = interface; // type: System.Xml.XPath.XPathNavigator, namespace: System.Xml.XPath
  DNXPathNodeIterator = interface; // type: System.Xml.XPath.XPathNodeIterator, namespace: System.Xml.XPath


{ objects }

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
  end;

  TDNNameValueCollection = class(TDNGenericImport<DNNameValueCollectionClass, DNNameValueCollection>) end;

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
  end;

  TDNConfigurationSectionGroupCollection = class(TDNGenericImport<DNConfigurationSectionGroupCollectionClass, DNConfigurationSectionGroupCollection>) end;

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

    function get_FilePath: string;
    function get_HasFile: Boolean;
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

    function get_IsPresent: Boolean;
    function get_IsLocked: Boolean;
    function get_IsCollection: Boolean;
    function get_Source: string;
    function get_LineNumber: Int32;
    function get_Type: DDN.mscorlib.DNType;
    function get_Errors: DDN.mscorlib.DNICollection;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

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
    ///  获取有关关联的元素和子元素的错误
    ///</summary>
    ///<returns>
    ///  包含关联的元素和子元素的错误的集合
    ///</returns>
    property Errors: DDN.mscorlib.DNICollection read get_Errors;
  end;

  TDNElementInformation = class(TDNGenericImport<DNElementInformationClass, DNElementInformation>) end;

  //-------------namespace: System.Configuration.Provider----------------
  DNProviderBaseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{85051926-190E-566B-B522-BF3B11EDA19C}']
  end;

  ///<summary>
  ///  提供了可扩展的提供程序模型的基实现。
  ///</summary>
  [DNTypeName('System.Configuration.Provider.ProviderBase')]
  DNProviderBase = interface(DDN.mscorlib.DNObject)
  ['{D0227721-E204-3476-BA2C-115540910409}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    ///<summary>
    ///  初始化配置生成器。
    ///</summary>
    ///  <param name="name">
    ///  提供程序的友好名称。
    ///</param>
    ///  <param name="config">
    ///  名称/值对的集合，表示在配置中为该提供程序指定的提供程序特定的属性。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  提供程序的名称是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  提供程序名称的长度为零。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  初始化提供程序后尝试在提供程序上调用 <see cref="M:System.Configuration.Provider.ProviderBase.Initialize(System.String,System.Collections.Specialized.NameValueCollection)" />
    ///  。
    ///</exception>
    procedure Initialize(name: string; config: DNNameValueCollection);
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

  TDNProviderBase = class(TDNGenericImport<DNProviderBaseClass, DNProviderBase>) end;

  //-------------namespace: System.Configuration.Provider----------------
  DNProviderCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8C06688A-4756-5591-B0A6-CFC7258B5DAD}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.Provider.ProviderCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNProviderCollection;

  end;

  ///<summary>
  ///  表示继承的提供程序对象的集合 <see cref="T:System.Configuration.Provider.ProviderBase" />
  ///  。
  ///</summary>
  [DNTypeName('System.Configuration.Provider.ProviderCollection')]
  DNProviderCollection = interface(DDN.mscorlib.DNObject)
  ['{51EEAC87-33DB-3D5E-B1FA-D6A04A9F844D}']
  { getters & setters } 

    function get_Item(name: string): DNProviderBase;
    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;

  { methods } 

    ///<summary>
    ///  向集合中添加一个提供程序。
    ///</summary>
    ///  <param name="provider">
    ///  要添加的提供程序。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="provider" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><see cref="P:System.Configuration.Provider.ProviderBase.Name" />
    ///  的 <paramref name="provider" />
    ///  是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  长度 <see cref="P:System.Configuration.Provider.ProviderBase.Name" />
    ///  的 <paramref name="provider" />
    ///  小于 1。
    ///</exception>
    procedure Add(provider: DNProviderBase);
    ///<summary>
    ///  从集合中移除一个提供程序。
    ///</summary>
    ///  <param name="name">
    ///  要删除的提供程序的名称。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  集合已设置只读的。
    ///</exception>
    procedure Remove(name: string);
    ///<summary>
    ///  返回一个对象，实现 <see cref="T:System.Collections.IEnumerator" />
    ///  接口，以循环访问集合。
    ///</summary>
    ///<returns>
    ///  实现的对象 <see cref="T:System.Collections.IEnumerator" />
    ///  来循环访问集合。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  设置的集合是只读的。
    ///</summary>
    procedure SetReadOnly;
    ///<summary>
    ///  从集合中移除所有项。
    ///</summary>
    ///<exception cref="T:System.NotSupportedException">
    ///  集合设置为只读的。
    ///</exception>
    procedure Clear;
    ///<summary>
    ///  将集合的内容复制到给定数组的指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  要复制到集合中的元素的数组。
    ///</param>
    ///  <param name="index">
    ///  从其开始复制过程的集合项的索引。
    ///</param>
    procedure CopyTo(&array: TArray<DNProviderBase>; index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNProviderBase read get_Item; default;
    ///<summary>
    ///  获取集合中的提供程序的数目。
    ///</summary>
    ///<returns>
    ///  集合中的提供程序的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，该值指示对集合的访问是否为同步的（线程安全）。
    ///</summary>
    ///<returns>
    ///  在所有情况下均为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取当前对象。
    ///</summary>
    ///<returns>
    ///  当前对象。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
  end;

  TDNProviderCollection = class(TDNGenericImport<DNProviderCollectionClass, DNProviderCollection>) end;

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

  //-------------namespace: System.Xml.Schema----------------
  DNValidationEventHandlerClass = interface(DDN.mscorlib.DNMulticastDelegateClass)
  ['{2053E376-DD8F-585D-B2AF-FB9936E84F2D}']
  { constructors } 

    {class} function init(&object: DDN.mscorlib.DNObject; method: IntPtr): DNValidationEventHandler;

  end;

  ///<summary>
  ///  表示将处理 XML 架构验证事件的回调方法和 <see cref="T:System.Xml.Schema.ValidationEventArgs" />
  ///  。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///  注意    然后再使用它在代码中确定发件人的类型。
  ///  您不能假定发件人为特定类型的实例。
  ///  发件人也不保证不会是 null。
  ///  总是使用失败处理逻辑要求您强制转换。
  ///</param>
  ///  <param name="e">
  ///  事件数据。
  ///</param>
  [DNTypeName('System.Xml.Schema.ValidationEventHandler')]
  DNValidationEventHandler = interface(DDN.mscorlib.DNMulticastDelegate)
  ['{67E07B4E-4BB9-3C72-83B1-87CCB8D98D6D}']
  { getters & setters } 

    function get_Method: DDN.mscorlib.DNMethodInfo;
    function get_Target: DDN.mscorlib.DNObject;

  { methods } 

    procedure Invoke(sender: DDN.mscorlib.DNObject; e: DNValidationEventArgs);
    function BeginInvoke(sender: DDN.mscorlib.DNObject; e: DNValidationEventArgs; callback: DDN.mscorlib.DNAsyncCallback; &object: DDN.mscorlib.DNObject): DDN.mscorlib.DNIAsyncResult;
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

  TDNValidationEventHandler = class(TDNGenericImport<DNValidationEventHandlerClass, DNValidationEventHandler>) end;

  //-------------namespace: System.Xml----------------
  DNXmlNodeChangedEventHandlerClass = interface(DDN.mscorlib.DNMulticastDelegateClass)
  ['{C181E91E-D919-5133-BE21-4619D09B954C}']
  { constructors } 

    {class} function init(&object: DDN.mscorlib.DNObject; method: IntPtr): DNXmlNodeChangedEventHandler;

  end;

  ///<summary>
  ///  表示用于处理的方法 <see cref="E:System.Xml.XmlDocument.NodeChanged" />
  ///  , ，<see cref="E:System.Xml.XmlDocument.NodeChanging" />
  ///  , ，<see cref="E:System.Xml.XmlDocument.NodeInserted" />
  ///  , ，<see cref="E:System.Xml.XmlDocument.NodeInserting" />
  ///  , ，<see cref="E:System.Xml.XmlDocument.NodeRemoved" />
  ///  和 <see cref="E:System.Xml.XmlDocument.NodeRemoving" />
  ///  事件。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.Xml.XmlNodeChangedEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.Xml.XmlNodeChangedEventHandler')]
  DNXmlNodeChangedEventHandler = interface(DDN.mscorlib.DNMulticastDelegate)
  ['{55D79924-5587-3679-9F86-9ACA33210157}']
  { getters & setters } 

    function get_Method: DDN.mscorlib.DNMethodInfo;
    function get_Target: DDN.mscorlib.DNObject;

  { methods } 

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

  TDNXmlNodeChangedEventHandler = class(TDNGenericImport<DNXmlNodeChangedEventHandlerClass, DNXmlNodeChangedEventHandler>) end;

  //-------------namespace: System.Xml.Schema----------------
  DNValidationEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{FD89FE6F-3039-5078-BA46-B00CE55AACA1}']
  end;

  ///<summary>
  ///  返回与相关的详细的信息 <see langword="ValidationEventHandler" />
  ///  。
  ///</summary>
  [DNTypeName('System.Xml.Schema.ValidationEventArgs')]
  DNValidationEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{49138DCC-3D4B-3D96-AF44-350EF4295AB3}']
  { getters & setters } 

    function get_Message: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取对应于验证事件的文本说明。
    ///</summary>
    ///<returns>
    ///  文本说明。
    ///</returns>
    property Message: string read get_Message;
  end;

  TDNValidationEventArgs = class(TDNGenericImport<DNValidationEventArgsClass, DNValidationEventArgs>) end;

  //-------------namespace: System.Net----------------
  ///<summary>
  ///  提供用于检索 Web 客户端身份验证的凭据的基本身份验证接口。
  ///</summary>
  [DNTypeName('System.Net.ICredentials')]
  DNICredentials = interface(DNObject)
  ['{AA928FDF-0CBF-3845-8ECB-08339B2DC61D}']
  end;

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
    {class} function TryCreate(baseUri: DNUri; relativeUri: string; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: DNUri; out result: DNUri): Boolean; overload;
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

  //-------------namespace: System.Xml----------------
  ///<summary>
  ///  提供对一组前缀和命名空间映射的只读访问。
  ///</summary>
  [DNTypeName('System.Xml.IXmlNamespaceResolver')]
  DNIXmlNamespaceResolver = interface(DNObject)
  ['{963A8E22-D935-3065-ACF5-220A8350C64F}']
  { methods } 

    ///<summary>
    ///  获取当前处于作用域定义的前缀和命名空间映射的集合。
    ///</summary>
    ///  <param name="scope">
    ///  一个 <see cref="T:System.Xml.XmlNamespaceScope" />
    ///  值，指定要返回的命名空间节点的类型。
    ///</param>
    ///<returns>
    ///  一个包含当前在范围内的命名空间的 <see cref="T:System.Collections.IDictionary" />
    ///  。
    ///</returns>
    function GetNamespacesInScope(scope: DNXmlNamespaceScope): DDN.mscorlib.DNIDictionary<string, string>;
    ///<summary>
    ///  获取 URI 映射到指定的前缀的命名空间。
    ///</summary>
    ///  <param name="prefix">
    ///  要查找其命名空间 URI 的前缀。
    ///</param>
    ///<returns>
    ///  映射到前缀的命名空间 URI；如果前缀未映射到命名空间 URI，则为 <see langword="null" />
    ///  。
    ///</returns>
    function LookupNamespace(prefix: string): string;
    ///<summary>
    ///  获取映射到指定的命名空间 URI 的前缀。
    ///</summary>
    ///  <param name="namespaceName">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  映射到命名空间 URI 的前缀；如果命名空间 URI 未映射到前缀，则为 <see langword="null" />
    ///  。
    ///</returns>
    function LookupPrefix(namespaceName: string): string;

  end;

  //-------------namespace: System.Xml.Schema----------------
  ///<summary>
  ///  定义已验证的 XML 节点的架构验证信息集。
  ///</summary>
  [DNTypeName('System.Xml.Schema.IXmlSchemaInfo')]
  DNIXmlSchemaInfo = interface(DNObject)
  ['{B877D1C0-5915-310A-8B75-8937F127300C}']
  { getters & setters } 

    function get_IsDefault: Boolean;
    function get_IsNil: Boolean;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否这个被验证的 XML 节点被设置为在 XML 架构定义语言 (XSD) 架构验证过程中应用的默认的结果。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此验证的 XML 节点被设置为默认值在架构验证，则为期间应用的结果否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDefault: Boolean read get_IsDefault;
    ///<summary>
    ///  获取一个值，该值指示此验证的 XML 节点值是否为零。
    ///</summary>
    ///<returns><see langword="true" />
    ///  此值被验证的 XML 节点是否为零;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsNil: Boolean read get_IsNil;
  end;

  //-------------namespace: System.Xml.Schema----------------
  DNXmlSchemaCompilationSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{BC03EB50-C5AF-5D01-B23B-153DCDBC4324}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Schema.XmlSchemaCompilationSettings" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlSchemaCompilationSettings;

  end;

  ///<summary>
  ///  提供有关的架构编译选项 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
  ///  此类不能被继承的类。
  ///</summary>
  [DNTypeName('System.Xml.Schema.XmlSchemaCompilationSettings')]
  DNXmlSchemaCompilationSettings = interface(DDN.mscorlib.DNObject)
  ['{97EE4B70-692A-3087-8C45-C10098A42C8A}']
  { getters & setters } 

    function get_EnableUpaCheck: Boolean;
    procedure set_EnableUpaCheck(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，该值指示是否 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  应检查唯一粒子归属 (UPA) 冲突。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  应检查唯一粒子归属 (UPA) 冲突; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property EnableUpaCheck: Boolean read get_EnableUpaCheck write set_EnableUpaCheck;
  end;

  TDNXmlSchemaCompilationSettings = class(TDNGenericImport<DNXmlSchemaCompilationSettingsClass, DNXmlSchemaCompilationSettings>) end;

  //-------------namespace: System.Xml.Schema----------------
  DNXmlSchemaClass = interface(DNObjectClass)
  ['{7248DFD9-39DA-5D4C-8B98-25C3608AEEE2}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlSchema;

  { static fields getter & setter } 

   function __fakeFieldGet_Namespace: string;
   function __fakeFieldGet_InstanceNamespace: string;

  { static fields } 

    ///<summary>
    ///  XML 架构命名空间。
    ///  此字段为常数。
    ///</summary>
    {class} property Namespace: string read __fakeFieldGet_Namespace;
    ///<summary>
    ///  XML 架构实例命名空间。
    ///  此字段为常数。
    ///</summary>
    {class} property InstanceNamespace: string read __fakeFieldGet_InstanceNamespace;

  { static methods } 

    ///<summary>
    ///  所提供的读取 XML 架构 <see cref="T:System.IO.TextReader" />
    ///  。
    ///</summary>
    ///  <param name="reader"><see langword="TextReader" />
    ///  包含要读取的 XML 架构。
    ///</param>
    ///  <param name="validationEventHandler">
    ///  验证事件处理程序，它接收 XML 架构语法错误的相关信息。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  表示 XML 架构的对象。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException"><see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  如果没有，则引发 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定。
    ///</exception>
    {class} function Read(reader: DDN.mscorlib.DNTextReader; validationEventHandler: DNValidationEventHandler): DNXmlSchema; overload;
    ///<summary>
    ///  从提供的流中读取 XML 架构。
    ///</summary>
    ///  <param name="stream">
    ///  提供的数据流。
    ///</param>
    ///  <param name="validationEventHandler">
    ///  验证事件处理程序，它接收 XML 架构语法错误的相关信息。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  表示 XML 架构的对象。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException"><see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  如果没有，则引发 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定。
    ///</exception>
    {class} function Read(stream: DDN.mscorlib.DNStream; validationEventHandler: DNValidationEventHandler): DNXmlSchema; overload;
    ///<summary>
    ///  所提供的读取 XML 架构 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</summary>
    ///  <param name="reader"><see langword="XmlReader" />
    ///  包含要读取的 XML 架构。
    ///</param>
    ///  <param name="validationEventHandler">
    ///  验证事件处理程序，它接收 XML 架构语法错误的相关信息。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  表示 XML 架构的对象。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException"><see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  如果没有，则引发 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定。
    ///</exception>
    {class} function Read(reader: DNXmlReader; validationEventHandler: DNValidationEventHandler): DNXmlSchema; overload;

  end;

  ///<summary>
  ///  XML 架构，World Wide Web 联合会 (W3C) 中指定的内存中表示 XML Schema Part 1: Structures 和 XML Schema Part 2: Datatypes 规范。
  ///</summary>
  [DNTypeName('System.Xml.Schema.XmlSchema')]
  DNXmlSchema = interface(DNObject)
  ['{C6EC789B-76E3-3FC4-B6C0-383D1AB66E1E}']
  { getters & setters } 

    function get_TargetNamespace: string;
    procedure set_TargetNamespace(value: string);
    function get_Version: string;
    procedure set_Version(value: string);
    function get_IsCompiled: Boolean;
    function get_Id: string;
    procedure set_Id(value: string);
    function get_UnhandledAttributes: TArray<DNXmlAttribute>;
    procedure set_UnhandledAttributes(value: TArray<DNXmlAttribute>);
    function get_LineNumber: Int32;
    procedure set_LineNumber(value: Int32);
    function get_LinePosition: Int32;
    procedure set_LinePosition(value: Int32);
    function get_SourceUri: string;
    procedure set_SourceUri(value: string);

  { methods } 

    ///<summary>
    ///  将　XML 架构写入提供的数据流中。
    ///</summary>
    ///  <param name="stream">
    ///  提供的数据流。
    ///</param>
    procedure Write(stream: DDN.mscorlib.DNStream); overload;
    ///<summary>
    ///  将 XML 架构写入提供 <see cref="T:System.IO.Stream" />
    ///  使用 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  指定。
    ///</summary>
    ///  <param name="stream">
    ///  提供的数据流。
    ///</param>
    ///  <param name="namespaceManager"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</param>
    procedure Write(stream: DDN.mscorlib.DNStream; namespaceManager: DNXmlNamespaceManager); overload;
    ///<summary>
    ///  将 XML 架构写入提供 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</summary>
    ///  <param name="writer">
    ///  要向其中进行写入的 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</param>
    procedure Write(writer: DDN.mscorlib.DNTextWriter); overload;
    ///<summary>
    ///  将 XML 架构写入提供 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</summary>
    ///  <param name="writer">
    ///  要向其中进行写入的 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</param>
    ///  <param name="namespaceManager"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</param>
    procedure Write(writer: DDN.mscorlib.DNTextWriter; namespaceManager: DNXmlNamespaceManager); overload;
    ///<summary>
    ///  将 XML 架构写入提供 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="writer">
    ///  要向其中进行写入的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="writer" />
    ///  参数为 null。
    ///</exception>
    procedure Write(writer: DNXmlWriter); overload;
    ///<summary>
    ///  将 XML 架构对象模型 (SOM) 编译为架构信息供验证使用。
    ///  用于检查以编程方式生成的 SOM 的语法和语义结构。
    ///  语义验证检查在编译期间执行。
    ///</summary>
    ///  <param name="validationEventHandler">
    ///  验证事件处理程序接收 XML 架构验证错误的相关信息。
    ///</param>
    ///  <param name="resolver"><see langword="XmlResolver" />
    ///  用于解析命名空间中引用 <see langword="include" />
    ///  和 <see langword="import" />
    ///  元素。
    ///</param>
    procedure Compile(validationEventHandler: DNValidationEventHandler; resolver: DNXmlResolver); overload;
    ///<summary>
    ///  将 XML 架构写入提供 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="writer">
    ///  要向其中进行写入的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</param>
    ///  <param name="namespaceManager"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</param>
    procedure Write(writer: DNXmlWriter; namespaceManager: DNXmlNamespaceManager); overload;
    ///<summary>
    ///  将 XML 架构对象模型 (SOM) 编译为架构信息供验证使用。
    ///  用于检查以编程方式生成的 SOM 的语法和语义结构。
    ///  语义验证检查在编译期间执行。
    ///</summary>
    ///  <param name="validationEventHandler">
    ///  验证事件处理程序，它接收 XML 架构验证错误的相关信息。
    ///</param>
    procedure Compile(validationEventHandler: DNValidationEventHandler); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置架构目标命名空间的统一资源标识符 (URI)。
    ///</summary>
    ///<returns>
    ///  架构目标命名空间。
    ///</returns>
    property TargetNamespace: string read get_TargetNamespace write set_TargetNamespace;
    ///<summary>
    ///  获取或设置架构的版本。
    ///</summary>
    ///<returns>
    ///  架构的版本。
    ///  默认值为 <see langword="String.Empty" />
    ///  。
    ///</returns>
    property Version: string read get_Version write set_Version;
    ///<summary>
    ///  表明架构是否已编译。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果已编译架构，否则， <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsCompiled: Boolean read get_IsCompiled;
    ///<summary>
    ///  获取或设置字符串 ID。
    ///</summary>
    ///<returns>
    ///  字符串的 ID。
    ///  默认值为 <see langword="String.Empty" />
    ///  。
    ///</returns>
    property Id: string read get_Id write set_Id;
    ///<summary>
    ///  获取和设置不属于架构目标命名空间的限定属性。
    ///</summary>
    ///<returns>
    ///  数组的限定 <see cref="T:System.Xml.XmlAttribute" />
    ///  对象不属于架构目标命名空间。
    ///</returns>
    property UnhandledAttributes: TArray<DNXmlAttribute> read get_UnhandledAttributes write set_UnhandledAttributes;
    ///<summary>
    ///  获取或设置到的文件中的行号 <see langword="schema" />
    ///  元素引用。
    ///</summary>
    ///<returns>
    ///  行号。
    ///</returns>
    property LineNumber: Int32 read get_LineNumber write set_LineNumber;
    ///<summary>
    ///  获取或设置到的文件中的行位置 <see langword="schema" />
    ///  元素引用。
    ///</summary>
    ///<returns>
    ///  行位置。
    ///</returns>
    property LinePosition: Int32 read get_LinePosition write set_LinePosition;
    ///<summary>
    ///  获取或设置加载的架构的文件的源位置。
    ///</summary>
    ///<returns>
    ///  文件的源位置 (URI)。
    ///</returns>
    property SourceUri: string read get_SourceUri write set_SourceUri;
  end;

  TDNXmlSchema = class(TDNGenericImport<DNXmlSchemaClass, DNXmlSchema>)
  public const
    ///<summary>
    ///  XML 架构命名空间。
    ///  此字段为常数。
    ///</summary>
   Namespace = 'http://www.w3.org/2001/XMLSchema';
    ///<summary>
    ///  XML 架构实例命名空间。
    ///  此字段为常数。
    ///</summary>
   InstanceNamespace = 'http://www.w3.org/2001/XMLSchema-instance';
  end;

  //-------------namespace: System.Xml.Schema----------------
  DNXmlSchemaSetClass = interface(DDN.mscorlib.DNObjectClass)
  ['{80051FF8-3AEB-56C0-919B-ECBEFDC42875}']
  { static getter & setter } 

    procedure set_XmlResolver(value: DNXmlResolver);

  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlSchemaSet; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  初始化 <see cref="T:System.Xml.XmlNameTable" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="nameTable">
    ///  要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlNameTable" />
    ///  对象作为参数传递 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(nameTable: DNXmlNameTable): DNXmlSchemaSet; overload;

  { static propertys } 

    ///<summary>
    ///  集 <see cref="T:System.Xml.XmlResolver" />
    ///  用于解析包含和导入的架构元素的命名空间或中引用的位置。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlResolver" />
    ///  用于解析包含和导入的架构元素的命名空间或中引用的位置。
    ///</returns>
    {class} property XmlResolver: DNXmlResolver write set_XmlResolver;
  end;

  ///<summary>
  ///  包含 XML 架构定义语言 (XSD) 架构的缓存。
  ///</summary>
  [DNTypeName('System.Xml.Schema.XmlSchemaSet')]
  DNXmlSchemaSet = interface(DDN.mscorlib.DNObject)
  ['{2EECF1F1-E906-338D-AA1A-21E3F90E6E8D}']
  { getters & setters } 

    function get_NameTable: DNXmlNameTable;
    function get_IsCompiled: Boolean;
    procedure set_XmlResolver(value: DNXmlResolver);
    function get_CompilationSettings: DNXmlSchemaCompilationSettings;
    procedure set_CompilationSettings(value: DNXmlSchemaCompilationSettings);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将 XML 架构定义语言 (XSD) 架构添加到指定的 URL 处 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="targetNamespace">
    ///  架构 targetNamespace 属性，或 <see langword="null" />
    ///  使用 targetNamespace 架构中指定。
    ///</param>
    ///  <param name="schemaUri">
    ///  指定要加载的架构的 URL。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象架构是否有效。
    ///  如果架构不是有效且 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定了，则 <see langword="null" />
    ///  返回并引发适当的验证事件。
    ///  否则会引发 <see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  架构是无效的。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  作为参数传递的 URL 是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception>
    function Add(targetNamespace: string; schemaUri: string): DNXmlSchema; overload;
    ///<summary>
    ///  添加包含在 XML 架构定义语言 (XSD) 架构 <see cref="T:System.Xml.XmlReader" />
    ///  到 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="targetNamespace">
    ///  架构 targetNamespace 属性，或 <see langword="null" />
    ///  使用 targetNamespace 架构中指定。
    ///</param>
    ///  <param name="schemaDocument"><see cref="T:System.Xml.XmlReader" />
    ///  对象。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象架构是否有效。
    ///  如果架构不是有效且 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定了，则 <see langword="null" />
    ///  返回并引发适当的验证事件。
    ///  否则会引发 <see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  架构是无效的。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象作为参数传递 <see langword="null" />
    ///  。
    ///</exception>
    function Add(targetNamespace: string; schemaDocument: DNXmlReader): DNXmlSchema; overload;
    ///<summary>
    ///  中的所有 XML 架构定义语言 (XSD) 架构中都添加给定 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  到 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schemas"><see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  中的架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  对象作为参数传递 <see langword="null" />
    ///  。
    ///</exception>
    procedure Add(schemas: DNXmlSchemaSet); overload;
    ///<summary>
    ///  添加了给定 <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  到 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schema"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  要添加到对象 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象架构是否有效。
    ///  如果架构不是有效且 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定了，则 <see langword="null" />
    ///  返回并引发适当的验证事件。
    ///  否则会引发 <see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  架构是无效的。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象作为参数传递 <see langword="null" />
    ///  。
    ///</exception>
    function Add(schema: DNXmlSchema): DNXmlSchema; overload;
    ///<summary>
    ///  删除指定的 XML 架构定义语言 (XSD) 架构从 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schema"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象以去除 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  从已删除对象 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  或 <see langword="null" />
    ///  如果中找不到该架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  架构不是有效的架构。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  参数原样传递 <see langword="null" />
    ///  。
    ///</exception>
    function Remove(schema: DNXmlSchema): DNXmlSchema;
    ///<summary>
    ///  该值指示指定的目标命名空间 URI 与 XML 架构定义语言 (XSD) 架构是否处于 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="targetNamespace">
    ///  架构 targetNamespace 属性。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果与指定的目标命名空间 URI 的架构是否在 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(targetNamespace: string): Boolean; overload;
    ///<summary>
    ///  指示是否指定的 XML 架构定义语言 (XSD) <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象处于 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schema"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象处于 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  参数原样传递 <see langword="null" />
    ///  。
    ///</exception>
    function &Contains(schema: DNXmlSchema): Boolean; overload;
    ///<summary>
    ///  将所有复制 <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象从 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  到给定数组，从给定索引处开始。
    ///</summary>
    ///  <param name="schemas">
    ///  要向其复制对象的数组。
    ///</param>
    ///  <param name="index">
    ///  数组中开始复制处的索引。
    ///</param>
    procedure CopyTo(schemas: TArray<DNXmlSchema>; index: Int32);
    ///<summary>
    ///  返回集合的所有 XML 架构定义语言 (XSD) 架构中的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Collections.ICollection" />
    ///  对象，其中包含已添加到的所有架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///  如果没有架构已添加到 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  , ，空 <see cref="T:System.Collections.ICollection" />
    ///  返回对象。
    ///</returns>
    function Schemas: DDN.mscorlib.DNICollection; overload;
    ///<summary>
    ///  返回集合的所有 XML 架构定义语言 (XSD) 架构中的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  属于给定命名空间。
    ///</summary>
    ///  <param name="targetNamespace">
    ///  架构 targetNamespace 属性。
    ///</param>
    ///<returns><see cref="T:System.Collections.ICollection" />
    ///  对象，其中包含已添加到的所有架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  属于给定命名空间。
    ///  如果没有架构已添加到 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  , ，空 <see cref="T:System.Collections.ICollection" />
    ///  返回对象。
    ///</returns>
    function Schemas(targetNamespace: string): DDN.mscorlib.DNICollection; overload;
    ///<summary>
    ///  删除指定的 XML 架构定义语言 (XSD) 架构和它从中导入的所有架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schemaToRemove"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象以去除 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象以及所有导入已成功删除; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  参数原样传递 <see langword="null" />
    ///  。
    ///</exception>
    function RemoveRecursive(schemaToRemove: DNXmlSchema): Boolean;
    ///<summary>
    ///  重新处理 XML 架构定义语言 (XSD) 架构中已存在 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///  <param name="schema">
    ///  要重新处理的架构。
    ///</param>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象架构是否是有效的架构。
    ///  如果架构不是有效且 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定，则 <see langword="null" />
    ///  返回并引发适当的验证事件。
    ///  否则会引发 <see cref="T:System.Xml.Schema.XmlSchemaException" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  架构是无效的。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象作为参数传递 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><see cref="T:System.Xml.Schema.XmlSchema" />
    ///  对象传递参数中已不存在，因此 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</exception>
    function Reprocess(schema: DNXmlSchema): DNXmlSchema;
    ///<summary>
    ///  将添加到 XML 架构定义语言 (XSD) 架构编译 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  成一个逻辑架构。
    ///</summary>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaException">
    ///  验证和编译中的架构时出错 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</exception>
    procedure Compile;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取默认 <see cref="T:System.Xml.XmlNameTable" />
    ///  使用 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  加载新的 XML 架构定义语言 (XSD) 架构时。
    ///</summary>
    ///<returns>
    ///  原子化字符串对象表。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  获取一个值，该值指示是否在 XML 架构定义语言 (XSD) 架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  已编译。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在架构 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  自上次架构已添加或删除从已编译 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsCompiled: Boolean read get_IsCompiled;
    ///<summary>
    ///  集 <see cref="T:System.Xml.XmlResolver" />
    ///  用于解析包含和导入的架构元素的命名空间或中引用的位置。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlResolver" />
    ///  用于解析包含和导入的架构元素的命名空间或中引用的位置。
    ///</returns>
    property XmlResolver: DNXmlResolver write set_XmlResolver;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Xml.Schema.XmlSchemaCompilationSettings" />
    ///  的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchemaCompilationSettings" />
    ///  的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///  默认值是 <see cref="T:System.Xml.Schema.XmlSchemaCompilationSettings" />
    ///  实例与 <see cref="P:System.Xml.Schema.XmlSchemaCompilationSettings.EnableUpaCheck" />
    ///  属性设置为 <see langword="true" />
    ///  。
    ///</returns>
    property CompilationSettings: DNXmlSchemaCompilationSettings read get_CompilationSettings write set_CompilationSettings;
    ///<summary>
    ///  获取数逻辑 XML 架构定义语言 (XSD) 架构中 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</summary>
    ///<returns>
    ///  中的逻辑架构数 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNXmlSchemaSet = class(TDNGenericImport<DNXmlSchemaSetClass, DNXmlSchemaSet>) end;

  //-------------namespace: System.Xml----------------
  DNXmlImplementationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{616B9815-E140-5278-AE6F-7D21CF454BB0}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.XmlImplementation" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlImplementation; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Xml.XmlImplementation" />
    ///  类 <see cref="T:System.Xml.XmlNameTable" />
    ///  指定。
    ///</summary>
    ///  <param name="nt">
    ///  一个 <see cref="T:System.Xml.XmlNameTable" />
    ///  对象。
    ///</param>
    {class} function init(nt: DNXmlNameTable): DNXmlImplementation; overload;

  end;

  ///<summary>
  ///  定义一组的上下文 <see cref="T:System.Xml.XmlDocument" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Xml.XmlImplementation')]
  DNXmlImplementation = interface(DDN.mscorlib.DNObject)
  ['{B742D53C-E509-34DC-BAD5-2B37A1AFC661}']
  { methods } 

    ///<summary>
    ///  创建一个新的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns>
    ///  新的 <see langword="XmlDocument" />
    ///  对象。
    ///</returns>
    function CreateDocument: DNXmlDocument;
    ///<summary>
    ///  测试是否有文档对象模型 (DOM) 实现所实现的特定功能。
    ///</summary>
    ///  <param name="strFeature">
    ///  要测试的功能的程序包名称。
    ///  该名称不区分大小写。
    ///</param>
    ///  <param name="strVersion">
    ///  这是要测试的程序包名称的版本号。
    ///  如果未指定版本 (<see langword="null" />
    ///  )，则支持该功能的任何版本会导致该方法以返回 <see langword="true" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果在指定的版本; 中实现该功能否则为 <see langword="false" />
    ///  。
    ///  下表显示了导致的组合 <see langword="HasFeature" />
    ///  返回 <see langword="true" />
    ///  。
    ///  strFeature
    ///  strVersion
    ///  XML
    ///  1.0
    ///  XML
    ///  2.0
    ///</returns>
    function HasFeature(strFeature: string; strVersion: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXmlImplementation = class(TDNGenericImport<DNXmlImplementationClass, DNXmlImplementation>) end;

  //-------------namespace: System.Xml----------------
  DNXmlAttributeCollectionClass = interface(DNObjectClass)
  ['{7D8D432B-42C5-5DD1-81AC-C7E940F30448}']
  end;

  ///<summary>
  ///  表示可以按名称或索引访问的属性的集合。
  ///</summary>
  [DNTypeName('System.Xml.XmlAttributeCollection')]
  DNXmlAttributeCollection = interface(DNObject)
  ['{AFF15495-0AAB-3C7F-A744-CB752611089E}']
  { getters & setters } 

    function get_ItemOf(i: Int32): DNXmlAttribute; overload;
    function get_ItemOf(name: string): DNXmlAttribute; overload;
    function get_ItemOf(localName: string; namespaceURI: string): DNXmlAttribute; overload;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  添加 <see cref="T:System.Xml.XmlNode" />
    ///  使用其 <see cref="P:System.Xml.XmlNode.Name" />
    ///  属性
    ///</summary>
    ///  <param name="node">
    ///  要在此集合中存储的属性节点。
    ///  以后将使用节点的名称可以访问该节点。
    ///  如果已在集合中存在具有该名称的节点，则替换它一个新;否则，该节点被追加到集合的末尾。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="node" />
    ///  替换现有节点具有相同名称，旧节点则返回; 否则为返回添加的节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="node" />
    ///  创建来自不同 <see cref="T:System.Xml.XmlDocument" />
    ///  比创建此集合。
    ///  这 <see langword="XmlAttributeCollection" />
    ///  是只读的。
    ///</exception><exception cref="T:System.InvalidOperationException"><paramref name="node" />
    ///  是 <see cref="T:System.Xml.XmlAttribute" />
    ///  已的另一个属性 <see cref="T:System.Xml.XmlElement" />
    ///  对象。
    ///  若要重新使用在其他元素中的属性，则必须将克隆 <see langword="XmlAttribute" />
    ///  对象想要重新使用。
    ///</exception>
    function SetNamedItem(node: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的特性插入集合中的第一个节点。
    ///</summary>
    ///  <param name="node">
    ///  要插入的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</param>
    ///<returns><see langword="XmlAttribute" />
    ///  添加到集合。
    ///</returns>
    function Prepend(node: DNXmlAttribute): DNXmlAttribute;
    ///<summary>
    ///  将集合中的最后一个节点作为插入指定的属性。
    ///</summary>
    ///  <param name="node">
    ///  要插入的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</param>
    ///<returns><see langword="XmlAttribute" />
    ///  要追加到集合。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="node" />
    ///  已创建从不同于创建此集合的文档。
    ///</exception>
    function Append(node: DNXmlAttribute): DNXmlAttribute;
    ///<summary>
    ///  将插入指定的属性之前指定的引用属性。
    ///</summary>
    ///  <param name="newNode">
    ///  要插入的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</param>
    ///  <param name="refNode"><see cref="T:System.Xml.XmlAttribute" />
    ///  ，它是引用属性。
    ///  <paramref name="newNode" />
    ///  前后放置 <paramref name="refNode" />
    ///  。
    ///</param>
    ///<returns><see langword="XmlAttribute" />
    ///  要插入到集合。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="newNode" />
    ///  从文档不同于创建此集合创建。
    ///  或者 <paramref name="refNode" />
    ///  不是此集合的成员。
    ///</exception>
    function InsertBefore(newNode: DNXmlAttribute; refNode: DNXmlAttribute): DNXmlAttribute;
    ///<summary>
    ///  在指定的引用属性之后立即插入指定的特性。
    ///</summary>
    ///  <param name="newNode">
    ///  要插入的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</param>
    ///  <param name="refNode"><see cref="T:System.Xml.XmlAttribute" />
    ///  ，它是引用属性。
    ///  <paramref name="newNode" />
    ///  放置后 <paramref name="refNode" />
    ///  。
    ///</param>
    ///<returns><see langword="XmlAttribute" />
    ///  要插入到集合。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="newNode" />
    ///  从文档不同于创建此集合创建。
    ///  或者 <paramref name="refNode" />
    ///  不是此集合的成员。
    ///</exception>
    function InsertAfter(newNode: DNXmlAttribute; refNode: DNXmlAttribute): DNXmlAttribute;
    ///<summary>
    ///  从集合中移除指定的属性。
    ///</summary>
    ///  <param name="node">
    ///  要移除的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</param>
    ///<returns>
    ///  已移除的节点或 <see langword="null" />
    ///  如果它找不到集合中。
    ///</returns>
    function Remove(node: DNXmlAttribute): DNXmlAttribute;
    ///<summary>
    ///  删除指定的索引从集合相对应的属性。
    ///</summary>
    ///  <param name="i">
    ///  要删除的节点的索引。
    ///  第一个节点的索引为 0。
    ///</param>
    ///<returns>
    ///  返回 <see langword="null" />
    ///  是否存在任何属性中指定索引处。
    ///</returns>
    function RemoveAt(i: Int32): DNXmlAttribute;
    ///<summary>
    ///  移除集合中的所有属性。
    ///</summary>
    procedure RemoveAll;
    ///<summary>
    ///  将所有复制 <see cref="T:System.Xml.XmlAttribute" />
    ///  到给定数组此集合中的对象。
    ///</summary>
    ///  <param name="array">
    ///  一个数组，它是从该集合复制的对象的目标。
    ///</param>
    ///  <param name="index">
    ///  复制开始处的数组中的索引。
    ///</param>
    procedure CopyTo(&array: TArray<DNXmlAttribute>; index: Int32);
    ///<summary>
    ///  检索 <see cref="T:System.Xml.XmlNode" />
    ///  由名称指定。
    ///</summary>
    ///  <param name="name">
    ///  要检索的节点的限定的名称。
    ///  它针对匹配节点的 <see cref="P:System.Xml.XmlNode.Name" />
    ///  属性进行匹配。
    ///</param>
    ///<returns><see langword="XmlNode" />
    ///  具有指定名称或 <see langword="null" />
    ///  如果找不到匹配的节点。
    ///</returns>
    function GetNamedItem(name: string): DNXmlNode; overload;
    ///<summary>
    ///  删除从节点 <see langword="XmlNamedNodeMap" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  要移除的节点的限定的名称。
    ///  名称匹配对 <see cref="P:System.Xml.XmlNode.Name" />
    ///  匹配节点的属性。
    ///</param>
    ///<returns><see langword="XmlNode" />
    ///  删除从此 <see langword="XmlNamedNodeMap" />
    ///  或 <see langword="null" />
    ///  如果找不到匹配的节点。
    ///</returns>
    function RemoveNamedItem(name: string): DNXmlNode; overload;
    ///<summary>
    ///  检索在指定索引处的节点 <see langword="XmlNamedNodeMap" />
    ///  。
    ///</summary>
    ///  <param name="index">
    ///  要从检索的节点的索引位置 <see langword="XmlNamedNodeMap" />
    ///  。
    ///  索引是从零开始;因此，第一个节点的索引为 0，最后一个节点的索引为 <see cref="P:System.Xml.XmlNamedNodeMap.Count" />
    ///  -1。
    ///</param>
    ///<returns>
    ///  位于指定索引处的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///  如果 <paramref name="index" />
    ///  小于 0 或大于或等于 <see cref="P:System.Xml.XmlNamedNodeMap.Count" />
    ///  属性， <see langword="null" />
    ///  返回。
    ///</returns>
    function Item(index: Int32): DNXmlNode;
    ///<summary>
    ///  检索与匹配的节点 <see cref="P:System.Xml.XmlNode.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  。
    ///</summary>
    ///  <param name="localName">
    ///  要检索的节点本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间统一资源标识符 (URI) 的节点来检索。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  具有匹配的本地名称和命名空间 URI 或 <see langword="null" />
    ///  如果找不到匹配的节点。
    ///</returns>
    function GetNamedItem(localName: string; namespaceURI: string): DNXmlNode; overload;
    ///<summary>
    ///  中删除具有匹配节点 <see cref="P:System.Xml.XmlNode.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  。
    ///</summary>
    ///  <param name="localName">
    ///  要移除的节点本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间节点的 URI 中删除。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  删除或 <see langword="null" />
    ///  如果找不到匹配的节点。
    ///</returns>
    function RemoveNamedItem(localName: string; namespaceURI: string): DNXmlNode; overload;
    ///<summary>
    ///  中的节点集合上进行"foreach"样式迭代提供支持 <see langword="XmlNamedNodeMap" />
    ///  。
    ///</summary>
    ///<returns>
    ///  枚举器对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ItemOf[i: Int32]: DNXmlAttribute read get_ItemOf; default;
    property ItemOf[name: string]: DNXmlAttribute read get_ItemOf; default;
    property ItemOf[localName: string; namespaceURI: string]: DNXmlAttribute read get_ItemOf; default;
    ///<summary>
    ///  获取中的节点数 <see langword="XmlNamedNodeMap" />
    ///  。
    ///</summary>
    ///<returns>
    ///  节点数。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNXmlAttributeCollection = class(TDNGenericImport<DNXmlAttributeCollectionClass, DNXmlAttributeCollection>) end;

  //-------------namespace: System.Xml----------------
  DNXmlNamespaceManagerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{B8483CCF-B8DD-5A89-B0AB-9F9015775557}']
  { constructors } 

    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  初始化 <see cref="T:System.Xml.XmlNameTable" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="nameTable">
    ///  要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NullReferenceException"><see langword="null" />
    ///  传递给构造函数
    ///</exception>
    {class} function init(nameTable: DNXmlNameTable): DNXmlNamespaceManager;

  end;

  ///<summary>
  ///  解析集合的命名空间、向集合添加命名空间和从集合中移除命名空间，以及提供对这些命名空间的范围管理。
  ///</summary>
  [DNTypeName('System.Xml.XmlNamespaceManager')]
  DNXmlNamespaceManager = interface(DDN.mscorlib.DNObject)
  ['{C5338A3B-B457-3C22-9CD2-4786DF44090F}']
  { getters & setters } 

    function get_NameTable: DNXmlNameTable;
    function get_DefaultNamespace: string;

  { methods } 

    ///<summary>
    ///  将命名空间范围推送到堆栈上。
    ///</summary>
    procedure PushScope;
    ///<summary>
    ///  将命名空间范围弹出堆栈。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果有留在堆栈上的命名空间范围， <see langword="false" />
    ///  如果有多个要弹出的命名空间。
    ///</returns>
    function PopScope: Boolean;
    ///<summary>
    ///  为给定的前缀移除给定的命名空间。
    ///</summary>
    ///  <param name="prefix">
    ///  命名空间的前缀
    ///</param>
    ///  <param name="uri">
    ///  要为给定的前缀移除的命名空间。
    ///  所移除的命名空间来自当前的命名空间范围。
    ///  忽略当前范围以外的命名空间。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  值 <paramref name="prefix" />
    ///  或 <paramref name="uri" />
    ///  是 <see langword="null" />
    ///  。
    ///</exception>
    procedure RemoveNamespace(prefix: string; uri: string);
    ///<summary>
    ///  获取指定前缀的命名空间 URI。
    ///</summary>
    ///  <param name="prefix">
    ///  要解析其命名空间 URI 的前缀。
    ///  若要匹配默认命名空间，请传递 String.Empty。
    ///</param>
    ///<returns>
    ///  返回的命名空间 URI 为 <paramref name="prefix" />
    ///  或 <see langword="null" />
    ///  如果没有映射的命名空间。
    ///  返回的字符串是原子化的。
    ///  原子化字符串的详细信息，请参阅 <see cref="T:System.Xml.XmlNameTable" />
    ///  类。
    ///</returns>
    function LookupNamespace(prefix: string): string;
    ///<summary>
    ///  查找为给定的命名空间 URI 声明的前缀。
    ///</summary>
    ///  <param name="uri">
    ///  要为前缀解析的命名空间。
    ///</param>
    ///<returns>
    ///  匹配的前缀。
    ///  如果没有映射的前缀，则方法返回 String.Empty。
    ///  如果提供 null 值，则 <see langword="null" />
    ///  返回。
    ///</returns>
    function LookupPrefix(uri: string): string;
    ///<summary>
    ///  获取一个值，该值指示所提供的前缀是否具有为当前推送的范围定义的命名空间。
    ///</summary>
    ///  <param name="prefix">
    ///  你想要查找的命名空间前缀。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果没有定义; 的命名空间，否则为<see langword="false" />
    ///  。
    ///</returns>
    function HasNamespace(prefix: string): Boolean;
    ///<summary>
    ///  将给定的命名空间添加到集合。
    ///</summary>
    ///  <param name="prefix">
    ///  与要添加的命名空间关联的前缀。
    ///  使用 String.Empty 来添加默认命名空间。
    ///  注意如果 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  将使用用于解析 XML 路径语言 (XPath) 表达式中的命名空间，则必须指定前缀。
    ///  如果 XPath 表达式不包含前缀，则假定命名空间统一资源标识符 (URI) 为空命名空间。
    ///  有关 XPath 表达式的详细信息和 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  , ，请参阅 <see cref="M:System.Xml.XmlNode.SelectNodes(System.String)" />
    ///  和 <see cref="M:System.Xml.XPath.XPathExpression.SetContext(System.Xml.XmlNamespaceManager)" />
    ///  方法。
    ///</param>
    ///  <param name="uri">
    ///  要添加的命名空间。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  值为 <paramref name="prefix" />
    ///  是"xml"或"xmlns"。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  值为 <paramref name="prefix" />
    ///  或 <paramref name="uri" />
    ///  是 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddNamespace(prefix: string; uri: string);
    ///<summary>
    ///  返回一个枚举器，用于循环访问中的命名空间 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  包含存储的前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  获取被可用于枚举当前范围内的命名空间的前缀键控的命名空间名称的集合。
    ///</summary>
    ///  <param name="scope">
    ///  一个指定要返回的命名空间节点的类型的枚举值。
    ///</param>
    ///<returns>
    ///  当前范围中的命名空间和前缀对的集合。
    ///</returns>
    function GetNamespacesInScope(scope: DNXmlNamespaceScope): DDN.mscorlib.DNIDictionary<string, string>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlNameTable" />
    ///  与此对象关联。
    ///</summary>
    ///<returns>
    ///  此对象使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  获取默认命名空间的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  返回默认命名空间的命名空间 URI；如果没有默认命名空间，则返回 String.Empty。
    ///</returns>
    property DefaultNamespace: string read get_DefaultNamespace;
  end;

  TDNXmlNamespaceManager = class(TDNGenericImport<DNXmlNamespaceManagerClass, DNXmlNamespaceManager>) end;

  //-------------namespace: System.Xml----------------
  DNXmlNameTableClass = interface(DDN.mscorlib.DNObjectClass)
  ['{77150595-D80A-50B6-8E01-202CC752528A}']
  end;

  ///<summary>
  ///  原子化字符串对象表。
  ///</summary>
  [DNTypeName('System.Xml.XmlNameTable')]
  DNXmlNameTable = interface(DDN.mscorlib.DNObject)
  ['{14B8B8DB-2F35-39C8-A2F8-9BC1E9834472}']
  { methods } 

    ///<summary>
    ///  当在派生类中重写时获取包含指定的范围内的给定数组中的字符相同的字符的原子化的字符串。
    ///</summary>
    ///  <param name="array">
    ///  包含要查找的名称的字符数组。
    ///</param>
    ///  <param name="offset">
    ///  数组中指定名称的第一个字符从零开始的索引。
    ///</param>
    ///  <param name="length">
    ///  在名称中的字符数。
    ///</param>
    ///<returns>
    ///  原子化的字符串或 <see langword="null" />
    ///  如果字符串具有不尚未原子化。
    ///  如果 <paramref name="length" />
    ///  为零，则返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.IndexOutOfRangeException">
    ///  0 &gt; <paramref name="offset" />
    ///  - 或 -
    ///  <paramref name="offset" />
    ///  &gt;= <paramref name="array" />
    ///  .长度
    ///  - 或 -
    ///  <paramref name="length" />
    ///  &gt; <paramref name="array" />
    ///  .长度
    ///  上述条件不会导致如果引发异常 <paramref name="length" />
    ///  = 0。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="length" />
    ///  &lt; 0.
    ///</exception>
    function Get(&array: TArray<Char>; offset: Int32; length: Int32): string; overload;
    ///<summary>
    ///  当在派生类中重写时获取包含与指定的字符串相同的值的原子化的字符串。
    ///</summary>
    ///  <param name="array">
    ///  要查找的名称。
    ///</param>
    ///<returns>
    ///  原子化的字符串或 <see langword="null" />
    ///  如果字符串具有不尚未原子化。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function Get(&array: string): string; overload;
    ///<summary>
    ///  当在派生类中重写，将指定的字符串原子化并将其添加到 <see langword="XmlNameTable" />
    ///  。
    ///</summary>
    ///  <param name="array">
    ///  包含要添加的名称的字符数组。
    ///</param>
    ///  <param name="offset">
    ///  数组中指定名称的第一个字符的从零开始索引。
    ///</param>
    ///  <param name="length">
    ///  在名称中的字符数。
    ///</param>
    ///<returns>
    ///  新原子化的字符串或现有如果已经存在。
    ///  如果长度为零，则返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.IndexOutOfRangeException">
    ///  0 &gt; <paramref name="offset" />
    ///  - 或 -
    ///  <paramref name="offset" />
    ///  &gt;= <paramref name="array" />
    ///  .长度
    ///  - 或 -
    ///  <paramref name="length" />
    ///  &gt; <paramref name="array" />
    ///  .长度
    ///  上述条件不会导致如果引发异常 <paramref name="length" />
    ///  = 0。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="length" />
    ///  &lt; 0.
    ///</exception>
    function Add(&array: TArray<Char>; offset: Int32; length: Int32): string; overload;
    ///<summary>
    ///  当在派生类中重写，将指定的字符串原子化并将其添加到 <see langword="XmlNameTable" />
    ///  。
    ///</summary>
    ///  <param name="array">
    ///  要添加的名称。
    ///</param>
    ///<returns>
    ///  新原子化的字符串或现有如果已经存在。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function Add(&array: string): string; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXmlNameTable = class(TDNGenericImport<DNXmlNameTableClass, DNXmlNameTable>) end;

  //-------------namespace: System.Xml----------------
  DNXmlNodeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{67ED459D-701F-5264-948A-65FB8009A866}']
  end;

  ///<summary>
  ///  表示 XML 文档中的单个节点。
  ///</summary>
  [DNTypeName('System.Xml.XmlNode')]
  DNXmlNode = interface(DDN.mscorlib.DNObject)
  ['{1E11AFE9-F059-35CC-A0C3-B9AA38701C21}']
  { getters & setters } 

    function get_Name: string;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_LocalName: string;
    function get_IsReadOnly: Boolean;
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  用于定位此对象。
    ///</summary>
    ///<returns><see langword="XPathNavigator" />
    ///  对象，用于导航节点。
    ///<see langword="XPathNavigator" />
    ///  定位从中调用该方法的节点上。
    ///  它不定位在文档的根上。
    ///</returns>
    function CreateNavigator: DNXPathNavigator;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///</exception>
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///  请参阅 XPath 示例。
    ///</exception>
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之前。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newChild" />
    ///  放置在该节点之前。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之后。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newNode" />
    ///  放在 <paramref name="refNode" />
    ///  。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  替换子节点 <paramref name="oldChild" />
    ///  与 <paramref name="newChild" />
    ///  节点。
    ///</summary>
    ///  <param name="newChild">
    ///  要放入子列表的新节点。
    ///</param>
    ///  <param name="oldChild">
    ///  列表中正在被替换的节点。
    ///</param>
    ///<returns>
    ///  被替换的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///  <paramref name="oldChild" />
    ///  不是此节点的子级。
    ///</exception>
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  移除指定的子节点。
    ///</summary>
    ///  <param name="oldChild">
    ///  正在被移除的节点。
    ///</param>
    ///<returns>
    ///  已移除的节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="oldChild" />
    ///  不是此节点的子级。
    ///  或此节点是只读的。
    ///</exception>
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的开头。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的末尾。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将此 XmlNode 下子树完全深度中的所有 XmlText 节点都转换成“正常”形式，在这种形式中只有标记（即标记、注释、处理指令、CDATA 节和实体引用）分隔 XmlText 节点，也就是说，没有相邻的 XmlText 节点。
    ///</summary>
    procedure Normalize;
    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function Clone: DNXmlNode;
    ///<summary>
    ///  获取循环访问当前节点中子节点的枚举。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问当前节点中的子节点的对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  移除当前节点的所有子节点和/或属性。
    ///</summary>
    procedure RemoveAll;
    ///<summary>
    ///  查找最接近 xmlns 为给定的前缀的当前节点范围内，在声明中返回的命名空间 URI 声明。
    ///</summary>
    ///  <param name="prefix">
    ///  你想查找的命名空间 URI 的前缀。
    ///</param>
    ///<returns>
    ///  指定前缀的命名空间 URI。
    ///</returns>
    function GetNamespaceOfPrefix(prefix: string): string;
    ///<summary>
    ///  查找最接近 xmlns 位于给定命名空间 URI，它用于当前节点范围内，并返回声明中定义的前缀声明。
    ///</summary>
    ///  <param name="namespaceURI">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的命名空间 URI 的前缀。
    ///</returns>
    function GetPrefixOfNamespace(namespaceURI: string): string;
    ///<summary>
    ///  当在派生类中被重写时，创建该节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  不能克隆的节点类型上调用此方法。
    ///</exception>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  测试 DOM 实现是否实现特定的功能。
    ///</summary>
    ///  <param name="feature">
    ///  要测试的功能的程序包名称。
    ///  该名称不区分大小写。
    ///</param>
    ///  <param name="version">
    ///  要测试的程序包名称的版本号。
    ///  如果不指定版本 (null)，则支持该功能的任何版本会导致方法返回 true。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果在指定的版本; 中实现该功能否则为 <see langword="false" />
    ///  。
    ///  下表描述了返回的组合 <see langword="true" />
    ///  。
    ///  功能
    ///  版本
    ///  XML
    ///  1.0
    ///  XML
    ///  2.0
    ///</returns>
    function Supports(feature: string; version: string): Boolean;
    ///<summary>
    ///  将当前节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  , ，当在派生类中重写。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将所有子节点的节点都保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  , ，当在派生类中重写。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  当在派生类中被重写时，获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  节点的限定名称。
    ///  返回的名称是依赖于 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点︰
    ///  类型
    ///  名称
    ///  特性
    ///  属性的限定名称。
    ///  CDATA
    ///  #cdata-section
    ///  注释
    ///  #comment
    ///  Document
    ///  #document
    ///  DocumentFragment
    ///  #document-fragment
    ///  DocumentType
    ///  文档类型名称。
    ///  元素
    ///  元素的限定名。
    ///  实体
    ///  实体的名称。
    ///  EntityReference
    ///  引用的实体的名称。
    ///  Notation
    ///  表示法名称。
    ///  ProcessingInstruction
    ///  处理指令的目标。
    ///  Text
    ///  #text
    ///  Whitespace
    ///  #whitespace
    ///  SignificantWhitespace
    ///  #significant-whitespace
    ///  XmlDeclaration
    ///  #xml-declaration
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于<see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点︰
    ///  类型
    ///  值
    ///  特性
    ///  属性的值。
    ///  CDATASection
    ///  CDATA 节的内容。
    ///  注释
    ///  注释的内容。
    ///  Document
    ///<see langword="null" />
    ///  。
    ///  DocumentFragment
    ///<see langword="null" />
    ///  。
    ///  DocumentType
    ///<see langword="null" />
    ///  。
    ///  元素
    ///<see langword="null" />
    ///  。
    ///  你可以使用<see cref="P:System.Xml.XmlElement.InnerText" />
    ///  或<see cref="P:System.Xml.XmlElement.InnerXml" />
    ///  属性来访问元素节点的值。
    ///  实体
    ///<see langword="null" />
    ///  。
    ///  EntityReference
    ///<see langword="null" />
    ///  。
    ///  Notation
    ///<see langword="null" />
    ///  。
    ///  ProcessingInstruction
    ///  全部内容（不包括指令目标）。
    ///  Text
    ///  文本节点的内容。
    ///  SignificantWhitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  Whitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  XmlDeclaration
    ///  声明 （即，之间的所有内容的内容&lt;?xml and=""?&gt;).
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点的值设置为只读。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  不应该具有值 （例如，元素节点） 的节点的值设置。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的类型。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNodeType" />
    ///  值之一。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父级（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  作为当前节点父级的 <see langword="XmlNode" />
    ///  。
    ///  如果刚刚创建了一个节点且尚未将其添加到树中，或如果已从树中移除了该节点，则父级为 <see langword="null" />
    ///  。
    ///  对于所有其他节点，返回的值取决于 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点。
    ///  下表描述了 <see langword="ParentNode" />
    ///  属性可能的返回值。
    ///  NodeType
    ///  ParentNode 的返回值
    ///  Attribute、Document、DocumentFragment、Entity、Notation
    ///  返回 <see langword="null" />
    ///  ; 这些节点不具有父级。
    ///  CDATA
    ///  返回包含 CDATA 节的元素或实体引用。
    ///  注释
    ///  返回包含注释的元素、实体引用、文档类型或文档。
    ///  DocumentType
    ///  返回文档节点。
    ///  元素
    ///  返回该元素的父节点。
    ///  如果该元素是树中的根节点，则父级是文档节点。
    ///  EntityReference
    ///  返回包含该实体引用的元素、特性或实体引用。
    ///  ProcessingInstruction
    ///  返回包含该处理指令的文档、元素、文档类型或实体引用。
    ///  Text
    ///  返回包含该文本节点的父元素、特性或实体引用。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取节点的所有子节点。
    ///</summary>
    ///<returns>
    ///  一个包含节点的所有子节点的对象。
    ///  如果不有任何子节点，此属性返回一个空 <see cref="T:System.Xml.XmlNodeList" />
    ///  。
    ///</returns>
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see langword="XmlNode" />
    ///  。
    ///  如果前面没有节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns>
    ///  下一个 <see langword="XmlNode" />
    ///  。
    ///  如果没有下一个节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  包含此节点的属性。
    ///</summary>
    ///<returns><see langword="XmlAttributeCollection" />
    ///  包含节点的属性。
    ///  如果节点为 XmlNodeType.Element 类型，则返回该节点的属性。
    ///  否则，此属性将返回 <see langword="null" />
    ///  。
    ///</returns>
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取此节点所属的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlDocument" />
    ///  此节点所属。
    ///  如果节点是 <see cref="T:System.Xml.XmlDocument" />
    ///  （NodeType 等于 XmlNodeType.Document），则此属性返回 <see langword="null" />
    ///  。
    ///</returns>
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    ///<summary>
    ///  获取节点的第一个子级。
    ///</summary>
    ///<returns>
    ///  节点的第一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property FirstChild: DNXmlNode read get_FirstChild;
    ///<summary>
    ///  获取节点的最后一个子级。
    ///</summary>
    ///<returns>
    ///  节点的最后一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property LastChild: DNXmlNode read get_LastChild;
    ///<summary>
    ///  获取一个值，该值指示此节点是否有任何子节点。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节点具有子节点，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasChildNodes: Boolean read get_HasChildNodes;
    ///<summary>
    ///  获取该节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间 URI。
    ///  如果没有命名空间 URI，则此属性返回 String.Empty。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取或设置该节点的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间前缀。
    ///  例如， <see langword="Prefix" />
    ///  元素 &lt; bk:book &gt; 是 bk。
    ///  如果没有前缀，则该属性返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  指定的前缀包含无效字符。
    ///  指定的前缀格式不正确。
    ///  指定的前缀为"xml"，并且该节点的 namespaceURI 为"http://www.w3.org/XML/1998/namespace"不同。
    ///  此节点是一个属性和指定的前缀为"xmlns"，并且该节点的 namespaceURI 为不同于"http://www.w3.org/2000/xmlns/"。
    ///  此节点是属性，该节点的 qualifiedName 是"xmlns"。
    ///</exception>
    property Prefix: string read get_Prefix write set_Prefix;
    ///<summary>
    ///  当在派生类中被重写时，获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  移除了前缀的节点的名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="LocalName" />
    ///  是 book。
    ///  返回的名称是依赖于 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点︰
    ///  类型
    ///  名称
    ///  特性
    ///  属性的本地名称。
    ///  CDATA
    ///  #cdata-section
    ///  注释
    ///  #comment
    ///  Document
    ///  #document
    ///  DocumentFragment
    ///  #document-fragment
    ///  DocumentType
    ///  文档类型名称。
    ///  元素
    ///  元素的本地名称。
    ///  实体
    ///  实体的名称。
    ///  EntityReference
    ///  引用的实体的名称。
    ///  Notation
    ///  表示法名称。
    ///  ProcessingInstruction
    ///  处理指令的目标。
    ///  Text
    ///  #text
    ///  Whitespace
    ///  #whitespace
    ///  SignificantWhitespace
    ///  #significant-whitespace
    ///  XmlDeclaration
    ///  #xml-declaration
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取指示节点是否只读的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果节点是只读的;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取或设置节点及其所有子节点的串连值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子节点的串连值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  获取包含此节点及其所有子节点的标记。
    ///</summary>
    ///<returns>
    ///  包含此节点及其所有子节点的标记。
    ///<see langword="OuterXml" />
    ///  不会返回默认属性。
    ///</returns>
    property OuterXml: string read get_OuterXml;
    ///<summary>
    ///  获取或设置仅表示该节点的子节点的标记。
    ///</summary>
    ///<returns>
    ///  该节点的子节点的标记。
    ///<see langword="InnerXml" />
    ///  不会返回默认属性。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在节点上设置此属性不能有子节点。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    property InnerXml: string read get_InnerXml write set_InnerXml;
    ///<summary>
    ///  获取作为架构验证的结果分配给此节点的后架构验证信息集。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，其中包含此节点的后架构验证信息集。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  从其加载节点的位置；如果节点没有基 URI，则为 String.Empty。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlNode = class(TDNGenericImport<DNXmlNodeClass, DNXmlNode>) end;

  //-------------namespace: System.Xml----------------
  DNXmlAttributeClass = interface(DNXmlNodeClass)
  ['{568F5F75-91DF-5716-991A-DE584FED5846}']
  { static getter & setter } 

    procedure set_InnerText(value: string);
    procedure set_InnerXml(value: string);

  { static propertys } 

    ///<summary>
    ///  设置节点及其所有子级的串连的值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子级的串连值。
    ///  对于属性节点，此属性具有相同的功能 <see cref="P:System.Xml.XmlAttribute.Value" />
    ///  属性。
    ///</returns>
    {class} property InnerText: string write set_InnerText;
    ///<summary>
    ///  设置该属性的值。
    ///</summary>
    ///<returns>
    ///  特性值。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    {class} property InnerXml: string write set_InnerXml;
  end;

  ///<summary>
  ///  表示属性。
  ///  属性的有效值和默认值在文档类型定义 (DTD) 或架构中定义。
  ///</summary>
  [DNTypeName('System.Xml.XmlAttribute')]
  DNXmlAttribute = interface(DNXmlNode)
  ['{D53A0503-137B-30F4-8409-E7299C90A5C8}']
  { getters & setters } 

    function get_ParentNode: DNXmlNode;
    function get_Name: string;
    function get_LocalName: string;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_NodeType: DNXmlNodeType;
    function get_OwnerDocument: DNXmlDocument;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    procedure set_InnerText(value: string);
    function get_Specified: Boolean;
    function get_OwnerElement: DNXmlElement;
    procedure set_InnerXml(value: string);
    function get_BaseURI: string;
    function get_ChildNodes: DNXmlNodeList;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_Attributes: DNXmlAttributeCollection;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep"><see langword="true" />
    ///  递归地克隆指定节点之下的子树 <see langword="false" />
    ///  克隆节点本身
    ///</param>
    ///<returns>
    ///  重复节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之前。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see cref="T:System.Xml.XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newChild" />
    ///  放置在该节点之前。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  插入。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之后。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see cref="T:System.Xml.XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newChild" />
    ///  放在 <paramref name="refChild" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  插入。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将替换与指定的新子节点指定的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  新的子 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</param>
    ///  <param name="oldChild"><see cref="T:System.Xml.XmlNode" />
    ///  来替换。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  替换。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///  <paramref name="oldChild" />
    ///  不是此节点的子级。
    ///</exception>
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  删除指定的子节点。
    ///</summary>
    ///  <param name="oldChild">
    ///  要移除的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  中删除。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="oldChild" />
    ///  不是此节点的子级。
    ///  或此节点是只读的。
    ///</exception>
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的开头。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///  如果它是 <see cref="T:System.Xml.XmlDocumentFragment" />
    ///  , ，将文档片段的全部内容移至该节点的子列表。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  添加。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的末尾。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  添加。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  创建 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  用于定位此对象。
    ///</summary>
    ///<returns><see langword="XPathNavigator" />
    ///  对象，用于导航节点。
    ///<see langword="XPathNavigator" />
    ///  定位从中调用该方法的节点上。
    ///  它不定位在文档的根上。
    ///</returns>
    function CreateNavigator: DNXPathNavigator;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///</exception>
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///  请参阅 XPath 示例。
    ///</exception>
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    ///<summary>
    ///  将此 XmlNode 下子树完全深度中的所有 XmlText 节点都转换成“正常”形式，在这种形式中只有标记（即标记、注释、处理指令、CDATA 节和实体引用）分隔 XmlText 节点，也就是说，没有相邻的 XmlText 节点。
    ///</summary>
    procedure Normalize;
    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function Clone: DNXmlNode;
    ///<summary>
    ///  获取循环访问当前节点中子节点的枚举。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问当前节点中的子节点的对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  移除当前节点的所有子节点和/或属性。
    ///</summary>
    procedure RemoveAll;
    ///<summary>
    ///  查找最接近 xmlns 为给定的前缀的当前节点范围内，在声明中返回的命名空间 URI 声明。
    ///</summary>
    ///  <param name="prefix">
    ///  你想查找的命名空间 URI 的前缀。
    ///</param>
    ///<returns>
    ///  指定前缀的命名空间 URI。
    ///</returns>
    function GetNamespaceOfPrefix(prefix: string): string;
    ///<summary>
    ///  查找最接近 xmlns 位于给定命名空间 URI，它用于当前节点范围内，并返回声明中定义的前缀声明。
    ///</summary>
    ///  <param name="namespaceURI">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的命名空间 URI 的前缀。
    ///</returns>
    function GetPrefixOfNamespace(namespaceURI: string): string;
    ///<summary>
    ///  测试 DOM 实现是否实现特定的功能。
    ///</summary>
    ///  <param name="feature">
    ///  要测试的功能的程序包名称。
    ///  该名称不区分大小写。
    ///</param>
    ///  <param name="version">
    ///  要测试的程序包名称的版本号。
    ///  如果不指定版本 (null)，则支持该功能的任何版本会导致方法返回 true。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果在指定的版本; 中实现该功能否则为 <see langword="false" />
    ///  。
    ///  下表描述了返回的组合 <see langword="true" />
    ///  。
    ///  功能
    ///  版本
    ///  XML
    ///  1.0
    ///  XML
    ///  2.0
    ///</returns>
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取此节点的父级。
    ///  有关 <see langword="XmlAttribute" />
    ///  节点，此属性始终返回 <see langword="null" />
    ///  。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlAttribute" />
    ///  节点，此属性始终返回 <see langword="null" />
    ///  。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  属性节点的限定的名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  移除了前缀的属性节点的名称。
    ///  在下面的示例 &lt; 预订 bk:genre = '新颖 &gt;，则 <see langword="LocalName" />
    ///  的属性是 <see langword="genre" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取该节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间 URI。
    ///  如果该属性未显式给予命名空间，则此属性返回 String.Empty。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取或设置该节点的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间前缀。
    ///  如果没有前缀，则该属性返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  指定的前缀包含无效字符。
    ///  指定的前缀格式不正确。
    ///  该节点的 namespaceURI 为 <see langword="null" />
    ///  。
    ///  指定的前缀为"xml"，并且该节点的 namespaceURI 为"http://www.w3.org/XML/1998/namespace"不同。
    ///  此节点是一个属性，指定的前缀为"xmlns"，并且该节点的 namespaceURI 为不同于"http://www.w3.org/2000/xmlns/"。
    ///  此节点是一个特性，且该节点的 qualifiedName"xmlns"[命名空间]。
    ///</exception>
    property Prefix: string read get_Prefix write set_Prefix;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  节点类型 <see langword="XmlAttribute" />
    ///  节点是 XmlNodeType.Attribute。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取此节点所属的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此节点所属的 XML 文档。
    ///</returns>
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于节点的 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  。
    ///  有关 <see langword="XmlAttribute" />
    ///  节点，此属性是属性的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  该节点是只读的而 set 操作称为。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取后期-架构验证的信息集已分配给此节点作为架构验证结果。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  包含后-架构验证的信息集的此节点。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  设置节点及其所有子级的串连的值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子级的串连值。
    ///  对于属性节点，此属性具有相同的功能 <see cref="P:System.Xml.XmlAttribute.Value" />
    ///  属性。
    ///</returns>
    property InnerText: string write set_InnerText;
    ///<summary>
    ///  获取一个值，该值指示是否显式设置属性值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此属性已显式指定一个值，在原始实例文档;，否则为 <see langword="false" />
    ///  。
    ///  值为 <see langword="false" />
    ///  指示该属性的值来自 DTD。
    ///</returns>
    property Specified: Boolean read get_Specified;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlElement" />
    ///  特性所属。
    ///</summary>
    ///<returns><see langword="XmlElement" />
    ///  属性属于或 <see langword="null" />
    ///  如果没有此特性的一部分 <see langword="XmlElement" />
    ///  。
    ///</returns>
    property OwnerElement: DNXmlElement read get_OwnerElement;
    ///<summary>
    ///  设置该属性的值。
    ///</summary>
    ///<returns>
    ///  特性值。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    property InnerXml: string write set_InnerXml;
    ///<summary>
    ///  获取基统一资源标识符 (URI) 的节点。
    ///</summary>
    ///<returns>
    ///  从其加载节点的位置；如果节点没有基 URI，则为 String.Empty。
    ///  属性节点具有作为其所有者元素相同的基 URI。
    ///  如果属性节点不具有所有者元素中， <see langword="BaseURI" />
    ///  返回 String.Empty。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  获取节点的所有子节点。
    ///</summary>
    ///<returns>
    ///  一个包含节点的所有子节点的对象。
    ///  如果不有任何子节点，此属性返回一个空 <see cref="T:System.Xml.XmlNodeList" />
    ///  。
    ///</returns>
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see langword="XmlNode" />
    ///  。
    ///  如果前面没有节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns>
    ///  下一个 <see langword="XmlNode" />
    ///  。
    ///  如果没有下一个节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  包含此节点的属性。
    ///</summary>
    ///<returns><see langword="XmlAttributeCollection" />
    ///  包含节点的属性。
    ///  如果节点为 XmlNodeType.Element 类型，则返回该节点的属性。
    ///  否则，此属性将返回 <see langword="null" />
    ///  。
    ///</returns>
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取节点的第一个子级。
    ///</summary>
    ///<returns>
    ///  节点的第一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property FirstChild: DNXmlNode read get_FirstChild;
    ///<summary>
    ///  获取节点的最后一个子级。
    ///</summary>
    ///<returns>
    ///  节点的最后一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property LastChild: DNXmlNode read get_LastChild;
    ///<summary>
    ///  获取一个值，该值指示此节点是否有任何子节点。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节点具有子节点，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasChildNodes: Boolean read get_HasChildNodes;
    ///<summary>
    ///  获取指示节点是否只读的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果节点是只读的;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取包含此节点及其所有子节点的标记。
    ///</summary>
    ///<returns>
    ///  包含此节点及其所有子节点的标记。
    ///<see langword="OuterXml" />
    ///  不会返回默认属性。
    ///</returns>
    property OuterXml: string read get_OuterXml;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlAttribute = class(TDNGenericImport<DNXmlAttributeClass, DNXmlAttribute>) end;

  //-------------namespace: System.Xml----------------
  DNXmlDocumentClass = interface(DNXmlNodeClass)
  ['{72ECC820-5D8B-5542-9F37-BD21B3B1CDF4}']
  { static getter & setter } 

    procedure set_XmlResolver(value: DNXmlResolver);
    procedure set_InnerText(value: string);

  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.XmlDocument" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlDocument; overload;
    ///<summary>
    ///  使用指定的 <see langword="XmlDocument" />
    ///  初始化 <see cref="T:System.Xml.XmlNameTable" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    {class} function init(nt: DNXmlNameTable): DNXmlDocument; overload;

  { static propertys } 

    ///<summary>
    ///  设置 <see cref="T:System.Xml.XmlResolver" />
    ///  以用于解析外部资源。
    ///</summary>
    ///<returns>
    ///  要使用的 <see langword="XmlResolver" />
    ///  。
    ///  在 .NET Framework 1.1 版中，调用方必须受到完全信任才能指定 <see langword="XmlResolver" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  此属性设置为 <see langword="null" />
    ///  ，并且遇到了外部 DTD 或实体。
    ///</exception>
    {class} property XmlResolver: DNXmlResolver write set_XmlResolver;
    ///<summary>
    ///  在所有情况下引发 <see cref="T:System.InvalidOperationException" />
    ///  。
    ///</summary>
    ///<returns>
    ///  节点及其所有子节点的值。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在所有情况下。
    ///</exception>
    {class} property InnerText: string write set_InnerText;
  end;

  ///<summary>
  ///  表示 XML 文档。
  ///  可使用此类在文档中加载、验证、编辑、添加和放置 XML。
  ///</summary>
  [DNTypeName('System.Xml.XmlDocument')]
  DNXmlDocument = interface(DNXmlNode)
  ['{25C48904-3F45-36CE-9DAC-C679105D5308}']
  { getters & setters } 

    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_DocumentType: DNXmlDocumentType;
    function get_Implementation: DNXmlImplementation;
    function get_Name: string;
    function get_LocalName: string;
    function get_DocumentElement: DNXmlElement;
    function get_OwnerDocument: DNXmlDocument;
    function get_Schemas: DNXmlSchemaSet;
    procedure set_Schemas(value: DNXmlSchemaSet);
    procedure set_XmlResolver(value: DNXmlResolver);
    function get_NameTable: DNXmlNameTable;
    function get_PreserveWhitespace: Boolean;
    procedure set_PreserveWhitespace(value: Boolean);
    function get_IsReadOnly: Boolean;
    procedure set_InnerText(value: string);
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_ChildNodes: DNXmlNodeList;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_Attributes: DNXmlAttributeCollection;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_OuterXml: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  克隆的 <see langword="XmlDocument" />
    ///  节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  创建具有指定 <see cref="P:System.Xml.XmlDocument.Name" />
    ///  的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  属性的限定名称。
    ///  如果名称包含冒号，则 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  属性反映名称中第一个冒号之前的部分，<see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  属性反映名称中第一个冒号之后的部分。
    ///<see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  保持为空，除非该前缀是一个可识别的内置前缀，例如 xmlns。
    ///  在这种情况下，<see langword="NamespaceURI" />
    ///  具有值 http://www.w3.org/2000/xmlns/。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlAttribute" />
    ///  。
    ///</returns>
    function CreateAttribute(name: string): DNXmlAttribute; overload;
    ///<summary>
    ///  创建包含指定数据的 <see cref="T:System.Xml.XmlCDataSection" />
    ///  。
    ///</summary>
    ///  <param name="data">
    ///  新 <see langword="XmlCDataSection" />
    ///  的内容。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlCDataSection" />
    ///  。
    ///</returns>
    function CreateCDataSection(data: string): DNXmlCDataSection;
    ///<summary>
    ///  创建包含指定数据的 <see cref="T:System.Xml.XmlComment" />
    ///  。
    ///</summary>
    ///  <param name="data">
    ///  新 <see langword="XmlComment" />
    ///  的内容。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlComment" />
    ///  。
    ///</returns>
    function CreateComment(data: string): DNXmlComment;
    ///<summary>
    ///  返回新 <see cref="T:System.Xml.XmlDocumentType" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  此文档类型的名称。
    ///</param>
    ///  <param name="publicId">
    ///  此文档类型的公共标识符或 <see langword="null" />
    ///  。
    ///  你可以指定一个公共 URI 以及一个系统标识符以标识外部 DTD 子集的位置。
    ///</param>
    ///  <param name="systemId">
    ///  此文档类型的系统标识符或 <see langword="null" />
    ///  。
    ///  指定外部 DTD 子集的文件位置的 URL。
    ///</param>
    ///  <param name="internalSubset">
    ///  此文档类型的 DTD 内部子集或 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlDocumentType" />
    ///  。
    ///</returns>
    function CreateDocumentType(name: string; publicId: string; systemId: string; internalSubset: string): DNXmlDocumentType;
    ///<summary>
    ///  创建一个 <see cref="T:System.Xml.XmlDocumentFragment" />
    ///  。
    ///</summary>
    ///<returns>
    ///  新的 <see langword="XmlDocumentFragment" />
    ///  。
    ///</returns>
    function CreateDocumentFragment: DNXmlDocumentFragment;
    ///<summary>
    ///  创建具有指定名称的元素。
    ///</summary>
    ///  <param name="name">
    ///  元素的限定名。
    ///  如果名称包含冒号，则 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  属性反映名称中位于冒号之前的部分，<see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  属性反映名称中位于冒号之后的部分。
    ///  限定名称不能包含“xmlns”前缀。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlElement" />
    ///  。
    ///</returns>
    function CreateElement(name: string): DNXmlElement; overload;
    ///<summary>
    ///  创建具有指定名称的 <see cref="T:System.Xml.XmlEntityReference" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  实体引用的名称。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlEntityReference" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  名称无效（例如，以“#”开头的名称无效。）
    ///</exception>
    function CreateEntityReference(name: string): DNXmlEntityReference;
    ///<summary>
    ///  创建一个具有指定名称和数据的 <see cref="T:System.Xml.XmlProcessingInstruction" />
    ///  。
    ///</summary>
    ///  <param name="target">
    ///  处理指令的名称。
    ///</param>
    ///  <param name="data">
    ///  处理指令的数据。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlProcessingInstruction" />
    ///  。
    ///</returns>
    function CreateProcessingInstruction(target: string; data: string): DNXmlProcessingInstruction;
    ///<summary>
    ///  创建一个具有指定值的 <see cref="T:System.Xml.XmlDeclaration" />
    ///  节点。
    ///</summary>
    ///  <param name="version">
    ///  版本必须为“1.0”。
    ///</param>
    ///  <param name="encoding">
    ///  编码属性的值。
    ///  这是当将 <see cref="T:System.Xml.XmlDocument" />
    ///  保存到文件或流时使用的编码方式；因此必须将其设置为 <see cref="T:System.Text.Encoding" />
    ///  类支持的字符串，否则 <see cref="M:System.Xml.XmlDocument.Save(System.String)" />
    ///  失败。
    ///  如果这是 <see langword="null" />
    ///  或 String.Empty，则 <see langword="Save" />
    ///  方法不在 XML 声明上写出编码方式特性，因此将使用默认的编码方式 UTF-8。
    ///  注意：如果将 <see langword="XmlDocument" />
    ///  保存到 <see cref="T:System.IO.TextWriter" />
    ///  或 <see cref="T:System.Xml.XmlTextWriter" />
    ///  ，则放弃该编码值。
    ///  而改用 <see langword="TextWriter" />
    ///  或 <see langword="XmlTextWriter" />
    ///  的编码方式。
    ///  这会确保可以使用正确的编码读回写出的 XML。
    ///</param>
    ///  <param name="standalone">
    ///  该值必须是“yes”或“no”。
    ///  如果这是 <see langword="null" />
    ///  或 String.Empty，<see langword="Save" />
    ///  方法不在 XML 声明上写出独立特性。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlDeclaration" />
    ///  节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="version" />
    ///  或 <paramref name="standalone" />
    ///  的值是除上面指定的值以外的值。
    ///</exception>
    function CreateXmlDeclaration(version: string; encoding: string; standalone: string): DNXmlDeclaration;
    ///<summary>
    ///  创建具有指定文本的 <see cref="T:System.Xml.XmlText" />
    ///  。
    ///</summary>
    ///  <param name="text">
    ///  Text 节点的文本。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlText" />
    ///  节点。
    ///</returns>
    function CreateTextNode(text: string): DNXmlText;
    ///<summary>
    ///  创建一个 <see cref="T:System.Xml.XmlSignificantWhitespace" />
    ///  节点。
    ///</summary>
    ///  <param name="text">
    ///  此字符串必须只包含下列字符：&amp;#20；&amp;#10；&amp;#13 和 &amp;#9；
    ///</param>
    ///<returns>
    ///  一个新的 <see langword="XmlSignificantWhitespace" />
    ///  节点。
    ///</returns>
    function CreateSignificantWhitespace(text: string): DNXmlSignificantWhitespace;
    ///<summary>
    ///  创建一个用于导航此文档的新 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象。
    ///</returns>
    function CreateNavigator: DNXPathNavigator;
    ///<summary>
    ///  创建一个 <see cref="T:System.Xml.XmlWhitespace" />
    ///  节点。
    ///</summary>
    ///  <param name="text">
    ///  此字符串必须只包含下列字符：&amp;#20；&amp;#10；&amp;#13 和 &amp;#9；
    ///</param>
    ///<returns>
    ///  一个新的 <see langword="XmlWhitespace" />
    ///  节点。
    ///</returns>
    function CreateWhitespace(text: string): DNXmlWhitespace;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlNodeList" />
    ///  ，它包含与指定 <see cref="P:System.Xml.XmlDocument.Name" />
    ///  匹配的所有子代元素的列表。
    ///</summary>
    ///  <param name="name">
    ///  要匹配的限定名称。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///  特殊值“*”匹配所有标记。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  ，包含所有匹配节点的列表。
    ///  如果没有任何节点与 <paramref name="name" />
    ///  匹配，则返回的集合将为空。
    ///</returns>
    function GetElementsByTagName(name: string): DNXmlNodeList; overload;
    ///<summary>
    ///  创建具有指定限定名和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="qualifiedName">
    ///  属性的限定名称。
    ///  如果名称包含冒号，则 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  属性将反映名称中位于冒号前的部分，而 <see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  属性将反映名称中位于冒号后的部分。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的 namespaceURI。
    ///  如果限定名称包含前缀 xmlns，则该参数必须是 http://www.w3.org/2000/xmlns/。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlAttribute" />
    ///  。
    ///</returns>
    function CreateAttribute(qualifiedName: string; namespaceURI: string): DNXmlAttribute; overload;
    ///<summary>
    ///  创建具有限定名和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlElement" />
    ///  。
    ///</summary>
    ///  <param name="qualifiedName">
    ///  元素的限定名。
    ///  如果名称包含冒号，则 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  属性将反映名称中位于冒号前的部分，而 <see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  属性将反映名称中位于冒号后的部分。
    ///  限定名称不能包含“xmlns”前缀。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlElement" />
    ///  。
    ///</returns>
    function CreateElement(qualifiedName: string; namespaceURI: string): DNXmlElement; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlNodeList" />
    ///  ，它包含与指定 <see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  匹配的所有子代元素的列表。
    ///</summary>
    ///  <param name="localName">
    ///  要匹配的 LocalName。
    ///  特殊值“*”匹配所有标记。
    ///</param>
    ///  <param name="namespaceURI">
    ///  要匹配的 NamespaceURI。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  ，包含所有匹配节点的列表。
    ///  如果没有任何节点与指定的 <paramref name="localName" />
    ///  和 <paramref name="namespaceURI" />
    ///  匹配，则返回的集合将为空。
    ///</returns>
    function GetElementsByTagName(localName: string; namespaceURI: string): DNXmlNodeList; overload;
    ///<summary>
    ///  获取具有指定 ID 的 <see cref="T:System.Xml.XmlElement" />
    ///  。
    ///</summary>
    ///  <param name="elementId">
    ///  要匹配的属性 ID。
    ///</param>
    ///<returns>
    ///  具有匹配 ID 的 <see langword="XmlElement" />
    ///  ；如果未找到匹配的元素，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetElementById(elementId: string): DNXmlElement;
    ///<summary>
    ///  将节点从另一个文档导入到当前文档。
    ///</summary>
    ///  <param name="node">
    ///  正在被导入的节点。
    ///</param>
    ///  <param name="deep">
    ///  如果执行深层克隆，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  导入的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在无法导入的节点类型上调用此方法。
    ///</exception>
    function ImportNode(node: DNXmlNode; deep: Boolean): DNXmlNode;
    ///<summary>
    ///  创建一个具有指定的 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  、<see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="prefix">
    ///  属性的前缀（如果有的话）。
    ///  String.Empty 与 <see langword="null" />
    ///  等效。
    ///</param>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI（如果有的话）。
    ///  String.Empty 与 <see langword="null" />
    ///  等效。
    ///  如果 <paramref name="prefix" />
    ///  为 xmlns，则该参数必须是 http://www.w3.org/2000/xmlns/；否则将引发异常。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlAttribute" />
    ///  。
    ///</returns>
    function CreateAttribute(prefix: string; localName: string; namespaceURI: string): DNXmlAttribute; overload;
    ///<summary>
    ///  创建具有指定 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  、<see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的元素。
    ///</summary>
    ///  <param name="prefix">
    ///  新元素的前缀（如果有的话）。
    ///  String.Empty 与 <see langword="null" />
    ///  等效。
    ///</param>
    ///  <param name="localName">
    ///  新元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新元素的命名空间 URI（如果有的话）。
    ///  String.Empty 与 <see langword="null" />
    ///  等效。
    ///</param>
    ///<returns>
    ///  新的 <see cref="T:System.Xml.XmlElement" />
    ///  。
    ///</returns>
    function CreateElement(prefix: string; localName: string; namespaceURI: string): DNXmlElement; overload;
    ///<summary>
    ///  创建具有指定的节点类型、<see cref="P:System.Xml.XmlDocument.Name" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</summary>
    ///  <param name="nodeTypeString">
    ///  新节点的 <see cref="T:System.Xml.XmlNodeType" />
    ///  的字符串版本。
    ///  该参数必须是下表中列出的值之一。
    ///</param>
    ///  <param name="name">
    ///  新节点的限定名称。
    ///  如果名称包含一个冒号，则将它解析为 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  和 <see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  两部分。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlNode" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  未提供名称，而 <see langword="XmlNodeType" />
    ///  需要名称；或者 <paramref name="nodeTypeString" />
    ///  不是下列字符串之一。
    ///</exception>
    function CreateNode(nodeTypeString: string; name: string; namespaceURI: string): DNXmlNode; overload;
    ///<summary>
    ///  创建一个具有指定的 <see cref="T:System.Xml.XmlNodeType" />
    ///  、<see cref="P:System.Xml.XmlDocument.Name" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</summary>
    ///  <param name="type">
    ///  新节点的 <see langword="XmlNodeType" />
    ///  。
    ///</param>
    ///  <param name="name">
    ///  新节点的限定名称。
    ///  如果名称包含一个冒号，则将其解析为 <see cref="P:System.Xml.XmlNode.Prefix" />
    ///  和 <see cref="P:System.Xml.XmlDocument.LocalName" />
    ///  两部分。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlNode" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  未提供名称，而 <see langword="XmlNodeType" />
    ///  需要名称。
    ///</exception>
    function CreateNode(&type: DNXmlNodeType; name: string; namespaceURI: string): DNXmlNode; overload;
    ///<summary>
    ///  根据 <see cref="T:System.Xml.XmlReader" />
    ///  中的信息创建一个 <see cref="T:System.Xml.XmlNode" />
    ///  对象。
    ///  读取器必须定位在节点或属性上。
    ///</summary>
    ///  <param name="reader">
    ///  XML 源
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlNode" />
    ///  ；如果不存在其他节点，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.NullReferenceException">
    ///  此读取器位于未转换为有效的 DOM 节点（例如，EndElement 或 EndEntity）的节点类型上。
    ///</exception>
    function ReadNode(reader: DNXmlReader): DNXmlNode;
    ///<summary>
    ///  从指定的 URL 加载 XML 文档。
    ///</summary>
    ///  <param name="filename">
    ///  含要加载的 XML 文档的文件的 URL。
    ///  URL 既可以是本地文件，也可以是 HTTP URL（Web 地址）。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 中存在加载或分析错误。
    ///  在这种情况下，将引发 <see cref="T:System.IO.FileNotFoundException" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="filename" />
    ///  是一个长度为零的字符串，仅包含空格，或包含一个或多个由 <see cref="F:System.IO.Path.InvalidPathChars" />
    ///  定义的无效字符。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.IO.PathTooLongException">
    ///  指定的路径和/或文件名超过了系统定义的最大长度。
    ///  例如，在基于 Windows 的平台上，路径必须少于 248 个字符，且文件名必须少于 260 个字符。
    ///</exception><exception cref="T:System.IO.DirectoryNotFoundException">
    ///  指定的路径无效（例如，它位于未映射的驱动器上）。
    ///</exception><exception cref="T:System.IO.IOException">
    ///  打开文件时发生 I/O 错误。
    ///</exception><exception cref="T:System.UnauthorizedAccessException"><paramref name="filename" />
    ///  指定了一个只读文件。
    ///  - 或 -
    ///  当前平台不支持此操作。
    ///  - 或 -
    ///  <paramref name="filename" />
    ///  指定了一个目录。
    ///  - 或 -
    ///  调用方没有所要求的权限。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  未找到 <paramref name="filename" />
    ///  中指定的文件。
    ///</exception><exception cref="T:System.NotSupportedException"><paramref name="filename" />
    ///  的格式无效。
    ///</exception><exception cref="T:System.Security.SecurityException">
    ///  调用方没有所要求的权限。
    ///</exception>
    procedure Load(filename: string); overload;
    ///<summary>
    ///  从指定的流加载 XML 文档。
    ///</summary>
    ///  <param name="inStream">
    ///  包含要加载的 XML 文档的流。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 中存在加载或分析错误。
    ///  在这种情况下，将引发 <see cref="T:System.IO.FileNotFoundException" />
    ///  。
    ///</exception>
    procedure Load(inStream: DDN.mscorlib.DNStream); overload;
    ///<summary>
    ///  从指定的 <see cref="T:System.IO.TextReader" />
    ///  加载 XML 文档。
    ///</summary>
    ///  <param name="txtReader">
    ///  用于将 XML 数据输送到文档中的 <see langword="TextReader" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 中存在加载或分析错误。
    ///  在这种情况下，该文档保留为空。
    ///</exception>
    procedure Load(txtReader: DDN.mscorlib.DNTextReader); overload;
    ///<summary>
    ///  从指定的 <see cref="T:System.Xml.XmlReader" />
    ///  加载 XML 文档。
    ///</summary>
    ///  <param name="reader">
    ///  用于将 XML 数据输送到文档中的 <see langword="XmlReader" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 中存在加载或分析错误。
    ///  在这种情况下，该文档保留为空。
    ///</exception>
    procedure Load(reader: DNXmlReader); overload;
    ///<summary>
    ///  从指定的字符串加载 XML 文档。
    ///</summary>
    ///  <param name="xml">
    ///  包含要加载的 XML 文档的字符串。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 中存在加载或分析错误。
    ///  在这种情况下，该文档保留为空。
    ///</exception>
    procedure LoadXml(xml: string);
    ///<summary>
    ///  将 XML 文档保存到指定的文件。
    ///  如果存在指定文件，则此方法会覆盖它。
    ///</summary>
    ///  <param name="filename">
    ///  要将文档保存到其中的文件的位置。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  该操作不会生成格式标准的 XML 文档（例如，没有文档元素或 XML 声明重复）。
    ///</exception>
    procedure Save(filename: string); overload;
    ///<summary>
    ///  将 XML 文档保存到指定的流。
    ///</summary>
    ///  <param name="outStream">
    ///  要保存到其中的流。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  该操作不会生成格式标准的 XML 文档（例如，没有文档元素或 XML 声明重复）。
    ///</exception>
    procedure Save(outStream: DDN.mscorlib.DNStream); overload;
    ///<summary>
    ///  将 XML 文档保存到指定的 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</summary>
    ///  <param name="writer">
    ///  要保存到其中的 <see langword="TextWriter" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  该操作不会生成格式标准的 XML 文档（例如，没有文档元素或 XML 声明重复）。
    ///</exception>
    procedure Save(writer: DDN.mscorlib.DNTextWriter); overload;
    ///<summary>
    ///  将 <see langword="XmlDocument" />
    ///  节点保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将 <see langword="XmlDocument" />
    ///  节点的所有子级保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="xw">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(xw: DNXmlWriter);
    ///<summary>
    ///  验证 <see cref="T:System.Xml.XmlDocument" />
    ///  是不是 <see cref="P:System.Xml.XmlDocument.Schemas" />
    ///  属性中包含的 XML 架构定义语言 (XSD) 架构。
    ///</summary>
    ///  <param name="validationEventHandler">
    ///  接收有关架构验证警告和错误的信息的 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaValidationException">
    ///  发生了架构验证事件并且没有指定任何 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  对象。
    ///</exception>
    procedure Validate(validationEventHandler: DNValidationEventHandler); overload;
    ///<summary>
    ///  创建一个具有指定的<see cref="T:System.Xml.XmlNodeType" />
    ///  、<see cref="P:System.Xml.XmlNode.Prefix" />
    ///  、<see cref="P:System.Xml.XmlDocument.Name" />
    ///  和 <see cref="P:System.Xml.XmlNode.NamespaceURI" />
    ///  的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</summary>
    ///  <param name="type">
    ///  新节点的 <see langword="XmlNodeType" />
    ///  。
    ///</param>
    ///  <param name="prefix">
    ///  新节点的前缀。
    ///</param>
    ///  <param name="name">
    ///  新节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  新的 <see langword="XmlNode" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  未提供名称，而 <see langword="XmlNodeType" />
    ///  需要名称。
    ///</exception>
    function CreateNode(&type: DNXmlNodeType; prefix: string; name: string; namespaceURI: string): DNXmlNode; overload;
    ///<summary>
    ///  将 XML 文档保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  该操作不会生成格式标准的 XML 文档（例如，没有文档元素或 XML 声明重复）。
    ///</exception>
    procedure Save(w: DNXmlWriter); overload;
    ///<summary>
    ///  根据 <see cref="P:System.Xml.XmlDocument.Schemas" />
    ///  属性中的 XML 架构定义语言 (XSD) 架构，验证指定的 <see cref="T:System.Xml.XmlNode" />
    ///  对象。
    ///</summary>
    ///  <param name="validationEventHandler">
    ///  接收有关架构验证警告和错误的信息的 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  对象。
    ///</param>
    ///  <param name="nodeToValidate">
    ///  从 <see cref="T:System.Xml.XmlDocument" />
    ///  创建的要验证的 <see cref="T:System.Xml.XmlNode" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlNode" />
    ///  对象参数不是从 <see cref="T:System.Xml.XmlDocument" />
    ///  创建的。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlNode" />
    ///  对象参数不是元素、特性、文档片段或根节点。
    ///</exception><exception cref="T:System.Xml.Schema.XmlSchemaValidationException">
    ///  发生了架构验证事件并且没有指定任何 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  对象。
    ///</exception>
    procedure Validate(validationEventHandler: DNValidationEventHandler; nodeToValidate: DNXmlNode); overload;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///</exception>
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///  请参阅 XPath 示例。
    ///</exception>
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之前。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newChild" />
    ///  放置在该节点之前。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之后。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newNode" />
    ///  放在 <paramref name="refNode" />
    ///  。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  替换子节点 <paramref name="oldChild" />
    ///  与 <paramref name="newChild" />
    ///  节点。
    ///</summary>
    ///  <param name="newChild">
    ///  要放入子列表的新节点。
    ///</param>
    ///  <param name="oldChild">
    ///  列表中正在被替换的节点。
    ///</param>
    ///<returns>
    ///  被替换的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///  <paramref name="oldChild" />
    ///  不是此节点的子级。
    ///</exception>
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  移除指定的子节点。
    ///</summary>
    ///  <param name="oldChild">
    ///  正在被移除的节点。
    ///</param>
    ///<returns>
    ///  已移除的节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="oldChild" />
    ///  不是此节点的子级。
    ///  或此节点是只读的。
    ///</exception>
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的开头。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的末尾。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将此 XmlNode 下子树完全深度中的所有 XmlText 节点都转换成“正常”形式，在这种形式中只有标记（即标记、注释、处理指令、CDATA 节和实体引用）分隔 XmlText 节点，也就是说，没有相邻的 XmlText 节点。
    ///</summary>
    procedure Normalize;
    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function Clone: DNXmlNode;
    ///<summary>
    ///  获取循环访问当前节点中子节点的枚举。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问当前节点中的子节点的对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  移除当前节点的所有子节点和/或属性。
    ///</summary>
    procedure RemoveAll;
    ///<summary>
    ///  查找最接近 xmlns 为给定的前缀的当前节点范围内，在声明中返回的命名空间 URI 声明。
    ///</summary>
    ///  <param name="prefix">
    ///  你想查找的命名空间 URI 的前缀。
    ///</param>
    ///<returns>
    ///  指定前缀的命名空间 URI。
    ///</returns>
    function GetNamespaceOfPrefix(prefix: string): string;
    ///<summary>
    ///  查找最接近 xmlns 位于给定命名空间 URI，它用于当前节点范围内，并返回声明中定义的前缀声明。
    ///</summary>
    ///  <param name="namespaceURI">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的命名空间 URI 的前缀。
    ///</returns>
    function GetPrefixOfNamespace(namespaceURI: string): string;
    ///<summary>
    ///  测试 DOM 实现是否实现特定的功能。
    ///</summary>
    ///  <param name="feature">
    ///  要测试的功能的程序包名称。
    ///  该名称不区分大小写。
    ///</param>
    ///  <param name="version">
    ///  要测试的程序包名称的版本号。
    ///  如果不指定版本 (null)，则支持该功能的任何版本会导致方法返回 true。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果在指定的版本; 中实现该功能否则为 <see langword="false" />
    ///  。
    ///  下表描述了返回的组合 <see langword="true" />
    ///  。
    ///  功能
    ///  版本
    ///  XML
    ///  1.0
    ///  XML
    ///  2.0
    ///</returns>
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  节点类型。
    ///  对于 <see langword="XmlDocument" />
    ///  节点，该值是 XmlNodeType.Document。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父节点（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  始终返回 <see langword="null" />
    ///  。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取包含 DOCTYPE 声明的节点。
    ///</summary>
    ///<returns>
    ///  包含 DocumentType（DOCTYPE 声明）的 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property DocumentType: DNXmlDocumentType read get_DocumentType;
    ///<summary>
    ///  获取当前文档的 <see cref="T:System.Xml.XmlImplementation" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  当前文档的 <see langword="XmlImplementation" />
    ///  对象。
    ///</returns>
    property &Implementation: DNXmlImplementation read get_Implementation;
    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于 <see langword="XmlDocument" />
    ///  节点，该名称是 #document。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于 <see langword="XmlDocument" />
    ///  节点，本地名称是 #document。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取文档的根 <see cref="T:System.Xml.XmlElement" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示 XML 文档树的根的 <see langword="XmlElement" />
    ///  。
    ///  如果不存在根，则返回 <see langword="null" />
    ///  。
    ///</returns>
    property DocumentElement: DNXmlElement read get_DocumentElement;
    ///<summary>
    ///  获取当前节点所属的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns>
    ///  对于 <see langword="XmlDocument" />
    ///  节点（<see cref="P:System.Xml.XmlDocument.NodeType" />
    ///  等于 XmlNodeType.Document），该属性总是返回 <see langword="null" />
    ///  。
    ///</returns>
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    ///<summary>
    ///  获取或设置与此 <see cref="T:System.Xml.XmlDocument" />
    ///  关联的 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  为一个包含与此 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  关联的 XML 架构定义语言 (XSD) 架构的 <see cref="T:System.Xml.XmlDocument" />
    ///  对象；否则，为一个空 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  对象。
    ///</returns>
    property Schemas: DNXmlSchemaSet read get_Schemas write set_Schemas;
    ///<summary>
    ///  设置 <see cref="T:System.Xml.XmlResolver" />
    ///  以用于解析外部资源。
    ///</summary>
    ///<returns>
    ///  要使用的 <see langword="XmlResolver" />
    ///  。
    ///  在 .NET Framework 1.1 版中，调用方必须受到完全信任才能指定 <see langword="XmlResolver" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  此属性设置为 <see langword="null" />
    ///  ，并且遇到了外部 DTD 或实体。
    ///</exception>
    property XmlResolver: DNXmlResolver write set_XmlResolver;
    ///<summary>
    ///  获取与此实现关联的 <see cref="T:System.Xml.XmlNameTable" />
    ///  。
    ///</summary>
    ///<returns><see langword="XmlNameTable" />
    ///  ，它使您能够获取该文档中字符串的原子化版本。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在元素内容中保留空白区域。
    ///</summary>
    ///<returns><see langword="true" />
    ///  表示保留空白；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property PreserveWhitespace: Boolean read get_PreserveWhitespace write set_PreserveWhitespace;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否是只读的。
    ///</summary>
    ///<returns>
    ///  如果当前节点为只读，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///<see langword="XmlDocument" />
    ///  节点始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  在所有情况下引发 <see cref="T:System.InvalidOperationException" />
    ///  。
    ///</summary>
    ///<returns>
    ///  节点及其所有子节点的值。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在所有情况下。
    ///</exception>
    property InnerText: string write set_InnerText;
    ///<summary>
    ///  获取或设置表示当前节点的子级的标记。
    ///</summary>
    ///<returns>
    ///  当前节点的子级的标记。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    property InnerXml: string read get_InnerXml write set_InnerXml;
    ///<summary>
    ///  返回节点的后架构验证信息集 (PSVI)。
    ///</summary>
    ///<returns>
    ///  表示节点的 PSVI 的 <see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  从其加载节点的位置。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于<see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点︰
    ///  类型
    ///  值
    ///  特性
    ///  属性的值。
    ///  CDATASection
    ///  CDATA 节的内容。
    ///  注释
    ///  注释的内容。
    ///  Document
    ///<see langword="null" />
    ///  。
    ///  DocumentFragment
    ///<see langword="null" />
    ///  。
    ///  DocumentType
    ///<see langword="null" />
    ///  。
    ///  元素
    ///<see langword="null" />
    ///  。
    ///  你可以使用<see cref="P:System.Xml.XmlElement.InnerText" />
    ///  或<see cref="P:System.Xml.XmlElement.InnerXml" />
    ///  属性来访问元素节点的值。
    ///  实体
    ///<see langword="null" />
    ///  。
    ///  EntityReference
    ///<see langword="null" />
    ///  。
    ///  Notation
    ///<see langword="null" />
    ///  。
    ///  ProcessingInstruction
    ///  全部内容（不包括指令目标）。
    ///  Text
    ///  文本节点的内容。
    ///  SignificantWhitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  Whitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  XmlDeclaration
    ///  声明 （即，之间的所有内容的内容&lt;?xml and=""?&gt;).
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点的值设置为只读。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  不应该具有值 （例如，元素节点） 的节点的值设置。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取节点的所有子节点。
    ///</summary>
    ///<returns>
    ///  一个包含节点的所有子节点的对象。
    ///  如果不有任何子节点，此属性返回一个空 <see cref="T:System.Xml.XmlNodeList" />
    ///  。
    ///</returns>
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see langword="XmlNode" />
    ///  。
    ///  如果前面没有节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns>
    ///  下一个 <see langword="XmlNode" />
    ///  。
    ///  如果没有下一个节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  包含此节点的属性。
    ///</summary>
    ///<returns><see langword="XmlAttributeCollection" />
    ///  包含节点的属性。
    ///  如果节点为 XmlNodeType.Element 类型，则返回该节点的属性。
    ///  否则，此属性将返回 <see langword="null" />
    ///  。
    ///</returns>
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取节点的第一个子级。
    ///</summary>
    ///<returns>
    ///  节点的第一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property FirstChild: DNXmlNode read get_FirstChild;
    ///<summary>
    ///  获取节点的最后一个子级。
    ///</summary>
    ///<returns>
    ///  节点的最后一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property LastChild: DNXmlNode read get_LastChild;
    ///<summary>
    ///  获取一个值，该值指示此节点是否有任何子节点。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节点具有子节点，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasChildNodes: Boolean read get_HasChildNodes;
    ///<summary>
    ///  获取该节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间 URI。
    ///  如果没有命名空间 URI，则此属性返回 String.Empty。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取或设置该节点的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间前缀。
    ///  例如， <see langword="Prefix" />
    ///  元素 &lt; bk:book &gt; 是 bk。
    ///  如果没有前缀，则该属性返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  指定的前缀包含无效字符。
    ///  指定的前缀格式不正确。
    ///  指定的前缀为"xml"，并且该节点的 namespaceURI 为"http://www.w3.org/XML/1998/namespace"不同。
    ///  此节点是一个属性和指定的前缀为"xmlns"，并且该节点的 namespaceURI 为不同于"http://www.w3.org/2000/xmlns/"。
    ///  此节点是属性，该节点的 qualifiedName 是"xmlns"。
    ///</exception>
    property Prefix: string read get_Prefix write set_Prefix;
    ///<summary>
    ///  获取包含此节点及其所有子节点的标记。
    ///</summary>
    ///<returns>
    ///  包含此节点及其所有子节点的标记。
    ///<see langword="OuterXml" />
    ///  不会返回默认属性。
    ///</returns>
    property OuterXml: string read get_OuterXml;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlDocument = class(TDNGenericImport<DNXmlDocumentClass, DNXmlDocument>) end;

  //-------------namespace: System.Xml----------------
  DNXmlDocumentFragmentClass = interface(DNXmlNodeClass)
  ['{6E0EA61D-9BC6-5CA3-BBB9-2C261777C15D}']
  end;

  ///<summary>
  ///  表示对树插入操作非常有用的轻量级对象。
  ///</summary>
  [DNTypeName('System.Xml.XmlDocumentFragment')]
  DNXmlDocumentFragment = interface(DNXmlNode)
  ['{495A1294-FF3E-3F56-A99F-A1AA85127036}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_OwnerDocument: DNXmlDocument;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_Value: string;
    procedure set_Value(value: string);
    function get_ChildNodes: DNXmlNodeList;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_Attributes: DNXmlAttributeCollection;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_OuterXml: string;
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  创建 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  用于定位此对象。
    ///</summary>
    ///<returns><see langword="XPathNavigator" />
    ///  对象，用于导航节点。
    ///<see langword="XPathNavigator" />
    ///  定位从中调用该方法的节点上。
    ///  它不定位在文档的根上。
    ///</returns>
    function CreateNavigator: DNXPathNavigator;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///</exception>
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    ///<summary>
    ///  选择第一个 <see langword="XmlNode" />
    ///  ，与 XPath 表达式匹配。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns>
    ///  第一个 <see langword="XmlNode" />
    ///  匹配 XPath 查询或 <see langword="null" />
    ///  如果不找到任何匹配节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式包含的前缀。
    ///  请参阅 XPath 示例。
    ///</exception>
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    ///<summary>
    ///  选择匹配 XPath 表达式的节点列表。
    ///  使用所提供解析 XPath 表达式中找到的任何前缀 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///  请参阅 XPath 示例。
    ///</param>
    ///  <param name="nsmgr"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  以用于解析 XPath 表达式中的前缀的命名空间。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  包含匹配 XPath 查询的节点集合。
    ///</returns>
    ///<exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式中包含的前缀中未定义 <see langword="XmlNamespaceManager" />
    ///  。
    ///</exception>
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之前。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newChild" />
    ///  放置在该节点之前。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点紧接着插入指定的引用节点之后。
    ///</summary>
    ///  <param name="newChild">
    ///  要插入的 <see langword="XmlNode" />
    ///  。
    ///</param>
    ///  <param name="refChild"><see langword="XmlNode" />
    ///  ，它是引用节点。
    ///  <paramref name="newNode" />
    ///  放在 <paramref name="refNode" />
    ///  。
    ///</param>
    ///<returns>
    ///  插入的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  <paramref name="refChild" />
    ///  不是此节点的子级。
    ///  此节点是只读的。
    ///</exception>
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  替换子节点 <paramref name="oldChild" />
    ///  与 <paramref name="newChild" />
    ///  节点。
    ///</summary>
    ///  <param name="newChild">
    ///  要放入子列表的新节点。
    ///</param>
    ///  <param name="oldChild">
    ///  列表中正在被替换的节点。
    ///</param>
    ///<returns>
    ///  被替换的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///  <paramref name="oldChild" />
    ///  不是此节点的子级。
    ///</exception>
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  移除指定的子节点。
    ///</summary>
    ///  <param name="oldChild">
    ///  正在被移除的节点。
    ///</param>
    ///<returns>
    ///  已移除的节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="oldChild" />
    ///  不是此节点的子级。
    ///  或此节点是只读的。
    ///</exception>
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的开头。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将指定的节点添加到该节点的子节点列表的末尾。
    ///</summary>
    ///  <param name="newChild">
    ///  要添加的节点。
    ///  要添加的节点的全部内容会移动到指定位置。
    ///</param>
    ///<returns>
    ///  添加的节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此节点是不允许子的类型的节点的类型 <paramref name="newChild" />
    ///  节点。
    ///  <paramref name="newChild" />
    ///  是此节点的祖先。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="newChild" />
    ///  从创建此节点比不同文档创建。
    ///  此节点是只读的。
    ///</exception>
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    ///<summary>
    ///  将此 XmlNode 下子树完全深度中的所有 XmlText 节点都转换成“正常”形式，在这种形式中只有标记（即标记、注释、处理指令、CDATA 节和实体引用）分隔 XmlText 节点，也就是说，没有相邻的 XmlText 节点。
    ///</summary>
    procedure Normalize;
    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function Clone: DNXmlNode;
    ///<summary>
    ///  获取循环访问当前节点中子节点的枚举。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问当前节点中的子节点的对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  移除当前节点的所有子节点和/或属性。
    ///</summary>
    procedure RemoveAll;
    ///<summary>
    ///  查找最接近 xmlns 为给定的前缀的当前节点范围内，在声明中返回的命名空间 URI 声明。
    ///</summary>
    ///  <param name="prefix">
    ///  你想查找的命名空间 URI 的前缀。
    ///</param>
    ///<returns>
    ///  指定前缀的命名空间 URI。
    ///</returns>
    function GetNamespaceOfPrefix(prefix: string): string;
    ///<summary>
    ///  查找最接近 xmlns 位于给定命名空间 URI，它用于当前节点范围内，并返回声明中定义的前缀声明。
    ///</summary>
    ///  <param name="namespaceURI">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的命名空间 URI 的前缀。
    ///</returns>
    function GetPrefixOfNamespace(namespaceURI: string): string;
    ///<summary>
    ///  测试 DOM 实现是否实现特定的功能。
    ///</summary>
    ///  <param name="feature">
    ///  要测试的功能的程序包名称。
    ///  该名称不区分大小写。
    ///</param>
    ///  <param name="version">
    ///  要测试的程序包名称的版本号。
    ///  如果不指定版本 (null)，则支持该功能的任何版本会导致方法返回 true。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果在指定的版本; 中实现该功能否则为 <see langword="false" />
    ///  。
    ///  下表描述了返回的组合 <see langword="true" />
    ///  。
    ///  功能
    ///  版本
    ///  XML
    ///  1.0
    ///  XML
    ///  2.0
    ///</returns>
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDocumentFragment" />
    ///  , ，名称是 <see langword="#document-fragment" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDocumentFragment" />
    ///  节点，本地名称是 <see langword="#document-fragment" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDocumentFragment" />
    ///  节点，此值是 XmlNodeType.DocumentFragment。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父级（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  此节点的父级。
    ///  有关 <see langword="XmlDocumentFragment" />
    ///  节点，此属性始终为 <see langword="null" />
    ///  。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取此节点所属的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns><see langword="XmlDocument" />
    ///  此节点所属。
    ///</returns>
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    ///<summary>
    ///  获取或设置表示此节点的子级的标记。
    ///</summary>
    ///<returns>
    ///  此节点子级的标记。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    property InnerXml: string read get_InnerXml write set_InnerXml;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于<see cref="P:System.Xml.XmlNode.NodeType" />
    ///  的节点︰
    ///  类型
    ///  值
    ///  特性
    ///  属性的值。
    ///  CDATASection
    ///  CDATA 节的内容。
    ///  注释
    ///  注释的内容。
    ///  Document
    ///<see langword="null" />
    ///  。
    ///  DocumentFragment
    ///<see langword="null" />
    ///  。
    ///  DocumentType
    ///<see langword="null" />
    ///  。
    ///  元素
    ///<see langword="null" />
    ///  。
    ///  你可以使用<see cref="P:System.Xml.XmlElement.InnerText" />
    ///  或<see cref="P:System.Xml.XmlElement.InnerXml" />
    ///  属性来访问元素节点的值。
    ///  实体
    ///<see langword="null" />
    ///  。
    ///  EntityReference
    ///<see langword="null" />
    ///  。
    ///  Notation
    ///<see langword="null" />
    ///  。
    ///  ProcessingInstruction
    ///  全部内容（不包括指令目标）。
    ///  Text
    ///  文本节点的内容。
    ///  SignificantWhitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  Whitespace
    ///  空格字符。
    ///  空白可由一个或多个空格字符、回车符、换行符或制表符组成。
    ///  XmlDeclaration
    ///  声明 （即，之间的所有内容的内容&lt;?xml and=""?&gt;).
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点的值设置为只读。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  不应该具有值 （例如，元素节点） 的节点的值设置。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取节点的所有子节点。
    ///</summary>
    ///<returns>
    ///  一个包含节点的所有子节点的对象。
    ///  如果不有任何子节点，此属性返回一个空 <see cref="T:System.Xml.XmlNodeList" />
    ///  。
    ///</returns>
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see langword="XmlNode" />
    ///  。
    ///  如果前面没有节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns>
    ///  下一个 <see langword="XmlNode" />
    ///  。
    ///  如果没有下一个节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  包含此节点的属性。
    ///</summary>
    ///<returns><see langword="XmlAttributeCollection" />
    ///  包含节点的属性。
    ///  如果节点为 XmlNodeType.Element 类型，则返回该节点的属性。
    ///  否则，此属性将返回 <see langword="null" />
    ///  。
    ///</returns>
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取节点的第一个子级。
    ///</summary>
    ///<returns>
    ///  节点的第一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property FirstChild: DNXmlNode read get_FirstChild;
    ///<summary>
    ///  获取节点的最后一个子级。
    ///</summary>
    ///<returns>
    ///  节点的最后一个子级。
    ///  如果没有此类节点 <see langword="null" />
    ///  返回。
    ///</returns>
    property LastChild: DNXmlNode read get_LastChild;
    ///<summary>
    ///  获取一个值，该值指示此节点是否有任何子节点。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节点具有子节点，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasChildNodes: Boolean read get_HasChildNodes;
    ///<summary>
    ///  获取该节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间 URI。
    ///  如果没有命名空间 URI，则此属性返回 String.Empty。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取或设置该节点的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间前缀。
    ///  例如， <see langword="Prefix" />
    ///  元素 &lt; bk:book &gt; 是 bk。
    ///  如果没有前缀，则该属性返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  指定的前缀包含无效字符。
    ///  指定的前缀格式不正确。
    ///  指定的前缀为"xml"，并且该节点的 namespaceURI 为"http://www.w3.org/XML/1998/namespace"不同。
    ///  此节点是一个属性和指定的前缀为"xmlns"，并且该节点的 namespaceURI 为不同于"http://www.w3.org/2000/xmlns/"。
    ///  此节点是属性，该节点的 qualifiedName 是"xmlns"。
    ///</exception>
    property Prefix: string read get_Prefix write set_Prefix;
    ///<summary>
    ///  获取指示节点是否只读的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果节点是只读的;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取或设置节点及其所有子节点的串连值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子节点的串连值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  获取包含此节点及其所有子节点的标记。
    ///</summary>
    ///<returns>
    ///  包含此节点及其所有子节点的标记。
    ///<see langword="OuterXml" />
    ///  不会返回默认属性。
    ///</returns>
    property OuterXml: string read get_OuterXml;
    ///<summary>
    ///  获取作为架构验证的结果分配给此节点的后架构验证信息集。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，其中包含此节点的后架构验证信息集。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  从其加载节点的位置；如果节点没有基 URI，则为 String.Empty。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlDocumentFragment = class(TDNGenericImport<DNXmlDocumentFragmentClass, DNXmlDocumentFragment>) end;

  //-------------namespace: System.Xml----------------
  DNXmlCDataSectionClass = interface(DNObjectClass)
  ['{97FBAC7B-CA59-5B48-A7E2-B077AF8D1A99}']
  end;

  ///<summary>
  ///  表示 CDATA 节。
  ///</summary>
  [DNTypeName('System.Xml.XmlCDataSection')]
  DNXmlCDataSection = interface(DNObject)
  ['{1810EA9B-175D-3CDC-8921-290FD122D830}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_PreviousText: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Data: string;
    procedure set_Data(value: string);
    function get_Length: Int32;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  由于 CDATA 节点没有子级，因此不管参数的设置如何，克隆的节点都将始终包含数据内容。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将节点的子级保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从指定范围中检索一个完整的字符串的子字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要开始检索的字符串中的位置。
    ///  偏移量为零表示的起始点是在数据的开始处。
    ///</param>
    ///  <param name="count">
    ///  要检索的字符数。
    ///</param>
    ///<returns>
    ///  对应于指定的范围内的子字符串。
    ///</returns>
    function Substring(offset: Int32; count: Int32): string;
    ///<summary>
    ///  将指定的字符串追加到该节点的字符数据的末尾。
    ///</summary>
    ///  <param name="strData">
    ///  要插入现有字符串的字符串。
    ///</param>
    procedure AppendData(strData: string);
    ///<summary>
    ///  指定的字符偏移量处插入指定的字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要插入的提供的字符串数据的字符串中的位置。
    ///</param>
    ///  <param name="strData">
    ///  是要插入到现有字符串的字符串数据。
    ///</param>
    procedure InsertData(offset: Int32; strData: string);
    ///<summary>
    ///  从节点中删除某个范围的字符。
    ///</summary>
    ///  <param name="offset">
    ///  要开始删除字符串内的位置。
    ///</param>
    ///  <param name="count">
    ///  要删除的字符数。
    ///</param>
    procedure DeleteData(offset: Int32; count: Int32);
    ///<summary>
    ///  替换指定的数目的字符与指定的字符串指定的偏移量处开始。
    ///</summary>
    ///  <param name="offset">
    ///  要开始替换的字符串中的位置。
    ///</param>
    ///  <param name="count">
    ///  要替换的字符数。
    ///</param>
    ///  <param name="strData">
    ///  新数据将替换旧的字符串数据。
    ///</param>
    procedure ReplaceData(offset: Int32; count: Int32; strData: string);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于 CDATA 节点，该名称是 <see langword="#cdata-section" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于 CDATA 节点，本地名称是 <see langword="#cdata-section" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  节点类型。
    ///  对于 CDATA 节点，该值是 XmlNodeType.CDATA。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父级（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  作为当前节点父级的 <see langword="XmlNode" />
    ///  。
    ///  如果刚刚创建了一个节点且尚未将其添加到树中，或如果已从树中移除了该节点，则父级为 <see langword="null" />
    ///  。
    ///  对于所有其他节点，返回的值取决于节点的 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  。
    ///  下表描述了 <see langword="ParentNode" />
    ///  属性可能的返回值。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  节点的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点是只读的。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取或设置该节点的串连的值和节点的所有子级。
    ///</summary>
    ///<returns>
    ///  节点和节点的所有子级的串连的值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  包含该节点的数据。
    ///</summary>
    ///<returns>
    ///  节点的数据。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取数据的长度，以字符为单位。
    ///</summary>
    ///<returns>
    ///  以字符为单位中的字符串的长度 <see cref="P:System.Xml.XmlCharacterData.Data" />
    ///  属性。
    ///  长度可能为 0。也就是说，CharacterData 节点可以是空的。
    ///</returns>
    property Length: Int32 read get_Length;
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property NextSibling: DNXmlNode read get_NextSibling;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
  end;

  TDNXmlCDataSection = class(TDNGenericImport<DNXmlCDataSectionClass, DNXmlCDataSection>) end;

  //-------------namespace: System.Xml----------------
  DNXmlCommentClass = interface(DNObjectClass)
  ['{BB4F609E-8620-50D3-BD93-A5228DAAD94E}']
  end;

  ///<summary>
  ///  表示 XML 注释的内容。
  ///</summary>
  [DNTypeName('System.Xml.XmlComment')]
  DNXmlComment = interface(DNObject)
  ['{CC1B4DB8-000C-375C-85B6-C4F457CA604C}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Data: string;
    procedure set_Data(value: string);
    function get_Length: Int32;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  因为注释节点不具有子级，克隆的节点始终包含文本内容，而不考虑参数设置。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///  因为注释节点不具有子级，此方法不起作用。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从指定范围中检索一个完整的字符串的子字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要开始检索的字符串中的位置。
    ///  偏移量为零表示的起始点是在数据的开始处。
    ///</param>
    ///  <param name="count">
    ///  要检索的字符数。
    ///</param>
    ///<returns>
    ///  对应于指定的范围内的子字符串。
    ///</returns>
    function Substring(offset: Int32; count: Int32): string;
    ///<summary>
    ///  将指定的字符串追加到该节点的字符数据的末尾。
    ///</summary>
    ///  <param name="strData">
    ///  要插入现有字符串的字符串。
    ///</param>
    procedure AppendData(strData: string);
    ///<summary>
    ///  指定的字符偏移量处插入指定的字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要插入的提供的字符串数据的字符串中的位置。
    ///</param>
    ///  <param name="strData">
    ///  是要插入到现有字符串的字符串数据。
    ///</param>
    procedure InsertData(offset: Int32; strData: string);
    ///<summary>
    ///  从节点中删除某个范围的字符。
    ///</summary>
    ///  <param name="offset">
    ///  要开始删除字符串内的位置。
    ///</param>
    ///  <param name="count">
    ///  要删除的字符数。
    ///</param>
    procedure DeleteData(offset: Int32; count: Int32);
    ///<summary>
    ///  替换指定的数目的字符与指定的字符串指定的偏移量处开始。
    ///</summary>
    ///  <param name="offset">
    ///  要开始替换的字符串中的位置。
    ///</param>
    ///  <param name="count">
    ///  要替换的字符数。
    ///</param>
    ///  <param name="strData">
    ///  新数据将替换旧的字符串数据。
    ///</param>
    procedure ReplaceData(offset: Int32; count: Int32; strData: string);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于注释节点，则这是 <see langword="#comment" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于注释节点，则这是 <see langword="#comment" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  对于注释节点的值是 XmlNodeType.Comment。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  节点的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点是只读的。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取或设置该节点的串连的值和节点的所有子级。
    ///</summary>
    ///<returns>
    ///  节点和节点的所有子级的串连的值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  包含该节点的数据。
    ///</summary>
    ///<returns>
    ///  节点的数据。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取数据的长度，以字符为单位。
    ///</summary>
    ///<returns>
    ///  以字符为单位中的字符串的长度 <see cref="P:System.Xml.XmlCharacterData.Data" />
    ///  属性。
    ///  长度可能为 0。也就是说，CharacterData 节点可以是空的。
    ///</returns>
    property Length: Int32 read get_Length;
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property NextSibling: DNXmlNode read get_NextSibling;
    property ParentNode: DNXmlNode read get_ParentNode;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlComment = class(TDNGenericImport<DNXmlCommentClass, DNXmlComment>) end;

  //-------------namespace: System.Xml----------------
  DNXmlSignificantWhitespaceClass = interface(DNObjectClass)
  ['{D3D69425-089C-5BEC-8B98-2869CBCD58BA}']
  end;

  ///<summary>
  ///  表示在混合内容节点中标记之间的空白或 xml:space= 'preserve' 范围内的空白。
  ///  这也称为有效空白。
  ///</summary>
  [DNTypeName('System.Xml.XmlSignificantWhitespace')]
  DNXmlSignificantWhitespace = interface(DNObject)
  ['{0B172DBB-0D28-360D-B6DA-C98B3EC1449A}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_PreviousText: DNXmlNode;
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Data: string;
    procedure set_Data(value: string);
    function get_Length: Int32;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  对于重要的空白节点，克隆的节点将始终包含数据值，而不管参数的设置如何。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从指定范围中检索一个完整的字符串的子字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要开始检索的字符串中的位置。
    ///  偏移量为零表示的起始点是在数据的开始处。
    ///</param>
    ///  <param name="count">
    ///  要检索的字符数。
    ///</param>
    ///<returns>
    ///  对应于指定的范围内的子字符串。
    ///</returns>
    function Substring(offset: Int32; count: Int32): string;
    ///<summary>
    ///  将指定的字符串追加到该节点的字符数据的末尾。
    ///</summary>
    ///  <param name="strData">
    ///  要插入现有字符串的字符串。
    ///</param>
    procedure AppendData(strData: string);
    ///<summary>
    ///  指定的字符偏移量处插入指定的字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要插入的提供的字符串数据的字符串中的位置。
    ///</param>
    ///  <param name="strData">
    ///  是要插入到现有字符串的字符串数据。
    ///</param>
    procedure InsertData(offset: Int32; strData: string);
    ///<summary>
    ///  从节点中删除某个范围的字符。
    ///</summary>
    ///  <param name="offset">
    ///  要开始删除字符串内的位置。
    ///</param>
    ///  <param name="count">
    ///  要删除的字符数。
    ///</param>
    procedure DeleteData(offset: Int32; count: Int32);
    ///<summary>
    ///  替换指定的数目的字符与指定的字符串指定的偏移量处开始。
    ///</summary>
    ///  <param name="offset">
    ///  要开始替换的字符串中的位置。
    ///</param>
    ///  <param name="count">
    ///  要替换的字符数。
    ///</param>
    ///  <param name="strData">
    ///  新数据将替换旧的字符串数据。
    ///</param>
    procedure ReplaceData(offset: Int32; count: Int32; strData: string);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlSignificantWhitespace" />
    ///  节点，此属性返回 <see langword="#significant-whitespace" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlSignificantWhitespace" />
    ///  节点，此属性返回 <see langword="#significant-whitespace" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlSignificantWhitespace" />
    ///  节点，该值是 XmlNodeType.SignificantWhitespace。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取当前节点的父节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  当前节点的父节点。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  在节点中找到空白字符。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  设置 <see langword="Value" />
    ///  到无效空白字符。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
    ///<summary>
    ///  获取或设置该节点的串连的值和节点的所有子级。
    ///</summary>
    ///<returns>
    ///  节点和节点的所有子级的串连的值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  包含该节点的数据。
    ///</summary>
    ///<returns>
    ///  节点的数据。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取数据的长度，以字符为单位。
    ///</summary>
    ///<returns>
    ///  以字符为单位中的字符串的长度 <see cref="P:System.Xml.XmlCharacterData.Data" />
    ///  属性。
    ///  长度可能为 0。也就是说，CharacterData 节点可以是空的。
    ///</returns>
    property Length: Int32 read get_Length;
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property NextSibling: DNXmlNode read get_NextSibling;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
  end;

  TDNXmlSignificantWhitespace = class(TDNGenericImport<DNXmlSignificantWhitespaceClass, DNXmlSignificantWhitespace>) end;

  //-------------namespace: System.Xml----------------
  DNXmlTextClass = interface(DNObjectClass)
  ['{0651B7EA-6BE9-59ED-A83D-2E5F61F97A05}']
  end;

  ///<summary>
  ///  表示元素或属性的文本内容。
  ///</summary>
  [DNTypeName('System.Xml.XmlText')]
  DNXmlText = interface(DNObject)
  ['{C23B6FD2-1BB3-3560-8729-8F78B16B5B5C}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_PreviousText: DNXmlNode;
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Data: string;
    procedure set_Data(value: string);
    function get_Length: Int32;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  在指定的偏移点将该节点拆分为两个节点，并使树中的这两个节点成为同级。
    ///</summary>
    ///  <param name="offset">
    ///  拆分节点的偏移点。
    ///</param>
    ///<returns>
    ///  新的节点。
    ///</returns>
    function SplitText(offset: Int32): DNXmlText;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///<see langword="XmlText" />
    ///  节点没有子级，因此此方法不起作用。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从指定范围中检索一个完整的字符串的子字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要开始检索的字符串中的位置。
    ///  偏移量为零表示的起始点是在数据的开始处。
    ///</param>
    ///  <param name="count">
    ///  要检索的字符数。
    ///</param>
    ///<returns>
    ///  对应于指定的范围内的子字符串。
    ///</returns>
    function Substring(offset: Int32; count: Int32): string;
    ///<summary>
    ///  将指定的字符串追加到该节点的字符数据的末尾。
    ///</summary>
    ///  <param name="strData">
    ///  要插入现有字符串的字符串。
    ///</param>
    procedure AppendData(strData: string);
    ///<summary>
    ///  指定的字符偏移量处插入指定的字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要插入的提供的字符串数据的字符串中的位置。
    ///</param>
    ///  <param name="strData">
    ///  是要插入到现有字符串的字符串数据。
    ///</param>
    procedure InsertData(offset: Int32; strData: string);
    ///<summary>
    ///  从节点中删除某个范围的字符。
    ///</summary>
    ///  <param name="offset">
    ///  要开始删除字符串内的位置。
    ///</param>
    ///  <param name="count">
    ///  要删除的字符数。
    ///</param>
    procedure DeleteData(offset: Int32; count: Int32);
    ///<summary>
    ///  替换指定的数目的字符与指定的字符串指定的偏移量处开始。
    ///</summary>
    ///  <param name="offset">
    ///  要开始替换的字符串中的位置。
    ///</param>
    ///  <param name="count">
    ///  要替换的字符数。
    ///</param>
    ///  <param name="strData">
    ///  新数据将替换旧的字符串数据。
    ///</param>
    procedure ReplaceData(offset: Int32; count: Int32; strData: string);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于文本节点，此属性返回 <see langword="#text" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于文本节点，此属性返回 <see langword="#text" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  对于文本节点，该值是 XmlNodeType.Text。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父级（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  作为当前节点父级的 <see langword="XmlNode" />
    ///  。
    ///  如果刚刚创建了一个节点且尚未将其添加到树中，或如果已从树中移除了该节点，则父级为 <see langword="null" />
    ///  。
    ///  对于所有其他节点，返回的值取决于节点的 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  。
    ///  下表描述了 <see langword="ParentNode" />
    ///  属性可能的返回值。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  文本节点的内容。
    ///</returns>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
    ///<summary>
    ///  获取或设置该节点的串连的值和节点的所有子级。
    ///</summary>
    ///<returns>
    ///  节点和节点的所有子级的串连的值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  包含该节点的数据。
    ///</summary>
    ///<returns>
    ///  节点的数据。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取数据的长度，以字符为单位。
    ///</summary>
    ///<returns>
    ///  以字符为单位中的字符串的长度 <see cref="P:System.Xml.XmlCharacterData.Data" />
    ///  属性。
    ///  长度可能为 0。也就是说，CharacterData 节点可以是空的。
    ///</returns>
    property Length: Int32 read get_Length;
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property NextSibling: DNXmlNode read get_NextSibling;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
  end;

  TDNXmlText = class(TDNGenericImport<DNXmlTextClass, DNXmlText>) end;

  //-------------namespace: System.Xml----------------
  DNXmlWhitespaceClass = interface(DNObjectClass)
  ['{2A70CCA8-A245-5913-A121-09B607B6A137}']
  end;

  ///<summary>
  ///  表示元素内容中的空白。
  ///</summary>
  [DNTypeName('System.Xml.XmlWhitespace')]
  DNXmlWhitespace = interface(DNObject)
  ['{7665AD2A-852F-30AD-8E7A-09633B25E173}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_PreviousText: DNXmlNode;
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Data: string;
    procedure set_Data(value: string);
    function get_Length: Int32;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  对于空白节点，克隆的节点将始终包含数据值，而不管参数的设置如何。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从指定范围中检索一个完整的字符串的子字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要开始检索的字符串中的位置。
    ///  偏移量为零表示的起始点是在数据的开始处。
    ///</param>
    ///  <param name="count">
    ///  要检索的字符数。
    ///</param>
    ///<returns>
    ///  对应于指定的范围内的子字符串。
    ///</returns>
    function Substring(offset: Int32; count: Int32): string;
    ///<summary>
    ///  将指定的字符串追加到该节点的字符数据的末尾。
    ///</summary>
    ///  <param name="strData">
    ///  要插入现有字符串的字符串。
    ///</param>
    procedure AppendData(strData: string);
    ///<summary>
    ///  指定的字符偏移量处插入指定的字符串。
    ///</summary>
    ///  <param name="offset">
    ///  要插入的提供的字符串数据的字符串中的位置。
    ///</param>
    ///  <param name="strData">
    ///  是要插入到现有字符串的字符串数据。
    ///</param>
    procedure InsertData(offset: Int32; strData: string);
    ///<summary>
    ///  从节点中删除某个范围的字符。
    ///</summary>
    ///  <param name="offset">
    ///  要开始删除字符串内的位置。
    ///</param>
    ///  <param name="count">
    ///  要删除的字符数。
    ///</param>
    procedure DeleteData(offset: Int32; count: Int32);
    ///<summary>
    ///  替换指定的数目的字符与指定的字符串指定的偏移量处开始。
    ///</summary>
    ///  <param name="offset">
    ///  要开始替换的字符串中的位置。
    ///</param>
    ///  <param name="count">
    ///  要替换的字符数。
    ///</param>
    ///  <param name="strData">
    ///  新数据将替换旧的字符串数据。
    ///</param>
    procedure ReplaceData(offset: Int32; count: Int32; strData: string);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlWhitespace" />
    ///  节点，此属性返回 <see langword="#whitespace" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlWhitespace" />
    ///  节点，此属性返回 <see langword="#whitespace" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取节点的类型。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlWhitespace" />
    ///  节点，则这是 <see cref="F:System.Xml.XmlNodeType.Whitespace" />
    ///  。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取当前节点的父节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  当前节点的父节点。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  在节点中找到空白字符。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  设置 <see cref="P:System.Xml.XmlWhitespace.Value" />
    ///  到无效空白字符。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取紧接在该节点之前的文本节点。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Xml.XmlNode" />
    ///  。
    ///</returns>
    property PreviousText: DNXmlNode read get_PreviousText;
    ///<summary>
    ///  获取或设置该节点的串连的值和节点的所有子级。
    ///</summary>
    ///<returns>
    ///  节点和节点的所有子级的串连的值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  包含该节点的数据。
    ///</summary>
    ///<returns>
    ///  节点的数据。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取数据的长度，以字符为单位。
    ///</summary>
    ///<returns>
    ///  以字符为单位中的字符串的长度 <see cref="P:System.Xml.XmlCharacterData.Data" />
    ///  属性。
    ///  长度可能为 0。也就是说，CharacterData 节点可以是空的。
    ///</returns>
    property Length: Int32 read get_Length;
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property NextSibling: DNXmlNode read get_NextSibling;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
  end;

  TDNXmlWhitespace = class(TDNGenericImport<DNXmlWhitespaceClass, DNXmlWhitespace>) end;

  //-------------namespace: System.Xml----------------
  DNXmlDeclarationClass = interface(DNObjectClass)
  ['{A6529FEA-8312-512A-987C-49BDDB60B87F}']
  end;

  ///<summary>
  ///  表示 XML 声明节点 &lt;?xml version='1.0'...?&gt;。
  ///</summary>
  [DNTypeName('System.Xml.XmlDeclaration')]
  DNXmlDeclaration = interface(DNObject)
  ['{E98CE747-E1FC-355C-8454-95C884B8FB04}']
  { getters & setters } 

    function get_Version: string;
    function get_Encoding: string;
    procedure set_Encoding(value: string);
    function get_Standalone: string;
    procedure set_Standalone(value: string);
    function get_Value: string;
    procedure set_Value(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  因为 <see langword="XmlDeclaration" />
    ///  节点没有子级，克隆的节点始终包含数据值，而不考虑参数设置。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将节点的子级保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///  因为 <see langword="XmlDeclaration" />
    ///  节点没有子级，此方法不起作用。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取文档的 XML 版本。
    ///</summary>
    ///<returns>
    ///  此值始终是 <see langword="1.0" />
    ///  。
    ///</returns>
    property Version: string read get_Version;
    ///<summary>
    ///  获取或设置 XML 文档的编码级别。
    ///</summary>
    ///<returns>
    ///  有效的字符编码名称。
    ///  最常受支持的字符集编码名称的 XML 如下所示︰
    ///  类别
    ///  编码名称
    ///  Unicode
    ///  UTF-8、 UTF-16
    ///  ISO 10646
    ///  ISO 10646-UCS 2，ISO 10646 UCS 4
    ///  ISO 8859
    ///  ISO 8859-n （其中"n"是从 1 到 9 的数字）
    ///  X JIS 0208 1997
    ///  ISO-2022年-JP，Shift_JIS，EUC-JP
    ///  此值为可选值。
    ///  如果未设置一个值，则此属性返回 String.Empty。
    ///  如果未包括出编码方式特性，则编写或保存文档时将假定为 utf-8 编码。
    ///</returns>
    property Encoding: string read get_Encoding write set_Encoding;
    ///<summary>
    ///  获取或设置独立的属性的值。
    ///</summary>
    ///<returns>
    ///  有效值为 <see langword="yes" />
    ///  所需的 XML 文档的所有实体声明将都包含在文档或 <see langword="no" />
    ///  是否需要外部文档类型定义 (DTD)。
    ///  如果出独立特性不存在 XML 声明中，此属性返回 String.Empty。
    ///</returns>
    property Standalone: string read get_Standalone write set_Standalone;
    ///<summary>
    ///  获取或设置的值 <see langword="XmlDeclaration" />
    ///  。
    ///</summary>
    ///<returns>
    ///  内容 <see langword="XmlDeclaration" />
    ///  (即之间的所有内容 &lt;?xml 和 ?&gt;)。
    ///</returns>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取或设置的串连的值 <see langword="XmlDeclaration" />
    ///  。
    ///</summary>
    ///<returns>
    ///  串联的值 <see langword="XmlDeclaration" />
    ///  (即之间的所有内容 &lt;?xml 和 ?&gt;)。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDeclaration" />
    ///  节点，名称是 <see langword="xml" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDeclaration" />
    ///  节点，本地名称是 <see langword="xml" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlDeclaration" />
    ///  节点，此值是 XmlNodeType.XmlDeclaration。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see cref="T:System.Xml.XmlNode" />
    ///  或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  紧随该节点或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    property ParentNode: DNXmlNode read get_ParentNode;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlDeclaration = class(TDNGenericImport<DNXmlDeclarationClass, DNXmlDeclaration>) end;

  //-------------namespace: System.Xml----------------
  DNXmlDocumentTypeClass = interface(DNObjectClass)
  ['{BEC420DE-802C-5F38-95F7-CA44F66DB28E}']
  end;

  ///<summary>
  ///  表示文档类型声明。
  ///</summary>
  [DNTypeName('System.Xml.XmlDocumentType')]
  DNXmlDocumentType = interface(DNObject)
  ['{7AF5641A-36C3-3113-83DA-937C8D756FC0}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NodeType: DNXmlNodeType;
    function get_IsReadOnly: Boolean;
    function get_PublicId: string;
    function get_SystemId: string;
    function get_InternalSubset: string;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  对于文档类型节点，克隆的节点始终包含的子树，而不考虑参数设置。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///  有关 <see langword="XmlDocumentType" />
    ///  节点，此方法不起作用。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于 DocumentType 节点，此属性返回的文档类型的名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于 DocumentType 节点，此属性返回的文档类型的名称。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  对于 DocumentType 节点，此值是 XmlNodeType.DocumentType。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取指示节点是否只读的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果节点是只读的;否则为 <see langword="false" />
    ///  。
    ///  DocumentType 节点是只读的因为此属性始终返回 <see langword="true" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取上 DOCTYPE 声明的公共标识符的值。
    ///</summary>
    ///<returns>
    ///  DOCTYPE 上的公共标识符。
    ///  如果没有公共标识符， <see langword="null" />
    ///  返回。
    ///</returns>
    property PublicId: string read get_PublicId;
    ///<summary>
    ///  获取上 DOCTYPE 声明的系统标识符的值。
    ///</summary>
    ///<returns>
    ///  DOCTYPE 上的系统标识符。
    ///  如果没有系统标识符， <see langword="null" />
    ///  返回。
    ///</returns>
    property SystemId: string read get_SystemId;
    ///<summary>
    ///  获取文档类型定义 (DTD) 内部子集中的值上的 DOCTYPE 声明。
    ///</summary>
    ///<returns>
    ///  DTD 内部子集上 DOCTYPE。
    ///  如果没有 DTD 内部子集，则返回 String.Empty。
    ///</returns>
    property InternalSubset: string read get_InternalSubset;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see cref="T:System.Xml.XmlNode" />
    ///  或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  紧随该节点或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    property Value: string read get_Value write set_Value;
    property ParentNode: DNXmlNode read get_ParentNode;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property InnerText: string read get_InnerText write set_InnerText;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlDocumentType = class(TDNGenericImport<DNXmlDocumentTypeClass, DNXmlDocumentType>) end;

  //-------------namespace: System.Xml----------------
  DNXmlElementClass = interface(DNObjectClass)
  ['{95FBF49A-C7B8-52DE-9824-77FC0B51F4A3}']
  end;

  ///<summary>
  ///  表示元素。
  ///</summary>
  [DNTypeName('System.Xml.XmlElement')]
  DNXmlElement = interface(DNObject)
  ['{4F4034C5-F0F2-3631-965C-95B3A6E74446}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_NodeType: DNXmlNodeType;
    function get_ParentNode: DNXmlNode;
    function get_OwnerDocument: DNXmlDocument;
    function get_IsEmpty: Boolean;
    procedure set_IsEmpty(value: Boolean);
    function get_Attributes: DNXmlAttributeCollection;
    function get_HasAttributes: Boolean;
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_NextSibling: DNXmlNode;
    function get_PreviousSibling: DNXmlNode;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_ChildNodes: DNXmlNodeList;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身（如果节点是 <see langword="XmlElement" />
    ///  ，还克隆其属性），则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  返回具有指定名称的属性的值。
    ///</summary>
    ///  <param name="name">
    ///  要检索的属性的名称。
    ///  这是限定名。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果未找到匹配属性，或者如果此属性没有指定值或默认值，则返回空字符串。
    ///</returns>
    function GetAttribute(name: string): string; overload;
    ///<summary>
    ///  设置具有指定名称的属性的值。
    ///</summary>
    ///  <param name="name">
    ///  要创建或更改的属性的名称。
    ///  这是限定名。
    ///  如果名称包含的冒号将它解析为前缀和本地名称组件。
    ///</param>
    ///  <param name="value">
    ///  要为该属性设置的值。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  指定的名称包含无效字符。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该节点是只读的。
    ///</exception>
    procedure SetAttribute(name: string; value: string); overload;
    ///<summary>
    ///  按名称删除特性。
    ///</summary>
    ///  <param name="name">
    ///  要删除的特性的名称。该名称限定名称。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该节点是只读的。
    ///</exception>
    procedure RemoveAttribute(name: string); overload;
    ///<summary>
    ///  返回具有指定名称的 <see langword="XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  要检索的属性的名称。
    ///  这是限定名。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///</param>
    ///<returns>
    ///  如果找到匹配的属性，则为指定的 <see langword="XmlAttribute" />
    ///  ；如果未找到，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetAttributeNode(name: string): DNXmlAttribute; overload;
    ///<summary>
    ///  添加指定 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="newAttr"><see langword="XmlAttribute" />
    ///  节点将添加到此元素的属性集合。
    ///</param>
    ///<returns>
    ///  如果特性将取代现有属性具有相同名称，旧 <see langword="XmlAttribute" />
    ///  返回; 否则为 <see langword="null" />
    ///  返回。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="newAttr" />
    ///  从创建此节点比不同文档创建。
    ///  或此节点是只读的。
    ///</exception><exception cref="T:System.InvalidOperationException"><paramref name="newAttr" />
    ///  已经是另一个属性 <see langword="XmlElement" />
    ///  对象。
    ///  您必须显式克隆 <see langword="XmlAttribute" />
    ///  节点重新使用它们在其他 <see langword="XmlElement" />
    ///  对象。
    ///</exception>
    function SetAttributeNode(newAttr: DNXmlAttribute): DNXmlAttribute; overload;
    ///<summary>
    ///  移除指定 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="oldAttr"><see langword="XmlAttribute" />
    ///  要移除的节点。
    ///  如果移除的属性具有默认值，则立即将其替换。
    ///</param>
    ///<returns>
    ///  移除 <see langword="XmlAttribute" />
    ///  或 <see langword="null" />
    ///  如果 <paramref name="oldAttr" />
    ///  不是属性节点的 <see langword="XmlElement" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception>
    function RemoveAttributeNode(oldAttr: DNXmlAttribute): DNXmlAttribute; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlNodeList" />
    ///  ，它包含与指定 <see cref="P:System.Xml.XmlElement.Name" />
    ///  匹配的所有子代元素的列表。
    ///</summary>
    ///  <param name="name">
    ///  要匹配的名称标记。
    ///  这是限定名。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///  星号 (*) 是匹配所有标记的特殊值。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  ，包含所有匹配节点的列表。
    ///  如果不存在任何匹配节点，则该列表为空。
    ///</returns>
    function GetElementsByTagName(name: string): DNXmlNodeList; overload;
    ///<summary>
    ///  返回具有指定的本地名称和命名空间 URI 的属性的值。
    ///</summary>
    ///  <param name="localName">
    ///  要检索的属性本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 的属性检索。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果未找到匹配属性，或者如果此属性没有指定值或默认值，则返回空字符串。
    ///</returns>
    function GetAttribute(localName: string; namespaceURI: string): string; overload;
    ///<summary>
    ///  设置具有指定的本地名称和命名空间 URI 的属性的值。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  要为该属性设置的值。
    ///</param>
    ///<returns>
    ///  特性值。
    ///</returns>
    function SetAttribute(localName: string; namespaceURI: string; value: string): string; overload;
    ///<summary>
    ///  删除具有指定的本地名称和命名空间 URI 的属性。
    ///  （如果删除的特性具有默认值时，则将立即替换它）。
    ///</summary>
    ///  <param name="localName">
    ///  要移除的属性本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 的属性中删除。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该节点是只读的。
    ///</exception>
    procedure RemoveAttribute(localName: string; namespaceURI: string); overload;
    ///<summary>
    ///  返回 <see cref="T:System.Xml.XmlAttribute" />
    ///  具有指定的本地名称和命名空间 URI。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果找到匹配的属性，则为指定的 <see langword="XmlAttribute" />
    ///  ；如果未找到，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetAttributeNode(localName: string; namespaceURI: string): DNXmlAttribute; overload;
    ///<summary>
    ///  添加指定 <see cref="T:System.Xml.XmlAttribute" />
    ///  。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  要添加的 <see langword="XmlAttribute" />
    ///  。
    ///</returns>
    function SetAttributeNode(localName: string; namespaceURI: string): DNXmlAttribute; overload;
    ///<summary>
    ///  删除 <see cref="T:System.Xml.XmlAttribute" />
    ///  指定本地名称和命名空间 URI。
    ///  （如果删除的特性具有默认值时，则将立即替换它）。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  移除 <see langword="XmlAttribute" />
    ///  或 <see langword="null" />
    ///  如果 <see langword="XmlElement" />
    ///  没有匹配的属性节点。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此节点是只读的。
    ///</exception>
    function RemoveAttributeNode(localName: string; namespaceURI: string): DNXmlAttribute; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlNodeList" />
    ///  ，它包含与指定 <see cref="P:System.Xml.XmlElement.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlElement.NamespaceURI" />
    ///  匹配的所有子代元素的列表。
    ///</summary>
    ///  <param name="localName">
    ///  要匹配的本地名称。
    ///  星号 (*) 是匹配所有标记的特殊值。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 相匹配。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNodeList" />
    ///  ，包含所有匹配节点的列表。
    ///  如果不存在任何匹配节点，则该列表为空。
    ///</returns>
    function GetElementsByTagName(localName: string; namespaceURI: string): DNXmlNodeList; overload;
    ///<summary>
    ///  确定当前节点是否具有带有指定名称的属性。
    ///</summary>
    ///  <param name="name">
    ///  要查找的属性的名称。
    ///  这是限定名。
    ///  它针对匹配节点的 <see langword="Name" />
    ///  属性进行匹配。
    ///</param>
    ///<returns>
    ///  如果当前节点具有指定的属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function HasAttribute(name: string): Boolean; overload;
    ///<summary>
    ///  确定当前节点是否具有指定的本地名称和命名空间 URI 的属性。
    ///</summary>
    ///  <param name="localName">
    ///  要查找的属性本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 的属性查找。
    ///</param>
    ///<returns>
    ///  如果当前节点具有指定的属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function HasAttribute(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  将当前节点保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    ///<summary>
    ///  从元素中删除具有指定索引的特性节点。
    ///  （如果删除的特性具有默认值时，则将立即替换它）。
    ///</summary>
    ///  <param name="i">
    ///  要删除的节点的索引。
    ///  第一个节点的索引为 0。
    ///</param>
    ///<returns>
    ///  已删除的特性节点；若给定索引处无节点则为 <see langword="null" />
    ///  。
    ///</returns>
    function RemoveAttributeAt(i: Int32): DNXmlNode;
    ///<summary>
    ///  从元素中删除所有指定的属性。
    ///  不删除默认属性。
    ///</summary>
    procedure RemoveAllAttributes;
    ///<summary>
    ///  删除当前节点的所有指定特性和子级。
    ///  不删除默认属性。
    ///</summary>
    procedure RemoveAll;
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  节点的限定名称。
    ///  对于 <see langword="XmlElement" />
    ///  节点，这是元素的标记名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取当前节点的本地名称。
    ///</summary>
    ///<returns>
    ///  移除了前缀的当前节点的名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="LocalName" />
    ///  是 book。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取该节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间 URI。
    ///  如果没有命名空间 URI，则此属性返回 String.Empty。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取或设置该节点的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  该节点的命名空间前缀。
    ///  如果没有前缀，则该属性返回 String.Empty。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  该节点是只读的
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  指定的前缀包含无效字符。
    ///  指定的前缀格式不正确。
    ///  该节点的 namespaceURI 为 <see langword="null" />
    ///  。
    ///  指定的前缀为“xml”，而该节点的 namespaceURI 与 http://www.w3.org/XML/1998/namespace 不同。
    ///</exception>
    property Prefix: string read get_Prefix write set_Prefix;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  节点类型。
    ///  有关 <see langword="XmlElement" />
    ///  节点，此值是 XmlNodeType.Element。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取该节点的父级（针对可以拥有父级的节点）。
    ///</summary>
    ///<returns>
    ///  作为当前节点父级的 <see langword="XmlNode" />
    ///  。
    ///  如果刚刚创建了一个节点且尚未将其添加到树中，或如果已从树中移除了该节点，则父级为 <see langword="null" />
    ///  。
    ///  对于所有其他节点，返回的值取决于节点的 <see cref="P:System.Xml.XmlNode.NodeType" />
    ///  。
    ///  下表描述了 <see langword="ParentNode" />
    ///  属性可能的返回值。
    ///</returns>
    property ParentNode: DNXmlNode read get_ParentNode;
    ///<summary>
    ///  获取此节点所属的 <see cref="T:System.Xml.XmlDocument" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此元素所属的 <see langword="XmlDocument" />
    ///  。
    ///</returns>
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    ///<summary>
    ///  获取或设置元素的标记格式。
    ///</summary>
    ///<returns>
    ///  如果元素将以标记短格式“&lt;item/&gt;”序列化，则返回 <see langword="true" />
    ///  ；对于长格式“&lt;item&gt;&lt;/item&gt;”，则为 <see langword="false" />
    ///  。
    ///  在设置此属性时，如果设置为 <see langword="true" />
    ///  ，将删除元素的子级，并且以短标记格式序列化该元素。
    ///  如果设置为 <see langword="false" />
    ///  ，将更改属性值（无论元素是否有内容）；如果该元素为空，则会采用长格式序列化。
    ///  此属性是文档对象模型 (DOM) 的 Microsoft 扩展。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty write set_IsEmpty;
    ///<summary>
    ///  获取包含此节点的属性列表的 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  包含此节点的属性列表的 <see cref="T:System.Xml.XmlAttributeCollection" />
    ///  。
    ///</returns>
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取一个 <see langword="boolean" />
    ///  值，该值指示当前节点是否有任何属性。
    ///</summary>
    ///<returns>
    ///  如果当前节点具有属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasAttributes: Boolean read get_HasAttributes;
    ///<summary>
    ///  获取作为架构验证的结果分配给此节点的后架构验证信息集。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，其中包含此节点的后架构验证信息集。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取或设置仅表示此节点的子级的标记。
    ///</summary>
    ///<returns>
    ///  此节点子级的标记。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  设置此属性时指定的 XML 格式不正确。
    ///</exception>
    property InnerXml: string read get_InnerXml write set_InnerXml;
    ///<summary>
    ///  获取或设置节点及其所有子级的串连值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子级的串连值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlNode" />
    ///  紧接在此元素。
    ///</summary>
    ///<returns><see langword="XmlNode" />
    ///  紧接在此元素。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see cref="T:System.Xml.XmlNode" />
    ///  或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    property Value: string read get_Value write set_Value;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlElement = class(TDNGenericImport<DNXmlElementClass, DNXmlElement>) end;

  //-------------namespace: System.Xml----------------
  DNXmlEntityReferenceClass = interface(DNObjectClass)
  ['{90401A09-6381-574B-823A-E3F8F43DAFCD}']
  end;

  ///<summary>
  ///  表示实体引用节点。
  ///</summary>
  [DNTypeName('System.Xml.XmlEntityReference')]
  DNXmlEntityReference = interface(DNObject)
  ['{A49C5C6E-C1A3-30E6-AED4-6AB2D32BA301}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_NodeType: DNXmlNodeType;
    function get_IsReadOnly: Boolean;
    function get_BaseURI: string;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///  有关 <see langword="XmlEntityReference" />
    ///  节点，此方法始终返回无子项的实体引用节点。
    ///  当将节点插入父级时，设置替换文本。
    ///</param>
    ///<returns>
    ///  克隆的节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的名称。
    ///</summary>
    ///<returns>
    ///  引用的实体的名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlEntityReference" />
    ///  节点，此属性返回引用的实体的名称。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  节点的值。
    ///  有关 <see langword="XmlEntityReference" />
    ///  节点，此属性返回 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点是只读的。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  设置的属性。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取节点的类型。
    ///</summary>
    ///<returns>
    ///  节点类型。
    ///  有关 <see langword="XmlEntityReference" />
    ///  节点，该值是 XmlNodeType.EntityReference。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取指示节点是否只读的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果节点是只读的;否则为 <see langword="false" />
    ///  。
    ///  因为 <see langword="XmlEntityReference" />
    ///  节点是只读的此属性始终返回 <see langword="true" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取当前节点的基础统一资源标识符 (URI)。
    ///</summary>
    ///<returns>
    ///  从其加载节点的位置。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see cref="T:System.Xml.XmlNode" />
    ///  或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  紧随该节点或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    property ParentNode: DNXmlNode read get_ParentNode;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property InnerText: string read get_InnerText write set_InnerText;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlEntityReference = class(TDNGenericImport<DNXmlEntityReferenceClass, DNXmlEntityReference>) end;

  //-------------namespace: System.Xml----------------
  DNXmlProcessingInstructionClass = interface(DNObjectClass)
  ['{A00F64E7-9C95-55E8-BE6E-9B41100EE844}']
  end;

  ///<summary>
  ///  表示一条处理指令，XML 定义该处理指令以将处理器特定的信息保存在文档的文本中。
  ///</summary>
  [DNTypeName('System.Xml.XmlProcessingInstruction')]
  DNXmlProcessingInstruction = interface(DNObject)
  ['{2550041F-0896-38C3-9876-092B4D27211E}']
  { getters & setters } 

    function get_Name: string;
    function get_LocalName: string;
    function get_Value: string;
    procedure set_Value(value: string);
    function get_Target: string;
    function get_Data: string;
    procedure set_Data(value: string);
    function get_InnerText: string;
    procedure set_InnerText(value: string);
    function get_NodeType: DNXmlNodeType;
    function get_PreviousSibling: DNXmlNode;
    function get_NextSibling: DNXmlNode;
    function get_ParentNode: DNXmlNode;
    function get_ChildNodes: DNXmlNodeList;
    function get_Attributes: DNXmlAttributeCollection;
    function get_OwnerDocument: DNXmlDocument;
    function get_FirstChild: DNXmlNode;
    function get_LastChild: DNXmlNode;
    function get_HasChildNodes: Boolean;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    procedure set_Prefix(value: string);
    function get_IsReadOnly: Boolean;
    function get_OuterXml: string;
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_BaseURI: string;
    function get_Item(name: string): DNXmlElement; overload;
    function get_Item(localname: string; ns: string): DNXmlElement; overload;
    function get_PreviousText: DNXmlNode;

  { methods } 

    ///<summary>
    ///  创建此节点的副本。
    ///</summary>
    ///  <param name="deep">
    ///  若要递归地克隆指定节点下的子树，则为 <see langword="true" />
    ///  ；若仅克隆节点本身，则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  重复节点。
    ///</returns>
    function CloneNode(deep: Boolean): DNXmlNode;
    ///<summary>
    ///  将节点保存到指定 <see cref="T:System.Xml.XmlWriter" />
    ///  。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteTo(w: DNXmlWriter);
    ///<summary>
    ///  将该节点的所有子项保存到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  中。
    ///  因为 ProcessingInstruction 节点不具有子级，所以此方法无效。
    ///</summary>
    ///  <param name="w">
    ///  要保存到其中的 <see langword="XmlWriter" />
    ///  。
    ///</param>
    procedure WriteContentTo(w: DNXmlWriter);
    function CreateNavigator: DNXPathNavigator;
    function SelectSingleNode(xpath: string): DNXmlNode; overload;
    function SelectSingleNode(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNode; overload;
    function SelectNodes(xpath: string): DNXmlNodeList; overload;
    function SelectNodes(xpath: string; nsmgr: DNXmlNamespaceManager): DNXmlNodeList; overload;
    function InsertBefore(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function InsertAfter(newChild: DNXmlNode; refChild: DNXmlNode): DNXmlNode;
    function ReplaceChild(newChild: DNXmlNode; oldChild: DNXmlNode): DNXmlNode;
    function RemoveChild(oldChild: DNXmlNode): DNXmlNode;
    function PrependChild(newChild: DNXmlNode): DNXmlNode;
    function AppendChild(newChild: DNXmlNode): DNXmlNode;
    procedure Normalize;
    function Clone: DNXmlNode;
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure RemoveAll;
    function GetNamespaceOfPrefix(prefix: string): string;
    function GetPrefixOfNamespace(namespaceURI: string): string;
    function Supports(feature: string; version: string): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取节点的限定名称。
    ///</summary>
    ///<returns>
    ///  对于处理指令节点，此属性返回处理指令的目标。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取节点的本地名称。
    ///</summary>
    ///<returns>
    ///  对于处理指令节点，此属性返回处理指令的目标。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取或设置节点的值。
    ///</summary>
    ///<returns>
    ///  处理指令的全部内容（目标除外）。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  节点是只读的。
    ///</exception>
    property Value: string read get_Value write set_Value;
    ///<summary>
    ///  获取处理指令的目标。
    ///</summary>
    ///<returns>
    ///  处理指令的目标。
    ///</returns>
    property Target: string read get_Target;
    ///<summary>
    ///  获取或设置处理指令的内容（目标除外）。
    ///</summary>
    ///<returns>
    ///  处理指令的内容（目标除外）。
    ///</returns>
    property Data: string read get_Data write set_Data;
    ///<summary>
    ///  获取或设置节点及其所有子级的串连值。
    ///</summary>
    ///<returns>
    ///  节点及其所有子级的串连值。
    ///</returns>
    property InnerText: string read get_InnerText write set_InnerText;
    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  有关 <see langword="XmlProcessingInstruction" />
    ///  节点，该值是 XmlNodeType.ProcessingInstruction。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取紧接在该节点之前的节点。
    ///</summary>
    ///<returns>
    ///  前面 <see cref="T:System.Xml.XmlNode" />
    ///  或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property PreviousSibling: DNXmlNode read get_PreviousSibling;
    ///<summary>
    ///  获取紧接在该节点之后的节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  紧随该节点或 <see langword="null" />
    ///  如果不存在。
    ///</returns>
    property NextSibling: DNXmlNode read get_NextSibling;
    property ParentNode: DNXmlNode read get_ParentNode;
    property ChildNodes: DNXmlNodeList read get_ChildNodes;
    property Attributes: DNXmlAttributeCollection read get_Attributes;
    property OwnerDocument: DNXmlDocument read get_OwnerDocument;
    property FirstChild: DNXmlNode read get_FirstChild;
    property LastChild: DNXmlNode read get_LastChild;
    property HasChildNodes: Boolean read get_HasChildNodes;
    property NamespaceURI: string read get_NamespaceURI;
    property Prefix: string read get_Prefix write set_Prefix;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property OuterXml: string read get_OuterXml;
    property InnerXml: string read get_InnerXml write set_InnerXml;
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    property BaseURI: string read get_BaseURI;
    property Item[name: string]: DNXmlElement read get_Item; default;
    property Item[localname: string; ns: string]: DNXmlElement read get_Item; default;
    property PreviousText: DNXmlNode read get_PreviousText;
  end;

  TDNXmlProcessingInstruction = class(TDNGenericImport<DNXmlProcessingInstructionClass, DNXmlProcessingInstruction>) end;

  //-------------namespace: System.Xml----------------
  DNXmlNodeListClass = interface(DDN.mscorlib.DNObjectClass)
  ['{CD04361B-0A59-52B5-8AD4-CB82A6CB6425}']
  end;

  ///<summary>
  ///  表示节点的有序集合。
  ///</summary>
  [DNTypeName('System.Xml.XmlNodeList')]
  DNXmlNodeList = interface(DDN.mscorlib.DNObject)
  ['{A82A4A5B-6914-3CC4-B7C3-EBB1D009992C}']
  { getters & setters } 

    function get_Count: Int32;
    function get_ItemOf(i: Int32): DNXmlNode;

  { methods } 

    ///<summary>
    ///  检索给定索引处的节点。
    ///</summary>
    ///  <param name="index">
    ///  中的节点列表的从零开始索引。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlNode" />
    ///  具有在集合中指定的索引。
    ///  如果 <paramref name="index" />
    ///  是大于或等于的节点数在列表中，这将返回 <see langword="null" />
    ///  。
    ///</returns>
    function Item(index: Int32): DNXmlNode;
    ///<summary>
    ///  获取循环的枚举器遍历节点集合。
    ///</summary>
    ///<returns>
    ///  一个用于循环访问节点的集合的枚举。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取中的节点数 <see langword="XmlNodeList" />
    ///  。
    ///</summary>
    ///<returns>
    ///  中的节点数 <see langword="XmlNodeList" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
    property ItemOf[i: Int32]: DNXmlNode read get_ItemOf; default;
  end;

  TDNXmlNodeList = class(TDNGenericImport<DNXmlNodeListClass, DNXmlNodeList>) end;

  //-------------namespace: System.Xml----------------
  DNXmlParserContextClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0E6B1786-198D-5A8F-8792-DB639A99D507}']
  end;

  ///<summary>
  ///  提供所需的上下文信息 <see cref="T:System.Xml.XmlReader" />
  ///  来分析 XML 片段。
  ///</summary>
  [DNTypeName('System.Xml.XmlParserContext')]
  DNXmlParserContext = interface(DDN.mscorlib.DNObject)
  ['{406E8126-3D39-3708-BBD1-E5414D1C792F}']
  { getters & setters } 

    function get_NameTable: DNXmlNameTable;
    procedure set_NameTable(value: DNXmlNameTable);
    function get_NamespaceManager: DNXmlNamespaceManager;
    procedure set_NamespaceManager(value: DNXmlNamespaceManager);
    function get_DocTypeName: string;
    procedure set_DocTypeName(value: string);
    function get_PublicId: string;
    procedure set_PublicId(value: string);
    function get_SystemId: string;
    procedure set_SystemId(value: string);
    function get_BaseURI: string;
    procedure set_BaseURI(value: string);
    function get_InternalSubset: string;
    procedure set_InternalSubset(value: string);
    function get_XmlLang: string;
    procedure set_XmlLang(value: string);
    function get_Encoding: DDN.mscorlib.DNEncoding;
    procedure set_Encoding(value: DDN.mscorlib.DNEncoding);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Xml.XmlNameTable" />
    ///  用于原子化字符串。
    ///  原子化字符串的详细信息，请参阅 <see cref="T:System.Xml.XmlNameTable" />
    ///  。
    ///</summary>
    ///<returns><see langword="XmlNameTable" />
    ///  。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable write set_NameTable;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  。
    ///</summary>
    ///<returns><see langword="XmlNamespaceManager" />
    ///  。
    ///</returns>
    property NamespaceManager: DNXmlNamespaceManager read get_NamespaceManager write set_NamespaceManager;
    ///<summary>
    ///  获取或设置文档类型声明的名称。
    ///</summary>
    ///<returns>
    ///  文档类型声明的名称。
    ///</returns>
    property DocTypeName: string read get_DocTypeName write set_DocTypeName;
    ///<summary>
    ///  获取或设置公共标识符。
    ///</summary>
    ///<returns>
    ///  公共标识符。
    ///</returns>
    property PublicId: string read get_PublicId write set_PublicId;
    ///<summary>
    ///  获取或设置的系统标识符。
    ///</summary>
    ///<returns>
    ///  系统标识符。
    ///</returns>
    property SystemId: string read get_SystemId write set_SystemId;
    ///<summary>
    ///  获取或设置基 URI。
    ///</summary>
    ///<returns>
    ///  要用于解析 DTD 文件的基 URI。
    ///</returns>
    property BaseURI: string read get_BaseURI write set_BaseURI;
    ///<summary>
    ///  获取或设置内部 DTD 子集。
    ///</summary>
    ///<returns>
    ///  内部 DTD 子集。
    ///  例如，此属性返回的所有内容方括号 &lt;!DOCTYPE doc [...]&gt;。
    ///</returns>
    property InternalSubset: string read get_InternalSubset write set_InternalSubset;
    ///<summary>
    ///  获取或设置当前 <see langword="xml:lang" />
    ///  作用域。
    ///</summary>
    ///<returns>
    ///  当前 <see langword="xml:lang" />
    ///  范围。
    ///  如果没有任何 <see langword="xml:lang" />
    ///  在范围内， <see langword="String.Empty" />
    ///  返回。
    ///</returns>
    property XmlLang: string read get_XmlLang write set_XmlLang;
    ///<summary>
    ///  获取或设置的编码类型。
    ///</summary>
    ///<returns><see cref="T:System.Text.Encoding" />
    ///  对象，它指示编码类型。
    ///</returns>
    property Encoding: DDN.mscorlib.DNEncoding read get_Encoding write set_Encoding;
  end;

  TDNXmlParserContext = class(TDNGenericImport<DNXmlParserContextClass, DNXmlParserContext>) end;

  //-------------namespace: System.Xml----------------
  DNXmlReaderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{BED71FF4-9350-5FA7-AEB4-E4B0CBD7BE7A}']
  { static methods } 

    ///<summary>
    ///  返回一个值，该值指示字符串自变量是否是有效的 XML 名称。
    ///</summary>
    ///  <param name="str">
    ///  要验证的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果该名称是否有效;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="str" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function IsName(str: string): Boolean;
    ///<summary>
    ///  返回一个值，该值指示该字符串自变量是否是有效的 XML 名称标记。
    ///</summary>
    ///  <param name="str">
    ///  要验证的名称标记。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果它是有效的名称的标记;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="str" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function IsNameToken(str: string): Boolean;
    ///<summary>
    ///  用指定的 URI 创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="inputUri">
    ///  包含 XML 数据的文件的 URI。
    ///<see cref="T:System.Xml.XmlUrlResolver" />
    ///  类用于将路径转换为规范化数据表示形式。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="inputUri" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException"><see cref="T:System.Xml.XmlReader" />
    ///  没有足够的权限访问 XML 数据的位置。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  由 URI 标识的文件不存在。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在适用于 Windows 应用商店应用的 .NET 或可移植类库中，改为捕获基类异常 <see cref="T:System.FormatException" />
    ///  。
    ///  URI 格式不正确。
    ///</exception>
    {class} function Create(inputUri: string): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的 URI 和设置创建新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="inputUri">
    ///  包含 XML 数据的文件的 URI。
    ///<see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象上的 <see cref="T:System.Xml.XmlResolver" />
    ///  对象用于将路径转换为规范化数据表示形式。
    ///  如果 <see cref="P:System.Xml.XmlReaderSettings.XmlResolver" />
    ///  为 <see langword="null" />
    ///  ，则使用新的 <see cref="T:System.Xml.XmlUrlResolver" />
    ///  对象。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="inputUri" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  找不到 URI 指定的文件。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在适用于 Windows 应用商店应用的 .NET 或可移植类库中，改为捕获基类异常 <see cref="T:System.FormatException" />
    ///  。
    ///  URI 格式不正确。
    ///</exception>
    {class} function Create(inputUri: string; settings: DNXmlReaderSettings): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的 URI、设置和进行分析的上下文信息创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="inputUri">
    ///  包含 XML 数据的文件的 URI。
    ///<see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象上的 <see cref="T:System.Xml.XmlResolver" />
    ///  对象用于将路径转换为规范化数据表示形式。
    ///  如果 <see cref="P:System.Xml.XmlReaderSettings.XmlResolver" />
    ///  为 <see langword="null" />
    ///  ，则使用新的 <see cref="T:System.Xml.XmlUrlResolver" />
    ///  对象。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="inputContext">
    ///  分析 XML 片段所需的上下文信息.
    ///  上下文信息可以包括要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  、编码、命名空间范围、当前的 xml:lang 和 xml:space 范围、基 URI 和文档类型定义。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><see langword="inputUri" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException"><see cref="T:System.Xml.XmlReader" />
    ///  没有足够的权限访问 XML 数据的位置。
    ///</exception><exception cref="T:System.ArgumentException"><see cref="P:System.Xml.XmlReaderSettings.NameTable" />
    ///  和 <see cref="P:System.Xml.XmlParserContext.NameTable" />
    ///  属性都包含值。
    ///  （只能设置并使用这些 <see langword="NameTable" />
    ///  属性之中的一个）。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  找不到 URI 指定的文件。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  URI 格式不正确。
    ///</exception>
    {class} function Create(inputUri: string; settings: DNXmlReaderSettings; inputContext: DNXmlParserContext): DNXmlReader; overload;
    ///<summary>
    ///  使用带默认设置的指定流创建新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  包含 XML 数据的流。
    ///<see cref="T:System.Xml.XmlReader" />
    ///  对流的前几个字节进行扫描，查找字节顺序标记或其他编码标志。
    ///  在确定编码方式后，使用该编码方式继续读取流，而处理过程继续将输入内容分析为 (Unicode) 字符流。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Security.SecurityException"><see cref="T:System.Xml.XmlReader" />
    ///  没有足够的权限访问 XML 数据的位置。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNStream): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的流和设置创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  包含 XML 数据的流。
    ///<see cref="T:System.Xml.XmlReader" />
    ///  对流的前几个字节进行扫描，查找字节顺序标记或其他编码标志。
    ///  在确定编码方式后，使用该编码方式继续读取流，而处理过程继续将输入内容分析为 (Unicode) 字符流。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNStream; settings: DNXmlReaderSettings): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的流、基 URI 和设置创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  包含 XML 数据的流。
    ///<see cref="T:System.Xml.XmlReader" />
    ///  对流的前几个字节进行扫描，查找字节顺序标记或其他编码标志。
    ///  在确定编码方式后，使用该编码方式继续读取流，而处理过程继续将输入内容分析为 (Unicode) 字符流。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="baseUri">
    ///  正在读取的实体或文档的基 URI。
    ///  此值可为 <see langword="null" />
    ///  。
    ///  “安全说明”   基 URI 用于解析 XML 文档的相对 URI。
    ///  不要使用来自非信任源的基 URI。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNStream; settings: DNXmlReaderSettings; baseUri: string): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的流、设置和用于分析的上下文信息创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  包含 XML 数据的流。
    ///<see cref="T:System.Xml.XmlReader" />
    ///  对流的前几个字节进行扫描，查找字节顺序标记或其他编码标志。
    ///  在确定编码方式后，使用该编码方式继续读取流，而处理过程继续将输入内容分析为 (Unicode) 字符流。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="inputContext">
    ///  分析 XML 片段所需的上下文信息.
    ///  上下文信息可以包括要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  、编码、命名空间范围、当前的 xml:lang 和 xml:space 范围、基 URI 和文档类型定义。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNStream; settings: DNXmlReaderSettings; inputContext: DNXmlParserContext): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的文本读取器创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  从其中读取 XML 数据的文本读取器。
    ///  由于文本读取器返回的是 Unicode 字符流，因此，XML 读取器未使用 XML 声明中指定的编码对数据流进行解码。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNTextReader): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的文本读取器和设置创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  从其中读取 XML 数据的文本读取器。
    ///  由于文本读取器返回的是 Unicode 字符流，因此，XML 读取器未使用 XML 声明中指定的编码对数据流进行解码。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNTextReader; settings: DNXmlReaderSettings): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的文本读取器、设置和基 URI 创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</summary>
    ///  <param name="input">
    ///  从其中读取 XML 数据的文本读取器。
    ///  由于文本读取器返回的是 Unicode 字符流，因此，<see cref="T:System.Xml.XmlReader" />
    ///  未使用 XML 声明中指定的编码对数据流进行解码。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="baseUri">
    ///  正在读取的实体或文档的基 URI。
    ///  此值可为 <see langword="null" />
    ///  。
    ///  “安全说明”   基 URI 用于解析 XML 文档的相对 URI。
    ///  不要使用来自非信任源的基 URI。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNTextReader; settings: DNXmlReaderSettings; baseUri: string): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的文本读取器、设置和要用于分析的上下文信息创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="input">
    ///  从其中读取 XML 数据的文本读取器。
    ///  由于文本读取器返回的是 Unicode 字符流，因此，XML 读取器未使用 XML 声明中指定的编码对数据流进行解码。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="inputContext">
    ///  分析 XML 片段所需的上下文信息.
    ///  上下文信息可以包括要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  、编码、命名空间范围、当前的 xml:lang 和 xml:space 范围、基 URI 和文档类型定义。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个用于读取数据流中所含数据的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><see cref="P:System.Xml.XmlReaderSettings.NameTable" />
    ///  和 <see cref="P:System.Xml.XmlParserContext.NameTable" />
    ///  属性都包含值。
    ///  （只能设置并使用这些 <see langword="NameTable" />
    ///  属性之中的一个）。
    ///</exception>
    {class} function Create(input: DDN.mscorlib.DNTextReader; settings: DNXmlReaderSettings; inputContext: DNXmlParserContext): DNXmlReader; overload;
    ///<summary>
    ///  使用指定的 XML 读取器和设置创建一个新的 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///  <param name="reader">
    ///  要用作基础 XML 编写器的对象。
    ///</param>
    ///  <param name="settings">
    ///  新 <see cref="T:System.Xml.XmlReader" />
    ///  实例的设置。
    ///<see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象的一致性级别要么必须与基础读取器的一致性级别匹配，要么必须设置为 <see cref="F:System.Xml.ConformanceLevel.Auto" />
    ///  。
    ///</param>
    ///<returns>
    ///  在指定的 <see cref="T:System.Xml.XmlReader" />
    ///  对象周围包装的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="reader" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  如果 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象指定的一致性级别与基础读取器一致性级别不一致。
    ///  - 或 -
    ///  基础 <see cref="T:System.Xml.XmlReader" />
    ///  处于 <see cref="F:System.Xml.ReadState.Error" />
    ///  或 <see cref="F:System.Xml.ReadState.Closed" />
    ///  状态。
    ///</exception>
    {class} function Create(reader: DNXmlReader; settings: DNXmlReaderSettings): DNXmlReader; overload;

  end;

  ///<summary>
  ///  表示提供对 XML 数据进行快速、非缓存、只进访问的读取器。
  ///  若要浏览此类型的.NET Framework 源代码，请参阅 Reference Source。
  ///</summary>
  [DNTypeName('System.Xml.XmlReader')]
  DNXmlReader = interface(DDN.mscorlib.DNObject)
  ['{E265CBE9-7445-3F96-8618-DA44B4ECEF45}']
  { getters & setters } 

    function get_Settings: DNXmlReaderSettings;
    function get_NodeType: DNXmlNodeType;
    function get_Name: string;
    function get_LocalName: string;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    function get_HasValue: Boolean;
    function get_Value: string;
    function get_Depth: Int32;
    function get_BaseURI: string;
    function get_IsEmptyElement: Boolean;
    function get_IsDefault: Boolean;
    function get_QuoteChar: Char;
    function get_XmlLang: string;
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_ValueType: DDN.mscorlib.DNType;
    function get_AttributeCount: Int32;
    function get_Item(i: Int32): string; overload;
    function get_Item(name: string): string; overload;
    function get_Item(name: string; namespaceURI: string): string; overload;
    function get_EOF: Boolean;
    function get_NameTable: DNXmlNameTable;
    function get_CanResolveEntity: Boolean;
    function get_CanReadBinaryContent: Boolean;
    function get_CanReadValueChunk: Boolean;
    function get_HasAttributes: Boolean;

  { methods } 

    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///<returns>
    ///  作为最适当的公共语言运行时 (CLR) 对象的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsObject: DDN.mscorlib.DNObject;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see langword="Boolean" />
    ///  。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsBoolean: Boolean;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDateTime: DDN.mscorlib.DNDateTime;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.DateTimeOffset" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.DateTimeOffset" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDateTimeOffset: DDN.mscorlib.DNDateTimeOffset;
    ///<summary>
    ///  将当前位置的文本内容作为双精度浮点数读取。
    ///</summary>
    ///<returns>
    ///  作为双精度浮点数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDouble: Double;
    ///<summary>
    ///  将当前位置的文本内容作为单精度浮点数读取。
    ///</summary>
    ///<returns>
    ///  作为单精度浮点数的当前位置的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsFloat: Single;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  作为将当前位置的文本内容 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDecimal: DDN.mscorlib.DNDecimal;
    ///<summary>
    ///  将当前位置的文本内容作为 32 位有符号整数读取。
    ///</summary>
    ///<returns>
    ///  作为 32 位有符号整数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsInt: Int32;
    ///<summary>
    ///  将当前位置的文本内容作为 64 位有符号整数读取。
    ///</summary>
    ///<returns>
    ///  作为 64 位有符号整数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsLong: Int64;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsString: string;
    ///<summary>
    ///  将内容作为指定类型的对象读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///  例如，将 <see cref="T:System.Xml.XmlQualifiedName" />
    ///  对象转换为 xs:string 时可以使用此对象。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  已转换为请求类型的串联文本内容或属性值。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  内容不在的正确格式为目标类型。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="returnType" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是受支持的节点类型。
    ///  请参阅下的表以了解详细信息。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  一个最适当类型的装箱的公共语言运行时 (CLR) 对象。
    ///<see cref="P:System.Xml.XmlReader.ValueType" />
    ///  属性确定适合的 CLR 类型。
    ///  如果将内容类型化为列表类型，则此方法返回一个适当类型的装箱对象的数组。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsObject(localName: string; namespaceURI: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBoolean(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDateTime(localName: string; namespaceURI: string): DDN.mscorlib.DNDateTime; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为双精度浮点数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为双精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDouble(localName: string; namespaceURI: string): Double; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为单精度浮点数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为单精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为单精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsFloat(localName: string; namespaceURI: string): Single; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Decimal" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDecimal(localName: string; namespaceURI: string): DDN.mscorlib.DNDecimal; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为 32 位有符号整数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为 32 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 32 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsInt(localName: string; namespaceURI: string): Int32; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为 64 位有符号整数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为 64 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 64 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsLong(localName: string; namespaceURI: string): Int64; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.String" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsString(localName: string; namespaceURI: string): string; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后将元素内容作为请求类型读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  转换为请求类型的对象的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver; localName: string; namespaceURI: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  当在派生类中被重写时，移动到具有指定索引的属性。
    ///</summary>
    ///  <param name="i">
    ///  属性的索引。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  参数具有值为负。
    ///</exception>
    procedure MoveToAttribute(i: Int32); overload;
    ///<summary>
    ///  当在派生类中重写，将更改 <see cref="P:System.Xml.XmlReader.ReadState" />
    ///  到 <see cref="F:System.Xml.ReadState.Closed" />
    ///  。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Close;
    ///<summary>
    ///  跳过当前节点的子级。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Skip;
    ///<summary>
    ///  读取嵌入在 XML 文档中的大量文本流。
    ///</summary>
    ///  <param name="buffer">
    ///  作为文本内容写入到的缓冲区的字符数组。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移量位置 <see cref="T:System.Xml.XmlReader" />
    ///  可以开始将结果复制。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区中的最大字符数。
    ///  此方法返回复制的实际字符数。
    ///</param>
    ///<returns>
    ///  读取到缓冲区中的字符数。
    ///  如果不再有文本内容，则返回值零。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点不具有值 (<see cref="P:System.Xml.XmlReader.HasValue" />
    ///  是 <see langword="false" />
    ///  )。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  到缓冲区中的索引或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 数据格式不正确。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadValueChunk(buffer: TArray<Char>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  当在派生类中被重写时，将元素或文本节点的内容当做字符串读取。
    ///  但是，我们建议你使用 <see cref="Overload:System.Xml.XmlReader.ReadElementContentAsString" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///<returns>
    ///  元素的内容或空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadString: string;
    ///<summary>
    ///  检查当前节点是否为内容 (非空白文本、 <see langword="CDATA" />
    ///  , ，<see langword="Element" />
    ///  , ，<see langword="EndElement" />
    ///  , ，<see langword="EntityReference" />
    ///  , ，或 <see langword="EndEntity" />
    ///  ) 节点。
    ///  如果此节点不是内容节点，则读取器向前跳至下一个内容节点或文件结尾。
    ///  它跳过以下类型的节点：<see langword="ProcessingInstruction" />
    ///  、<see langword="DocumentType" />
    ///  、<see langword="Comment" />
    ///  、<see langword="Whitespace" />
    ///  或 <see langword="SignificantWhitespace" />
    ///  。
    ///</summary>
    ///<returns><see cref="P:System.Xml.XmlReader.NodeType" />
    ///  方法找到的当前节点或 <see langword="XmlNodeType.None" />
    ///  如果读取器已到达输入流的末尾。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function MoveToContent: DNXmlNodeType;
    ///<summary>
    ///  检查当前节点是否为元素并将读取器推进到下一个节点。
    ///</summary>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement; overload;
    ///<summary>
    ///  检查当前内容节点是元素与给定 <see cref="P:System.Xml.XmlReader.Name" />
    ///  并将读取器推进到下一个节点。
    ///</summary>
    ///  <param name="name">
    ///  元素的限定名。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///  - 或 -
    ///<see cref="P:System.Xml.XmlReader.Name" />
    ///  不匹配的元素的给定 <paramref name="name" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement(name: string); overload;
    ///<summary>
    ///  检查 <see cref="P:System.Xml.XmlReader.Name" />
    ///  属性找到的元素与给定的字符串匹配在读取纯文本元素之前。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///  <param name="name">
    ///  要检查的名称。
    ///</param>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  如果不是开始标记; 下一个内容节点。如果该元素 <see langword="Name" />
    ///  与给定的参数; 不匹配，或者如果找到该元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString(name: string): string; overload;
    ///<summary>
    ///  检查当前内容节点是否为结束标记并将读取器推进到下一个节点。
    ///</summary>
    ///<exception cref="T:System.Xml.XmlException">
    ///  当前节点不是一个结束标记或输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadEndElement;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  找到开始标记还是空元素标记; <see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement: Boolean; overload;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记，以及如果 <see cref="P:System.Xml.XmlReader.Name" />
    ///  属性找到的元素与给定的参数匹配。
    ///</summary>
    ///  <param name="name">
    ///  匹配的字符串 <see langword="Name" />
    ///  找到的元素的属性。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果生成的节点是元素与 <see langword="Name" />
    ///  属性与指定的字符串匹配。
    ///<see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找或者，如果该元素 <see langword="Name" />
    ///  属性与指定的字符串不匹配。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement(name: string): Boolean; overload;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记，以及如果 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  属性找到的元素与给定的字符串匹配。
    ///</summary>
    ///  <param name="localname">
    ///  要匹配的字符串 <see langword="LocalName" />
    ///  找到的元素的属性。
    ///</param>
    ///  <param name="ns">
    ///  要匹配的字符串 <see langword="NamespaceURI" />
    ///  找到的元素的属性。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果生成的节点是一个元素。
    ///<see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找或者，如果 <see langword="LocalName" />
    ///  和 <see langword="NamespaceURI" />
    ///  元素的属性与指定的字符串不匹配。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement(localname: string; ns: string): Boolean; overload;
    ///<summary>
    ///  一直读取，直到找到具有指定限定名的元素。
    ///</summary>
    ///  <param name="name">
    ///  元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的元素;否则为 <see langword="false" />
    ///  和 <see cref="T:System.Xml.XmlReader" />
    ///  处于的文件结束状态。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToFollowing(name: string): Boolean; overload;
    ///<summary>
    ///  一直读取，直到找到具有指定的本地名称和命名空间 URI 的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的元素;否则为 <see langword="false" />
    ///  和 <see cref="T:System.Xml.XmlReader" />
    ///  处于的文件结束状态。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  这两个参数的值为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToFollowing(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  前移 <see cref="T:System.Xml.XmlReader" />
    ///  到下一个具有指定限定名的子代元素。
    ///</summary>
    ///  <param name="name">
    ///  要移动到的元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的子代元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的子元素， <see cref="T:System.Xml.XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的元素。
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上时 <see cref="M:System.Xml.XmlReader.ReadToDescendant(System.String)" />
    ///  调用，此方法返回 <see langword="false" />
    ///  和位置的 <see cref="T:System.Xml.XmlReader" />
    ///  未发生更改时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToDescendant(name: string): Boolean; overload;
    ///<summary>
    ///  前移 <see cref="T:System.Xml.XmlReader" />
    ///  到下一个具有指定的本地名称和命名空间 URI 的子代元素。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  要移动到的元素的命名空间 URI。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的子代元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的子元素， <see cref="T:System.Xml.XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的元素。
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上时 <see cref="M:System.Xml.XmlReader.ReadToDescendant(System.String,System.String)" />
    ///  调用，此方法返回 <see langword="false" />
    ///  和位置的 <see cref="T:System.Xml.XmlReader" />
    ///  未发生更改时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  这两个参数的值为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToDescendant(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  前移 <see langword="XmlReader" />
    ///  到下一个具有指定限定名的同级元素。
    ///</summary>
    ///  <param name="name">
    ///  要移动到的同级元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的同级元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的同级元素， <see langword="XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的父元素。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToNextSibling(name: string): Boolean; overload;
    ///<summary>
    ///  将 <see langword="XmlReader" />
    ///  推进到具有指定的本地名称和命名空间 URI 的下一个同级元素。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的同级元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  你希望移动到的同级元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果找到匹配的同级元素，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果没有找到匹配的同级元素，<see langword="XmlReader" />
    ///  会定位在父元素的结束标记（<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  为 <see langword="XmlNodeType.EndElement" />
    ///  ）上。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在上一次异步操作完成之前调用了 <see cref="T:System.Xml.XmlReader" />
    ///  方法。
    ///  在此情况下，将引发 <see cref="T:System.InvalidOperationException" />
    ///  并显示消息“异步操作已在进行中”。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  两个参数值均为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToNextSibling(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  当在派生类中被重写时，将所有内容（包括标记）当做字符串读取。
    ///</summary>
    ///<returns>
    ///  当前节点中的所有 XML 内容（包括标记）。
    ///  如果当前节点没有任何子级，则返回空字符串。
    ///  如果当前节点既非元素，也非属性，则返回空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 不正确，或者分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadInnerXml: string;
    ///<summary>
    ///  当在派生类中被重写时，读取表示该节点和所有它的子级的内容（包括标记）。
    ///</summary>
    ///<returns>
    ///  如果读取器定位在元素或属性节点上，此方法将返回当前节点及其所有子级的所有 XML 内容（包括标记）；否则返回空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 不正确，或者分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadOuterXml: string;
    ///<summary>
    ///  返回一个新 <see langword="XmlReader" />
    ///  能用于读取当前节点及其所有子代的实例。
    ///</summary>
    ///<returns>
    ///  新的 XML 读取器实例设置为 <see cref="F:System.Xml.ReadState.Initial" />
    ///  。
    ///  调用 <see cref="M:System.Xml.XmlReader.Read" />
    ///  方法将新的读取器定位在调用之前的当前节点上 <see cref="M:System.Xml.XmlReader.ReadSubtree" />
    ///  方法。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  调用此方法时，XML 读取器未定位在元素上。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadSubtree: DNXmlReader;
    ///<summary>
    ///  释放 <see cref="T:System.Xml.XmlReader" />
    ///  类的当前实例所使用的所有资源。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Dispose;
    ///<summary>
    ///  异步跳过当前节点的子级。
    ///</summary>
    ///<returns>
    ///  当前节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlReaderSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlReaderSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function SkipAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个最适当类型的装箱的公共语言运行时 (CLR) 对象。
    ///<see cref="P:System.Xml.XmlReader.ValueType" />
    ///  属性确定适合的 CLR 类型。
    ///  如果将内容类型化为列表类型，则此方法返回一个适当类型的装箱对象的数组。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能为请求的类型转换的元素内容
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsObject: DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBoolean: Boolean; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDateTime: DDN.mscorlib.DNDateTime; overload;
    ///<summary>
    ///  读取当前元素并将内容作为双精度浮点数返回。
    ///</summary>
    ///<returns>
    ///  作为双精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为双精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDouble: Double; overload;
    ///<summary>
    ///  读取当前元素并将内容作为单精度浮点数返回。
    ///</summary>
    ///<returns>
    ///  作为单精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为单精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsFloat: Single; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Decimal" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDecimal: DDN.mscorlib.DNDecimal; overload;
    ///<summary>
    ///  读取当前元素并将内容作为 32 位有符号整数返回。
    ///</summary>
    ///<returns>
    ///  作为 32 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 32 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsInt: Int32; overload;
    ///<summary>
    ///  读取当前元素并将内容作为 64 位有符号整数返回。
    ///</summary>
    ///<returns>
    ///  作为 64 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 64 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsLong: Int64; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.String" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsString: string; overload;
    ///<summary>
    ///  将元素内容作为请求类型读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///</param>
    ///<returns>
    ///  转换为请求类型的对象的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  当在派生类中重写时获取具有指定属性的值 <see cref="P:System.Xml.XmlReader.Name" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  属性的限定名称。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果找不到属性或值为 <see langword="String.Empty" />
    ///  , ，<see langword="null" />
    ///  返回。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="name" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function GetAttribute(name: string): string; overload;
    ///<summary>
    ///  当在派生类中重写时获取具有指定属性的值 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果找不到属性或值为 <see langword="String.Empty" />
    ///  , ，<see langword="null" />
    ///  返回。
    ///  此方法不移动读取器。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="name" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function GetAttribute(name: string; namespaceURI: string): string; overload;
    ///<summary>
    ///  当在派生类中被重写时，获取具有指定索引的属性的值。
    ///</summary>
    ///  <param name="i">
    ///  属性的索引。
    ///  索引是从零开始的。
    ///  （第一个属性的索引为 0。）
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  此方法不移动读取器。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="i" />
    ///  超出范围。
    ///  它必须是非负数且小于属性集合的大小。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function GetAttribute(i: Int32): string; overload;
    ///<summary>
    ///  当在派生类中重写，将移动到具有指定的属性 <see cref="P:System.Xml.XmlReader.Name" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  属性的限定名称。
    ///</param>
    ///<returns>
    ///  如果找到了属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则读取器的位置未改变。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function MoveToAttribute(name: string): Boolean; overload;
    ///<summary>
    ///  当在派生类中重写，将移动到具有指定的属性 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果找到了属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则读取器的位置未改变。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  这两个参数的值为 <see langword="null" />
    ///  。
    ///</exception>
    function MoveToAttribute(name: string; ns: string): Boolean; overload;
    ///<summary>
    ///  当在派生类中被重写时，移动到第一个属性。
    ///</summary>
    ///<returns>
    ///  如果属性存在（读取器移动到第一个属性），则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  （读取器的位置不更改）。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function MoveToFirstAttribute: Boolean;
    ///<summary>
    ///  当在派生类中被重写时，移动到下一个属性。
    ///</summary>
    ///<returns>
    ///  如果存在下一个属性，则为 <see langword="true" />
    ///  ；如果没有其他属性，则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function MoveToNextAttribute: Boolean;
    ///<summary>
    ///  当在派生类中被重写时，移动到包含当前属性节点的元素。
    ///</summary>
    ///<returns>
    ///  如果读取器定位在属性上（读取器移动到拥有该属性的元素），则为 <see langword="true" />
    ///  ；如果读取器未定位在属性上（读取器的位置不更改），则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function MoveToElement: Boolean;
    ///<summary>
    ///  当在派生类中重写，将属性值分析为一个或多个 <see langword="Text" />
    ///  , ，<see langword="EntityReference" />
    ///  , ，或 <see langword="EndEntity" />
    ///  节点。
    ///</summary>
    ///<returns>
    ///  如果有可返回的节点，则为 <see langword="true" />
    ///  。
    ///  如果进行初始调用时读取器不是定位在属性节点上，或者如果已读取了所有属性值，则为 <see langword="false" />
    ///  。
    ///  如果是空属性（如 misc=""），则返回 <see langword="true" />
    ///  ，同时返回值为 <see langword="String.Empty" />
    ///  的单个节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadAttributeValue: Boolean;
    ///<summary>
    ///  当在派生类中被重写时，从流中读取下一个节点。
    ///</summary>
    ///<returns>
    ///  如果已成功读取下一节点，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  在上一次异步操作完成之前调用了 <see cref="T:System.Xml.XmlReader" />
    ///  方法。
    ///  在此情况下，将引发 <see cref="T:System.InvalidOperationException" />
    ///  并显示消息“异步操作已在进行中”。
    ///</exception>
    function Read: Boolean;
    ///<summary>
    ///  当在派生类中被重写时，在当前元素的范围内解析命名空间前缀。
    ///</summary>
    ///  <param name="prefix">
    ///  要解析其命名空间 URI 的前缀。
    ///  若要匹配默认命名空间，请传递一个空字符串。
    ///</param>
    ///<returns>
    ///  前缀映射到的命名空间 URI；如果未找到任何匹配的前缀，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function LookupNamespace(prefix: string): string;
    ///<summary>
    ///  当在派生类中重写时解析的实体引用 <see langword="EntityReference" />
    ///  节点。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  读取器未定位在 <see langword="EntityReference" />
    ///  节点; 此读取器的实现无法解析实体 (<see cref="P:System.Xml.XmlReader.CanResolveEntity" />
    ///  返回 <see langword="false" />
    ///  )。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ResolveEntity;
    ///<summary>
    ///  读取内容并返回 Base64 解码的二进制字节。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="M:System.Xml.XmlReader.ReadContentAsBase64(System.Byte[],System.Int32,System.Int32)" />
    ///  不支持的当前节点上。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsBase64(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取元素并对 <see langword="Base64" />
    ///  内容进行解码。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是元素节点。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  该元素包含混合内容。
    ///</exception><exception cref="T:System.FormatException">
    ///  无法将内容转换为请求的类型。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBase64(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取内容并返回 <see langword="BinHex" />
    ///  解码的二进制字节。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="M:System.Xml.XmlReader.ReadContentAsBinHex(System.Byte[],System.Int32,System.Int32)" />
    ///  不支持的当前节点上。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsBinHex(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取元素并对 <see langword="BinHex" />
    ///  内容进行解码。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是元素节点。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  该元素包含混合内容。
    ///</exception><exception cref="T:System.FormatException">
    ///  无法将内容转换为请求的类型。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBinHex(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  检查当前内容节点是元素与给定 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  并将读取器推进到下一个节点。
    ///</summary>
    ///  <param name="localname">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  元素的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///  - 或 -
    ///<see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  属性找到的元素与给定的参数不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement(localname: string; ns: string); overload;
    ///<summary>
    ///  读取纯文本元素。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  不是开始标记; 下一个内容节点。或找到的元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString: string; overload;
    ///<summary>
    ///  检查 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  找到与给定的字符串匹配在读取纯文本元素之前的元素的属性。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString(System.String,System.String)" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///  <param name="localname">
    ///  要检查的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  要检查的命名空间 URI。
    ///</param>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  如果不是开始标记; 下一个内容节点。如果该元素 <see langword="LocalName" />
    ///  或 <see langword="NamespaceURI" />
    ///  不匹配给定的参数; 或者如果找到该元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString(localname: string; ns: string): string; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于创建此 <see cref="T:System.Xml.XmlReader" />
    ///  实例的 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象，用于创建此读取器实例。
    ///  如果此读取器不使用创建 <see cref="Overload:System.Xml.XmlReader.Create" />
    ///  方法，则此属性返回 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Settings: DNXmlReaderSettings read get_Settings;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的类型。
    ///</summary>
    ///<returns>
    ///  指定当前节点的类型的枚举值之一。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的限定名。
    ///</summary>
    ///<returns>
    ///  当前节点的限定名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="Name" />
    ///  为 <see langword="bk:book" />
    ///  。
    ///  返回的名称取决于节点的 <see cref="P:System.Xml.XmlReader.NodeType" />
    ///  。
    ///  下列节点类型返回所列的值。
    ///  所有其他节点类型返回空字符串。
    ///  节点类型
    ///  名称
    ///<see langword="Attribute" />
    ///  属性名。
    ///<see langword="DocumentType" />
    ///  文档类型名称。
    ///<see langword="Element" />
    ///  标记名称。
    ///<see langword="EntityReference" />
    ///  引用的实体的名称。
    ///<see langword="ProcessingInstruction" />
    ///  处理指令的目标。
    ///<see langword="XmlDeclaration" />
    ///  文字字符串 <see langword="xml" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Name: string read get_Name;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的本地名称。
    ///</summary>
    ///<returns>
    ///  移除了前缀的当前节点的名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="LocalName" />
    ///  为 <see langword="book" />
    ///  。
    ///  对于没有名称的节点类型（如 <see langword="Text" />
    ///  、<see langword="Comment" />
    ///  等），该属性返回 <see langword="String.Empty" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  当在派生类中被重写时，获取读取器定位在其上的节点的命名空间 URI（采用 W3C 命名空间规范中定义的形式）。
    ///</summary>
    ///<returns>
    ///  当前节点的命名空间 URI；否则为空字符串。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  当在派生类中被重写时，获取与当前节点关联的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  与当前节点关联的命名空间前缀。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Prefix: string read get_Prefix;
    ///<summary>
    ///  当在派生类中重写，获取一个值，该值指示当前节点是否可以具有 <see cref="P:System.Xml.XmlReader.Value" />
    ///  。
    ///</summary>
    ///<returns>
    ///  如果读取器当前定位在的节点可以具有 <see langword="Value" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  , ，该节点具有值为 <see langword="String.Empty" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property HasValue: Boolean read get_HasValue;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的文本值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于节点的 <see cref="P:System.Xml.XmlReader.NodeType" />
    ///  。
    ///  下表列出具有要返回的值的节点类型。
    ///  所有其他节点类型返回 <see langword="String.Empty" />
    ///  。
    ///  节点类型
    ///  值
    ///<see langword="Attribute" />
    ///  属性的值。
    ///<see langword="CDATA" />
    ///  CDATA 节的内容。
    ///<see langword="Comment" />
    ///  注释的内容。
    ///<see langword="DocumentType" />
    ///  内部子集。
    ///<see langword="ProcessingInstruction" />
    ///  全部内容（不包括指令目标）。
    ///<see langword="SignificantWhitespace" />
    ///  混合内容模型中标记之间的空白区域。
    ///<see langword="Text" />
    ///  文本节点的内容。
    ///<see langword="Whitespace" />
    ///  标记之间的空白。
    ///<see langword="XmlDeclaration" />
    ///  声明的内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Value: string read get_Value;
    ///<summary>
    ///  当在派生类中被重写时，获取 XML 文档中当前节点的深度。
    ///</summary>
    ///<returns>
    ///  XML 文档中当前节点的深度。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Depth: Int32 read get_Depth;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  当前节点的基 URI。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  当在派生类中重写，获取一个值，该值指示当前节点是否为空元素 (例如， &lt;MyElement/&gt;)。
    ///</summary>
    ///<returns>
    ///  如果当前节点是一个以 /&gt; 结尾的元素（<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  等于 <see langword="XmlNodeType.Element" />
    ///  ），则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property IsEmptyElement: Boolean read get_IsEmptyElement;
    ///<summary>
    ///  当在派生类中被重写时，获取一个值，该值指示当前节点是否是从 DTD 或架构中定义的默认值生成的特性。
    ///</summary>
    ///<returns>
    ///  如果当前节点是其值从 DTD 或架构中定义的默认值生成的属性，则为 <see langword="true" />
    ///  ；如果属性值为显式设置的，则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property IsDefault: Boolean read get_IsDefault;
    ///<summary>
    ///  当在派生类中被重写时，获取用于括住特性节点值的引号字符。
    ///</summary>
    ///<returns>
    ///  用于括起属性节点的值的引号字符（" 或 '）。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property QuoteChar: Char read get_QuoteChar;
    ///<summary>
    ///  当在派生类中重写，获取当前 <see langword="xml:lang" />
    ///  作用域。
    ///</summary>
    ///<returns>
    ///  当前 <see langword="xml:lang" />
    ///  范围。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property XmlLang: string read get_XmlLang;
    ///<summary>
    ///  获取作为架构验证结果分配给当前节点的架构信息。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，它包含当前节点的架构信息。
    ///  架构信息可以对元素、 属性或具有非空文本节点上设置 <see cref="P:System.Xml.XmlReader.ValueType" />
    ///  （类型化值）。
    ///  如果当前节点不属于上述节点类型，或者如果 <see langword="XmlReader" />
    ///  实例不会报告架构信息，则此属性返回 <see langword="null" />
    ///  。
    ///  如果是通过调用此属性 <see cref="T:System.Xml.XmlTextReader" />
    ///  或 <see cref="T:System.Xml.XmlValidatingReader" />
    ///  对象，则此属性始终返回 <see langword="null" />
    ///  。
    ///  这些 <see langword="XmlReader" />
    ///  实现不公开架构信息通过 <see langword="SchemaInfo" />
    ///  属性。
    ///  如果必须为某个元素获取架构验证后信息集 (PSVI)，请在此元素的结束标记处（而不是在开始标记处）放置读取器。
    ///  获取 PSVI <see langword="SchemaInfo" />
    ///  读取器的属性。
    ///  通过创建的验证读取器 <see cref="Overload:System.Xml.XmlReader.Create" />
    ///  与 <see cref="P:System.Xml.XmlReaderSettings.ValidationType" />
    ///  属性设置为 <see cref="F:System.Xml.ValidationType.Schema" />
    ///  具有完整的 PSVI 的元素仅在读取器定位在元素的结束标记上时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取当前节点的公共语言运行时 (CLR) 类型。
    ///</summary>
    ///<returns>
    ///  与节点的类型化值对应的 CLR 类型。
    ///  默认值为 <see langword="System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property ValueType: DDN.mscorlib.DNType read get_ValueType;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点上的属性数。
    ///</summary>
    ///<returns>
    ///  当前节点上的属性数目。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property AttributeCount: Int32 read get_AttributeCount;
    property Item[i: Int32]: string read get_Item; default;
    property Item[name: string]: string read get_Item; default;
    property Item[name: string; namespaceURI: string]: string read get_Item; default;
    ///<summary>
    ///  当在派生类中被重写时，获取一个值，该值指示此读取器是否定位在流的结尾。
    ///</summary>
    ///<returns>
    ///  如果此读取器定位在流的结尾，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property EOF: Boolean read get_EOF;
    ///<summary>
    ///  当在派生类中重写时获取 <see cref="T:System.Xml.XmlNameTable" />
    ///  与此实现关联。
    ///</summary>
    ///<returns><see langword="XmlNameTable" />
    ///  ，它使你能够获取该节点内字符串的原子化版本。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  获取一个值，该值指示此读取器是否可以分析和解析实体。
    ///</summary>
    ///<returns>
    ///  如果此读取器可以分析和解析实体，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property CanResolveEntity: Boolean read get_CanResolveEntity;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Xml.XmlReader" />
    ///  是否实现二进制内容读取方法。
    ///</summary>
    ///<returns>
    ///  如果实现了二进制内容读取方法，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property CanReadBinaryContent: Boolean read get_CanReadBinaryContent;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Xml.XmlReader" />
    ///  是否实现 <see cref="M:System.Xml.XmlReader.ReadValueChunk(System.Char[],System.Int32,System.Int32)" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  实现 <see cref="M:System.Xml.XmlReader.ReadValueChunk(System.Char[],System.Int32,System.Int32)" />
    ///  方法，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property CanReadValueChunk: Boolean read get_CanReadValueChunk;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否有任何属性。
    ///</summary>
    ///<returns>
    ///  如果当前节点具有属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property HasAttributes: Boolean read get_HasAttributes;
  end;

  TDNXmlReader = class(TDNGenericImport<DNXmlReaderClass, DNXmlReader>) end;

  //-------------namespace: System.Xml----------------
  DNXmlTextReaderClass = interface(DNXmlReaderClass)
  ['{9248CA7D-8AA7-55A3-AB75-E3083B9C90D6}']
  { static getter & setter } 

    procedure set_XmlResolver(value: DNXmlResolver);

  { constructors } 

    ///<summary>
    ///  使用指定的流初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的流。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(input: DDN.mscorlib.DNStream): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 URL 和流初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  用于解析外部资源的 URL。
    ///<see cref="P:System.Xml.XmlTextReader.BaseURI" />
    ///  设置为此值。
    ///</param>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的流。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(url: string; input: DDN.mscorlib.DNStream): DNXmlTextReader; overload;
    ///<summary>
    ///  用指定的流和 <see cref="T:System.Xml.XmlNameTable" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的流。
    ///</param>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NullReferenceException"><paramref name="input" />
    ///  或 <paramref name="nt" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(input: DDN.mscorlib.DNStream; nt: DNXmlNameTable): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 URL、流和 <see cref="T:System.Xml.XmlNameTable" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  用于解析外部资源的 URL。
    ///<see cref="P:System.Xml.XmlTextReader.BaseURI" />
    ///  设置为此值。
    ///  如果 <paramref name="url" />
    ///  为 <see langword="null" />
    ///  ，则 <see langword="BaseURI" />
    ///  设置为 <see langword="String.Empty" />
    ///  。
    ///</param>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的流。
    ///</param>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NullReferenceException"><paramref name="input" />
    ///  或 <paramref name="nt" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(url: string; input: DDN.mscorlib.DNStream; nt: DNXmlNameTable): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlTextReader" />
    ///  初始化 <see cref="T:System.IO.TextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的 <see langword="TextReader" />
    ///  。
    ///</param>
    {class} function init(input: DDN.mscorlib.DNTextReader): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 URL 和 <see cref="T:System.IO.TextReader" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  用于解析外部资源的 URL。
    ///<see cref="P:System.Xml.XmlTextReader.BaseURI" />
    ///  设置为此值。
    ///</param>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的 <see langword="TextReader" />
    ///  。
    ///</param>
    {class} function init(url: string; input: DDN.mscorlib.DNTextReader): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlTextReader" />
    ///  和 <see cref="T:System.IO.TextReader" />
    ///  初始化 <see cref="T:System.Xml.XmlNameTable" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的 <see langword="TextReader" />
    ///  。
    ///</param>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NullReferenceException"><paramref name="nt" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(input: DDN.mscorlib.DNTextReader; nt: DNXmlNameTable): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的 URL、<see cref="T:System.IO.TextReader" />
    ///  和 <see cref="T:System.Xml.XmlNameTable" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  用于解析外部资源的 URL。
    ///<see cref="P:System.Xml.XmlTextReader.BaseURI" />
    ///  设置为此值。
    ///  如果 <paramref name="url" />
    ///  为 <see langword="null" />
    ///  ，则 <see langword="BaseURI" />
    ///  设置为 <see langword="String.Empty" />
    ///  。
    ///</param>
    ///  <param name="input">
    ///  包含要读取的 XML 数据的 <see langword="TextReader" />
    ///  。
    ///</param>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="nt" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(url: string; input: DDN.mscorlib.DNTextReader; nt: DNXmlNameTable): DNXmlTextReader; overload;
    ///<summary>
    ///  用指定的流、<see cref="T:System.Xml.XmlNodeType" />
    ///  和 <see cref="T:System.Xml.XmlParserContext" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="xmlFragment">
    ///  包含要分析的 XML 片段的流。
    ///</param>
    ///  <param name="fragType">
    ///  XML 片段的 <see cref="T:System.Xml.XmlNodeType" />
    ///  。
    ///  这也确定了片段可以包含的内容。
    ///  （请参见下表。）
    ///</param>
    ///  <param name="context">
    ///  分析 <paramref name="xmlFragment" />
    ///  所用的 <see cref="T:System.Xml.XmlParserContext" />
    ///  。
    ///  这包括要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  、编码方式、命名空间范围、当前 xml:lang 和 xml:space 范围。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException"><paramref name="fragType" />
    ///  不是元素、 特性或文档 <see langword="XmlNodeType" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="xmlFragment" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(xmlFragment: DDN.mscorlib.DNStream; fragType: DNXmlNodeType; context: DNXmlParserContext): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的字符串、<see cref="T:System.Xml.XmlNodeType" />
    ///  和 <see cref="T:System.Xml.XmlParserContext" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="xmlFragment">
    ///  包含要分析的 XML 片段的字符串。
    ///</param>
    ///  <param name="fragType">
    ///  XML 片段的 <see cref="T:System.Xml.XmlNodeType" />
    ///  。
    ///  这也确定了片段字符串可以包含的内容。
    ///  （请参见下表。）
    ///</param>
    ///  <param name="context">
    ///  分析 <paramref name="xmlFragment" />
    ///  所用的 <see cref="T:System.Xml.XmlParserContext" />
    ///  。
    ///  这包括要使用的 <see cref="T:System.Xml.XmlNameTable" />
    ///  、编码方式、命名空间范围、当前 xml:lang 和 xml:space 范围。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException"><paramref name="fragType" />
    ///  不是 <see langword="Element" />
    ///  , ，<see langword="Attribute" />
    ///  , ，或 <see langword="Document" />
    ///<see langword="XmlNodeType" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="xmlFragment" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(xmlFragment: string; fragType: DNXmlNodeType; context: DNXmlParserContext): DNXmlTextReader; overload;
    ///<summary>
    ///  用指定的文件初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  包含 XML 数据的文件的 URL。
    ///<see cref="P:System.Xml.XmlTextReader.BaseURI" />
    ///  设置为此值。
    ///</param>
    ///<exception cref="T:System.IO.FileNotFoundException">
    ///  找不到指定的文件。
    ///</exception><exception cref="T:System.IO.DirectoryNotFoundException">
    ///  找不到的文件名或目录的一部分。
    ///</exception><exception cref="T:System.InvalidOperationException"><paramref name="url" />
    ///  是一个空字符串。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  无法解析远程文件名。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception><exception cref="T:System.UriFormatException"><paramref name="url" />
    ///  不是有效的 URI。
    ///</exception>
    {class} function init(url: string): DNXmlTextReader; overload;
    ///<summary>
    ///  使用指定的文件和 <see cref="T:System.Xml.XmlNameTable" />
    ///  初始化 <see cref="T:System.Xml.XmlTextReader" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="url">
    ///  包含要读取的 XML 数据的文件的 URL。
    ///</param>
    ///  <param name="nt">
    ///  要使用的 <see langword="XmlNameTable" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NullReferenceException"><paramref name="nt" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  找不到指定的文件。
    ///</exception><exception cref="T:System.IO.DirectoryNotFoundException">
    ///  找不到的文件名或目录的一部分。
    ///</exception><exception cref="T:System.InvalidOperationException"><paramref name="url" />
    ///  是一个空字符串。
    ///</exception><exception cref="T:System.Net.WebException">
    ///  无法解析远程文件名。
    ///  - 或 -
    ///  处理请求时出错。
    ///</exception><exception cref="T:System.UriFormatException"><paramref name="url" />
    ///  不是有效的 URI。
    ///</exception>
    {class} function init(url: string; nt: DNXmlNameTable): DNXmlTextReader; overload;

  { static propertys } 

    ///<summary>
    ///  设置用于解析 DTD 引用的 <see cref="T:System.Xml.XmlResolver" />
    ///  。
    ///</summary>
    ///<returns>
    ///  要使用的 <see langword="XmlResolver" />
    ///  。
    ///  如果设置为 <see langword="null" />
    ///  ，则不解析外部资源。
    ///  在 .NET Framework 的 1.1 版中，调用方必须完全受到信任，才能指定 <see langword="XmlResolver" />
    ///  。
    ///</returns>
    {class} property XmlResolver: DNXmlResolver write set_XmlResolver;
  end;

  ///<summary>
  ///  表示提供对 XML 数据进行快速、非缓存、只进访问的读取器。
  ///  从 .NET Framework 2.0 开始，建议改用 <see cref="T:System.Xml.XmlReader" />
  ///  类。
  ///</summary>
  [DNTypeName('System.Xml.XmlTextReader')]
  DNXmlTextReader = interface(DNXmlReader)
  ['{9C42EB13-F238-3F97-81B9-9C1B73D5A449}']
  { getters & setters } 

    function get_NodeType: DNXmlNodeType;
    function get_Name: string;
    function get_LocalName: string;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    function get_HasValue: Boolean;
    function get_Value: string;
    function get_Depth: Int32;
    function get_BaseURI: string;
    function get_IsEmptyElement: Boolean;
    function get_IsDefault: Boolean;
    function get_QuoteChar: Char;
    function get_XmlLang: string;
    function get_AttributeCount: Int32;
    function get_EOF: Boolean;
    function get_NameTable: DNXmlNameTable;
    function get_CanResolveEntity: Boolean;
    function get_CanReadBinaryContent: Boolean;
    function get_CanReadValueChunk: Boolean;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
    function get_Namespaces: Boolean;
    procedure set_Namespaces(value: Boolean);
    function get_Normalization: Boolean;
    procedure set_Normalization(value: Boolean);
    function get_Encoding: DDN.mscorlib.DNEncoding;
    function get_WhitespaceHandling: DNWhitespaceHandling;
    procedure set_WhitespaceHandling(value: DNWhitespaceHandling);
    function get_ProhibitDtd: Boolean;
    procedure set_ProhibitDtd(value: Boolean);
    function get_DtdProcessing: DNDtdProcessing;
    procedure set_DtdProcessing(value: DNDtdProcessing);
    function get_EntityHandling: DNEntityHandling;
    procedure set_EntityHandling(value: DNEntityHandling);
    procedure set_XmlResolver(value: DNXmlResolver);
    function get_Settings: DNXmlReaderSettings;
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_ValueType: DDN.mscorlib.DNType;
    function get_Item(i: Int32): string; overload;
    function get_Item(name: string): string; overload;
    function get_Item(name: string; namespaceURI: string): string; overload;
    function get_HasAttributes: Boolean;

  { methods } 

    ///<summary>
    ///  获取具有指定名称的属性的值。
    ///</summary>
    ///  <param name="name">
    ///  属性的限定名称。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果未找到该属性，则返回 <see langword="null" />
    ///  。
    ///</returns>
    function GetAttribute(name: string): string; overload;
    ///<summary>
    ///  获取具有指定本地名称和命名空间 URI 的属性的值。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///  如果未找到该属性，则返回 <see langword="null" />
    ///  。
    ///  此方法不移动读取器。
    ///</returns>
    function GetAttribute(localName: string; namespaceURI: string): string; overload;
    ///<summary>
    ///  获取具有指定索引的属性的值。
    ///</summary>
    ///  <param name="i">
    ///  属性的索引。
    ///  索引是从零开始的。
    ///  （第一个属性的索引为 0。）
    ///</param>
    ///<returns>
    ///  指定的属性的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="i" />
    ///  参数是小于 0 或大于或等于 <see cref="P:System.Xml.XmlTextReader.AttributeCount" />
    ///  。
    ///</exception>
    function GetAttribute(i: Int32): string; overload;
    ///<summary>
    ///  移动到具有指定名称的属性。
    ///</summary>
    ///  <param name="name">
    ///  属性的限定名称。
    ///</param>
    ///<returns>
    ///  如果找到了属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则读取器的位置未改变。
    ///</returns>
    function MoveToAttribute(name: string): Boolean; overload;
    ///<summary>
    ///  移动到具有指定本地名称和命名空间 URI 的属性。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果找到了属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则读取器的位置未改变。
    ///</returns>
    function MoveToAttribute(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  移动到具有指定索引的属性。
    ///</summary>
    ///  <param name="i">
    ///  属性的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="i" />
    ///  参数是小于 0 或大于或等于 <see cref="P:System.Xml.XmlReader.AttributeCount" />
    ///  。
    ///</exception>
    procedure MoveToAttribute(i: Int32); overload;
    ///<summary>
    ///  移动到第一个属性。
    ///</summary>
    ///<returns>
    ///  如果属性存在（读取器移动到第一个属性），则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  （读取器的位置不更改）。
    ///</returns>
    function MoveToFirstAttribute: Boolean;
    ///<summary>
    ///  移动到下一个属性。
    ///</summary>
    ///<returns>
    ///  如果存在下一个属性，则为 <see langword="true" />
    ///  ；如果没有其他属性，则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToNextAttribute: Boolean;
    ///<summary>
    ///  移动到包含当前属性节点的元素。
    ///</summary>
    ///<returns>
    ///  如果读取器定位在属性上（读取器移动到拥有该属性的元素），则为 <see langword="true" />
    ///  ；如果读取器未定位在属性上（读取器的位置不更改），则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToElement: Boolean;
    ///<summary>
    ///  将属性值分析为一个或多个 <see langword="Text" />
    ///  、<see langword="EntityReference" />
    ///  或 <see langword="EndEntity" />
    ///  节点。
    ///</summary>
    ///<returns>
    ///  如果有可返回的节点，则为 <see langword="true" />
    ///  。
    ///  如果进行初始调用时读取器不是定位在属性节点上，或者如果已读取了所有属性值，则为 <see langword="false" />
    ///  。
    ///  如果是空属性（如 misc=""），则返回 <see langword="true" />
    ///  ，同时返回值为 <see langword="String.Empty" />
    ///  的单个节点。
    ///</returns>
    function ReadAttributeValue: Boolean;
    ///<summary>
    ///  从流中读取下一个节点。
    ///</summary>
    ///<returns>
    ///  如果成功读取了下一个节点，则为 <see langword="true" />
    ///  ；如果没有其他节点可读取，则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  分析 XML 时出错。
    ///</exception>
    function Read: Boolean;
    ///<summary>
    ///  将 <see cref="P:System.Xml.XmlReader.ReadState" />
    ///  改为 <see langword="Closed" />
    ///  。
    ///</summary>
    procedure Close;
    ///<summary>
    ///  跳过当前节点的子级。
    ///</summary>
    procedure Skip;
    ///<summary>
    ///  解析当前元素的范围内的命名空间前缀。
    ///</summary>
    ///  <param name="prefix">
    ///  要解析其命名空间 URI 的前缀。
    ///  若要匹配默认命名空间，请传递一个空字符串。
    ///  不必原子化该字符串。
    ///</param>
    ///<returns>
    ///  前缀映射到的命名空间 URI；如果未找到任何匹配的前缀，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><see cref="P:System.Xml.XmlTextReader.Namespaces" />
    ///  属性设置为 <see langword="true" />
    ///  和 <paramref name="prefix" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    function LookupNamespace(prefix: string): string;
    ///<summary>
    ///  解析 <see langword="EntityReference" />
    ///  节点的实体引用。
    ///</summary>
    procedure ResolveEntity;
    ///<summary>
    ///  读取内容并返回 <see langword="Base64" />
    ///  解码的二进制字节。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="M:System.Xml.XmlTextReader.ReadContentAsBase64(System.Byte[],System.Int32,System.Int32)" />
    ///  不支持在当前节点中。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception>
    function ReadContentAsBase64(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取元素并对 Base64 内容进行解码。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是元素节点。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlTextReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  该元素包含混合内容。
    ///</exception><exception cref="T:System.FormatException">
    ///  无法将内容转换为请求的类型。
    ///</exception>
    function ReadElementContentAsBase64(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取内容并返回 <see langword="BinHex" />
    ///  解码的二进制字节。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="M:System.Xml.XmlTextReader.ReadContentAsBinHex(System.Byte[],System.Int32,System.Int32)" />
    ///  不支持的当前节点上。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlTextReader" />
    ///  实现不支持此方法。
    ///</exception>
    function ReadContentAsBinHex(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  读取元素并对 <see langword="BinHex" />
    ///  内容进行解码。
    ///</summary>
    ///  <param name="buffer">
    ///  结果文本复制到的缓冲区。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移，从这个位置开始将结果复制到缓冲区中。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区的最大字节数。
    ///  此方法返回复制的实际字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是元素节点。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  索引缓冲区或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  该元素包含混合内容。
    ///</exception><exception cref="T:System.FormatException">
    ///  无法将内容转换为请求的类型。
    ///</exception>
    function ReadElementContentAsBinHex(buffer: TArray<Byte>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  将元素或文本节点的内容读取为一个字符串。
    ///</summary>
    ///<returns>
    ///  该元素或文本节点的内容。
    ///  如果读取器定位在元素或文本节点以外的位置，或者当前上下文中没有其他文本内容可返回，则这可以是空字符串。
    ///<see langword="Note:" />
    ///  文本节点可以是元素或属性文本节点。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  尝试了无效的操作。
    ///</exception>
    function ReadString: string;
    ///<summary>
    ///  获取一个值，该值指示该类是否可返回行信息。
    ///</summary>
    ///<returns>
    ///  如果该类可以返回行信息，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function HasLineInfo: Boolean;
    ///<summary>
    ///  获取一个集合，该集合包含当前在范围内的所有命名空间。
    ///</summary>
    ///  <param name="scope">
    ///  一个 <see cref="T:System.Xml.XmlNamespaceScope" />
    ///  值，指定要返回的命名空间节点的类型。
    ///</param>
    ///<returns>
    ///  一个包含当前在范围内的所有命名空间的 <see cref="T:System.Collections.IDictionary" />
    ///  对象。
    ///  如果读取器未定位在某元素上，则返回空字典（无命名空间）。
    ///</returns>
    function GetNamespacesInScope(scope: DNXmlNamespaceScope): DDN.mscorlib.DNIDictionary<string, string>;
    ///<summary>
    ///  将读取器的状态重置为 ReadState.Initial。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  调用 <see langword="ResetState" />
    ///  如果读取器使用构造 <see cref="T:System.Xml.XmlParserContext" />
    ///  。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  一个流中的文档并共享相同的编码。
    ///</exception>
    procedure ResetState;
    ///<summary>
    ///  获取已缓冲的 XML 的剩余部分。
    ///</summary>
    ///<returns>
    ///  包含已缓冲的 XML 的剩余部分的 <see cref="T:System.IO.TextReader" />
    ///  。
    ///</returns>
    function GetRemainder: DDN.mscorlib.DNTextReader;
    ///<summary>
    ///  将元素的文本内容读入字符缓冲区。
    ///  通过连续调用此方法，可以读取大的嵌入文本的流。
    ///</summary>
    ///  <param name="buffer">
    ///  作为文本内容写入到的缓冲区的字符数组。
    ///</param>
    ///  <param name="index"><paramref name="buffer" />
    ///  中的位置，此方法可以从该位置开始写入文本内容。
    ///</param>
    ///  <param name="count">
    ///  要写入 <paramref name="buffer" />
    ///  的字符数。
    ///</param>
    ///<returns>
    ///  读取的字符数。
    ///  如果读取器未定位在元素上，或如果当前上下文中没有要返回的其他文本内容，则这可以是 <see langword="0" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="count" />
    ///  大于 <paramref name="buffer" />
    ///  中指定的空间（缓冲区大小 - <paramref name="index" />
    ///  ）。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///<see langword="&lt; 0" />
    ///  或 <paramref name="count" />
    ///<see langword="&lt; 0" />
    ///  。
    ///</exception>
    function ReadChars(buffer: TArray<Char>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  对 Base64 进行解码并返回解码的二进制字节。
    ///</summary>
    ///  <param name="array">
    ///  作为文本内容写入到的缓冲区的字符数组。
    ///</param>
    ///  <param name="offset">
    ///  数组中从零开始的索引，指定此方法可以开始写入缓冲区的位置。
    ///</param>
    ///  <param name="len">
    ///  要写入缓冲区的字节数。
    ///</param>
    ///<returns>
    ///  写入缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  Base64 序列无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  的值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="offset" />
    ///  &lt; 0，或 <paramref name="len" />
    ///  &lt; 0，或 <paramref name="len" />
    ///  &gt; <paramref name="array" />
    ///  。长度- <paramref name="offset" />
    ///  。
    ///</exception>
    function ReadBase64(&array: TArray<Byte>; offset: Int32; len: Int32): Int32;
    ///<summary>
    ///  对 <see langword="BinHex" />
    ///  进行解码并返回解码后的二进制字节。
    ///</summary>
    ///  <param name="array">
    ///  作为解码的二进制字节写入到的缓冲区的字节数组。
    ///</param>
    ///  <param name="offset">
    ///  数组中从零开始的索引，指定此方法可以开始写入缓冲区的位置。
    ///</param>
    ///  <param name="len">
    ///  要写入缓冲区的字节数。
    ///</param>
    ///<returns>
    ///  写入你的缓冲区的字节数。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException"><see langword="BinHex" />
    ///  序列无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  的值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="offset" />
    ///  &lt; 0，或 <paramref name="len" />
    ///  &lt; 0，或 <paramref name="len" />
    ///  &gt; <paramref name="array" />
    ///  。长度- <paramref name="offset" />
    ///  。
    ///</exception>
    function ReadBinHex(&array: TArray<Byte>; offset: Int32; len: Int32): Int32;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///<returns>
    ///  作为最适当的公共语言运行时 (CLR) 对象的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsObject: DDN.mscorlib.DNObject;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see langword="Boolean" />
    ///  。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsBoolean: Boolean;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDateTime: DDN.mscorlib.DNDateTime;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.DateTimeOffset" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.DateTimeOffset" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDateTimeOffset: DDN.mscorlib.DNDateTimeOffset;
    ///<summary>
    ///  将当前位置的文本内容作为双精度浮点数读取。
    ///</summary>
    ///<returns>
    ///  作为双精度浮点数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDouble: Double;
    ///<summary>
    ///  将当前位置的文本内容作为单精度浮点数读取。
    ///</summary>
    ///<returns>
    ///  作为单精度浮点数的当前位置的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsFloat: Single;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  作为将当前位置的文本内容 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsDecimal: DDN.mscorlib.DNDecimal;
    ///<summary>
    ///  将当前位置的文本内容作为 32 位有符号整数读取。
    ///</summary>
    ///<returns>
    ///  作为 32 位有符号整数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsInt: Int32;
    ///<summary>
    ///  将当前位置的文本内容作为 64 位有符号整数读取。
    ///</summary>
    ///<returns>
    ///  作为 64 位有符号整数的文本内容。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsLong: Int64;
    ///<summary>
    ///  作为将当前位置的文本内容读取 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  文本内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.FormatException">
    ///  字符串格式无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAsString: string;
    ///<summary>
    ///  将内容作为指定类型的对象读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///  例如，将 <see cref="T:System.Xml.XmlQualifiedName" />
    ///  对象转换为 xs:string 时可以使用此对象。
    ///  此值可为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  已转换为请求类型的串联文本内容或属性值。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  内容不在的正确格式为目标类型。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="returnType" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前节点不是受支持的节点类型。
    ///  请参阅下的表以了解详细信息。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  一个最适当类型的装箱的公共语言运行时 (CLR) 对象。
    ///<see cref="P:System.Xml.XmlReader.ValueType" />
    ///  属性确定适合的 CLR 类型。
    ///  如果将内容类型化为列表类型，则此方法返回一个适当类型的装箱对象的数组。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsObject(localName: string; namespaceURI: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBoolean(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDateTime(localName: string; namespaceURI: string): DDN.mscorlib.DNDateTime; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为双精度浮点数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为双精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDouble(localName: string; namespaceURI: string): Double; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为单精度浮点数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为单精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为单精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsFloat(localName: string; namespaceURI: string): Single; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Decimal" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDecimal(localName: string; namespaceURI: string): DDN.mscorlib.DNDecimal; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为 32 位有符号整数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为 32 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 32 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsInt(localName: string; namespaceURI: string): Int32; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后读取当前元素，并将内容作为 64 位有符号整数返回。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  作为 64 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 64 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsLong(localName: string; namespaceURI: string): Int64; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的匹配，然后读取当前元素，并返回将内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.String" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsString(localName: string; namespaceURI: string): string; overload;
    ///<summary>
    ///  检查指定的本地名称和命名空间 URI 与当前元素的本地名称和命名空间 URI 是否匹配，然后将元素内容作为请求类型读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  转换为请求类型的对象的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定的本地名称和命名空间 URI 与当前正在读取的元素不匹配。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver; localName: string; namespaceURI: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  读取嵌入在 XML 文档中的大量文本流。
    ///</summary>
    ///  <param name="buffer">
    ///  作为文本内容写入到的缓冲区的字符数组。
    ///  此值不能为 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的偏移量位置 <see cref="T:System.Xml.XmlReader" />
    ///  可以开始将结果复制。
    ///</param>
    ///  <param name="count">
    ///  要复制到缓冲区中的最大字符数。
    ///  此方法返回复制的实际字符数。
    ///</param>
    ///<returns>
    ///  读取到缓冲区中的字符数。
    ///  如果不再有文本内容，则返回值零。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前节点不具有值 (<see cref="P:System.Xml.XmlReader.HasValue" />
    ///  是 <see langword="false" />
    ///  )。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  到缓冲区中的索引或索引 + 计数大于分配的缓冲区大小。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XmlReader" />
    ///  实现不支持此方法。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 数据格式不正确。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadValueChunk(buffer: TArray<Char>; index: Int32; count: Int32): Int32;
    ///<summary>
    ///  检查当前节点是否为内容 (非空白文本、 <see langword="CDATA" />
    ///  , ，<see langword="Element" />
    ///  , ，<see langword="EndElement" />
    ///  , ，<see langword="EntityReference" />
    ///  , ，或 <see langword="EndEntity" />
    ///  ) 节点。
    ///  如果此节点不是内容节点，则读取器向前跳至下一个内容节点或文件结尾。
    ///  它跳过以下类型的节点：<see langword="ProcessingInstruction" />
    ///  、<see langword="DocumentType" />
    ///  、<see langword="Comment" />
    ///  、<see langword="Whitespace" />
    ///  或 <see langword="SignificantWhitespace" />
    ///  。
    ///</summary>
    ///<returns><see cref="P:System.Xml.XmlReader.NodeType" />
    ///  方法找到的当前节点或 <see langword="XmlNodeType.None" />
    ///  如果读取器已到达输入流的末尾。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function MoveToContent: DNXmlNodeType;
    ///<summary>
    ///  检查当前节点是否为元素并将读取器推进到下一个节点。
    ///</summary>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement; overload;
    ///<summary>
    ///  检查当前内容节点是元素与给定 <see cref="P:System.Xml.XmlReader.Name" />
    ///  并将读取器推进到下一个节点。
    ///</summary>
    ///  <param name="name">
    ///  元素的限定名。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///  - 或 -
    ///<see cref="P:System.Xml.XmlReader.Name" />
    ///  不匹配的元素的给定 <paramref name="name" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement(name: string); overload;
    ///<summary>
    ///  检查 <see cref="P:System.Xml.XmlReader.Name" />
    ///  属性找到的元素与给定的字符串匹配在读取纯文本元素之前。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///  <param name="name">
    ///  要检查的名称。
    ///</param>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  如果不是开始标记; 下一个内容节点。如果该元素 <see langword="Name" />
    ///  与给定的参数; 不匹配，或者如果找到该元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString(name: string): string; overload;
    ///<summary>
    ///  检查当前内容节点是否为结束标记并将读取器推进到下一个节点。
    ///</summary>
    ///<exception cref="T:System.Xml.XmlException">
    ///  当前节点不是一个结束标记或输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadEndElement;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  找到开始标记还是空元素标记; <see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement: Boolean; overload;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记，以及如果 <see cref="P:System.Xml.XmlReader.Name" />
    ///  属性找到的元素与给定的参数匹配。
    ///</summary>
    ///  <param name="name">
    ///  匹配的字符串 <see langword="Name" />
    ///  找到的元素的属性。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果生成的节点是元素与 <see langword="Name" />
    ///  属性与指定的字符串匹配。
    ///<see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找或者，如果该元素 <see langword="Name" />
    ///  属性与指定的字符串不匹配。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement(name: string): Boolean; overload;
    ///<summary>
    ///  调用 <see cref="M:System.Xml.XmlReader.MoveToContent" />
    ///  并测试当前内容节点是开始标记还是空元素标记，以及如果 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  属性找到的元素与给定的字符串匹配。
    ///</summary>
    ///  <param name="localname">
    ///  要匹配的字符串 <see langword="LocalName" />
    ///  找到的元素的属性。
    ///</param>
    ///  <param name="ns">
    ///  要匹配的字符串 <see langword="NamespaceURI" />
    ///  找到的元素的属性。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果生成的节点是一个元素。
    ///<see langword="false" />
    ///  如果以外的节点类型 <see langword="XmlNodeType.Element" />
    ///  找或者，如果 <see langword="LocalName" />
    ///  和 <see langword="NamespaceURI" />
    ///  元素的属性与指定的字符串不匹配。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function IsStartElement(localname: string; ns: string): Boolean; overload;
    ///<summary>
    ///  一直读取，直到找到具有指定限定名的元素。
    ///</summary>
    ///  <param name="name">
    ///  元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的元素;否则为 <see langword="false" />
    ///  和 <see cref="T:System.Xml.XmlReader" />
    ///  处于的文件结束状态。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToFollowing(name: string): Boolean; overload;
    ///<summary>
    ///  一直读取，直到找到具有指定的本地名称和命名空间 URI 的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的元素;否则为 <see langword="false" />
    ///  和 <see cref="T:System.Xml.XmlReader" />
    ///  处于的文件结束状态。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  这两个参数的值为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToFollowing(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  前移 <see cref="T:System.Xml.XmlReader" />
    ///  到下一个具有指定限定名的子代元素。
    ///</summary>
    ///  <param name="name">
    ///  要移动到的元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的子代元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的子元素， <see cref="T:System.Xml.XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的元素。
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上时 <see cref="M:System.Xml.XmlReader.ReadToDescendant(System.String)" />
    ///  调用，此方法返回 <see langword="false" />
    ///  和位置的 <see cref="T:System.Xml.XmlReader" />
    ///  未发生更改时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToDescendant(name: string): Boolean; overload;
    ///<summary>
    ///  前移 <see cref="T:System.Xml.XmlReader" />
    ///  到下一个具有指定的本地名称和命名空间 URI 的子代元素。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  要移动到的元素的命名空间 URI。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的子代元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的子元素， <see cref="T:System.Xml.XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的元素。
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上时 <see cref="M:System.Xml.XmlReader.ReadToDescendant(System.String,System.String)" />
    ///  调用，此方法返回 <see langword="false" />
    ///  和位置的 <see cref="T:System.Xml.XmlReader" />
    ///  未发生更改时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  这两个参数的值为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToDescendant(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  前移 <see langword="XmlReader" />
    ///  到下一个具有指定限定名的同级元素。
    ///</summary>
    ///  <param name="name">
    ///  要移动到的同级元素的限定名。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果找到匹配的同级元素，则否则为 <see langword="false" />
    ///  。
    ///  如果未找到匹配的同级元素， <see langword="XmlReader" />
    ///  定位在结束标记 (<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  是 <see langword="XmlNodeType.EndElement" />
    ///  ) 的父元素。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.ArgumentException">
    ///  该参数为空字符串。
    ///</exception>
    function ReadToNextSibling(name: string): Boolean; overload;
    ///<summary>
    ///  将 <see langword="XmlReader" />
    ///  推进到具有指定的本地名称和命名空间 URI 的下一个同级元素。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的同级元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  你希望移动到的同级元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果找到匹配的同级元素，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  如果没有找到匹配的同级元素，<see langword="XmlReader" />
    ///  会定位在父元素的结束标记（<see cref="P:System.Xml.XmlReader.NodeType" />
    ///  为 <see langword="XmlNodeType.EndElement" />
    ///  ）上。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  在上一次异步操作完成之前调用了 <see cref="T:System.Xml.XmlReader" />
    ///  方法。
    ///  在此情况下，将引发 <see cref="T:System.InvalidOperationException" />
    ///  并显示消息“异步操作已在进行中”。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  两个参数值均为 <see langword="null" />
    ///  。
    ///</exception>
    function ReadToNextSibling(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  当在派生类中被重写时，将所有内容（包括标记）当做字符串读取。
    ///</summary>
    ///<returns>
    ///  当前节点中的所有 XML 内容（包括标记）。
    ///  如果当前节点没有任何子级，则返回空字符串。
    ///  如果当前节点既非元素，也非属性，则返回空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 不正确，或者分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadInnerXml: string;
    ///<summary>
    ///  当在派生类中被重写时，读取表示该节点和所有它的子级的内容（包括标记）。
    ///</summary>
    ///<returns>
    ///  如果读取器定位在元素或属性节点上，此方法将返回当前节点及其所有子级的所有 XML 内容（包括标记）；否则返回空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  XML 不正确，或者分析 XML 时出错。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadOuterXml: string;
    ///<summary>
    ///  返回一个新 <see langword="XmlReader" />
    ///  能用于读取当前节点及其所有子代的实例。
    ///</summary>
    ///<returns>
    ///  新的 XML 读取器实例设置为 <see cref="F:System.Xml.ReadState.Initial" />
    ///  。
    ///  调用 <see cref="M:System.Xml.XmlReader.Read" />
    ///  方法将新的读取器定位在调用之前的当前节点上 <see cref="M:System.Xml.XmlReader.ReadSubtree" />
    ///  方法。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  调用此方法时，XML 读取器未定位在元素上。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadSubtree: DNXmlReader;
    ///<summary>
    ///  释放 <see cref="T:System.Xml.XmlReader" />
    ///  类的当前实例所使用的所有资源。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Dispose;
    ///<summary>
    ///  异步跳过当前节点的子级。
    ///</summary>
    ///<returns>
    ///  当前节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlReaderSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlReaderSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function SkipAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个最适当类型的装箱的公共语言运行时 (CLR) 对象。
    ///<see cref="P:System.Xml.XmlReader.ValueType" />
    ///  属性确定适合的 CLR 类型。
    ///  如果将内容类型化为列表类型，则此方法返回一个适当类型的装箱对象的数组。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能为请求的类型转换的元素内容
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsObject: DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Boolean" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsBoolean: Boolean; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.DateTime" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDateTime: DDN.mscorlib.DNDateTime; overload;
    ///<summary>
    ///  读取当前元素并将内容作为双精度浮点数返回。
    ///</summary>
    ///<returns>
    ///  作为双精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为双精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDouble: Double; overload;
    ///<summary>
    ///  读取当前元素并将内容作为单精度浮点数返回。
    ///</summary>
    ///<returns>
    ///  作为单精度浮点数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为单精度浮点数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsFloat: Single; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.Decimal" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.Decimal" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsDecimal: DDN.mscorlib.DNDecimal; overload;
    ///<summary>
    ///  读取当前元素并将内容作为 32 位有符号整数返回。
    ///</summary>
    ///<returns>
    ///  作为 32 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 32 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsInt: Int32; overload;
    ///<summary>
    ///  读取当前元素并将内容作为 64 位有符号整数返回。
    ///</summary>
    ///<returns>
    ///  作为 64 位有符号整数的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 64 位有符号整数。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsLong: Int64; overload;
    ///<summary>
    ///  读取当前元素并返回将内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  元素内容作为 <see cref="T:System.String" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  无法将元素内容转换为 <see cref="T:System.String" />
    ///  对象。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAsString: string; overload;
    ///<summary>
    ///  将元素内容作为请求类型读取。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的值的类型。
    ///  注意   版本的.NET Framework 3.5 的值与 <paramref name="returnType" />
    ///  参数现在可以 <see cref="T:System.DateTimeOffset" />
    ///  类型。
    ///</param>
    ///  <param name="namespaceResolver">
    ///  一个 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象，用于解析与类型转换有关的任何命名空间前缀。
    ///</param>
    ///<returns>
    ///  转换为请求类型的对象的元素内容。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  未定位在元素上。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  当前元素包含子元素。
    ///  - 或 -
    ///  不能将元素内容转换为请求的类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  默认情况下，调用与 <see langword="null" />
    ///  参数。
    ///</exception><exception cref="T:System.OverflowException">
    ///  读取 <see langword="Decimal.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementContentAs(returnType: DDN.mscorlib.DNType; namespaceResolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  检查当前内容节点是元素与给定 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  并将读取器推进到下一个节点。
    ///</summary>
    ///  <param name="localname">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  元素的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.Xml.XmlException">
    ///  在输入流中遇到不正确的 XML。
    ///  - 或 -
    ///<see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  属性找到的元素与给定的参数不匹配。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure ReadStartElement(localname: string; ns: string); overload;
    ///<summary>
    ///  读取纯文本元素。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  不是开始标记; 下一个内容节点。或找到的元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString: string; overload;
    ///<summary>
    ///  检查 <see cref="P:System.Xml.XmlReader.LocalName" />
    ///  和 <see cref="P:System.Xml.XmlReader.NamespaceURI" />
    ///  找到与给定的字符串匹配在读取纯文本元素之前的元素的属性。
    ///  但是，我们建议你使用 <see cref="M:System.Xml.XmlReader.ReadElementContentAsString(System.String,System.String)" />
    ///  方法相反，因为它提供了更直接的方法来处理此操作。
    ///</summary>
    ///  <param name="localname">
    ///  要检查的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  要检查的命名空间 URI。
    ///</param>
    ///<returns>
    ///  所读取的元素中包含的文本。
    ///  如果元素为空，则返回一个空字符串。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException">
    ///  如果不是开始标记; 下一个内容节点。如果该元素 <see langword="LocalName" />
    ///  或 <see langword="NamespaceURI" />
    ///  不匹配给定的参数; 或者如果找到该元素不包含简单的文本值。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function ReadElementString(localname: string; ns: string): string; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取当前节点的类型。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNodeType" />
    ///  值之一，表示当前节点的类型。
    ///</returns>
    property NodeType: DNXmlNodeType read get_NodeType;
    ///<summary>
    ///  获取当前节点的限定名称。
    ///</summary>
    ///<returns>
    ///  当前节点的限定名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="Name" />
    ///  为 <see langword="bk:book" />
    ///  。
    ///  返回的名称取决于节点的 <see cref="P:System.Xml.XmlTextReader.NodeType" />
    ///  。
    ///  下列节点类型返回所列的值。
    ///  所有其他节点类型返回空字符串。
    ///  节点类型
    ///  名称
    ///<see langword="Attribute" />
    ///  属性名。
    ///<see langword="DocumentType" />
    ///  文档类型名称。
    ///<see langword="Element" />
    ///  标记名称。
    ///<see langword="EntityReference" />
    ///  引用的实体的名称。
    ///<see langword="ProcessingInstruction" />
    ///  处理指令的目标。
    ///<see langword="XmlDeclaration" />
    ///  文字字符串 <see langword="xml" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取当前节点的本地名称。
    ///</summary>
    ///<returns>
    ///  移除了前缀的当前节点的名称。
    ///  例如，对于元素 &lt;bk:book&gt;，<see langword="LocalName" />
    ///  为 <see langword="book" />
    ///  。
    ///  对于没有名称的节点类型（如 <see langword="Text" />
    ///  、<see langword="Comment" />
    ///  等），该属性返回 <see langword="String.Empty" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  获取读取器定位在的节点的命名空间 URI（采用 W3C 命名空间规范中定义）。
    ///</summary>
    ///<returns>
    ///  当前节点的命名空间 URI；否则为空字符串。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  获取与当前节点关联的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  与当前节点关联的命名空间前缀。
    ///</returns>
    property Prefix: string read get_Prefix;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否可以具有 <see langword="String.Empty" />
    ///  以外的 <see cref="P:System.Xml.XmlTextReader.Value" />
    ///  。
    ///</summary>
    ///<returns>
    ///  如果读取器当前定位在的节点可以具有 <see langword="Value" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasValue: Boolean read get_HasValue;
    ///<summary>
    ///  获取当前节点的文本值。
    ///</summary>
    ///<returns>
    ///  返回的值取决于节点的 <see cref="P:System.Xml.XmlTextReader.NodeType" />
    ///  。
    ///  下表列出具有要返回的值的节点类型。
    ///  所有其他节点类型返回 <see langword="String.Empty" />
    ///  。
    ///  节点类型
    ///  值
    ///<see langword="Attribute" />
    ///  属性的值。
    ///<see langword="CDATA" />
    ///  CDATA 节的内容。
    ///<see langword="Comment" />
    ///  注释的内容。
    ///<see langword="DocumentType" />
    ///  内部子集。
    ///<see langword="ProcessingInstruction" />
    ///  全部内容（不包括指令目标）。
    ///<see langword="SignificantWhitespace" />
    ///  中的空白区域 <see langword="xml:space" />
    ///  = 'preserve' 范围。
    ///<see langword="Text" />
    ///  文本节点的内容。
    ///<see langword="Whitespace" />
    ///  标记之间的空白。
    ///<see langword="XmlDeclaration" />
    ///  声明的内容。
    ///</returns>
    property Value: string read get_Value;
    ///<summary>
    ///  获取 XML 文档中当前节点的深度。
    ///</summary>
    ///<returns>
    ///  XML 文档中当前节点的深度。
    ///</returns>
    property Depth: Int32 read get_Depth;
    ///<summary>
    ///  获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  当前节点的基 URI。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否为空元素（例如，&lt;MyElement/&gt;）。
    ///</summary>
    ///<returns>
    ///  如果当前节点是一个以 /&gt; 结尾的元素（<see cref="P:System.Xml.XmlTextReader.NodeType" />
    ///  等于 <see langword="XmlNodeType.Element" />
    ///  ），则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmptyElement: Boolean read get_IsEmptyElement;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否是从 DTD 或架构中定义的默认值生成的属性。
    ///</summary>
    ///<returns>
    ///  此属性始终返回 <see langword="false" />
    ///  。
    ///  （<see cref="T:System.Xml.XmlTextReader" />
    ///  不展开默认属性。）
    ///</returns>
    property IsDefault: Boolean read get_IsDefault;
    ///<summary>
    ///  获取用于括起属性节点的值的引号字符。
    ///</summary>
    ///<returns>
    ///  用于括起属性节点的值的引号字符（" 或 '）。
    ///</returns>
    property QuoteChar: Char read get_QuoteChar;
    ///<summary>
    ///  获取当前 <see langword="xml:lang" />
    ///  范围。
    ///</summary>
    ///<returns>
    ///  当前 <see langword="xml:lang" />
    ///  范围。
    ///</returns>
    property XmlLang: string read get_XmlLang;
    ///<summary>
    ///  获取当前节点上的属性数目。
    ///</summary>
    ///<returns>
    ///  当前节点上的属性数目。
    ///</returns>
    property AttributeCount: Int32 read get_AttributeCount;
    ///<summary>
    ///  获取一个值，该值指示读取器是否定位在流结尾。
    ///</summary>
    ///<returns>
    ///  如果此读取器定位在流的结尾，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property EOF: Boolean read get_EOF;
    ///<summary>
    ///  获取与此实现关联的 <see cref="T:System.Xml.XmlNameTable" />
    ///  。
    ///</summary>
    ///<returns><see langword="XmlNameTable" />
    ///  ，它使你能够获取该节点内字符串的原子化版本。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  获取一个值，该值指示此读取器是否可以分析和解析实体。
    ///</summary>
    ///<returns>
    ///  如果此读取器可以分析和解析实体，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///<see langword="XmlTextReader" />
    ///  类始终返回 <see langword="true" />
    ///  。
    ///</returns>
    property CanResolveEntity: Boolean read get_CanResolveEntity;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Xml.XmlTextReader" />
    ///  是否实现二进制内容读取方法。
    ///</summary>
    ///<returns>
    ///  如果实现了二进制内容读取方法，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///<see cref="T:System.Xml.XmlTextReader" />
    ///  类始终返回 <see langword="true" />
    ///  。
    ///</returns>
    property CanReadBinaryContent: Boolean read get_CanReadBinaryContent;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Xml.XmlTextReader" />
    ///  是否实现 <see cref="M:System.Xml.XmlReader.ReadValueChunk(System.Char[],System.Int32,System.Int32)" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XmlTextReader" />
    ///  实现 <see cref="M:System.Xml.XmlReader.ReadValueChunk(System.Char[],System.Int32,System.Int32)" />
    ///  方法，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///<see cref="T:System.Xml.XmlTextReader" />
    ///  类始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property CanReadValueChunk: Boolean read get_CanReadValueChunk;
    ///<summary>
    ///  获取当前行号。
    ///</summary>
    ///<returns>
    ///  当前行号。
    ///</returns>
    property LineNumber: Int32 read get_LineNumber;
    ///<summary>
    ///  获取当前行位置。
    ///</summary>
    ///<returns>
    ///  当前行位置。
    ///</returns>
    property LinePosition: Int32 read get_LinePosition;
    ///<summary>
    ///  获取或设置一个值，该值指示是否进行命名空间支持。
    ///</summary>
    ///<returns>
    ///  要进行命名空间支持，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  将此属性设置读取的操作发生后 (<see cref="P:System.Xml.XmlTextReader.ReadState" />
    ///  不是 <see langword="ReadState.Initial" />
    ///  )。
    ///</exception>
    property Namespaces: Boolean read get_Namespaces write set_Namespaces;
    ///<summary>
    ///  获取或设置一个值，该值指示是否规范化空白区域和属性值。
    ///</summary>
    ///<returns>
    ///  如果要进行规范化，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  将此属性设置在读取器关闭时 (<see cref="P:System.Xml.XmlTextReader.ReadState" />
    ///  是 <see langword="ReadState.Closed" />
    ///  )。
    ///</exception>
    property Normalization: Boolean read get_Normalization write set_Normalization;
    ///<summary>
    ///  获取文档的编码。
    ///</summary>
    ///<returns>
    ///  编码值。
    ///  如果不存在任何编码属性且不存在字节顺序标记，则这将默认为 UTF-8。
    ///</returns>
    property Encoding: DDN.mscorlib.DNEncoding read get_Encoding;
    ///<summary>
    ///  获取或设置一个值，该值指定如何处理空白区域。
    ///</summary>
    ///<returns><see cref="T:System.Xml.WhitespaceHandling" />
    ///  值之一。
    ///  默认值为 <see langword="WhitespaceHandling.All" />
    ///  （返回 <see langword="Whitespace" />
    ///  和 <see langword="SignificantWhitespace" />
    ///  节点）。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  将此属性设置在读取器关闭时 (<see cref="P:System.Xml.XmlTextReader.ReadState" />
    ///  是 <see langword="ReadState.Closed" />
    ///  )。
    ///</exception>
    property WhitespaceHandling: DNWhitespaceHandling read get_WhitespaceHandling write set_WhitespaceHandling;
    ///<summary>
    ///  获取或设置一个值，该值指示是否允许 DTD 处理。
    ///  此属性已过时。
    ///  请改用 <see cref="P:System.Xml.XmlTextReader.DtdProcessing" />
    ///  。
    ///</summary>
    ///<returns>
    ///  如果不允许 DTD 处理，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property ProhibitDtd: Boolean read get_ProhibitDtd write set_ProhibitDtd;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Xml.DtdProcessing" />
    ///  枚举。
    ///</summary>
    ///<returns><see cref="T:System.Xml.DtdProcessing" />
    ///  枚举。
    ///</returns>
    property DtdProcessing: DNDtdProcessing read get_DtdProcessing write set_DtdProcessing;
    ///<summary>
    ///  获取或设置一个值，该值指定读取器处理实体的方式。
    ///</summary>
    ///<returns><see cref="T:System.Xml.EntityHandling" />
    ///  值之一。
    ///  如果未指定 <see langword="EntityHandling" />
    ///  ，它将默认为 <see langword="EntityHandling.ExpandCharEntities" />
    ///  。
    ///</returns>
    property EntityHandling: DNEntityHandling read get_EntityHandling write set_EntityHandling;
    ///<summary>
    ///  设置用于解析 DTD 引用的 <see cref="T:System.Xml.XmlResolver" />
    ///  。
    ///</summary>
    ///<returns>
    ///  要使用的 <see langword="XmlResolver" />
    ///  。
    ///  如果设置为 <see langword="null" />
    ///  ，则不解析外部资源。
    ///  在 .NET Framework 的 1.1 版中，调用方必须完全受到信任，才能指定 <see langword="XmlResolver" />
    ///  。
    ///</returns>
    property XmlResolver: DNXmlResolver write set_XmlResolver;
    ///<summary>
    ///  获取用于创建此 <see cref="T:System.Xml.XmlReader" />
    ///  实例的 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象，用于创建此读取器实例。
    ///  如果此读取器不使用创建 <see cref="Overload:System.Xml.XmlReader.Create" />
    ///  方法，则此属性返回 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Settings: DNXmlReaderSettings read get_Settings;
    ///<summary>
    ///  获取作为架构验证结果分配给当前节点的架构信息。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，它包含当前节点的架构信息。
    ///  架构信息可以对元素、 属性或具有非空文本节点上设置 <see cref="P:System.Xml.XmlReader.ValueType" />
    ///  （类型化值）。
    ///  如果当前节点不属于上述节点类型，或者如果 <see langword="XmlReader" />
    ///  实例不会报告架构信息，则此属性返回 <see langword="null" />
    ///  。
    ///  如果是通过调用此属性 <see cref="T:System.Xml.XmlTextReader" />
    ///  或 <see cref="T:System.Xml.XmlValidatingReader" />
    ///  对象，则此属性始终返回 <see langword="null" />
    ///  。
    ///  这些 <see langword="XmlReader" />
    ///  实现不公开架构信息通过 <see langword="SchemaInfo" />
    ///  属性。
    ///  如果必须为某个元素获取架构验证后信息集 (PSVI)，请在此元素的结束标记处（而不是在开始标记处）放置读取器。
    ///  获取 PSVI <see langword="SchemaInfo" />
    ///  读取器的属性。
    ///  通过创建的验证读取器 <see cref="Overload:System.Xml.XmlReader.Create" />
    ///  与 <see cref="P:System.Xml.XmlReaderSettings.ValidationType" />
    ///  属性设置为 <see cref="F:System.Xml.ValidationType.Schema" />
    ///  具有完整的 PSVI 的元素仅在读取器定位在元素的结束标记上时。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取当前节点的公共语言运行时 (CLR) 类型。
    ///</summary>
    ///<returns>
    ///  与节点的类型化值对应的 CLR 类型。
    ///  默认值为 <see langword="System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property ValueType: DDN.mscorlib.DNType read get_ValueType;
    property Item[i: Int32]: string read get_Item; default;
    property Item[name: string]: string read get_Item; default;
    property Item[name: string; namespaceURI: string]: string read get_Item; default;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否有任何属性。
    ///</summary>
    ///<returns>
    ///  如果当前节点具有属性，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlReader" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property HasAttributes: Boolean read get_HasAttributes;
  end;

  TDNXmlTextReader = class(TDNGenericImport<DNXmlTextReaderClass, DNXmlTextReader>) end;

  //-------------namespace: System.Xml----------------
  DNXmlReaderSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{333069D0-1337-5A1D-988D-3D92D51A0162}']
  { static getter & setter } 

    procedure set_XmlResolver(value: DNXmlResolver);

  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlReaderSettings; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="resolver">
    ///  XML 解析器。
    ///</param>
    {class} function init(resolver: DNXmlResolver): DNXmlReaderSettings; overload;

  { static propertys } 

    ///<summary>
    ///  集 <see cref="T:System.Xml.XmlResolver" />
    ///  用来访问外部文档。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlResolver" />
    ///  用来访问外部文档。
    ///  如果设置为 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlException" />
    ///  时，将引发 <see cref="T:System.Xml.XmlReader" />
    ///  尝试访问外部资源。
    ///  默认值是一种新 <see cref="T:System.Xml.XmlUrlResolver" />
    ///  没有凭据。
    ///  从.NET Framework 4.5.2 开始，此设置具有默认值为 <see langword="null" />
    ///  。
    ///</returns>
    {class} property XmlResolver: DNXmlResolver write set_XmlResolver;
  end;

  ///<summary>
  ///  指定的功能以支持上的一组 <see cref="T:System.Xml.XmlReader" />
  ///  创建的对象 <see cref="Overload:System.Xml.XmlReader.Create" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.Xml.XmlReaderSettings')]
  DNXmlReaderSettings = interface(DDN.mscorlib.DNObject)
  ['{A34E9932-0279-3945-87FC-037F0B86F4F9}']
  { getters & setters } 

    function get_Async: Boolean;
    procedure set_Async(value: Boolean);
    function get_NameTable: DNXmlNameTable;
    procedure set_NameTable(value: DNXmlNameTable);
    procedure set_XmlResolver(value: DNXmlResolver);
    function get_LineNumberOffset: Int32;
    procedure set_LineNumberOffset(value: Int32);
    function get_LinePositionOffset: Int32;
    procedure set_LinePositionOffset(value: Int32);
    function get_CheckCharacters: Boolean;
    procedure set_CheckCharacters(value: Boolean);
    function get_MaxCharactersInDocument: Int64;
    procedure set_MaxCharactersInDocument(value: Int64);
    function get_MaxCharactersFromEntities: Int64;
    procedure set_MaxCharactersFromEntities(value: Int64);
    function get_IgnoreWhitespace: Boolean;
    procedure set_IgnoreWhitespace(value: Boolean);
    function get_IgnoreProcessingInstructions: Boolean;
    procedure set_IgnoreProcessingInstructions(value: Boolean);
    function get_IgnoreComments: Boolean;
    procedure set_IgnoreComments(value: Boolean);
    function get_ProhibitDtd: Boolean;
    procedure set_ProhibitDtd(value: Boolean);
    function get_DtdProcessing: DNDtdProcessing;
    procedure set_DtdProcessing(value: DNDtdProcessing);
    function get_CloseInput: Boolean;
    procedure set_CloseInput(value: Boolean);
    function get_Schemas: DNXmlSchemaSet;
    procedure set_Schemas(value: DNXmlSchemaSet);

  { methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  实例的副本。
    ///</summary>
    ///<returns>
    ///  克隆 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象。
    ///</returns>
    function Clone: DNXmlReaderSettings;
    ///<summary>
    ///  将设置类的成员重置为各自的默认值。
    ///</summary>
    procedure Reset;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置是否异步 <see cref="T:System.Xml.XmlReader" />
    ///  方法可对特定 <see cref="T:System.Xml.XmlReader" />
    ///  实例。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果可以使用异步方法，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Async: Boolean read get_Async write set_Async;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Xml.XmlNameTable" />
    ///  用于原子化的字符串比较。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNameTable" />
    ///  用于存储所有使用的所有原子化的字符串 <see cref="T:System.Xml.XmlReader" />
    ///  创建使用此实例 <see cref="T:System.Xml.XmlReaderSettings" />
    ///  对象。
    ///  默认值为 <see langword="null" />
    ///  。
    ///  创建 <see cref="T:System.Xml.XmlReader" />
    ///  实例将使用新的空 <see cref="T:System.Xml.NameTable" />
    ///  如果此值是 <see langword="null" />
    ///  。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable write set_NameTable;
    ///<summary>
    ///  集 <see cref="T:System.Xml.XmlResolver" />
    ///  用来访问外部文档。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlResolver" />
    ///  用来访问外部文档。
    ///  如果设置为 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlException" />
    ///  时，将引发 <see cref="T:System.Xml.XmlReader" />
    ///  尝试访问外部资源。
    ///  默认值是一种新 <see cref="T:System.Xml.XmlUrlResolver" />
    ///  没有凭据。
    ///  从.NET Framework 4.5.2 开始，此设置具有默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property XmlResolver: DNXmlResolver write set_XmlResolver;
    ///<summary>
    ///  获取或设置行号偏移量的 <see cref="T:System.Xml.XmlReader" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  行号偏移量。
    ///  默认值为 0。
    ///</returns>
    property LineNumberOffset: Int32 read get_LineNumberOffset write set_LineNumberOffset;
    ///<summary>
    ///  获取或设置的行位置偏移量 <see cref="T:System.Xml.XmlReader" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  行位置偏移量。
    ///  默认值为 0。
    ///</returns>
    property LinePositionOffset: Int32 read get_LinePositionOffset write set_LinePositionOffset;
    ///<summary>
    ///  获取或设置一个值，该值指示是否进行字符检查。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要进行字符检查;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///  如果 <see cref="T:System.Xml.XmlReader" />
    ///  是处理文本数据时，将始终检查 XML 名称和文本内容是否有效，而不考虑属性设置。
    ///  设置 <see cref="P:System.Xml.XmlReaderSettings.CheckCharacters" />
    ///  到 <see langword="false" />
    ///  关闭字符检查的字符实体引用。
    ///</returns>
    property CheckCharacters: Boolean read get_CheckCharacters write set_CheckCharacters;
    ///<summary>
    ///  获取或设置一个值，该值指明 XML 文档中所允许的最大字符数。
    ///  零 (0) 值表示对 XML 文档的大小没有限制。
    ///  非零值指定最大大小（以字符数计）。
    ///</summary>
    ///<returns>
    ///  XML 文档中所允许的最大字符数。
    ///  默认值为 0。
    ///</returns>
    property MaxCharactersInDocument: Int64 read get_MaxCharactersInDocument write set_MaxCharactersInDocument;
    ///<summary>
    ///  获取或设置一个值，该值指示文档中允许扩展实体产生的最大字符数。
    ///</summary>
    ///<returns>
    ///  扩展实体中允许的最大字符数。
    ///  默认值为 0。
    ///</returns>
    property MaxCharactersFromEntities: Int64 read get_MaxCharactersFromEntities write set_MaxCharactersFromEntities;
    ///<summary>
    ///  获取或设置一个值，该值指示是否忽略无关紧要的空白区域。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要忽略空白;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IgnoreWhitespace: Boolean read get_IgnoreWhitespace write set_IgnoreWhitespace;
    ///<summary>
    ///  获取或设置一个值，该值指示是否忽略处理指令。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要忽略处理指令，则否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IgnoreProcessingInstructions: Boolean read get_IgnoreProcessingInstructions write set_IgnoreProcessingInstructions;
    ///<summary>
    ///  获取或设置一个值，该值指示是否忽略注释。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要忽略注释;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IgnoreComments: Boolean read get_IgnoreComments write set_IgnoreComments;
    ///<summary>
    ///  获取或设置一个值，该值指示是否禁用文档类型定义 (DTD) 处理。
    ///  此属性已过时。
    ///  请改用 <see cref="P:System.Xml.XmlTextReader.DtdProcessing" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要禁用 DTD 处理。否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property ProhibitDtd: Boolean read get_ProhibitDtd write set_ProhibitDtd;
    ///<summary>
    ///  获取或设置确定 DTD 的处理的值。
    ///</summary>
    ///<returns>
    ///  确定 DTD 的处理的枚举值之一。
    ///  默认值为 <see cref="F:System.Xml.DtdProcessing.Prohibit" />
    ///  。
    ///</returns>
    property DtdProcessing: DNDtdProcessing read get_DtdProcessing write set_DtdProcessing;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在基础流或 <see cref="T:System.IO.TextReader" />
    ///  时读取器关闭时被关闭。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要关闭基础流或 <see cref="T:System.IO.TextReader" />
    ///  时读取器已关闭，否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property CloseInput: Boolean read get_CloseInput write set_CloseInput;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  在执行架构验证时使用。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  在执行架构验证时使用。
    ///  默认值为空 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  对象。
    ///</returns>
    property Schemas: DNXmlSchemaSet read get_Schemas write set_Schemas;
  end;

  TDNXmlReaderSettings = class(TDNGenericImport<DNXmlReaderSettingsClass, DNXmlReaderSettings>) end;

  //-------------namespace: System.Xml----------------
  DNXmlResolverClass = interface(DDN.mscorlib.DNObjectClass)
  ['{EDE29340-6461-5FEC-9331-2E67780C1D99}']
  { static getter & setter } 

    procedure set_Credentials(value: DNICredentials);

  { static propertys } 

    ///<summary>
    ///  当在派生类中被重写时，设置用于对 Web 请求进行身份验证的凭据。
    ///</summary>
    ///<returns>
    ///  用于对 Web 请求进行身份验证的凭据。
    ///  如果未设置该属性，则该值默认为 <see langword="null" />
    ///  ；即 <see langword="XmlResolver" />
    ///  没有用户凭据。
    ///</returns>
    {class} property Credentials: DNICredentials write set_Credentials;
  end;

  ///<summary>
  ///  解析由统一资源标识符 (URI) 命名的外部 XML 资源。
  ///</summary>
  [DNTypeName('System.Xml.XmlResolver')]
  DNXmlResolver = interface(DDN.mscorlib.DNObject)
  ['{F2DEB691-8A4B-36EE-9262-ED43949B7CC1}']
  { getters & setters } 

    procedure set_Credentials(value: DNICredentials);

  { methods } 

    ///<summary>
    ///  当在派生类中被重写时，从基 URI 和相对 URI 解析绝对 URI。
    ///</summary>
    ///  <param name="baseUri">
    ///  用于解析相对 URI 的基 URI。
    ///</param>
    ///  <param name="relativeUri">
    ///  要解析的 URI。
    ///  URI 可以是绝对的或相对的。
    ///  如果是绝对的，此值有效地替换 <paramref name="baseUri" />
    ///  值。
    ///  如果是相对的，它与 <paramref name="baseUri" />
    ///  组合以构成绝对 URI。
    ///</param>
    ///<returns>
    ///  绝对 URI 或 <see langword="null" />
    ///  如果能解析相对 URI。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="relativeUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function ResolveUri(baseUri: DNUri; relativeUri: string): DNUri;
    ///<summary>
    ///  使之外的返回类型的解析程序 <see cref="T:System.IO.Stream" />
    ///  。
    ///</summary>
    ///  <param name="absoluteUri">
    ///  URI。
    ///</param>
    ///  <param name="type">
    ///  要返回的类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="type" />
    ///  受支持; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function SupportsType(absoluteUri: DNUri; &type: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  当在派生类中被重写时，将 URI 映射到包含实际资源的对象。
    ///</summary>
    ///  <param name="absoluteUri">
    ///  从 <see cref="M:System.Xml.XmlResolver.ResolveUri(System.Uri,System.String)" />
    ///  返回的 URI。
    ///</param>
    ///  <param name="role">
    ///  当前未使用。
    ///</param>
    ///  <param name="ofObjectToReturn">
    ///  要返回的对象的类型。
    ///  当前版本只返回 System.IO.Stream 对象。
    ///</param>
    ///<returns>
    ///  流对象；如果指定了流以外的类型，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.XmlException"><paramref name="ofObjectToReturn" />
    ///  不是 <see langword="Stream" />
    ///  类型。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  指定的 URI 不是一个绝对 URI。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="absoluteUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Exception">
    ///  没有运行时错误 （例如，中断的服务器连接）。
    ///</exception>
    function GetEntity(absoluteUri: DNUri; role: string; ofObjectToReturn: DDN.mscorlib.DNType): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  当在派生类中被重写时，设置用于对 Web 请求进行身份验证的凭据。
    ///</summary>
    ///<returns>
    ///  用于对 Web 请求进行身份验证的凭据。
    ///  如果未设置该属性，则该值默认为 <see langword="null" />
    ///  ；即 <see langword="XmlResolver" />
    ///  没有用户凭据。
    ///</returns>
    property Credentials: DNICredentials write set_Credentials;
  end;

  TDNXmlResolver = class(TDNGenericImport<DNXmlResolverClass, DNXmlResolver>) end;

  //-------------namespace: System.Xml----------------
  DNXmlWriterClass = interface(DDN.mscorlib.DNObjectClass)
  ['{387BD4BD-B278-52F4-B752-3F6A5A361BA4}']
  { static methods } 

    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定的文件名。
    ///</summary>
    ///  <param name="outputFileName">
    ///  要对其写入的文件。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  在指定的路径创建文件并向其写入 XML 1.0 文本语法中。
    ///  <paramref name="outputFileName" />
    ///  必须为文件系统路径。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="url" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(outputFileName: string): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用的文件名和 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///  <param name="outputFileName">
    ///  要对其写入的文件。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  在指定的路径创建文件并向其写入 XML 1.0 文本语法中。
    ///  <paramref name="outputFileName" />
    ///  必须为文件系统路径。
    ///</param>
    ///  <param name="settings"><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于配置新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///  如果这是 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  使用具有默认设置。
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  用于 <see cref="M:System.Xml.Xsl.XslCompiledTransform.Transform(System.String,System.Xml.XmlWriter)" />
    ///  方法，则应使用 <see cref="P:System.Xml.Xsl.XslCompiledTransform.OutputSettings" />
    ///  属性来获取 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  采用正确的设置的对象。
    ///  这样可确保创建 <see cref="T:System.Xml.XmlWriter" />
    ///  对象都有正确的输出设置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="url" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(outputFileName: string; settings: DNXmlWriterSettings): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定的流。
    ///</summary>
    ///  <param name="output">
    ///  要对其写入的流。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  写入 XML 1.0 文本语法并将其附加到指定的流。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNStream): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用的流和 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///  <param name="output">
    ///  要对其写入的流。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  写入 XML 1.0 文本语法并将其附加到指定的流。
    ///</param>
    ///  <param name="settings"><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于配置新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///  如果这是 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  使用具有默认设置。
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  用于 <see cref="M:System.Xml.Xsl.XslCompiledTransform.Transform(System.String,System.Xml.XmlWriter)" />
    ///  方法，则应使用 <see cref="P:System.Xml.Xsl.XslCompiledTransform.OutputSettings" />
    ///  属性来获取 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  采用正确的设置的对象。
    ///  这样可确保创建 <see cref="T:System.Xml.XmlWriter" />
    ///  对象都有正确的输出设置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNStream; settings: DNXmlWriterSettings): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</summary>
    ///  <param name="output"><see cref="T:System.IO.TextWriter" />
    ///  到想要编写。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  写入 XML 1.0 文本语法并将其附加到指定 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="text" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNTextWriter): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用 <see cref="T:System.IO.TextWriter" />
    ///  和 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///  <param name="output"><see cref="T:System.IO.TextWriter" />
    ///  到想要编写。
    ///<see cref="T:System.Xml.XmlWriter" />
    ///  写入 XML 1.0 文本语法并将其附加到指定 <see cref="T:System.IO.TextWriter" />
    ///  。
    ///</param>
    ///  <param name="settings"><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于配置新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///  如果这是 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  使用具有默认设置。
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  用于 <see cref="M:System.Xml.Xsl.XslCompiledTransform.Transform(System.String,System.Xml.XmlWriter)" />
    ///  方法，则应使用 <see cref="P:System.Xml.Xsl.XslCompiledTransform.OutputSettings" />
    ///  属性来获取 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  采用正确的设置的对象。
    ///  这样可确保创建 <see cref="T:System.Xml.XmlWriter" />
    ///  对象都有正确的输出设置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="text" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNTextWriter; settings: DNXmlWriterSettings): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定 <see cref="T:System.Text.StringBuilder" />
    ///  。
    ///</summary>
    ///  <param name="output"><see cref="T:System.Text.StringBuilder" />
    ///  要向其写入到。
    ///  通过写入的内容 <see cref="T:System.Xml.XmlWriter" />
    ///  追加到 <see cref="T:System.Text.StringBuilder" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="builder" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNStringBuilder): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用 <see cref="T:System.Text.StringBuilder" />
    ///  和 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///  <param name="output"><see cref="T:System.Text.StringBuilder" />
    ///  要向其写入到。
    ///  通过写入的内容 <see cref="T:System.Xml.XmlWriter" />
    ///  追加到 <see cref="T:System.Text.StringBuilder" />
    ///  。
    ///</param>
    ///  <param name="settings"><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于配置新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///  如果这是 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  使用具有默认设置。
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  用于 <see cref="M:System.Xml.Xsl.XslCompiledTransform.Transform(System.String,System.Xml.XmlWriter)" />
    ///  方法，则应使用 <see cref="P:System.Xml.Xsl.XslCompiledTransform.OutputSettings" />
    ///  属性来获取 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  采用正确的设置的对象。
    ///  这样可确保创建 <see cref="T:System.Xml.XmlWriter" />
    ///  对象都有正确的输出设置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="builder" />
    ///  值为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DDN.mscorlib.DNStringBuilder; settings: DNXmlWriterSettings): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</summary>
    ///  <param name="output"><see cref="T:System.Xml.XmlWriter" />
    ///  你想要用作基础编写器的对象。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象封装指定 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="writer" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DNXmlWriter): DNXmlWriter; overload;
    ///<summary>
    ///  创建一个新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例使用指定 <see cref="T:System.Xml.XmlWriter" />
    ///  和 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///  <param name="output"><see cref="T:System.Xml.XmlWriter" />
    ///  你想要用作基础编写器的对象。
    ///</param>
    ///  <param name="settings"><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于配置新 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///  如果这是 <see langword="null" />
    ///  , 、 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  使用具有默认设置。
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  用于 <see cref="M:System.Xml.Xsl.XslCompiledTransform.Transform(System.String,System.Xml.XmlWriter)" />
    ///  方法，则应使用 <see cref="P:System.Xml.Xsl.XslCompiledTransform.OutputSettings" />
    ///  属性来获取 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  采用正确的设置的对象。
    ///  这样可确保创建 <see cref="T:System.Xml.XmlWriter" />
    ///  对象都有正确的输出设置。
    ///</param>
    ///<returns><see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象封装指定 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="writer" />
    ///  值是 <see langword="null" />
    ///  。
    ///</exception>
    {class} function Create(output: DNXmlWriter; settings: DNXmlWriterSettings): DNXmlWriter; overload;

  end;

  ///<summary>
  ///  表示一个写入器，该写入器提供一种快速、非缓存和只进方式以生成包含 XML 数据的流或文件。
  ///</summary>
  [DNTypeName('System.Xml.XmlWriter')]
  DNXmlWriter = interface(DDN.mscorlib.DNObject)
  ['{DEE5DBC9-DE85-3F72-8CA7-9B3A0951D0DB}']
  { getters & setters } 

    function get_Settings: DNXmlWriterSettings;
    function get_XmlLang: string;

  { methods } 

    ///<summary>
    ///  当在派生类中被重写时，写入指定的开始标记并将其与给定的命名空间关联起来。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  与元素关联的命名空间 URI。
    ///  如果此命名空间已在范围中并具有关联的前缀，则写入器也将自动写入该前缀。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartElement(localName: string; ns: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，写出具有指定的本地名称的开始标记。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartElement(localName: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，写入具有指定的本地名称、命名空间 URI 和值的属性。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  与属性关联的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  属性的值。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器的状态不是 <see langword="WriteState.Element" />
    ///  或编写器已关闭。
    ///</exception><exception cref="T:System.ArgumentException"><see langword="xml:space" />
    ///  或 <see langword="xml:lang" />
    ///  属性值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteAttributeString(localName: string; ns: string; value: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，写出具有指定的本地名称和值的属性。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="value">
    ///  属性的值。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器的状态不是 <see langword="WriteState.Element" />
    ///  或编写器已关闭。
    ///</exception><exception cref="T:System.ArgumentException"><see langword="xml:space" />
    ///  或 <see langword="xml:lang" />
    ///  属性值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteAttributeString(localName: string; value: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，写出具有指定的前缀、本地名称、命名空间 URI 和值的属性。
    ///</summary>
    ///  <param name="prefix">
    ///  属性的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  属性的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  属性的值。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器的状态不是 <see langword="WriteState.Element" />
    ///  或编写器已关闭。
    ///</exception><exception cref="T:System.ArgumentException"><see langword="xml:space" />
    ///  或 <see langword="xml:lang" />
    ///  属性值无效。
    ///</exception><exception cref="T:System.Xml.XmlException"><paramref name="localName" />
    ///  或 <paramref name="ns" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteAttributeString(prefix: string; localName: string; ns: string; value: string); overload;
    ///<summary>
    ///  写入具有指定本地名称和命名空间 URI 的属性的开头。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  属性的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartAttribute(localName: string; ns: string); overload;
    ///<summary>
    ///  写入具有指定本地名称的属性的开头。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartAttribute(localName: string); overload;
    ///<summary>
    ///  当在派生类中重写，将编码为指定的二进制字节 <see langword="BinHex" />
    ///  并写出结果文本。
    ///</summary>
    ///  <param name="buffer">
    ///  要进行编码的字节数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入字节的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字节数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭或处于错误状态。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  或 <paramref name="count" />
    ///  也不可小于零。
    ///  - 或 -
    ///  缓冲区长度减去 <paramref name="index" />
    ///  小于 <paramref name="count" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteBinHex(buffer: TArray<Byte>; index: Int32; count: Int32);
    ///<summary>
    ///  当在派生类中被重写时，将关闭此流和基础流。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  调用了来编写后的其他输出 <see langword="Close" />
    ///  已调用或者此调用的结果是无效的 XML 文档。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Close;
    ///<summary>
    ///  当在派生类中被重写时，写出指定的名称，确保它是符合 W3C XML 1.0 建议 (http://www.w3.org/TR/1998/REC-xml-19980210#NT-Name) 的有效 NmToken。
    ///</summary>
    ///  <param name="name">
    ///  要写入的名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  不是有效的 NmToken;或 <paramref name="name" />
    ///  是 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteNmToken(name: string);
    ///<summary>
    ///  当在派生类中被重写时，写出指定的名称，确保它是符合 W3C XML 1.0 建议 (http://www.w3.org/TR/1998/REC-xml-19980210#NT-Name) 的有效名称。
    ///</summary>
    ///  <param name="name">
    ///  要写入的名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  不是有效的 XML 名称;或 <paramref name="name" />
    ///  是 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteName(name: string);
    ///<summary>
    ///  写入对象值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的对象值。
    ///  注意   随着.NET Framework 3.5 的发布，此方法接受 <see cref="T:System.DateTimeOffset" />
    ///  作为参数。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭或处于错误状态。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: DDN.mscorlib.DNObject); overload;
    ///<summary>
    ///  写入 <see cref="T:System.String" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.String" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: string); overload;
    ///<summary>
    ///  写入 <see cref="T:System.DateTime" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.DateTime" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: DDN.mscorlib.DNDateTime); overload;
    ///<summary>
    ///  写入 <see cref="T:System.DateTimeOffset" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.DateTimeOffset" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: DDN.mscorlib.DNDateTimeOffset); overload;
    ///<summary>
    ///  写入 <see cref="T:System.Double" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.Double" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: Double); overload;
    ///<summary>
    ///  写入一个单精度浮点数。
    ///</summary>
    ///  <param name="value">
    ///  要写入的单精度浮点数。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: Single); overload;
    ///<summary>
    ///  写入 <see cref="T:System.Decimal" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.Decimal" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: DDN.mscorlib.DNDecimal); overload;
    ///<summary>
    ///  写入 <see cref="T:System.Int32" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.Int32" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: Int32); overload;
    ///<summary>
    ///  写入 <see cref="T:System.Int64" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.Int64" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: Int64); overload;
    ///<summary>
    ///  当在派生类中重写出在当前位置中找到的所有属性 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</summary>
    ///  <param name="reader"><see langword="XmlReader" />
    ///  要从其中复制属性。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性从 <see langword="XmlReader" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="reader" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  读取器未定位在 <see langword="element" />
    ///  , ，<see langword="attribute" />
    ///  或 <see langword="XmlDeclaration" />
    ///  节点。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteAttributes(reader: DNXmlReader; defattr: Boolean);
    ///<summary>
    ///  将所有内容从复制 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到编写器的对象。
    ///  位置 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  保持不变。
    ///</summary>
    ///  <param name="navigator">
    ///  要复制其内容的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="navigator" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteNode(navigator: DNXPathNavigator; defattr: Boolean); overload;
    ///<summary>
    ///  写入具有指定的本地名称和值的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="value">
    ///  元素的值。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="localName" />
    ///  值是 <see langword="null" />
    ///  或空字符串。
    ///  - 或 -
    ///  参数值不是有效的。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteElementString(localName: string; value: string); overload;
    ///<summary>
    ///  写入具有指定的本地名称、命名空间 URI 和值的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  与元素关联的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  元素的值。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="localName" />
    ///  值是 <see langword="null" />
    ///  或空字符串。
    ///  - 或 -
    ///  参数值不是有效的。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteElementString(localName: string; ns: string; value: string); overload;
    ///<summary>
    ///  写入具有指定的前缀、本地名称、命名空间 URI 和值的元素。
    ///</summary>
    ///  <param name="prefix">
    ///  元素的前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  元素的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  元素的值。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="localName" />
    ///  值是 <see langword="null" />
    ///  或空字符串。
    ///  - 或 -
    ///  参数值不是有效的。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteElementString(prefix: string; localName: string; ns: string; value: string); overload;
    ///<summary>
    ///  释放 <see cref="T:System.Xml.XmlWriter" />
    ///  类的当前实例所使用的所有资源。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Dispose;
    ///<summary>
    ///  异步写入版本为“1.0”的 XML 声明。
    ///</summary>
    ///<returns>
    ///  表示异步任务 <see langword="WriteStartDocument" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteStartDocumentAsync: DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  异步写入版本为“1.0”的 XML 声明和独立的属性。
    ///</summary>
    ///  <param name="standalone">
    ///  如果 <see langword="true" />
    ///  , ，它将写入"独立 = yes"; 如果 <see langword="false" />
    ///  , ，它将写入"独立 = no"。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteStartDocument" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteStartDocumentAsync(standalone: Boolean): DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  异步关闭任何打开的元素或属性并将写入器重新设置为起始状态。
    ///</summary>
    ///<returns>
    ///  表示异步任务 <see langword="WriteEndDocument" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteEndDocumentAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写入具有指定名称和可选属性的 DOCTYPE 声明。
    ///</summary>
    ///  <param name="name">
    ///  DOCTYPE 的名称。
    ///  它必须是非空的。
    ///</param>
    ///  <param name="pubid">
    ///  如果非 null 它还将写入 PUBLIC"pubid""sysid"其中 <paramref name="pubid" />
    ///  和 <paramref name="sysid" />
    ///  替换给定的参数的值。
    ///</param>
    ///  <param name="sysid">
    ///  如果 <paramref name="pubid" />
    ///  是 <see langword="null" />
    ///  和 <paramref name="sysid" />
    ///  为非 null 它将写入 SYSTEM"sysid"其中 <paramref name="sysid" />
    ///  将替换为此参数的值。
    ///</param>
    ///  <param name="subset">
    ///  如果非 null，则它写入 [subset]，其中 subset 替换为此自变量的值。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteDocType" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteDocTypeAsync(name: string; pubid: string; sysid: string; subset: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写入指定的开始标记并将其与给定的命名空间和前缀关联起来。
    ///</summary>
    ///  <param name="prefix">
    ///  元素的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  与元素关联的命名空间 URI。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteStartElement" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteStartElementAsync(prefix: string; localName: string; ns: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步关闭一个元素并弹出相应的命名空间范围。
    ///</summary>
    ///<returns>
    ///  表示异步任务 <see langword="WriteEndElement" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteEndElementAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步关闭一个元素并弹出相应的命名空间范围。
    ///</summary>
    ///<returns>
    ///  表示异步任务 <see langword="WriteFullEndElement" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteFullEndElementAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出一个包含指定文本的 &lt;![CDATA[...]]&gt; 块。
    ///</summary>
    ///  <param name="text">
    ///  要放置在 CDATA 块中的文本。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteCData" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteCDataAsync(text: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出一个包含指定文本的注释 &lt;!--...--&gt;。
    ///</summary>
    ///  <param name="text">
    ///  要放在注释内的文本。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteComment" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteCommentAsync(text: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出在名称和文本之间带有空格的处理指令如下︰ &lt;？ 命名 text？ &gt;。
    ///</summary>
    ///  <param name="name">
    ///  处理指令的名称。
    ///</param>
    ///  <param name="text">
    ///  要包括在处理指令中的文本。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteProcessingInstruction" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteProcessingInstructionAsync(name: string; text: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出实体引用作为 <see langword="&amp;name;" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  实体引用的名称。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteEntityRef" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteEntityRefAsync(name: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  为指定的 Unicode 字符值异步强制生成字符实体。
    ///</summary>
    ///  <param name="ch">
    ///  为其生成字符实体的 Unicode 字符。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteCharEntity" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteCharEntityAsync(ch: Char): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出给定的空白区域。
    ///</summary>
    ///  <param name="ws">
    ///  空格字符的字符串。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteWhitespace" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteWhitespaceAsync(ws: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写入给定的文本内容。
    ///</summary>
    ///  <param name="text">
    ///  要写入的文本。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteString" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteStringAsync(text: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  为代理项字符对异步生成并写入代理项字符实体。
    ///</summary>
    ///  <param name="lowChar">
    ///  低代理项。
    ///  它必须是介于 0xDC00 和 0xDFFF 之间的值。
    ///</param>
    ///  <param name="highChar">
    ///  高代理项。
    ///  它必须是介于 0xD800 和 0xDBFF 之间的值。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteSurrogateCharEntity" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteSurrogateCharEntityAsync(lowChar: Char; highChar: Char): DDN.mscorlib.DNTask;
    ///<summary>
    ///  以每次一个缓冲区的方式异步写入文本。
    ///</summary>
    ///  <param name="buffer">
    ///  包含要写入的文本的字符数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入文本的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字符数。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteChars" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteCharsAsync(buffer: TArray<Char>; index: Int32; count: Int32): DDN.mscorlib.DNTask;
    ///<summary>
    ///  从字符缓冲区手动异步写入原始标记。
    ///</summary>
    ///  <param name="buffer">
    ///  包含要写入的文本的字符数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的位置，指示要写入文本的起始位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字符数。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteRaw" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteRawAsync(buffer: TArray<Char>; index: Int32; count: Int32): DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  从字符串手动异步写入原始标记。
    ///</summary>
    ///  <param name="data">
    ///  包含要写入的文本的字符串。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteRaw" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteRawAsync(data: string): DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  将指定的二进制字节异步编码为 Base64 并写出结果文本。
    ///</summary>
    ///  <param name="buffer">
    ///  要进行编码的字节数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入字节的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字节数。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteBase64" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteBase64Async(buffer: TArray<Byte>; index: Int32; count: Int32): DDN.mscorlib.DNTask;
    ///<summary>
    ///  以异步方式将为指定的二进制字节编码 <see langword="BinHex" />
    ///  并写出结果文本。
    ///</summary>
    ///  <param name="buffer">
    ///  要进行编码的字节数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入字节的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字节数。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteBinHex" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteBinHexAsync(buffer: TArray<Byte>; index: Int32; count: Int32): DDN.mscorlib.DNTask;
    ///<summary>
    ///  将缓冲区中的所有内容异步刷新到基础流，并同时刷新基础流。
    ///</summary>
    ///<returns>
    ///  表示异步任务 <see langword="Flush" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function FlushAsync: DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出指定的名称，确保它是符合 W3C XML 1.0 建议 (http://www.w3.org/TR/1998/REC-xml-19980210#NT-Name) 的有效 NmToken。
    ///</summary>
    ///  <param name="name">
    ///  要写入的名称。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteNmToken" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteNmTokenAsync(name: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出指定的名称，确保它是符合 W3C XML 1.0 建议 (http://www.w3.org/TR/1998/REC-xml-19980210#NT-Name) 的有效名称。
    ///</summary>
    ///  <param name="name">
    ///  要写入的名称。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteName" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteNameAsync(name: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出命名空间限定的名称。
    ///  此方法查找位于给定命名空间范围内的前缀。
    ///</summary>
    ///  <param name="localName">
    ///  要写入的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  名称的命名空间 URI。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteQualifiedName" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteQualifiedNameAsync(localName: string; ns: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  异步写出在当前位置中找到的所有属性 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</summary>
    ///  <param name="reader"><see langword="XmlReader" />
    ///  要从其中复制属性。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性从 <see langword="XmlReader" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteAttributes" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteAttributesAsync(reader: DNXmlReader; defattr: Boolean): DDN.mscorlib.DNTask;
    ///<summary>
    ///  将所有内容从读取器异步复制到写入器并将读取器移动到下一个同级的开头。
    ///</summary>
    ///  <param name="reader">
    ///  要从其中进行读取的 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性从 <see langword="XmlReader" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteNode" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteNodeAsync(reader: DNXmlReader; defattr: Boolean): DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  以异步方式将所有内容从复制 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到编写器的对象。
    ///  位置 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  保持不变。
    ///</summary>
    ///  <param name="navigator">
    ///  要复制其内容的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteNode" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteNodeAsync(navigator: DNXPathNavigator; defattr: Boolean): DDN.mscorlib.DNTask; overload;
    ///<summary>
    ///  异步写入具有指定的前缀、本地名称、命名空间 URI 和值的元素。
    ///</summary>
    ///  <param name="prefix">
    ///  元素的前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  元素的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  元素的值。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteElementString" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteElementStringAsync(prefix: string; localName: string; ns: string; value: string): DDN.mscorlib.DNTask;
    ///<summary>
    ///  当在派生类中被重写时，写入版本为“1.0”的 XML 声明。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  这不是调用构造函数之后的第一个写入方法。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartDocument; overload;
    ///<summary>
    ///  当在派生类中被重写时，写入版本为“1.0”的 XML 声明和独立的属性。
    ///</summary>
    ///  <param name="standalone">
    ///  如果 <see langword="true" />
    ///  , ，它将写入"独立 = yes"; 如果 <see langword="false" />
    ///  , ，它将写入"独立 = no"。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  这不是调用构造函数之后的第一个写入方法。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartDocument(standalone: Boolean); overload;
    ///<summary>
    ///  当在派生类中被重写时，关闭任何打开的元素或属性并将写入器重新设置为起始状态。
    ///</summary>
    ///<exception cref="T:System.ArgumentException">
    ///  XML 文档是无效的。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteEndDocument;
    ///<summary>
    ///  当在派生类中被重写时，写出具有指定名称和可选属性的 DOCTYPE 声明。
    ///</summary>
    ///  <param name="name">
    ///  DOCTYPE 的名称。
    ///  它必须是非空的。
    ///</param>
    ///  <param name="pubid">
    ///  如果非 null 它还将写入 PUBLIC"pubid""sysid"其中 <paramref name="pubid" />
    ///  和 <paramref name="sysid" />
    ///  替换给定的参数的值。
    ///</param>
    ///  <param name="sysid">
    ///  如果 <paramref name="pubid" />
    ///  是 <see langword="null" />
    ///  和 <paramref name="sysid" />
    ///  为非 null 它将写入 SYSTEM"sysid"其中 <paramref name="sysid" />
    ///  将替换为此参数的值。
    ///</param>
    ///  <param name="subset">
    ///  如果非 null，则它写入 [subset]，其中 subset 替换为此自变量的值。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  Prolog 外部上 （在根元素中） 调用此方法。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  值为 <paramref name="name" />
    ///  将导致无效的 XML。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteDocType(name: string; pubid: string; sysid: string; subset: string);
    ///<summary>
    ///  当在派生类中被重写时，写入指定的开始标记并将其与给定的命名空间和前缀关联起来。
    ///</summary>
    ///  <param name="prefix">
    ///  元素的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  与元素关联的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  编写器已关闭。
    ///</exception><exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartElement(prefix: string; localName: string; ns: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，关闭一个元素并弹出相应的命名空间范围。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  这会导致无效的 XML 文档。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteEndElement;
    ///<summary>
    ///  当在派生类中被重写时，关闭一个元素并弹出相应的命名空间范围。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteFullEndElement;
    ///<summary>
    ///  当在派生类中被重写时，写入具有指定的前缀、本地名称和命名空间 URI 的属性的开头。
    ///</summary>
    ///  <param name="prefix">
    ///  属性的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  属性的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.Text.EncoderFallbackException">
    ///  是有效的 XML 字符但不是有效的输出编码的缓冲区中没有一个字符。
    ///  例如，如果输出编码为 ASCII，您应仅用于从 0 到 127 范围的字符元素和属性名称。
    ///  无效的字符可能是此方法的参数中或在以前已写入到缓冲区的方法的参数。
    ///  此类字符都转义字符实体引用在可能的情况 （例如，在文本节点或属性值）。
    ///  但是，元素和属性名称、 注释、 处理指令或 CDATA 节中不允许的字符实体引用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteStartAttribute(prefix: string; localName: string; ns: string); overload;
    ///<summary>
    ///  当在派生类中重写时，关闭上一个 <see cref="M:System.Xml.XmlWriter.WriteStartAttribute(System.String,System.String)" />
    ///  调用。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteEndAttribute;
    ///<summary>
    ///  当在派生类中被重写时，写出包含指定文本的 &lt;![CDATA[...]]&gt; 块。
    ///</summary>
    ///  <param name="text">
    ///  要放置在 CDATA 块中的文本。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该文本会导致格式不正确的 XML 文档。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteCData(text: string);
    ///<summary>
    ///  当在派生类中被重写时，写出包含指定文本的注释 &lt;!--...--&gt;。
    ///</summary>
    ///  <param name="text">
    ///  要放在注释内的文本。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该文本会导致一个格式正确的 XML 文档。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteComment(text: string);
    ///<summary>
    ///  当在派生类中重写，写出在名称和文本之间带有空格的处理指令，如下所示︰ &lt;？ 命名 text？ &gt;。
    ///</summary>
    ///  <param name="name">
    ///  处理指令的名称。
    ///</param>
    ///  <param name="text">
    ///  要包括在处理指令中的文本。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该文本会导致格式不正确的 XML 文档。
    ///  <paramref name="name" />
    ///  为 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///  此方法用于创建 XML 声明后的 <see cref="M:System.Xml.XmlWriter.WriteStartDocument" />
    ///  已调用。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteProcessingInstruction(name: string; text: string);
    ///<summary>
    ///  当在派生类中重写出实体引用作为 <see langword="&amp;name;" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  实体引用的名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteEntityRef(name: string);
    ///<summary>
    ///  当在派生类中被重写时，为指定的 Unicode 字符值强制生成字符实体。
    ///</summary>
    ///  <param name="ch">
    ///  为其生成字符实体的 Unicode 字符。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  在代理项对字符范围的字符是 <see langword="0xd800" />
    ///  - <see langword="0xdfff" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteCharEntity(ch: Char);
    ///<summary>
    ///  当在派生类中被重写时，写出给定的空白区域。
    ///</summary>
    ///  <param name="ws">
    ///  空格字符的字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  该字符串包含非空白字符。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteWhitespace(ws: string);
    ///<summary>
    ///  当在派生类中被重写时，写入给定的文本内容。
    ///</summary>
    ///  <param name="text">
    ///  要写入的文本。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  文本字符串包含无效的代理项对。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteString(text: string);
    ///<summary>
    ///  当在派生类中被重写时，为代理项字符对生成并写入代理项字符实体。
    ///</summary>
    ///  <param name="lowChar">
    ///  低代理项。
    ///  它必须是介于 0xDC00 和 0xDFFF 之间的值。
    ///</param>
    ///  <param name="highChar">
    ///  高代理项。
    ///  它必须是介于 0xD800 和 0xDBFF 之间的值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  传递了无效的代理项字符对。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteSurrogateCharEntity(lowChar: Char; highChar: Char);
    ///<summary>
    ///  当在派生类中被重写时，以每次一个缓冲区的方式写入文本。
    ///</summary>
    ///  <param name="buffer">
    ///  包含要写入的文本的字符数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入文本的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字符数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  或 <paramref name="count" />
    ///  也不可小于零。
    ///  - 或 -
    ///  缓冲区长度减 <paramref name="index" />
    ///  是小于 <paramref name="count" />
    ///  ; 代理项对字符中的调用结果被拆分或写入无效的代理项对。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="buffer" />
    ///  参数值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteChars(buffer: TArray<Char>; index: Int32; count: Int32);
    ///<summary>
    ///  当在派生类中被重写时，从字符缓冲区手动写入原始标记。
    ///</summary>
    ///  <param name="buffer">
    ///  包含要写入的文本的字符数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中的位置，指示要写入文本的起始位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字符数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  或 <paramref name="count" />
    ///  也不可小于零。
    ///  - 或 -
    ///  缓冲区长度减去 <paramref name="index" />
    ///  小于 <paramref name="count" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteRaw(buffer: TArray<Char>; index: Int32; count: Int32); overload;
    ///<summary>
    ///  当在派生类中被重写时，从字符串手动写入原始标记。
    ///</summary>
    ///  <param name="data">
    ///  包含要写入的文本的字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="data" />
    ///  为 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteRaw(data: string); overload;
    ///<summary>
    ///  当在派生类中被重写时，将指定的二进制字节编码为 Base64 并写出结果文本。
    ///</summary>
    ///  <param name="buffer">
    ///  要进行编码的字节数组。
    ///</param>
    ///  <param name="index">
    ///  缓冲区中指示要写入字节的起始位置的位置。
    ///</param>
    ///  <param name="count">
    ///  要写入的字节数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="buffer" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  或 <paramref name="count" />
    ///  也不可小于零。
    ///  - 或 -
    ///  缓冲区长度减去 <paramref name="index" />
    ///  小于 <paramref name="count" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteBase64(buffer: TArray<Byte>; index: Int32; count: Int32);
    ///<summary>
    ///  当在派生类中被重写时，将缓冲区中的所有内容刷新到基础流，并同时刷新基础流。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure Flush;
    ///<summary>
    ///  当在派生类中被重写时，返回在当前命名空间范围中为该命名空间 URI 定义的最近的前缀。
    ///</summary>
    ///  <param name="ns">
    ///  要查找其前缀的命名空间 URI。
    ///</param>
    ///<returns>
    ///  匹配的前缀或 <see langword="null" />
    ///  如果没有匹配的命名空间在当前作用域中找到的 URI。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="ns" />
    ///  为 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    function LookupPrefix(ns: string): string;
    ///<summary>
    ///  当在派生类中被重写时，写出命名空间限定的名称。
    ///  此方法查找位于给定命名空间范围内的前缀。
    ///</summary>
    ///  <param name="localName">
    ///  要写入的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  名称的命名空间 URI。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="localName" />
    ///  为 <see langword="null" />
    ///  或 <see langword="String.Empty" />
    ///  。
    ///  <paramref name="localName" />
    ///  不是有效的名称。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteQualifiedName(localName: string; ns: string);
    ///<summary>
    ///  写入 <see cref="T:System.Boolean" />
    ///  值。
    ///</summary>
    ///  <param name="value">
    ///  要写入的 <see cref="T:System.Boolean" />
    ///  值。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的值无效。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteValue(value: Boolean); overload;
    ///<summary>
    ///  当在派生类中被重写时，将全部内容从读取器复制到写入器并将读取器移动到下一个同级的开始位置。
    ///</summary>
    ///  <param name="reader">
    ///  要从其中进行读取的 <see cref="T:System.Xml.XmlReader" />
    ///  。
    ///</param>
    ///  <param name="defattr"><see langword="true" />
    ///  若要复制默认特性从 <see langword="XmlReader" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="reader" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="reader" />
    ///  包含无效字符。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    procedure WriteNode(reader: DNXmlReader; defattr: Boolean); overload;
    ///<summary>
    ///  异步写出具有指定前缀、本地名称、命名空间 URI 和值的属性。
    ///</summary>
    ///  <param name="prefix">
    ///  属性的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="ns">
    ///  属性的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  属性的值。
    ///</param>
    ///<returns>
    ///  表示异步任务 <see langword="WriteAttributeString" />
    ///  操作。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  异步方法调用没有设置 <see cref="P:System.Xml.XmlWriterSettings.Async" />
    ///  标记，用于 <see langword="true" />
    ///  。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"集 XmlWriterSettings.Async 为 true，如果您想要使用异步方法。"
    ///</exception>
    function WriteAttributeStringAsync(prefix: string; localName: string; ns: string; value: string): DDN.mscorlib.DNTask;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于创建此 <see cref="T:System.Xml.XmlWriter" />
    ///  实例的 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象，用于创建此编写器实例。
    ///  如果此编写器不使用创建 <see cref="Overload:System.Xml.XmlWriter.Create" />
    ///  方法，则此属性返回 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property Settings: DNXmlWriterSettings read get_Settings;
    ///<summary>
    ///  当在派生类中重写，获取当前 <see langword="xml:lang" />
    ///  作用域。
    ///</summary>
    ///<returns>
    ///  当前 <see langword="xml:lang" />
    ///  范围。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XmlWriter" />
    ///  上一个异步操作完成之前调用方法。
    ///  在这种情况下， <see cref="T:System.InvalidOperationException" />
    ///  引发并显示消息"异步操作正在进行。"
    ///</exception>
    property XmlLang: string read get_XmlLang;
  end;

  TDNXmlWriter = class(TDNGenericImport<DNXmlWriterClass, DNXmlWriter>) end;

  //-------------namespace: System.Xml----------------
  DNXmlWriterSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8666F90C-F5C9-5F87-910D-1BD914FBFB3C}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNXmlWriterSettings;

  end;

  ///<summary>
  ///  指定的功能以支持上的一组 <see cref="T:System.Xml.XmlWriter" />
  ///  创建的对象 <see cref="Overload:System.Xml.XmlWriter.Create" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.Xml.XmlWriterSettings')]
  DNXmlWriterSettings = interface(DDN.mscorlib.DNObject)
  ['{FF4A400D-DA06-355E-86B7-9B296810A674}']
  { getters & setters } 

    function get_Async: Boolean;
    procedure set_Async(value: Boolean);
    function get_Encoding: DDN.mscorlib.DNEncoding;
    procedure set_Encoding(value: DDN.mscorlib.DNEncoding);
    function get_OmitXmlDeclaration: Boolean;
    procedure set_OmitXmlDeclaration(value: Boolean);
    function get_NewLineChars: string;
    procedure set_NewLineChars(value: string);
    function get_Indent: Boolean;
    procedure set_Indent(value: Boolean);
    function get_IndentChars: string;
    procedure set_IndentChars(value: string);
    function get_NewLineOnAttributes: Boolean;
    procedure set_NewLineOnAttributes(value: Boolean);
    function get_CloseOutput: Boolean;
    procedure set_CloseOutput(value: Boolean);
    function get_CheckCharacters: Boolean;
    procedure set_CheckCharacters(value: Boolean);
    function get_WriteEndDocumentOnClose: Boolean;
    procedure set_WriteEndDocumentOnClose(value: Boolean);
    function get_DoNotEscapeUriAttributes: Boolean;
    procedure set_DoNotEscapeUriAttributes(value: Boolean);

  { methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  实例的副本。
    ///</summary>
    ///<returns>
    ///  克隆 <see cref="T:System.Xml.XmlWriterSettings" />
    ///  对象。
    ///</returns>
    function Clone: DNXmlWriterSettings;
    ///<summary>
    ///  将设置类的成员重置为各自的默认值。
    ///</summary>
    procedure Reset;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，该值指示是否异步 <see cref="T:System.Xml.XmlWriter" />
    ///  方法可对特定 <see cref="T:System.Xml.XmlWriter" />
    ///  实例。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果可以使用异步方法，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Async: Boolean read get_Async write set_Async;
    ///<summary>
    ///  获取或设置要使用的文本编码的类型。
    ///</summary>
    ///<returns>
    ///  要使用的文本编码。
    ///  默认值为 <see langword="Encoding.UTF8" />
    ///  。
    ///</returns>
    property Encoding: DDN.mscorlib.DNEncoding read get_Encoding write set_Encoding;
    ///<summary>
    ///  获取或设置一个值，该值指示是否省略 XML 声明。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要忽略 XML 声明中;否则为 <see langword="false" />
    ///  。
    ///  默认值是 <see langword="false" />
    ///  , ，即写入 XML 声明。
    ///</returns>
    property OmitXmlDeclaration: Boolean read get_OmitXmlDeclaration write set_OmitXmlDeclaration;
    ///<summary>
    ///  获取或设置要用于换行符的字符串。
    ///</summary>
    ///<returns>
    ///  要用于换行符的字符串。
    ///  它可以设置为任何字符串值。
    ///  但是，为了确保 XML 有效，应该只指定有效的空格字符，例如空格、制表符、回车符或换行符。
    ///  默认值是 \r\n （回车符、 换行符）。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  分配给值 <see cref="P:System.Xml.XmlWriterSettings.NewLineChars" />
    ///  是 <see langword="null" />
    ///  。
    ///</exception>
    property NewLineChars: string read get_NewLineChars write set_NewLineChars;
    ///<summary>
    ///  获取或设置指示是否缩进元素的值。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要在新行和缩进; 上写入单独的元素否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Indent: Boolean read get_Indent write set_Indent;
    ///<summary>
    ///  获取或设置缩进时要使用的字符串。
    ///  使用此设置时 <see cref="P:System.Xml.XmlWriterSettings.Indent" />
    ///  属性设置为 <see langword="true" />
    ///  。
    ///</summary>
    ///<returns>
    ///  缩进时要使用的字符串。
    ///  它可以设置为任何字符串值。
    ///  但是，为了确保 XML 有效，应该只指定有效的空格字符，例如空格、制表符、回车符或换行符。
    ///  默认值为两个空格。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  分配给值 <see cref="P:System.Xml.XmlWriterSettings.IndentChars" />
    ///  是 <see langword="null" />
    ///  。
    ///</exception>
    property IndentChars: string read get_IndentChars write set_IndentChars;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在新行上写入属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要在单独的行; 上编写属性否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///  此设置没有时生效 <see cref="P:System.Xml.XmlWriterSettings.Indent" />
    ///  属性值是 <see langword="false" />
    ///  。
    ///  当 <see cref="P:System.Xml.XmlWriterSettings.NewLineOnAttributes" />
    ///  设置为 <see langword="true" />
    ///  , ，每个属性都会预先挂起一个新行和一层额外的缩进。
    ///</returns>
    property NewLineOnAttributes: Boolean read get_NewLineOnAttributes write set_NewLineOnAttributes;
    ///<summary>
    ///  获取或设置一个值，该值指示是否 <see cref="T:System.Xml.XmlWriter" />
    ///  也应该关闭基础流或 <see cref="T:System.IO.TextWriter" />
    ///  时 <see cref="M:System.Xml.XmlWriter.Close" />
    ///  调用方法。
    ///</summary>
    ///<returns><see langword="true" />
    ///  此外应该关闭基础流或 <see cref="T:System.IO.TextWriter" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property CloseOutput: Boolean read get_CloseOutput write set_CloseOutput;
    ///<summary>
    ///  获取或设置一个值，该值指示的 XML 编写器应检查以确保文档中的所有字符都符合 W3C 的"2.2 字符"一节 XML 1.0 Recommendation。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要进行字符检查;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property CheckCharacters: Boolean read get_CheckCharacters write set_CheckCharacters;
    ///<summary>
    ///  获取或设置一个值，该值指示是否 <see cref="T:System.Xml.XmlWriter" />
    ///  将添加结束标记对所有未关闭元素标记时 <see cref="M:System.Xml.XmlWriter.Close" />
    ///  调用方法。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果所有未关闭的元素标记将关闭否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property WriteEndDocumentOnClose: Boolean read get_WriteEndDocumentOnClose write set_WriteEndDocumentOnClose;
    ///<summary>
    ///  获取或设置一个值，该值指示是否 <see cref="T:System.Xml.XmlWriter" />
    ///  未转义 URI 属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.XmlWriter" />
    ///  未转义 URI 属性; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property DoNotEscapeUriAttributes: Boolean read get_DoNotEscapeUriAttributes write set_DoNotEscapeUriAttributes;
  end;

  TDNXmlWriterSettings = class(TDNGenericImport<DNXmlWriterSettingsClass, DNXmlWriterSettings>) end;

  //-------------namespace: System.Xml.XPath----------------
  DNXPathExpressionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F66C6659-D159-5BE6-A5CE-CAA051FE3D65}']
  { static methods } 

    ///<summary>
    ///  编译指定的 XPath 表达式并返回表示 XPath 表达式的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式参数不是有效的 XPath 表达式。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    {class} function Compile(xpath: string): DNXPathExpression; overload;
    ///<summary>
    ///  编译时指定的 XPath 表达式不包含 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  为命名空间解析，并返回指定对象 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  表示 XPath 表达式的对象。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///  <param name="nsResolver">
    ///  实现的对象 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  命名空间解析的接口。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式参数不是有效的 XPath 表达式。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    {class} function Compile(xpath: string; nsResolver: DNIXmlNamespaceResolver): DNXPathExpression; overload;

  end;

  ///<summary>
  ///  提供一个类型化的类，表示已编译的 XPath 表达式。
  ///</summary>
  [DNTypeName('System.Xml.XPath.XPathExpression')]
  DNXPathExpression = interface(DDN.mscorlib.DNObject)
  ['{B2D5CCCE-B400-3DC6-B310-EB894C049E94}']
  { getters & setters } 

    function get_Expression: string;

  { methods } 

    ///<summary>
    ///  当在派生类中重写时按照指定的 XPath 表达式选择的节点排序 <see cref="T:System.Collections.IComparer" />
    ///  对象。
    ///</summary>
    ///  <param name="expr">
    ///  一个表示排序关键字的对象。
    ///  这可以是节点的 <see langword="string" />
    ///  值，还可以是具有已编译 XPath 表达式的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</param>
    ///  <param name="comparer"><see cref="T:System.Collections.IComparer" />
    ///  提供特定的数据类型比较用于比较两个对象是否相等的对象。
    ///</param>
    ///<exception cref="T:System.Xml.XPath.XPathException"><see cref="T:System.Xml.XPath.XPathExpression" />
    ///  或排序关键字包括前缀，并且未提供 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  或未在所提供的 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  中找到该前缀。
    ///</exception>
    procedure AddSort(expr: DDN.mscorlib.DNObject; comparer: DDN.mscorlib.DNIComparer);
    ///<summary>
    ///  当在派生类中重写时返回此克隆 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个新 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</returns>
    function Clone: DNXPathExpression;
    ///<summary>
    ///  在派生类中被重写时，指定要用于命名空间解析的 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  对象。
    ///</summary>
    ///  <param name="nsManager">
    ///  要用于命名空间解析的 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.Xml.XPath.XPathException"><see cref="T:System.Xml.XmlNamespaceManager" />
    ///  对象参数不是从 <see cref="T:System.Xml.XmlNamespaceManager" />
    ///  类派生的。
    ///</exception>
    procedure SetContext(nsManager: DNXmlNamespaceManager); overload;
    ///<summary>
    ///  在派生类中被重写时，指定要用于命名空间解析的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象。
    ///</summary>
    ///  <param name="nsResolver">
    ///  实现 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  接口以用于命名空间解析的对象。
    ///</param>
    ///<exception cref="T:System.Xml.XPath.XPathException"><see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象参数不派生自 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  。
    ///</exception>
    procedure SetContext(nsResolver: DNIXmlNamespaceResolver); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  当在派生类中重写时获取 <see langword="string" />
    ///  表示形式 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  。
    ///</summary>
    ///<returns><see langword="string" />
    ///  的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  表示形式。
    ///</returns>
    property Expression: string read get_Expression;
  end;

  TDNXPathExpression = class(TDNGenericImport<DNXPathExpressionClass, DNXPathExpression>) end;

  //-------------namespace: System.Xml.XPath----------------
  DNXPathNavigatorClass = interface(DNObjectClass)
  ['{ED2BA7FB-0878-504B-988D-16D04F1775E3}']
  { static getter & setter } 

    {class} function get_NavigatorComparer: DDN.mscorlib.DNIEqualityComparer;

  { static propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEqualityComparer" />
    ///  ，它用于 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象的相等比较。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.IEqualityComparer" />
    ///  ，它用于 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象的相等比较。
    ///</returns>
    {class} property NavigatorComparer: DDN.mscorlib.DNIEqualityComparer read get_NavigatorComparer;
  end;

  ///<summary>
  ///  为定位和编辑 XML 数据提供游标模型。
  ///</summary>
  [DNTypeName('System.Xml.XPath.XPathNavigator')]
  DNXPathNavigator = interface(DNObject)
  ['{BE86B874-6C3C-3FC2-A6B3-4DA73CA20540}']
  { getters & setters } 

    function get_IsNode: Boolean;
    function get_TypedValue: DDN.mscorlib.DNObject;
    function get_ValueType: DDN.mscorlib.DNType;
    function get_ValueAsBoolean: Boolean;
    function get_ValueAsDateTime: DDN.mscorlib.DNDateTime;
    function get_ValueAsDouble: Double;
    function get_ValueAsInt: Int32;
    function get_ValueAsLong: Int64;
    function get_NameTable: DNXmlNameTable;
    function get_NodeType: DNXPathNodeType;
    function get_LocalName: string;
    function get_Name: string;
    function get_NamespaceURI: string;
    function get_Prefix: string;
    function get_BaseURI: string;
    function get_IsEmptyElement: Boolean;
    function get_XmlLang: string;
    function get_UnderlyingObject: DDN.mscorlib.DNObject;
    function get_HasAttributes: Boolean;
    function get_HasChildren: Boolean;
    function get_SchemaInfo: DNIXmlSchemaInfo;
    function get_CanEdit: Boolean;
    function get_OuterXml: string;
    procedure set_OuterXml(value: string);
    function get_InnerXml: string;
    procedure set_InnerXml(value: string);
    function get_Value: string;

  { methods } 

    ///<summary>
    ///  获取当前节点的文本值。
    ///</summary>
    ///<returns>
    ///  一个 <see langword="string" />
    ///  ，其中包含当前节点的文本值。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  设置当前节点的值。
    ///</summary>
    ///  <param name="value">
    ///  节点的新值。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  值参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  位于根节点（即命名空间节点）上，或指定的值无效。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure SetValue(value: string);
    ///<summary>
    ///  设置当前节点的类型化值。
    ///</summary>
    ///  <param name="typedValue">
    ///  节点的新类型化值。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持指定的对象类型。
    ///</exception><exception cref="T:System.ArgumentNullException">
    ///  指定的值不能为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  未定位在元素或属性节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure SetTypedValue(typedValue: DDN.mscorlib.DNObject);
    ///<summary>
    ///  获取当前节点的值作为<see cref="T:System.Type" />
    ///  指定，使用<see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  指定用来解析命名空间前缀的对象。
    ///</summary>
    ///  <param name="returnType"><see cref="T:System.Type" />
    ///  返回为当前节点的值。
    ///</param>
    ///  <param name="nsResolver">
    ///  用于解析命名空间前缀的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  形式的当前节点的值<see cref="T:System.Type" />
    ///  请求。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的值不是目标类型的正确格式。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception>
    function ValueAs(returnType: DDN.mscorlib.DNType; nsResolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回一份 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  这份 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</returns>
    function CreateNavigator: DNXPathNavigator;
    ///<summary>
    ///  返回 <see cref="T:System.Xml.XmlReader" />
    ///  对象，该对象包含当前节点及其子节点。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlReader" />
    ///  对象，该对象包含当前节点及其子节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不会在元素节点或根节点上进行定位。
    ///</exception>
    function ReadSubtree: DNXmlReader;
    ///<summary>
    ///  将当前节点及其子节点流式传输到指定的 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</summary>
    ///  <param name="writer">
    ///  要流式传输至的 <see cref="T:System.Xml.XmlWriter" />
    ///  对象。
    ///</param>
    procedure WriteSubtree(writer: DNXmlWriter);
    ///<summary>
    ///  获取具有指定本地名称和命名空间 URI 的属性的值。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///  <paramref name="localName" />
    ///  是区分大小写。
    ///</param>
    ///  <param name="namespaceURI">
    ///  属性的命名空间 URI。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，其中包含指定属性的值 <see cref="F:System.String.Empty" />
    ///  如果未找到一个匹配的特性，或者如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不定位在元素节点上。
    ///</returns>
    function GetAttribute(localName: string; namespaceURI: string): string;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到具有匹配的本地名称和命名空间 URI 的属性。
    ///</summary>
    ///  <param name="localName">
    ///  属性的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 的属性; <see langword="null" />
    ///  空命名空间。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到的属性; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToAttribute(localName: string; namespaceURI: string): Boolean;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到具有指定的命名空间前缀的命名空间节点。
    ///</summary>
    ///  <param name="name">
    ///  命名空间节点的命名空间前缀。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到指定的命名空间; <see langword="false" />
    ///  如果找不到匹配的命名空间节点，或者如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不定位在元素节点上。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNamespace(name: string): Boolean;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  至当前节点的第一个命名空间节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到第一个命名空间节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToFirstNamespace: Boolean; overload;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到下一步的命名空间节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个命名空间节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNextNamespace: Boolean; overload;
    ///<summary>
    ///  将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移至当前节点的第一个同级节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到当前节点的第一个同级节点 <see langword="false" />
    ///  如果没有第一个同级或者 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前定位在属性节点上。
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  已位于上的第一个同级 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  将返回 <see langword="true" />
    ///  并不会移动其位置。
    ///  如果 <see cref="M:System.Xml.XPath.XPathNavigator.MoveToFirst" />
    ///  返回 <see langword="false" />
    ///  因为没有第一个同级，或如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前定位在特性上的位置， <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  保持不变。
    ///</returns>
    function MoveToFirst: Boolean;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  至当前节点所属的根节点。
    ///</summary>
    procedure MoveToRoot;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到具有本地名称和命名空间 URI 指定的子节点。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的子节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  要移动到的子节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到的子节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToChild(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到的子节点 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  指定。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  要移动到的子节点。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到的子节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToChild(&type: DNXPathNodeType): Boolean; overload;
    ///<summary>
    ///  将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到按文档顺序指定了其本地名称或命名空间 URI 的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///<returns>
    ///  如果成功移动了 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToFollowing(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  按文档顺序将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到指定的边界内具有指定的本地名称和命名空间 URI 的元素。
    ///</summary>
    ///  <param name="localName">
    ///  元素的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  元素的命名空间 URI。
    ///</param>
    ///  <param name="end"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在搜索下一个元素时当前 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不会越过的元素边界上。
    ///</param>
    ///<returns>
    ///  如果成功移动了 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToFollowing(localName: string; namespaceURI: string; &end: DNXPathNavigator): Boolean; overload;
    ///<summary>
    ///  将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到按文档顺序指定的 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  的以下元素。
    ///</summary>
    ///  <param name="type">
    ///  元素的 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///<see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  不能为 <see cref="F:System.Xml.XPath.XPathNodeType.Attribute" />
    ///  或 <see cref="F:System.Xml.XPath.XPathNodeType.Namespace" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动成功，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToFollowing(&type: DNXPathNodeType): Boolean; overload;
    ///<summary>
    ///  按文档顺序将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到指定边界内的指定 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  的下一个元素。
    ///</summary>
    ///  <param name="type">
    ///  元素的 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///<see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  不能是 <see cref="F:System.Xml.XPath.XPathNodeType.Attribute" />
    ///  或 <see cref="F:System.Xml.XPath.XPathNodeType.Namespace" />
    ///  。
    ///</param>
    ///  <param name="end"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在搜索下一个元素时当前 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不会越过的元素边界上。
    ///</param>
    ///<returns>
    ///  如果成功移动了 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveToFollowing(&type: DNXPathNodeType; &end: DNXPathNavigator): Boolean; overload;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  具有本地名称和命名空间 URI 指定的下一个同级节点。
    ///</summary>
    ///  <param name="localName">
    ///  要移动到的下一个同级节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  要移动到的下一个同级节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个同级节点; <see langword="false" />
    ///  如果没有其他同级或 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前定位在属性节点上。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNext(localName: string; namespaceURI: string): Boolean; overload;
    ///<summary>
    ///  将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  至相匹配的当前节点的下一个同级节点 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  指定。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  将移动到的同级节点。
    ///</param>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个同级节点，则为 <see langword="true" />
    ///  ；如果没有更多同级节点或如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前位于属性节点上，则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNext(&type: DNXPathNodeType): Boolean; overload;
    ///<summary>
    ///  确定是否指定 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  是当前的后代 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</summary>
    ///  <param name="nav"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  要与此 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  是当前的后代 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsDescendant(nav: DNXPathNavigator): Boolean;
    ///<summary>
    ///  编译一个表示 XPath 表达式的字符串，并返回 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</summary>
    ///  <param name="xpath">
    ///  表示 XPath 表达式的字符串。
    ///</param>
    ///<returns><see cref="T:System.Xml.XPath.XPathExpression" />
    ///  表示 XPath 表达式的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="xpath" />
    ///  参数包含不是有效的 XPath 表达式。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Compile(xpath: string): DNXPathExpression;
    ///<summary>
    ///  使用指定的 XPath 查询在 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  中选择单个节点。
    ///</summary>
    ///  <param name="xpath">
    ///  表示 XPath 表达式的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，其中包含指定的 XPath 查询的第一个匹配节点；如果没有查询结果，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  在 XPath 查询中遇到了错误或 XPath 表达式的返回类型不是一个节点。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 查询无效。
    ///</exception>
    function SelectSingleNode(xpath: string): DNXPathNavigator; overload;
    ///<summary>
    ///  通过指定的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象使用指定的 XPath 查询在 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  中选择单个节点，以解析命名空间前缀。
    ///</summary>
    ///  <param name="xpath">
    ///  表示 XPath 表达式的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="resolver"><see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象用于解析 XPath 查询中的命名空间前缀。
    ///</param>
    ///<returns>
    ///  一个包含指定 XPath 查询的第一个匹配节点的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象；如果没有查询结果，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  在 XPath 查询中遇到了错误或 XPath 表达式的返回类型不是一个节点。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 查询无效。
    ///</exception>
    function SelectSingleNode(xpath: string; resolver: DNIXmlNamespaceResolver): DNXPathNavigator; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象在 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  中选择单个节点。
    ///</summary>
    ///  <param name="expression"><see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象，其中包含已编译的 XPath 查询。
    ///</param>
    ///<returns><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，其中包含指定的 XPath 查询的第一个匹配节点；如果没有查询结果，则为 <see langword="null" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  在 XPath 查询中遇到了错误或 XPath 表达式的返回类型不是一个节点。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 查询无效。
    ///</exception>
    function SelectSingleNode(expression: DNXPathExpression): DNXPathNavigator; overload;
    ///<summary>
    ///  使用指定的 XPath 表达式选择节点集。
    ///</summary>
    ///  <param name="xpath">
    ///  表示 XPath 表达式的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns>
    ///  指向所选节点集的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式包含错误或其返回类型不是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Select(xpath: string): DNXPathNodeIterator; overload;
    ///<summary>
    ///  使用指定的 XPath 表达式与指定用来解析命名空间前缀的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象选择节点集。
    ///</summary>
    ///  <param name="xpath">
    ///  表示 XPath 表达式的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="resolver">
    ///  用于解析命名空间前缀的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  指向所选节点集的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式包含错误或其返回类型不是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Select(xpath: string; resolver: DNIXmlNamespaceResolver): DNXPathNodeIterator; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  来选择节点集。
    ///</summary>
    ///  <param name="expr">
    ///  包含已编译的 XPath 查询的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  指向选定节点集的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式包含错误或其返回类型不是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Select(expr: DNXPathExpression): DNXPathNodeIterator; overload;
    ///<summary>
    ///  计算指定的 XPath 表达式并返回类型化结果。
    ///</summary>
    ///  <param name="xpath">
    ///  表示可以计算的 XPath 表达式的字符串。
    ///</param>
    ///<returns>
    ///  表达式结果（布尔值、数字、字符串或节点集）。
    ///  这分别映射到 <see cref="T:System.Boolean" />
    ///  、<see cref="T:System.Double" />
    ///  、<see cref="T:System.String" />
    ///  或 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式的返回类型是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Evaluate(xpath: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  计算指定的 XPath 表达式并返回类型化结果，以使用指定的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象解析 XPath 表达式中的命名空间前缀。
    ///</summary>
    ///  <param name="xpath">
    ///  表示可以计算的 XPath 表达式的字符串。
    ///</param>
    ///  <param name="resolver">
    ///  用来解析 XPath 表达式中的命名空间前缀的 <see cref="T:System.Xml.IXmlNamespaceResolver" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  表达式结果（布尔值、数字、字符串或节点集）。
    ///  这分别映射到 <see cref="T:System.Boolean" />
    ///  、<see cref="T:System.Double" />
    ///  、<see cref="T:System.String" />
    ///  或 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式的返回类型是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Evaluate(xpath: string; resolver: DNIXmlNamespaceResolver): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  计算 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  并返回类型化结果。
    ///</summary>
    ///  <param name="expr">
    ///  可计算的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  。
    ///</param>
    ///<returns>
    ///  表达式结果（布尔值、数字、字符串或节点集）。
    ///  这分别映射到 <see cref="T:System.Boolean" />
    ///  、<see cref="T:System.Double" />
    ///  、<see cref="T:System.String" />
    ///  或 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式的返回类型是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Evaluate(expr: DNXPathExpression): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用提供的上下文计算 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  ，并返回类型化结果。
    ///</summary>
    ///  <param name="expr">
    ///  可以计算的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  。
    ///</param>
    ///  <param name="context"><see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  ，指向要在其上执行计算的选定节点集。
    ///</param>
    ///<returns>
    ///  表达式结果（布尔值、数字、字符串或节点集）。
    ///  这分别映射到 <see cref="T:System.Boolean" />
    ///  、<see cref="T:System.Double" />
    ///  、<see cref="T:System.String" />
    ///  或 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  XPath 表达式的返回类型是节点集。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Evaluate(expr: DNXPathExpression; context: DNXPathNodeIterator): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  确定当前节点是否匹配所指定的 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  。
    ///</summary>
    ///  <param name="expr">
    ///  一个 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  对象，它包含已编译的 XPath 表达式。
    ///</param>
    ///<returns>
    ///  如果当前节点匹配 <see cref="T:System.Xml.XPath.XPathExpression" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  无法计算 XPath 表达式。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Matches(expr: DNXPathExpression): Boolean; overload;
    ///<summary>
    ///  确定当前节点是否与指定的 XPath 表达式匹配。
    ///</summary>
    ///  <param name="xpath">
    ///  XPath 表达式。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果当前节点与指定的 XPath 表达式中;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  无法计算 XPath 表达式。
    ///</exception><exception cref="T:System.Xml.XPath.XPathException">
    ///  XPath 表达式无效。
    ///</exception>
    function Matches(xpath: string): Boolean; overload;
    ///<summary>
    ///  选择当前节点的所有有相匹配的子节点 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  的子节点。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    function SelectChildren(&type: DNXPathNodeType): DNXPathNodeIterator; overload;
    ///<summary>
    ///  选择当前节点中具有指定的本地名称和命名空间 URI 的所有子节点。
    ///</summary>
    ///  <param name="name">
    ///  子节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  子节点的命名空间 URI。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  无法将 <see langword="null" />
    ///  作为一个参数进行传递。
    ///</exception>
    function SelectChildren(name: string; namespaceURI: string): DNXPathNodeIterator; overload;
    ///<summary>
    ///  选择所有祖先节点的当前节点中具有匹配 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  祖先节点。
    ///</param>
    ///  <param name="matchSelf">
    ///  若要在所选内容上包含上下文节点，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///  返回的节点的顺序与文档顺序相反。
    ///</returns>
    function SelectAncestors(&type: DNXPathNodeType; matchSelf: Boolean): DNXPathNodeIterator; overload;
    ///<summary>
    ///  选择当前节点中具有指定的本地名称和命名空间 URI 的所有祖先节点。
    ///</summary>
    ///  <param name="name">
    ///  祖先节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  祖先节点的命名空间 URI。
    ///</param>
    ///  <param name="matchSelf">
    ///  若要在所选内容上包含上下文节点，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///  返回的节点的顺序与文档顺序相反。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  无法将 <see langword="null" />
    ///  作为一个参数进行传递。
    ///</exception>
    function SelectAncestors(name: string; namespaceURI: string; matchSelf: Boolean): DNXPathNodeIterator; overload;
    ///<summary>
    ///  选择当前节点的具有匹配的所有子代节点 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  子代节点。
    ///</param>
    ///  <param name="matchSelf"><see langword="true" />
    ///  若要在所选内容; 中包括上下文节点否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    function SelectDescendants(&type: DNXPathNodeType; matchSelf: Boolean): DNXPathNodeIterator; overload;
    ///<summary>
    ///  选择当前节点中具有指定的本地名称和命名空间 URI 的所有子代节点。
    ///</summary>
    ///  <param name="name">
    ///  子代节点的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  命名空间 URI 的子代节点。
    ///</param>
    ///  <param name="matchSelf"><see langword="true" />
    ///  若要在所选内容; 中包括上下文节点否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个包含所选节点的 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  无法将 <see langword="null" />
    ///  作为一个参数进行传递。
    ///</exception>
    function SelectDescendants(name: string; namespaceURI: string; matchSelf: Boolean): DNXPathNodeIterator; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于在当前节点的子节点列表的开始处创建一个新的子节点。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于在当前节点的子节点列表的开始处创建一个新的子节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不允许在前面追加新的子节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    function PrependChild: DNXmlWriter; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于在当前节点的子节点列表的末尾创建一个或多个新的子节点。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于在当前节点的子节点列表的末尾创建新的子节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不是根节点或不是一个元素节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    function AppendChild: DNXmlWriter; overload;
    ///<summary>
    ///  返回一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于在当前所选节点的后面创建一个新的同级节点。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，它用于在当前所选节点的后面创建一个新的同级节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的后面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    function InsertAfter: DNXmlWriter; overload;
    ///<summary>
    ///  返回 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，它用于在当前所选节点的前面创建一个新的同级节点。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，它用于在当前所选节点的前面创建一个新的同级节点。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的前面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    function InsertBefore: DNXmlWriter; overload;
    ///<summary>
    ///  返回 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，用于在当前元素上创建新属性。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlWriter" />
    ///  对象，用于在当前元素上创建新属性。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  程序不位于某个元素节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    function CreateAttributes: DNXmlWriter;
    ///<summary>
    ///  替换从当前节点到指定节点之间的一组同级节点。
    ///</summary>
    ///  <param name="lastSiblingToReplace">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，它定位在要替换的范围内的最后一个同级节点上。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Xml.XmlWriter" />
    ///  对象，该对象用于指定替换范围。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException">
    ///  指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  指定的要替换的最后一个节点不是当前节点的有效同级节点。
    ///</exception>
    function ReplaceRange(lastSiblingToReplace: DNXPathNavigator): DNXmlWriter;
    ///<summary>
    ///  将当前节点替换为指定的字符串内容。
    ///</summary>
    ///  <param name="newNode">
    ///  新节点的 XML 数据字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  XML 字符串参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  未定位于元素、文本、处理指令或注释节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 字符串参数的格式不正确。
    ///</exception>
    procedure ReplaceSelf(newNode: string); overload;
    ///<summary>
    ///  将当前节点替换为指定的 <see cref="T:System.Xml.XmlReader" />
    ///  对象的内容。
    ///</summary>
    ///  <param name="newNode">
    ///  位于新节点的 XML 数据上的 <see cref="T:System.Xml.XmlReader" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlReader" />
    ///  对象处于错误状态或已关闭。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不位于元素、文本、处理指令或注释节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure ReplaceSelf(newNode: DNXmlReader); overload;
    ///<summary>
    ///  将当前节点替换为指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象的内容。
    ///</summary>
    ///  <param name="newNode">
    ///  在新节点上定位的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不位于元素、文本、处理指令或注释节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure ReplaceSelf(newNode: DNXPathNavigator); overload;
    ///<summary>
    ///  使用指定的 XML 数据字符串在当前节点的子节点列表的末尾创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  新的子节点的 XML 数据字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  XML 数据字符串参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不是根节点或不是一个元素节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 数据字符串参数的格式不正确。
    ///</exception>
    procedure AppendChild(newChild: string); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlReader" />
    ///  对象的 XML 内容在当前节点的子节点列表的末尾创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  一个 <see cref="T:System.Xml.XmlReader" />
    ///  对象，该对象定位在新的子节点的 XML 数据上。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlReader" />
    ///  对象处于错误状态或已关闭。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不是根节点或不是一个元素节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure AppendChild(newChild: DNXmlReader); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  中的节点在当前节点的子节点列表的末尾创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在将作为新的子节点添加的节点上。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不是根节点或不是一个元素节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure AppendChild(newChild: DNXPathNavigator); overload;
    ///<summary>
    ///  使用指定的 XML 字符串在当前节点的子节点列表的开始处创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  新的子节点的 XML 数据字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  XML 字符串参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所在的当前节点不允许预置新的子节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 字符串参数的格式不正确。
    ///</exception>
    procedure PrependChild(newChild: string); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlReader" />
    ///  对象的 XML 内容，在当前节点的子节点列表的开始处创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  一个 <see cref="T:System.Xml.XmlReader" />
    ///  对象，它定位在新子节点的 XML 数据上。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlReader" />
    ///  对象处于错误状态或已关闭。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所位于的当前节点不允许在其前面预置新的子节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure PrependChild(newChild: DNXmlReader); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象中的节点在当前节点的子节点列表的开始处创建一个新的子节点。
    ///</summary>
    ///  <param name="newChild">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在将作为新的子节点添加的节点上。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所位于的当前节点不允许在其前面预置新的子节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure PrependChild(newChild: DNXPathNavigator); overload;
    ///<summary>
    ///  使用指定的 XML 字符串在当前选定的节点之前创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  新的同级节点的 XML 数据字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  XML 字符串参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的前面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 字符串参数的格式不正确。
    ///</exception>
    procedure InsertBefore(newSibling: string); overload;
    ///<summary>
    ///  使用 <see cref="T:System.Xml.XmlReader" />
    ///  对象指定的 XML 内容在当前选定的节点之前创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  在新的同级节点的 XML 数据上定位的 <see cref="T:System.Xml.XmlReader" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlReader" />
    ///  对象处于错误状态或已关闭。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的前面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure InsertBefore(newSibling: DNXmlReader); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  中的节点在当前选定的节点之前创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在将作为新的同级节点添加的节点上。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的前面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure InsertBefore(newSibling: DNXPathNavigator); overload;
    ///<summary>
    ///  使用指定的 XML 字符串在当前选定的节点之后创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  新的同级节点的 XML 数据字符串。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  XML 字符串参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的后面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException">
    ///  XML 字符串参数的格式不正确。
    ///</exception>
    procedure InsertAfter(newSibling: string); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XmlReader" />
    ///  对象的 XML 内容，在当前所选节点之后创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  一个 <see cref="T:System.Xml.XmlReader" />
    ///  对象，它置于新同级节点的 XML 数据上。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Xml.XmlReader" />
    ///  对象处于错误状态或已关闭。
    ///</exception><exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的后面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.Xml.XmlException"><see cref="T:System.Xml.XmlReader" />
    ///  对象参数的 XML 内容的格式不标准。
    ///</exception>
    procedure InsertAfter(newSibling: DNXmlReader); overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象中的节点在当前选定的节点之后创建一个新的同级节点。
    ///</summary>
    ///  <param name="newSibling">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，该对象定位在将作为新的同级节点添加的节点上。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象参数是 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点的后面插入新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure InsertAfter(newSibling: DNXPathNavigator); overload;
    ///<summary>
    ///  删除从当前节点到指定节点之间的一组同级节点。
    ///</summary>
    ///  <param name="lastSiblingToDelete">
    ///  一个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，它定位在要删除的范围内的最后一个同级节点上。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException">
    ///  指定的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  指定的要删除的最后一个节点不是当前节点的有效同级节点。
    ///</exception>
    procedure DeleteRange(lastSiblingToDelete: DNXPathNavigator);
    ///<summary>
    ///  删除当前节点及其子节点。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  定位在不能删除的节点上，例如根节点或命名空间节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure DeleteSelf;
    ///<summary>
    ///  使用通过指定值指定的命名空间前缀、本地名称和命名空间 URI 在当前节点的子节点列表的开始处创建一个新的子元素。
    ///</summary>
    ///  <param name="prefix">
    ///  新的子元素（如果有）的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  新的子元素（如果有）的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新的子元素（如果有）的命名空间 URI。
    ///<see cref="F:System.String.Empty" />
    ///  和 <see langword="null" />
    ///  是等效的。
    ///</param>
    ///  <param name="value">
    ///  新的子元素的值。
    ///  如果传递了 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  ，则将创建一个空元素。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不允许在前面追加新的子节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure PrependChildElement(prefix: string; localName: string; namespaceURI: string; value: string);
    ///<summary>
    ///  使用通过指定值指定的命名空间前缀、本地名称和命名空间 URI 在当前节点的子节点列表的末尾创建一个新的子元素节点。
    ///</summary>
    ///  <param name="prefix">
    ///  新的子元素节点（如果有）的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  新的子元素节点（如果有）的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新的子元素节点（如果有）的命名空间 URI。
    ///<see cref="F:System.String.Empty" />
    ///  和 <see langword="null" />
    ///  等效。
    ///</param>
    ///  <param name="value">
    ///  新的子元素节点的值。
    ///  如果传递了 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  ，则将创建一个空元素。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  所定位至的当前节点不是根节点或不是一个元素节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure AppendChildElement(prefix: string; localName: string; namespaceURI: string; value: string);
    ///<summary>
    ///  使用通过指定值指定的命名空间前缀、本地名称和命名空间 URI 在当前节点之前创建一个新的同级元素。
    ///</summary>
    ///  <param name="prefix">
    ///  新的子元素（如果有）的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  新的子元素（如果有）的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新的子元素（如果有）的命名空间 URI。
    ///<see cref="F:System.String.Empty" />
    ///  和 <see langword="null" />
    ///  是等效的。
    ///</param>
    ///  <param name="value">
    ///  新的子元素的值。
    ///  如果传递 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  ，将创建一个空元素。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  位置 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不允许在当前节点之前插入一个新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure InsertElementBefore(prefix: string; localName: string; namespaceURI: string; value: string);
    ///<summary>
    ///  使用通过指定值指定的命名空间前缀、本地名称和命名空间 URI 在当前节点之后创建一个新的同级元素。
    ///</summary>
    ///  <param name="prefix">
    ///  新的子元素（如果有）的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  新的子元素（如果有）的本地名称。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新的子元素（如果有）的命名空间 URI。
    ///<see cref="F:System.String.Empty" />
    ///  和 <see langword="null" />
    ///  是等效的。
    ///</param>
    ///  <param name="value">
    ///  新的子元素的值。
    ///  如果传递 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  ，将创建一个空元素。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不允许在当前节点之后插入一个新的同级节点。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure InsertElementAfter(prefix: string; localName: string; namespaceURI: string; value: string);
    ///<summary>
    ///  使用通过指定值指定的命名空间前缀、本地名称和命名空间 URI 在当前元素节点上创建一个属性节点。
    ///</summary>
    ///  <param name="prefix">
    ///  新的属性节点（如果有）的命名空间前缀。
    ///</param>
    ///  <param name="localName">
    ///  新的属性节点的本地名称，该名称不能是 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  。
    ///</param>
    ///  <param name="namespaceURI">
    ///  新的属性节点（如果有）的命名空间 URI。
    ///</param>
    ///  <param name="value">
    ///  新的属性节点的值。
    ///  如果传递了 <see cref="F:System.String.Empty" />
    ///  或 <see langword="null" />
    ///  ，则将创建一个空属性节点。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  未定位在元素节点上。
    ///</exception><exception cref="T:System.NotSupportedException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不支持编辑。
    ///</exception>
    procedure CreateAttribute(prefix: string; localName: string; namespaceURI: string; value: string);
    ///<summary>
    ///  获取指定前缀的命名空间 URI。
    ///</summary>
    ///  <param name="prefix">
    ///  要解析其命名空间 URI 的前缀。
    ///  若要匹配默认命名空间，传递 <see cref="F:System.String.Empty" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，其中包含的命名空间 URI 分配给指定; 的命名空间前缀 <see langword="null" />
    ///  如果没有命名空间 URI 分配给指定的前缀。
    ///<see cref="T:System.String" />
    ///  返回原子化的。
    ///</returns>
    function LookupNamespace(prefix: string): string;
    ///<summary>
    ///  获取为指定的命名空间 URI 声明的前缀。
    ///</summary>
    ///  <param name="namespaceURI">
    ///  要为前缀解析的命名空间 URI。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，其中包含命名空间前缀分配给命名空间 URI; 否则为 <see cref="F:System.String.Empty" />
    ///  如果没有前缀分配给指定 URI 的命名空间。
    ///<see cref="T:System.String" />
    ///  返回原子化的。
    ///</returns>
    function LookupPrefix(namespaceURI: string): string;
    ///<summary>
    ///  返回当前节点的范围内命名空间。
    ///</summary>
    ///  <param name="scope"><see cref="T:System.Xml.XmlNamespaceScope" />
    ///  值，该值指定要返回的命名空间。
    ///</param>
    ///<returns><see cref="T:System.Collections.Generic.IDictionary`2" />
    ///  的前缀键控的命名空间名称的集合。
    ///</returns>
    function GetNamespacesInScope(scope: DNXmlNamespaceScope): DDN.mscorlib.DNIDictionary<string, string>;
    ///<summary>
    ///  当在派生类中被重写时，创建一个新的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，它定位到的节点与此 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  定位到的节点相同。
    ///</summary>
    ///<returns>
    ///  一个新的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ，它定位到的节点与此 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  定位到的节点相同。
    ///</returns>
    function Clone: DNXPathNavigator;
    ///<summary>
    ///  在派生类中被重写时，将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到当前节点的第一个属性。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功移动到了当前节点的第一个属性，则返回 <see langword="true" />
    ///  ；否则返回 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不变。
    ///</returns>
    function MoveToFirstAttribute: Boolean;
    ///<summary>
    ///  当在派生类中被重写时，将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动到下一个属性。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个属性，则返回 <see langword="true" />
    ///  ；如果没有其他属性，则返回 <see langword="false" />
    ///  。
    ///  如果为 <see langword="false" />
    ///  ，则 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置不变。
    ///</returns>
    function MoveToNextAttribute: Boolean;
    ///<summary>
    ///  返回与所指定本地名称对应的命名空间节点的值。
    ///</summary>
    ///  <param name="name">
    ///  命名空间节点的本地名称。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含值的命名空间节点; <see cref="F:System.String.Empty" />
    ///  如果未找到匹配的命名空间节点，或者如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不定位在元素节点上。
    ///</returns>
    function GetNamespace(name: string): string;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到匹配的第一个命名空间节点 <see cref="T:System.Xml.XPath.XPathNamespaceScope" />
    ///  指定。
    ///</summary>
    ///  <param name="namespaceScope"><see cref="T:System.Xml.XPath.XPathNamespaceScope" />
    ///  值，该值描述命名空间范围。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到第一个命名空间节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToFirstNamespace(namespaceScope: DNXPathNamespaceScope): Boolean; overload;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到下一个命名空间节点匹配 <see cref="T:System.Xml.XPath.XPathNamespaceScope" />
    ///  指定。
    ///</summary>
    ///  <param name="namespaceScope"><see cref="T:System.Xml.XPath.XPathNamespaceScope" />
    ///  值，该值描述命名空间范围。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个命名空间节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNextNamespace(namespaceScope: DNXPathNamespaceScope): Boolean; overload;
    ///<summary>
    ///  当在派生类中重写时，会将 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  移动至当前节点的下一个同级节点。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到下一个同级节点，则为 <see langword="true" />
    ///  ；如果没有更多同级节点或如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前位于属性节点上，则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToNext: Boolean; overload;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  至当前节点的上一个同级节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到上一个同级节点; 否则为 <see langword="false" />
    ///  是否没有上一个同级节点，或者如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  当前定位在属性节点上。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToPrevious: Boolean;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到当前节点的第一个子节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到当前节点的第一个子节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToFirstChild: Boolean;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  至当前节点的父节点。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到当前节点的父节点; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveToParent: Boolean;
    ///<summary>
    ///  当在派生类中重写，会将移动 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  到与指定的同一位置 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</summary>
    ///  <param name="other"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  定位你想要将移动到的节点上。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功地移动到与指定的位置相同 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  ，<see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  的位置将保持不变。
    ///</returns>
    function MoveTo(other: DNXPathNavigator): Boolean;
    ///<summary>
    ///  当在派生类中重写，将移动到具有类型的属性的节点 ID 其值匹配指定 <see cref="T:System.String" />
    ///  。
    ///</summary>
    ///  <param name="id">
    ///  一个 <see cref="T:System.String" />
    ///  表示 ID 想要移动的节点的值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  成功移动; 否则为 <see langword="false" />
    ///  。
    ///  如果 <see langword="false" />
    ///  , ，则导航器的位置保持不变。
    ///</returns>
    function MoveToId(id: string): Boolean;
    ///<summary>
    ///  当在派生类中重写，确定是否当前 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  于与指定的相同位置 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</summary>
    ///  <param name="other"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  要与此 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果两个 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象具有相同的位置; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsSamePosition(other: DNXPathNavigator): Boolean;
    ///<summary>
    ///  验证中的 XML 数据 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  符合提供 XML 架构定义语言 (XSD) 架构。
    ///</summary>
    ///  <param name="schemas"><see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  包含用来验证中包含的 XML 数据的架构 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</param>
    ///  <param name="validationEventHandler"><see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  用于接收有关架构验证警告和错误的信息。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果未发生任何架构验证错误;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Xml.Schema.XmlSchemaValidationException">
    ///  出现架构验证错误，并且不 <see cref="T:System.Xml.Schema.ValidationEventHandler" />
    ///  指定要处理验证错误。
    ///</exception><exception cref="T:System.InvalidOperationException"><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  定位在节点上，不是元素、 特性或根节点或者没有类型信息来执行验证。
    ///</exception><exception cref="T:System.ArgumentException"><see cref="M:System.Xml.XPath.XPathNavigator.CheckValidity(System.Xml.Schema.XmlSchemaSet,System.Xml.Schema.ValidationEventHandler)" />
    ///  调用方法时使用 <see cref="T:System.Xml.Schema.XmlSchemaSet" />
    ///  参数时 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不定位在 XML 数据的根节点上。
    ///</exception>
    function CheckValidity(schemas: DNXmlSchemaSet; validationEventHandler: DNValidationEventHandler): Boolean;
    ///<summary>
    ///  返回与指定的类型的项的值。
    ///</summary>
    ///  <param name="returnType">
    ///  要返回的项值的类型。
    ///</param>
    ///<returns>
    ///  将项目作为请求的类型的值。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  项的值不在的正确格式为目标类型。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换无效。
    ///</exception><exception cref="T:System.OverflowException">
    ///  尝试强制转换导致溢出。
    ///</exception>
    function ValueAs(returnType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示当前节点是否表示一个 XPath 节点。
    ///</summary>
    ///<returns>
    ///  始终返回 <see langword="true" />
    ///  。
    ///</returns>
    property IsNode: Boolean read get_IsNode;
    ///<summary>
    ///  获取作为最合适的 .NET Framework 类型的已装箱对象的当前节点。
    ///</summary>
    ///<returns>
    ///  作为最合适的 .NET Framework 类型的已装箱对象的当前节点。
    ///</returns>
    property TypedValue: DDN.mscorlib.DNObject read get_TypedValue;
    ///<summary>
    ///  获取当前节点的 .NET Framework <see cref="T:System.Type" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的 .NET Framework <see cref="T:System.Type" />
    ///  。
    ///  默认值为 <see cref="T:System.String" />
    ///  。
    ///</returns>
    property ValueType: DDN.mscorlib.DNType read get_ValueType;
    ///<summary>
    ///  获取当前节点的值作为 <see cref="T:System.Boolean" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的值作为 <see cref="T:System.Boolean" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的字符串值不能转换为 <see cref="T:System.Boolean" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换为 <see cref="T:System.Boolean" />
    ///  无效。
    ///</exception>
    property ValueAsBoolean: Boolean read get_ValueAsBoolean;
    ///<summary>
    ///  获取当前节点的值作为 <see cref="T:System.DateTime" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的值作为 <see cref="T:System.DateTime" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的字符串值不能转换为 <see cref="T:System.DateTime" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换为 <see cref="T:System.DateTime" />
    ///  无效。
    ///</exception>
    property ValueAsDateTime: DDN.mscorlib.DNDateTime read get_ValueAsDateTime;
    ///<summary>
    ///  获取当前节点的值作为 <see cref="T:System.Double" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的值作为 <see cref="T:System.Double" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的字符串值不能转换为 <see cref="T:System.Double" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换为 <see cref="T:System.Double" />
    ///  无效。
    ///</exception>
    property ValueAsDouble: Double read get_ValueAsDouble;
    ///<summary>
    ///  获取当前节点的值作为 <see cref="T:System.Int32" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的值作为 <see cref="T:System.Int32" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的字符串值不能转换为 <see cref="T:System.Int32" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换为 <see cref="T:System.Int32" />
    ///  无效。
    ///</exception>
    property ValueAsInt: Int32 read get_ValueAsInt;
    ///<summary>
    ///  获取当前节点的值作为 <see cref="T:System.Int64" />
    ///  。
    ///</summary>
    ///<returns>
    ///  当前节点的值作为 <see cref="T:System.Int64" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.FormatException">
    ///  当前节点的字符串值不能转换为 <see cref="T:System.Int64" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  尝试强制转换为 <see cref="T:System.Int64" />
    ///  无效。
    ///</exception>
    property ValueAsLong: Int64 read get_ValueAsLong;
    ///<summary>
    ///  当在派生类中重写时获取 <see cref="T:System.Xml.XmlNameTable" />
    ///  的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XmlNameTable" />
    ///  对象，它使你能够获取的原子化的版本 <see cref="T:System.String" />
    ///  XML 文档中。
    ///</returns>
    property NameTable: DNXmlNameTable read get_NameTable;
    ///<summary>
    ///  当在派生类中重写时，获取当前节点的 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示当前节点其中一个 <see cref="T:System.Xml.XPath.XPathNodeType" />
    ///  值。
    ///</returns>
    property NodeType: DNXPathNodeType read get_NodeType;
    ///<summary>
    ///  在派生类中被重写时，获取当前节点的 <see cref="P:System.Xml.XPath.XPathNavigator.Name" />
    ///  （不带任何命名空间前缀）。
    ///</summary>
    ///<returns>
    ///  包含当前节点本地名称的 <see cref="T:System.String" />
    ///  ；如果当前节点没有名称（例如，文本或注释节点），则为 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    property LocalName: string read get_LocalName;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的限定名。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含当前节点的限定 <see cref="P:System.Xml.XPath.XPathNavigator.Name" />
    ///  ；如果当前节点没有名称（例如，文本或注释节点），则为 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的命名空间 URI。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，它包含当前节点的命名空间 URI；如果当前节点没有命名空间 URI，则为 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    property NamespaceURI: string read get_NamespaceURI;
    ///<summary>
    ///  当在派生类中被重写时，获取与当前节点关联的命名空间前缀。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  它包含与当前节点关联的命名空间前缀。
    ///</returns>
    property Prefix: string read get_Prefix;
    ///<summary>
    ///  当在派生类中被重写时，获取当前节点的基 URI。
    ///</summary>
    ///<returns>
    ///  从其加载节点，该位置或 <see cref="F:System.String.Empty" />
    ///  如果没有值。
    ///</returns>
    property BaseURI: string read get_BaseURI;
    ///<summary>
    ///  当在派生类中被重写时，获取一个值，该值指示当前节点是否是一个没有结束元素标记的空元素。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果当前节点是一个空的元素;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmptyElement: Boolean read get_IsEmptyElement;
    ///<summary>
    ///  获取 xml:lang 当前节点范围。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含值的 xml:lang 作用域，或 <see cref="F:System.String.Empty" />
    ///  如果当前节点没有任何 xml:lang 作用域返回的值。
    ///</returns>
    property XmlLang: string read get_XmlLang;
    ///<summary>
    ///  使用 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  实现提供"虚拟化"XML 查看在存储区，以提供对基础对象的访问。
    ///</summary>
    ///<returns>
    ///  默认值为 <see langword="null" />
    ///  。
    ///</returns>
    property UnderlyingObject: DDN.mscorlib.DNObject read get_UnderlyingObject;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否有任何属性。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果当前节点具有属性，则将返回 <see langword="false" />
    ///  如果当前节点不具有任何属性，或者如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  不定位在元素节点上。
    ///</returns>
    property HasAttributes: Boolean read get_HasAttributes;
    ///<summary>
    ///  获取一个值，该值指示当前节点是否具有任何子节点。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果当前节点具有任何子节点，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasChildren: Boolean read get_HasChildren;
    ///<summary>
    ///  获取作为架构验证结果分配给当前节点的架构信息。
    ///</summary>
    ///<returns><see cref="T:System.Xml.Schema.IXmlSchemaInfo" />
    ///  对象，其中包含当前节点的架构信息。
    ///</returns>
    property SchemaInfo: DNIXmlSchemaInfo read get_SchemaInfo;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  是否可以编辑基础 XML 数据。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  可以编辑基础 XML 数据，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property CanEdit: Boolean read get_CanEdit;
    ///<summary>
    ///  获取或设置表示当前节点及其子节点的开始标记及结束标记的标记。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含表示当前节点及其子节点的开始标记及结束标记的标记。
    ///</returns>
    property OuterXml: string read get_OuterXml write set_OuterXml;
    ///<summary>
    ///  获取或设置表示当前节点的子节点标记。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含当前节点的子节点的标记。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  无法设置 <see cref="P:System.Xml.XPath.XPathNavigator.InnerXml" />
    ///  属性。
    ///</exception>
    property InnerXml: string read get_InnerXml write set_InnerXml;
    ///<summary>
    ///  当在派生类中重写时获取 <see langword="string" />
    ///  项的值。
    ///</summary>
    ///<returns><see langword="string" />
    ///  项的值。
    ///</returns>
    property Value: string read get_Value;
  end;

  TDNXPathNavigator = class(TDNGenericImport<DNXPathNavigatorClass, DNXPathNavigator>) end;

  //-------------namespace: System.Xml.XPath----------------
  DNXPathNodeIteratorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D5B45F05-6AFE-58F0-9E23-31308022884E}']
  end;

  ///<summary>
  ///  在选定节点集上提供一个迭代器。
  ///</summary>
  [DNTypeName('System.Xml.XPath.XPathNodeIterator')]
  DNXPathNodeIterator = interface(DDN.mscorlib.DNObject)
  ['{181EDCFA-EB65-387B-9544-B953DD6A55D0}']
  { getters & setters } 

    function get_Current: DNXPathNavigator;
    function get_CurrentPosition: Int32;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  返回 <see cref="T:System.Collections.IEnumerator" />
    ///  要循环访问所选的节点集对象。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  要循环访问所选的节点集对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  当在派生类中重写时返回此克隆 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个新 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象克隆 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  对象。
    ///</returns>
    function Clone: DNXPathNodeIterator;
    ///<summary>
    ///  在派生类中重写时，将 <see cref="P:System.Xml.XPath.XPathNodeIterator.Current" />
    ///  属性返回的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象移至选定节点集中的下一个节点。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象已移至下一个节点，则为 <see langword="true" />
    ///  ；如果没有其他选定节点，则为 <see langword="false" />
    ///  。
    ///</returns>
    function MoveNext: Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  在派生类中重写时，获取此 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  的 <see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，它定位在当前上下文节点上。
    ///</summary>
    ///<returns><see cref="T:System.Xml.XPath.XPathNavigator" />
    ///  对象，定位在从中选择节点集的上下文节点上。
    ///  必须调用 <see cref="M:System.Xml.XPath.XPathNodeIterator.MoveNext" />
    ///  方法将 <see cref="T:System.Xml.XPath.XPathNodeIterator" />
    ///  移至所选集中的第一个节点。
    ///</returns>
    property Current: DNXPathNavigator read get_Current;
    ///<summary>
    ///  当在派生类中重写时获取所选组节点中的当前位置的索引。
    ///</summary>
    ///<returns>
    ///  当前的位置的索引。
    ///</returns>
    property CurrentPosition: Int32 read get_CurrentPosition;
    ///<summary>
    ///  获取最后一个节点的索引中所选节点集。
    ///</summary>
    ///<returns>
    ///  所选节点，则为 0，如果没有选定的节点集中的最后一个节点的索引。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNXPathNodeIterator = class(TDNGenericImport<DNXPathNodeIteratorClass, DNXPathNodeIterator>) end;


implementation

end.
