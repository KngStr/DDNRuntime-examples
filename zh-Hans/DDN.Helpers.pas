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
  DDN.mscorlib;

  function StrToDNStr(const AStr: string): DNString;
  function DNStrToStr(const ADNStr: DNString): string;
implementation

function StrToDNStr(const AStr: string): DNString;
begin
  Result := TDNString.DNClass.init(PWideChar(AStr));
end;

function DNStrToStr(const ADNStr: DNString): string;
begin
  Result := '';
  if ADNStr <> nil then
    Result := ADNStr.ToString;
end;

end.
