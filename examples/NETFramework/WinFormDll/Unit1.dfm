object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 229
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 24
    Top = 40
    Width = 150
    Height = 25
    Caption = 'Form1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 88
    Width = 150
    Height = 25
    Caption = 'Form2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 136
    Width = 150
    Height = 25
    Caption = 'Form3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 263
    Top = 40
    Width = 265
    Height = 25
    Caption = '.net function: Class1.ShowForm'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 263
    Top = 74
    Width = 265
    Height = 25
    Caption = 'Assembly.CreateInstance'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 263
    Top = 105
    Width = 265
    Height = 25
    Caption = 'Activator.CreateInstance'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 263
    Top = 136
    Width = 265
    Height = 25
    Caption = 'ConstructorInfo.Invoke'
    TabOrder = 6
    OnClick = Button7Click
  end
end
