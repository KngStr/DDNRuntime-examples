unit uDataTable;

interface

uses
  System.SysUtils,
  DDN.Runtime
{$IFNDEF USE_NETCORE}
  ,DDN.mscorlib
{$ELSE}
  ,DDNC.System.Private.CoreLib
{$ENDIF}
  ,DDN.System.Data
  ,DDN.Helpers;

  procedure TestProc;
implementation

// C#: https://www.cnblogs.com/qianqian528/p/8456351.html

procedure PintTable(dt: DNDataTable);
var
  I, J, LColCount: Integer;
begin
  Writeln('-----------------------');
  LColCount := dt.Columns.Count;
  for I := 0 to LColCount - 1 do
  begin
    if I > 0 then
      write(' | ');
    write(dt.Columns[I].ColumnName);
  end;
  writeln;
  Writeln('-----------------------');
  for I := 0 to dt.Rows.Count - 1 do
  begin
    for J := 0 to LColCount - 1 do
    begin
      if J > 0 then
        write(' | ');
      write(dt.Rows[I][J].ToString);
    end;
    writeln;
  end;
  Writeln('-----------------------');
end;

procedure TestProc;
var
  dt, dtNew: DNDataTable;
  dc: DNDataColumn;
  dr: DNDataRow;
  arr: TArray<DNObject>;
  drs: TArray<DNDataRow>;
  i: integer;
  dv: DNDataView;
begin
  // create table
  dt := TDNDataTable.DNClass.init('Table_New');
  // ----------------------  create columns  ----------------------
  // method 1 : Create empty column
  //dc := TDNDataColumn.Create;
  //dt.Columns.Add(dc);
  // method 2
  dt.Columns.Add('column1', TDNType.DNClass.GetType('System.String'));
  dt.Columns.Add('column2', TDNString.typeid);
  // method 3
  //dc := TDNDataColumn.DNClass.init('column1', TDNType.DNClass.GetType('System.DateTime'));
  //dc := TDNDataColumn.DNClass.init('column2', TDNDateTime.typeid);
  //dt.Columns.Add(dc);

  // ----------------------  create rows  ----------------------

  // method 1: Create empty row
  dr := dt.NewRow();
  dt.Rows.Add(dr);
  // method 2
  SetLength(arr, 2);
  arr[0] := StrToDNStr('张三');
  arr[1] := TDNDateTime.DNClass.Now;
  dt.Rows.Add(arr);

  PintTable(dt);

  // method 3: Copy
  //dt.Rows.Add(dt2.Rows[0].ItemArray);

  // ----------------------  add or update  ----------------------
  dr := dt.NewRow();
  dr[0] := StrToDNStr('李四');
  dr['column1'] := TDNDateTime.DNClass.Now;

  //
  dt.Rows[0][0] := StrToDNStr('王五');
  dt.Rows[0]['column2'] := TDNDateTime.DNClass.Now;

  Writeln('name: ', dt.Rows[0][0].ToString);
  Writeln('time: ', dt.Rows[0]['column2'].ToString);

  // ----------------------  select   ----------------------
  drs := dt.Select('column2 is null');
  Writeln('length: ', Length(drs));

  drs := dt.Select('column1 = ''王五''');
  Writeln('length: ', Length(drs));

  drs := dt.Select('column1 like ''%五''');
  Writeln('length: ', Length(drs));

  drs := dt.Select('column1 like ''王%''', 'column1 DESC');
  Writeln('length: ', Length(drs));



  // ----------------------  delete  ----------------------
// method 1:
//  dt.Rows.Remove(dt.Rows[0]);
//  dt.Rows.RemoveAt(0);
// method 2:
//  dt.Rows[0].Delete;
//  dt.AcceptChanges;
// method 3:
//  for i := dt.Rows.Count - 1 downto 0 do
//    dt.Rows.RemoveAt(i);

  // ----------------------  copy  ----------------------
  //dtNew := TDNDataTable.Create;
  //dtNew := dt.Clone;

  dtNew := TDNDataTable.Create;
  dtNew := dt.Copy;
  dtNew.Rows.Clear;
  dtNew.ImportRow(dt.Rows[0]);

  Writeln('dtNew.Count: ', dtNew.Rows.Count);

  // ----------------------  sort  ----------------------
  dt := TDNDataTable.Create;
  dt.Columns.Add('ID', TDNInt32.typeid);
  dt.Columns.Add('Name', TDNString.typeid);
  dt.Columns.Add('Age', TDNInt32.typeid);
  dt.Rows.Add(ToDNObjects([1, '三张', 20]));
  dt.Rows.Add(ToDNObjects([2, '李四', 25]));
  dt.Rows.Add(ToDNObjects([3, '王五', 30]));

  dv := dt.DefaultView;
  dv.Sort := 'ID DESC';
  dv.ToTable;
  PintTable(dt);
end;


end.
