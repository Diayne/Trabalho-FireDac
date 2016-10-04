object FrmProprietarioo: TFrmProprietarioo
  Left = 0
  Top = 0
  Caption = 'Grid'
  ClientHeight = 397
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 53
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 8
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 8
    Top = 165
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object EDTCodigo: TDBEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DSProprietario
    TabOrder = 0
  end
  object EDTNome: TDBEdit
    Left = 8
    Top = 126
    Width = 433
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DSProprietario
    TabOrder = 1
  end
  object EDTEndereco: TDBEdit
    Left = 8
    Top = 184
    Width = 433
    Height = 21
    DataField = 'PRP_ENDERECO'
    DataSource = DSProprietario
    TabOrder = 2
  end
  object GridProprietario: TDBGrid
    Left = 8
    Top = 248
    Width = 447
    Height = 120
    DataSource = DSProprietario
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 460
    Height = 47
    DataSource = DSProprietario
    TabOrder = 4
  end
  object DSProprietario: TDataSource
    DataSet = DM.QuyProprietario
    Left = 392
    Top = 56
  end
end
