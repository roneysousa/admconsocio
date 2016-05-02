object dmAdmDados: TdmAdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 259
  Top = 121
  Height = 653
  Width = 814
  object sqlConn: TSQLConnection
    ConnectionName = 'consocio'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=D:\Sistemas\AdmConsocio\Firebird\Dados\CONSOCIO.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'C:\Infog2\fbclient.dll'
    BeforeConnect = sqlConnBeforeConnect
    Left = 48
    Top = 16
  end
  object dstBancos: TSQLDataSet
    CommandText = 'select * from bancos Where (BAN_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 72
    object dstBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstBancosBAN_NRBANC: TIntegerField
      FieldName = 'BAN_NRBANC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstBancosBAN_DVNRBA: TStringField
      FieldName = 'BAN_DVNRBA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstBancosBAN_NRAGEN: TIntegerField
      FieldName = 'BAN_NRAGEN'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_DVAGEN: TIntegerField
      FieldName = 'BAN_DVAGEN'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_NRCONT: TStringField
      FieldName = 'BAN_NRCONT'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object dstBancosBAN_DVCONT: TIntegerField
      FieldName = 'BAN_DVCONT'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_CARTEIRA: TStringField
      FieldName = 'BAN_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstBancosBAN_VARIACAO: TStringField
      FieldName = 'BAN_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstBancosBAN_CONVENIO: TIntegerField
      FieldName = 'BAN_CONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_FORMA_CALC: TIntegerField
      FieldName = 'BAN_FORMA_CALC'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_ESPECIEMOEDA: TStringField
      FieldName = 'BAN_ESPECIEMOEDA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstBancosBAN_MARGE_LOGOMARCA: TIntegerField
      FieldName = 'BAN_MARGE_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_ARQLOGOMARCA: TStringField
      FieldName = 'BAN_ARQLOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstBancosBAN_LOGOMARCA: TBlobField
      FieldName = 'BAN_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_DAtAFATORVENC: TDateField
      FieldName = 'BAN_DAtAFATORVENC'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_MASCRETORNO: TStringField
      FieldName = 'BAN_MASCRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object dstBancosBAN_TARIFABANCO: TFMTBCDField
      FieldName = 'BAN_TARIFABANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 17
      Size = 2
    end
    object dstBancosBAN_FLATIVO: TStringField
      FieldName = 'BAN_FLATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstBancosBAN_INICIO_NOSSO_NUMERO: TStringField
      FieldName = 'BAN_INICIO_NOSSO_NUMERO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dstClientes: TSQLDataSet
    CommandText = 'select * from clientes Where (CLI_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 120
    object dstClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstClientesCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object dstClientesCLI_ESTADO_CIVIL: TStringField
      FieldName = 'CLI_ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstClientesCLI_NATURAL: TStringField
      FieldName = 'CLI_NATURAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_NACIONALIDADE: TStringField
      FieldName = 'CLI_NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_ISNCEST: TStringField
      FieldName = 'CLI_ISNCEST'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClientesCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientesCLI_NRIDEN: TStringField
      FieldName = 'CLI_NRIDEN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstClientesCLI_DTNASCIMENTO: TDateField
      FieldName = 'CLI_DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClientesCLI_NRCELULAR: TStringField
      FieldName = 'CLI_NRCELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstClientesCLI_NMEMPRESA: TStringField
      FieldName = 'CLI_NMEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstClientesCLI_CARGO: TStringField
      FieldName = 'CLI_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_ENDEMPRESA: TStringField
      FieldName = 'CLI_ENDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstClientesCLI_BAIEMPRESA: TStringField
      FieldName = 'CLI_BAIEMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_UFEMPRESA: TStringField
      FieldName = 'CLI_UFEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstClientesCLI_CEPEMPRESA: TStringField
      FieldName = 'CLI_CEPEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object dstClientesCLI_FONEEMPRESA: TStringField
      FieldName = 'CLI_FONEEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClientesCLI_NOMEP: TStringField
      FieldName = 'CLI_NOMEP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstClientesCLI_GRAUPAR: TStringField
      FieldName = 'CLI_GRAUPAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstClientesCLI_FONEPAR: TStringField
      FieldName = 'CLI_FONEPAR'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstClientesCLI_PROFISSAO: TStringField
      FieldName = 'CLI_PROFISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstClientesCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object dstClientesCLI_NRPLACA: TStringField
      FieldName = 'CLI_NRPLACA'
      ProviderFlags = [pfInUpdate]
      EditMask = 'XXX-9999;1;_'
      Size = 8
    end
  end
  object dstGrupos: TSQLDataSet
    CommandText = 'select * from grupos Where (GRU_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 168
    object dstGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstGruposGRU_NRMESES: TIntegerField
      FieldName = 'GRU_NRMESES'
      ProviderFlags = [pfInUpdate]
    end
    object dstGruposGRU_PARTICIP: TIntegerField
      FieldName = 'GRU_PARTICIP'
      ProviderFlags = [pfInUpdate]
    end
    object dstGruposGRU_DTINICIO: TDateField
      FieldName = 'GRU_DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstGruposGRU_INICIOU: TStringField
      FieldName = 'GRU_INICIOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_DIAASS: TIntegerField
      FieldName = 'GRU_DIAASS'
      ProviderFlags = [pfInUpdate]
    end
    object dstGruposGRU_MES1ASS: TStringField
      FieldName = 'GRU_MES1ASS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
    object dstGruposGRU_RESASSEMBLEIA: TMemoField
      FieldName = 'GRU_RESASSEMBLEIA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstGruposGRU_MULTCONT: TStringField
      FieldName = 'GRU_MULTCONT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_CORRIGIDO: TStringField
      FieldName = 'GRU_CORRIGIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_TARIFABANCO: TStringField
      FieldName = 'GRU_TARIFABANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_LIMITADO: TStringField
      FieldName = 'GRU_LIMITADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_LIMITEMININO: TFMTBCDField
      FieldName = 'GRU_LIMITEMININO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstGruposGRU_LIMITEMAXIMO: TFMTBCDField
      FieldName = 'GRU_LIMITEMAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstGruposGRU_FIXO: TStringField
      FieldName = 'GRU_FIXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstGruposGRU_LANCE_MINIMO: TFMTBCDField
      FieldName = 'GRU_LANCE_MINIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dstModelos: TSQLDataSet
    CommandText = 'select * from modelos Where (MOD_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 32
    Top = 216
    object dstModelosMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstModelosMOD_DESCRICAO: TStringField
      FieldName = 'MOD_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspBancos: TDataSetProvider
    DataSet = dstBancos
    Options = [poAllowCommandText]
    OnGetTableName = dspBancosGetTableName
    Left = 96
    Top = 72
  end
  object cdsbancos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspBancos'
    Left = 152
    Top = 72
    object cdsbancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object cdsbancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbancosBAN_NRBANC: TIntegerField
      FieldName = 'BAN_NRBANC'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '000'
    end
    object cdsbancosBAN_DVNRBA: TStringField
      FieldName = 'BAN_DVNRBA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsbancosBAN_NRAGEN: TIntegerField
      FieldName = 'BAN_NRAGEN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_DVAGEN: TIntegerField
      FieldName = 'BAN_DVAGEN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_NRCONT: TStringField
      FieldName = 'BAN_NRCONT'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsbancosBAN_DVCONT: TIntegerField
      FieldName = 'BAN_DVCONT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_CARTEIRA: TStringField
      FieldName = 'BAN_CARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsbancosBAN_VARIACAO: TStringField
      FieldName = 'BAN_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsbancosBAN_CONVENIO: TIntegerField
      FieldName = 'BAN_CONVENIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_FORMA_CALC: TIntegerField
      FieldName = 'BAN_FORMA_CALC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_ESPECIEMOEDA: TStringField
      FieldName = 'BAN_ESPECIEMOEDA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsbancosBAN_MARGE_LOGOMARCA: TIntegerField
      FieldName = 'BAN_MARGE_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_ARQLOGOMARCA: TStringField
      FieldName = 'BAN_ARQLOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsbancosBAN_LOGOMARCA: TBlobField
      FieldName = 'BAN_LOGOMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_DAtAFATORVENC: TDateField
      FieldName = 'BAN_DAtAFATORVENC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_MASCRETORNO: TStringField
      FieldName = 'BAN_MASCRETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbancosBAN_TARIFABANCO: TFMTBCDField
      FieldName = 'BAN_TARIFABANCO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 17
      Size = 2
    end
    object cdsbancosBAN_FLATIVO: TStringField
      FieldName = 'BAN_FLATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsbancosBAN_INICIO_NOSSO_NUMERO: TStringField
      FieldName = 'BAN_INICIO_NOSSO_NUMERO'
      FixedChar = True
      Size = 5
    end
  end
  object dstConfig: TSQLDataSet
    CommandText = 'select * from config'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 104
    Top = 16
  end
  object dspConfig: TDataSetProvider
    DataSet = dstConfig
    Options = [poAllowCommandText]
    Left = 168
    Top = 16
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 232
    Top = 16
    object cdsConfigCFG_NOMEEMPRESA: TStringField
      FieldName = 'CFG_NOMEEMPRESA'
      Size = 50
    end
    object cdsConfigCFG_CGC: TStringField
      FieldName = 'CFG_CGC'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cdsConfigCFG_ENDERECO: TStringField
      FieldName = 'CFG_ENDERECO'
      Size = 50
    end
    object cdsConfigCFG_BAIRRO: TStringField
      FieldName = 'CFG_BAIRRO'
    end
    object cdsConfigCFG_CIDADE: TStringField
      FieldName = 'CFG_CIDADE'
    end
    object cdsConfigCFG_UF: TStringField
      FieldName = 'CFG_UF'
      FixedChar = True
      Size = 2
    end
    object cdsConfigCFG_NRFONE1: TStringField
      Alignment = taRightJustify
      FieldName = 'CFG_NRFONE1'
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsConfigCFG_NRFONE2: TStringField
      Alignment = taRightJustify
      FieldName = 'CFG_NRFONE2'
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsConfigCFG_BANCO: TIntegerField
      FieldName = 'CFG_BANCO'
    end
    object cdsConfigCFG_CLIENTE: TIntegerField
      FieldName = 'CFG_CLIENTE'
    end
    object cdsConfigCFG_MODELO: TIntegerField
      FieldName = 'CFG_MODELO'
    end
    object cdsConfigCFG_GRUPO: TIntegerField
      FieldName = 'CFG_GRUPO'
    end
    object cdsConfigCFG_NATUREZA: TIntegerField
      FieldName = 'CFG_NATUREZA'
    end
    object cdsConfigCFG_CREDITO: TIntegerField
      FieldName = 'CFG_CREDITO'
    end
    object cdsConfigCFG_SEQUENCIA: TIntegerField
      FieldName = 'CFG_SEQUENCIA'
    end
    object cdsConfigCFG_CAIXA: TIntegerField
      FieldName = 'CFG_CAIXA'
    end
    object cdsConfigCFG_USUARIO: TIntegerField
      FieldName = 'CFG_USUARIO'
    end
    object cdsConfigCFG_VENDA: TIntegerField
      FieldName = 'CFG_VENDA'
    end
    object cdsConfigCFG_DATATUAL: TDateField
      FieldName = 'CFG_DATATUAL'
    end
    object cdsConfigCFG_DIAVENC: TIntegerField
      FieldName = 'CFG_DIAVENC'
      DisplayFormat = '00'
    end
    object cdsConfigCFG_NRRECIBO: TIntegerField
      FieldName = 'CFG_NRRECIBO'
    end
    object cdsConfigCFG_PERCENTUAL_ADESAO: TFMTBCDField
      FieldName = 'CFG_PERCENTUAL_ADESAO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_LOGO: TMemoField
      FieldName = 'CFG_LOGO'
      BlobType = ftMemo
    end
    object cdsConfigCFG_LOCAL_PAGAMENTO: TStringField
      FieldName = 'CFG_LOCAL_PAGAMENTO'
      Size = 60
    end
    object cdsConfigCFG_MULTA: TFMTBCDField
      FieldName = 'CFG_MULTA'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_JUROS: TFMTBCDField
      FieldName = 'CFG_JUROS'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_NRCOLUNASLIP: TFMTBCDField
      FieldName = 'CFG_NRCOLUNASLIP'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_PERC_ACERTO: TFMTBCDField
      FieldName = 'CFG_PERC_ACERTO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_TIMETAB: TIntegerField
      FieldName = 'CFG_TIMETAB'
    end
    object cdsConfigCFG_MARGEMSUPBOLVERT: TFMTBCDField
      FieldName = 'CFG_MARGEMSUPBOLVERT'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_MARGEMESQBOLVERT: TFMTBCDField
      FieldName = 'CFG_MARGEMESQBOLVERT'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_CEP_EMPRESA: TStringField
      FieldName = 'CFG_CEP_EMPRESA'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsConfigCFG_MENSAGEM_BOLETO: TMemoField
      FieldName = 'CFG_MENSAGEM_BOLETO'
      BlobType = ftMemo
    end
    object cdsConfigCFG_MENS_CUPOM: TStringField
      FieldName = 'CFG_MENS_CUPOM'
      Size = 52
    end
    object cdsConfigCFG_CARTA: TIntegerField
      FieldName = 'CFG_CARTA'
    end
    object cdsConfigCFG_MODALIDADE: TIntegerField
      FieldName = 'CFG_MODALIDADE'
    end
    object cdsConfigCFG_MOV_CAIXA_SEQ: TIntegerField
      FieldName = 'CFG_MOV_CAIXA_SEQ'
    end
    object cdsConfigCFG_REGISTRO: TIntegerField
      FieldName = 'CFG_REGISTRO'
    end
    object cdsConfigCFG_NMDISP: TStringField
      FieldName = 'CFG_NMDISP'
    end
    object cdsConfigCFG_PERC_MIN_LANCE: TBCDField
      FieldName = 'CFG_PERC_MIN_LANCE'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_GRUPO_USUARIO: TIntegerField
      FieldName = 'CFG_GRUPO_USUARIO'
    end
    object cdsConfigCFG_LINHA_INICIAL_CONTRATO: TBCDField
      FieldName = 'CFG_LINHA_INICIAL_CONTRATO'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_LIN_INI_ALI_FRENTE: TBCDField
      FieldName = 'CFG_LIN_INI_ALI_FRENTE'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_LIN_INICIAL_VERSO: TBCDField
      FieldName = 'CFG_LIN_INICIAL_VERSO'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_LIN_INICIAL_VEICULO: TBCDField
      FieldName = 'CFG_LIN_INICIAL_VEICULO'
      Precision = 9
      Size = 2
    end
    object cdsConfigCFG_QTLINHA_TOP: TIntegerField
      FieldName = 'CFG_QTLINHA_TOP'
    end
    object cdsConfigCFG_QTLINHA_BOTTON: TIntegerField
      FieldName = 'CFG_QTLINHA_BOTTON'
    end
    object cdsConfigCFG_DTASSEMBLEIAS: TMemoField
      FieldName = 'CFG_DTASSEMBLEIAS'
      BlobType = ftMemo
    end
    object cdsConfigCFG_TOP_ETIQUETA: TIntegerField
      FieldName = 'CFG_TOP_ETIQUETA'
    end
    object cdsConfigCFG_TIPO_ETIQUETA: TIntegerField
      FieldName = 'CFG_TIPO_ETIQUETA'
    end
    object cdsConfigCFG_LINHA_CUPOM_ES: TIntegerField
      FieldName = 'CFG_LINHA_CUPOM_ES'
    end
    object cdsConfigCFG_TAMANHO_FONTE: TIntegerField
      FieldName = 'CFG_TAMANHO_FONTE'
    end
    object cdsConfigCFG_MENS_TABELA: TStringField
      FieldName = 'CFG_MENS_TABELA'
      Size = 100
    end
    object cdsConfigCFG_TOP_CARTA: TIntegerField
      FieldName = 'CFG_TOP_CARTA'
    end
    object cdsConfigCFG_TOP_CABECALHO: TIntegerField
      FieldName = 'CFG_TOP_CABECALHO'
    end
    object cdsConfigCFG_BOTTOR_CARTA: TIntegerField
      FieldName = 'CFG_BOTTOR_CARTA'
    end
    object cdsConfigCFG_FONTE_TABELA: TIntegerField
      FieldName = 'CFG_FONTE_TABELA'
    end
    object cdsConfigCFG_FONTE_RODAPE: TIntegerField
      FieldName = 'CFG_FONTE_RODAPE'
    end
    object cdsConfigCFG_QTESPACO_CONTRATO1: TFMTBCDField
      FieldName = 'CFG_QTESPACO_CONTRATO1'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_QTESPACO_CONTRATO2: TFMTBCDField
      FieldName = 'CFG_QTESPACO_CONTRATO2'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_CONTALIE_PXLINHA: TIntegerField
      FieldName = 'CFG_CONTALIE_PXLINHA'
    end
    object cdsConfigCFG_CONTALIE_PXLINHA_VERSO: TFMTBCDField
      FieldName = 'CFG_CONTALIE_PXLINHA_VERSO'
      Precision = 18
      Size = 2
    end
    object cdsConfigCFG_FORNECEDOR: TIntegerField
      FieldName = 'CFG_FORNECEDOR'
    end
    object cdsConfigCFG_SEQ_CONTAPAGAR: TIntegerField
      FieldName = 'CFG_SEQ_CONTAPAGAR'
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = dstClientes
    Options = [poAllowCommandText]
    OnGetTableName = dspClientesGetTableName
    Left = 104
    Top = 120
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspClientes'
    Left = 168
    Top = 120
    object cdsClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsClientesCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object cdsClientesCLI_ESTADO_CIVIL: TStringField
      FieldName = 'CLI_ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsClientesCLI_NATURAL: TStringField
      FieldName = 'CLI_NATURAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_NACIONALIDADE: TStringField
      FieldName = 'CLI_NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_ISNCEST: TStringField
      FieldName = 'CLI_ISNCEST'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsClientesCLI_CGC: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cdsClientesCLI_CPF: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsClientesCLI_NRIDEN: TStringField
      FieldName = 'CLI_NRIDEN'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999999999;0;_'
      Size = 11
    end
    object cdsClientesCLI_DTNASCIMENTO: TDateField
      FieldName = 'CLI_DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_NRFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NRFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsClientesCLI_NRCELULAR: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NRCELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsClientesCLI_NMEMPRESA: TStringField
      FieldName = 'CLI_NMEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClientesCLI_CARGO: TStringField
      FieldName = 'CLI_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_ENDEMPRESA: TStringField
      FieldName = 'CLI_ENDEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClientesCLI_BAIEMPRESA: TStringField
      FieldName = 'CLI_BAIEMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_UFEMPRESA: TStringField
      FieldName = 'CLI_UFEMPRESA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsClientesCLI_CEPEMPRESA: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CEPEMPRESA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsClientesCLI_FONEEMPRESA: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_FONEEMPRESA'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsClientesCLI_NOMEP: TStringField
      FieldName = 'CLI_NOMEP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClientesCLI_GRAUPAR: TStringField
      FieldName = 'CLI_GRAUPAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsClientesCLI_FONEPAR: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_FONEPAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsClientesCLI_PROFISSAO: TStringField
      FieldName = 'CLI_PROFISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientesCLI_NUMCEP: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NUMCEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 8
    end
    object cdsClientesCLI_NRPLACA: TStringField
      FieldName = 'CLI_NRPLACA'
      ProviderFlags = [pfInUpdate]
      EditMask = 'AAA-####;1;_'
      Size = 8
    end
  end
  object dspGrupos: TDataSetProvider
    DataSet = dstGrupos
    Options = [poAllowCommandText]
    OnGetTableName = dspGruposGetTableName
    Left = 96
    Top = 168
  end
  object cdsGrupos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrupos'
    Left = 160
    Top = 168
    object cdsGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
    object cdsGruposGRU_NRMESES: TIntegerField
      FieldName = 'GRU_NRMESES'
    end
    object cdsGruposGRU_PARTICIP: TIntegerField
      FieldName = 'GRU_PARTICIP'
      DisplayFormat = '000'
    end
    object cdsGruposGRU_DTINICIO: TDateField
      FieldName = 'GRU_DTINICIO'
    end
    object cdsGruposGRU_INICIOU: TStringField
      FieldName = 'GRU_INICIOU'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_DIAASS: TIntegerField
      FieldName = 'GRU_DIAASS'
    end
    object cdsGruposGRU_MES1ASS: TStringField
      Alignment = taRightJustify
      FieldName = 'GRU_MES1ASS'
      EditMask = '99/9999;0;_'
      FixedChar = True
      Size = 6
    end
    object cdsGruposGRU_RESASSEMBLEIA: TMemoField
      FieldName = 'GRU_RESASSEMBLEIA'
      BlobType = ftMemo
    end
    object cdsGruposGRU_MULTCONT: TStringField
      FieldName = 'GRU_MULTCONT'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_CORRIGIDO: TStringField
      FieldName = 'GRU_CORRIGIDO'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_TARIFABANCO: TStringField
      FieldName = 'GRU_TARIFABANCO'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_LIMITADO: TStringField
      FieldName = 'GRU_LIMITADO'
      EditMask = '##0.#0'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_LIMITEMININO: TFMTBCDField
      FieldName = 'GRU_LIMITEMININO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsGruposGRU_LIMITEMAXIMO: TFMTBCDField
      FieldName = 'GRU_LIMITEMAXIMO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsGruposGRU_FIXO: TStringField
      FieldName = 'GRU_FIXO'
      FixedChar = True
      Size = 1
    end
    object cdsGruposGRU_LANCE_MINIMO: TFMTBCDField
      FieldName = 'GRU_LANCE_MINIMO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
  end
  object dspModelos: TDataSetProvider
    DataSet = dstModelos
    Options = [poAllowCommandText]
    OnGetTableName = dspModelosGetTableName
    Left = 104
    Top = 216
  end
  object cdsModelos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspModelos'
    Left = 176
    Top = 216
    object cdsModelosMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsModelosMOD_DESCRICAO: TStringField
      FieldName = 'MOD_DESCRICAO'
    end
  end
  object dstUsuarios: TSQLDataSet
    CommandText = 'select * from usuarios Where (SEN_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 272
    object dstUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object dstUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosSEN_FLCAIXA: TStringField
      FieldName = 'SEN_FLCAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosSEN_FLSUPER: TStringField
      FieldName = 'SEN_FLSUPER'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosSEN_SEQCAIXA: TIntegerField
      FieldName = 'SEN_SEQCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_FLRESU: TStringField
      FieldName = 'SEN_FLRESU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosSEN_IMPRESSAO: TStringField
      FieldName = 'SEN_IMPRESSAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dstUsuarios
    Options = [poAllowCommandText]
    OnGetTableName = dspUsuariosGetTableName
    Left = 104
    Top = 272
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuarios'
    Left = 168
    Top = 272
    object cdsUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00'
    end
    object cdsUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object cdsUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosSEN_FLCAIXA: TStringField
      FieldName = 'SEN_FLCAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosSEN_FLSUPER: TStringField
      FieldName = 'SEN_FLSUPER'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosSEN_SEQCAIXA: TIntegerField
      FieldName = 'SEN_SEQCAIXA'
    end
    object cdsUsuariosSEN_FLRESU: TStringField
      FieldName = 'SEN_FLRESU'
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosSEN_IMPRESSAO: TStringField
      FieldName = 'SEN_IMPRESSAO'
      Size = 10
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = cdsConfig
    Left = 288
    Top = 16
  end
  object dstVendaCotas: TSQLDataSet
    CommandText = 'Select * from cotas Where (COT_NRVENDA = :pNRVENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 256
    Top = 80
    object dstVendaCotasCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstVendaCotasCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstVendaCotasCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstVendaCotasCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstVendaCotasCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstVendaCotasCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_DIAASS: TStringField
      FieldName = 'COT_DIAASS'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_CODBEM: TStringField
      FieldName = 'COT_CODBEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstVendaCotasCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_VALACERTO: TFMTBCDField
      FieldName = 'COT_VALACERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_TIPO: TStringField
      FieldName = 'COT_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_DTVENCIMENTO: TDateField
      FieldName = 'COT_DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_TAXA_ADESAO: TFMTBCDField
      FieldName = 'COT_TAXA_ADESAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_NMBANCO: TStringField
      FieldName = 'COT_NMBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_CIDADE_BANCO: TStringField
      FieldName = 'COT_CIDADE_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ESPECIE: TStringField
      FieldName = 'COT_ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_MARCA: TStringField
      FieldName = 'COT_MARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ASSEMBLEIAFILTRO: TIntegerField
      FieldName = 'COT_ASSEMBLEIAFILTRO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_VALORLANCE: TFMTBCDField
      FieldName = 'COT_VALORLANCE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_DTCONTEMPLACAO: TDateField
      FieldName = 'COT_DTCONTEMPLACAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ASSEB_CONTEMP: TIntegerField
      FieldName = 'COT_ASSEB_CONTEMP'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_DTALIENACAO: TDateField
      FieldName = 'COT_DTALIENACAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_MARCA_VEIC: TStringField
      FieldName = 'COT_MARCA_VEIC'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_MODELO_VEIC: TStringField
      FieldName = 'COT_MODELO_VEIC'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ANO_FAB: TIntegerField
      FieldName = 'COT_ANO_FAB'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ANO_MOD: TIntegerField
      FieldName = 'COT_ANO_MOD'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_CHASSI: TStringField
      FieldName = 'COT_CHASSI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object dstVendaCotasCOT_DATA_LIB: TDateField
      FieldName = 'COT_DATA_LIB'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_ALIENADO: TStringField
      FieldName = 'COT_ALIENADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_DESALIENADO: TStringField
      FieldName = 'COT_DESALIENADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_AVAL1: TIntegerField
      FieldName = 'COT_AVAL1'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_AVAL2: TIntegerField
      FieldName = 'COT_AVAL2'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_NRSERIE: TStringField
      FieldName = 'COT_NRSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_TIPOVEIC: TStringField
      FieldName = 'COT_TIPOVEIC'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_COR: TStringField
      FieldName = 'COT_COR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dstVendaCotasCOT_CDMODELO: TIntegerField
      FieldName = 'COT_CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_VALOR_TAXACAD: TFMTBCDField
      FieldName = 'COT_VALOR_TAXACAD'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_VALORENTRADA: TFMTBCDField
      FieldName = 'COT_VALORENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_DATAPRIMPRES: TDateField
      FieldName = 'COT_DATAPRIMPRES'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_TPLANCE: TStringField
      FieldName = 'COT_TPLANCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_DTRECEBIMENTO: TDateField
      FieldName = 'COT_DTRECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_VALOR_RECEBER: TFMTBCDField
      FieldName = 'COT_VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_FLXSPC: TStringField
      FieldName = 'COT_FLXSPC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dstVendaCotasCOT_FLPROMOCAO: TStringField
      FieldName = 'COT_FLPROMOCAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_FLPROTESTO: TStringField
      FieldName = 'COT_FLPROTESTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstVendaCotasCOT_SALDO_ANTERIOR: TFMTBCDField
      FieldName = 'COT_SALDO_ANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_DTINATIVACAO: TDateField
      FieldName = 'COT_DTINATIVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_DTREATIVACAO: TDateField
      FieldName = 'COT_DTREATIVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_VCTDIA: TIntegerField
      FieldName = 'COT_VCTDIA'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_NRRENAVAN: TStringField
      FieldName = 'COT_NRRENAVAN'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstVendaCotasCOT_LOCALPAGAMENTO: TStringField
      FieldName = 'COT_LOCALPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstVendaCotasCOT_NTFISCAL: TStringField
      FieldName = 'COT_NTFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstVendaCotasCOT_SALDODEVEDOR: TFMTBCDField
      FieldName = 'COT_SALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_VALORCREDITO_REL: TFMTBCDField
      FieldName = 'COT_VALORCREDITO_REL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstVendaCotasCOT_PRESTACOES_RESTANTES: TIntegerField
      FieldName = 'COT_PRESTACOES_RESTANTES'
      ProviderFlags = [pfInUpdate]
    end
    object dstVendaCotasCOT_REDUZIR_VALOR_PC_SALDO: TStringField
      FieldName = 'COT_REDUZIR_VALOR_PC_SALDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspVendaContas: TDataSetProvider
    DataSet = dstVendaCotas
    Options = [poAllowCommandText]
    OnGetTableName = dspVendaContasGetTableName
    Left = 344
    Top = 80
  end
  object cdsVendaContas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendaContas'
    OnCalcFields = cdsVendaContasCalcFields
    Left = 424
    Top = 72
    object cdsVendaContasCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsVendaContasCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVendaContasCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVendaContasCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsVendaContasCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsVendaContasCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_DIAASS: TStringField
      FieldName = 'COT_DIAASS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_CODBEM: TStringField
      FieldName = 'COT_CODBEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsVendaContasCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_VALACERTO: TFMTBCDField
      FieldName = 'COT_VALACERTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_TIPO: TStringField
      FieldName = 'COT_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_DTVENCIMENTO: TDateField
      FieldName = 'COT_DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_TAXA_ADESAO: TFMTBCDField
      FieldName = 'COT_TAXA_ADESAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_NMBANCO: TStringField
      FieldName = 'COT_NMBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_CIDADE_BANCO: TStringField
      FieldName = 'COT_CIDADE_BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ESPECIE: TStringField
      FieldName = 'COT_ESPECIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_MARCA: TStringField
      FieldName = 'COT_MARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ASSEMBLEIAFILTRO: TIntegerField
      FieldName = 'COT_ASSEMBLEIAFILTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_VALORLANCE: TFMTBCDField
      FieldName = 'COT_VALORLANCE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_DTCONTEMPLACAO: TDateField
      FieldName = 'COT_DTCONTEMPLACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ASSEB_CONTEMP: TIntegerField
      FieldName = 'COT_ASSEB_CONTEMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_DTALIENACAO: TDateField
      FieldName = 'COT_DTALIENACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_MARCA_VEIC: TStringField
      FieldName = 'COT_MARCA_VEIC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_MODELO_VEIC: TStringField
      FieldName = 'COT_MODELO_VEIC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ANO_FAB: TIntegerField
      FieldName = 'COT_ANO_FAB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ANO_MOD: TIntegerField
      FieldName = 'COT_ANO_MOD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_CHASSI: TStringField
      FieldName = 'COT_CHASSI'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsVendaContasCOT_DATA_LIB: TDateField
      FieldName = 'COT_DATA_LIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_ALIENADO: TStringField
      FieldName = 'COT_ALIENADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_DESALIENADO: TStringField
      FieldName = 'COT_DESALIENADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_AVAL1: TIntegerField
      FieldName = 'COT_AVAL1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_AVAL2: TIntegerField
      FieldName = 'COT_AVAL2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_NRSERIE: TStringField
      FieldName = 'COT_NRSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_TIPOVEIC: TStringField
      FieldName = 'COT_TIPOVEIC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_COR: TStringField
      FieldName = 'COT_COR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsVendaContasCOT_CDMODELO: TIntegerField
      FieldName = 'COT_CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_DATAPRIMPRES: TDateField
      FieldName = 'COT_DATAPRIMPRES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaContasCOT_VALOR_TAXACAD: TFMTBCDField
      FieldName = 'COT_VALOR_TAXACAD'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_VLCOTA_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COT_VLCOTA_CALC'
      Calculated = True
    end
    object cdsVendaContasCOT_TOTAL_CREDITO_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COT_TOTAL_CREDITO_CALC'
      Calculated = True
    end
    object cdsVendaContasCOT_TPLANCE: TStringField
      FieldName = 'COT_TPLANCE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_VALORENTRADA: TFMTBCDField
      FieldName = 'COT_VALORENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasSTATUS_COTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS_COTA'
      Calculated = True
    end
    object cdsVendaContasCOT_NMGRUP: TStringField
      FieldKind = fkLookup
      FieldName = 'COT_NMGRUP'
      LookupDataSet = cdsListaGrupos
      LookupKeyFields = 'GRU_CODIGO'
      LookupResultField = 'GRU_DESCRICAO'
      KeyFields = 'COT_CDGRUPO'
      Lookup = True
    end
    object cdsVendaContasBANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'BANCO'
      LookupDataSet = cdsListaBancos
      LookupKeyFields = 'BAN_CODIGO'
      LookupResultField = 'BAN_NOME'
      KeyFields = 'COT_CDBANCO'
      Lookup = True
    end
    object cdsVendaContasCOT_DTRECEBIMENTO: TDateField
      FieldName = 'COT_DTRECEBIMENTO'
    end
    object cdsVendaContasCOT_VALOR_RECEBER: TFMTBCDField
      FieldName = 'COT_VALOR_RECEBER'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_FLXSPC: TStringField
      FieldName = 'COT_FLXSPC'
      Size = 1
    end
    object cdsVendaContasCOT_FLPROMOCAO: TStringField
      FieldName = 'COT_FLPROMOCAO'
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_FLPROTESTO: TStringField
      FieldName = 'COT_FLPROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsVendaContasCOT_SALDO_ANTERIOR: TFMTBCDField
      FieldName = 'COT_SALDO_ANTERIOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_DTINATIVACAO: TDateField
      FieldName = 'COT_DTINATIVACAO'
    end
    object cdsVendaContasCOT_DTREATIVACAO: TDateField
      FieldName = 'COT_DTREATIVACAO'
    end
    object cdsVendaContasCOT_VCTDIA: TIntegerField
      FieldName = 'COT_VCTDIA'
    end
    object cdsVendaContasCOT_DIA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'COT_DIA'
      LookupDataSet = cdsDias
      LookupKeyFields = 'DIA_CODIGO'
      LookupResultField = 'DIA_CODIGO'
      KeyFields = 'COT_VCTDIA'
      DisplayFormat = '00'
      EditFormat = '00'
      Lookup = True
    end
    object cdsVendaContasCOT_NRRENAVAN: TStringField
      FieldName = 'COT_NRRENAVAN'
      Size = 10
    end
    object cdsVendaContasCOT_LOCALPAGAMENTO: TStringField
      FieldName = 'COT_LOCALPAGAMENTO'
      Size = 40
    end
    object cdsVendaContasCOT_NTFISCAL: TStringField
      FieldName = 'COT_NTFISCAL'
      Size = 10
    end
    object cdsVendaContasCOT_SALDODEVEDOR: TFMTBCDField
      FieldName = 'COT_SALDODEVEDOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_VALORCREDITO_REL: TFMTBCDField
      FieldName = 'COT_VALORCREDITO_REL'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsVendaContasCOT_PRESTACOES_RESTANTES: TIntegerField
      FieldName = 'COT_PRESTACOES_RESTANTES'
    end
    object cdsVendaContasCOT_REDUZIR_VALOR_PC_SALDO: TStringField
      FieldName = 'COT_REDUZIR_VALOR_PC_SALDO'
      FixedChar = True
      Size = 1
    end
  end
  object dstPadrao: TSQLDataSet
    CommandText = 
      'Select B.ban_codigo, B.ban_nome, B.ban_nrbanc, B.ban_nragen, B.b' +
      'an_nrcont from BANCOS B where (b.ban_flativo = '#39'S'#39')  order by b.' +
      'ban_nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 416
    Top = 16
  end
  object dspPadrao: TDataSetProvider
    DataSet = dstPadrao
    Options = [poAllowCommandText]
    Left = 472
    Top = 16
  end
  object cdsListaGrupos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select GRU_CODIGO, GRU_DESCRICAO, GRU_NRMESES, GRU_PARTICIP from' +
      ' grupos  order by  GRU_DESCRICAO'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 440
    Top = 144
    object cdsListaGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
    end
    object cdsListaGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
    object cdsListaGruposGRU_NRMESES: TIntegerField
      FieldName = 'GRU_NRMESES'
    end
    object cdsListaGruposGRU_PARTICIP: TIntegerField
      FieldName = 'GRU_PARTICIP'
    end
  end
  object dstParcelas: TSQLDataSet
    CommandText = 
      'Select * from parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NR' +
      'COTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = sqlConn
    Left = 232
    Top = 136
    object dstParcelasREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstParcelasREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstParcelasREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstParcelasREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstParcelasREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_CODOP: TStringField
      FieldName = 'REC_CODOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstParcelasREC_CDOPER: TIntegerField
      FieldName = 'REC_CDOPER'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstParcelasREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstParcelasREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstParcelasREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstParcelasREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstParcelasREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstParcelasREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstParcelasREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object dstParcelasREC_VALOR_DIGITADO: TFMTBCDField
      FieldName = 'REC_VALOR_DIGITADO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstParcelasREC_NATUREZA: TIntegerField
      FieldName = 'REC_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspParcelas: TDataSetProvider
    DataSet = dstParcelas
    Options = [poAllowCommandText]
    Left = 296
    Top = 136
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspParcelas'
    Left = 360
    Top = 136
    object cdsParcelasREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsParcelasREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsParcelasREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsParcelasREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsParcelasREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsParcelasREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsParcelasREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_CODOP: TStringField
      FieldName = 'REC_CODOP'
      FixedChar = True
      Size = 3
    end
    object cdsParcelasREC_CDOPER: TIntegerField
      FieldName = 'REC_CDOPER'
    end
    object cdsParcelasREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParcelasREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
    end
    object cdsParcelasREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsParcelasREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
    end
    object cdsParcelasREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsParcelasREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsParcelasREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsParcelasREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      BlobType = ftMemo
    end
    object cdsParcelasREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsParcelasREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsParcelasREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsParcelasREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
    end
    object cdsParcelasREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      FixedChar = True
      Size = 5
    end
    object cdsParcelasREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
    end
    object cdsParcelasREC_VALOR_DIGITADO: TFMTBCDField
      FieldName = 'REC_VALOR_DIGITADO'
      Precision = 18
      Size = 2
    end
    object cdsParcelasREC_NATUREZA: TIntegerField
      FieldName = 'REC_NATUREZA'
    end
  end
  object dsListaGrupos: TDataSource
    DataSet = cdsListaGrupos
    Left = 440
    Top = 192
  end
  object dstLances: TSQLDataSet
    CommandText = 'Select * from LANCES Where (LAN_SEQUENCIA = :pSEQUENCIA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 240
    Top = 192
    object dstLancesLAN_SEQUENCIA: TIntegerField
      FieldName = 'LAN_SEQUENCIA'
      Required = True
      DisplayFormat = '0000000'
    end
    object dstLancesLAN_CDGRUP: TIntegerField
      FieldName = 'LAN_CDGRUP'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstLancesLAN_NRCOTA: TIntegerField
      FieldName = 'LAN_NRCOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstLancesLAN_NRVEND: TIntegerField
      FieldName = 'LAN_NRVEND'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstLancesLAN_NRASSEMBLEIA: TIntegerField
      FieldName = 'LAN_NRASSEMBLEIA'
      ProviderFlags = [pfInUpdate]
    end
    object dstLancesLAN_TIPO: TStringField
      FieldName = 'LAN_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstLancesLAN_VALOR: TFMTBCDField
      FieldName = 'LAN_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstLancesLAN_PELANC: TFMTBCDField
      FieldName = 'LAN_PELANC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstLancesLAN_DTMOVI: TDateField
      FieldName = 'LAN_DTMOVI'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspLances: TDataSetProvider
    DataSet = dstLances
    Left = 304
    Top = 192
  end
  object cdsLances: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLances'
    Left = 272
    Top = 240
    object cdsLancesLAN_SEQUENCIA: TIntegerField
      FieldName = 'LAN_SEQUENCIA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsLancesLAN_CDGRUP: TIntegerField
      FieldName = 'LAN_CDGRUP'
      Required = True
    end
    object cdsLancesLAN_NRCOTA: TIntegerField
      FieldName = 'LAN_NRCOTA'
      Required = True
    end
    object cdsLancesLAN_NRVEND: TIntegerField
      FieldName = 'LAN_NRVEND'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsLancesLAN_NRASSEMBLEIA: TIntegerField
      FieldName = 'LAN_NRASSEMBLEIA'
    end
    object cdsLancesLAN_TIPO: TStringField
      FieldName = 'LAN_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsLancesLAN_VALOR: TFMTBCDField
      FieldName = 'LAN_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesLAN_PELANC: TFMTBCDField
      FieldName = 'LAN_PELANC'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesLAN_DTMOVI: TDateField
      FieldName = 'LAN_DTMOVI'
    end
  end
  object qryCotaCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from cotas Where (COT_CDGRUPO = :pCDGRUP) AND '
      '(COT_NRCOTA = :pNRCOTA) AND (COT_POSICAO = :pPOSICAO)')
    SQLConnection = sqlConn
    Left = 376
    Top = 232
  end
  object dstAux: TSQLDataSet
    CommandText = 
      'Select * from parcelas Where (REC_NRVEND = :pNRVEND) and (REC_CD' +
      'GRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :' +
      'pNRPARC)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptUnknown
      end>
    SQLConnection = sqlConn
    Left = 224
    Top = 288
  end
  object dspAux: TDataSetProvider
    DataSet = dstAux
    Options = [poAllowCommandText]
    Left = 272
    Top = 296
  end
  object cdsAtualizaCota: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from cotas Where (COT_NRVENDA = :pNRVENDA) and (COT_CDG' +
      'RUPO = :pCDGRUP) and (COT_NRCOTA = :pNRCOTA)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAux'
    Left = 344
    Top = 280
  end
  object cdsListaBancos: TClientDataSet
    Aggregates = <>
    CommandText = 'Select BAN_CODIGO, BAN_NOME from bancos order by BAN_NOME'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 512
    Top = 80
    object cdsListaBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
    end
    object cdsListaBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
  end
  object cdsListaModelos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MOD_CODIGO, MOD_DESCRICAO from modelos order by MOD_DESCR' +
      'ICAO'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 512
    Top = 128
    object cdsListaModelosMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsListaModelosMOD_DESCRICAO: TStringField
      FieldName = 'MOD_DESCRICAO'
    end
  end
  object cdsCotasCliente: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.COT_CDCLIE, C.cot_cdgrupo, G.gru_descricao, C.cot_nrcot' +
      'a, C.cot_posicao, C.cot_flcontemplado, C.COT_TIPO from COTAS C I' +
      'NNER JOIN GRUPOS G ON G.GRU_CODIGO = C.cot_cdgrupo Where (C.COT_' +
      'CDCLIE = :pCDCLIE)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDCLIE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    OnCalcFields = cdsCotasClienteCalcFields
    Left = 456
    Top = 248
    object cdsCotasClienteCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsCotasClienteCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsCotasClienteGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
    object cdsCotasClienteCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCotasClienteCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasClienteCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasClienteCOT_TIPO: TStringField
      FieldName = 'COT_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasClienteCOT_FLUXO: TStringField
      FieldKind = fkCalculated
      FieldName = 'COT_FLUXO'
      Size = 10
      Calculated = True
    end
  end
  object dsCotasCliente: TDataSource
    AutoEdit = False
    DataSet = cdsCotasCliente
    Left = 512
    Top = 232
  end
  object cdsEstornaParcela: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from parcelas Where (REC_NRVEND = :pNRVEND) and (REC_CD' +
      'GRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :' +
      'pNRPARC)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAux'
    Left = 480
    Top = 304
  end
  object cdsListaModelos2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MOD_CODIGO, MOD_DESCRICAO from modelos order by MOD_CODIG' +
      'O'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 512
    Top = 176
    object IntegerField1: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object StringField1: TStringField
      FieldName = 'MOD_DESCRICAO'
    end
  end
  object cdsListaAvalistas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 120
    Data = {
      500000009619E0BD01000000180000000300000000000300000050000556454E
      4441040001000000000006434F4449474F0400010000000000044E4F4D450100
      490000000100055749445448020002003C000000}
    object cdsListaAvalistasVENDA: TIntegerField
      FieldName = 'VENDA'
    end
    object cdsListaAvalistasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      DisplayFormat = '0000000'
    end
    object cdsListaAvalistasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dstAvalista: TSQLDataSet
    CommandText = 'select * from AVALISTAS Where (AVA_NRVEND = :pNRVEND)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 320
    object dstAvalistaAVA_NRVEND: TIntegerField
      FieldName = 'AVA_NRVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstAvalistaAVA_CDCLIE: TIntegerField
      FieldName = 'AVA_CDCLIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dspAvalista: TDataSetProvider
    DataSet = dstAvalista
    Options = [poAllowCommandText]
    Left = 104
    Top = 320
  end
  object cdsAvalista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end>
    ProviderName = 'dspAvalista'
    OnCalcFields = cdsAvalistaCalcFields
    Left = 160
    Top = 320
    object cdsAvalistaAVA_NRVEND: TIntegerField
      FieldName = 'AVA_NRVEND'
      Required = True
    end
    object cdsAvalistaAVA_CDCLIE: TIntegerField
      FieldName = 'AVA_CDCLIE'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsAvalistaNOME: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME'
      Size = 60
      Calculated = True
    end
  end
  object dstMasterDetail: TSQLDataSet
    CommandText = 
      'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, ' +
      'C.COT_CDCLIE, CL.CLI_CIDADE, CL.CLI_UFCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO from COTAS C INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.' +
      'COT_CDCLIE Where (C.COT_CDGRUPO = :pCODIGO) order by C.COT_CDGRU' +
      'PO, C.COT_NRCOTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptUnknown
      end>
    SQLConnection = sqlConn
    Left = 304
    Top = 352
  end
  object dspMasterDetail: TDataSetProvider
    DataSet = dstMasterDetail
    Options = [poAllowCommandText]
    Left = 416
    Top = 360
  end
  object cdsCotasClientes2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, ' +
      'C.COT_CDCLIE, CL.CLI_CIDADE, CL.CLI_UFCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO from COTAS C INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.' +
      'COT_CDCLIE Where (C.COT_CDGRUPO = :pCODIGO) order by C.COT_CDGRU' +
      'PO, C.COT_NRCOTA'
    FieldDefs = <
      item
        Name = 'COT_NRVENDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COT_CDGRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COT_NRCOTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COT_CDCLIE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_CIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLI_UFCLIE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COT_PLANO'
        DataType = ftInteger
      end
      item
        Name = 'COT_POSICAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspMasterDetail'
    StoreDefs = True
    Left = 512
    Top = 360
    object cdsCotasClientes2COT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsCotasClientes2COT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsCotasClientes2COT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCotasClientes2CLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsCotasClientes2COT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsCotasClientes2CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsCotasClientes2CLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsCotasClientes2COT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsCotasClientes2COT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsListaGrupos2: TClientDataSet
    Aggregates = <>
    CommandText = 'Select GRU_CODIGO, GRU_DESCRICAO from grupos'
    FieldDefs = <
      item
        Name = 'GRU_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'GRU_DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cdsListaGrupos2Index4'
        Fields = 'GRU_CODIGO'
      end>
    IndexFieldNames = 'GRU_CODIGO'
    Params = <>
    ProviderName = 'dspPadrao'
    StoreDefs = True
    Left = 584
    Top = 256
    object cdsListaGrupos2GRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
    end
    object cdsListaGrupos2GRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
  end
  object dsLisGrupos2: TDataSource
    DataSet = cdsListaGrupos2
    Left = 592
    Top = 200
  end
  object cdsNossoNumero: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_CDBAN' +
      'C, REC_NOSSONUMERO, REC_PRINTSLIP, REC_TPSLIP, REC_VALORTARIFABA' +
      'NCO, REC_VALORTITULOTITULO from parcelas Where (REC_NRVEND = :pN' +
      'RVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) a' +
      'nd (REC_NRPARC = :pNRPARC)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 552
    Top = 320
    object cdsNossoNumeroREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsNossoNumeroREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsNossoNumeroREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsNossoNumeroREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsNossoNumeroREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsNossoNumeroREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsNossoNumeroREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsNossoNumeroREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsNossoNumeroREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      Precision = 18
      Size = 2
    end
    object cdsNossoNumeroREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      Precision = 18
      Size = 2
    end
  end
  object cdsLancesCotas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select LAN_SEQUENCIA, LAN_CDGRUP, LAN_NRCOTA, LAN_NRASSEMBLEIA, ' +
      'LAN_VALOR, LAN_PELANC, LAN_TIPO from LANCES Where (LAN_CDGRUP = ' +
      ':pCDGRUP) and (LAN_NRCOTA = :pNRCOTA) AND (LAN_NRASSEMBLEIA = :p' +
      'NRASSE)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRASSE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    OnCalcFields = cdsLancesCotasCalcFields
    Left = 40
    Top = 368
    object cdsLancesCotasLAN_SEQUENCIA: TIntegerField
      FieldName = 'LAN_SEQUENCIA'
      Required = True
    end
    object cdsLancesCotasLAN_CDGRUP: TIntegerField
      FieldName = 'LAN_CDGRUP'
      Required = True
    end
    object cdsLancesCotasLAN_NRCOTA: TIntegerField
      FieldName = 'LAN_NRCOTA'
      Required = True
    end
    object cdsLancesCotasLAN_NRASSEMBLEIA: TIntegerField
      FieldName = 'LAN_NRASSEMBLEIA'
    end
    object cdsLancesCotasLAN_VALOR: TFMTBCDField
      FieldName = 'LAN_VALOR'
      DisplayFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesCotasLAN_PELANC: TFMTBCDField
      FieldName = 'LAN_PELANC'
      DisplayFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesCotasLAN_TIPO: TStringField
      FieldName = 'LAN_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsLancesCotasLAN_DESC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAN_DESC_TIPO'
      Size = 10
      Calculated = True
    end
  end
  object cdsCotasGrupoModelos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie,' +
      ' C.cot_plano, C.cot_posicao, c.cot_cdmodelo, C.cot_valcre, C.COT' +
      '_VALCOTA from cotas c inner join GRUPOS G ON C.COT_CDGRUPO = G.G' +
      'RU_CODIGO Where (c.cot_cdmodelo = :pcdmodelo) AND (G.GRU_CORRIGI' +
      'DO = '#39'S'#39')'
    Params = <
      item
        DataType = ftInteger
        Name = 'pcdmodelo'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 216
    Top = 360
    object cdsCotasGrupoModelosCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsCotasGrupoModelosCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsCotasGrupoModelosCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCotasGrupoModelosCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsCotasGrupoModelosCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsCotasGrupoModelosCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasGrupoModelosCOT_CDMODELO: TIntegerField
      FieldName = 'COT_CDMODELO'
    end
    object cdsCotasGrupoModelosCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsCotasGrupoModelosCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      Precision = 18
      Size = 2
    end
  end
  object cdsMultiContemGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select GPA_CDGRUP, GPA_NRASSE, GPA_NRCONT, GPA_CONT_LANC from GR' +
      'UPO_ASSEMBLEIA Where (GPA_CDGRUP = :pCDGRUP) order by GPA_NRASSE'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 576
    Top = 376
    object cdsMultiContemGrupoGPA_CDGRUP: TIntegerField
      FieldName = 'GPA_CDGRUP'
      Required = True
    end
    object cdsMultiContemGrupoGPA_NRASSE: TIntegerField
      FieldName = 'GPA_NRASSE'
      Required = True
    end
    object cdsMultiContemGrupoGPA_NRCONT: TIntegerField
      FieldName = 'GPA_NRCONT'
    end
    object cdsMultiContemGrupoGPA_CONT_LANC: TIntegerField
      FieldName = 'GPA_CONT_LANC'
    end
  end
  object cdsAvalistas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select A.ava_nrvend, A.ava_cdclie, C.COT_CDGRUPO, C.COT_NRCOTA, ' +
      'C.COT_POSICAO from AVALISTAS A inner join cotas C ON C.COT_NRVEN' +
      'DA = A.AVA_NRVEND Where (A.ava_cdclie = :pcdclie)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDCLIE'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 328
    Top = 408
    object cdsAvalistasAVA_NRVEND: TIntegerField
      FieldName = 'AVA_NRVEND'
      Required = True
    end
    object cdsAvalistasAVA_CDCLIE: TIntegerField
      FieldName = 'AVA_CDCLIE'
      Required = True
    end
    object cdsAvalistasCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsAvalistasCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsAvalistasCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
  end
  object qryImp: TQuery
    DatabaseName = 'AdmConsc'
    SQL.Strings = (
      'Select * from Parcelas Where (VENDA = :pVENDA )')
    Left = 592
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptUnknown
      end>
    object qryImpCodGrupo: TSmallintField
      FieldName = 'CodGrupo'
      Origin = 'ADMCONSC."Parcelas.DB".CodGrupo'
    end
    object qryImpCOTA: TSmallintField
      FieldName = 'COTA'
      Origin = 'ADMCONSC."Parcelas.DB".COTA'
    end
    object qryImpVENDA: TSmallintField
      FieldName = 'VENDA'
      Origin = 'ADMCONSC."Parcelas.DB".VENDA'
    end
    object qryImpNUMPARCPG: TSmallintField
      FieldName = 'NUMPARCPG'
      Origin = 'ADMCONSC."Parcelas.DB".NUMPARCPG'
    end
    object qryImpDATAVENC: TDateField
      FieldName = 'DATAVENC'
      Origin = 'ADMCONSC."Parcelas.DB".DATAVENC'
    end
    object qryImpVALORPARPG: TFloatField
      FieldName = 'VALORPARPG'
      Origin = 'ADMCONSC."Parcelas.DB".VALORPARPG'
    end
    object qryImpDATAPG: TDateField
      FieldName = 'DATAPG'
      Origin = 'ADMCONSC."Parcelas.DB".DATAPG'
    end
    object qryImpMULTAPG: TFloatField
      FieldName = 'MULTAPG'
      Origin = 'ADMCONSC."Parcelas.DB".MULTAPG'
    end
    object qryImpTOTALPG: TFloatField
      FieldName = 'TOTALPG'
      Origin = 'ADMCONSC."Parcelas.DB".TOTALPG'
    end
    object qryImpCODOP: TStringField
      FieldName = 'CODOP'
      Origin = 'ADMCONSC."Parcelas.DB".CODOP'
      Size = 3
    end
    object qryImpSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'ADMCONSC."Parcelas.DB".SITUACAO'
      Size = 1
    end
    object qryImpMOVIMENTO: TDateField
      FieldName = 'MOVIMENTO'
      Origin = 'ADMCONSC."Parcelas.DB".MOVIMENTO'
    end
    object qryImpPAGTOCREDITO: TDateField
      FieldName = 'PAGTOCREDITO'
      Origin = 'ADMCONSC."Parcelas.DB".PAGTOCREDITO'
    end
    object qryImpCREDITO: TFloatField
      FieldName = 'CREDITO'
      Origin = 'ADMCONSC."Parcelas.DB".CREDITO'
    end
    object qryImpREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Origin = 'ADMCONSC."Parcelas.DB".REGISTRO'
    end
    object qryImpFORMABAIXA: TStringField
      FieldName = 'FORMABAIXA'
      Origin = 'ADMCONSC."Parcelas.DB".FORMABAIXA'
      Size = 1
    end
    object qryImpCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Origin = 'ADMCONSC."Parcelas.DB".CODBANCO'
    end
    object qryImpPrintSlip: TBooleanField
      FieldName = 'PrintSlip'
      Origin = 'ADMCONSC."Parcelas.DB".PrintSlip'
    end
    object qryImpHistorico: TBlobField
      FieldName = 'Historico'
      Origin = 'ADMCONSC."Parcelas.DB".Historico'
      BlobType = ftFmtMemo
    end
    object qryImpTipoCredito: TStringField
      FieldName = 'TipoCredito'
      Origin = 'ADMCONSC."Parcelas.DB".TipoCredito'
      Size = 1
    end
    object qryImpTipoSlip: TStringField
      FieldName = 'TipoSlip'
      Origin = 'ADMCONSC."Parcelas.DB".TipoSlip'
      Size = 1
    end
    object qryImpNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'ADMCONSC."Parcelas.DB".NOSSONUMERO'
    end
    object qryImpValorTarifaBanco: TFloatField
      FieldName = 'ValorTarifaBanco'
      Origin = 'ADMCONSC."Parcelas.DB".ValorTarifaBanco'
    end
    object qryImpValorTitulo: TFloatField
      FieldName = 'ValorTitulo'
      Origin = 'ADMCONSC."Parcelas.DB".ValorTitulo'
    end
  end
  object dstAux2: TSQLDataSet
    CommandText = 'Select * from parcelas r Where (r.rec_nrvend = :prec_nrvend)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'prec_nrvend'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 32
    Top = 424
  end
  object dspAux2: TDataSetProvider
    DataSet = dstAux2
    Options = [poAllowCommandText]
    Left = 80
    Top = 416
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux2'
    Left = 120
    Top = 408
  end
  object qryAux: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC from PARCE' +
        'LAS'
      'Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP)  '
      'and (REC_NRCOTA = :pNRCOTA)')
    SQLConnection = sqlConn
    Left = 384
    Top = 416
    object qryAuxREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object qryAuxREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object qryAuxREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object qryAuxREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
  end
  object cdsGetAssembleia: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from LANCES L where (L.lan_nrvend = :Pnrvend) AND (L.la' +
      'n_cdgrup = :pcdgrup) AND (L.lan_nrcota = :pnrcota) AND (L.lan_nr' +
      'assembleia = :passembleia)'
    Params = <
      item
        DataType = ftInteger
        Name = 'Pnrvend'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pcdgrup'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pnrcota'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'passembleia'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAux2'
    Left = 552
    Top = 8
    object cdsGetAssembleiaLAN_SEQUENCIA: TIntegerField
      FieldName = 'LAN_SEQUENCIA'
      Required = True
    end
    object cdsGetAssembleiaLAN_CDGRUP: TIntegerField
      FieldName = 'LAN_CDGRUP'
      Required = True
    end
    object cdsGetAssembleiaLAN_NRCOTA: TIntegerField
      FieldName = 'LAN_NRCOTA'
      Required = True
    end
    object cdsGetAssembleiaLAN_NRVEND: TIntegerField
      FieldName = 'LAN_NRVEND'
      Required = True
    end
    object cdsGetAssembleiaLAN_NRASSEMBLEIA: TIntegerField
      FieldName = 'LAN_NRASSEMBLEIA'
    end
    object cdsGetAssembleiaLAN_TIPO: TStringField
      FieldName = 'LAN_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGetAssembleiaLAN_VALOR: TFMTBCDField
      FieldName = 'LAN_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsGetAssembleiaLAN_PELANC: TFMTBCDField
      FieldName = 'LAN_PELANC'
      Precision = 18
      Size = 2
    end
    object cdsGetAssembleiaLAN_DTMOVI: TDateField
      FieldName = 'LAN_DTMOVI'
    end
  end
  object cdsBaixaLances: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from PARCELAS R WHERE (R.rec_nrvend  = :pVENDA) and (r.' +
      'rec_dtpaga is null);'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAux2'
    OnCalcFields = cdsBaixaLancesCalcFields
    Left = 432
    Top = 432
    object cdsBaixaLancesREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsBaixaLancesREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsBaixaLancesREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsBaixaLancesREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsBaixaLancesREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsBaixaLancesREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsBaixaLancesREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_CODOP: TStringField
      FieldName = 'REC_CODOP'
      FixedChar = True
      Size = 3
    end
    object cdsBaixaLancesREC_CDOPER: TIntegerField
      FieldName = 'REC_CDOPER'
    end
    object cdsBaixaLancesREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaLancesREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
    end
    object cdsBaixaLancesREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsBaixaLancesREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
    end
    object cdsBaixaLancesREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaLancesREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsBaixaLancesREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaLancesREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      BlobType = ftMemo
    end
    object cdsBaixaLancesREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaLancesREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaLancesREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsBaixaLancesREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      Precision = 18
      Size = 2
    end
    object cdsBaixaLancesREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
    end
    object cdsBaixaLancesREC_TAXADM_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TAXADM_CALC'
      Calculated = True
    end
    object cdsBaixaLancesREC_TXFUND_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TXFUND_CALC'
      Calculated = True
    end
    object cdsBaixaLancesREC_TOTAL_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TOTAL_CALC'
      Calculated = True
    end
    object cdsBaixaLancesREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
    end
  end
  object dstCaixa: TSQLDataSet
    CommandText = 'select * from CAIXA Where (CAI_NUMERO = :pNUMERO) '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 176
    Top = 424
    object dstCaixaCAI_NUMERO: TIntegerField
      FieldName = 'CAI_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCaixaCAI_DTABERTURA: TDateField
      FieldName = 'CAI_DTABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object dstCaixaCAI_DTFECHAMENTO: TDateField
      FieldName = 'CAI_DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstCaixaCAI_HOABERTURA: TStringField
      FieldName = 'CAI_HOABERTURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstCaixaCAI_HOFECHAMENTO: TStringField
      FieldName = 'CAI_HOFECHAMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstCaixaCAI_RGINICIAL: TIntegerField
      FieldName = 'CAI_RGINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstCaixaCAI_RGFINAL: TIntegerField
      FieldName = 'CAI_RGFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstCaixaCAI_CAIXA: TIntegerField
      FieldName = 'CAI_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object dstCaixaCAI_SITUACAO: TStringField
      FieldName = 'CAI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = dstCaixa
    Options = [poAllowCommandText]
    OnGetTableName = dspCaixaGetTableName
    Left = 224
    Top = 408
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 272
    Top = 432
    object cdsCaixaCAI_NUMERO: TIntegerField
      FieldName = 'CAI_NUMERO'
      Required = True
      DisplayFormat = '0000000'
      EditFormat = '0000000'
    end
    object cdsCaixaCAI_DTABERTURA: TDateField
      FieldName = 'CAI_DTABERTURA'
    end
    object cdsCaixaCAI_DTFECHAMENTO: TDateField
      FieldName = 'CAI_DTFECHAMENTO'
    end
    object cdsCaixaCAI_HOABERTURA: TStringField
      FieldName = 'CAI_HOABERTURA'
      FixedChar = True
      Size = 5
    end
    object cdsCaixaCAI_HOFECHAMENTO: TStringField
      FieldName = 'CAI_HOFECHAMENTO'
      FixedChar = True
      Size = 5
    end
    object cdsCaixaCAI_RGINICIAL: TIntegerField
      FieldName = 'CAI_RGINICIAL'
    end
    object cdsCaixaCAI_RGFINAL: TIntegerField
      FieldName = 'CAI_RGFINAL'
    end
    object cdsCaixaCAI_CAIXA: TIntegerField
      FieldName = 'CAI_CAIXA'
    end
    object cdsCaixaCAI_SITUACAO: TStringField
      FieldName = 'CAI_SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dstMovCaixa: TSQLDataSet
    CommandText = 
      'select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA' +
      ') and (MCA_VENDA = :pVENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 520
    Top = 424
    object dstMovCaixaMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
    end
    object dstMovCaixaMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
    end
    object dstMovCaixaMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstMovCaixaMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstMovCaixaMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_VLMODALIDADE: TFMTBCDField
      FieldName = 'MCA_VLMODALIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstMovCaixaMCA_VLTROCO: TFMTBCDField
      FieldName = 'MCA_VLTROCO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstMovCaixaMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstMovCaixaMCA_SITUACAO: TStringField
      FieldName = 'MCA_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstMovCaixaMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_NATUREZA: TIntegerField
      FieldName = 'MCA_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_FUNCIONARIO: TIntegerField
      FieldName = 'MCA_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_NRCHEQ: TStringField
      FieldName = 'MCA_NRCHEQ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstMovCaixaMCA_NRAGEN: TStringField
      FieldName = 'MCA_NRAGEN'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstMovCaixaMCA_NRBANC: TIntegerField
      FieldName = 'MCA_NRBANC'
      ProviderFlags = [pfInUpdate]
    end
    object dstMovCaixaMCA_NRCONTA: TStringField
      FieldName = 'MCA_NRCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = dstMovCaixa
    Options = [poAllowCommandText]
    OnGetTableName = dspMovCaixaGetTableName
    Left = 576
    Top = 424
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMovCaixa'
    Left = 640
    Top = 440
    object cdsMovCaixaMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
    end
    object cdsMovCaixaMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
    end
    object cdsMovCaixaMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsMovCaixaMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
    end
    object cdsMovCaixaMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      FixedChar = True
      Size = 5
    end
    object cdsMovCaixaMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
    end
    object cdsMovCaixaMCA_VLMODALIDADE: TFMTBCDField
      FieldName = 'MCA_VLMODALIDADE'
      Precision = 18
      Size = 2
    end
    object cdsMovCaixaMCA_VLTROCO: TFMTBCDField
      FieldName = 'MCA_VLTROCO'
      Precision = 18
      Size = 2
    end
    object cdsMovCaixaMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      Size = 40
    end
    object cdsMovCaixaMCA_SITUACAO: TStringField
      FieldName = 'MCA_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsMovCaixaMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
    end
    object cdsMovCaixaMCA_NATUREZA: TIntegerField
      FieldName = 'MCA_NATUREZA'
    end
    object cdsMovCaixaMCA_FUNCIONARIO: TIntegerField
      FieldName = 'MCA_FUNCIONARIO'
    end
    object cdsMovCaixaMCA_NRCHEQ: TStringField
      FieldName = 'MCA_NRCHEQ'
      Size = 10
    end
    object cdsMovCaixaMCA_NRAGEN: TStringField
      FieldName = 'MCA_NRAGEN'
      Size = 5
    end
    object cdsMovCaixaMCA_NRBANC: TIntegerField
      FieldName = 'MCA_NRBANC'
    end
    object cdsMovCaixaMCA_NRCONTA: TStringField
      FieldName = 'MCA_NRCONTA'
      Size = 12
    end
  end
  object cdsListaModalidades: TClientDataSet
    Aggregates = <>
    CommandText = 'Select MOD_CODIGO, MOD_NOME from MODALIDADE order by MOD_NOME'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 616
    Top = 304
    object cdsListaModalidadesMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
    end
    object cdsListaModalidadesMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
  end
  object cdsAcessoMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 344
    Top = 32
  end
  object dstCredito: TSQLDataSet
    CommandText = 
      'select * from PARCELAS Where (REC_NRVEND = :pNRVEND) And (REC_CD' +
      'GRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :' +
      'pNRPARC)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 632
    Top = 32
  end
  object dspCredito: TDataSetProvider
    DataSet = dstCredito
    Options = [poAllowCommandText]
    Left = 640
    Top = 96
  end
  object cdsCredito: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from PARCELAS Where (REC_NRVEND = :pNRVEND) And (REC_CD' +
      'GRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :' +
      'pNRPARC)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptInput
      end>
    ProviderName = 'dspCredito'
    Left = 640
    Top = 152
    object cdsCreditoREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsCreditoREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsCreditoREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsCreditoREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsCreditoREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsCreditoREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsCreditoREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsCreditoREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsCreditoREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsCreditoREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCreditoREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
    end
    object cdsCreditoREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsCreditoREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsCreditoREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
    end
    object cdsCreditoREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsCreditoREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsCreditoREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsCreditoREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
  end
  object dstSaldoCliente: TSQLDataSet
    CommandText = 'select * from CLIENTES_SALDO Where (SLD_NRVENDA = :pVENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 672
    Top = 192
    object dstSaldoClienteSLD_NRVENDA: TIntegerField
      FieldName = 'SLD_NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstSaldoClienteSLD_GRUPO: TIntegerField
      FieldName = 'SLD_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object dstSaldoClienteSLD_COTA: TIntegerField
      FieldName = 'SLD_COTA'
      ProviderFlags = [pfInUpdate]
    end
    object dstSaldoClienteSLD_CLIENTE: TIntegerField
      FieldName = 'SLD_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dstSaldoClienteSLD_VALOR: TFMTBCDField
      FieldName = 'SLD_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dspSaldoCliente: TDataSetProvider
    DataSet = dstSaldoCliente
    Options = [poAllowCommandText]
    OnGetTableName = dspSaldoClienteGetTableName
    Left = 672
    Top = 240
  end
  object cdsSaldoCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspSaldoCliente'
    Left = 680
    Top = 288
    object cdsSaldoClienteSLD_NRVENDA: TIntegerField
      FieldName = 'SLD_NRVENDA'
      Required = True
    end
    object cdsSaldoClienteSLD_GRUPO: TIntegerField
      FieldName = 'SLD_GRUPO'
    end
    object cdsSaldoClienteSLD_COTA: TIntegerField
      FieldName = 'SLD_COTA'
    end
    object cdsSaldoClienteSLD_CLIENTE: TIntegerField
      FieldName = 'SLD_CLIENTE'
    end
    object cdsSaldoClienteSLD_VALOR: TFMTBCDField
      FieldName = 'SLD_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dstPadrao2: TSQLDataSet
    CommandText = 
      'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_VLPAR' +
      'C, REC_SITUACAO, REC_DTCREDITO, REC_CREDITO, REC_TPCREDITO, REC_' +
      'VALOR_DIGITADO from PARCELAS Where (REC_NRVEND = :pNRVEND) and (' +
      'REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPA' +
      'RC = :pNRPARC)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 632
    Top = 360
  end
  object dspPadrao2: TDataSetProvider
    DataSet = dstPadrao2
    Options = [poAllowCommandText]
    Left = 696
    Top = 344
  end
  object aCdsClienteCota: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie,' +
      ' COUNT(*) from COTAS C Where (c.cot_cdclie = :pCLIENTE) GROUP BY' +
      ' C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLIENTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao2'
    Left = 696
    Top = 392
  end
  object aCdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao2'
    Left = 704
    Top = 448
  end
  object cdsEstornoPCLance: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from parcelas r Where (r.rec_nrvend = :pNRVENDA) and (r' +
      '.rec_cdgrup = :pCDGRUP) and (r.rec_NRCOTA = :pNRCOTA)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspAux'
    Left = 408
    Top = 296
  end
  object cdsIncluirVenda: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from COTAS C Where (C.cot_nrvenda = :pnrvenda);'
    Params = <
      item
        DataType = ftInteger
        Name = 'pnrvenda'
        ParamType = ptInput
      end>
    ProviderName = 'dspAux2'
    Left = 704
    Top = 8
    object cdsIncluirVendaCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsIncluirVendaCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsIncluirVendaCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsIncluirVendaCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsIncluirVendaCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      Size = 10
    end
    object cdsIncluirVendaCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsIncluirVendaCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_DIAASS: TStringField
      FieldName = 'COT_DIAASS'
    end
    object cdsIncluirVendaCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
    end
    object cdsIncluirVendaCOT_CODBEM: TStringField
      FieldName = 'COT_CODBEM'
      Size = 10
    end
    object cdsIncluirVendaCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_VALACERTO: TFMTBCDField
      FieldName = 'COT_VALACERTO'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_TIPO: TStringField
      FieldName = 'COT_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_DTVENCIMENTO: TDateField
      FieldName = 'COT_DTVENCIMENTO'
    end
    object cdsIncluirVendaCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_TAXA_ADESAO: TFMTBCDField
      FieldName = 'COT_TAXA_ADESAO'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
    end
    object cdsIncluirVendaCOT_NMBANCO: TStringField
      FieldName = 'COT_NMBANCO'
    end
    object cdsIncluirVendaCOT_CIDADE_BANCO: TStringField
      FieldName = 'COT_CIDADE_BANCO'
    end
    object cdsIncluirVendaCOT_ESPECIE: TStringField
      FieldName = 'COT_ESPECIE'
    end
    object cdsIncluirVendaCOT_MARCA: TStringField
      FieldName = 'COT_MARCA'
    end
    object cdsIncluirVendaCOT_ASSEMBLEIAFILTRO: TIntegerField
      FieldName = 'COT_ASSEMBLEIAFILTRO'
    end
    object cdsIncluirVendaCOT_VALORLANCE: TFMTBCDField
      FieldName = 'COT_VALORLANCE'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_DTCONTEMPLACAO: TDateField
      FieldName = 'COT_DTCONTEMPLACAO'
    end
    object cdsIncluirVendaCOT_ASSEB_CONTEMP: TIntegerField
      FieldName = 'COT_ASSEB_CONTEMP'
    end
    object cdsIncluirVendaCOT_DTALIENACAO: TDateField
      FieldName = 'COT_DTALIENACAO'
    end
    object cdsIncluirVendaCOT_MARCA_VEIC: TStringField
      FieldName = 'COT_MARCA_VEIC'
    end
    object cdsIncluirVendaCOT_MODELO_VEIC: TStringField
      FieldName = 'COT_MODELO_VEIC'
    end
    object cdsIncluirVendaCOT_ANO_FAB: TIntegerField
      FieldName = 'COT_ANO_FAB'
    end
    object cdsIncluirVendaCOT_ANO_MOD: TIntegerField
      FieldName = 'COT_ANO_MOD'
    end
    object cdsIncluirVendaCOT_CHASSI: TStringField
      FieldName = 'COT_CHASSI'
      Size = 25
    end
    object cdsIncluirVendaCOT_DATA_LIB: TDateField
      FieldName = 'COT_DATA_LIB'
    end
    object cdsIncluirVendaCOT_ALIENADO: TStringField
      FieldName = 'COT_ALIENADO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_DESALIENADO: TStringField
      FieldName = 'COT_DESALIENADO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_AVAL1: TIntegerField
      FieldName = 'COT_AVAL1'
    end
    object cdsIncluirVendaCOT_AVAL2: TIntegerField
      FieldName = 'COT_AVAL2'
    end
    object cdsIncluirVendaCOT_NRSERIE: TStringField
      FieldName = 'COT_NRSERIE'
    end
    object cdsIncluirVendaCOT_TIPOVEIC: TStringField
      FieldName = 'COT_TIPOVEIC'
    end
    object cdsIncluirVendaCOT_COR: TStringField
      FieldName = 'COT_COR'
      Size = 15
    end
    object cdsIncluirVendaCOT_CDMODELO: TIntegerField
      FieldName = 'COT_CDMODELO'
    end
    object cdsIncluirVendaCOT_VALOR_TAXACAD: TFMTBCDField
      FieldName = 'COT_VALOR_TAXACAD'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_VALORENTRADA: TFMTBCDField
      FieldName = 'COT_VALORENTRADA'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_DATAPRIMPRES: TDateField
      FieldName = 'COT_DATAPRIMPRES'
    end
    object cdsIncluirVendaCOT_TPLANCE: TStringField
      FieldName = 'COT_TPLANCE'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_DTRECEBIMENTO: TDateField
      FieldName = 'COT_DTRECEBIMENTO'
    end
    object cdsIncluirVendaCOT_VALOR_RECEBER: TFMTBCDField
      FieldName = 'COT_VALOR_RECEBER'
      Precision = 18
      Size = 2
    end
    object cdsIncluirVendaCOT_FLXSPC: TStringField
      FieldName = 'COT_FLXSPC'
      Size = 1
    end
    object cdsIncluirVendaCOT_FLPROMOCAO: TStringField
      FieldName = 'COT_FLPROMOCAO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_FLPROTESTO: TStringField
      FieldName = 'COT_FLPROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsIncluirVendaCOT_SALDO_ANTERIOR: TFMTBCDField
      FieldName = 'COT_SALDO_ANTERIOR'
      Precision = 18
      Size = 2
    end
  end
  object cdsIncParcelas: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from PARCELAS R Where (R.rec_nrvend = :pnrvenda);'
    Params = <
      item
        DataType = ftInteger
        Name = 'pnrvenda'
        ParamType = ptInput
      end>
    ProviderName = 'dspAux2'
    Left = 704
    Top = 56
    object cdsIncParcelasREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsIncParcelasREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsIncParcelasREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsIncParcelasREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsIncParcelasREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsIncParcelasREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsIncParcelasREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_CODOP: TStringField
      FieldName = 'REC_CODOP'
      FixedChar = True
      Size = 3
    end
    object cdsIncParcelasREC_CDOPER: TIntegerField
      FieldName = 'REC_CDOPER'
    end
    object cdsIncParcelasREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsIncParcelasREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
    end
    object cdsIncParcelasREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsIncParcelasREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
    end
    object cdsIncParcelasREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsIncParcelasREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsIncParcelasREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsIncParcelasREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      BlobType = ftMemo
    end
    object cdsIncParcelasREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsIncParcelasREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsIncParcelasREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsIncParcelasREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      Precision = 18
      Size = 2
    end
    object cdsIncParcelasREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
    end
    object cdsIncParcelasREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      FixedChar = True
      Size = 5
    end
    object cdsIncParcelasREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
    end
  end
  object cdsParcTransferido: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from parcelas r Where (r.rec_nrvend = :prec_nrvend)'
    Params = <
      item
        DataType = ftInteger
        Name = 'prec_nrvend'
        ParamType = ptInput
      end>
    ProviderName = 'dspAux2'
    Left = 696
    Top = 128
    object cdsParcTransferidoREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsParcTransferidoREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsParcTransferidoREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsParcTransferidoREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsParcTransferidoREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsParcTransferidoREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsParcTransferidoREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_CODOP: TStringField
      FieldName = 'REC_CODOP'
      FixedChar = True
      Size = 3
    end
    object cdsParcTransferidoREC_CDOPER: TIntegerField
      FieldName = 'REC_CDOPER'
    end
    object cdsParcTransferidoREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParcTransferidoREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
    end
    object cdsParcTransferidoREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsParcTransferidoREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_REGISTRO: TStringField
      FieldName = 'REC_REGISTRO'
    end
    object cdsParcTransferidoREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsParcTransferidoREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsParcTransferidoREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsParcTransferidoREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      BlobType = ftMemo
    end
    object cdsParcTransferidoREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsParcTransferidoREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsParcTransferidoREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsParcTransferidoREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      Precision = 18
      Size = 2
    end
    object cdsParcTransferidoREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
    end
    object cdsParcTransferidoREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      FixedChar = True
      Size = 5
    end
    object cdsParcTransferidoREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
    end
  end
  object cdsEstornoCredito: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_VLPAR' +
      'C, REC_SITUACAO, REC_DTCREDITO, REC_CREDITO, REC_TPCREDITO, REC_' +
      'VALOR_DIGITADO from PARCELAS Where (REC_NRVEND = :pNRVEND) and (' +
      'REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPA' +
      'RC = :pNRPARC)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRPARC'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao2'
    Left = 328
    Top = 464
    object cdsEstornoCreditoREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsEstornoCreditoREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsEstornoCreditoREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsEstornoCreditoREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsEstornoCreditoREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsEstornoCreditoREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsEstornoCreditoREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsEstornoCreditoREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsEstornoCreditoREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsEstornoCreditoREC_VALOR_DIGITADO: TFMTBCDField
      FieldName = 'REC_VALOR_DIGITADO'
      Precision = 18
      Size = 2
    end
  end
  object dstDias: TSQLDataSet
    CommandText = 'select * from DIAS_VENCIMENTOS order by DIA_CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 32
    Top = 480
    object dstDiasDIA_CODIGO: TIntegerField
      FieldName = 'DIA_CODIGO'
      Required = True
    end
  end
  object dspDias: TDataSetProvider
    DataSet = dstDias
    Options = [poAllowCommandText]
    OnGetTableName = dspDiasGetTableName
    Left = 80
    Top = 472
  end
  object cdsDias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDias'
    Left = 128
    Top = 480
    object cdsDiasDIA_CODIGO: TIntegerField
      FieldName = 'DIA_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
  end
  object cdsParcelaBoleto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 472
    Data = {
      E80000009619E0BD010000001800000007000000000003000000E8000D504152
      5F4E5250415243454C4104000100000000000E5041525F56454E43494D454E54
      4F0400060000000000095041525F56414C4F5208000400000001000753554254
      5950450200490006004D6F6E657900095041525F42414E434F01004900000001
      000557494454480200020003000B5041525F4147454E43494101004900000001
      00055749445448020002000500095041525F434F4E5441010049000000010005
      5749445448020002000C000A5041525F43484551554501004900000001000557
      49445448020002000A000000}
    object cdsParcelasPAR_NRPARCELA: TIntegerField
      FieldName = 'PAR_NRPARCELA'
      DisplayFormat = '00'
    end
    object cdsParcelasPAR_VENCIMENTO: TDateField
      FieldName = 'PAR_VENCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasPAR_VALOR: TCurrencyField
      FieldName = 'PAR_VALOR'
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
    end
    object cdsParcelasPAR_BANCO: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_BANCO'
      EditMask = '999;0;_'
      Size = 3
    end
    object cdsParcelasPAR_AGENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_AGENCIA'
      EditMask = '9999-A;0;_'
      Size = 5
    end
    object cdsParcelasPAR_CONTA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CONTA'
      EditMask = '9999999999;0;_'
      Size = 12
    end
    object cdsParcelasPAR_CHEQUE: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CHEQUE'
      EditMask = '9999999999;0;_'
      Size = 10
    end
  end
  object cdsResumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 480
    Data = {
      610000009619E0BD01000000180000000300000000000300000061000A434453
      5F434F4449474F04000100000000000D4344535F44455343524943414F010049
      0000000100055749445448020002003200094344535F56414C4F520800040000
      0000000000}
    object cdsResumoCDS_CODIGO: TIntegerField
      FieldName = 'CDS_CODIGO'
    end
    object cdsResumoCDS_DESCRICAO: TStringField
      FieldName = 'CDS_DESCRICAO'
      Size = 50
    end
    object cdsResumoCDS_VALOR: TFloatField
      FieldName = 'CDS_VALOR'
      DisplayFormat = '###,##0.#0'
    end
  end
  object cdsListaMenus: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from MENUS Where (MEN_NOME <> '#39'-'#39') order by MEN_CODIGO'
    Params = <>
    ProviderName = 'dspPadrao2'
    Left = 736
    Top = 256
    object cdsListaMenusMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Required = True
    end
    object cdsListaMenusMEN_NOME: TStringField
      FieldName = 'MEN_NOME'
      Required = True
      Size = 50
    end
    object cdsListaMenusMEN_CODIGOPAI: TIntegerField
      FieldName = 'MEN_CODIGOPAI'
    end
    object cdsListaMenusMEN_EXISTE: TStringField
      FieldName = 'MEN_EXISTE'
      FixedChar = True
      Size = 1
    end
  end
  object dstFornecedor: TSQLDataSet
    CommandText = 'select * from FORNECEDORES Where (FOR_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 192
    Top = 472
    object dstFornecedorFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstFornecedorFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object dstFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object dstFornecedorFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstFornecedorFOR_INSCESTADUAL: TStringField
      FieldName = 'FOR_INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstFornecedorFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstFornecedorFOR_NUMERO: TIntegerField
      FieldName = 'FOR_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstFornecedorFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstFornecedorFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstFornecedorFOR_UF: TStringField
      FieldName = 'FOR_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstFornecedorFOR_FONE1: TStringField
      FieldName = 'FOR_FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstFornecedorFOR_FONE2: TStringField
      FieldName = 'FOR_FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstFornecedorFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstFornecedorFOR_OPERACAO: TIntegerField
      FieldName = 'FOR_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_CONTA: TStringField
      FieldName = 'FOR_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object dstFornecedorFOR_CONTATO1: TStringField
      FieldName = 'FOR_CONTATO1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstFornecedorFOR_CARGO1: TStringField
      FieldName = 'FOR_CARGO1'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_FONECON1: TStringField
      FieldName = 'FOR_FONECON1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstFornecedorFOR_CONTATO2: TStringField
      FieldName = 'FOR_CONTATO2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstFornecedorFOR_CARGO2: TStringField
      FieldName = 'FOR_CARGO2'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_FONECON2: TStringField
      FieldName = 'FOR_FONECON2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstFornecedorFOR_SITE: TStringField
      FieldName = 'FOR_SITE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstFornecedorFOR_CDBANC: TIntegerField
      FieldName = 'FOR_CDBANC'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_AGENCIA: TStringField
      FieldName = 'FOR_AGENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 6
    end
    object dstFornecedorFOR_DTCADA: TDateField
      FieldName = 'FOR_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_HOCADA: TStringField
      FieldName = 'FOR_HOCADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstFornecedorFOR_USUARIO_CAD: TIntegerField
      FieldName = 'FOR_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_DTALTE: TDateField
      FieldName = 'FOR_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object dstFornecedorFOR_HOALTE: TStringField
      FieldName = 'FOR_HOALTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstFornecedorFOR_USUARIO_ALT: TIntegerField
      FieldName = 'FOR_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = dstFornecedor
    Options = [poAllowCommandText]
    Left = 248
    Top = 504
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspFornecedor'
    Left = 320
    Top = 520
    object cdsFornecedorFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsFornecedorFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Required = True
      Size = 50
    end
    object cdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Required = True
      Size = 50
    end
    object cdsFornecedorFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsFornecedorFOR_INSCESTADUAL: TStringField
      FieldName = 'FOR_INSCESTADUAL'
      Size = 14
    end
    object cdsFornecedorFOR_ENDERECO: TStringField
      FieldName = 'FOR_ENDERECO'
      Size = 50
    end
    object cdsFornecedorFOR_NUMERO: TIntegerField
      FieldName = 'FOR_NUMERO'
    end
    object cdsFornecedorFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsFornecedorFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 40
    end
    object cdsFornecedorFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 40
    end
    object cdsFornecedorFOR_UF: TStringField
      FieldName = 'FOR_UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorFOR_FONE1: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_FONE1'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFornecedorFOR_FONE2: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_FONE2'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFornecedorFOR_FAX: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_FAX'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFornecedorFOR_OPERACAO: TIntegerField
      FieldName = 'FOR_OPERACAO'
      EditFormat = '000'
    end
    object cdsFornecedorFOR_CONTA: TStringField
      FieldName = 'FOR_CONTA'
      Size = 12
    end
    object cdsFornecedorFOR_CONTATO1: TStringField
      FieldName = 'FOR_CONTATO1'
      Size = 30
    end
    object cdsFornecedorFOR_CARGO1: TStringField
      FieldName = 'FOR_CARGO1'
    end
    object cdsFornecedorFOR_FONECON1: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_FONECON1'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFornecedorFOR_CONTATO2: TStringField
      FieldName = 'FOR_CONTATO2'
      Size = 30
    end
    object cdsFornecedorFOR_CARGO2: TStringField
      FieldName = 'FOR_CARGO2'
    end
    object cdsFornecedorFOR_FONECON2: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_FONECON2'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFornecedorFOR_SITE: TStringField
      FieldName = 'FOR_SITE'
      Size = 60
    end
    object cdsFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 60
    end
    object cdsFornecedorFOR_CDBANC: TIntegerField
      FieldName = 'FOR_CDBANC'
      DisplayFormat = '000'
    end
    object cdsFornecedorFOR_AGENCIA: TStringField
      FieldName = 'FOR_AGENCIA'
      EditMask = '#####-A;0;_'
      FixedChar = True
      Size = 6
    end
    object cdsFornecedorFOR_DTCADA: TDateField
      FieldName = 'FOR_DTCADA'
    end
    object cdsFornecedorFOR_HOCADA: TStringField
      FieldName = 'FOR_HOCADA'
      FixedChar = True
      Size = 5
    end
    object cdsFornecedorFOR_USUARIO_CAD: TIntegerField
      FieldName = 'FOR_USUARIO_CAD'
    end
    object cdsFornecedorFOR_DTALTE: TDateField
      FieldName = 'FOR_DTALTE'
    end
    object cdsFornecedorFOR_HOALTE: TStringField
      FieldName = 'FOR_HOALTE'
      FixedChar = True
      Size = 5
    end
    object cdsFornecedorFOR_USUARIO_ALT: TIntegerField
      FieldName = 'FOR_USUARIO_ALT'
    end
  end
  object cdsParcelaContas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 504
    Data = {
      370100009619E0BD01000000180000000D00000000000300000037010A434453
      5F4E525041524304000100000000000A4344535F4344434C4945040001000000
      00000A4344535F445456454E4304000600000000000A4344535F4454454D4953
      04000600000000000A4344535F4454504147410400060000000000094344535F
      56414C4F520800040000000000094344535F4D554C5441080004000000000009
      4344535F4A55524F5308000400000000000C4344535F444553434F4E544F0800
      040000000000094344535F42414E434F04000100000000000B4344535F414745
      4E43494101004900000001000557494454480200020007000B4344535F4E5243
      4F4E54410100490000000100055749445448020002000C000C4344535F4E5243
      48455155450100490000000100055749445448020002000A000000}
    object cdsParcelasCDS_NRPARC: TIntegerField
      FieldName = 'CDS_NRPARC'
      DisplayFormat = '00'
    end
    object cdsParcelasCDS_CDCLIE: TIntegerField
      FieldName = 'CDS_CDCLIE'
    end
    object cdsParcelasCDS_DTVENC: TDateField
      Alignment = taRightJustify
      FieldName = 'CDS_DTVENC'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasCDS_DTEMIS: TDateField
      Alignment = taRightJustify
      FieldName = 'CDS_DTEMIS'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasCDS_DTPAGA: TDateField
      Alignment = taRightJustify
      FieldName = 'CDS_DTPAGA'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasCDS_VALOR: TFloatField
      FieldName = 'CDS_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsParcelasCDS_MULTA: TFloatField
      FieldName = 'CDS_MULTA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsParcelasCDS_JUROS: TFloatField
      FieldName = 'CDS_JUROS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsParcelasCDS_DESCONTO: TFloatField
      FieldName = 'CDS_DESCONTO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsParcelasCDS_BANCO: TIntegerField
      FieldName = 'CDS_BANCO'
      DisplayFormat = '000'
    end
    object cdsParcelasCDS_AGENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'CDS_AGENCIA'
      EditMask = '9999-A;0;_'
      Size = 7
    end
    object cdsParcelasCDS_NRCONTA: TStringField
      Alignment = taRightJustify
      FieldName = 'CDS_NRCONTA'
      EditMask = '9999999999;0;_'
      Size = 12
    end
    object cdsParcelasCDS_NRCHEQUE: TStringField
      Alignment = taRightJustify
      FieldName = 'CDS_NRCHEQUE'
      EditMask = '9999999999;0;_'
      Size = 10
    end
  end
  object dstContaPagar: TSQLDataSet
    CommandText = 
      'select * from CONTASPAGAR Where (PAG_LOJA = :pLOJA) and (PAG_NRE' +
      'NTRADA = :pNRENTRADA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 624
    Top = 504
    object dstContaPagarPAG_SEQUENCIA: TIntegerField
      FieldName = 'PAG_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstContaPagarPAG_LOJA: TIntegerField
      FieldName = 'PAG_LOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstContaPagarPAG_NRENTRADA: TIntegerField
      FieldName = 'PAG_NRENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstContaPagarPAG_PARCELA: TIntegerField
      FieldName = 'PAG_PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstContaPagarPAG_QTPARCELAS: TIntegerField
      FieldName = 'PAG_QTPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_DATACOMPRA: TDateField
      FieldName = 'PAG_DATACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_DATAVENCIMENTO: TDateField
      FieldName = 'PAG_DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_NRNOTA: TStringField
      FieldName = 'PAG_NRNOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object dstContaPagarPAG_SERIENOTA: TStringField
      FieldName = 'PAG_SERIENOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstContaPagarPAG_NATUREZADESPESA: TIntegerField
      FieldName = 'PAG_NATUREZADESPESA'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField
      FieldName = 'PAG_DESCONTOANTECIPADO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstContaPagarPAG_DESCRICAO: TMemoField
      FieldName = 'PAG_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstContaPagarPAG_VALORPARCELA: TFMTBCDField
      FieldName = 'PAG_VALORPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstContaPagarPAG_SITUACAO: TStringField
      FieldName = 'PAG_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstContaPagarPAG_DATAPAGAMENTO: TDateField
      FieldName = 'PAG_DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstContaPagarPAG_VALORDESCONTO: TFMTBCDField
      FieldName = 'PAG_VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstContaPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstContaPagarPAG_MODALIDADE: TIntegerField
      FieldName = 'PAG_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_BANCO: TStringField
      FieldName = 'PAG_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstContaPagarPAG_NRCONTA: TStringField
      FieldName = 'PAG_NRCONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object dstContaPagarPAG_NRCHEQUE: TStringField
      FieldName = 'PAG_NRCHEQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object dstContaPagarPAG_USUARIO: TIntegerField
      FieldName = 'PAG_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstContaPagarPAG_AGENCIA: TStringField
      FieldName = 'PAG_AGENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspContaPagar: TDataSetProvider
    DataSet = dstContaPagar
    Options = [poAllowCommandText]
    Left = 688
    Top = 520
  end
  object cdsContaPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRENTRADA'
        ParamType = ptInput
      end>
    ProviderName = 'dspContaPagar'
    Left = 744
    Top = 504
    object cdsContaPagarPAG_SEQUENCIA: TIntegerField
      FieldName = 'PAG_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaPagarPAG_LOJA: TIntegerField
      FieldName = 'PAG_LOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaPagarPAG_PARCELA: TIntegerField
      FieldName = 'PAG_PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaPagarPAG_NRENTRADA: TIntegerField
      FieldName = 'PAG_NRENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsContaPagarPAG_QTPARCELAS: TIntegerField
      FieldName = 'PAG_QTPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_DATACOMPRA: TDateField
      FieldName = 'PAG_DATACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_DATAVENCIMENTO: TDateField
      FieldName = 'PAG_DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_NRNOTA: TStringField
      FieldName = 'PAG_NRNOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object cdsContaPagarPAG_NATUREZADESPESA: TIntegerField
      FieldName = 'PAG_NATUREZADESPESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField
      FieldName = 'PAG_DESCONTOANTECIPADO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsContaPagarPAG_DESCRICAO: TMemoField
      FieldName = 'PAG_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsContaPagarPAG_VALORPARCELA: TFMTBCDField
      FieldName = 'PAG_VALORPARCELA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsContaPagarPAG_SITUACAO: TStringField
      FieldName = 'PAG_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsContaPagarPAG_DATAPAGAMENTO: TDateField
      FieldName = 'PAG_DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsContaPagarPAG_VALORDESCONTO: TFMTBCDField
      FieldName = 'PAG_VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsContaPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsContaPagarPAG_MODALIDADE: TIntegerField
      FieldName = 'PAG_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_BANCO: TStringField
      FieldName = 'PAG_BANCO'
      FixedChar = True
      Size = 3
    end
    object cdsContaPagarPAG_USUARIO: TIntegerField
      FieldName = 'PAG_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaPagarPAG_SERIENOTA: TStringField
      FieldName = 'PAG_SERIENOTA'
      ProviderFlags = [pfInUpdate]
      EditMask = '999;1;_'
      FixedChar = True
      Size = 3
    end
    object cdsContaPagarPAG_NRCONTA: TStringField
      FieldName = 'PAG_NRCONTA'
      FixedChar = True
      Size = 12
    end
    object cdsContaPagarPAG_NRCHEQUE: TStringField
      FieldName = 'PAG_NRCHEQUE'
      FixedChar = True
      Size = 10
    end
    object cdsContaPagarPAG_AGENCIA: TStringField
      FieldName = 'PAG_AGENCIA'
      EditMask = '99999-A;0;_'
      FixedChar = True
      Size = 5
    end
  end
  object dstRegContaPagar: TSQLDataSet
    CommandText = 'select * from CONTASPAGAR Where (PAG_SEQUENCIA = :pSEQUENCIA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 40
    Top = 536
    object dstRegContaPagarPAG_SEQUENCIA: TIntegerField
      FieldName = 'PAG_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstRegContaPagarPAG_LOJA: TIntegerField
      FieldName = 'PAG_LOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstRegContaPagarPAG_PARCELA: TIntegerField
      FieldName = 'PAG_PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstRegContaPagarPAG_NRENTRADA: TIntegerField
      FieldName = 'PAG_NRENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dstRegContaPagarPAG_QTPARCELAS: TIntegerField
      FieldName = 'PAG_QTPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_DATACOMPRA: TDateField
      FieldName = 'PAG_DATACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_DATAVENCIMENTO: TDateField
      FieldName = 'PAG_DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_NRNOTA: TStringField
      FieldName = 'PAG_NRNOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object dstRegContaPagarPAG_SERIENOTA: TStringField
      FieldName = 'PAG_SERIENOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstRegContaPagarPAG_NATUREZADESPESA: TIntegerField
      FieldName = 'PAG_NATUREZADESPESA'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField
      FieldName = 'PAG_DESCONTOANTECIPADO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstRegContaPagarPAG_DESCRICAO: TMemoField
      FieldName = 'PAG_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstRegContaPagarPAG_VALORPARCELA: TFMTBCDField
      FieldName = 'PAG_VALORPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstRegContaPagarPAG_SITUACAO: TStringField
      FieldName = 'PAG_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstRegContaPagarPAG_DATAPAGAMENTO: TDateField
      FieldName = 'PAG_DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstRegContaPagarPAG_VALORDESCONTO: TFMTBCDField
      FieldName = 'PAG_VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstRegContaPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstRegContaPagarPAG_MODALIDADE: TIntegerField
      FieldName = 'PAG_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_BANCO: TStringField
      FieldName = 'PAG_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstRegContaPagarPAG_NRCONTA: TStringField
      FieldName = 'PAG_NRCONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 12
    end
    object dstRegContaPagarPAG_NRCHEQUE: TStringField
      FieldName = 'PAG_NRCHEQUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object dstRegContaPagarPAG_USUARIO: TIntegerField
      FieldName = 'PAG_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstRegContaPagarPAG_AGENCIA: TStringField
      FieldName = 'PAG_AGENCIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspRegContaPagar: TDataSetProvider
    DataSet = dstRegContaPagar
    Options = [poAllowCommandText]
    Left = 120
    Top = 528
  end
  object cdsRegContaPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRegContaPagar'
    OnCalcFields = cdsRegContaPagarCalcFields
    Left = 192
    Top = 544
    object cdsRegContaPagarPAG_SEQUENCIA: TIntegerField
      FieldName = 'PAG_SEQUENCIA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsRegContaPagarPAG_LOJA: TIntegerField
      FieldName = 'PAG_LOJA'
      Required = True
      DisplayFormat = '000'
    end
    object cdsRegContaPagarPAG_NRENTRADA: TIntegerField
      FieldName = 'PAG_NRENTRADA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsRegContaPagarPAG_QTPARCELAS: TIntegerField
      FieldName = 'PAG_QTPARCELAS'
    end
    object cdsRegContaPagarPAG_DATACOMPRA: TDateField
      Alignment = taRightJustify
      FieldName = 'PAG_DATACOMPRA'
      EditMask = '99/99/9999;1;_'
    end
    object cdsRegContaPagarPAG_DATAVENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'PAG_DATAVENCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object cdsRegContaPagarPAG_FORNECEDOR: TIntegerField
      FieldName = 'PAG_FORNECEDOR'
      DisplayFormat = '0000000'
    end
    object cdsRegContaPagarPAG_NRNOTA: TStringField
      FieldName = 'PAG_NRNOTA'
      FixedChar = True
      Size = 12
    end
    object cdsRegContaPagarPAG_SERIENOTA: TStringField
      FieldName = 'PAG_SERIENOTA'
      FixedChar = True
      Size = 3
    end
    object cdsRegContaPagarPAG_NATUREZADESPESA: TIntegerField
      FieldName = 'PAG_NATUREZADESPESA'
    end
    object cdsRegContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField
      FieldName = 'PAG_DESCONTOANTECIPADO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsRegContaPagarPAG_DESCRICAO: TMemoField
      FieldName = 'PAG_DESCRICAO'
      BlobType = ftMemo
    end
    object cdsRegContaPagarPAG_VALORPARCELA: TFMTBCDField
      FieldName = 'PAG_VALORPARCELA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsRegContaPagarPAG_SITUACAO: TStringField
      FieldName = 'PAG_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsRegContaPagarPAG_DATAPAGAMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'PAG_DATAPAGAMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object cdsRegContaPagarPAG_VALORPAGO: TFMTBCDField
      FieldName = 'PAG_VALORPAGO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsRegContaPagarPAG_VALORDESCONTO: TFMTBCDField
      FieldName = 'PAG_VALORDESCONTO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsRegContaPagarPAG_VALORJUROS: TFMTBCDField
      FieldName = 'PAG_VALORJUROS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsRegContaPagarPAG_MODALIDADE: TIntegerField
      FieldName = 'PAG_MODALIDADE'
    end
    object cdsRegContaPagarPAG_BANCO: TStringField
      FieldName = 'PAG_BANCO'
      EditMask = '999;1;_'
      FixedChar = True
      Size = 3
    end
    object cdsRegContaPagarPAG_AGENCIA: TStringField
      FieldName = 'PAG_AGENCIA'
      EditMask = '99999-A;0;_'
      FixedChar = True
      Size = 5
    end
    object cdsRegContaPagarPAG_NRCONTA: TStringField
      FieldName = 'PAG_NRCONTA'
      EditMask = '9999999999;1;_'
      FixedChar = True
      Size = 12
    end
    object cdsRegContaPagarPAG_NRCHEQUE: TStringField
      FieldName = 'PAG_NRCHEQUE'
      EditMask = '9999999999;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsRegContaPagarPAG_USUARIO: TIntegerField
      FieldName = 'PAG_USUARIO'
    end
    object cdsRegContaPagarPAG_NOME_MODA: TStringField
      FieldKind = fkLookup
      FieldName = 'PAG_NOME_MODA'
      LookupDataSet = cdsListaModas
      LookupKeyFields = 'MOD_CODIGO'
      LookupResultField = 'MOD_NOME'
      KeyFields = 'PAG_MODALIDADE'
      Size = 30
      Lookup = True
    end
    object cdsRegContaPagarPAG_TOTAL_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PAG_TOTAL_CALC'
      DisplayFormat = '###,##0.#0'
      Calculated = True
    end
    object cdsRegContaPagarPAG_PARCELA: TIntegerField
      FieldName = 'PAG_PARCELA'
      Required = True
    end
  end
  object cdsListaNaturezas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select NAT_CODIGO, NAT_NOME, NAT_TIPO from NATUREZA where (NAT_T' +
      'IPO = :pTIPO);'
    Params = <
      item
        DataType = ftString
        Name = 'pTIPO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 568
    Top = 536
    object cdsListaNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Required = True
    end
    object cdsListaNaturezasNAT_NOME: TStringField
      FieldName = 'NAT_NOME'
      Size = 30
    end
    object cdsListaNaturezasNAT_TIPO: TStringField
      FieldName = 'NAT_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsListaModas: TClientDataSet
    Aggregates = <>
    CommandText = 'Select M.MOD_CODIGO, M.MOD_NOME from MODALIDADE M'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 480
    Top = 536
    object cdsListaModasMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsListaModasMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
  end
  object cdsEstornaCP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 736
    Top = 176
  end
  object cdsListaCedenteBancos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select B.ban_codigo, B.ban_nome, B.ban_nrbanc, B.ban_nragen, B.b' +
      'an_nrcont from BANCOS B where (b.ban_flativo = '#39'S'#39')  order by b.' +
      'ban_nome'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 744
    Top = 304
    object cdsListaCedenteBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
    end
    object cdsListaCedenteBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
    object cdsListaCedenteBancosBAN_NRBANC: TIntegerField
      FieldName = 'BAN_NRBANC'
      Required = True
      DisplayFormat = '000'
    end
    object cdsListaCedenteBancosBAN_NRAGEN: TIntegerField
      FieldName = 'BAN_NRAGEN'
    end
    object cdsListaCedenteBancosBAN_NRCONT: TStringField
      FieldName = 'BAN_NRCONT'
      Size = 12
    end
  end
end
