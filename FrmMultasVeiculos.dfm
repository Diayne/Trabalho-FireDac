object FrmMultaVeiculos: TFrmMultaVeiculos
  Left = 0
  Top = 0
  Caption = 'Multas e Veiculos'
  ClientHeight = 448
  ClientWidth = 788
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
    Top = 52
    Width = 37
    Height = 13
    Caption = 'C'#243'digo;'
  end
  object Label2: TLabel
    Left = 8
    Top = 98
    Width = 29
    Height = 13
    Caption = 'Placa:'
  end
  object Label3: TLabel
    Left = 184
    Top = 52
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label4: TLabel
    Left = 184
    Top = 98
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label5: TLabel
    Left = 368
    Top = 52
    Width = 23
    Height = 13
    Caption = 'Ano:'
  end
  object Label6: TLabel
    Left = 368
    Top = 98
    Width = 56
    Height = 13
    Caption = 'Proprietario'
  end
  object IWDBLookupComboBox1: TIWDBLookupComboBox
    Left = 368
    Top = 117
    Width = 153
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    UseSize = True
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = -1
    AutoEditable = False
    DataField = 'PRP_NOME'
    DataSource = DSproprietario
    FriendlyName = 'IWDBLookupComboBox1'
    DisableWhenEmpty = True
  end
  object Label8: TLabel
    Left = 8
    Top = 268
    Width = 26
    Height = 13
    Caption = 'Item:'
  end
  object Label9: TLabel
    Left = 184
    Top = 268
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label10: TLabel
    Left = 368
    Top = 268
    Width = 27
    Height = 13
    Caption = 'Hora:'
  end
  object Label11: TLabel
    Left = 560
    Top = 268
    Width = 40
    Height = 13
    Caption = 'R$ valor'
  end
  object Label12: TLabel
    Left = 8
    Top = 316
    Width = 28
    Height = 13
    Caption = 'Local:'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 5
    Width = 690
    Height = 41
    DataSource = DSveiculo
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 71
    Width = 145
    Height = 21
    DataField = 'VEI_CODIGO'
    DataSource = DSveiculo
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 617
    Height = 65
    DataSource = DSveiculo
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 117
    Width = 145
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DSveiculo
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 71
    Width = 153
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DSveiculo
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 117
    Width = 153
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DSveiculo
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 368
    Top = 71
    Width = 153
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DSveiculo
    TabOrder = 6
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 215
    Width = 700
    Height = 41
    DataSource = DSMultas
    TabOrder = 7
  end
  object EDTitem: TDBEdit
    Left = 8
    Top = 287
    Width = 145
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DSMultas
    TabOrder = 8
  end
  object EDTdata: TDBEdit
    Left = 184
    Top = 287
    Width = 153
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DSMultas
    TabOrder = 9
  end
  object EDThora: TDBEdit
    Left = 368
    Top = 287
    Width = 153
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DSMultas
    TabOrder = 10
  end
  object EDTvalor: TDBEdit
    Left = 560
    Top = 287
    Width = 148
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DSMultas
    TabOrder = 11
  end
  object EDTlocal: TDBEdit
    Left = 8
    Top = 335
    Width = 121
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DSMultas
    TabOrder = 12
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 362
    Width = 617
    Height = 78
    DataSource = DSMultas
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Visible = True
      end>
  end
  object DSveiculo: TDataSource
    DataSet = DM.QuyVeiculo
    Left = 728
    Top = 64
  end
  object DSMultas: TDataSource
    DataSet = DM.QuyMulta
    Left = 728
    Top = 128
  end
  object DSproprietario: TDataSource
    DataSet = DM.QuyProprietario
    Left = 728
    Top = 8
  end
end
