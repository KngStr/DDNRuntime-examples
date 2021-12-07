//----------------------------------------------------------------------------
//  System.Linq.Queryable.dll: System.Linq.Queryable, Version=4.0.3.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 2.1.30
//----------------------------------------------------------------------------
//  UnitName: DDNC.System.Linq.Queryable
//  Author: ying32
//----------------------------------------------------------------------------

unit DDNC.System.Linq.Queryable;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.CoreLib,
  DDNC.System.Linq.Expressions;

type


{ declares }

  DNEnumerableExecutor = interface; // type: System.Linq.EnumerableExecutor, namespace: System.Linq
  DNEnumerableExecutor<T> = interface; // type: System.Linq.EnumerableExecutor`1, namespace: System.Linq
  DNEnumerableQuery = interface; // type: System.Linq.EnumerableQuery, namespace: System.Linq
  DNEnumerableQuery<T> = interface; // type: System.Linq.EnumerableQuery`1, namespace: System.Linq
  DNQueryable = interface; // type: System.Linq.Queryable, namespace: System.Linq


{ objects }

  //-------------namespace: System.Linq----------------
  DNEnumerableExecutorClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{4D0716CA-2542-5A9B-8703-021A610F6BEF}']
  end;

  [DNTypeName('System.Linq.EnumerableExecutor')]
  DNEnumerableExecutor = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{DCC39C4D-2AE0-3A62-BFE1-0597DD00991F}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNEnumerableExecutor = class(TDNGenericImport<DNEnumerableExecutorClass, DNEnumerableExecutor>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableExecutorClass<T> = interface(DNEnumerableExecutorClass)
  ['{668F1AA2-6ED9-5C69-A83C-D00C7FB69BA5}']
  { constructors } 

    {class} function init(expression: DDNC.System.Linq.Expressions.DNExpression): DNEnumerableExecutor<T>;

  end;

  [DNTypeName('System.Linq.EnumerableExecutor`1')]
  DNEnumerableExecutor<T> = interface(DNEnumerableExecutor)
  ['{7D5C6790-A0AA-3C6D-B7E7-B943730DF563}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNEnumerableExecutor<T> = class(TDNGenericImport<DNEnumerableExecutorClass<T>, DNEnumerableExecutor<T>>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableQueryClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{71785DEF-247C-59F6-9DB9-CD2987D93610}']
  end;

  [DNTypeName('System.Linq.EnumerableQuery')]
  DNEnumerableQuery = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F31C8FA0-2E79-3D1C-AB3B-7DEA44942503}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNEnumerableQuery = class(TDNGenericImport<DNEnumerableQueryClass, DNEnumerableQuery>) end;

  //-------------namespace: System.Linq----------------
  DNEnumerableQueryClass<T> = interface(DNEnumerableQueryClass)
  ['{BBBD6F30-D587-574B-BC1D-3D7DFE509898}']
  { constructors } 

    {class} function init(enumerable: DDNC.System.Private.CoreLib.DNIEnumerable<T>): DNEnumerableQuery<T>; overload;
    {class} function init(expression: DDNC.System.Linq.Expressions.DNExpression): DNEnumerableQuery<T>; overload;

  end;

  [DNTypeName('System.Linq.EnumerableQuery`1')]
  DNEnumerableQuery<T> = interface(DNEnumerableQuery)
  ['{B19FAB6E-565A-3BC2-BAA6-0E1AA3FC78A8}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNEnumerableQuery<T> = class(TDNGenericImport<DNEnumerableQueryClass<T>, DNEnumerableQuery<T>>) end;

  //-------------namespace: System.Linq----------------
  DNQueryableClass = interface(DDNC.System.Private.CoreLib.DNObjectClass)
  ['{C2FA1683-705A-57CB-86D0-04081AA491E5}']
  { static methods } 

    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Int32>): Int32; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Int32>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Int64>): Int64; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Int64>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Single>): Single; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<Double>): Double; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Sum(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Int32>): Double; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int32>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Int64>): Double; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Int64>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Single>): Single; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Single>>): DDNC.System.Private.CoreLib.DNNullable<Single>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<Double>): Double; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<Double>>): DDNC.System.Private.CoreLib.DNNullable<Double>; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNDecimal>): DDNC.System.Private.CoreLib.DNDecimal; overload;
    {class} function Average(source: DDNC.System.Linq.Expressions.DNIQueryable<DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>>): DDNC.System.Private.CoreLib.DNNullable<DDNC.System.Private.CoreLib.DNDecimal>; overload;
    {class} function AsQueryable(source: DDNC.System.Private.CoreLib.DNIEnumerable): DDNC.System.Linq.Expressions.DNIQueryable; overload;

  end;

  [DNTypeName('System.Linq.Queryable')]
  DNQueryable = interface(DDNC.System.Private.CoreLib.DNObject)
  ['{F1F9F0DD-4C40-3C28-BBFF-573187D767E5}']
  { methods } 

    function ToString: string;
    function Equals(obj: DDNC.System.Private.CoreLib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDNC.System.Private.CoreLib.DNType;

  end;

  TDNQueryable = class(TDNGenericImport<DNQueryableClass, DNQueryable>) end;


implementation


initialization
  InternalTryLoadAssemblyModule('System.Linq.Queryable, Version=4.0.3.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a');

finalization

end.