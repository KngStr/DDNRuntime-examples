// System.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089
//-----------------------------------------------------------//
//                                                           //
//     DDN.System.Xaml                              
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.System.Xaml;

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

  //-------------namespace: System.Xaml.Schema----------------
  [DNTypeName('System.Xaml.Schema.AllowedMemberLocations')]
  DNAllowedMemberLocations = type Integer;
  DNAllowedMemberLocationsHelper = record helper for DNAllowedMemberLocations
  public const
    None = 0;
    Attribute = 1;
    MemberElement = 2;
    Any = 3;
  end;


  //-------------namespace: System.Xaml.Schema----------------
  [DNTypeName('System.Xaml.Schema.ShouldSerializeResult')]
  DNShouldSerializeResult = type Integer;
  DNShouldSerializeResultHelper = record helper for DNShouldSerializeResult
  public const
    Default_ = 0;
    True = 1;
    False = 2;
  end;


  //-------------namespace: System.Xaml.Schema----------------
  [DNTypeName('System.Xaml.Schema.XamlCollectionKind')]
  DNXamlCollectionKind = type Integer;
  DNXamlCollectionKindHelper = record helper for DNXamlCollectionKind
  public const
    None = 0;
    Collection = 1;
    Dictionary = 2;
    Array_ = 3;
  end;


  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.XamlNodeType')]
  DNXamlNodeType = type Integer;
  DNXamlNodeTypeHelper = record helper for DNXamlNodeType
  public const
    None = 0;
    StartObject = 1;
    GetObject = 2;
    EndObject = 3;
    StartMember = 4;
    EndMember = 5;
    Value = 6;
    NamespaceDeclaration = 7;
  end;




type


{ declares }

  DNAcceptedMarkupExtensionExpressionTypeAttribute = interface; // type: System.Windows.Markup.AcceptedMarkupExtensionExpressionTypeAttribute, namespace: System.Windows.Markup
  DNAmbientAttribute = interface; // type: System.Windows.Markup.AmbientAttribute, namespace: System.Windows.Markup
  DNConstructorArgumentAttribute = interface; // type: System.Windows.Markup.ConstructorArgumentAttribute, namespace: System.Windows.Markup
  DNContentPropertyAttribute = interface; // type: System.Windows.Markup.ContentPropertyAttribute, namespace: System.Windows.Markup
  DNContentWrapperAttribute = interface; // type: System.Windows.Markup.ContentWrapperAttribute, namespace: System.Windows.Markup
  DNDependsOnAttribute = interface; // type: System.Windows.Markup.DependsOnAttribute, namespace: System.Windows.Markup
  DNDictionaryKeyPropertyAttribute = interface; // type: System.Windows.Markup.DictionaryKeyPropertyAttribute, namespace: System.Windows.Markup
  DNMarkupExtensionBracketCharactersAttribute = interface; // type: System.Windows.Markup.MarkupExtensionBracketCharactersAttribute, namespace: System.Windows.Markup
  DNMarkupExtensionReturnTypeAttribute = interface; // type: System.Windows.Markup.MarkupExtensionReturnTypeAttribute, namespace: System.Windows.Markup
  DNNameScopePropertyAttribute = interface; // type: System.Windows.Markup.NameScopePropertyAttribute, namespace: System.Windows.Markup
  DNRootNamespaceAttribute = interface; // type: System.Windows.Markup.RootNamespaceAttribute, namespace: System.Windows.Markup
  DNRuntimeNamePropertyAttribute = interface; // type: System.Windows.Markup.RuntimeNamePropertyAttribute, namespace: System.Windows.Markup
  DNTrimSurroundingWhitespaceAttribute = interface; // type: System.Windows.Markup.TrimSurroundingWhitespaceAttribute, namespace: System.Windows.Markup
  DNUidPropertyAttribute = interface; // type: System.Windows.Markup.UidPropertyAttribute, namespace: System.Windows.Markup
  DNUsableDuringInitializationAttribute = interface; // type: System.Windows.Markup.UsableDuringInitializationAttribute, namespace: System.Windows.Markup
  DNWhitespaceSignificantCollectionAttribute = interface; // type: System.Windows.Markup.WhitespaceSignificantCollectionAttribute, namespace: System.Windows.Markup
  DNXamlDeferLoadAttribute = interface; // type: System.Windows.Markup.XamlDeferLoadAttribute, namespace: System.Windows.Markup
  DNXamlSetMarkupExtensionAttribute = interface; // type: System.Windows.Markup.XamlSetMarkupExtensionAttribute, namespace: System.Windows.Markup
  DNXamlSetTypeConverterAttribute = interface; // type: System.Windows.Markup.XamlSetTypeConverterAttribute, namespace: System.Windows.Markup
  DNXmlLangPropertyAttribute = interface; // type: System.Windows.Markup.XmlLangPropertyAttribute, namespace: System.Windows.Markup
  DNXmlnsCompatibleWithAttribute = interface; // type: System.Windows.Markup.XmlnsCompatibleWithAttribute, namespace: System.Windows.Markup
  DNXmlnsDefinitionAttribute = interface; // type: System.Windows.Markup.XmlnsDefinitionAttribute, namespace: System.Windows.Markup
  DNXmlnsPrefixAttribute = interface; // type: System.Windows.Markup.XmlnsPrefixAttribute, namespace: System.Windows.Markup
  DNNameReferenceConverter = interface; // type: System.Windows.Markup.NameReferenceConverter, namespace: System.Windows.Markup
  DNXamlTypeTypeConverter = interface; // type: System.Xaml.Schema.XamlTypeTypeConverter, namespace: System.Xaml.Schema
  DNXamlSetValueEventArgs = interface; // type: System.Windows.Markup.XamlSetValueEventArgs, namespace: System.Windows.Markup
  DNXamlSetMarkupExtensionEventArgs = interface; // type: System.Windows.Markup.XamlSetMarkupExtensionEventArgs, namespace: System.Windows.Markup
  DNXamlSetTypeConverterEventArgs = interface; // type: System.Windows.Markup.XamlSetTypeConverterEventArgs, namespace: System.Windows.Markup
  DNXamlObjectEventArgs = interface; // type: System.Xaml.XamlObjectEventArgs, namespace: System.Xaml
  DNXamlException = interface; // type: System.Xaml.XamlException, namespace: System.Xaml
  DNXamlDuplicateMemberException = interface; // type: System.Xaml.XamlDuplicateMemberException, namespace: System.Xaml
  DNXamlInternalException = interface; // type: System.Xaml.XamlInternalException, namespace: System.Xaml
  DNXamlObjectReaderException = interface; // type: System.Xaml.XamlObjectReaderException, namespace: System.Xaml
  DNXamlObjectWriterException = interface; // type: System.Xaml.XamlObjectWriterException, namespace: System.Xaml
  DNXamlParseException = interface; // type: System.Xaml.XamlParseException, namespace: System.Xaml
  DNXamlSchemaException = interface; // type: System.Xaml.XamlSchemaException, namespace: System.Xaml
  DNXamlXmlWriterException = interface; // type: System.Xaml.XamlXmlWriterException, namespace: System.Xaml
  DNIValueSerializerContext = interface; // type: System.Windows.Markup.IValueSerializerContext, namespace: System.Windows.Markup
  DNXamlLoadPermission = interface; // type: System.Xaml.Permissions.XamlLoadPermission, namespace: System.Xaml.Permissions
  DNIComponentConnector = interface; // type: System.Windows.Markup.IComponentConnector, namespace: System.Windows.Markup
  DNINameScope = interface; // type: System.Windows.Markup.INameScope, namespace: System.Windows.Markup
  DNINameScopeDictionary = interface; // type: System.Windows.Markup.INameScopeDictionary, namespace: System.Windows.Markup
  DNIProvideValueTarget = interface; // type: System.Windows.Markup.IProvideValueTarget, namespace: System.Windows.Markup
  DNIQueryAmbient = interface; // type: System.Windows.Markup.IQueryAmbient, namespace: System.Windows.Markup
  DNIUriContext = interface; // type: System.Windows.Markup.IUriContext, namespace: System.Windows.Markup
  DNIXamlTypeResolver = interface; // type: System.Windows.Markup.IXamlTypeResolver, namespace: System.Windows.Markup
  DNMarkupExtension = interface; // type: System.Windows.Markup.MarkupExtension, namespace: System.Windows.Markup
  DNArrayExtension = interface; // type: System.Windows.Markup.ArrayExtension, namespace: System.Windows.Markup
  DNNullExtension = interface; // type: System.Windows.Markup.NullExtension, namespace: System.Windows.Markup
  DNReference = interface; // type: System.Windows.Markup.Reference, namespace: System.Windows.Markup
  DNStaticExtension = interface; // type: System.Windows.Markup.StaticExtension, namespace: System.Windows.Markup
  DNTypeExtension = interface; // type: System.Windows.Markup.TypeExtension, namespace: System.Windows.Markup
  DNMemberDefinition = interface; // type: System.Windows.Markup.MemberDefinition, namespace: System.Windows.Markup
  DNPropertyDefinition = interface; // type: System.Windows.Markup.PropertyDefinition, namespace: System.Windows.Markup
  DNValueSerializer = interface; // type: System.Windows.Markup.ValueSerializer, namespace: System.Windows.Markup
  DNDateTimeValueSerializer = interface; // type: System.Windows.Markup.DateTimeValueSerializer, namespace: System.Windows.Markup
  DNXData = interface; // type: System.Windows.Markup.XData, namespace: System.Windows.Markup
  DNAmbientPropertyValue = interface; // type: System.Xaml.AmbientPropertyValue, namespace: System.Xaml
  DNAttachableMemberIdentifier = interface; // type: System.Xaml.AttachableMemberIdentifier, namespace: System.Xaml
  DNAttachablePropertyServices = interface; // type: System.Xaml.AttachablePropertyServices, namespace: System.Xaml
  DNIAmbientProvider = interface; // type: System.Xaml.IAmbientProvider, namespace: System.Xaml
  DNIAttachedPropertyStore = interface; // type: System.Xaml.IAttachedPropertyStore, namespace: System.Xaml
  DNIDestinationTypeProvider = interface; // type: System.Xaml.IDestinationTypeProvider, namespace: System.Xaml
  DNINamespacePrefixLookup = interface; // type: System.Xaml.INamespacePrefixLookup, namespace: System.Xaml
  DNIRootObjectProvider = interface; // type: System.Xaml.IRootObjectProvider, namespace: System.Xaml
  DNIXamlIndexingReader = interface; // type: System.Xaml.IXamlIndexingReader, namespace: System.Xaml
  DNIXamlLineInfo = interface; // type: System.Xaml.IXamlLineInfo, namespace: System.Xaml
  DNIXamlLineInfoConsumer = interface; // type: System.Xaml.IXamlLineInfoConsumer, namespace: System.Xaml
  DNIXamlNameProvider = interface; // type: System.Xaml.IXamlNameProvider, namespace: System.Xaml
  DNIXamlNameResolver = interface; // type: System.Xaml.IXamlNameResolver, namespace: System.Xaml
  DNIXamlNamespaceResolver = interface; // type: System.Xaml.IXamlNamespaceResolver, namespace: System.Xaml
  DNIXamlObjectWriterFactory = interface; // type: System.Xaml.IXamlObjectWriterFactory, namespace: System.Xaml
  DNIXamlSchemaContextProvider = interface; // type: System.Xaml.IXamlSchemaContextProvider, namespace: System.Xaml
  DNNamespaceDeclaration = interface; // type: System.Xaml.NamespaceDeclaration, namespace: System.Xaml
  DNXamlAccessLevel = interface; // type: System.Xaml.Permissions.XamlAccessLevel, namespace: System.Xaml.Permissions
  DNXamlMemberInvoker = interface; // type: System.Xaml.Schema.XamlMemberInvoker, namespace: System.Xaml.Schema
  DNXamlTypeInvoker = interface; // type: System.Xaml.Schema.XamlTypeInvoker, namespace: System.Xaml.Schema
  DNXamlTypeName = interface; // type: System.Xaml.Schema.XamlTypeName, namespace: System.Xaml.Schema
  DNXamlDeferringLoader = interface; // type: System.Xaml.XamlDeferringLoader, namespace: System.Xaml
  DNXamlLanguage = interface; // type: System.Xaml.XamlLanguage, namespace: System.Xaml
  DNXamlMember = interface; // type: System.Xaml.XamlMember, namespace: System.Xaml
  DNXamlDirective = interface; // type: System.Xaml.XamlDirective, namespace: System.Xaml
  DNXamlNodeList = interface; // type: System.Xaml.XamlNodeList, namespace: System.Xaml
  DNXamlNodeQueue = interface; // type: System.Xaml.XamlNodeQueue, namespace: System.Xaml
  DNXamlReader = interface; // type: System.Xaml.XamlReader, namespace: System.Xaml
  DNXamlBackgroundReader = interface; // type: System.Xaml.XamlBackgroundReader, namespace: System.Xaml
  DNXamlObjectReader = interface; // type: System.Xaml.XamlObjectReader, namespace: System.Xaml
  DNXamlXmlReader = interface; // type: System.Xaml.XamlXmlReader, namespace: System.Xaml
  DNXamlReaderSettings = interface; // type: System.Xaml.XamlReaderSettings, namespace: System.Xaml
  DNXamlObjectReaderSettings = interface; // type: System.Xaml.XamlObjectReaderSettings, namespace: System.Xaml
  DNXamlXmlReaderSettings = interface; // type: System.Xaml.XamlXmlReaderSettings, namespace: System.Xaml
  DNXamlSchemaContext = interface; // type: System.Xaml.XamlSchemaContext, namespace: System.Xaml
  DNXamlSchemaContextSettings = interface; // type: System.Xaml.XamlSchemaContextSettings, namespace: System.Xaml
  DNXamlServices = interface; // type: System.Xaml.XamlServices, namespace: System.Xaml
  DNXamlType = interface; // type: System.Xaml.XamlType, namespace: System.Xaml
  DNXamlWriter = interface; // type: System.Xaml.XamlWriter, namespace: System.Xaml
  DNXamlObjectWriter = interface; // type: System.Xaml.XamlObjectWriter, namespace: System.Xaml
  DNXamlXmlWriter = interface; // type: System.Xaml.XamlXmlWriter, namespace: System.Xaml
  DNXamlWriterSettings = interface; // type: System.Xaml.XamlWriterSettings, namespace: System.Xaml
  DNXamlObjectWriterSettings = interface; // type: System.Xaml.XamlObjectWriterSettings, namespace: System.Xaml
  DNXamlXmlWriterSettings = interface; // type: System.Xaml.XamlXmlWriterSettings, namespace: System.Xaml


