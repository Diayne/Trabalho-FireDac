object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 345
  Width = 437
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\Aulas SIS 04\LPL2\Aula 09 FireDAC\BDFIREDAC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 104
  end
  object QuyProprietario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT PROPRIETARIO.PRP_CODIGO,'
      'PROPRIETARIO.PRP_NOME,'
      'PROPRIETARIO.PRP_ENDERECO'
      'FROM PROPRIETARIO')
    Left = 32
    Top = 96
  end
  object QuyVeiculo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT VEICULO.VEI_CODIGO,'
      'VEICULO.VEI_PLACA,'
      'VEICULO.VEI_MARCA,'
      'VEICULO.VEI_MODELO,'
      'VEICULO.VEI_ANO,'
      'VEICULO.PRP_CODIGO'
      'FROM VEICULO')
    Left = 384
    Top = 24
    object QuyVeiculoVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyVeiculoVEI_PLACA: TStringField
      DisplayLabel = 'PLACA'
      FieldName = 'VEI_PLACA'
      Origin = 'VEI_PLACA'
      Required = True
      Size = 10
    end
    object QuyVeiculoVEI_MARCA: TStringField
      DisplayLabel = 'MARCA'
      FieldName = 'VEI_MARCA'
      Origin = 'VEI_MARCA'
      Required = True
      Size = 30
    end
    object QuyVeiculoVEI_MODELO: TStringField
      DisplayLabel = 'MODELO'
      FieldName = 'VEI_MODELO'
      Origin = 'VEI_MODELO'
      Required = True
      Size = 30
    end
    object QuyVeiculoVEI_ANO: TIntegerField
      DisplayLabel = 'ANO'
      FieldName = 'VEI_ANO'
      Origin = 'VEI_ANO'
      Required = True
    end
    object QuyVeiculoPRP_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      Required = True
    end
  end
  object QuyMulta: TFDQuery
    AfterInsert = QuyMultaAfterInsert
    MasterSource = DsMultaVeiculo
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MULTAS.VEI_CODIGO,'
      'MULTAS.MLT_ITEM,'
      'MULTAS.MLT_DATA,'
      'MULTAS.MLT_HORA,'
      'MULTAS.MLT_VALOR,'
      'MULTAS.MLT_LOCAL'
      'FROM MULTAS'
      'WHERE'
      '(MULTAS.VEI_CODIGO = :VEI_CODIGO)')
    Left = 392
    Top = 120
    ParamData = <
      item
        Name = 'VEI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QuyMultaVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyMultaMLT_ITEM: TIntegerField
      DisplayLabel = 'ITEM'
      FieldName = 'MLT_ITEM'
      Origin = 'MLT_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuyMultaMLT_DATA: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'MLT_DATA'
      Origin = 'MLT_DATA'
      Required = True
    end
    object QuyMultaMLT_HORA: TTimeField
      DisplayLabel = 'HORA'
      FieldName = 'MLT_HORA'
      Origin = 'MLT_HORA'
      Required = True
    end
    object QuyMultaMLT_VALOR: TBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'MLT_VALOR'
      Origin = 'MLT_VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QuyMultaMLT_LOCAL: TStringField
      DisplayLabel = 'LOCAL'
      FieldName = 'MLT_LOCAL'
      Origin = 'MLT_LOCAL'
      Size = 100
    end
  end
  object DsMultaVeiculo: TDataSource
    DataSet = QuyVeiculo
    Left = 280
    Top = 72
  end
end
