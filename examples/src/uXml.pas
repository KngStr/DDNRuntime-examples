unit uXml;

interface

uses
  System.SysUtils,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Xml
  ;

  procedure TestProc;
implementation

procedure Xml_Read;
var
  LDoc: DNXmlDocument;
  LSettings: DNXmlReaderSettings;
  LReader: DNXmlReader;
  LNode: DNXmlNode;
  LNodes: DNXmlNodeList;
  I: Integer;
begin
  Writeln('---------------Xml_Read---------------');
  LDoc := TDNXmlDocument.Create;
  LSettings := TDNXmlReaderSettings.Create;
  LSettings.IgnoreComments := True;

  LReader := TDNXmlReader.DNClass.Create(ExtractFilePath(ParamStr(0)) + '../TestFiles/System.Xml.XmlSerializer.xml', LSettings);
  LDoc.Load(LReader);

  LNode := LDoc.SelectSingleNode('/doc/assembly/name');
  if LNode <> nil then
    Writeln(LNode.InnerText);

  LNodes := LDoc.SelectNodes('/doc/members/member/summary');
  if LNodes <> nil then
  begin
    for I := 0 to LNodes.Count - 1 do
    begin
      LNode := LNodes[I];
      Writeln(LNode.InnerText);
    end;
  end;
end;

procedure Xml_Write;
var
  LWriter: DNXmlTextWriter;
begin
  Writeln('---------------Xml_Write---------------');
  LWriter := TDNXmlTextWriter.DNClass.init(ExtractFilePath(ParamStr(0)) + 'xml_write.xml', nil);
  LWriter.Formatting := DNFormatting.Indented;
  LWriter.WriteStartDocument(False);
  LWriter.WriteStartElement('Root');

  LWriter.WriteComment('Commnet');
  LWriter.WriteStartElement('SubNode');

  LWriter.WriteAttributeString('attr1', 'attr value 1');
  LWriter.WriteAttributeString('attr2', 'attr value 2');

  LWriter.WriteElementString('node2', 'node2 value');
  LWriter.WriteElementString('node3', 'node3 value');
  LWriter.WriteElementString('node4', 'node4 value');

  LWriter.WriteEndElement();
  LWriter.WriteEndElement();

  LWriter.Flush;
  LWriter.Close;
end;

procedure TestProc;
begin
  Xml_Read;
  Xml_Write;
end;

end.
