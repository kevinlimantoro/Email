object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 449
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 15
    Height = 13
    Caption = 'TO'
  end
  object Label2: TLabel
    Left = 56
    Top = 48
    Width = 23
    Height = 13
    Caption = 'From'
  end
  object Label3: TLabel
    Left = 56
    Top = 72
    Width = 36
    Height = 13
    Caption = 'Subject'
  end
  object Memo1: TMemo
    Left = 48
    Top = 96
    Width = 361
    Height = 265
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 416
    Top = 24
    Width = 233
    Height = 337
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 297
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 112
    Top = 48
    Width = 297
    Height = 21
    TabOrder = 3
    Text = 'm26409022@johbn.petra.ac.id'
  end
  object Edit3: TEdit
    Left = 112
    Top = 72
    Width = 297
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 48
    Top = 368
    Width = 89
    Height = 33
    Caption = 'Send'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = ClientSocket1Read
    Left = 16
    Top = 8
  end
end
