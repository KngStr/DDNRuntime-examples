program ProSpeech;

{$R *.res}

uses
  System.SysUtils,
  Winapi.ActiveX,
  DDN.Runtime,
  DDN.mscorlib,
  DDN.System.Speech,
  uReg in '..\uReg.pas';

type
  TEvent = class
  public
    class procedure doSpeakStarted(sender: DNObject; e: DNSpeakStartedEventArgs);
    class procedure doSpeakCompleted(sender: DNObject; e: DNSpeakCompletedEventArgs);
    class procedure doSpeakProgress(sender: DNObject; e: DNSpeakProgressEventArgs);
  end;

{ TEvent }

class procedure TEvent.doSpeakCompleted(
  sender: DNObject; e: DNSpeakCompletedEventArgs);
begin
  Writeln('SpeakCompleted. ');
end;

class procedure TEvent.doSpeakProgress(sender: DNObject;
  e: DNSpeakProgressEventArgs);
begin
  Writeln('doSpeakProgress: Position: ', e.CharacterPosition, ',text: ', e.Text);
end;

class procedure TEvent.doSpeakStarted(sender: DNObject;
  e: DNSpeakStartedEventArgs);
begin
  Writeln('doSpeakStarted. ');
end;

procedure TestProc;
var
  speech: DNSpeechSynthesizer;
begin
  try
    speech := TDNSpeechSynthesizer.Create;
    speech.Rate := 1;       // ��������
    speech.Volume := 100;   // ��������
    speech.SelectVoice('Microsoft Huihui Desktop'); // ���ò���Ա�����ģ�
    speech.add_SpeakCompleted(TEvent.doSpeakCompleted);
    speech.add_SpeakStarted(TEvent.doSpeakStarted);
    speech.add_SpeakProgress(TEvent.doSpeakProgress);
    speech.SpeakAsync('�� ��Ϳ��������ס������' +  sLineBreak + '���й��������������֮��ĺ�����ʧ���������³١���ƵͰ��ȣ����������档δ�ط�D�ɣ��·��Կ��ɡ�');

  except
    on E: Exception do
      Writeln('exception: ', e.Message);

  end;
end;




begin
  ReportMemoryLeaksOnShutdown := True;
  try
    SetShowDetailedExceptionMessage(True);
    TestProc;
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
  Readln;
end.
