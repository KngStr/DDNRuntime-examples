unit uPdf;

interface

uses
  System.SysUtils,
  DDN.mscorlib,
  DDN.Runtime,
{$IFDEF USE_NETCORE}
  DDNC.Aspose.PDF
{$ELSE}
  DDN.Aspose.PDF
{$ENDIF};

  procedure TestPdf;
implementation

function GetTestFile: string;
begin
  Result := '..\TestFiles\lua_license.pdf';
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

procedure TestPdf;
var
  LDoc: DNDocument;
  LInfo: DNDocumentInfo;
  LDocSaveOpts: DNDocSaveOptions;
begin
  Writeln('Aspose.PDF.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'Aspose.PDF.dll'));
  //  TDNLicense.Create.SetLicense('');

  LDoc := TDNDocument.DNClass.init(GetTestFile);

  LInfo := LDoc.Info;
  Writeln('title:', LInfo.Title);
  Writeln('creator:', LInfo.Creator);
  Writeln('Author:', LInfo.Author);
  Writeln('Subject:', LInfo.Subject);
  Writeln('Keywords:', LInfo.Keywords);
  Writeln('Producer:', LInfo.Producer);
  Writeln('Trapped:', LInfo.Trapped);

  Writeln('Count:', LDoc.Pages.Count);

  //LDoc.Save('test.docx');
//  LDoc.Save('test.docx', DNSaveFormat.DocX);

  LDocSaveOpts := TDNDocSaveOptions.Create;
  LDocSaveOpts.Format := DNDocSaveOptions_DocFormat.DocX;
  LDocSaveOpts.Mode := DNDocSaveOptions_RecognitionMode.Flow;
//  LDocSaveOpts.CustomProgressHandler := TEvent.DoDocSaveOptionsCallback;
  LDoc.Save('test.docx', LDocSaveOpts);


  LDoc.FreeMemory;
  LDoc.Dispose;
  Writeln('done.');


end;

initialization


finalization



end.
