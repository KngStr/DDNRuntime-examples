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


// https://docs.microsoft.com/en-us/dotnet/api/system.runtime.interopservices.marshal.getdelegateforfunctionpointer?view=net-5.0
type
  TDelegateClass = class
  public
    [DNDelegate(DNRemoteCertificateValidationCallback)]
    class function CheckValidationResult(sender: DNObject; certificate: DNX509Certificate; chain: DNX509Chain;  errors: DNSslPolicyErrors): Boolean;
  end;

class function TDelegateClass.CheckValidationResult(
  sender: DNObject;
  certificate: DNX509Certificate;
  chain: DNX509Chain;
  errors: DNSslPolicyErrors): Boolean;
begin
  Writeln('call TDelegateTest.CheckValidationResult: ');
  Writeln('call sender: ', sender.ToString);
  Writeln('call certificate: ',  certificate.ToString);
  Writeln('call chain: ', chain.ToString);
  Writeln('call errors: ', errors);
  Result := True;
end;

procedure Http_HEAD();
var
  req: DNHttpWebRequest;
  resp: DNHttpWebResponse;
//  LType: DNType;
//  LM: DNMethodInfo;
//  I: Integer;
//  LPs: TArray<DNParameterInfo>;
begin
  Writeln('---------------Http_HEAD---------------');
  req := TDNHttpWebRequest.Wrap(TDNWebRequest.DNClass.Create(TestURL));
  req.Method := 'HEAD';
  req.ContentType := 'text/html; charset=utf-8';
  req.ProtocolVersion := TDNHttpVersion.DNClass.Version10;
  //req.Credentials := TDNCredentialCache.DNClass.DefaultCredentials;
//  req.UserAgent := '';
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
  req.ProtocolVersion := TDNHttpVersion.DNClass.Version10;
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
  TDNServicePointManager.DNClass.ServerCertificateValidationCallback :=
     TDNDelegate.CreateDelegate<DNRemoteCertificateValidationCallback>(TDelegateClass);//, 'CheckValidationResult');
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
