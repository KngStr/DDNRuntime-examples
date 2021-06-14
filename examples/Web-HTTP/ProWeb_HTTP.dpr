program ProWeb_HTTP;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System,
  uReg in '..\uReg.pas';


const
//  TestURL = 'http://www.kngstr.com/';
  TestURL = 'https://z-kit.cc';

// 没得委托实现
//  ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(CheckValidationResult);
//  request = WebRequest.Create(url) as HttpWebRequest;
//  request.ProtocolVersion=HttpVersion.Version10;
// private static bool CheckValidationResult(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors)
// {
//   return true;
// }

//function CheckValidationResult(sender: DNObject; certificate: DNX509Certificate; chain: DNX509Chain; errors: DNSslPolicyErrors): Boolean; cdecl;

// https://docs.microsoft.com/en-us/dotnet/api/system.runtime.interopservices.marshal.getdelegateforfunctionpointer?view=net-5.0
function CheckValidationResult(sender, certificate, chain: Pointer; errors: DNSslPolicyErrors): Boolean; stdcall;
begin
  Writeln('call CheckValidationResult');
  Result := True;
end;

procedure Http_HEAD();
var
  req: DNHttpWebRequest;
  resp: DNHttpWebResponse;
  delegate: DNDelegate;
  LType: DNType;
//  LM: DNMethodInfo;
//  I: Integer;
//  LPs: TArray<DNParameterInfo>;
begin
  Writeln('---------------Http_HEAD---------------');
  req := TDNHttpWebRequest.Wrap(TDNWebRequest.DNClass.Create(TestURL));
  req.Method := 'HEAD';
  req.ContentType := 'text/html; charset=utf-8';
//  req.UserAgent := '';
  // 暂时委托类型不生效，还得看看情况
  if TestURL.ToLower.StartsWith('https://') then
  begin
    req.Credentials := TDNCredentialCache.DNClass.DefaultCredentials;
    LType := TDNType.GetType<DNRemoteCertificateValidationCallback>();
//    Writeln('Version10: ', TDNHttpVersion.DNClass.Version10.ToString);
    req.ProtocolVersion := TDNHttpVersion.DNClass.Version10;
    delegate := TDNMarshal.DNClass.GetDelegateForFunctionPointer(IntPtr(@CheckValidationResult), LType);
    TDNServicePointManager.DNClass.ServerCertificateValidationCallback := DNRemoteCertificateValidationCallback(delegate);
    TDNServicePointManager.DNClass.SecurityProtocol := DNSecurityProtocolType.Tls12;
  end;

  resp := TDNHttpWebResponse.Wrap(req.GetResponse());
  if resp <> nil then
  begin
    Writeln('StatusCode: ',  resp.StatusCode);
    Writeln('StatusDescription: ', resp.StatusDescription);
    Writeln('ContentLength: ', resp.ContentLength);
  end;
end;

procedure Http_GET();
var
  req: DNHttpWebRequest;
  resp: DNHttpWebResponse;
  stream: DNStream;
  reader: DNStreamReader;
begin
  Writeln('---------------Http_GET---------------');
  req := TDNHttpWebRequest.Wrap(TDNWebRequest.DNClass.Create(TestURL));
  req.Method := 'GET';
  req.ContentType := 'text/html; charset=utf-8';
//  req.UserAgent := '';
  resp := TDNHttpWebResponse.Wrap(req.GetResponse());
  if resp <> nil then
  begin
    Writeln('StatusCode: ',  resp.StatusCode);
    Writeln('StatusDescription: ', resp.StatusDescription);
    Writeln('ContentLength: ', resp.ContentLength);
    stream := resp.GetResponseStream;
    if stream <> nil then
    begin
      reader := TDNStreamReader.DNClass.init(stream);
      Writeln( reader.ReadToEnd );
    end;
    resp.Close;
    stream.Close;
  end;
end;

procedure TestProc;
begin
  TDNServicePointManager.DNClass.ServerCertificateValidationCallback := TDNDelegate.New<DNRemoteCertificateValidationCallback>(@CheckValidationResult);
  TDNServicePointManager.DNClass.SecurityProtocol := DNSecurityProtocolType.Tls12;
  Http_HEAD;
  Http_GET;
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
