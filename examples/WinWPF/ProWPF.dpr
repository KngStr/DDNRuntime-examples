program ProWPF;

{$R *.res}

uses
  System.SysUtils,
  Winapi.ActiveX,
  DDN.Runtime,
  DDN.mscorlib,
//  DDN.System.Xaml,
  DDN.PresentationCore,
  DDN.PresentationFramework,
//  DDN.System.Windows.Input.Manipulations,
//  DDN.UIAutomationTypes,
  DDN.WindowsBase,
  uReg in '..\uReg.pas';


type
  TMainForm = class(TInterfacedObject, ILocalObject)
  private
    FWindow: DNWindow;
    FBtn123: DNButton;
    FProgressBar1: DNProgressBar;
    FToggleButton1: DNToggleButton;
    procedure FindControls;
    procedure OnButtonClick(sender: DNObject; e: DNRoutedEventArgs);
    procedure OnButtonClick2(sender: DNObject; e: DNRoutedEventArgs);
  public
    constructor Create;
    destructor Destroy; override;

    function GetObjectID: DNNObject;
  end;

{ TMainForm }

constructor TMainForm.Create;
var
  LStream: DNStreamReader;
begin
  inherited Create;
  LStream := TDNStreamReader.DNClass.init('..\TestFiles\MainWindow.xaml');
  FWindow := TDNWindow.Wrap(DDN.PresentationFramework.TDNXamlReader.DNClass.Parse(LStream.ReadToEnd));
  FindControls;
end;

destructor TMainForm.Destroy;
begin
  FWindow := nil;
  inherited;
end;

procedure TMainForm.FindControls;
var
  LObj: DNObject;
begin
  LObj := FWindow.FindName('btn123');
  if LObj <> nil then
    FBtn123 := TDNButton.Wrap(LObj);
  LObj := FWindow.FindName('ProgressBar1');
  if LObj <> nil then
    FProgressBar1 := TDNProgressBar.Wrap(LObj);
  LObj := FWindow.FindName('ToggleButton1');
  if LObj <> nil then
    FToggleButton1 := TDNToggleButton.Wrap(LObj);

  if FBtn123 <> nil then
    FBtn123.add_Click(OnButtonClick);
  if FToggleButton1 <> nil then
    FToggleButton1.add_Click(OnButtonClick2);
end;

function TMainForm.GetObjectID: DNNObject;
begin
  if FWindow = nil then
    Exit(nil);
  Result := (FWindow as ILocalObject).GetObjectID;
end;

procedure TMainForm.OnButtonClick(sender: DNObject; e: DNRoutedEventArgs);
begin
  if FProgressBar1 <> nil then
    FProgressBar1.Value := Random(100);
end;

procedure TMainForm.OnButtonClick2(sender: DNObject; e: DNRoutedEventArgs);
begin
  TDNMessageBox.DNClass.Show('Button.Click: ' + sender.ToString);
end;

procedure TestProc;
var
  LApp: DNApplication;
  LMainForm: ILocalObject;
begin
  LApp := TDNApplication.Create;
  LMainForm := TMainForm.Create;
  LApp.Run(DNWindow(LMainForm));
end;


begin
  ReportMemoryLeaksOnShutdown := True;
  try
     SetShowDetailedExceptionMessage(True);
     //[STAThread] 根据MS要求，WPF必须要在主线程中初始COM。
     CoInitializeEx(nil, COINIT_APARTMENTTHREADED);
     try
       TestProc;
     finally
       CoUninitialize;
     end;
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
