object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 423
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object edtKey: TLabeledEdit
    Left = 8
    Top = 128
    Width = 129
    Height = 23
    EditLabel.Width = 19
    EditLabel.Height = 15
    EditLabel.Caption = 'Key'
    TabOrder = 0
    Text = ''
  end
  object edtValue: TLabeledEdit
    Left = 152
    Top = 128
    Width = 257
    Height = 23
    EditLabel.Width = 28
    EditLabel.Height = 15
    EditLabel.Caption = 'Value'
    TabOrder = 1
    Text = ''
  end
  object Button1: TButton
    Left = 415
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object edtHost: TLabeledEdit
    Left = 8
    Top = 24
    Width = 169
    Height = 23
    EditLabel.Width = 25
    EditLabel.Height = 15
    EditLabel.Caption = 'Host'
    TabOrder = 3
    Text = 'localhost'
  end
  object edtPorta: TLabeledEdit
    Left = 8
    Top = 64
    Width = 169
    Height = 23
    EditLabel.Width = 28
    EditLabel.Height = 15
    EditLabel.Caption = 'Porta'
    TabOrder = 4
    Text = ''
  end
  object Memo1: TMemo
    Left = 3
    Top = 158
    Width = 584
    Height = 251
    TabOrder = 5
  end
  object Button2: TButton
    Left = 512
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = Button2Click
  end
end
