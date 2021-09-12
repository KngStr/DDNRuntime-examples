﻿unit uGenerics;

interface

uses
  System.SysUtils,
  DDN.Runtime,
{$IFDEF USE_NETCORE}
  DDNC.System.Private.CoreLib
{$ELSE}
  DDN.mscorlib
{$ENDIF};

  procedure TestProc;
implementation

procedure TestProc;
var
  LList: DNList<string>;
  LDict: DNDictionary<string, Integer>;
  s: string;
  n: Integer;
begin
  Writeln('  ---List<T>--- ');
  LList := TDNList<string>.Create;
  LList.Add('affff');
  Writeln('Count:', LList.Count);
  Writeln('index 0: ', LList.Item[0]);
  for s in LList do
    Writeln('item: ', s);

  Writeln('  ---Dictionary<TKey, TValue>--- ');
  LDict := TDNDictionary<string, Integer>.Create;
  LDict.Add('key1', 3);
  LDict.Add('key2', 5);
  Writeln('key2 exists:', LDict.ContainsKey('key2'));
  LDict.Item['key2'] := 100;
  Writeln('key2 val:', LDict.Item['key2']);
  for s in LDict.Keys do
     Writeln('key: ',  s);
  for n in LDict.Values do
    Writeln('value: ', n);
end;


end.
