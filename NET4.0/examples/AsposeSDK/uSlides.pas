unit uSlides;

interface

uses
  System.SysUtils,
  DDN.mscorlib,
  DDN.Runtime,
  DDN.Aspose.Slides;

  procedure TestSlides;
implementation

function GetTestFile: string;
begin
  Result := '..\TestFiles\Presentation.pptx';
end;

procedure TestSlides;
var
  LPren: DNPresentation;
begin
  Writeln('Aspose.Slides.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'Aspose.Slides.dll'));
//  TDNLicense.Create.SetLicense('');

  LPren := TDNPresentation.DNClass.init(GetTestFile);
  Writeln('Count: ', LPren.Slides.Count);
  LPren.Save('test.pdf', DNSaveFormat.Pdf);
  LPren.Dispose;
  Writeln('Done.');
end;

end.
