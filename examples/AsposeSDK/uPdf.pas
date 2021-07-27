unit uPdf;

interface

uses
  System.SysUtils,
  DDN.mscorlib,
  DDN.Runtime,
  DDN.Aspose.Common,
  DDN.Aspose.PDF;

  procedure TestPdf;
implementation

function GetTestFile: string;
begin
  Result := '..\TestFiles\lua_license.pdf';
end;

procedure Test_GetPdfInfo;
var
  LDoc: DNDocument;
  LInfo: DNDocumentInfo;
begin
  Writeln('---------------------- Test_GetPdfInfo ----------------------');
  LDoc := TDNDocument.DNClass.init(GetTestFile);
  LInfo := LDoc.Info;
  Writeln('title:', LInfo.Title);
  Writeln('creator:', LInfo.Creator);
  Writeln('Author:', LInfo.Author);
  Writeln('Subject:', LInfo.Subject);
  Writeln('Keywords:', LInfo.Keywords);
  Writeln('Producer:', LInfo.Producer);
  Writeln('Trapped:', LInfo.Trapped);
  LDoc.FreeMemory;
  LDoc.Dispose;
end;

procedure Test_GetPdfPages;
var
  LDoc: DNDocument;
  LPage: DNPage;
  LPages: DNPageCollection;
  I: Integer;
begin
  Writeln('---------------------- Test_GetPdfPages ----------------------');
  LDoc := TDNDocument.DNClass.init(GetTestFile);
  LPages := LDoc.Pages;
  Writeln('PageCount: ', LPages.Count);
  // Ranges: 1..n
  for I := 1 to LPages.Count do
     Writeln('page=', i);
  LDoc.FreeMemory;
  LDoc.Dispose;
end;



type
  TEvent = class
  public
    class procedure DoDocSaveOptionsCallback(eventInfo: DNUnifiedSaveOptions_ProgressEventHandlerInfo);
  end;

class procedure TEvent.DoDocSaveOptionsCallback(eventInfo: DNUnifiedSaveOptions_ProgressEventHandlerInfo);
var
  LEventType: string;
begin
  Writeln('call DocSaveOptionsCallback: ', Format('%p', [Pointer(eventInfo)]));

  LEventType := '';
  case eventInfo.EventType of
    DNProgressEventType.ResultPageCreated:
      LEventType := 'ResultPageCreated';

    DNProgressEventType.ResultPageSaved:
      LEventType := 'ResultPageSaved';

    DNProgressEventType.SourcePageAnalysed:
      LEventType := 'SourcePageAnalysed';

    DNProgressEventType.TotalProgress:
      LEventType := 'TotalProgress';
  end;
  Writeln(Format('Event type: %s, Value: %d, MaxValue: %d', [LEventType, eventInfo.Value, eventInfo.MaxValue]));

end;

procedure Test_PdfToFormat;
var
  LDoc: DNDocument;
  LDocSaveOpts: DNDocSaveOptions;
begin
  Writeln('---------------------- Test_PdfToFormat ----------------------');
  LDoc := TDNDocument.DNClass.init(GetTestFile);
  //LDoc.Save('test.docx');
//  LDoc.Save('test.docx', DNSaveFormat.DocX);

  LDocSaveOpts := TDNDocSaveOptions.Create;
  LDocSaveOpts.Format := DNDocSaveOptions_DocFormat.DocX;
  LDocSaveOpts.Mode := DNDocSaveOptions_RecognitionMode.Flow;
  LDocSaveOpts.CustomProgressHandler := TEvent.DoDocSaveOptionsCallback;
  LDoc.Save('test.docx', LDocSaveOpts);


  LDoc.FreeMemory;
  LDoc.Dispose;
  Writeln('done.');
end;


procedure TestPdf;
begin
  Test_GetPdfInfo;
  Test_GetPdfPages;
  Test_PdfToFormat;
end;

initialization
   Writeln('Aspose.PDF.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'Aspose.PDF.dll'));

finalization



end.
