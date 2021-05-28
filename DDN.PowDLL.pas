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

{$SCOPEDENUMS ON}
{$Z4+}

interface

uses
  System.SysUtils,
  System.Classes,
  System.Types,
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

  DNdataLib = interface; // PowDLL.dataLib  namespace: PowDLL
  DNlibXmlParsing = interface; // PowDLL.libXmlParsing  namespace: PowDLL
  DNPowderFileTypes = interface; // PowDLL.PowderFileTypes  namespace: PowDLL
  DNAssemblyInfoAttribute = interface; // A.AssemblyInfoAttribute  namespace: A


{ objects }

  //-------------namespace: PowDLL----------------
  DNdataLibClass = interface(DNObjectClass)
  ['{FA4C1D5A-EBB5-4A49-8E90-79B8C4181686}']
  { constructors } 

    {class} function init: DNdataLib;

  { static methods } 

    {class} function CSplineAFunc(XVal: TArray<Double>; YVal: TArray<Double>; NumInp: Int32; X0: TArray<Double>; NumOut: Int32): TArray<Double>;
    {class} function createX0data(Xmin: Double; Xmax: Double; spacing: Double; out NX0: Int32): TArray<Double>;

  end;

  [DNTypeName('PowDLL.dataLib')]
  DNdataLib = interface(DNObject)
  ['{4DCBC9B6-E825-3141-99AE-9D278B8FA10E}']
  { methods } 

    function getNdata: Int32;
    function getXori: TArray<Double>;
    function getYori: TArray<Double>;
    function getNumberOfData(pathfile: string): Int32;
    procedure readCsvData(pathfile: string);
    procedure writeCsvData(X: TArray<Double>; Y: TArray<Double>; N: Int32; outfile: string);
    procedure getMinMaxData(X: TArray<Double>; ndata: Int32; out XMin: Double; out XMax: Double);
    function Equals(obj: DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DNType;
    function ToString: string;

  end;

  TDNdataLib = class(TDNGenericImport<DNdataLibClass, DNdataLib>) end;

  //-------------namespace: PowDLL----------------
  DNlibXmlParsingClass = interface(DNObjectClass)
  ['{D745D85A-A5CD-4DA8-B4A8-3583AEDFF456}']
  { constructors } 

    {class} function init: DNlibXmlParsing;

  end;

  [DNTypeName('PowDLL.libXmlParsing')]
  DNlibXmlParsing = interface(DNObject)
  ['{ABE6704B-1660-3701-A85D-CF1C37282A7F}']
  { methods } 

    procedure addXmlChildParsing(new_node: DNArrayList);
    function readXmlFileFormat(file_name: string; prefix_out_file: string; outputdir: string): Int32;
    function parseXmlChild(strObjectAttrUncompress: string; parent_file: string): Int32;
    procedure writeToFile(outfile: string; strdata: string);
    function SerializedObjectTag(base64Encoded: string): string;
    function IonicDecompress(bytes: TArray<Byte>): string;
    procedure ConcatenateFileParts(fileParts: TArray<string>; destFile: string);
    function Equals(obj: DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DNType;
    function ToString: string;

  end;

  TDNlibXmlParsing = class(TDNGenericImport<DNlibXmlParsingClass, DNlibXmlParsing>) end;

  //-------------namespace: PowDLL----------------
  DNPowderFileTypesClass = interface(DNObjectClass)
  ['{F4EEF188-38C2-476F-BA09-327C47B70D3D}']
  { constructors } 

    {class} function init: DNPowderFileTypes;

  { static methods } 

    {class} function ExtractFileExtention(path: string): string;
    {class} function WriteAnodeType(kalpha1: Single): string;
    {class} function ReadDecimalSymbol: string;
    {class} function RestroreFileDateTime: DNDateTime;
    {class} function SplitString(st: string; delim: TArray<Char>): TArray<string>;
    {class} function ExecuteCommand(filePath: string; arguments: string): string;
    {class} function CheckForDateNumbers(StringToCheck: string): Boolean;

  end;

  [DNTypeName('PowDLL.PowderFileTypes')]
  DNPowderFileTypes = interface(DNObject)
  ['{22282C15-449E-3F22-8A22-65455348AF4B}']
  { methods } 

    function DoFileConversion(Source: string; Destination: string; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function LoadDataFromFile(sFile: string; out q: DNObject; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function WriteDataToFile(Sobj: DNObject; dFile: string; sE: DNPowderFileTypes_ShowErrors): Boolean;
    function Equals(obj: DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DNType;
    function ToString: string;

  end;

  TDNPowderFileTypes = class(TDNGenericImport<DNPowderFileTypesClass, DNPowderFileTypes>) end;

  //-------------namespace: A----------------
  DNAssemblyInfoAttributeClass = interface(DNObjectClass)
  ['{CB5251DC-F985-499F-A8C8-D68FDE2F8676}']
  { constructors } 

    {class} function init(str: string): DNAssemblyInfoAttribute;

  end;

  [DNTypeName('A.AssemblyInfoAttribute')]
  DNAssemblyInfoAttribute = interface(DNObject)
  ['{B1E19E93-303B-32BD-8B5E-A005F43A9F40}']
  { getter & setter } 

    function get_TypeId: DNObject;

  { methods } 

    function Equals(obj: DNObject): Boolean;
    function GetHashCode: Int32;
    function Match(obj: DNObject): Boolean;
    function IsDefaultAttribute: Boolean;
    function GetType: DNType;
    function ToString: string;

  { propertys } 

    property TypeId: DNObject read get_TypeId;
  end;

  TDNAssemblyInfoAttribute = class(TDNGenericImport<DNAssemblyInfoAttributeClass, DNAssemblyInfoAttribute>) end;


implementation

end.
