program ProHash;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  uReg in '..\uReg.pas';

// 因为某些旧版本不新语法，这里做兼容处理
function BytesToString(value: TBytes; AEqValue: string): string;
begin
  Result := TDNBitConverter.DNClass.ToString(value).Replace('-', '').ToLower;
  if Result.Equals(AEqValue) then
    Write('True ')
  else Write('False ');
end;

procedure Hash_SHA1;
var
  sha1: DNSHA1;
  result: TBytes;
begin
  Writeln('---------------Hash_SHA1---------------');
  sha1 := TDNSHA1Managed.Create;
  result := sha1.ComputeHash(BytesOf('11111111111111aaaa'));
  Writeln('result: ', BytesToString(result, '0d403430ba5307571f77a017cc1b67c1784a94a4'));
  // 0d403430ba5307571f77a017cc1b67c1784a94a4
end;

procedure Hash_SHA256;
var
  sha256: DNSHA256;
  result: TBytes;
begin
  Writeln('---------------Hash_SHA256---------------');
  sha256 := TDNSHA256Managed.Create;
  result := sha256.ComputeHash(BytesOf('11111111111111aaaa'));
  Writeln('result: ', BytesToString(result, '2ad87b450f4540dc1ed6c3fe1785fa5a75b26399cb07537da96e76ce26384fd6'));
  //2ad87b450f4540dc1ed6c3fe1785fa5a75b26399cb07537da96e76ce26384fd6
end;

procedure Hash_MD5;
var
  md5: DNMD5CryptoServiceProvider;
  result: TBytes;
begin
  Writeln('---------------Hash_MD5---------------');
  md5 := TDNMD5CryptoServiceProvider.Create;
  result := md5.ComputeHash(BytesOf('11111111111111aaaa'));
  Writeln('result: ', BytesToString(result, 'd071a85745b8a9befb4f028bcae7f3e9'));
  // d071a85745b8a9befb4f028bcae7f3e9
end;

procedure TestProc;
begin
  Hash_MD5;
  Hash_SHA1;
  Hash_SHA256;
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
