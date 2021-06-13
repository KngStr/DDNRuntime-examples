// PowDLL, Version=2.97.0.0, Culture=neutral, PublicKeyToken=null
//-----------------------------------------------------------//
//                                                           //
//     DDN.PowDLL                                   
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.PowDLL;

interface

uses
  DDN.Runtime,
  DDN.mscorlib;

type

{ enums }

  //-------------namespace: PowDLL----------------
  [DNTypeName('PowDLL.PowderFileTypes+ShowErrors')]
  DNPowderFileTypes_ShowErrors = type Integer;
  DNPowderFileTypes_ShowErrorsHelper = record helper for DNPowderFileTypes_ShowErrors
  public const
    ShowErr = 0;
    DontShowErr = 1;
  end;




type

{ declares }

  DNdataLib = interface; // type: PowDLL.dataLib, namespace: PowDLL
  DNlibXmlParsing = interface; // type: PowDLL.libXmlParsing, namespace: PowDLL
  DNPowderFileTypes = interface; // type: PowDLL.PowderFileTypes, namespace: PowDLL
  DNAssemblyInfoAttribute = interface; // type: A.AssemblyInfoAttribute, namespace: A


{ objects }

  //-------------namespace: PowDLL----------------
  DNdataLibClass = interface(DDN.mscorlib.DNObjectClass)
  ['{F4D1B68D-65BE-5FB1-B9D6-EC05362B9B01}']
  { constructors } 

    {class} function init: DNdataLib;

  { static methods } 

    {class} function CSplineAFunc(XVal: TArray<Double>; YVal: TArray<Double>; NumInp: Int32; X0: TArray<Double>; NumOut: Int32): TArray<Double>;
    {class} function createX0data(Xmin: Double; Xmax: Double; spacing: Double; out NX0: Int32): TArray<Double>;

  end;

  [DNTypeName('PowDLL.dataLib')]
  DNdataLib = interface(DDN.mscorlib.DNObject)
  ['{4DCBC9B6-E825-3141-99AE-9D278B8FA10E}']
  { methods } 

    function getNdata: Int32;
    function getXori: TArray<Double>;
    function getYori: TArray<Double>;
    function getNumberOfData(pathfile: string): Int32;
    procedure readCsvData(pathfile: string);
    procedure writeCsvData(X: TArray<Double>; Y: TArray<Double>; N: Int32; outfile: string);
    procedure getMinMaxData(X: TArray<Double>; ndata: Int32; out XMin: Double; out XMax: Double);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNdataLib = class(TDNGenericImport<DNdataLibClass, DNdataLib>) end;

  //-------------namespace: PowDLL----------------
  DNlibXmlParsingClass = interface(DDN.mscorlib.DNObjectClass)
  ['{90B939BB-664E-59A7-A9BB-7A9DBC239218}']
  { constructors } 

    {class} function init: DNlibXmlParsing;

  end;

  [DNTypeName('PowDLL.libXmlParsing')]
  DNlibXmlParsing = interface(DDN.mscorlib.DNObject)
  ['{ABE6704B-1660-3701-A85D-CF1C37282A7F}']
  { methods } 

    procedure addXmlChildParsing(new_node: DDN.mscorlib.DNArrayList);
    function readXmlFileFormat(file_name: string; prefix_out_file: string; outputdir: string): Int32;
    function parseXmlChild(strObjectAttrUncompress: string; parent_file: string): Int32;
    procedure writeToFile(outfile: string; strdata: string);
    function SerializedObjectTag(base64Encoded: string): string;
    function IonicDecompress(bytes: TArray<Byte>): string;
    procedure ConcatenateFileParts(fileParts: TArray<string>; destFile: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNlibXmlParsing = class(TDNGenericImport<DNlibXmlParsingClass, DNlibXmlParsing>) end;

  //-------------namespace: PowDLL----------------
  DNPowderFileTypesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3A6F0E61-AD54-57E2-9F9F-7FF081F75822}']
  { constructors } 

    {class} function init: DNPowderFileTypes;

  { static fields getter & setter } 

   function __fakeFieldGet_AskForALPHA: Boolean;
   function __fakeFieldGet_ProtectOverwrite: Boolean;
   function __fakeFieldGet_DefaultAlpha1: Single;
   function __fakeFieldGet_DefaultAlpha2: Single;
   function __fakeFieldGet_DefaultRatio: Single;
   function __fakeFieldGet_HowManyExcelFiles: Int32;
   function __fakeFieldGet_ScintagOrVMS: Int32;
   function __fakeFieldGet_XYZOrMercury: Int32;
   function __fakeFieldGet_FileDateTime: DDN.mscorlib.DNDateTime;
   function __fakeFieldGet_Correct0to1counts: Boolean;
   function __fakeFieldGet_LinesToIgnoreXY: Int32;
   function __fakeFieldGet_ColumnsToIgnoreXY: Int32;
   function __fakeFieldGet_FlipXY: Boolean;
   function __fakeFieldGet_ChannelA: DDN.mscorlib.DNDecimal;
   function __fakeFieldGet_ChannelB: DDN.mscorlib.DNDecimal;
   function __fakeFieldGet_xHDF: string;
   function __fakeFieldGet_yHDF: string;
   function __fakeFieldGet_DefaultGoniometerRadius: Single;
   function __fakeFieldGet_DefaultCommonStepTime: Single;
   function __fakeFieldGet_Transform: Boolean;
   function __fakeFieldGet_xmin: Double;
   function __fakeFieldGet_xmax: Double;
   function __fakeFieldGet_dx: Double;
   function __fakeFieldGet_itype: Int32;
   function __fakeFieldGet_iAnodeTypeFrom: Int32;
   function __fakeFieldGet_iAnodeTypeTo: Int32;
   function __fakeFieldGet_lAnodeTypeFromOther: Int64;
   function __fakeFieldGet_DoChangeAnode: Boolean;
   function __fakeFieldGet_LPCorrection: Boolean;
   function __fakeFieldGet_CPS2COUNTS: Boolean;
   function __fakeFieldGet_COUNTS2CPS: Boolean;
   function __fakeFieldGet_TimePerStep: Single;
   function __fakeFieldGet_suppressMsg: Boolean;

  { static fields } 

    {class} property AskForALPHA: Boolean read __fakeFieldGet_AskForALPHA;
    {class} property ProtectOverwrite: Boolean read __fakeFieldGet_ProtectOverwrite;
    {class} property DefaultAlpha1: Single read __fakeFieldGet_DefaultAlpha1;
    {class} property DefaultAlpha2: Single read __fakeFieldGet_DefaultAlpha2;
    {class} property DefaultRatio: Single read __fakeFieldGet_DefaultRatio;
    {class} property HowManyExcelFiles: Int32 read __fakeFieldGet_HowManyExcelFiles;
    {class} property ScintagOrVMS: Int32 read __fakeFieldGet_ScintagOrVMS;
    {class} property XYZOrMercury: Int32 read __fakeFieldGet_XYZOrMercury;
    {class} property FileDateTime: DDN.mscorlib.DNDateTime read __fakeFieldGet_FileDateTime;
    {class} property Correct0to1counts: Boolean read __fakeFieldGet_Correct0to1counts;
    {class} property LinesToIgnoreXY: Int32 read __fakeFieldGet_LinesToIgnoreXY;
    {class} property ColumnsToIgnoreXY: Int32 read __fakeFieldGet_ColumnsToIgnoreXY;
    {class} property FlipXY: Boolean read __fakeFieldGet_FlipXY;
    {class} property ChannelA: DDN.mscorlib.DNDecimal read __fakeFieldGet_ChannelA;
    {class} property ChannelB: DDN.mscorlib.DNDecimal read __fakeFieldGet_ChannelB;
    {class} property xHDF: string read __fakeFieldGet_xHDF;
    {class} property yHDF: string read __fakeFieldGet_yHDF;
    {class} property DefaultGoniometerRadius: Single read __fakeFieldGet_DefaultGoniometerRadius;
    {class} property DefaultCommonStepTime: Single read __fakeFieldGet_DefaultCommonStepTime;
    {class} property Transform: Boolean read __fakeFieldGet_Transform;
    {class} property xmin: Double read __fakeFieldGet_xmin;
    {class} property xmax: Double read __fakeFieldGet_xmax;
    {class} property dx: Double read __fakeFieldGet_dx;
    {class} property itype: Int32 read __fakeFieldGet_itype;
    {class} property iAnodeTypeFrom: Int32 read __fakeFieldGet_iAnodeTypeFrom;
    {class} property iAnodeTypeTo: Int32 read __fakeFieldGet_iAnodeTypeTo;
    {class} property lAnodeTypeFromOther: Int64 read __fakeFieldGet_lAnodeTypeFromOther;
    {class} property DoChangeAnode: Boolean read __fakeFieldGet_DoChangeAnode;
    {class} property LPCorrection: Boolean read __fakeFieldGet_LPCorrection;
    {class} property CPS2COUNTS: Boolean read __fakeFieldGet_CPS2COUNTS;
    {class} property COUNTS2CPS: Boolean read __fakeFieldGet_COUNTS2CPS;
    {class} property TimePerStep: Single read __fakeFieldGet_TimePerStep;
    {class} property suppressMsg: Boolean read __fakeFieldGet_suppressMsg;

  { static methods } 

    {class} function ExtractFileExtention(path: string): string;
    {class} function WriteAnodeType(kalpha1: Single): string;
    {class} function ReadDecimalSymbol: string;
    {class} function RestroreFileDateTime: DDN.mscorlib.DNDateTime;
    {class} function SplitString(st: string; delim: TArray<Char>): TArray<string>;
    {class} function ExecuteCommand(filePath: string; arguments: string): string;
    {class} function CheckForDateNumbers(StringToCheck: string): Boolean;

  end;

  [DNTypeName('PowDLL.PowderFileTypes')]
  DNPowderFileTypes = interface(DDN.mscorlib.DNObject)
  ['{22282C15-449E-3F22-8A22-65455348AF4B}']
  { methods } 

    function DoFileConversion(Source: string; Destination: string; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function LoadDataFromFile(sFile: string; out q: DDN.mscorlib.DNObject; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function WriteDataToFile(Sobj: DDN.mscorlib.DNObject; dFile: string; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNPowderFileTypes = class(TDNGenericImport<DNPowderFileTypesClass, DNPowderFileTypes>) end;

  //-------------namespace: A----------------
  DNAssemblyInfoAttributeClass = interface(DDN.mscorlib.DNAttributeClass)
  ['{BA24AF21-21F1-5FAC-98A6-6E4C52E9DE39}']
  { constructors } 

    {class} function init(str: string): DNAssemblyInfoAttribute;

  end;

  [DNTypeName('A.AssemblyInfoAttribute')]
  DNAssemblyInfoAttribute = interface(DDN.mscorlib.DNAttribute)
  ['{B1E19E93-303B-32BD-8B5E-A005F43A9F40}']
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

  TDNAssemblyInfoAttribute = class(TDNGenericImport<DNAssemblyInfoAttributeClass, DNAssemblyInfoAttribute>) end;


implementation

end.
