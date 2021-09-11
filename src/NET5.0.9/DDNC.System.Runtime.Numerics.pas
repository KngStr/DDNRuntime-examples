//----------------------------------------------------------------------------
//  System.Runtime.Numerics.dll: System.Runtime.Numerics, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Runtime.Numerics
//  Author: ying32
//----------------------------------------------------------------------------

{$IFNDEF DDNCSYSTEMRUNTIMENUMERICS}
unit DDNC.System.Runtime.Numerics;
{$ENDIF}

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib;

type


{ declares }

  DNBigInteger = interface; // type: System.Numerics.BigInteger, namespace: System.Numerics
  DNComplex = interface; // type: System.Numerics.Complex, namespace: System.Numerics


{ objects }

  //-------------namespace: System.Numerics----------------
  DNBigIntegerClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{3E0F5042-6321-55D7-AE8A-EBEEEC468C21}']
  { static getter & setter } 

    {class} function get_Zero: DNBigInteger;
    {class} function get_One: DNBigInteger;
    {class} function get_MinusOne: DNBigInteger;

  { constructors } 

    {class} function init(value: Int32): DNBigInteger; overload;
    {class} function init(value: UInt32): DNBigInteger; overload;
    {class} function init(value: Int64): DNBigInteger; overload;
    {class} function init(value: UInt64): DNBigInteger; overload;
    {class} function init(value: Single): DNBigInteger; overload;
    {class} function init(value: Double): DNBigInteger; overload;
    {class} function init(value: DDNC.System.Private.CoreLib.DNDecimal): DNBigInteger; overload;
    {class} function init(value: TArray<Byte>): DNBigInteger; overload;
    {class} function init(value: DDNC.System.Private.CoreLib.DNReadOnlySpan<Byte>; isUnsigned: Boolean; isBigEndian: Boolean): DNBigInteger; overload;

  { static methods } 

    {class} function Parse(value: string): DNBigInteger; overload;
    {class} function Parse(value: string; style: DDNC.System.Private.CoreLib.DNNumberStyles): DNBigInteger; overload;
    {class} function Parse(value: string; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): DNBigInteger; overload;
    {class} function Parse(value: string; style: DDNC.System.Private.CoreLib.DNNumberStyles; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): DNBigInteger; overload;
    {class} function TryParse(value: string; out result: DNBigInteger): Boolean; overload;
    {class} function TryParse(value: string; style: DDNC.System.Private.CoreLib.DNNumberStyles; provider: DDNC.System.Private.CoreLib.DNIFormatProvider; out result: DNBigInteger): Boolean; overload;
    {class} function Parse(value: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; style: DDNC.System.Private.CoreLib.DNNumberStyles; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): DNBigInteger; overload;
    {class} function TryParse(value: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; out result: DNBigInteger): Boolean; overload;
    {class} function TryParse(value: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; style: DDNC.System.Private.CoreLib.DNNumberStyles; provider: DDNC.System.Private.CoreLib.DNIFormatProvider; out result: DNBigInteger): Boolean; overload;
    {class} function Compare(left: DNBigInteger; right: DNBigInteger): Int32;
    {class} function Abs(value: DNBigInteger): DNBigInteger;
    {class} function Add(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function Subtract(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function Multiply(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function Divide(dividend: DNBigInteger; divisor: DNBigInteger): DNBigInteger;
    {class} function Remainder(dividend: DNBigInteger; divisor: DNBigInteger): DNBigInteger;
    {class} function DivRem(dividend: DNBigInteger; divisor: DNBigInteger; out remainder: DNBigInteger): DNBigInteger;
    {class} function Negate(value: DNBigInteger): DNBigInteger;
    {class} function Log(value: DNBigInteger): Double; overload;
    {class} function Log(value: DNBigInteger; baseValue: Double): Double; overload;
    {class} function Log10(value: DNBigInteger): Double;
    {class} function GreatestCommonDivisor(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function Max(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function Min(left: DNBigInteger; right: DNBigInteger): DNBigInteger;
    {class} function ModPow(value: DNBigInteger; exponent: DNBigInteger; modulus: DNBigInteger): DNBigInteger;
    {class} function Pow(value: DNBigInteger; exponent: Int32): DNBigInteger;

  { static propertys } 

    {class} property Zero: DNBigInteger read get_Zero;
    {class} property One: DNBigInteger read get_One;
    {class} property MinusOne: DNBigInteger read get_MinusOne;
  end;

  [DNTypeName('System.Numerics.BigInteger')]
  DNBigInteger = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{518FB65D-874A-3B1C-B24B-437059F0060B}']
  { getters & setters } 

    function get_IsPowerOfTwo: Boolean;
    function get_IsZero: Boolean;
    function get_IsOne: Boolean;
    function get_IsEven: Boolean;
    function get_Sign: Int32;

  { methods } 

    function GetBitLength: Int64;
    function GetHashCode: Int32;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(other: Int64): Boolean; overload;
    function Equals(other: UInt64): Boolean; overload;
    function Equals(other: DNBigInteger): Boolean; overload;
    function CompareTo(other: Int64): Int32; overload;
    function CompareTo(other: UInt64): Int32; overload;
    function CompareTo(other: DNBigInteger): Int32; overload;
    function CompareTo(obj: DDNC.System.Private.CoreLib.DNObject): Int32; overload;
    function ToByteArray: TArray<Byte>; overload;
    function ToByteArray(isUnsigned: Boolean; isBigEndian: Boolean): TArray<Byte>; overload;
    function TryWriteBytes(destination: DDNC.System.Private.CoreLib.DNSpan<Byte>; out bytesWritten: Int32; isUnsigned: Boolean; isBigEndian: Boolean): Boolean;
    function GetByteCount(isUnsigned: Boolean): Int32;
    function ToString: string; overload;
    function ToString(provider: DDNC.System.Private.CoreLib.DNIFormatProvider): string; overload;
    function ToString(format: string): string; overload;
    function ToString(format: string; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): string; overload;
    function TryFormat(destination: DDNC.System.Private.CoreLib.DNSpan<Char>; out charsWritten: Int32; format: DDNC.System.Private.CoreLib.DNReadOnlySpan<Char>; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): Boolean;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property IsPowerOfTwo: Boolean read get_IsPowerOfTwo;
    property IsZero: Boolean read get_IsZero;
    property IsOne: Boolean read get_IsOne;
    property IsEven: Boolean read get_IsEven;
    property Sign: Int32 read get_Sign;
  end;

  TDNBigInteger = class(TDNGenericImport<DNBigIntegerClass, DNBigInteger>) end;

  //-------------namespace: System.Numerics----------------
  DNComplexClass = interface(DDNC.System.Private.CoreLib.DNValueTypeClass)
  ['{4A3CFC56-8F77-570A-AA96-AA7186E98661}']
  { constructors } 

    {class} function init(real: Double; imaginary: Double): DNComplex;

  { static fields getter & setter } 

   function __fakeFieldGet_Zero: DNComplex;
   function __fakeFieldGet_One: DNComplex;
   function __fakeFieldGet_ImaginaryOne: DNComplex;
   function __fakeFieldGet_NaN: DNComplex;
   function __fakeFieldGet_Infinity: DNComplex;

  { static fields } 

    {class} property Zero: DNComplex read __fakeFieldGet_Zero;
    {class} property One: DNComplex read __fakeFieldGet_One;
    {class} property ImaginaryOne: DNComplex read __fakeFieldGet_ImaginaryOne;
    {class} property NaN: DNComplex read __fakeFieldGet_NaN;
    {class} property Infinity: DNComplex read __fakeFieldGet_Infinity;

  { static methods } 

    {class} function FromPolarCoordinates(magnitude: Double; phase: Double): DNComplex;
    {class} function Negate(value: DNComplex): DNComplex;
    {class} function Add(left: DNComplex; right: DNComplex): DNComplex; overload;
    {class} function Add(left: DNComplex; right: Double): DNComplex; overload;
    {class} function Add(left: Double; right: DNComplex): DNComplex; overload;
    {class} function Subtract(left: DNComplex; right: DNComplex): DNComplex; overload;
    {class} function Subtract(left: DNComplex; right: Double): DNComplex; overload;
    {class} function Subtract(left: Double; right: DNComplex): DNComplex; overload;
    {class} function Multiply(left: DNComplex; right: DNComplex): DNComplex; overload;
    {class} function Multiply(left: DNComplex; right: Double): DNComplex; overload;
    {class} function Multiply(left: Double; right: DNComplex): DNComplex; overload;
    {class} function Divide(dividend: DNComplex; divisor: DNComplex): DNComplex; overload;
    {class} function Divide(dividend: DNComplex; divisor: Double): DNComplex; overload;
    {class} function Divide(dividend: Double; divisor: DNComplex): DNComplex; overload;
    {class} function Abs(value: DNComplex): Double;
    {class} function Conjugate(value: DNComplex): DNComplex;
    {class} function Reciprocal(value: DNComplex): DNComplex;
    {class} function Sin(value: DNComplex): DNComplex;
    {class} function Sinh(value: DNComplex): DNComplex;
    {class} function Asin(value: DNComplex): DNComplex;
    {class} function Cos(value: DNComplex): DNComplex;
    {class} function Cosh(value: DNComplex): DNComplex;
    {class} function Acos(value: DNComplex): DNComplex;
    {class} function Tan(value: DNComplex): DNComplex;
    {class} function Tanh(value: DNComplex): DNComplex;
    {class} function Atan(value: DNComplex): DNComplex;
    {class} function IsFinite(value: DNComplex): Boolean;
    {class} function IsInfinity(value: DNComplex): Boolean;
    {class} function IsNaN(value: DNComplex): Boolean;
    {class} function Log(value: DNComplex): DNComplex; overload;
    {class} function Log(value: DNComplex; baseValue: Double): DNComplex; overload;
    {class} function Log10(value: DNComplex): DNComplex;
    {class} function Exp(value: DNComplex): DNComplex;
    {class} function Sqrt(value: DNComplex): DNComplex;
    {class} function Pow(value: DNComplex; power: DNComplex): DNComplex; overload;
    {class} function Pow(value: DNComplex; power: Double): DNComplex; overload;

  end;

  [DNTypeName('System.Numerics.Complex')]
  DNComplex = interface(DDNC.System.Private.CoreLib.DNValueType)
  ['{5476054D-4D91-3363-8337-8048D78E95C8}']
  { getters & setters } 

    function get_Real: Double;
    function get_Imaginary: Double;
    function get_Magnitude: Double;
    function get_Phase: Double;

  { methods } 

    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean; overload;
    function Equals(value: DNComplex): Boolean; overload;
    function GetHashCode: Int32;
    function ToString: string; overload;
    function ToString(format: string): string; overload;
    function ToString(provider: DDNC.System.Private.CoreLib.DNIFormatProvider): string; overload;
    function ToString(format: string; provider: DDNC.System.Private.CoreLib.DNIFormatProvider): string; overload;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  { propertys } 

    property Real: Double read get_Real;
    property Imaginary: Double read get_Imaginary;
    property Magnitude: Double read get_Magnitude;
    property Phase: Double read get_Phase;
  end;

  TDNComplex = class(TDNGenericImport<DNComplexClass, DNComplex>) end;


implementation


initialization
  LoadAssemblyModule('System.Runtime.Numerics.dll', True, 'System.Runtime.Numerics, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.
