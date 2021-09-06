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
    speech.Rate := 1;       // 设置语速
    speech.Volume := 100;   // 设置音量
    speech.SelectVoice('Microsoft Huihui Desktop'); // 设置播音员（中文）
    speech.add_SpeakCompleted(TEvent.doSpeakCompleted);
    speech.add_SpeakStarted(TEvent.doSpeakStarted);
    speech.add_SpeakProgress(TEvent.doSpeakProgress);
    speech.SpeakAsync('唐 崔涂《孤雁二首·其二》' +  sLineBreak + '几行归塞尽，念尔独何之。暮雨相呼失，寒塘欲下迟。渚云低暗度，关月冷相随。未必逢矰缴，孤飞自可疑。');

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
