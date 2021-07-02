program ProWinForm;

{$APPTYPE GUI}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.Forms.Common,
  DDN.System.Windows.Forms,
  uReg in '..\uReg.pas';


type
  // test
  TEventClass = class
  public
     class procedure OnButtonClick(sender: DNObject; e: DNEventArgs);
  end;



procedure TestProc;
  function CreateMainForm(): DNForm;
  var
    LButton: DNButton;
    LR: DDN.Forms.Common.DNRectangle;
    //LEdit: DNTextBox;
  begin
    LR := TDNScreen.DNClass.PrimaryScreen.Bounds;

    Result := TDNForm.Create;
    Result.Text := 'Delphi .NET Runtime';

    LButton := TDNButton.Create;
    LButton.Text := 'Hello';
    LButton.add_Click(TEventClass.OnButtonClick);
    LButton.Location := TDNPoint.DNClass.init(100, 100);
    Result.Controls.Add(LButton);

    //Result.StartPosition := DNFormStartPosition.Manual;
    Result.StartPosition := DNFormStartPosition.CenterScreen;
    //Result.Location :=  TDNPoint.DNClass.init((LR.Width - Result.Width) div 2, (LR.Height - Result.Height) div 2);
  end;

begin

  TDNApplication.DNClass.EnableVisualStyles();
  TDNApplication.DNClass.SetCompatibleTextRenderingDefault(False);
  TDNApplication.DNClass.Run(CreateMainForm());
end;

{ TEventClass }

class procedure TEventClass.OnButtonClick(sender: DNObject; e: DNEventArgs);
begin
  TDNMessageBox.DNClass.Show('Button.Click: ' + sender.ToString);
//  TDNButton.Wrap(Sender).remove_Click(TDelegateTest.OnButtonClick);
end;

begin
  ReportMemoryLeaksOnShutdown := True;
  try
    TestProc;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
 // Readln;
end.
