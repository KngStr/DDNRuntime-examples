unit uStream;

interface

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib;

  procedure TestProc;
implementation

procedure TestMemoryStream;
var
  LMem: DNMemoryStream;
  LBytes: TArray<Byte>;
  B: Byte;
  LReadLen: Integer;
begin
  Writeln('---------------TestMemoryStream---------------');
  LMem := TDNMemoryStream.Create;
  // 已经实现写数组操作
  LMem.Write([1,2,3,4,5], 0, 5);
  LMem.WriteByte(121);
  LMem.Flush;
  LMem.Position := 0;
//
  Writeln('Data Length: ', LMem.Length);
  SetLength(LBytes, LMem.Length);
  LReadLen :=  LMem.Read(LBytes, 0, Length(LBytes));
  Writeln('Read Length: ', LReadLen);
  for b in LBytes do
    Write(b, ' ');
  Writeln;
end;

procedure TestStreamWriter;
var
  LW: DNStreamWriter;
begin
  Writeln('---------------TestStreamWriter---------------');
  LW := TDNStreamWriter.DNClass.init('test-stream-writer.txt');
  LW.Write('String1111');
  LW.Write(111);
  LW.Write(False);

  LW.WriteLine;
  LW.WriteLine('String222');
  LW.WriteLine(222);
  LW.WriteLine(True);
  LW.Flush;
  LW.Close;
end;

procedure TestStreamReader;
var
  LW: DNStreamReader;
begin
  Writeln('---------------TestStreamReader---------------');
  LW := TDNStreamReader.DNClass.init('test-stream-writer.txt');
  Writeln(LW.ReadToEnd);
  LW.Close;
end;


procedure TestProc;
begin
  TestMemoryStream;
  TestStreamWriter;
  TestStreamReader;
end;

end.
