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
  DDN.Runtime
{$IFNDEF USE_NETCORE}
  ,DDN.mscorlib
{$ELSE}
  ,DDNC.System.Private.CoreLib
{$ENDIF};

type
  /// <summary>
  ///  TDNHelpers
  /// </summary>
  TDNHelpers = record
  private
    class function ValueIsSupported(ATypeInfo: PTypeInfo): Boolean; overload; static;
    class function ValueIsSupported(AType: Byte): Boolean; overload; static;
  public
    class function ToValue<T>(AValue: DNObject): T; static;
  end;

  // object
  function ToDNObject(AValue: TValue): DNObject;

  // string
  function StrToDNStr(const AValue: string): DNString;
  function DNStrToStr(const AValue: DNString): string;

  /// <summary>
  ///   TVarArgs to DNObjects
  /// </summary>
  function ToDNObjects(AArgs: array of const): TArray<DNObject>;
  /// <summary>
  ///   TValues to DNObjects
  /// </summary>
  function AsDNObjects(AArgs: array of TValue): TArray<DNObject>;
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
  Result := '';
  if AValue <> nil then
    Result := AValue.ToString;
end;

function ToDNObject(AValue: TValue): DNObject;
begin
  //TODO: 需要检查类型么？
  Result := TDNObject.Wrap(DNValueToObject(AValue));
end;

function ToDNObjects(AArgs: array of const): TArray<DNObject>;

  procedure doCheckParams;
  var
    I: Integer;
  begin
    for I := 0 to High(AArgs) do
      if not TDNHelpers.ValueIsSupported(AArgs[I].VType) then
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

function AsDNObjects(AArgs: array of TValue): TArray<DNObject>;

  procedure doCheckParams;
  var
    I: Integer;
  begin
    for I := 0 to High(AArgs) do
      if not TDNHelpers.ValueIsSupported(AArgs[I].TypeInfo) then
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
      Result[I] := ToDNObject(AArgs[I]);
  end;
end;


{ TDNHelpers }

class function TDNHelpers.ToValue<T>(AValue: DNObject): T;
var
  LInfo: PTypeInfo;
begin
  FillChar(Result, SizeOf(T), #0);
  LInfo := TypeInfo(T);
  if TDNHelpers.ValueIsSupported(LInfo) then
    Result := DNObjectToValue(AValue,LInfo).AsType<T>;
end;

class function TDNHelpers.ValueIsSupported(ATypeInfo: PTypeInfo): Boolean;
begin
  Result := False;
  if ATypeInfo <> nil then
    Result := ATypeInfo.Kind in [tkInteger, tkChar, tkWChar, tkEnumeration, tkFloat,
    tkString, tkLString, tkUString, tkWString, tkInt64, tkPointer];
end;

class function TDNHelpers.ValueIsSupported(AType: Byte): Boolean;
begin
  Result := AType in [vtInteger, vtBoolean, vtChar, vtExtended, vtString,
     vtPointer, vtPChar, vtWideChar, vtPWideChar, vtAnsiString, vtInterface,
     vtWideString, vtInt64, vtUnicodeString];
end;

end.
