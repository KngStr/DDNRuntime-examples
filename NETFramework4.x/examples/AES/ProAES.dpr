program ProAES;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  uReg in '..\uReg.pas';

// 因为某些旧版本不新语法，这里做兼容处理
function ToBytes(value: array of Byte): TBytes;
begin
  SetLength(Result, Length(value));
  Move(value[0], Result[0], Length(Result));
end;

procedure AES;
const
  KeyArr: array[0..15] of Byte = ($D3, $16, $7F, $9A, $A9, $2D, $23, $67, $9B, $19, $9E, $A8, $6C, $B6, $68, $E2);
//  IVArr: array[0..7] of Byte = ($9B, $19, $9E, $A8, $6C, $B6, $68, $E2);
var
  aesRM: DNRijndaelManaged;
  aesDecrypt, aesEncrypt: DNICryptoTransform;
  input, enResult, deResult: TArray<Byte>;
begin
  Writeln('---------------des---------------');
  aesRM := TDNRijndaelManaged.Create;
  aesRM.Key := ToBytes(KeyArr);// [$D3, $16, $7F, $9A, $A9, $2D, $23, $67];
  //aesRM.IV := ToBytes(IVArr);//[$9B, $19, $9E, $A8, $6C, $B6, $68, $E2];
  aesRM.Mode := DNCipherMode.ECB;
  aesRM.Padding := DNPaddingMode.PKCS7;

  input := BytesOf('aes text string abcdef...');

  // encrypt
  aesEncrypt := aesRM.CreateEncryptor();
  enResult := aesEncrypt.TransformFinalBlock(input, 0, Length(input));

  Writeln('aes encrypt: ', TDNConvert.DNClass.ToBase64String(enResult));

  // decrypt
  aesDecrypt := aesRM.CreateDecryptor();
  deResult := aesDecrypt.TransformFinalBlock(enResult, 0, Length(enResult));

  Writeln('aes descrypt: ', StringOf(deResult));

  if CompareMem(@input[0], @deResult[0], Length(input)) then
    Writeln('input == deResult')
  else
    Writeln('input != deResult')
end;

procedure TestProc;
begin
  AES;
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
