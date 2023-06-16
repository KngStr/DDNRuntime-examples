unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DDN.Runtime, DDN.mscorlib,
  DDN.System.Windows.Forms,
  DDN.WindowsFormsApp1;

procedure TForm1.Button1Click(Sender: TObject);
var
  form1: DNForm1;
begin
  form1 := TDNForm1.DNClass.init;
  form1.Show();
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  form2: DNForm2;
begin
  form2 := TDNForm2.DNClass.init;
  form2.Show();
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  form3: DNForm3;
begin
  form3 := TDNForm3.DNClass.init;
  form3.Show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  TDNClass1.DNClass.ShowForm;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  LAssembly: DNAssembly;
  LObject: DNObject;
begin
  LAssembly := TDNAssembly.DNClass.LoadFrom(ExtractFilePath(ParamStr(0)) + 'WindowsFormsApp1.dll');
  LObject := LAssembly.CreateInstance('WindowsFormsApp1.Form1');
  if LObject <> nil then
    TDNForm.Wrap(LObject).Show;   // 要使用Wrap而不是as
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  LAssembly: DNAssembly;
  LType: DNType;
  LObject: DNObject;
begin
  LAssembly := TDNAssembly.DNClass.LoadFrom(ExtractFilePath(ParamStr(0)) + 'WindowsFormsApp1.dll');
  LType := LAssembly.GetType('WindowsFormsApp1.Form1');
  if LType <> nil then begin
    LObject := TDNActivator.DNClass.CreateInstance(LType, nil);
    if LObject <> nil then
      TDNForm.Wrap(LObject).Show;   // 要使用Wrap而不是as
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  LAssembly: DNAssembly;
  LType: DNType;
  LObject: DNObject;
  LConstructorInfo: DNConstructorInfo;
begin
  LAssembly := TDNAssembly.DNClass.LoadFrom(ExtractFilePath(ParamStr(0)) + 'WindowsFormsApp1.dll');
  LType := LAssembly.GetType('WindowsFormsApp1.Form1');
  if LType <> nil then begin
    LConstructorInfo := LType.GetConstructor(nil);
    if LConstructorInfo <> nil then begin
      LObject := LConstructorInfo.Invoke(nil);
      if LObject <> nil then
        TDNForm.Wrap(LObject).Show;   // 要使用Wrap而不是as
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'WindowsFormsApp1.dll');
  //TDNApplication.DNClass.EnableVisualStyles; // 启用了Enable Theme，则这里开不开都行
  TDNApplication.DNClass.SetCompatibleTextRenderingDefault(false);
  //[STAThread] 根据MS要求，必须要在主线程中初始COM。
  //CoInitializeEx(nil, COINIT_APARTMENTTHREADED);
end;

end.
