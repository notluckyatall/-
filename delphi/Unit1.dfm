object Form1: TForm1
  Left = 270
  Top = 204
  Width = 986
  Height = 555
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 865
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 16
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 256
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 256
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 256
    Top = 344
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 432
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 472
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 6
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 672
    Top = 216
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\notlu\OneD' +
      'rive\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\'#1073#1076' 8\'#1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' Microsoft Office Access.mdb;Pe' +
      'rsist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 776
    Top = 224
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 848
    Top = 200
  end
end
