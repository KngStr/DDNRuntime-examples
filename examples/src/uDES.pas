unit uDES;

interface

uses
  System.SysUtils,
  DDN.Runtime
{$IFNDEF USE_NETCORE}
  ,DDN.mscorlib
{$ELSE}
  ,DDNC.System.Private.CoreLib
  ,DDNC.System.Security.Cryptography.Csp
  ,DDNC.System.Security.Cryptography.Primitives
{$ENDIF};

  procedure TestProc;
implementation

// 因为某些旧版本不支持新语法，这里做兼容处理
function ToBytes(value: array of Byte): TBytes;
begin
  SetLength(Result, Length(value));
  Move(value[0], Result[0], Length(Result));
end;

procedure DES3;
const
  KeyArr: array[0..23] of Byte = ($D3, $16, $7F, $9A, $A9, $2D, $23, $67, $91, $E1, $A1, $0B, $8A, $7B, $8E, $5F, $94, $93, $64, $B6, $29, $E1, $C5, $B6);
  IVArr: array[0..7] of Byte = ($9B, $19, $9E, $A8, $6C, $B6, $68, $E2);
var
  des3: DNTripleDESCryptoServiceProvider;
  des3Decrypt, des3Encrypt: DNICryptoTransform;
  input, enResult, deResult: TArray<Byte>;
begin
  Writeln('---------------3des---------------');
  des3 := TDNTripleDESCryptoServiceProvider.Create;
  des3.Key := ToBytes(KeyArr);//[$D3, $16, $7F, $9A, $A9, $2D, $23, $67, $91, $E1, $A1, $0B, $8A, $7B, $8E, $5F, $94, $93, $64, $B6, $29, $E1, $C5, $B6];
  des3.IV := ToBytes(IVArr);// [$9B, $19, $9E, $A8, $6C, $B6, $68, $E2];
  des3.Mode := DNCipherMode.CBC;
  des3.Padding := DNPaddingMode.PKCS7;

  input := BytesOf('3des text string abcdef...');

  // encrypt
  des3Encrypt := des3.CreateEncryptor();
  enResult := des3Encrypt.TransformFinalBlock(input, 0, Length(input));

  Writeln('3des encrypt: ', TDNConvert.DNClass.ToBase64String(enResult));

  // decrypt
  des3Decrypt := des3.CreateDecryptor();
  deResult := des3Decrypt.TransformFinalBlock(enResult, 0, Length(enResult));

  Writeln('3des descrypt: ', StringOf(deResult));

  if CompareMem(@input[0], @deResult[0], Length(input)) then
    Writeln('input == deResult')
  else
    Writeln('input != deResult')
end;

procedure DES;
const
  KeyArr: array[0..7] of Byte = ($D3, $16, $7F, $9A, $A9, $2D, $23, $67);
  IVArr: array[0..7] of Byte = ($9B, $19, $9E, $A8, $6C, $B6, $68, $E2);
var
  des: DNDESCryptoServiceProvider;
  desDecrypt, desEncrypt: DNICryptoTransform;
  input, enResult, deResult: TArray<Byte>;
begin
  Writeln('---------------des---------------');
  des := TDNDESCryptoServiceProvider.Create;

  des.Key := ToBytes(KeyArr);// [$D3, $16, $7F, $9A, $A9, $2D, $23, $67];
  des.IV := ToBytes(IVArr);//[$9B, $19, $9E, $A8, $6C, $B6, $68, $E2];
  des.Mode := DNCipherMode.CBC;
  des.Padding := DNPaddingMode.PKCS7;

  input := BytesOf('des text string abcdef...');

  // encrypt
  desEncrypt := des.CreateEncryptor;
  enResult := desEncrypt.TransformFinalBlock(input, 0, Length(input));

  Writeln('des encrypt: ', TDNConvert.DNClass.ToBase64String(enResult));

  // decrypt
  desDecrypt := des.CreateDecryptor();
  deResult := desDecrypt.TransformFinalBlock(enResult, 0, Length(enResult));

  Writeln('des descrypt: ', StringOf(deResult));

  if CompareMem(@input[0], @deResult[0], Length(input)) then
    Writeln('input == deResult')
  else
    Writeln('input != deResult')
end;

procedure TestProc;
begin
  DES3;
  DES;
end;

end.
