program ProWinForm;

{$R *.res}

uses
  System.SysUtils,
  Winapi.ActiveX,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Drawing,
  DDN.System.Windows.Forms,
  uReg in '..\uReg.pas';


type

  TMainForm = class(TInterfacedObject, ILocalObject)
  private
    FForm: DNForm;
    FBtn: DNButton;
    procedure OnButtonClick(sender: DNObject; e: DNEventArgs);
  public
    constructor Create();
    destructor Destroy; override;
    function GetObjectID: DNNObject;
  end;


{ TMainForm }

constructor TMainForm.Create;
var
  LR: DNRectangle;
begin
  inherited Create;
//  LR := TDNScreen.DNClass.PrimaryScreen.Bounds;

  FForm := TDNForm.Create;
  FForm.Text := 'Delphi .NET Runtime';


  FBtn := TDNButton.Create;
  FBtn.Text := 'Hello';
  FBtn.add_Click(OnButtonClick);
  FBtn.Location := TDNPoint.DNClass.init(100, 100);
  FForm.Controls.Add(FBtn);

  //FForm.StartPosition := DNFormStartPosition.Manual;
  FForm.StartPosition := DNFormStartPosition.CenterScreen;
  //FForm.Location :=  TDNPoint.DNClass.init((LR.Width - Result.Width) div 2, (LR.Height - Result.Height) div 2);
end;

destructor TMainForm.Destroy;
begin
  FForm := nil;
  inherited;
end;

function TMainForm.GetObjectID: DNNObject;
begin
  Result := nil;
  if FForm = nil then
    Exit;
  Result := (FForm as ILocalObject).GetObjectID;
end;

procedure TMainForm.OnButtonClick(sender: DNObject; e: DNEventArgs);
begin
  TDNMessageBox.DNClass.Show('Button.Click: ' + sender.ToString);
//  TDNButton.Wrap(Sender).remove_Click(OnButtonClick);
end;


procedure MainProc;
var
  LMainForm: ILocalObject;
begin
  TDNApplication.DNClass.EnableVisualStyles();
  TDNApplication.DNClass.SetCompatibleTextRenderingDefault(False);

  LMainForm := TMainForm.Create;
  TDNApplication.DNClass.Run(DNForm(LMainForm));
end;

begin
  ReportMemoryLeaksOnShutdown := True;
  try
     //[STAThread] 根据MS要求，必须要在主线程中初始COM。
     CoInitializeEx(nil, COINIT_APARTMENTTHREADED);
     try
       MainProc;
     finally
       CoUninitialize;
     end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
//  Readln;
end.
