//----------------------------------------------------------------------------
//  ReachFramework.dll: ReachFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Framework 4.x
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Windows.Xps.Packaging
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Windows.Xps.Packaging;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib,
  DDN.ReachFramework,
  DDN.System,
  DDN.System.Xml,
  DDN.WindowsBase,
  DDN.PresentationFramework,
  DDN.System.Windows.Xps;

type

{ enums }

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.PackageInterleavingOrder')]
  DNPackageInterleavingOrder = type Integer;
  DNPackageInterleavingOrderHelper = record helper for DNPackageInterleavingOrder
  public const
    None = 0;
    ResourceFirst = 1;
    ResourceLast = 2;
    ImagesLast = 3;
  end;


  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.PackagingAction')]
  DNPackagingAction = type Integer;
  DNPackagingActionHelper = record helper for DNPackagingAction
  public const
    None = 0;
    AddingDocumentSequence = 1;
    DocumentSequenceCompleted = 2;
    AddingFixedDocument = 3;
    FixedDocumentCompleted = 4;
    AddingFixedPage = 5;
    FixedPageCompleted = 6;
    ResourceAdded = 7;
    FontAdded = 8;
    ImageAdded = 9;
    XpsDocumentCommitted = 10;
  end;


  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.XpsDigSigPartAlteringRestrictions')]
  DNXpsDigSigPartAlteringRestrictions = type Integer;
  DNXpsDigSigPartAlteringRestrictionsHelper = record helper for DNXpsDigSigPartAlteringRestrictions
  public const
    None = 0;
    CoreMetadata = 1;
    Annotations = 2;
    SignatureOrigin = 4;
  end;


  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.XpsImageType')]
  DNXpsImageType = type Integer;
  DNXpsImageTypeHelper = record helper for DNXpsImageType
  public const
    PngImageType = 0;
    JpegImageType = 1;
    TiffImageType = 2;
    WdpImageType = 3;
  end;


  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.XpsResourceSharing')]
  DNXpsResourceSharing = type Integer;
  DNXpsResourceSharingHelper = record helper for DNXpsResourceSharing
  public const
    ShareResources = 0;
    NoResourceSharing = 1;
  end;




type


{ declares }

  DNIDocumentStructureProvider = interface; // type: System.Windows.Xps.Packaging.IDocumentStructureProvider, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedDocumentReader = interface; // type: System.Windows.Xps.Packaging.IXpsFixedDocumentReader, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedDocumentWriter = interface; // type: System.Windows.Xps.Packaging.IXpsFixedDocumentWriter, namespace: System.Windows.Xps.Packaging
  DNIStoryFragmentProvider = interface; // type: System.Windows.Xps.Packaging.IStoryFragmentProvider, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedPageReader = interface; // type: System.Windows.Xps.Packaging.IXpsFixedPageReader, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedPageWriter = interface; // type: System.Windows.Xps.Packaging.IXpsFixedPageWriter, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedDocumentSequenceReader = interface; // type: System.Windows.Xps.Packaging.IXpsFixedDocumentSequenceReader, namespace: System.Windows.Xps.Packaging
  DNIXpsFixedDocumentSequenceWriter = interface; // type: System.Windows.Xps.Packaging.IXpsFixedDocumentSequenceWriter, namespace: System.Windows.Xps.Packaging
  DNPackagingProgressEventArgs = interface; // type: System.Windows.Xps.Packaging.PackagingProgressEventArgs, namespace: System.Windows.Xps.Packaging
  DNSpotLocation = interface; // type: System.Windows.Xps.Packaging.SpotLocation, namespace: System.Windows.Xps.Packaging
  DNXpsDigitalSignature = interface; // type: System.Windows.Xps.Packaging.XpsDigitalSignature, namespace: System.Windows.Xps.Packaging
  DNXpsPartBase = interface; // type: System.Windows.Xps.Packaging.XpsPartBase, namespace: System.Windows.Xps.Packaging
  DNXpsDocument = interface; // type: System.Windows.Xps.Packaging.XpsDocument, namespace: System.Windows.Xps.Packaging
  DNXpsResource = interface; // type: System.Windows.Xps.Packaging.XpsResource, namespace: System.Windows.Xps.Packaging
  DNXpsColorContext = interface; // type: System.Windows.Xps.Packaging.XpsColorContext, namespace: System.Windows.Xps.Packaging
  DNXpsFont = interface; // type: System.Windows.Xps.Packaging.XpsFont, namespace: System.Windows.Xps.Packaging
  DNXpsImage = interface; // type: System.Windows.Xps.Packaging.XpsImage, namespace: System.Windows.Xps.Packaging
  DNXpsResourceDictionary = interface; // type: System.Windows.Xps.Packaging.XpsResourceDictionary, namespace: System.Windows.Xps.Packaging
  DNXpsStructure = interface; // type: System.Windows.Xps.Packaging.XpsStructure, namespace: System.Windows.Xps.Packaging
  DNXpsThumbnail = interface; // type: System.Windows.Xps.Packaging.XpsThumbnail, namespace: System.Windows.Xps.Packaging
  DNXpsSignatureDefinition = interface; // type: System.Windows.Xps.Packaging.XpsSignatureDefinition, namespace: System.Windows.Xps.Packaging

