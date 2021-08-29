//-----------------------------------------------------------//
//                                                           //
//     DDN.Helpers                                           //
//     Delphi .NET Helpers                                   //
//     Author: ying32                                        //
//     Version: 0.1                                          //
//     .NET Framework: .NET 4.0                              //
//-----------------------------------------------------------//
//             Helpers                                       //
//-----------------------------------------------------------//
unit DDN.Helpers;

interface

uses
  System.SysUtils,
  System.Rtti,
  System.TypInfo,
  DDN.Runtime,
  DDN.mscorlib;

type

  TDNHelpers = record
  public
    class function ToValue<T>(AValue: DNObject): T; static;
  end;

  // object
  function ToDNObject(AValue: TValue): DNObject;

  // string
  function StrToDNStr(const AValue: string): DNString;
  function DNStrToStr(const AValue: DNString): string;

  function ToDNObjects(AArgs: array of const): TArray<DNObject>;
implementation

const
{$IFNDEF ZH_HANS}
  Err_ParameterNotSupported = 'The %d parameter type is currently not supported.';
{$ELSE}
  Err_ParameterNotSupported = '当前不支持第%d个的参数类型。';
{$ENDIF}

function StrToDNStr(const AValue: string): DNString;
begin
  Result := TDNString.Wrap(DNValueToObject(AValue));
end;

function DNStrToStr(const AValue: DNString): string;
begin
//  Result := DNObjectToValue(ADNStr as ILocalObject, TypeInfo(string)).AsString;
  Result := '';
  if AValue <> nil then
    Result := AValue.ToString;
end;

function ToDNObject(AValue: TValue): DNObject;
begin
  Result := TDNObject.Wrap(DNValueToObject(AValue));
end;

function ToDNObjects(AArgs: array of const): TArray<DNObject>;

  function IsSupportType(AType: Byte): Boolean;
  begin
    Result := AType in [vtInteger, vtBoolean, vtChar, vtExtended, vtString,
       vtPointer, vtPChar, vtWideChar, vtPWideChar, vtAnsiString, vtInterface,
       vtWideString, vtInt64, vtUnicodeString];
  end;

  procedure doCheckParams;
  var
    I: Integer;
  begin
    for I := 0 to High(AArgs) do
      if not IsSupportType(AArgs[I].VType) then
        raise Exception.CreateFmt(Err_ParameterNotSupported, [I]);
  end;

var
  I: Integer;
begin
  Result := nil;
  if Length(AArgs) > 0 then
  begin
    doCheckParams;
    SetLength(Result, Length(AArgs));
    for I := 0 to High(Result) do
      Result[I] := ToDNObject(TValue.FromVarRec(AArgs[I]));
  end;
end;


{ TDNHelpers }

class function TDNHelpers.ToValue<T>(AValue: DNObject): T;
var
  LInfo: PTypeInfo;
begin
  FillChar(Result, SizeOf(T), #0);
  LInfo := TypeInfo(T);
  if LInfo.Kind in [tkInteger, tkChar, tkWChar, tkEnumeration, tkFloat,
    tkString, tkLString, tkUString, tkWString, tkInt64, tkPointer] then
    Result := DNObjectToValue(AValue,LInfo).AsType<T>;
end;

end.
