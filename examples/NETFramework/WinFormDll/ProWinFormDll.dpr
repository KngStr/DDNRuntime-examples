program ProWinFormDll;

{$APPTYPE GUI}

{$R *.res}

uses
  System.SysUtils,
  Winapi.ActiveX,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uReg in '..\uReg.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

