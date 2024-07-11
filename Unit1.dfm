object Form1: TForm1
  Left = 216
  Top = 188
  Width = 1044
  Height = 540
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 144
    Top = 32
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object DESKRIPSI: TLabel
    Left = 120
    Top = 72
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object edt1: TEdit
    Left = 192
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 192
    Top = 64
    Width = 233
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object btn1: TButton
    Left = 192
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 288
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 384
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Ubah'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 480
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 576
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 192
    Top = 152
    Width = 473
    Height = 161
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskripsi'
        Visible = True
      end>
  end
  object edt3: TEdit
    Left = 424
    Top = 336
    Width = 241
    Height = 21
    TabOrder = 8
    Text = 'edt3'
  end
  object btn6: TButton
    Left = 328
    Top = 328
    Width = 89
    Height = 33
    Caption = 'Cari'
    TabOrder = 9
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\BACKUP\libmysql.dll'
    Left = 288
    Top = 328
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 240
    Top = 328
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 192
    Top = 328
  end
end