{ delegates }

  [DNTypeName('System.Windows.Xps.Packaging.PackagingProgressEventHandler')]
  DNPackagingProgressEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNPackagingProgressEventArgs) of object;




{ objects }

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IDocumentStructureProvider')]
  DNIDocumentStructureProvider = interface(DDN.mscorlib.DNObject)
  ['{203FA96F-CD89-32A0-9DD9-6256F030AFEB}']
  { methods } 

    function AddDocumentStructure: DNXpsStructure;

  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedDocumentReader')]
  DNIXpsFixedDocumentReader = interface(DNIDocumentStructureProvider)
  ['{7F79497F-681A-3927-A194-5D182BAA497C}']
  { getters & setters } 

    function get_PrintTicket: DNPrintTicket;
    function get_Uri: DDN.System.DNUri;
    function get_FixedPages: DDN.mscorlib.DNReadOnlyCollection<DNIXpsFixedPageReader>;
    function get_DocumentNumber: Int32;
    function get_SignatureDefinitions: DDN.mscorlib.DNICollection<DNXpsSignatureDefinition>;
    function get_Thumbnail: DNXpsThumbnail;
    function get_DocumentStructure: DNXpsStructure;

  { methods } 

    function GetFixedPage(pageSource: DDN.System.DNUri): DNIXpsFixedPageReader;
    procedure AddSignatureDefinition(signatureDefinition: DNXpsSignatureDefinition);
    procedure RemoveSignatureDefinition(signatureDefinition: DNXpsSignatureDefinition);
    procedure CommitSignatureDefinition;

  { propertys } 

    property PrintTicket: DNPrintTicket read get_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
    property FixedPages: DDN.mscorlib.DNReadOnlyCollection<DNIXpsFixedPageReader> read get_FixedPages;
    property DocumentNumber: Int32 read get_DocumentNumber;
    property SignatureDefinitions: DDN.mscorlib.DNICollection<DNXpsSignatureDefinition> read get_SignatureDefinitions;
    property Thumbnail: DNXpsThumbnail read get_Thumbnail;
    property DocumentStructure: DNXpsStructure read get_DocumentStructure;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedDocumentWriter')]
  DNIXpsFixedDocumentWriter = interface(DNIDocumentStructureProvider)
  ['{8C18E1DE-C862-378E-9271-FA74A0C0EC62}']
  { getters & setters } 

    procedure set_PrintTicket(value: DNPrintTicket);
    function get_Uri: DDN.System.DNUri;
    function get_DocumentNumber: Int32;

  { methods } 

    function AddFixedPage: DNIXpsFixedPageWriter;
    function AddThumbnail(imageType: DNXpsImageType): DNXpsThumbnail;
    procedure Commit;

  { propertys } 

    property PrintTicket: DNPrintTicket write set_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
    property DocumentNumber: Int32 read get_DocumentNumber;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IStoryFragmentProvider')]
  DNIStoryFragmentProvider = interface(DDN.mscorlib.DNObject)
  ['{D2A191FE-8A51-3E0A-A47D-6721A2A7B627}']
  { methods } 

    function AddStoryFragment: DNXpsStructure;

  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedPageReader')]
  DNIXpsFixedPageReader = interface(DNIStoryFragmentProvider)
  ['{73DF6B41-E629-3D6C-8ECD-6478C63E3350}']
  { getters & setters } 

    function get_PrintTicket: DNPrintTicket;
    function get_Uri: DDN.System.DNUri;
    function get_XmlReader: DDN.System.Xml.DNXmlReader;
    function get_PageNumber: Int32;
    function get_Fonts: DDN.mscorlib.DNICollection<DNXpsFont>;
    function get_ColorContexts: DDN.mscorlib.DNICollection<DNXpsColorContext>;
    function get_ResourceDictionaries: DDN.mscorlib.DNICollection<DNXpsResourceDictionary>;
    function get_Images: DDN.mscorlib.DNICollection<DNXpsImage>;
    function get_Thumbnail: DNXpsThumbnail;
    function get_StoryFragment: DNXpsStructure;

  { methods } 

    function GetResource(resourceUri: DDN.System.DNUri): DNXpsResource;
    function GetFont(uri: DDN.System.DNUri): DNXpsFont;
    function GetColorContext(uri: DDN.System.DNUri): DNXpsColorContext;
    function GetResourceDictionary(uri: DDN.System.DNUri): DNXpsResourceDictionary;
    function GetImage(uri: DDN.System.DNUri): DNXpsImage;

  { propertys } 

    property PrintTicket: DNPrintTicket read get_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
    property XmlReader: DDN.System.Xml.DNXmlReader read get_XmlReader;
    property PageNumber: Int32 read get_PageNumber;
    property Fonts: DDN.mscorlib.DNICollection<DNXpsFont> read get_Fonts;
    property ColorContexts: DDN.mscorlib.DNICollection<DNXpsColorContext> read get_ColorContexts;
    property ResourceDictionaries: DDN.mscorlib.DNICollection<DNXpsResourceDictionary> read get_ResourceDictionaries;
    property Images: DDN.mscorlib.DNICollection<DNXpsImage> read get_Images;
    property Thumbnail: DNXpsThumbnail read get_Thumbnail;
    property StoryFragment: DNXpsStructure read get_StoryFragment;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedPageWriter')]
  DNIXpsFixedPageWriter = interface(DNIStoryFragmentProvider)
  ['{EB5C89C5-4FD3-3B85-A1BF-75C51A6683A8}']
  { getters & setters } 

    procedure set_PrintTicket(value: DNPrintTicket);
    function get_Uri: DDN.System.DNUri;
    function get_XmlWriter: DDN.System.Xml.DNXmlWriter;
    function get_PageNumber: Int32;
    function get_LinkTargetStream: DDN.mscorlib.DNIList<string>;

  { methods } 

    function AddResource(resourceType: DDN.mscorlib.DNType; resourceUri: DDN.System.DNUri): DNXpsResource;
    function AddFont: DNXpsFont; overload;
    function AddFont(obfuscate: Boolean): DNXpsFont; overload;
    function AddFont(obfuscate: Boolean; addRestrictedRelationship: Boolean): DNXpsFont; overload;
    function AddColorContext: DNXpsColorContext;
    function AddResourceDictionary: DNXpsResourceDictionary;
    function AddImage(mimeType: string): DNXpsImage; overload;
    function AddImage(imageType: DNXpsImageType): DNXpsImage; overload;
    function AddThumbnail(imageType: DNXpsImageType): DNXpsThumbnail;
    procedure Commit;

  { propertys } 

    property PrintTicket: DNPrintTicket write set_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
    property XmlWriter: DDN.System.Xml.DNXmlWriter read get_XmlWriter;
    property PageNumber: Int32 read get_PageNumber;
    property LinkTargetStream: DDN.mscorlib.DNIList<string> read get_LinkTargetStream;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedDocumentSequenceReader')]
  DNIXpsFixedDocumentSequenceReader = interface(DDN.mscorlib.DNObject)
  ['{B50B7DD3-9AFA-3D8E-9D5A-9FC8F966A01E}']
  { getters & setters } 

    function get_PrintTicket: DNPrintTicket;
    function get_Uri: DDN.System.DNUri;
    function get_FixedDocuments: DDN.mscorlib.DNReadOnlyCollection<DNIXpsFixedDocumentReader>;
    function get_Thumbnail: DNXpsThumbnail;

  { methods } 

    function GetFixedDocument(documentSource: DDN.System.DNUri): DNIXpsFixedDocumentReader;

  { propertys } 

    property PrintTicket: DNPrintTicket read get_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
    property FixedDocuments: DDN.mscorlib.DNReadOnlyCollection<DNIXpsFixedDocumentReader> read get_FixedDocuments;
    property Thumbnail: DNXpsThumbnail read get_Thumbnail;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  [DNTypeName('System.Windows.Xps.Packaging.IXpsFixedDocumentSequenceWriter')]
  DNIXpsFixedDocumentSequenceWriter = interface(DDN.mscorlib.DNObject)
  ['{F7FC1CBE-CB1C-359C-A1C2-320A3C4CF193}']
  { getters & setters } 

    procedure set_PrintTicket(value: DNPrintTicket);
    function get_Uri: DDN.System.DNUri;

  { methods } 

    function AddFixedDocument: DNIXpsFixedDocumentWriter;
    function AddThumbnail(imageType: DNXpsImageType): DNXpsThumbnail;
    procedure Commit;

  { propertys } 

    property PrintTicket: DNPrintTicket write set_PrintTicket;
    property Uri: DDN.System.DNUri read get_Uri;
  end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNPackagingProgressEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{0A8EAD63-8814-5673-90CE-B820D43F5BAD}']
  { constructors } 

    {class} function init(action: DNPackagingAction; numberCompleted: Int32): DNPackagingProgressEventArgs;

  end;

  [DNTypeName('System.Windows.Xps.Packaging.PackagingProgressEventArgs')]
  DNPackagingProgressEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{233B9183-19E2-313B-A5FD-B74E5EA79939}']
  { getters & setters } 

    function get_NumberCompleted: Int32;
    function get_Action: DNPackagingAction;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property NumberCompleted: Int32 read get_NumberCompleted;
    property Action: DNPackagingAction read get_Action;
  end;

  TDNPackagingProgressEventArgs = class(TDNGenericImport<DNPackagingProgressEventArgsClass, DNPackagingProgressEventArgs>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNSpotLocationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{CBED954D-DB52-5D7E-A1FE-F9CE2BA0E416}']
  { constructors } 

    {class} function init: DNSpotLocation;

  end;

  [DNTypeName('System.Windows.Xps.Packaging.SpotLocation')]
  DNSpotLocation = interface(DDN.mscorlib.DNObject)
  ['{B9426D34-FBA6-313A-A277-89D928073EEF}']
  { getters & setters } 

    function get_PageUri: DDN.System.DNUri;
    procedure set_PageUri(value: DDN.System.DNUri);
    function get_StartX: Double;
    procedure set_StartX(value: Double);
    function get_StartY: Double;
    procedure set_StartY(value: Double);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property PageUri: DDN.System.DNUri read get_PageUri write set_PageUri;
    property StartX: Double read get_StartX write set_StartX;
    property StartY: Double read get_StartY write set_StartY;
  end;

  TDNSpotLocation = class(TDNGenericImport<DNSpotLocationClass, DNSpotLocation>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsDigitalSignatureClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7EA68D8B-DA78-576F-A927-7B71389C5580}']
  { constructors } 

    {class} function init(packageSignature: DDN.WindowsBase.DNPackageDigitalSignature; &package: DNXpsDocument): DNXpsDigitalSignature;

  { static methods } 

    {class} function VerifyCertificate(certificate: DDN.mscorlib.DNX509Certificate): DDN.System.DNX509ChainStatusFlags; overload;

  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsDigitalSignature')]
  DNXpsDigitalSignature = interface(DDN.mscorlib.DNObject)
  ['{FDAC0C74-79B6-3D77-ABCF-0E1023C2B7E6}']
  { getters & setters } 

    function get_SignedDocumentSequence: DNIXpsFixedDocumentSequenceReader;
    function get_SignatureOriginRestricted: Boolean;
    function get_DocumentPropertiesRestricted: Boolean;
    function get_Id: DDN.mscorlib.DNNullable<DDN.mscorlib.DNGuid>;
    function get_SignerCertificate: DDN.mscorlib.DNX509Certificate;
    function get_SigningTime: DDN.mscorlib.DNDateTime;
    function get_SignatureValue: TArray<Byte>;
    function get_SignatureType: string;
    function get_IsCertificateAvailable: Boolean;

  { methods } 

    function Verify: DDN.WindowsBase.DNVerifyResult; overload;
    function Verify(certificate: DDN.mscorlib.DNX509Certificate): DDN.WindowsBase.DNVerifyResult; overload;
    function VerifyCertificate: DDN.System.DNX509ChainStatusFlags; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property SignedDocumentSequence: DNIXpsFixedDocumentSequenceReader read get_SignedDocumentSequence;
    property SignatureOriginRestricted: Boolean read get_SignatureOriginRestricted;
    property DocumentPropertiesRestricted: Boolean read get_DocumentPropertiesRestricted;
    property Id: DDN.mscorlib.DNNullable<DDN.mscorlib.DNGuid> read get_Id;
    property SignerCertificate: DDN.mscorlib.DNX509Certificate read get_SignerCertificate;
    property SigningTime: DDN.mscorlib.DNDateTime read get_SigningTime;
    property SignatureValue: TArray<Byte> read get_SignatureValue;
    property SignatureType: string read get_SignatureType;
    property IsCertificateAvailable: Boolean read get_IsCertificateAvailable;
  end;

  TDNXpsDigitalSignature = class(TDNGenericImport<DNXpsDigitalSignatureClass, DNXpsDigitalSignature>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsPartBaseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{271EB636-AC0B-5D60-AA6B-A93290DCBDEE}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsPartBase')]
  DNXpsPartBase = interface(DDN.mscorlib.DNObject)
  ['{A09C3D55-811B-3431-A499-3104C5975EEC}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsPartBase = class(TDNGenericImport<DNXpsPartBaseClass, DNXpsPartBase>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsDocumentClass = interface(DNXpsPartBaseClass)
  ['{28014FA0-1901-5714-86DA-CB6C9CD482C2}']
  { constructors } 

    {class} function init(&package: DDN.WindowsBase.DNPackage): DNXpsDocument; overload;
    {class} function init(&package: DDN.WindowsBase.DNPackage; compressionOption: DDN.WindowsBase.DNCompressionOption): DNXpsDocument; overload;
    {class} function init(&package: DDN.WindowsBase.DNPackage; compressionOption: DDN.WindowsBase.DNCompressionOption; path: string): DNXpsDocument; overload;
    {class} function init(path: string; packageAccess: DDN.mscorlib.DNFileAccess): DNXpsDocument; overload;
    {class} function init(path: string; packageAccess: DDN.mscorlib.DNFileAccess; compressionOption: DDN.WindowsBase.DNCompressionOption): DNXpsDocument; overload;

  { static methods } 

    {class} function CreateXpsDocumentWriter(xpsDocument: DNXpsDocument): DDN.System.Windows.Xps.DNXpsDocumentWriter;

  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsDocument')]
  DNXpsDocument = interface(DNXpsPartBase)
  ['{9219AAF4-C8B9-33B2-8D20-23F062C34EE6}']
  { getters & setters } 

    function get_IsWriter: Boolean;
    function get_IsReader: Boolean;
    function get_FixedDocumentSequenceReader: DNIXpsFixedDocumentSequenceReader;
    function get_Signatures: DDN.mscorlib.DNReadOnlyCollection<DNXpsDigitalSignature>;
    function get_CoreDocumentProperties: DDN.WindowsBase.DNPackageProperties;
    function get_Thumbnail: DNXpsThumbnail;
    procedure set_Thumbnail(value: DNXpsThumbnail);
    function get_IsSignable: Boolean;
    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function SignDigitally(certificate: DDN.mscorlib.DNX509Certificate; embedCertificate: Boolean; restrictions: DNXpsDigSigPartAlteringRestrictions): DNXpsDigitalSignature; overload;
    function AddFixedDocumentSequence: DNIXpsFixedDocumentSequenceWriter;
    procedure Close;
    function SignDigitally(certificate: DDN.mscorlib.DNX509Certificate; embedCertificate: Boolean; restrictions: DNXpsDigSigPartAlteringRestrictions; id: DDN.mscorlib.DNGuid): DNXpsDigitalSignature; overload;
    function SignDigitally(certificate: DDN.mscorlib.DNX509Certificate; embedCertificate: Boolean; restrictions: DNXpsDigSigPartAlteringRestrictions; id: DDN.mscorlib.DNGuid; testIsSignable: Boolean): DNXpsDigitalSignature; overload;
    procedure RemoveSignature(signature: DNXpsDigitalSignature);
    function AddThumbnail(imageType: DNXpsImageType): DNXpsThumbnail;
    function GetFixedDocumentSequence: DDN.PresentationFramework.DNFixedDocumentSequence;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsWriter: Boolean read get_IsWriter;
    property IsReader: Boolean read get_IsReader;
    property FixedDocumentSequenceReader: DNIXpsFixedDocumentSequenceReader read get_FixedDocumentSequenceReader;
    property Signatures: DDN.mscorlib.DNReadOnlyCollection<DNXpsDigitalSignature> read get_Signatures;
    property CoreDocumentProperties: DDN.WindowsBase.DNPackageProperties read get_CoreDocumentProperties;
    property Thumbnail: DNXpsThumbnail read get_Thumbnail write set_Thumbnail;
    property IsSignable: Boolean read get_IsSignable;
    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsDocument = class(TDNGenericImport<DNXpsDocumentClass, DNXpsDocument>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsResourceClass = interface(DNXpsPartBaseClass)
  ['{07BC8B1C-2187-5196-BE0B-8A4F46155E3F}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsResource')]
  DNXpsResource = interface(DNXpsPartBase)
  ['{65F817DC-0365-3181-A0F9-EC8B61269E00}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsResource = class(TDNGenericImport<DNXpsResourceClass, DNXpsResource>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsColorContextClass = interface(DNXpsResourceClass)
  ['{41586173-F915-5A14-863B-A4A8D3737485}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsColorContext')]
  DNXpsColorContext = interface(DNXpsResource)
  ['{E3FB4321-8845-341E-A481-8F558F468F1E}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsColorContext = class(TDNGenericImport<DNXpsColorContextClass, DNXpsColorContext>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsFontClass = interface(DNXpsResourceClass)
  ['{EE0DE445-06E4-5A07-9970-14F20DDB48AC}']
  { static methods } 

    {class} procedure ObfuscateFontData(fontData: TArray<Byte>; guid: DDN.mscorlib.DNGuid);

  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsFont')]
  DNXpsFont = interface(DNXpsResource)
  ['{B808A2F1-17CF-3886-92E6-06C07BB28B36}']
  { getters & setters } 

    function get_IsObfuscated: Boolean;
    function get_IsRestricted: Boolean;
    procedure set_IsRestricted(value: Boolean);
    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property IsObfuscated: Boolean read get_IsObfuscated;
    property IsRestricted: Boolean read get_IsRestricted write set_IsRestricted;
    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsFont = class(TDNGenericImport<DNXpsFontClass, DNXpsFont>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsImageClass = interface(DNXpsResourceClass)
  ['{5E64BB29-16CC-5875-81D2-46A49398309A}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsImage')]
  DNXpsImage = interface(DNXpsResource)
  ['{6A1E8953-3031-30D9-AA72-9E37CE3DFCE9}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsImage = class(TDNGenericImport<DNXpsImageClass, DNXpsImage>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsResourceDictionaryClass = interface(DNXpsResourceClass)
  ['{9777BAFC-A0B7-5200-8250-63D64A76695D}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsResourceDictionary')]
  DNXpsResourceDictionary = interface(DNXpsResource)
  ['{C0E9A3BA-E97B-32B1-8013-19547F723D45}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsResourceDictionary = class(TDNGenericImport<DNXpsResourceDictionaryClass, DNXpsResourceDictionary>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsStructureClass = interface(DNXpsResourceClass)
  ['{9A89B904-6B9C-57A8-B18D-2BBC38132C11}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsStructure')]
  DNXpsStructure = interface(DNXpsResource)
  ['{98E1FE76-366E-38A8-B7EC-074C2F54EC45}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsStructure = class(TDNGenericImport<DNXpsStructureClass, DNXpsStructure>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsThumbnailClass = interface(DNXpsResourceClass)
  ['{43B0BE5C-873C-590B-A5A1-C230AA5BE77A}']
  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsThumbnail')]
  DNXpsThumbnail = interface(DNXpsResource)
  ['{61BBC71B-A57A-39C8-BF74-EE0C3F991891}']
  { getters & setters } 

    function get_Uri: DDN.System.DNUri;
    procedure set_Uri(value: DDN.System.DNUri);

  { methods } 

    function RelativeUri(inUri: DDN.System.DNUri): DDN.System.DNUri;
    function GetStream: DDN.mscorlib.DNStream;
    procedure Commit;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Uri: DDN.System.DNUri read get_Uri write set_Uri;
  end;

  TDNXpsThumbnail = class(TDNGenericImport<DNXpsThumbnailClass, DNXpsThumbnail>) end;

  //-------------namespace: System.Windows.Xps.Packaging----------------
  DNXpsSignatureDefinitionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8DF911BB-34EB-5D1E-A608-A585190F92E7}']
  { constructors } 

    {class} function init: DNXpsSignatureDefinition;

  end;

  [DNTypeName('System.Windows.Xps.Packaging.XpsSignatureDefinition')]
  DNXpsSignatureDefinition = interface(DDN.mscorlib.DNObject)
  ['{C2A02D80-ED50-3A17-B4A3-CFECFE9864E3}']
  { getters & setters } 

    function get_RequestedSigner: string;
    procedure set_RequestedSigner(value: string);
    function get_SpotLocation: DNSpotLocation;
    procedure set_SpotLocation(value: DNSpotLocation);
    function get_Intent: string;
    procedure set_Intent(value: string);
    function get_SignBy: DDN.mscorlib.DNNullable<DDN.mscorlib.DNDateTime>;
    procedure set_SignBy(value: DDN.mscorlib.DNNullable<DDN.mscorlib.DNDateTime>);
    function get_SigningLocale: string;
    procedure set_SigningLocale(value: string);
    function get_SpotId: DDN.mscorlib.DNNullable<DDN.mscorlib.DNGuid>;
    procedure set_SpotId(value: DDN.mscorlib.DNNullable<DDN.mscorlib.DNGuid>);
    function get_Culture: DDN.mscorlib.DNCultureInfo;
    procedure set_Culture(value: DDN.mscorlib.DNCultureInfo);
    function get_HasBeenModified: Boolean;
    procedure set_HasBeenModified(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property RequestedSigner: string read get_RequestedSigner write set_RequestedSigner;
    property SpotLocation: DNSpotLocation read get_SpotLocation write set_SpotLocation;
    property Intent: string read get_Intent write set_Intent;
    property SignBy: DDN.mscorlib.DNNullable<DDN.mscorlib.DNDateTime> read get_SignBy write set_SignBy;
    property SigningLocale: string read get_SigningLocale write set_SigningLocale;
    property SpotId: DDN.mscorlib.DNNullable<DDN.mscorlib.DNGuid> read get_SpotId write set_SpotId;
    property Culture: DDN.mscorlib.DNCultureInfo read get_Culture write set_Culture;
    property HasBeenModified: Boolean read get_HasBeenModified write set_HasBeenModified;
  end;

  TDNXpsSignatureDefinition = class(TDNGenericImport<DNXpsSignatureDefinitionClass, DNXpsSignatureDefinition>) end;


implementation

end.
