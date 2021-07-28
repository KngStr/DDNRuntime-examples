unit uCells;

interface

uses
  System.SysUtils,
  DDN.mscorlib,
  DDN.Runtime,
  DDN.Aspose.Common,
  DDN.Aspose.Cells;

  procedure TestCells;
implementation

function GetTestFile: string;
begin
  Result := '..\TestFiles\outputSavingFiletoSomeLocation.xlsx';
end;

procedure TestCells;
var
  LWorkBook: DNWorkbook;
begin
  Writeln('Aspose.Cells.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'Aspose.Cells.dll'));
//  TDNLicense.Create.SetLicense('');

  LWorkBook := TDNWorkbook.DNClass.init(GetTestFile);
  Writeln('Count: ',  LWorkBook.Worksheets.Count);
  LWorkBook.Save('cellstopdf.pdf', DNSaveFormat.Pdf);
  LWorkBook.Dispose;
  Writeln('Done');
end;

end.