{ objects }

  //-------------namespace: System.Windows.Markup----------------
  DNAcceptedMarkupExtensionExpressionTypeAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{E4D2C753-2E5C-57D8-B7D2-6E8BB14F4CED}']
  { constructors } 

    {class} function init(&type: DDN.mscorlib.DNType): DNAcceptedMarkupExtensionExpressionTypeAttribute;

  end;

  [DNTypeName('System.Windows.Markup.AcceptedMarkupExtensionExpressionTypeAttribute')]
  DNAcceptedMarkupExtensionExpressionTypeAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{1A290C4F-ACAA-3B25-99A4-1025F52BA4F6}']
  { getters & setters } 

    function get_Type: DDN.mscorlib.DNType;
    procedure set_Type(value: DDN.mscorlib.DNType);
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property &Type: DDN.mscorlib.DNType read get_Type write set_Type;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNAcceptedMarkupExtensionExpressionTypeAttribute = class(TDNGenericImport<DNAcceptedMarkupExtensionExpressionTypeAttributeClass, DNAcceptedMarkupExtensionExpressionTypeAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNAmbientAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{8BD25265-8136-53F2-83E6-1F171A3B4D73}']
  { constructors } 

    {class} function init: DNAmbientAttribute;

  end;

  [DNTypeName('System.Windows.Markup.AmbientAttribute')]
  DNAmbientAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{31B49D75-82BA-35F2-9CEB-E655EE24CF0D}']
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

  TDNAmbientAttribute = class(TDNGenericImport<DNAmbientAttributeClass, DNAmbientAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNConstructorArgumentAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{F34E588D-83D2-5158-AD5D-34EDF518DA0D}']
  { constructors } 

    {class} function init(argumentName: string): DNConstructorArgumentAttribute;

  end;

  [DNTypeName('System.Windows.Markup.ConstructorArgumentAttribute')]
  DNConstructorArgumentAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{1C774710-301C-3948-A1E4-89F1AB279F17}']
  { getters & setters } 

    function get_ArgumentName: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ArgumentName: string read get_ArgumentName;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNConstructorArgumentAttribute = class(TDNGenericImport<DNConstructorArgumentAttributeClass, DNConstructorArgumentAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNContentPropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{7ED8AC6A-51FF-559F-961F-10B297C73B59}']
  { constructors } 

    {class} function init: DNContentPropertyAttribute; overload;
    {class} function init(name: string): DNContentPropertyAttribute; overload;

  end;

  [DNTypeName('System.Windows.Markup.ContentPropertyAttribute')]
  DNContentPropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{29329CB8-7909-3A4B-A4D1-98088BE1E7CA}']
  { getters & setters } 

    function get_Name: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNContentPropertyAttribute = class(TDNGenericImport<DNContentPropertyAttributeClass, DNContentPropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNContentWrapperAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{1B90DE00-E897-5A5E-992B-D4041BCD5EAF}']
  { constructors } 

    {class} function init(contentWrapper: DDN.mscorlib.DNType): DNContentWrapperAttribute;

  end;

  [DNTypeName('System.Windows.Markup.ContentWrapperAttribute')]
  DNContentWrapperAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{5F3ADAC3-8042-3DD6-896F-13E3AAE3AAE5}']
  { getters & setters } 

    function get_ContentWrapper: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ContentWrapper: DDN.mscorlib.DNType read get_ContentWrapper;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNContentWrapperAttribute = class(TDNGenericImport<DNContentWrapperAttributeClass, DNContentWrapperAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNDependsOnAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{FA0DFA4F-B616-561B-BF72-49EE8A90B41E}']
  { constructors } 

    {class} function init(name: string): DNDependsOnAttribute;

  end;

  [DNTypeName('System.Windows.Markup.DependsOnAttribute')]
  DNDependsOnAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{D60A48B7-0228-389B-9CBF-3901C89A64BC}']
  { getters & setters } 

    function get_TypeId: DDN.mscorlib.DNObject;
    function get_Name: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
    property Name: string read get_Name;
  end;

  TDNDependsOnAttribute = class(TDNGenericImport<DNDependsOnAttributeClass, DNDependsOnAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNDictionaryKeyPropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{B2C13DF0-09C2-5C38-AE51-E58B4B8FC15D}']
  { constructors } 

    {class} function init(name: string): DNDictionaryKeyPropertyAttribute;

  end;

  [DNTypeName('System.Windows.Markup.DictionaryKeyPropertyAttribute')]
  DNDictionaryKeyPropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{369461F5-D6DF-31C3-981C-83B3391F2375}']
  { getters & setters } 

    function get_Name: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNDictionaryKeyPropertyAttribute = class(TDNGenericImport<DNDictionaryKeyPropertyAttributeClass, DNDictionaryKeyPropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNMarkupExtensionBracketCharactersAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{8128516C-33EC-5213-9E3A-87D1A904F636}']
  { constructors } 

    {class} function init(openingBracket: Char; closingBracket: Char): DNMarkupExtensionBracketCharactersAttribute;

  end;

  [DNTypeName('System.Windows.Markup.MarkupExtensionBracketCharactersAttribute')]
  DNMarkupExtensionBracketCharactersAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{A562778A-E1FB-3E0B-BD9B-C09BD74B5038}']
  { getters & setters } 

    function get_OpeningBracket: Char;
    function get_ClosingBracket: Char;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property OpeningBracket: Char read get_OpeningBracket;
    property ClosingBracket: Char read get_ClosingBracket;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNMarkupExtensionBracketCharactersAttribute = class(TDNGenericImport<DNMarkupExtensionBracketCharactersAttributeClass, DNMarkupExtensionBracketCharactersAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNMarkupExtensionReturnTypeAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{452F9BD9-2376-5491-81FC-3BBB175BCBF8}']
  { constructors } 

    {class} function init(returnType: DDN.mscorlib.DNType): DNMarkupExtensionReturnTypeAttribute; overload;
    {class} function init(returnType: DDN.mscorlib.DNType; expressionType: DDN.mscorlib.DNType): DNMarkupExtensionReturnTypeAttribute; overload;
    {class} function init: DNMarkupExtensionReturnTypeAttribute; overload;

  end;

  [DNTypeName('System.Windows.Markup.MarkupExtensionReturnTypeAttribute')]
  DNMarkupExtensionReturnTypeAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{F46A4DBA-49E6-37D0-A560-A6B391F2C4E5}']
  { getters & setters } 

    function get_ReturnType: DDN.mscorlib.DNType;
    function get_ExpressionType: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property ReturnType: DDN.mscorlib.DNType read get_ReturnType;
    property ExpressionType: DDN.mscorlib.DNType read get_ExpressionType;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNMarkupExtensionReturnTypeAttribute = class(TDNGenericImport<DNMarkupExtensionReturnTypeAttributeClass, DNMarkupExtensionReturnTypeAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNNameScopePropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{3465DA8A-1DB5-53B8-B09E-C2EA64CF3702}']
  { constructors } 

    {class} function init(name: string): DNNameScopePropertyAttribute; overload;
    {class} function init(name: string; &type: DDN.mscorlib.DNType): DNNameScopePropertyAttribute; overload;

  end;

  [DNTypeName('System.Windows.Markup.NameScopePropertyAttribute')]
  DNNameScopePropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{43B319BB-0085-3E90-9795-E18E468B183A}']
  { getters & setters } 

    function get_Name: string;
    function get_Type: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property &Type: DDN.mscorlib.DNType read get_Type;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNNameScopePropertyAttribute = class(TDNGenericImport<DNNameScopePropertyAttributeClass, DNNameScopePropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNRootNamespaceAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{848A86A9-2B83-555D-A3B5-10210AF58E11}']
  { constructors } 

    {class} function init(nameSpace: string): DNRootNamespaceAttribute;

  end;

  [DNTypeName('System.Windows.Markup.RootNamespaceAttribute')]
  DNRootNamespaceAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{D5775BE3-F9FE-384D-A945-959B04ED3633}']
  { getters & setters } 

    function get_Namespace: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Namespace: string read get_Namespace;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNRootNamespaceAttribute = class(TDNGenericImport<DNRootNamespaceAttributeClass, DNRootNamespaceAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNRuntimeNamePropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{CC9423B4-78CA-5FF0-A1DC-8B3C6886930A}']
  { constructors } 

    {class} function init(name: string): DNRuntimeNamePropertyAttribute;

  end;

  [DNTypeName('System.Windows.Markup.RuntimeNamePropertyAttribute')]
  DNRuntimeNamePropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{573C662B-B16C-3E5A-B2C7-ACB1B7AF1782}']
  { getters & setters } 

    function get_Name: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNRuntimeNamePropertyAttribute = class(TDNGenericImport<DNRuntimeNamePropertyAttributeClass, DNRuntimeNamePropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNTrimSurroundingWhitespaceAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{81B81F65-9BB6-51DF-ABBE-38898CFE32C0}']
  { constructors } 

    {class} function init: DNTrimSurroundingWhitespaceAttribute;

  end;

  [DNTypeName('System.Windows.Markup.TrimSurroundingWhitespaceAttribute')]
  DNTrimSurroundingWhitespaceAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{BB36049D-290E-3202-BB75-67F087A1D1B4}']
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

  TDNTrimSurroundingWhitespaceAttribute = class(TDNGenericImport<DNTrimSurroundingWhitespaceAttributeClass, DNTrimSurroundingWhitespaceAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNUidPropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{17C86148-D6F1-55AE-854F-44F81F0609E2}']
  { constructors } 

    {class} function init(name: string): DNUidPropertyAttribute;

  end;

  [DNTypeName('System.Windows.Markup.UidPropertyAttribute')]
  DNUidPropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{D6A2E8FF-A9D8-340E-AF3E-E8863C2AF6E9}']
  { getters & setters } 

    function get_Name: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNUidPropertyAttribute = class(TDNGenericImport<DNUidPropertyAttributeClass, DNUidPropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNUsableDuringInitializationAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{82B79E03-28CF-5423-A81B-89ED354B76ED}']
  { constructors } 

    {class} function init(usable: Boolean): DNUsableDuringInitializationAttribute;

  end;

  [DNTypeName('System.Windows.Markup.UsableDuringInitializationAttribute')]
  DNUsableDuringInitializationAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{8EB3776B-6D81-32D4-8AC7-0879116BCACC}']
  { getters & setters } 

    function get_Usable: Boolean;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Usable: Boolean read get_Usable;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNUsableDuringInitializationAttribute = class(TDNGenericImport<DNUsableDuringInitializationAttributeClass, DNUsableDuringInitializationAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNWhitespaceSignificantCollectionAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{F37A3270-7363-5BB9-98F8-753B24339AF2}']
  { constructors } 

    {class} function init: DNWhitespaceSignificantCollectionAttribute;

  end;

  [DNTypeName('System.Windows.Markup.WhitespaceSignificantCollectionAttribute')]
  DNWhitespaceSignificantCollectionAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{11CE8B95-3098-36C7-8BA1-3F0A9E223A2B}']
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

  TDNWhitespaceSignificantCollectionAttribute = class(TDNGenericImport<DNWhitespaceSignificantCollectionAttributeClass, DNWhitespaceSignificantCollectionAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlDeferLoadAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{570A6EC7-ED27-55D1-8529-E2DC1E3768A0}']
  { constructors } 

    {class} function init(loaderType: DDN.mscorlib.DNType; contentType: DDN.mscorlib.DNType): DNXamlDeferLoadAttribute; overload;
    {class} function init(loaderType: string; contentType: string): DNXamlDeferLoadAttribute; overload;

  end;

  [DNTypeName('System.Windows.Markup.XamlDeferLoadAttribute')]
  DNXamlDeferLoadAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{BD82683E-BAEB-3E79-AA00-197EE7ED9E82}']
  { getters & setters } 

    function get_LoaderTypeName: string;
    function get_ContentTypeName: string;
    function get_LoaderType: DDN.mscorlib.DNType;
    function get_ContentType: DDN.mscorlib.DNType;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property LoaderTypeName: string read get_LoaderTypeName;
    property ContentTypeName: string read get_ContentTypeName;
    property LoaderType: DDN.mscorlib.DNType read get_LoaderType;
    property ContentType: DDN.mscorlib.DNType read get_ContentType;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXamlDeferLoadAttribute = class(TDNGenericImport<DNXamlDeferLoadAttributeClass, DNXamlDeferLoadAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlSetMarkupExtensionAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{6DDC05BE-5EB6-5B66-A06F-666D8790CD11}']
  { constructors } 

    {class} function init(xamlSetMarkupExtensionHandler: string): DNXamlSetMarkupExtensionAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XamlSetMarkupExtensionAttribute')]
  DNXamlSetMarkupExtensionAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{CF25DFB5-FA36-38C2-BC37-A08D76B29F37}']
  { getters & setters } 

    function get_XamlSetMarkupExtensionHandler: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property XamlSetMarkupExtensionHandler: string read get_XamlSetMarkupExtensionHandler;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXamlSetMarkupExtensionAttribute = class(TDNGenericImport<DNXamlSetMarkupExtensionAttributeClass, DNXamlSetMarkupExtensionAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlSetTypeConverterAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{FF3EDFBB-9BE9-5B3E-9674-4CFA5D25CDC4}']
  { constructors } 

    {class} function init(xamlSetTypeConverterHandler: string): DNXamlSetTypeConverterAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XamlSetTypeConverterAttribute')]
  DNXamlSetTypeConverterAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{C4FFCC04-7569-33EC-A8AE-06FEDE6DF425}']
  { getters & setters } 

    function get_XamlSetTypeConverterHandler: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property XamlSetTypeConverterHandler: string read get_XamlSetTypeConverterHandler;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXamlSetTypeConverterAttribute = class(TDNGenericImport<DNXamlSetTypeConverterAttributeClass, DNXamlSetTypeConverterAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXmlLangPropertyAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{7F81136E-26F4-53AB-BDC4-D220ECA10B23}']
  { constructors } 

    {class} function init(name: string): DNXmlLangPropertyAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XmlLangPropertyAttribute')]
  DNXmlLangPropertyAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{83EBB703-ED09-3A72-ADF8-517DA5070003}']
  { getters & setters } 

    function get_Name: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXmlLangPropertyAttribute = class(TDNGenericImport<DNXmlLangPropertyAttributeClass, DNXmlLangPropertyAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXmlnsCompatibleWithAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{849566EE-41AE-5CF3-93C4-4C1434EE3AA4}']
  { constructors } 

    {class} function init(oldNamespace: string; newNamespace: string): DNXmlnsCompatibleWithAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XmlnsCompatibleWithAttribute')]
  DNXmlnsCompatibleWithAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{75127560-85EE-3891-ABA8-D8FEB189D96F}']
  { getters & setters } 

    function get_OldNamespace: string;
    function get_NewNamespace: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property OldNamespace: string read get_OldNamespace;
    property NewNamespace: string read get_NewNamespace;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXmlnsCompatibleWithAttribute = class(TDNGenericImport<DNXmlnsCompatibleWithAttributeClass, DNXmlnsCompatibleWithAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXmlnsDefinitionAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{7557980F-8EEC-5D04-9756-5C29D05932EB}']
  { constructors } 

    {class} function init(xmlNamespace: string; clrNamespace: string): DNXmlnsDefinitionAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XmlnsDefinitionAttribute')]
  DNXmlnsDefinitionAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{C1706FB1-EB9A-3A6F-AE0D-50BA6CAE1903}']
  { getters & setters } 

    function get_XmlNamespace: string;
    function get_ClrNamespace: string;
    function get_AssemblyName: string;
    procedure set_AssemblyName(value: string);
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property XmlNamespace: string read get_XmlNamespace;
    property ClrNamespace: string read get_ClrNamespace;
    property AssemblyName: string read get_AssemblyName write set_AssemblyName;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXmlnsDefinitionAttribute = class(TDNGenericImport<DNXmlnsDefinitionAttributeClass, DNXmlnsDefinitionAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXmlnsPrefixAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{81E6C187-E467-59F2-BBFE-0B9CB30C2F69}']
  { constructors } 

    {class} function init(xmlNamespace: string; prefix: string): DNXmlnsPrefixAttribute;

  end;

  [DNTypeName('System.Windows.Markup.XmlnsPrefixAttribute')]
  DNXmlnsPrefixAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{4F28D351-7E09-3CF7-B92E-AD7B7112830B}']
  { getters & setters } 

    function get_XmlNamespace: string;
    function get_Prefix: string;
    function get_TypeId: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DDN.mscorlib.DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property XmlNamespace: string read get_XmlNamespace;
    property Prefix: string read get_Prefix;
    property TypeId: DDN.mscorlib.DNObject read get_TypeId;
  end;

  TDNXmlnsPrefixAttribute = class(TDNGenericImport<DNXmlnsPrefixAttributeClass, DNXmlnsPrefixAttribute>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNNameReferenceConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{38CB52C7-363D-557C-9AF6-E1301B99633A}']
  { constructors } 

    {class} function init: DNNameReferenceConverter;

  end;

  [DNTypeName('System.Windows.Markup.NameReferenceConverter')]
  DNNameReferenceConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{EE0B9D76-557A-3524-B43B-34B412677CF9}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertTo(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
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

  TDNNameReferenceConverter = class(TDNGenericImport<DNNameReferenceConverterClass, DNNameReferenceConverter>) end;

  //-------------namespace: System.Xaml.Schema----------------
  DNXamlTypeTypeConverterClass = interface(DDN.System.Windows.Common.DNTypeConverterClass)
  ['{4426ED83-3E2B-5E7F-85E2-279855CA1B56}']
  { constructors } 

    {class} function init: DNXamlTypeTypeConverter;

  end;

  [DNTypeName('System.Xaml.Schema.XamlTypeTypeConverter')]
  DNXamlTypeTypeConverter = interface(DDN.System.Windows.Common.DNTypeConverter)
  ['{468EBDE9-D13D-3B29-8009-DFC8246162B1}']
  { methods } 

    function CanConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(context: DDN.System.Windows.Common.DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
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

  TDNXamlTypeTypeConverter = class(TDNGenericImport<DNXamlTypeTypeConverterClass, DNXamlTypeTypeConverter>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlSetValueEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{28989EA9-FA6C-5B6C-9750-CF1434BDCD30}']
  { constructors } 

    {class} function init(member: DNXamlMember; value: DDN.mscorlib.DNObject): DNXamlSetValueEventArgs;

  end;

  [DNTypeName('System.Windows.Markup.XamlSetValueEventArgs')]
  DNXamlSetValueEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{32F3A0E9-B315-3BFC-9E17-D57E7E46F11C}']
  { getters & setters } 

    function get_Member: DNXamlMember;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Handled: Boolean;
    procedure set_Handled(value: Boolean);

  { methods } 

    procedure CallBase;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Member: DNXamlMember read get_Member;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Handled: Boolean read get_Handled write set_Handled;
  end;

  TDNXamlSetValueEventArgs = class(TDNGenericImport<DNXamlSetValueEventArgsClass, DNXamlSetValueEventArgs>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlSetMarkupExtensionEventArgsClass = interface(DNXamlSetValueEventArgsClass)
  ['{E828B8DB-375A-50A6-8530-78B58030D618}']
  { constructors } 

    {class} function init(member: DNXamlMember; value: DNMarkupExtension; serviceProvider: DDN.mscorlib.DNIServiceProvider): DNXamlSetMarkupExtensionEventArgs;

  end;

  [DNTypeName('System.Windows.Markup.XamlSetMarkupExtensionEventArgs')]
  DNXamlSetMarkupExtensionEventArgs = interface(DNXamlSetValueEventArgs)
  ['{B635BFE2-E4BE-33DB-9ECB-BC4BBC4070F9}']
  { getters & setters } 

    function get_MarkupExtension: DNMarkupExtension;
    function get_ServiceProvider: DDN.mscorlib.DNIServiceProvider;
    function get_Member: DNXamlMember;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Handled: Boolean;
    procedure set_Handled(value: Boolean);

  { methods } 

    procedure CallBase;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property MarkupExtension: DNMarkupExtension read get_MarkupExtension;
    property ServiceProvider: DDN.mscorlib.DNIServiceProvider read get_ServiceProvider;
    property Member: DNXamlMember read get_Member;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Handled: Boolean read get_Handled write set_Handled;
  end;

  TDNXamlSetMarkupExtensionEventArgs = class(TDNGenericImport<DNXamlSetMarkupExtensionEventArgsClass, DNXamlSetMarkupExtensionEventArgs>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXamlSetTypeConverterEventArgsClass = interface(DNXamlSetValueEventArgsClass)
  ['{C36468DD-E6CF-52C4-9C0E-60ABBD6E8011}']
  { constructors } 

    {class} function init(member: DNXamlMember; typeConverter: DDN.System.Windows.Common.DNTypeConverter; value: DDN.mscorlib.DNObject; serviceProvider: DDN.System.Windows.Common.DNITypeDescriptorContext; cultureInfo: DDN.mscorlib.DNCultureInfo): DNXamlSetTypeConverterEventArgs;

  end;

  [DNTypeName('System.Windows.Markup.XamlSetTypeConverterEventArgs')]
  DNXamlSetTypeConverterEventArgs = interface(DNXamlSetValueEventArgs)
  ['{C92E4D80-049A-3501-911F-A93C2F79F802}']
  { getters & setters } 

    function get_TypeConverter: DDN.System.Windows.Common.DNTypeConverter;
    function get_ServiceProvider: DDN.System.Windows.Common.DNITypeDescriptorContext;
    function get_CultureInfo: DDN.mscorlib.DNCultureInfo;
    function get_Member: DNXamlMember;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Handled: Boolean;
    procedure set_Handled(value: Boolean);

  { methods } 

    procedure CallBase;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TypeConverter: DDN.System.Windows.Common.DNTypeConverter read get_TypeConverter;
    property ServiceProvider: DDN.System.Windows.Common.DNITypeDescriptorContext read get_ServiceProvider;
    property CultureInfo: DDN.mscorlib.DNCultureInfo read get_CultureInfo;
    property Member: DNXamlMember read get_Member;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Handled: Boolean read get_Handled write set_Handled;
  end;

  TDNXamlSetTypeConverterEventArgs = class(TDNGenericImport<DNXamlSetTypeConverterEventArgsClass, DNXamlSetTypeConverterEventArgs>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{D6340497-B007-56B0-BF54-6ED2AD17478A}']
  { constructors } 

    {class} function init(instance: DDN.mscorlib.DNObject): DNXamlObjectEventArgs;

  end;

  [DNTypeName('System.Xaml.XamlObjectEventArgs')]
  DNXamlObjectEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{0C76CAEF-0578-3C06-BA49-EA1E3F1D9F64}']
  { getters & setters } 

    function get_Instance: DDN.mscorlib.DNObject;
    function get_SourceBamlUri: DDN.System.Windows.Common.DNUri;
    function get_ElementLineNumber: Int32;
    function get_ElementLinePosition: Int32;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Instance: DDN.mscorlib.DNObject read get_Instance;
    property SourceBamlUri: DDN.System.Windows.Common.DNUri read get_SourceBamlUri;
    property ElementLineNumber: Int32 read get_ElementLineNumber;
    property ElementLinePosition: Int32 read get_ElementLinePosition;
  end;

  TDNXamlObjectEventArgs = class(TDNGenericImport<DNXamlObjectEventArgsClass, DNXamlObjectEventArgs>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlExceptionClass = interface(DDN.mscorlib.DNExceptionClass)
  ['{C73A8FE6-F3CC-5296-92A0-7558D0E13494}']
  { constructors } 

    {class} function init(message: string; innerException: DDN.mscorlib.DNException; lineNumber: Int32; linePosition: Int32): DNXamlException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlException; overload;
    {class} function init: DNXamlException; overload;
    {class} function init(message: string): DNXamlException; overload;

  end;

  [DNTypeName('System.Xaml.XamlException')]
  DNXamlException = interface(DDN.mscorlib.DNException)
  ['{43A4DBFB-7F6B-39C5-ABBE-DC7078821B2F}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlException = class(TDNGenericImport<DNXamlExceptionClass, DNXamlException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlDuplicateMemberExceptionClass = interface(DNXamlExceptionClass)
  ['{8A5D2E4A-D513-5E4C-972A-6B3EDB2FA025}']
  { constructors } 

    {class} function init: DNXamlDuplicateMemberException; overload;
    {class} function init(member: DNXamlMember; &type: DNXamlType): DNXamlDuplicateMemberException; overload;
    {class} function init(message: string): DNXamlDuplicateMemberException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlDuplicateMemberException; overload;

  end;

  [DNTypeName('System.Xaml.XamlDuplicateMemberException')]
  DNXamlDuplicateMemberException = interface(DNXamlException)
  ['{83511200-1CB5-3B38-8C35-3007DE6B9F69}']
  { getters & setters } 

    function get_DuplicateMember: DNXamlMember;
    procedure set_DuplicateMember(value: DNXamlMember);
    function get_ParentType: DNXamlType;
    procedure set_ParentType(value: DNXamlType);
    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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

    property DuplicateMember: DNXamlMember read get_DuplicateMember write set_DuplicateMember;
    property ParentType: DNXamlType read get_ParentType write set_ParentType;
    property Message: string read get_Message;
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlDuplicateMemberException = class(TDNGenericImport<DNXamlDuplicateMemberExceptionClass, DNXamlDuplicateMemberException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlInternalExceptionClass = interface(DNXamlExceptionClass)
  ['{35ECB897-F488-577A-B6F2-15C0F2967D8C}']
  { constructors } 

    {class} function init: DNXamlInternalException; overload;
    {class} function init(message: string): DNXamlInternalException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlInternalException; overload;

  end;

  [DNTypeName('System.Xaml.XamlInternalException')]
  DNXamlInternalException = interface(DNXamlException)
  ['{4E0218E8-4700-3FBB-A44A-86E9E13CB429}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlInternalException = class(TDNGenericImport<DNXamlInternalExceptionClass, DNXamlInternalException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectReaderExceptionClass = interface(DNXamlExceptionClass)
  ['{0CCD2BCC-5159-5607-B8BC-BDDCDD164395}']
  { constructors } 

    {class} function init: DNXamlObjectReaderException; overload;
    {class} function init(message: string): DNXamlObjectReaderException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlObjectReaderException; overload;

  end;

  [DNTypeName('System.Xaml.XamlObjectReaderException')]
  DNXamlObjectReaderException = interface(DNXamlException)
  ['{A666A348-0184-348D-B769-0D277CFCB036}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlObjectReaderException = class(TDNGenericImport<DNXamlObjectReaderExceptionClass, DNXamlObjectReaderException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectWriterExceptionClass = interface(DNXamlExceptionClass)
  ['{7101B890-F60E-5B51-8EAD-B5962F87444B}']
  { constructors } 

    {class} function init: DNXamlObjectWriterException; overload;
    {class} function init(message: string): DNXamlObjectWriterException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlObjectWriterException; overload;

  end;

  [DNTypeName('System.Xaml.XamlObjectWriterException')]
  DNXamlObjectWriterException = interface(DNXamlException)
  ['{ECC04FF2-71DB-37DA-B773-6F79805C8960}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlObjectWriterException = class(TDNGenericImport<DNXamlObjectWriterExceptionClass, DNXamlObjectWriterException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlParseExceptionClass = interface(DNXamlExceptionClass)
  ['{CEC09144-A12E-5A74-B5C2-265506BFAF92}']
  { constructors } 

    {class} function init: DNXamlParseException; overload;
    {class} function init(message: string): DNXamlParseException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlParseException; overload;

  end;

  [DNTypeName('System.Xaml.XamlParseException')]
  DNXamlParseException = interface(DNXamlException)
  ['{70F42D6A-02CD-3A1C-90B2-1DF8FE2E7418}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlParseException = class(TDNGenericImport<DNXamlParseExceptionClass, DNXamlParseException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlSchemaExceptionClass = interface(DNXamlExceptionClass)
  ['{0396F94A-BEED-5542-9CCA-9019701DD111}']
  { constructors } 

    {class} function init: DNXamlSchemaException; overload;
    {class} function init(message: string): DNXamlSchemaException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlSchemaException; overload;

  end;

  [DNTypeName('System.Xaml.XamlSchemaException')]
  DNXamlSchemaException = interface(DNXamlException)
  ['{41395F55-98B5-362E-8F21-065EB5035409}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlSchemaException = class(TDNGenericImport<DNXamlSchemaExceptionClass, DNXamlSchemaException>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlXmlWriterExceptionClass = interface(DNXamlExceptionClass)
  ['{5B48CC7E-FB1E-5A11-9E1D-D51642C49B6B}']
  { constructors } 

    {class} function init: DNXamlXmlWriterException; overload;
    {class} function init(message: string): DNXamlXmlWriterException; overload;
    {class} function init(message: string; innerException: DDN.mscorlib.DNException): DNXamlXmlWriterException; overload;

  end;

  [DNTypeName('System.Xaml.XamlXmlWriterException')]
  DNXamlXmlWriterException = interface(DNXamlException)
  ['{4066FB76-074D-3E7B-9D72-9DA6A091CBC5}']
  { getters & setters } 

    function get_Message: string;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;
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
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
    property Data: DDN.mscorlib.DNIDictionary read get_Data;
    property InnerException: DDN.mscorlib.DNException read get_InnerException;
    property TargetSite: DDN.mscorlib.DNMethodBase read get_TargetSite;
    property StackTrace: string read get_StackTrace;
    property HelpLink: string read get_HelpLink write set_HelpLink;
    property Source: string read get_Source write set_Source;
    property HResult: Int32 read get_HResult;
  end;

  TDNXamlXmlWriterException = class(TDNGenericImport<DNXamlXmlWriterExceptionClass, DNXamlXmlWriterException>) end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IValueSerializerContext')]
  DNIValueSerializerContext = interface(DDN.System.Windows.Common.DNITypeDescriptorContext)
  ['{8304769D-A06C-3C84-98F6-6690BC5727C4}']
  { methods } 

    function GetValueSerializerFor(&type: DDN.mscorlib.DNType): DNValueSerializer; overload;
    function GetValueSerializerFor(descriptor: DDN.System.Windows.Common.DNPropertyDescriptor): DNValueSerializer; overload;

  end;

  //-------------namespace: System.Xaml.Permissions----------------
  DNXamlLoadPermissionClass = interface(DDN.mscorlib.DNCodeAccessPermissionClass)
  ['{B8ECF0D4-BD7E-55C6-9AA5-0C71AE86E137}']
  { constructors } 

    {class} function init(state: DDN.mscorlib.DNPermissionState): DNXamlLoadPermission; overload;
    {class} function init(allowedAccess: DNXamlAccessLevel): DNXamlLoadPermission; overload;
    {class} function init(allowedAccess: DDN.mscorlib.DNIEnumerable<DNXamlAccessLevel>): DNXamlLoadPermission; overload;

  end;

  [DNTypeName('System.Xaml.Permissions.XamlLoadPermission')]
  DNXamlLoadPermission = interface(DDN.mscorlib.DNCodeAccessPermission)
  ['{7EBD4F09-CC8C-3859-A997-4194F90BFDF8}']
  { getters & setters } 

    function get_AllowedAccess: DDN.mscorlib.DNIList<DNXamlAccessLevel>;

  { methods } 

    function IsSubsetOf(target: DDN.mscorlib.DNIPermission): Boolean;
    function Copy: DDN.mscorlib.DNIPermission;
    function Includes(requestedAccess: DNXamlAccessLevel): Boolean;
    function IsUnrestricted: Boolean;
    procedure FromXml(elem: DDN.mscorlib.DNSecurityElement);
    function Intersect(target: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    function ToXml: DDN.mscorlib.DNSecurityElement;
    function Union(other: DDN.mscorlib.DNIPermission): DDN.mscorlib.DNIPermission;
    procedure Demand;
    procedure Assert;
    procedure Deny;
    procedure PermitOnly;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property AllowedAccess: DDN.mscorlib.DNIList<DNXamlAccessLevel> read get_AllowedAccess;
  end;

  TDNXamlLoadPermission = class(TDNGenericImport<DNXamlLoadPermissionClass, DNXamlLoadPermission>) end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IComponentConnector')]
  DNIComponentConnector = interface(DDN.mscorlib.DNObject)
  ['{0ED59497-2EB0-352E-9F49-BD380F12EB62}']
  { methods } 

    procedure Connect(connectionId: Int32; target: DDN.mscorlib.DNObject);
    procedure InitializeComponent;

  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.INameScope')]
  DNINameScope = interface(DDN.mscorlib.DNObject)
  ['{2302495C-8AFF-3D56-B199-CC3E825247EF}']
  { methods } 

    procedure RegisterName(name: string; scopedElement: DDN.mscorlib.DNObject);
    procedure UnregisterName(name: string);
    function FindName(name: string): DDN.mscorlib.DNObject;

  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.INameScopeDictionary')]
  DNINameScopeDictionary = interface(DNINameScope)
  ['{0A135675-CCC1-3883-8BC7-DE455C166C6E}']
  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IProvideValueTarget')]
  DNIProvideValueTarget = interface(DDN.mscorlib.DNObject)
  ['{C702B659-BC6B-360F-A405-5E97AAFD7018}']
  { getters & setters } 

    function get_TargetObject: DDN.mscorlib.DNObject;
    function get_TargetProperty: DDN.mscorlib.DNObject;

  { propertys } 

    property TargetObject: DDN.mscorlib.DNObject read get_TargetObject;
    property TargetProperty: DDN.mscorlib.DNObject read get_TargetProperty;
  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IQueryAmbient')]
  DNIQueryAmbient = interface(DDN.mscorlib.DNObject)
  ['{2CD1EF90-10D1-3B19-88E4-F37D6E110359}']
  { methods } 

    function IsAmbientPropertyAvailable(propertyName: string): Boolean;

  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IUriContext')]
  DNIUriContext = interface(DDN.mscorlib.DNObject)
  ['{D1DFA023-9E55-3C49-88C9-406911354C48}']
  { getters & setters } 

    function get_BaseUri: DDN.System.Windows.Common.DNUri;
    procedure set_BaseUri(value: DDN.System.Windows.Common.DNUri);

  { propertys } 

    property BaseUri: DDN.System.Windows.Common.DNUri read get_BaseUri write set_BaseUri;
  end;

  //-------------namespace: System.Windows.Markup----------------
  [DNTypeName('System.Windows.Markup.IXamlTypeResolver')]
  DNIXamlTypeResolver = interface(DDN.mscorlib.DNObject)
  ['{77F75146-A83F-3929-ACEB-7F623F555CC3}']
  { methods } 

    function Resolve(qualifiedTypeName: string): DDN.mscorlib.DNType;

  end;

  //-------------namespace: System.Windows.Markup----------------
  DNMarkupExtensionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{41E50566-121C-50B1-B772-AF07E7E8A0EF}']
  end;

  [DNTypeName('System.Windows.Markup.MarkupExtension')]
  DNMarkupExtension = interface(DDN.mscorlib.DNObject)
  ['{87E32420-AB32-3866-B242-57CCC12169C8}']
  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNMarkupExtension = class(TDNGenericImport<DNMarkupExtensionClass, DNMarkupExtension>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNArrayExtensionClass = interface(DNMarkupExtensionClass)
  ['{A3DF18EB-E3CE-5DA2-8A44-78CF8A0FA937}']
  { constructors } 

    {class} function init: DNArrayExtension; overload;
    {class} function init(arrayType: DDN.mscorlib.DNType): DNArrayExtension; overload;
    {class} function init(elements: DDN.mscorlib.DNArray): DNArrayExtension; overload;

  end;

  [DNTypeName('System.Windows.Markup.ArrayExtension')]
  DNArrayExtension = interface(DNMarkupExtension)
  ['{CD64C2CA-8E94-341B-980A-DCD7FE37B778}']
  { getters & setters } 

    function get_Type: DDN.mscorlib.DNType;
    procedure set_Type(value: DDN.mscorlib.DNType);
    function get_Items: DDN.mscorlib.DNIList;

  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    procedure AddChild(value: DDN.mscorlib.DNObject);
    procedure AddText(text: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property &Type: DDN.mscorlib.DNType read get_Type write set_Type;
    property Items: DDN.mscorlib.DNIList read get_Items;
  end;

  TDNArrayExtension = class(TDNGenericImport<DNArrayExtensionClass, DNArrayExtension>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNNullExtensionClass = interface(DNMarkupExtensionClass)
  ['{569E0884-D3F5-5A9D-94F7-BCD04F4875C7}']
  { constructors } 

    {class} function init: DNNullExtension;

  end;

  [DNTypeName('System.Windows.Markup.NullExtension')]
  DNNullExtension = interface(DNMarkupExtension)
  ['{36662D3E-87E0-3749-BC08-61E0CBD94D75}']
  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNNullExtension = class(TDNGenericImport<DNNullExtensionClass, DNNullExtension>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNReferenceClass = interface(DNMarkupExtensionClass)
  ['{7C564FB1-C7EC-54F1-B074-A786F6C83190}']
  { constructors } 

    {class} function init: DNReference; overload;
    {class} function init(name: string): DNReference; overload;

  end;

  [DNTypeName('System.Windows.Markup.Reference')]
  DNReference = interface(DNMarkupExtension)
  ['{B005AD8E-55B4-35BA-834C-0B95219D617E}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);

  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name write set_Name;
  end;

  TDNReference = class(TDNGenericImport<DNReferenceClass, DNReference>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNStaticExtensionClass = interface(DNMarkupExtensionClass)
  ['{20206F51-6F9F-5D5D-AD73-FC3C9A02F6AD}']
  { constructors } 

    {class} function init: DNStaticExtension; overload;
    {class} function init(member: string): DNStaticExtension; overload;

  end;

  [DNTypeName('System.Windows.Markup.StaticExtension')]
  DNStaticExtension = interface(DNMarkupExtension)
  ['{96C5E7FD-819F-3E66-9313-B7E150A788E7}']
  { getters & setters } 

    function get_Member: string;
    procedure set_Member(value: string);
    function get_MemberType: DDN.mscorlib.DNType;
    procedure set_MemberType(value: DDN.mscorlib.DNType);

  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Member: string read get_Member write set_Member;
    property MemberType: DDN.mscorlib.DNType read get_MemberType write set_MemberType;
  end;

  TDNStaticExtension = class(TDNGenericImport<DNStaticExtensionClass, DNStaticExtension>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNTypeExtensionClass = interface(DNMarkupExtensionClass)
  ['{2A472BB4-DFF6-51BC-8BA9-ECF7650F0433}']
  { constructors } 

    {class} function init: DNTypeExtension; overload;
    {class} function init(typeName: string): DNTypeExtension; overload;
    {class} function init(&type: DDN.mscorlib.DNType): DNTypeExtension; overload;

  end;

  [DNTypeName('System.Windows.Markup.TypeExtension')]
  DNTypeExtension = interface(DNMarkupExtension)
  ['{D751D40C-67BB-3869-BECC-7B006E7AD2B4}']
  { getters & setters } 

    function get_TypeName: string;
    procedure set_TypeName(value: string);
    function get_Type: DDN.mscorlib.DNType;
    procedure set_Type(value: DDN.mscorlib.DNType);

  { methods } 

    function ProvideValue(serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property TypeName: string read get_TypeName write set_TypeName;
    property &Type: DDN.mscorlib.DNType read get_Type write set_Type;
  end;

  TDNTypeExtension = class(TDNGenericImport<DNTypeExtensionClass, DNTypeExtension>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNMemberDefinitionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{FF9DFBC9-A517-5F83-B0A1-146A835CF5AF}']
  end;

  [DNTypeName('System.Windows.Markup.MemberDefinition')]
  DNMemberDefinition = interface(DDN.mscorlib.DNObject)
  ['{7AB296A1-8AC5-3DE5-9F79-7A0E49BEE80D}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name write set_Name;
  end;

  TDNMemberDefinition = class(TDNGenericImport<DNMemberDefinitionClass, DNMemberDefinition>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNPropertyDefinitionClass = interface(DNMemberDefinitionClass)
  ['{BA119EA4-6097-52DE-B312-751E8257BF0C}']
  { constructors } 

    {class} function init: DNPropertyDefinition;

  end;

  [DNTypeName('System.Windows.Markup.PropertyDefinition')]
  DNPropertyDefinition = interface(DNMemberDefinition)
  ['{B27F4960-CF96-3228-9B22-D0E6DD3F115D}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);
    function get_Type: DNXamlType;
    procedure set_Type(value: DNXamlType);
    function get_Modifier: string;
    procedure set_Modifier(value: string);
    function get_Attributes: DDN.mscorlib.DNIList<DDN.mscorlib.DNAttribute>;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Name: string read get_Name write set_Name;
    property &Type: DNXamlType read get_Type write set_Type;
    property Modifier: string read get_Modifier write set_Modifier;
    property Attributes: DDN.mscorlib.DNIList<DDN.mscorlib.DNAttribute> read get_Attributes;
  end;

  TDNPropertyDefinition = class(TDNGenericImport<DNPropertyDefinitionClass, DNPropertyDefinition>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNValueSerializerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{330A51B7-7BA3-53A5-B5D9-9464822AB01D}']
  { static methods } 

    {class} function GetSerializerFor(&type: DDN.mscorlib.DNType): DNValueSerializer; overload;
    {class} function GetSerializerFor(descriptor: DDN.System.Windows.Common.DNPropertyDescriptor): DNValueSerializer; overload;
    {class} function GetSerializerFor(&type: DDN.mscorlib.DNType; context: DNIValueSerializerContext): DNValueSerializer; overload;
    {class} function GetSerializerFor(descriptor: DDN.System.Windows.Common.DNPropertyDescriptor; context: DNIValueSerializerContext): DNValueSerializer; overload;

  end;

  [DNTypeName('System.Windows.Markup.ValueSerializer')]
  DNValueSerializer = interface(DDN.mscorlib.DNObject)
  ['{40FFD90D-F735-37EA-9FB9-A1908D07CE0E}']
  { methods } 

    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): Boolean;
    function CanConvertFromString(value: string; context: DNIValueSerializerContext): Boolean;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): string;
    function ConvertFromString(value: string; context: DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNValueSerializer = class(TDNGenericImport<DNValueSerializerClass, DNValueSerializer>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNDateTimeValueSerializerClass = interface(DNValueSerializerClass)
  ['{E0B8C472-9F2E-5806-8269-30AD87B375E6}']
  { constructors } 

    {class} function init: DNDateTimeValueSerializer;

  end;

  [DNTypeName('System.Windows.Markup.DateTimeValueSerializer')]
  DNDateTimeValueSerializer = interface(DNValueSerializer)
  ['{C020EC74-6C4E-3F61-9DFB-DEACCF490A6E}']
  { methods } 

    function CanConvertFromString(value: string; context: DNIValueSerializerContext): Boolean;
    function CanConvertToString(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): Boolean;
    function ConvertFromString(value: string; context: DNIValueSerializerContext): DDN.mscorlib.DNObject;
    function ConvertToString(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): string;
    function TypeReferences(value: DDN.mscorlib.DNObject; context: DNIValueSerializerContext): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNType>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNDateTimeValueSerializer = class(TDNGenericImport<DNDateTimeValueSerializerClass, DNDateTimeValueSerializer>) end;

  //-------------namespace: System.Windows.Markup----------------
  DNXDataClass = interface(DDN.mscorlib.DNObjectClass)
  ['{772F29F6-525F-5E56-9AA4-D6CA843F953F}']
  { constructors } 

    {class} function init: DNXData;

  end;

  [DNTypeName('System.Windows.Markup.XData')]
  DNXData = interface(DDN.mscorlib.DNObject)
  ['{C679A72D-F214-3EF5-831E-5F2EE5DE7BEF}']
  { getters & setters } 

    function get_Text: string;
    procedure set_Text(value: string);
    function get_XmlReader: DDN.mscorlib.DNObject;
    procedure set_XmlReader(value: DDN.mscorlib.DNObject);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Text: string read get_Text write set_Text;
    property XmlReader: DDN.mscorlib.DNObject read get_XmlReader write set_XmlReader;
  end;

  TDNXData = class(TDNGenericImport<DNXDataClass, DNXData>) end;

  //-------------namespace: System.Xaml----------------
  DNAmbientPropertyValueClass = interface(DDN.mscorlib.DNObjectClass)
  ['{923BFB58-74AF-5465-AA91-CDCC77148FE7}']
  { constructors } 

    {class} function init(&property: DNXamlMember; value: DDN.mscorlib.DNObject): DNAmbientPropertyValue;

  end;

  [DNTypeName('System.Xaml.AmbientPropertyValue')]
  DNAmbientPropertyValue = interface(DDN.mscorlib.DNObject)
  ['{2A7FEEE4-C30F-3242-9908-6A0EA4457C75}']
  { getters & setters } 

    function get_Value: DDN.mscorlib.DNObject;
    function get_RetrievedProperty: DNXamlMember;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Value: DDN.mscorlib.DNObject read get_Value;
    property RetrievedProperty: DNXamlMember read get_RetrievedProperty;
  end;

  TDNAmbientPropertyValue = class(TDNGenericImport<DNAmbientPropertyValueClass, DNAmbientPropertyValue>) end;

  //-------------namespace: System.Xaml----------------
  DNAttachableMemberIdentifierClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6DD5C379-7654-5280-8973-8A9FFCAD753C}']
  { constructors } 

    {class} function init(declaringType: DDN.mscorlib.DNType; memberName: string): DNAttachableMemberIdentifier;

  end;

  [DNTypeName('System.Xaml.AttachableMemberIdentifier')]
  DNAttachableMemberIdentifier = interface(DDN.mscorlib.DNObject)
  ['{C0DAF3A8-584E-3445-9766-0384339BFF45}']
  { getters & setters } 

    function get_MemberName: string;
    function get_DeclaringType: DDN.mscorlib.DNType;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(other: DNAttachableMemberIdentifier): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property MemberName: string read get_MemberName;
    property DeclaringType: DDN.mscorlib.DNType read get_DeclaringType;
  end;

  TDNAttachableMemberIdentifier = class(TDNGenericImport<DNAttachableMemberIdentifierClass, DNAttachableMemberIdentifier>) end;

  //-------------namespace: System.Xaml----------------
  DNAttachablePropertyServicesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AE64A6CE-C4E8-5573-A219-B5C244A35C9F}']
  { static methods } 

    {class} procedure SetProperty(instance: DDN.mscorlib.DNObject; name: DNAttachableMemberIdentifier; value: DDN.mscorlib.DNObject);
    {class} function GetAttachedPropertyCount(instance: DDN.mscorlib.DNObject): Int32;
    {class} function RemoveProperty(instance: DDN.mscorlib.DNObject; name: DNAttachableMemberIdentifier): Boolean;
    {class} function TryGetProperty(instance: DDN.mscorlib.DNObject; name: DNAttachableMemberIdentifier; out value: DDN.mscorlib.DNObject): Boolean;

  end;

  [DNTypeName('System.Xaml.AttachablePropertyServices')]
  DNAttachablePropertyServices = interface(DDN.mscorlib.DNObject)
  ['{9C8581FE-F788-3F1E-9494-D0EC52237462}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNAttachablePropertyServices = class(TDNGenericImport<DNAttachablePropertyServicesClass, DNAttachablePropertyServices>) end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IAmbientProvider')]
  DNIAmbientProvider = interface(DDN.mscorlib.DNObject)
  ['{56B9C37F-8025-3048-B3AD-F55A05CCA21B}']
  { methods } 

    function GetFirstAmbientValue(ceilingTypes: DDN.mscorlib.DNIEnumerable<DNXamlType>; properties: TArray<DNXamlMember>): DNAmbientPropertyValue; overload;
    function GetFirstAmbientValue(types: TArray<DNXamlType>): DDN.mscorlib.DNObject; overload;
    function GetAllAmbientValues(ceilingTypes: DDN.mscorlib.DNIEnumerable<DNXamlType>; properties: TArray<DNXamlMember>): DDN.mscorlib.DNIEnumerable<DNAmbientPropertyValue>; overload;
    function GetAllAmbientValues(types: TArray<DNXamlType>): DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNObject>; overload;
    function GetAllAmbientValues(ceilingTypes: DDN.mscorlib.DNIEnumerable<DNXamlType>; searchLiveStackOnly: Boolean; types: DDN.mscorlib.DNIEnumerable<DNXamlType>; properties: TArray<DNXamlMember>): DDN.mscorlib.DNIEnumerable<DNAmbientPropertyValue>; overload;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IAttachedPropertyStore')]
  DNIAttachedPropertyStore = interface(DDN.mscorlib.DNObject)
  ['{E6EAA35F-4FAE-3110-B9D1-ACF9C49C256D}']
  { getters & setters } 

    function get_PropertyCount: Int32;

  { methods } 

    function RemoveProperty(attachableMemberIdentifier: DNAttachableMemberIdentifier): Boolean;
    procedure SetProperty(attachableMemberIdentifier: DNAttachableMemberIdentifier; value: DDN.mscorlib.DNObject);
    function TryGetProperty(attachableMemberIdentifier: DNAttachableMemberIdentifier; out value: DDN.mscorlib.DNObject): Boolean;

  { propertys } 

    property PropertyCount: Int32 read get_PropertyCount;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IDestinationTypeProvider')]
  DNIDestinationTypeProvider = interface(DDN.mscorlib.DNObject)
  ['{930DD1DE-CD98-3308-8B99-A1C4B8DF3E5B}']
  { methods } 

    function GetDestinationType: DDN.mscorlib.DNType;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.INamespacePrefixLookup')]
  DNINamespacePrefixLookup = interface(DDN.mscorlib.DNObject)
  ['{8DE00F54-F37C-3432-BCCB-F0FB4FCDF5A7}']
  { methods } 

    function LookupPrefix(ns: string): string;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IRootObjectProvider')]
  DNIRootObjectProvider = interface(DDN.mscorlib.DNObject)
  ['{379E5C3B-82CF-35A0-8211-CC0947F989AC}']
  { getters & setters } 

    function get_RootObject: DDN.mscorlib.DNObject;

  { propertys } 

    property RootObject: DDN.mscorlib.DNObject read get_RootObject;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlIndexingReader')]
  DNIXamlIndexingReader = interface(DDN.mscorlib.DNObject)
  ['{A39E4ACA-0A4C-38B8-BC2B-8222A771B8AE}']
  { getters & setters } 

    function get_Count: Int32;
    function get_CurrentIndex: Int32;
    procedure set_CurrentIndex(value: Int32);

  { propertys } 

    property Count: Int32 read get_Count;
    property CurrentIndex: Int32 read get_CurrentIndex write set_CurrentIndex;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlLineInfo')]
  DNIXamlLineInfo = interface(DDN.mscorlib.DNObject)
  ['{86EFA016-F065-321A-92C8-5E9DC6D15118}']
  { getters & setters } 

    function get_HasLineInfo: Boolean;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;

  { propertys } 

    property HasLineInfo: Boolean read get_HasLineInfo;
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlLineInfoConsumer')]
  DNIXamlLineInfoConsumer = interface(DDN.mscorlib.DNObject)
  ['{79FADA26-2043-3B43-89C9-568038A21A77}']
  { getters & setters } 

    function get_ShouldProvideLineInfo: Boolean;

  { methods } 

    procedure SetLineInfo(lineNumber: Int32; linePosition: Int32);

  { propertys } 

    property ShouldProvideLineInfo: Boolean read get_ShouldProvideLineInfo;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlNameProvider')]
  DNIXamlNameProvider = interface(DDN.mscorlib.DNObject)
  ['{12721D30-EFC7-35C6-8C77-BD63C5288BC7}']
  { methods } 

    function GetName(value: DDN.mscorlib.DNObject): string;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlNameResolver')]
  DNIXamlNameResolver = interface(DDN.mscorlib.DNObject)
  ['{B5A81687-32FF-35AA-B88E-FEF1F475E29C}']
  { getters & setters } 

    function get_IsFixupTokenAvailable: Boolean;

  { events } 

    procedure add_OnNameScopeInitializationComplete(value: DDN.mscorlib.DNEventHandler);
    procedure remove_OnNameScopeInitializationComplete(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    function Resolve(name: string): DDN.mscorlib.DNObject; overload;
    function Resolve(name: string; out isFullyInitialized: Boolean): DDN.mscorlib.DNObject; overload;
    function GetFixupToken(names: DDN.mscorlib.DNIEnumerable<string>): DDN.mscorlib.DNObject; overload;
    function GetFixupToken(names: DDN.mscorlib.DNIEnumerable<string>; canAssignDirectly: Boolean): DDN.mscorlib.DNObject; overload;

  { propertys } 

    property IsFixupTokenAvailable: Boolean read get_IsFixupTokenAvailable;
  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlNamespaceResolver')]
  DNIXamlNamespaceResolver = interface(DDN.mscorlib.DNObject)
  ['{8147246D-027D-3EE4-B99A-44D48F453083}']
  { methods } 

    function GetNamespace(prefix: string): string;
    function GetNamespacePrefixes: DDN.mscorlib.DNIEnumerable<DNNamespaceDeclaration>;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlObjectWriterFactory')]
  DNIXamlObjectWriterFactory = interface(DDN.mscorlib.DNObject)
  ['{224A5889-0333-3775-BFBD-DD2DE1D311FF}']
  { methods } 

    function GetParentSettings: DNXamlObjectWriterSettings;
    function GetXamlObjectWriter(settings: DNXamlObjectWriterSettings): DNXamlObjectWriter;

  end;

  //-------------namespace: System.Xaml----------------
  [DNTypeName('System.Xaml.IXamlSchemaContextProvider')]
  DNIXamlSchemaContextProvider = interface(DDN.mscorlib.DNObject)
  ['{12451320-4140-38DE-B693-2057FF0E7C83}']
  { getters & setters } 

    function get_SchemaContext: DNXamlSchemaContext;

  { propertys } 

    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
  end;

  //-------------namespace: System.Xaml----------------
  DNNamespaceDeclarationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{82442CBC-3F03-5CB1-8AE8-69DD8F660A18}']
  { constructors } 

    {class} function init(ns: string; prefix: string): DNNamespaceDeclaration;

  end;

  [DNTypeName('System.Xaml.NamespaceDeclaration')]
  DNNamespaceDeclaration = interface(DDN.mscorlib.DNObject)
  ['{9D436953-0ABA-3DF2-A4C6-A07578CE137D}']
  { getters & setters } 

    function get_Prefix: string;
    function get_Namespace: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Prefix: string read get_Prefix;
    property Namespace: string read get_Namespace;
  end;

  TDNNamespaceDeclaration = class(TDNGenericImport<DNNamespaceDeclarationClass, DNNamespaceDeclaration>) end;

  //-------------namespace: System.Xaml.Permissions----------------
  DNXamlAccessLevelClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3DC4B356-3D0A-5828-807A-1EDB1A1036F9}']
  { static methods } 

    {class} function AssemblyAccessTo(assembly: DDN.mscorlib.DNAssembly): DNXamlAccessLevel; overload;
    {class} function PrivateAccessTo(&type: DDN.mscorlib.DNType): DNXamlAccessLevel; overload;
    {class} function AssemblyAccessTo(assemblyName: DDN.mscorlib.DNAssemblyName): DNXamlAccessLevel; overload;
    {class} function PrivateAccessTo(assemblyQualifiedTypeName: string): DNXamlAccessLevel; overload;

  end;

  [DNTypeName('System.Xaml.Permissions.XamlAccessLevel')]
  DNXamlAccessLevel = interface(DDN.mscorlib.DNObject)
  ['{D1B913BC-E645-3A72-8357-B2A35F3173F2}']
  { getters & setters } 

    function get_AssemblyAccessToAssemblyName: DDN.mscorlib.DNAssemblyName;
    function get_PrivateAccessToTypeName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AssemblyAccessToAssemblyName: DDN.mscorlib.DNAssemblyName read get_AssemblyAccessToAssemblyName;
    property PrivateAccessToTypeName: string read get_PrivateAccessToTypeName;
  end;

  TDNXamlAccessLevel = class(TDNGenericImport<DNXamlAccessLevelClass, DNXamlAccessLevel>) end;

  //-------------namespace: System.Xaml.Schema----------------
  DNXamlMemberInvokerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{08AD460A-FE67-512E-97AE-3D002D09A43F}']
  { static getter & setter } 

    {class} function get_UnknownInvoker: DNXamlMemberInvoker;

  { constructors } 

    {class} function init(member: DNXamlMember): DNXamlMemberInvoker;

  { static propertys } 

    {class} property UnknownInvoker: DNXamlMemberInvoker read get_UnknownInvoker;
  end;

  [DNTypeName('System.Xaml.Schema.XamlMemberInvoker')]
  DNXamlMemberInvoker = interface(DDN.mscorlib.DNObject)
  ['{83F3DA3B-7461-3EFB-91FE-3A53749175A9}']
  { getters & setters } 

    function get_UnderlyingGetter: DDN.mscorlib.DNMethodInfo;
    function get_UnderlyingSetter: DDN.mscorlib.DNMethodInfo;

  { methods } 

    function GetValue(instance: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject;
    procedure SetValue(instance: DDN.mscorlib.DNObject; value: DDN.mscorlib.DNObject);
    function ShouldSerializeValue(instance: DDN.mscorlib.DNObject): DNShouldSerializeResult;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property UnderlyingGetter: DDN.mscorlib.DNMethodInfo read get_UnderlyingGetter;
    property UnderlyingSetter: DDN.mscorlib.DNMethodInfo read get_UnderlyingSetter;
  end;

  TDNXamlMemberInvoker = class(TDNGenericImport<DNXamlMemberInvokerClass, DNXamlMemberInvoker>) end;

  //-------------namespace: System.Xaml.Schema----------------
  DNXamlTypeInvokerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0E2E0EE1-43FF-5DB4-ACDC-519485EDB4D4}']
  { static getter & setter } 

    {class} function get_UnknownInvoker: DNXamlTypeInvoker;

  { constructors } 

    {class} function init(&type: DNXamlType): DNXamlTypeInvoker;

  { static propertys } 

    {class} property UnknownInvoker: DNXamlTypeInvoker read get_UnknownInvoker;
  end;

  [DNTypeName('System.Xaml.Schema.XamlTypeInvoker')]
  DNXamlTypeInvoker = interface(DDN.mscorlib.DNObject)
  ['{82598C63-EA8E-33B2-8EF2-9769CDCAC20D}']
  { methods } 

    procedure AddToCollection(instance: DDN.mscorlib.DNObject; item: DDN.mscorlib.DNObject);
    procedure AddToDictionary(instance: DDN.mscorlib.DNObject; key: DDN.mscorlib.DNObject; item: DDN.mscorlib.DNObject);
    function CreateInstance(arguments: TArray<DDN.mscorlib.DNObject>): DDN.mscorlib.DNObject;
    function GetEnumeratorMethod: DDN.mscorlib.DNMethodInfo;
    function GetItems(instance: DDN.mscorlib.DNObject): DDN.mscorlib.DNIEnumerator;
    function GetAddMethod(contentType: DNXamlType): DDN.mscorlib.DNMethodInfo;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXamlTypeInvoker = class(TDNGenericImport<DNXamlTypeInvokerClass, DNXamlTypeInvoker>) end;

  //-------------namespace: System.Xaml.Schema----------------
  DNXamlTypeNameClass = interface(DDN.mscorlib.DNObjectClass)
  ['{426D86FB-D101-54F1-BAF8-BBCC8D8BD4EB}']
  { constructors } 

    {class} function init: DNXamlTypeName; overload;
    {class} function init(xamlNamespace: string; name: string): DNXamlTypeName; overload;
    {class} function init(xamlNamespace: string; name: string; typeArguments: DDN.mscorlib.DNIEnumerable<DNXamlTypeName>): DNXamlTypeName; overload;
    {class} function init(xamlType: DNXamlType): DNXamlTypeName; overload;

  { static methods } 

    {class} function Parse(typeName: string; namespaceResolver: DNIXamlNamespaceResolver): DNXamlTypeName;
    {class} function TryParse(typeName: string; namespaceResolver: DNIXamlNamespaceResolver; out result: DNXamlTypeName): Boolean;
    {class} function ToString(typeNameList: DDN.mscorlib.DNIList<DNXamlTypeName>; prefixLookup: DNINamespacePrefixLookup): string; overload;
    {class} function ParseList(typeNameList: string; namespaceResolver: DNIXamlNamespaceResolver): DDN.mscorlib.DNIList<DNXamlTypeName>;
    {class} function TryParseList(typeNameList: string; namespaceResolver: DNIXamlNamespaceResolver; out result: DDN.mscorlib.DNIList<DNXamlTypeName>): Boolean;

  end;

  [DNTypeName('System.Xaml.Schema.XamlTypeName')]
  DNXamlTypeName = interface(DDN.mscorlib.DNObject)
  ['{E74FA3C9-0215-3DC4-AB6B-7A5512A1E625}']
  { getters & setters } 

    function get_Name: string;
    procedure set_Name(value: string);
    function get_Namespace: string;
    procedure set_Namespace(value: string);
    function get_TypeArguments: DDN.mscorlib.DNIList<DNXamlTypeName>;

  { methods } 

    function ToString: string; overload;
    function ToString(prefixLookup: DNINamespacePrefixLookup): string; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property Name: string read get_Name write set_Name;
    property Namespace: string read get_Namespace write set_Namespace;
    property TypeArguments: DDN.mscorlib.DNIList<DNXamlTypeName> read get_TypeArguments;
  end;

  TDNXamlTypeName = class(TDNGenericImport<DNXamlTypeNameClass, DNXamlTypeName>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlDeferringLoaderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0572E41E-649A-56BF-AAAE-3BB70C54BBAB}']
  end;

  [DNTypeName('System.Xaml.XamlDeferringLoader')]
  DNXamlDeferringLoader = interface(DDN.mscorlib.DNObject)
  ['{E9306312-9761-3EAB-902B-5EB6D1E041BC}']
  { methods } 

    function Load(xamlReader: DNXamlReader; serviceProvider: DDN.mscorlib.DNIServiceProvider): DDN.mscorlib.DNObject;
    function Save(value: DDN.mscorlib.DNObject; serviceProvider: DDN.mscorlib.DNIServiceProvider): DNXamlReader;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXamlDeferringLoader = class(TDNGenericImport<DNXamlDeferringLoaderClass, DNXamlDeferringLoader>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlLanguageClass = interface(DDN.mscorlib.DNObjectClass)
  ['{4AE3AE3E-29B5-55E4-8837-DAF95F24117D}']
  { static getter & setter } 

    {class} function get_XamlNamespaces: DDN.mscorlib.DNIList<string>;
    {class} function get_XmlNamespaces: DDN.mscorlib.DNIList<string>;
    {class} function get_Array: DNXamlType;
    {class} function get_Member: DNXamlType;
    {class} function get_Null: DNXamlType;
    {class} function get_Property: DNXamlType;
    {class} function get_Reference: DNXamlType;
    {class} function get_Static: DNXamlType;
    {class} function get_Type: DNXamlType;
    {class} function get_String: DNXamlType;
    {class} function get_Double: DNXamlType;
    {class} function get_Int32: DNXamlType;
    {class} function get_Boolean: DNXamlType;
    {class} function get_XData: DNXamlType;
    {class} function get_Object: DNXamlType;
    {class} function get_Char: DNXamlType;
    {class} function get_Single: DNXamlType;
    {class} function get_Byte: DNXamlType;
    {class} function get_Int16: DNXamlType;
    {class} function get_Int64: DNXamlType;
    {class} function get_Decimal: DNXamlType;
    {class} function get_Uri: DNXamlType;
    {class} function get_TimeSpan: DNXamlType;
    {class} function get_Arguments: DNXamlDirective;
    {class} function get_AsyncRecords: DNXamlDirective;
    {class} function get_Class: DNXamlDirective;
    {class} function get_ClassModifier: DNXamlDirective;
    {class} function get_Code: DNXamlDirective;
    {class} function get_ConnectionId: DNXamlDirective;
    {class} function get_FactoryMethod: DNXamlDirective;
    {class} function get_FieldModifier: DNXamlDirective;
    {class} function get_Items: DNXamlDirective;
    {class} function get_Initialization: DNXamlDirective;
    {class} function get_Key: DNXamlDirective;
    {class} function get_Members: DNXamlDirective;
    {class} function get_ClassAttributes: DNXamlDirective;
    {class} function get_Name: DNXamlDirective;
    {class} function get_PositionalParameters: DNXamlDirective;
    {class} function get_Shared: DNXamlDirective;
    {class} function get_Subclass: DNXamlDirective;
    {class} function get_SynchronousMode: DNXamlDirective;
    {class} function get_TypeArguments: DNXamlDirective;
    {class} function get_Uid: DNXamlDirective;
    {class} function get_UnknownContent: DNXamlDirective;
    {class} function get_Base: DNXamlDirective;
    {class} function get_Lang: DNXamlDirective;
    {class} function get_Space: DNXamlDirective;

  { static fields getter & setter } 

   function __fakeFieldGet_Xaml2006Namespace: string;
   function __fakeFieldGet_Xml1998Namespace: string;

  { static fields } 

    {class} property Xaml2006Namespace: string read __fakeFieldGet_Xaml2006Namespace;
    {class} property Xml1998Namespace: string read __fakeFieldGet_Xml1998Namespace;

  { static propertys } 

    {class} property XamlNamespaces: DDN.mscorlib.DNIList<string> read get_XamlNamespaces;
    {class} property XmlNamespaces: DDN.mscorlib.DNIList<string> read get_XmlNamespaces;
    {class} property &Array: DNXamlType read get_Array;
    {class} property Member: DNXamlType read get_Member;
    {class} property Null: DNXamlType read get_Null;
    {class} property &Property: DNXamlType read get_Property;
    {class} property Reference: DNXamlType read get_Reference;
    {class} property &Static: DNXamlType read get_Static;
    {class} property &Type: DNXamlType read get_Type;
    {class} property &String: DNXamlType read get_String;
    {class} property Double: DNXamlType read get_Double;
    {class} property Int32: DNXamlType read get_Int32;
    {class} property Boolean: DNXamlType read get_Boolean;
    {class} property XData: DNXamlType read get_XData;
    {class} property &Object: DNXamlType read get_Object;
    {class} property Char: DNXamlType read get_Char;
    {class} property Single: DNXamlType read get_Single;
    {class} property Byte: DNXamlType read get_Byte;
    {class} property Int16: DNXamlType read get_Int16;
    {class} property Int64: DNXamlType read get_Int64;
    {class} property Decimal: DNXamlType read get_Decimal;
    {class} property Uri: DNXamlType read get_Uri;
    {class} property TimeSpan: DNXamlType read get_TimeSpan;
    {class} property Arguments: DNXamlDirective read get_Arguments;
    {class} property AsyncRecords: DNXamlDirective read get_AsyncRecords;
    {class} property &Class: DNXamlDirective read get_Class;
    {class} property ClassModifier: DNXamlDirective read get_ClassModifier;
    {class} property Code: DNXamlDirective read get_Code;
    {class} property ConnectionId: DNXamlDirective read get_ConnectionId;
    {class} property FactoryMethod: DNXamlDirective read get_FactoryMethod;
    {class} property FieldModifier: DNXamlDirective read get_FieldModifier;
    {class} property Items: DNXamlDirective read get_Items;
    {class} property &Initialization: DNXamlDirective read get_Initialization;
    {class} property Key: DNXamlDirective read get_Key;
    {class} property Members: DNXamlDirective read get_Members;
    {class} property ClassAttributes: DNXamlDirective read get_ClassAttributes;
    {class} property Name: DNXamlDirective read get_Name;
    {class} property PositionalParameters: DNXamlDirective read get_PositionalParameters;
    {class} property Shared: DNXamlDirective read get_Shared;
    {class} property Subclass: DNXamlDirective read get_Subclass;
    {class} property SynchronousMode: DNXamlDirective read get_SynchronousMode;
    {class} property TypeArguments: DNXamlDirective read get_TypeArguments;
    {class} property Uid: DNXamlDirective read get_Uid;
    {class} property UnknownContent: DNXamlDirective read get_UnknownContent;
    {class} property Base: DNXamlDirective read get_Base;
    {class} property Lang: DNXamlDirective read get_Lang;
    {class} property Space: DNXamlDirective read get_Space;
  end;

  [DNTypeName('System.Xaml.XamlLanguage')]
  DNXamlLanguage = interface(DDN.mscorlib.DNObject)
  ['{B70AAB97-D391-3FD3-9CC8-8F237D25D6C2}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXamlLanguage = class(TDNGenericImport<DNXamlLanguageClass, DNXamlLanguage>)
  public const
   Xaml2006Namespace = 'http://schemas.microsoft.com/winfx/2006/xaml';
   Xml1998Namespace = 'http://www.w3.org/XML/1998/namespace';
  end;

  //-------------namespace: System.Xaml----------------
  DNXamlMemberClass = interface(DDN.mscorlib.DNObjectClass)
  ['{EEA9FABC-D37C-56CA-A392-41F4C2BB369F}']
  { constructors } 

    {class} function init(name: string; declaringType: DNXamlType; isAttachable: Boolean): DNXamlMember; overload;
    {class} function init(propertyInfo: DDN.mscorlib.DNPropertyInfo; schemaContext: DNXamlSchemaContext): DNXamlMember; overload;
    {class} function init(propertyInfo: DDN.mscorlib.DNPropertyInfo; schemaContext: DNXamlSchemaContext; invoker: DNXamlMemberInvoker): DNXamlMember; overload;
    {class} function init(eventInfo: DDN.mscorlib.DNEventInfo; schemaContext: DNXamlSchemaContext): DNXamlMember; overload;
    {class} function init(eventInfo: DDN.mscorlib.DNEventInfo; schemaContext: DNXamlSchemaContext; invoker: DNXamlMemberInvoker): DNXamlMember; overload;
    {class} function init(attachablePropertyName: string; getter: DDN.mscorlib.DNMethodInfo; setter: DDN.mscorlib.DNMethodInfo; schemaContext: DNXamlSchemaContext): DNXamlMember; overload;
    {class} function init(attachablePropertyName: string; getter: DDN.mscorlib.DNMethodInfo; setter: DDN.mscorlib.DNMethodInfo; schemaContext: DNXamlSchemaContext; invoker: DNXamlMemberInvoker): DNXamlMember; overload;
    {class} function init(attachableEventName: string; adder: DDN.mscorlib.DNMethodInfo; schemaContext: DNXamlSchemaContext): DNXamlMember; overload;
    {class} function init(attachableEventName: string; adder: DDN.mscorlib.DNMethodInfo; schemaContext: DNXamlSchemaContext; invoker: DNXamlMemberInvoker): DNXamlMember; overload;

  end;

  [DNTypeName('System.Xaml.XamlMember')]
  DNXamlMember = interface(DDN.mscorlib.DNObject)
  ['{5D1A3423-D8C4-32EA-BA89-2DE77E98692C}']
  { getters & setters } 

    function get_DeclaringType: DNXamlType;
    function get_Invoker: DNXamlMemberInvoker;
    function get_IsUnknown: Boolean;
    function get_IsReadPublic: Boolean;
    function get_IsWritePublic: Boolean;
    function get_Name: string;
    function get_IsNameValid: Boolean;
    function get_PreferredXamlNamespace: string;
    function get_TargetType: DNXamlType;
    function get_Type: DNXamlType;
    function get_UnderlyingMember: DDN.mscorlib.DNMemberInfo;
    function get_IsReadOnly: Boolean;
    function get_IsWriteOnly: Boolean;
    function get_IsAttachable: Boolean;
    function get_IsEvent: Boolean;
    function get_IsDirective: Boolean;
    function get_DependsOn: DDN.mscorlib.DNIList<DNXamlMember>;
    function get_IsAmbient: Boolean;
    function get_SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility;
    function get_MarkupExtensionBracketCharacters: DDN.mscorlib.DNIReadOnlyDictionary<Char, Char>;

  { methods } 

    function GetXamlNamespaces: DDN.mscorlib.DNIList<string>;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function Equals(other: DNXamlMember): Boolean; overload;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property DeclaringType: DNXamlType read get_DeclaringType;
    property Invoker: DNXamlMemberInvoker read get_Invoker;
    property IsUnknown: Boolean read get_IsUnknown;
    property IsReadPublic: Boolean read get_IsReadPublic;
    property IsWritePublic: Boolean read get_IsWritePublic;
    property Name: string read get_Name;
    property IsNameValid: Boolean read get_IsNameValid;
    property PreferredXamlNamespace: string read get_PreferredXamlNamespace;
    property TargetType: DNXamlType read get_TargetType;
    property &Type: DNXamlType read get_Type;
    property UnderlyingMember: DDN.mscorlib.DNMemberInfo read get_UnderlyingMember;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsWriteOnly: Boolean read get_IsWriteOnly;
    property IsAttachable: Boolean read get_IsAttachable;
    property IsEvent: Boolean read get_IsEvent;
    property IsDirective: Boolean read get_IsDirective;
    property DependsOn: DDN.mscorlib.DNIList<DNXamlMember> read get_DependsOn;
    property IsAmbient: Boolean read get_IsAmbient;
    property SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility read get_SerializationVisibility;
    property MarkupExtensionBracketCharacters: DDN.mscorlib.DNIReadOnlyDictionary<Char, Char> read get_MarkupExtensionBracketCharacters;
  end;

  TDNXamlMember = class(TDNGenericImport<DNXamlMemberClass, DNXamlMember>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlDirectiveClass = interface(DNXamlMemberClass)
  ['{4B0CEBD8-AC7B-5AFD-8151-527105FD920B}']
  { constructors } 

    {class} function init(xamlNamespace: string; name: string): DNXamlDirective; overload;

  end;

  [DNTypeName('System.Xaml.XamlDirective')]
  DNXamlDirective = interface(DNXamlMember)
  ['{83725DB4-8B3E-32D2-A38A-48B51EF05432}']
  { getters & setters } 

    function get_AllowedLocation: DNAllowedMemberLocations;
    function get_DeclaringType: DNXamlType;
    function get_Invoker: DNXamlMemberInvoker;
    function get_IsUnknown: Boolean;
    function get_IsReadPublic: Boolean;
    function get_IsWritePublic: Boolean;
    function get_Name: string;
    function get_IsNameValid: Boolean;
    function get_PreferredXamlNamespace: string;
    function get_TargetType: DNXamlType;
    function get_Type: DNXamlType;
    function get_UnderlyingMember: DDN.mscorlib.DNMemberInfo;
    function get_IsReadOnly: Boolean;
    function get_IsWriteOnly: Boolean;
    function get_IsAttachable: Boolean;
    function get_IsEvent: Boolean;
    function get_IsDirective: Boolean;
    function get_DependsOn: DDN.mscorlib.DNIList<DNXamlMember>;
    function get_IsAmbient: Boolean;
    function get_SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility;
    function get_MarkupExtensionBracketCharacters: DDN.mscorlib.DNIReadOnlyDictionary<Char, Char>;

  { methods } 

    function GetHashCode: Int32;
    function GetXamlNamespaces: DDN.mscorlib.DNIList<string>;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(other: DNXamlMember): Boolean; overload;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property AllowedLocation: DNAllowedMemberLocations read get_AllowedLocation;
    property DeclaringType: DNXamlType read get_DeclaringType;
    property Invoker: DNXamlMemberInvoker read get_Invoker;
    property IsUnknown: Boolean read get_IsUnknown;
    property IsReadPublic: Boolean read get_IsReadPublic;
    property IsWritePublic: Boolean read get_IsWritePublic;
    property Name: string read get_Name;
    property IsNameValid: Boolean read get_IsNameValid;
    property PreferredXamlNamespace: string read get_PreferredXamlNamespace;
    property TargetType: DNXamlType read get_TargetType;
    property &Type: DNXamlType read get_Type;
    property UnderlyingMember: DDN.mscorlib.DNMemberInfo read get_UnderlyingMember;
    property IsReadOnly: Boolean read get_IsReadOnly;
    property IsWriteOnly: Boolean read get_IsWriteOnly;
    property IsAttachable: Boolean read get_IsAttachable;
    property IsEvent: Boolean read get_IsEvent;
    property IsDirective: Boolean read get_IsDirective;
    property DependsOn: DDN.mscorlib.DNIList<DNXamlMember> read get_DependsOn;
    property IsAmbient: Boolean read get_IsAmbient;
    property SerializationVisibility: DDN.System.Windows.Common.DNDesignerSerializationVisibility read get_SerializationVisibility;
    property MarkupExtensionBracketCharacters: DDN.mscorlib.DNIReadOnlyDictionary<Char, Char> read get_MarkupExtensionBracketCharacters;
  end;

  TDNXamlDirective = class(TDNGenericImport<DNXamlDirectiveClass, DNXamlDirective>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlNodeListClass = interface(DDN.mscorlib.DNObjectClass)
  ['{A81007FE-5522-560C-881E-E338DF9A49C7}']
  { constructors } 

    {class} function init(schemaContext: DNXamlSchemaContext): DNXamlNodeList; overload;
    {class} function init(schemaContext: DNXamlSchemaContext; size: Int32): DNXamlNodeList; overload;

  end;

  [DNTypeName('System.Xaml.XamlNodeList')]
  DNXamlNodeList = interface(DDN.mscorlib.DNObject)
  ['{57AD4E03-3C01-37D3-84FF-238445CFA5FF}']
  { getters & setters } 

    function get_Writer: DNXamlWriter;
    function get_Count: Int32;

  { methods } 

    function GetReader: DNXamlReader;
    procedure Clear;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Writer: DNXamlWriter read get_Writer;
    property Count: Int32 read get_Count;
  end;

  TDNXamlNodeList = class(TDNGenericImport<DNXamlNodeListClass, DNXamlNodeList>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlNodeQueueClass = interface(DDN.mscorlib.DNObjectClass)
  ['{722489F3-B31D-5A40-8B18-38ABA7FEB53B}']
  { constructors } 

    {class} function init(schemaContext: DNXamlSchemaContext): DNXamlNodeQueue;

  end;

  [DNTypeName('System.Xaml.XamlNodeQueue')]
  DNXamlNodeQueue = interface(DDN.mscorlib.DNObject)
  ['{5BE541F6-77F4-34C1-AA30-714831F0CE04}']
  { getters & setters } 

    function get_Reader: DNXamlReader;
    function get_Writer: DNXamlWriter;
    function get_IsEmpty: Boolean;
    function get_Count: Int32;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Reader: DNXamlReader read get_Reader;
    property Writer: DNXamlWriter read get_Writer;
    property IsEmpty: Boolean read get_IsEmpty;
    property Count: Int32 read get_Count;
  end;

  TDNXamlNodeQueue = class(TDNGenericImport<DNXamlNodeQueueClass, DNXamlNodeQueue>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlReaderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AE9A8B7B-76ED-535F-9863-EC49E8867C9D}']
  end;

  [DNTypeName('System.Xaml.XamlReader')]
  DNXamlReader = interface(DDN.mscorlib.DNObject)
  ['{47C9699D-57F2-324C-B570-B6E83626FBEB}']
  { getters & setters } 

    function get_NodeType: DNXamlNodeType;
    function get_IsEof: Boolean;
    function get_Namespace: DNNamespaceDeclaration;
    function get_Type: DNXamlType;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Member: DNXamlMember;
    function get_SchemaContext: DNXamlSchemaContext;

  { methods } 

    procedure Skip;
    procedure Close;
    function ReadSubtree: DNXamlReader;
    function Read: Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property NodeType: DNXamlNodeType read get_NodeType;
    property IsEof: Boolean read get_IsEof;
    property Namespace: DNNamespaceDeclaration read get_Namespace;
    property &Type: DNXamlType read get_Type;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Member: DNXamlMember read get_Member;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
  end;

  TDNXamlReader = class(TDNGenericImport<DNXamlReaderClass, DNXamlReader>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlBackgroundReaderClass = interface(DNXamlReaderClass)
  ['{8E7B9F41-845D-5403-8DB4-E6DBAB8F399A}']
  { constructors } 

    {class} function init(wrappedReader: DNXamlReader): DNXamlBackgroundReader;

  end;

  [DNTypeName('System.Xaml.XamlBackgroundReader')]
  DNXamlBackgroundReader = interface(DNXamlReader)
  ['{5987C369-819D-31D7-94F4-A71168467412}']
  { getters & setters } 

    function get_NodeType: DNXamlNodeType;
    function get_IsEof: Boolean;
    function get_Namespace: DNNamespaceDeclaration;
    function get_Type: DNXamlType;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Member: DNXamlMember;
    function get_SchemaContext: DNXamlSchemaContext;
    function get_HasLineInfo: Boolean;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;

  { methods } 

    function Read: Boolean;
    procedure StartThread; overload;
    procedure StartThread(threadName: string); overload;
    procedure Skip;
    procedure Close;
    function ReadSubtree: DNXamlReader;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property NodeType: DNXamlNodeType read get_NodeType;
    property IsEof: Boolean read get_IsEof;
    property Namespace: DNNamespaceDeclaration read get_Namespace;
    property &Type: DNXamlType read get_Type;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Member: DNXamlMember read get_Member;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
    property HasLineInfo: Boolean read get_HasLineInfo;
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
  end;

  TDNXamlBackgroundReader = class(TDNGenericImport<DNXamlBackgroundReaderClass, DNXamlBackgroundReader>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectReaderClass = interface(DNXamlReaderClass)
  ['{F582809A-2D97-5528-B906-A029D30852A6}']
  { constructors } 

    {class} function init(instance: DDN.mscorlib.DNObject): DNXamlObjectReader; overload;
    {class} function init(instance: DDN.mscorlib.DNObject; settings: DNXamlObjectReaderSettings): DNXamlObjectReader; overload;
    {class} function init(instance: DDN.mscorlib.DNObject; schemaContext: DNXamlSchemaContext): DNXamlObjectReader; overload;
    {class} function init(instance: DDN.mscorlib.DNObject; schemaContext: DNXamlSchemaContext; settings: DNXamlObjectReaderSettings): DNXamlObjectReader; overload;

  end;

  [DNTypeName('System.Xaml.XamlObjectReader')]
  DNXamlObjectReader = interface(DNXamlReader)
  ['{FE76E107-BD1F-343F-BE38-3376343D33F2}']
  { getters & setters } 

    function get_NodeType: DNXamlNodeType;
    function get_Namespace: DNNamespaceDeclaration;
    function get_Type: DNXamlType;
    function get_Member: DNXamlMember;
    function get_Value: DDN.mscorlib.DNObject;
    function get_SchemaContext: DNXamlSchemaContext;
    function get_IsEof: Boolean;
    function get_Instance: DDN.mscorlib.DNObject;

  { methods } 

    function Read: Boolean;
    procedure Skip;
    procedure Close;
    function ReadSubtree: DNXamlReader;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property NodeType: DNXamlNodeType read get_NodeType;
    property Namespace: DNNamespaceDeclaration read get_Namespace;
    property &Type: DNXamlType read get_Type;
    property Member: DNXamlMember read get_Member;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
    property IsEof: Boolean read get_IsEof;
    property Instance: DDN.mscorlib.DNObject read get_Instance;
  end;

  TDNXamlObjectReader = class(TDNGenericImport<DNXamlObjectReaderClass, DNXamlObjectReader>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlXmlReaderClass = interface(DNXamlReaderClass)
  ['{9E44B2AE-D257-5459-A870-9D5A6FE96FD2}']
  { constructors } 

    {class} function init(xmlReader: DDN.System.Windows.Common.DNXmlReader): DNXamlXmlReader; overload;
    {class} function init(xmlReader: DDN.System.Windows.Common.DNXmlReader; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(xmlReader: DDN.System.Windows.Common.DNXmlReader; schemaContext: DNXamlSchemaContext): DNXamlXmlReader; overload;
    {class} function init(xmlReader: DDN.System.Windows.Common.DNXmlReader; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(fileName: string): DNXamlXmlReader; overload;
    {class} function init(fileName: string; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(fileName: string; schemaContext: DNXamlSchemaContext): DNXamlXmlReader; overload;
    {class} function init(fileName: string; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(stream: DDN.mscorlib.DNStream): DNXamlXmlReader; overload;
    {class} function init(stream: DDN.mscorlib.DNStream; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(stream: DDN.mscorlib.DNStream; schemaContext: DNXamlSchemaContext): DNXamlXmlReader; overload;
    {class} function init(stream: DDN.mscorlib.DNStream; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(textReader: DDN.mscorlib.DNTextReader): DNXamlXmlReader; overload;
    {class} function init(textReader: DDN.mscorlib.DNTextReader; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;
    {class} function init(textReader: DDN.mscorlib.DNTextReader; schemaContext: DNXamlSchemaContext): DNXamlXmlReader; overload;
    {class} function init(textReader: DDN.mscorlib.DNTextReader; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlReaderSettings): DNXamlXmlReader; overload;

  end;

  [DNTypeName('System.Xaml.XamlXmlReader')]
  DNXamlXmlReader = interface(DNXamlReader)
  ['{43B26558-9486-31DD-8FD4-DAAC0C4B958A}']
  { getters & setters } 

    function get_NodeType: DNXamlNodeType;
    function get_IsEof: Boolean;
    function get_Namespace: DNNamespaceDeclaration;
    function get_Type: DNXamlType;
    function get_Value: DDN.mscorlib.DNObject;
    function get_Member: DNXamlMember;
    function get_SchemaContext: DNXamlSchemaContext;
    function get_HasLineInfo: Boolean;
    function get_LineNumber: Int32;
    function get_LinePosition: Int32;

  { methods } 

    function Read: Boolean;
    procedure Skip;
    procedure Close;
    function ReadSubtree: DNXamlReader;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property NodeType: DNXamlNodeType read get_NodeType;
    property IsEof: Boolean read get_IsEof;
    property Namespace: DNNamespaceDeclaration read get_Namespace;
    property &Type: DNXamlType read get_Type;
    property Value: DDN.mscorlib.DNObject read get_Value;
    property Member: DNXamlMember read get_Member;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
    property HasLineInfo: Boolean read get_HasLineInfo;
    property LineNumber: Int32 read get_LineNumber;
    property LinePosition: Int32 read get_LinePosition;
  end;

  TDNXamlXmlReader = class(TDNGenericImport<DNXamlXmlReaderClass, DNXamlXmlReader>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlReaderSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D3036E3F-D484-5D60-8A76-18A94F0BF7A5}']
  { constructors } 

    {class} function init: DNXamlReaderSettings; overload;
    {class} function init(settings: DNXamlReaderSettings): DNXamlReaderSettings; overload;

  end;

  [DNTypeName('System.Xaml.XamlReaderSettings')]
  DNXamlReaderSettings = interface(DDN.mscorlib.DNObject)
  ['{379121B9-5032-32DC-A4CD-E0AC7EBDDD1C}']
  { getters & setters } 

    function get_AllowProtectedMembersOnRoot: Boolean;
    procedure set_AllowProtectedMembersOnRoot(value: Boolean);
    function get_ProvideLineInfo: Boolean;
    procedure set_ProvideLineInfo(value: Boolean);
    function get_BaseUri: DDN.System.Windows.Common.DNUri;
    procedure set_BaseUri(value: DDN.System.Windows.Common.DNUri);
    function get_LocalAssembly: DDN.mscorlib.DNAssembly;
    procedure set_LocalAssembly(value: DDN.mscorlib.DNAssembly);
    function get_IgnoreUidsOnPropertyElements: Boolean;
    procedure set_IgnoreUidsOnPropertyElements(value: Boolean);
    function get_ValuesMustBeString: Boolean;
    procedure set_ValuesMustBeString(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AllowProtectedMembersOnRoot: Boolean read get_AllowProtectedMembersOnRoot write set_AllowProtectedMembersOnRoot;
    property ProvideLineInfo: Boolean read get_ProvideLineInfo write set_ProvideLineInfo;
    property BaseUri: DDN.System.Windows.Common.DNUri read get_BaseUri write set_BaseUri;
    property LocalAssembly: DDN.mscorlib.DNAssembly read get_LocalAssembly write set_LocalAssembly;
    property IgnoreUidsOnPropertyElements: Boolean read get_IgnoreUidsOnPropertyElements write set_IgnoreUidsOnPropertyElements;
    property ValuesMustBeString: Boolean read get_ValuesMustBeString write set_ValuesMustBeString;
  end;

  TDNXamlReaderSettings = class(TDNGenericImport<DNXamlReaderSettingsClass, DNXamlReaderSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectReaderSettingsClass = interface(DNXamlReaderSettingsClass)
  ['{2080708A-E06F-5DA2-B92A-21C33A3DE22F}']
  { constructors } 

    {class} function init: DNXamlObjectReaderSettings;

  end;

  [DNTypeName('System.Xaml.XamlObjectReaderSettings')]
  DNXamlObjectReaderSettings = interface(DNXamlReaderSettings)
  ['{86AFFD22-A947-3A58-874E-BBABAE6261CA}']
  { getters & setters } 

    function get_RequireExplicitContentVisibility: Boolean;
    procedure set_RequireExplicitContentVisibility(value: Boolean);
    function get_AllowProtectedMembersOnRoot: Boolean;
    procedure set_AllowProtectedMembersOnRoot(value: Boolean);
    function get_ProvideLineInfo: Boolean;
    procedure set_ProvideLineInfo(value: Boolean);
    function get_BaseUri: DDN.System.Windows.Common.DNUri;
    procedure set_BaseUri(value: DDN.System.Windows.Common.DNUri);
    function get_LocalAssembly: DDN.mscorlib.DNAssembly;
    procedure set_LocalAssembly(value: DDN.mscorlib.DNAssembly);
    function get_IgnoreUidsOnPropertyElements: Boolean;
    procedure set_IgnoreUidsOnPropertyElements(value: Boolean);
    function get_ValuesMustBeString: Boolean;
    procedure set_ValuesMustBeString(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property RequireExplicitContentVisibility: Boolean read get_RequireExplicitContentVisibility write set_RequireExplicitContentVisibility;
    property AllowProtectedMembersOnRoot: Boolean read get_AllowProtectedMembersOnRoot write set_AllowProtectedMembersOnRoot;
    property ProvideLineInfo: Boolean read get_ProvideLineInfo write set_ProvideLineInfo;
    property BaseUri: DDN.System.Windows.Common.DNUri read get_BaseUri write set_BaseUri;
    property LocalAssembly: DDN.mscorlib.DNAssembly read get_LocalAssembly write set_LocalAssembly;
    property IgnoreUidsOnPropertyElements: Boolean read get_IgnoreUidsOnPropertyElements write set_IgnoreUidsOnPropertyElements;
    property ValuesMustBeString: Boolean read get_ValuesMustBeString write set_ValuesMustBeString;
  end;

  TDNXamlObjectReaderSettings = class(TDNGenericImport<DNXamlObjectReaderSettingsClass, DNXamlObjectReaderSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlXmlReaderSettingsClass = interface(DNXamlReaderSettingsClass)
  ['{7BAA6A32-5CE0-595A-9C7D-961AF96D5165}']
  { constructors } 

    {class} function init: DNXamlXmlReaderSettings; overload;
    {class} function init(settings: DNXamlXmlReaderSettings): DNXamlXmlReaderSettings; overload;

  end;

  [DNTypeName('System.Xaml.XamlXmlReaderSettings')]
  DNXamlXmlReaderSettings = interface(DNXamlReaderSettings)
  ['{0B2C0A03-DCAE-38AB-A1A8-5A05C6EB18E2}']
  { getters & setters } 

    function get_XmlLang: string;
    procedure set_XmlLang(value: string);
    function get_XmlSpacePreserve: Boolean;
    procedure set_XmlSpacePreserve(value: Boolean);
    function get_SkipXmlCompatibilityProcessing: Boolean;
    procedure set_SkipXmlCompatibilityProcessing(value: Boolean);
    function get_CloseInput: Boolean;
    procedure set_CloseInput(value: Boolean);
    function get_AllowProtectedMembersOnRoot: Boolean;
    procedure set_AllowProtectedMembersOnRoot(value: Boolean);
    function get_ProvideLineInfo: Boolean;
    procedure set_ProvideLineInfo(value: Boolean);
    function get_BaseUri: DDN.System.Windows.Common.DNUri;
    procedure set_BaseUri(value: DDN.System.Windows.Common.DNUri);
    function get_LocalAssembly: DDN.mscorlib.DNAssembly;
    procedure set_LocalAssembly(value: DDN.mscorlib.DNAssembly);
    function get_IgnoreUidsOnPropertyElements: Boolean;
    procedure set_IgnoreUidsOnPropertyElements(value: Boolean);
    function get_ValuesMustBeString: Boolean;
    procedure set_ValuesMustBeString(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property XmlLang: string read get_XmlLang write set_XmlLang;
    property XmlSpacePreserve: Boolean read get_XmlSpacePreserve write set_XmlSpacePreserve;
    property SkipXmlCompatibilityProcessing: Boolean read get_SkipXmlCompatibilityProcessing write set_SkipXmlCompatibilityProcessing;
    property CloseInput: Boolean read get_CloseInput write set_CloseInput;
    property AllowProtectedMembersOnRoot: Boolean read get_AllowProtectedMembersOnRoot write set_AllowProtectedMembersOnRoot;
    property ProvideLineInfo: Boolean read get_ProvideLineInfo write set_ProvideLineInfo;
    property BaseUri: DDN.System.Windows.Common.DNUri read get_BaseUri write set_BaseUri;
    property LocalAssembly: DDN.mscorlib.DNAssembly read get_LocalAssembly write set_LocalAssembly;
    property IgnoreUidsOnPropertyElements: Boolean read get_IgnoreUidsOnPropertyElements write set_IgnoreUidsOnPropertyElements;
    property ValuesMustBeString: Boolean read get_ValuesMustBeString write set_ValuesMustBeString;
  end;

  TDNXamlXmlReaderSettings = class(TDNGenericImport<DNXamlXmlReaderSettingsClass, DNXamlXmlReaderSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlSchemaContextClass = interface(DDN.mscorlib.DNObjectClass)
  ['{2157F060-949B-567D-91DC-530889852589}']
  { constructors } 

    {class} function init: DNXamlSchemaContext; overload;
    {class} function init(settings: DNXamlSchemaContextSettings): DNXamlSchemaContext; overload;
    {class} function init(referenceAssemblies: DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNAssembly>): DNXamlSchemaContext; overload;
    {class} function init(referenceAssemblies: DDN.mscorlib.DNIEnumerable<DDN.mscorlib.DNAssembly>; settings: DNXamlSchemaContextSettings): DNXamlSchemaContext; overload;

  end;

  [DNTypeName('System.Xaml.XamlSchemaContext')]
  DNXamlSchemaContext = interface(DDN.mscorlib.DNObject)
  ['{A0025357-31C0-3357-957A-ECE7D49018B7}']
  { getters & setters } 

    function get_SupportMarkupExtensionsWithDuplicateArity: Boolean;
    function get_FullyQualifyAssemblyNamesInClrNamespaces: Boolean;
    function get_ReferenceAssemblies: DDN.mscorlib.DNIList<DDN.mscorlib.DNAssembly>;

  { methods } 

    function GetXamlType(xamlTypeName: DNXamlTypeName): DNXamlType; overload;
    function GetAllXamlTypes(xamlNamespace: string): DDN.mscorlib.DNICollection<DNXamlType>;
    function GetXamlDirective(xamlNamespace: string; name: string): DNXamlDirective;
    function TryGetCompatibleXamlNamespace(xamlNamespace: string; out compatibleNamespace: string): Boolean;
    function GetXamlType(&type: DDN.mscorlib.DNType): DNXamlType; overload;
    function GetAllXamlNamespaces: DDN.mscorlib.DNIEnumerable<string>;
    function GetPreferredPrefix(xmlns: string): string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SupportMarkupExtensionsWithDuplicateArity: Boolean read get_SupportMarkupExtensionsWithDuplicateArity;
    property FullyQualifyAssemblyNamesInClrNamespaces: Boolean read get_FullyQualifyAssemblyNamesInClrNamespaces;
    property ReferenceAssemblies: DDN.mscorlib.DNIList<DDN.mscorlib.DNAssembly> read get_ReferenceAssemblies;
  end;

  TDNXamlSchemaContext = class(TDNGenericImport<DNXamlSchemaContextClass, DNXamlSchemaContext>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlSchemaContextSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{99FAD804-039C-5551-84D3-DA5C5E2F1177}']
  { constructors } 

    {class} function init: DNXamlSchemaContextSettings; overload;
    {class} function init(settings: DNXamlSchemaContextSettings): DNXamlSchemaContextSettings; overload;

  end;

  [DNTypeName('System.Xaml.XamlSchemaContextSettings')]
  DNXamlSchemaContextSettings = interface(DDN.mscorlib.DNObject)
  ['{C0C0DDE8-EF5D-3975-81C0-CB7686CACC71}']
  { getters & setters } 

    function get_SupportMarkupExtensionsWithDuplicateArity: Boolean;
    procedure set_SupportMarkupExtensionsWithDuplicateArity(value: Boolean);
    function get_FullyQualifyAssemblyNamesInClrNamespaces: Boolean;
    procedure set_FullyQualifyAssemblyNamesInClrNamespaces(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SupportMarkupExtensionsWithDuplicateArity: Boolean read get_SupportMarkupExtensionsWithDuplicateArity write set_SupportMarkupExtensionsWithDuplicateArity;
    property FullyQualifyAssemblyNamesInClrNamespaces: Boolean read get_FullyQualifyAssemblyNamesInClrNamespaces write set_FullyQualifyAssemblyNamesInClrNamespaces;
  end;

  TDNXamlSchemaContextSettings = class(TDNGenericImport<DNXamlSchemaContextSettingsClass, DNXamlSchemaContextSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlServicesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{61D87373-793E-5B13-966F-408DB00E571E}']
  { static methods } 

    {class} function Load(xamlReader: DNXamlReader): DDN.mscorlib.DNObject; overload;
    {class} procedure Transform(xamlReader: DNXamlReader; xamlWriter: DNXamlWriter); overload;
    {class} procedure Transform(xamlReader: DNXamlReader; xamlWriter: DNXamlWriter; closeWriter: Boolean); overload;
    {class} function Load(xmlReader: DDN.System.Windows.Common.DNXmlReader): DDN.mscorlib.DNObject; overload;
    {class} procedure Save(writer: DDN.System.Windows.Common.DNXmlWriter; instance: DDN.mscorlib.DNObject); overload;
    {class} procedure Save(writer: DNXamlWriter; instance: DDN.mscorlib.DNObject); overload;
    {class} function Parse(xaml: string): DDN.mscorlib.DNObject;
    {class} function Load(fileName: string): DDN.mscorlib.DNObject; overload;
    {class} function Load(stream: DDN.mscorlib.DNStream): DDN.mscorlib.DNObject; overload;
    {class} function Load(textReader: DDN.mscorlib.DNTextReader): DDN.mscorlib.DNObject; overload;
    {class} function Save(instance: DDN.mscorlib.DNObject): string; overload;
    {class} procedure Save(fileName: string; instance: DDN.mscorlib.DNObject); overload;
    {class} procedure Save(stream: DDN.mscorlib.DNStream; instance: DDN.mscorlib.DNObject); overload;
    {class} procedure Save(writer: DDN.mscorlib.DNTextWriter; instance: DDN.mscorlib.DNObject); overload;

  end;

  [DNTypeName('System.Xaml.XamlServices')]
  DNXamlServices = interface(DDN.mscorlib.DNObject)
  ['{255333F4-C269-34DC-A876-95F89A228F7A}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXamlServices = class(TDNGenericImport<DNXamlServicesClass, DNXamlServices>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlTypeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DC196BB2-CAB4-5371-A9AC-83789196654A}']
  { constructors } 

    {class} function init(unknownTypeNamespace: string; unknownTypeName: string; typeArguments: DDN.mscorlib.DNIList<DNXamlType>; schemaContext: DNXamlSchemaContext): DNXamlType; overload;
    {class} function init(underlyingType: DDN.mscorlib.DNType; schemaContext: DNXamlSchemaContext): DNXamlType; overload;
    {class} function init(underlyingType: DDN.mscorlib.DNType; schemaContext: DNXamlSchemaContext; invoker: DNXamlTypeInvoker): DNXamlType; overload;

  end;

  [DNTypeName('System.Xaml.XamlType')]
  DNXamlType = interface(DDN.mscorlib.DNObject)
  ['{C9020E0A-FE08-3394-B87C-A15699678950}']
  { getters & setters } 

    function get_BaseType: DNXamlType;
    function get_Invoker: DNXamlTypeInvoker;
    function get_IsNameValid: Boolean;
    function get_IsUnknown: Boolean;
    function get_Name: string;
    function get_PreferredXamlNamespace: string;
    function get_TypeArguments: DDN.mscorlib.DNIList<DNXamlType>;
    function get_UnderlyingType: DDN.mscorlib.DNType;
    function get_ConstructionRequiresArguments: Boolean;
    function get_IsArray: Boolean;
    function get_IsCollection: Boolean;
    function get_IsConstructible: Boolean;
    function get_IsDictionary: Boolean;
    function get_IsGeneric: Boolean;
    function get_IsMarkupExtension: Boolean;
    function get_IsNameScope: Boolean;
    function get_IsNullable: Boolean;
    function get_IsPublic: Boolean;
    function get_IsUsableDuringInitialization: Boolean;
    function get_IsWhitespaceSignificantCollection: Boolean;
    function get_IsXData: Boolean;
    function get_TrimSurroundingWhitespace: Boolean;
    function get_IsAmbient: Boolean;
    function get_KeyType: DNXamlType;
    function get_ItemType: DNXamlType;
    function get_AllowedContentTypes: DDN.mscorlib.DNIList<DNXamlType>;
    function get_ContentWrappers: DDN.mscorlib.DNIList<DNXamlType>;
    function get_ContentProperty: DNXamlMember;
    function get_MarkupExtensionReturnType: DNXamlType;
    function get_SchemaContext: DNXamlSchemaContext;

  { methods } 

    function GetAliasedProperty(directive: DNXamlDirective): DNXamlMember;
    function GetXamlNamespaces: DDN.mscorlib.DNIList<string>;
    function GetMember(name: string): DNXamlMember;
    function GetAttachableMember(name: string): DNXamlMember;
    function GetPositionalParameters(parameterCount: Int32): DDN.mscorlib.DNIList<DNXamlType>;
    function CanAssignTo(xamlType: DNXamlType): Boolean;
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function Equals(other: DNXamlType): Boolean; overload;
    function GetAllMembers: DDN.mscorlib.DNICollection<DNXamlMember>;
    function GetAllAttachableMembers: DDN.mscorlib.DNICollection<DNXamlMember>;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    property BaseType: DNXamlType read get_BaseType;
    property Invoker: DNXamlTypeInvoker read get_Invoker;
    property IsNameValid: Boolean read get_IsNameValid;
    property IsUnknown: Boolean read get_IsUnknown;
    property Name: string read get_Name;
    property PreferredXamlNamespace: string read get_PreferredXamlNamespace;
    property TypeArguments: DDN.mscorlib.DNIList<DNXamlType> read get_TypeArguments;
    property UnderlyingType: DDN.mscorlib.DNType read get_UnderlyingType;
    property ConstructionRequiresArguments: Boolean read get_ConstructionRequiresArguments;
    property IsArray: Boolean read get_IsArray;
    property IsCollection: Boolean read get_IsCollection;
    property IsConstructible: Boolean read get_IsConstructible;
    property IsDictionary: Boolean read get_IsDictionary;
    property IsGeneric: Boolean read get_IsGeneric;
    property IsMarkupExtension: Boolean read get_IsMarkupExtension;
    property IsNameScope: Boolean read get_IsNameScope;
    property IsNullable: Boolean read get_IsNullable;
    property IsPublic: Boolean read get_IsPublic;
    property IsUsableDuringInitialization: Boolean read get_IsUsableDuringInitialization;
    property IsWhitespaceSignificantCollection: Boolean read get_IsWhitespaceSignificantCollection;
    property IsXData: Boolean read get_IsXData;
    property TrimSurroundingWhitespace: Boolean read get_TrimSurroundingWhitespace;
    property IsAmbient: Boolean read get_IsAmbient;
    property KeyType: DNXamlType read get_KeyType;
    property ItemType: DNXamlType read get_ItemType;
    property AllowedContentTypes: DDN.mscorlib.DNIList<DNXamlType> read get_AllowedContentTypes;
    property ContentWrappers: DDN.mscorlib.DNIList<DNXamlType> read get_ContentWrappers;
    property ContentProperty: DNXamlMember read get_ContentProperty;
    property MarkupExtensionReturnType: DNXamlType read get_MarkupExtensionReturnType;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
  end;

  TDNXamlType = class(TDNGenericImport<DNXamlTypeClass, DNXamlType>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlWriterClass = interface(DDN.mscorlib.DNObjectClass)
  ['{663F5CFE-A8F9-5878-A078-13E01A5CD08F}']
  end;

  [DNTypeName('System.Xaml.XamlWriter')]
  DNXamlWriter = interface(DDN.mscorlib.DNObject)
  ['{CFB694F7-CF05-3294-BC32-CE04F8110DA1}']
  { getters & setters } 

    function get_SchemaContext: DNXamlSchemaContext;

  { methods } 

    procedure WriteNode(reader: DNXamlReader);
    procedure Close;
    procedure WriteGetObject;
    procedure WriteStartObject(&type: DNXamlType);
    procedure WriteEndObject;
    procedure WriteStartMember(xamlMember: DNXamlMember);
    procedure WriteEndMember;
    procedure WriteValue(value: DDN.mscorlib.DNObject);
    procedure WriteNamespace(namespaceDeclaration: DNNamespaceDeclaration);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
  end;

  TDNXamlWriter = class(TDNGenericImport<DNXamlWriterClass, DNXamlWriter>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectWriterClass = interface(DNXamlWriterClass)
  ['{C0EF8255-9C0C-52AF-9C93-9DF62E9B0A42}']
  { constructors } 

    {class} function init(schemaContext: DNXamlSchemaContext): DNXamlObjectWriter; overload;
    {class} function init(schemaContext: DNXamlSchemaContext; settings: DNXamlObjectWriterSettings): DNXamlObjectWriter; overload;

  end;

  [DNTypeName('System.Xaml.XamlObjectWriter')]
  DNXamlObjectWriter = interface(DNXamlWriter)
  ['{0BDDD3BA-B361-336E-BEEA-1DB10B8BC6F1}']
  { getters & setters } 

    function get_RootNameScope: DNINameScope;
    function get_Result: DDN.mscorlib.DNObject;
    function get_SchemaContext: DNXamlSchemaContext;
    function get_ShouldProvideLineInfo: Boolean;

  { methods } 

    procedure Clear;
    procedure WriteGetObject;
    procedure WriteStartObject(xamlType: DNXamlType);
    procedure WriteEndObject;
    procedure WriteStartMember(&property: DNXamlMember);
    procedure WriteEndMember;
    procedure WriteValue(value: DDN.mscorlib.DNObject);
    procedure WriteNamespace(namespaceDeclaration: DNNamespaceDeclaration);
    procedure SetLineInfo(lineNumber: Int32; linePosition: Int32);
    procedure WriteNode(reader: DNXamlReader);
    procedure Close;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property RootNameScope: DNINameScope read get_RootNameScope;
    property Result: DDN.mscorlib.DNObject read get_Result;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
    property ShouldProvideLineInfo: Boolean read get_ShouldProvideLineInfo;
  end;

  TDNXamlObjectWriter = class(TDNGenericImport<DNXamlObjectWriterClass, DNXamlObjectWriter>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlXmlWriterClass = interface(DNXamlWriterClass)
  ['{00B27133-C013-57B3-BCF0-ED25F404BC3E}']
  { constructors } 

    {class} function init(stream: DDN.mscorlib.DNStream; schemaContext: DNXamlSchemaContext): DNXamlXmlWriter; overload;
    {class} function init(stream: DDN.mscorlib.DNStream; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlWriterSettings): DNXamlXmlWriter; overload;
    {class} function init(textWriter: DDN.mscorlib.DNTextWriter; schemaContext: DNXamlSchemaContext): DNXamlXmlWriter; overload;
    {class} function init(textWriter: DDN.mscorlib.DNTextWriter; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlWriterSettings): DNXamlXmlWriter; overload;
    {class} function init(xmlWriter: DDN.System.Windows.Common.DNXmlWriter; schemaContext: DNXamlSchemaContext): DNXamlXmlWriter; overload;
    {class} function init(xmlWriter: DDN.System.Windows.Common.DNXmlWriter; schemaContext: DNXamlSchemaContext; settings: DNXamlXmlWriterSettings): DNXamlXmlWriter; overload;

  end;

  [DNTypeName('System.Xaml.XamlXmlWriter')]
  DNXamlXmlWriter = interface(DNXamlWriter)
  ['{274FA15D-5982-365B-BAE2-4898D9C1F225}']
  { getters & setters } 

    function get_Settings: DNXamlXmlWriterSettings;
    function get_SchemaContext: DNXamlSchemaContext;

  { methods } 

    procedure WriteGetObject;
    procedure WriteEndObject;
    procedure WriteEndMember;
    procedure WriteValue(value: DDN.mscorlib.DNObject);
    procedure Flush;
    procedure WriteStartObject(&type: DNXamlType);
    procedure WriteStartMember(&property: DNXamlMember);
    procedure WriteNamespace(namespaceDeclaration: DNNamespaceDeclaration);
    procedure WriteNode(reader: DNXamlReader);
    procedure Close;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Settings: DNXamlXmlWriterSettings read get_Settings;
    property SchemaContext: DNXamlSchemaContext read get_SchemaContext;
  end;

  TDNXamlXmlWriter = class(TDNGenericImport<DNXamlXmlWriterClass, DNXamlXmlWriter>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlWriterSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0D33BADD-D785-56B8-8C04-1B4D00F63180}']
  { constructors } 

    {class} function init: DNXamlWriterSettings; overload;
    {class} function init(settings: DNXamlWriterSettings): DNXamlWriterSettings; overload;

  end;

  [DNTypeName('System.Xaml.XamlWriterSettings')]
  DNXamlWriterSettings = interface(DDN.mscorlib.DNObject)
  ['{6413231A-9218-3612-B923-09B825F9AEB7}']
  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNXamlWriterSettings = class(TDNGenericImport<DNXamlWriterSettingsClass, DNXamlWriterSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlObjectWriterSettingsClass = interface(DNXamlWriterSettingsClass)
  ['{4573DBFA-186E-5C7B-BCB4-BA8BC54B9842}']
  { constructors } 

    {class} function init: DNXamlObjectWriterSettings; overload;
    {class} function init(settings: DNXamlObjectWriterSettings): DNXamlObjectWriterSettings; overload;

  end;

  [DNTypeName('System.Xaml.XamlObjectWriterSettings')]
  DNXamlObjectWriterSettings = interface(DNXamlWriterSettings)
  ['{221B47B2-750C-3648-9A7F-094F672D9919}']
  { getters & setters } 

    function get_RootObjectInstance: DDN.mscorlib.DNObject;
    procedure set_RootObjectInstance(value: DDN.mscorlib.DNObject);
    function get_IgnoreCanConvert: Boolean;
    procedure set_IgnoreCanConvert(value: Boolean);
    function get_ExternalNameScope: DNINameScope;
    procedure set_ExternalNameScope(value: DNINameScope);
    function get_SkipDuplicatePropertyCheck: Boolean;
    procedure set_SkipDuplicatePropertyCheck(value: Boolean);
    function get_RegisterNamesOnExternalNamescope: Boolean;
    procedure set_RegisterNamesOnExternalNamescope(value: Boolean);
    function get_SkipProvideValueOnRoot: Boolean;
    procedure set_SkipProvideValueOnRoot(value: Boolean);
    function get_PreferUnconvertedDictionaryKeys: Boolean;
    procedure set_PreferUnconvertedDictionaryKeys(value: Boolean);
    function get_SourceBamlUri: DDN.System.Windows.Common.DNUri;
    procedure set_SourceBamlUri(value: DDN.System.Windows.Common.DNUri);
    function get_AccessLevel: DNXamlAccessLevel;
    procedure set_AccessLevel(value: DNXamlAccessLevel);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property RootObjectInstance: DDN.mscorlib.DNObject read get_RootObjectInstance write set_RootObjectInstance;
    property IgnoreCanConvert: Boolean read get_IgnoreCanConvert write set_IgnoreCanConvert;
    property ExternalNameScope: DNINameScope read get_ExternalNameScope write set_ExternalNameScope;
    property SkipDuplicatePropertyCheck: Boolean read get_SkipDuplicatePropertyCheck write set_SkipDuplicatePropertyCheck;
    property RegisterNamesOnExternalNamescope: Boolean read get_RegisterNamesOnExternalNamescope write set_RegisterNamesOnExternalNamescope;
    property SkipProvideValueOnRoot: Boolean read get_SkipProvideValueOnRoot write set_SkipProvideValueOnRoot;
    property PreferUnconvertedDictionaryKeys: Boolean read get_PreferUnconvertedDictionaryKeys write set_PreferUnconvertedDictionaryKeys;
    property SourceBamlUri: DDN.System.Windows.Common.DNUri read get_SourceBamlUri write set_SourceBamlUri;
    property AccessLevel: DNXamlAccessLevel read get_AccessLevel write set_AccessLevel;
  end;

  TDNXamlObjectWriterSettings = class(TDNGenericImport<DNXamlObjectWriterSettingsClass, DNXamlObjectWriterSettings>) end;

  //-------------namespace: System.Xaml----------------
  DNXamlXmlWriterSettingsClass = interface(DNXamlWriterSettingsClass)
  ['{CC133E05-1216-56A1-85E9-3A51D4A8E89C}']
  { constructors } 

    {class} function init: DNXamlXmlWriterSettings;

  end;

  [DNTypeName('System.Xaml.XamlXmlWriterSettings')]
  DNXamlXmlWriterSettings = interface(DNXamlWriterSettings)
  ['{72A78C6A-1283-3DF5-B892-A3AF188BEAFA}']
  { getters & setters } 

    function get_AssumeValidInput: Boolean;
    procedure set_AssumeValidInput(value: Boolean);
    function get_CloseOutput: Boolean;
    procedure set_CloseOutput(value: Boolean);

  { methods } 

    function Copy: DNXamlXmlWriterSettings;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property AssumeValidInput: Boolean read get_AssumeValidInput write set_AssumeValidInput;
    property CloseOutput: Boolean read get_CloseOutput write set_CloseOutput;
  end;

  TDNXamlXmlWriterSettings = class(TDNGenericImport<DNXamlXmlWriterSettingsClass, DNXamlXmlWriterSettings>) end;


implementation


initialization
  LoadAssemblyModule('System.Xaml.dll', True);

finalization

end.
