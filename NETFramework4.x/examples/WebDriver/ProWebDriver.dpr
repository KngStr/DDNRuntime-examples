program ProWebDriver;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Math,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.WebDriver;

procedure TestProc;
var
//  LDriver: DNChromeDriver;
//  LOptions: DNChromeOptions;
  LDriver: DNInternetExplorerDriver;
  LSCode: string;
begin
  //SetShowDetailedExceptionMessage(True);
  Writeln('WebDriver.dll: ', LoadAssemblyModule(ExtractFilePath(ParamStr(0)) + 'WebDriver.dll'));

  // https://www.cnblogs.com/chenxiaomeng/p/9574991.html
  LDriver := TDNInternetExplorerDriver.Create;
//  LOptions := TDNChromeOptions.Create;
//  LOptions.BinaryLocation := 'F:\Program Files (x86)\Google\Chrome\Application\chrome.exe';
//  LDriver := TDNChromeDriver.DNClass.init(ExtractFilePath(ParamStr(0)), LOptions);
  LDriver.Navigate.GoToUrl('https://www.baidu.com');
//  LSCode := LDriver.PageSource;
//  Writeln(LSCode);
  LDriver.FindElement(TDNBy.DNClass.Id('kw')).SendKeys('.NET');
  LDriver.FindElement(TDNBy.DNClass.Id('su')).Submit();

  Readln;
  LDriver.Quit;
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
  Readln;
end.
