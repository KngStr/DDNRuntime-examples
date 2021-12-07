unit uWebDriver;

interface

uses
  System.SysUtils,
  System.Math,
  DDN.Runtime,
  DDN.mscorlib,

{$IFDEF USE_NETCORE}
  DDNC.WebDriver
{$ELSE}
  DDN.WebDriver
{$ENDIF}

  ;

  procedure TestProc;
implementation

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

end.
