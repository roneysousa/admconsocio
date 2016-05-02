object dmPesquisas: TdmPesquisas
  OldCreateOrder = False
  Left = 234
  Top = 138
  Height = 589
  Width = 809
  object dstPadrao: TSQLDataSet
    CommandText = 
      'Select MOD_CODIGO, MOD_DESCRICAO from modelos order by MOD_DESCR' +
      'ICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 24
    Top = 16
  end
  object dspPadrao: TDataSetProvider
    DataSet = dstPadrao
    Options = [poAllowCommandText]
    Left = 88
    Top = 16
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    CommandText = 'Select BAN_NOME from  bancos where (BAN_NOME = :pNOME)'
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 16
    Top = 64
  end
  object cdsModelos: TClientDataSet
    Aggregates = <>
    CommandText = 'Select MOD_DESCRICAO from modelos where (MOD_DESCRICAO = :pNOME)'
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 24
    Top = 112
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 'Select GRU_DESCRICAO from grupos Where (GRU_DESCRICAO = :pNOME)'
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 24
    Top = 160
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    CommandText = 'Select SEN_NOME from  usuarios where (SEN_NOME = :pNOME)'
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 24
    Top = 208
  end
  object cdsListaBancos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select BAN_CODIGO, BAN_NOME, BAN_NRAGEN from bancos order by BAN' +
      '_NOME'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 248
    Top = 56
    object cdsListaBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
    end
    object cdsListaBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
    object cdsListaBancosBAN_NRAGEN: TIntegerField
      FieldName = 'BAN_NRAGEN'
    end
  end
  object cdsListaModelos: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'Select MOD_CODIGO, MOD_DESCRICAO from modelos order by MOD_DESCR' +
      'ICAO'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 248
    Top = 112
    object cdsListaModelosMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
    end
    object cdsListaModelosMOD_DESCRICAO: TStringField
      FieldName = 'MOD_DESCRICAO'
    end
  end
  object dsLisBancos: TDataSource
    DataSet = cdsListaBancos
    Left = 328
    Top = 56
  end
  object dsLisModelo: TDataSource
    DataSet = cdsListaModelos
    Left = 336
    Top = 112
  end
  object cdsConsultaCota: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_CDBANC, R' +
      '.REC_NRPARC, R.REC_DTVENC, R.REC_MOV_CAIXA, R.REC_VLPARC, R.REC_' +
      'DTPAGA, R.REC_HOPAGA, R.REC_VLMULT, R.REC_CREDITO, R.REC_NOSSONU' +
      'MERO, R.REC_TPCREDITO, R.REC_TPSLIP, R.REC_PRINTSLIP, R.REC_VALO' +
      'RTITULOTITULO, R.REC_VALORTARIFABANCO, R.REC_NATUREZA, R.REC_DTC' +
      'REDITO, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_FUNDORES, CT.COT_T' +
      'AXA_ADM, R.REC_TOTAL_PAGO, R.REC_FORMABAIXA, R.REC_VALOR_DIGITAD' +
      'O, CT.COT_PLANO from PARCELAS R INNER join COTAS CT ON CT.COT_NR' +
      'VENDA = R.REC_NRVEND Where (R.REC_NRVEND = :pNRVEND) and (R.REC_' +
      'CDGRUP = :pCDGRUP) AND (R.REC_NRCOTA = :pNRCOTA) order by R.REC_' +
      'NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_NRPARC'
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
    ProviderName = 'dspPadrao'
    OnCalcFields = cdsConsultaCotaCalcFields
    Left = 240
    Top = 232
    object cdsConsultaCotaREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsConsultaCotaREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsConsultaCotaREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsConsultaCotaREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsConsultaCotaREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
      EditMask = '99/99/9999;1;_'
    end
    object cdsConsultaCotaREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
      EditMask = '99/99/9999;1;_'
    end
    object cdsConsultaCotaREC_TPCREDITO: TStringField
      FieldName = 'REC_TPCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCotaREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCotaREC_PRINTSLIP: TStringField
      FieldName = 'REC_PRINTSLIP'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCotaCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsConsultaCotaCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultaCotaREC_TOTAL_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TOTAL_CALC'
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      Calculated = True
    end
    object cdsConsultaCotaREC_TAXADM_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TAXADM_CALC'
      DisplayFormat = '##,##0.#0'
      EditFormat = '##,##0.#0'
      Calculated = True
    end
    object cdsConsultaCotaREC_TXFUND_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_TXFUND_CALC'
      DisplayFormat = '##,##0.#0'
      EditFormat = '##,##0.#0'
      Calculated = True
    end
    object cdsConsultaCotaREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCotaREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
    object cdsConsultaCotaREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsConsultaCotaCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsConsultaCotaREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      DisplayFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      DisplayFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_VALORTITULOTITULO_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_VALORTITULOTITULO_CALC'
      Calculated = True
    end
    object cdsConsultaCotaREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
    end
    object cdsConsultaCotaREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      FixedChar = True
      Size = 5
    end
    object cdsConsultaCotaREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
    end
    object cdsConsultaCotaREC_NMBANCO: TStringField
      FieldKind = fkCalculated
      FieldName = 'REC_NMBANCO'
      Calculated = True
    end
    object cdsConsultaCotaREC_VALOR_DIGITADO: TFMTBCDField
      FieldName = 'REC_VALOR_DIGITADO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCotaREC_NATUREZA: TIntegerField
      FieldName = 'REC_NATUREZA'
    end
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCOTA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 152
    Top = 16
  end
  object cdsListaGrupos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select GRU_CODIGO, GRU_DESCRICAO from grupos  order by  GRU_DESC' +
      'RICAO'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 240
    Top = 176
    object cdsListaGruposGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
    end
    object cdsListaGruposGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
  end
  object qryConsulta: TQuery
    DatabaseName = 'AdmTeste'
    Left = 392
    Top = 24
  end
  object cdsSituacaoCota: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from cotas where (COT_NRVENDA = :pNRVEND) and (COT_CDGR' +
      'UPO = :pCDGRUP) AND ( COT_NRCOTA = :pNRCOTA)'
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
    ProviderName = 'dspPadrao'
    Left = 344
    Top = 160
  end
  object cdsCotasClientes: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_PLA' +
      'NO, COT_POSICAO, COT_VALCOTA FROM cotas order by COT_NRCOTA'
    Params = <>
    ProviderName = 'dspCotasClientes'
    Left = 168
    Top = 272
    object cdsCotasClientesCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsCotasClientesCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsCotasClientesCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCotasClientesCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsCotasClientesCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsCotasClientesCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasClientesCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dstCotasClientes: TSQLDataSet
    SchemaName = 'root'
    CommandText = 
      'SELECT COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_PLA' +
      'NO, COT_POSICAO, COT_VALCOTA FROM cotas order by COT_NRCOTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 32
    Top = 264
    object dstCotasClientesCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object dstCotasClientesCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object dstCotasClientesCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object dstCotasClientesCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object dstCotasClientesCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object dstCotasClientesCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object dstCotasClientesCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dspCotasClientes: TDataSetProvider
    DataSet = dstCotasClientes
    Options = [poAllowCommandText]
    Left = 96
    Top = 248
  end
  object cdsCotasGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.COT_NRCOTA, C.COT_POSICAO, C.COT_CDCLIE, CL.CLI_NOME FR' +
      'OM cotas C INNER join clientes CL ON CL.CLI_CODIGO = C.COT_CDCLI' +
      'E WHERE (C.COT_CDGRUPO = :pCDGRUP) order by C.COT_NRCOTA'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao2'
    Left = 360
    Top = 272
    object cdsCotasGrupoCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCotasGrupoCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCotasGrupoCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsCotasGrupoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
  end
  object dstPadrao2: TSQLDataSet
    CommandText = 
      'Select C.COT_NRCOTA, C.COT_POSICAO, C.COT_CDCLIE, CL.CLI_NOME FR' +
      'OM cotas C INNER join clientes CL ON CL.CLI_CODIGO = C.COT_CDCLI' +
      'E WHERE (C.COT_CDGRUPO = :pCDGRUP) order by C.COT_NRCOTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 328
    Top = 216
  end
  object dspPadrao2: TDataSetProvider
    DataSet = dstPadrao2
    Options = [poAllowCommandText]
    Left = 392
    Top = 208
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 176
    Top = 80
  end
  object dstAux: TSQLDataSet
    CommandText = 
      'select CL.cli_dtnascimento, CL.cli_nriden, C.COT_NRVENDA, CL.CLI' +
      '_NRCELULAR, CL.CLI_NACIONALIDADE, CL.CLI_BAIRRO, C.COT_CONTRATO,' +
      ' C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO, C.COT_VALCRE, C.COT_VALACERTO, C.COT_FLCONTEMPLADO, C.CO' +
      'T_VALCOTA, C.COT_FUNDORES, C.COT_TAXA_ADM, C.COT_DTCONTEMPLACAO,' +
      ' C.COT_ASSEB_CONTEMP, CL.CLI_NOME, CL.CLI_NRFONE, CL.CLI_ENDEREC' +
      'O, CL.CLI_NUMERO, CL.cli_cgc, CL.CLI_CPF, CL.cli_estado_civil, C' +
      'L.cli_profissao, CL.cli_sexo, CL.cli_numcep, CL.cli_cidade,  CL.' +
      'CLI_UFCLIE, CL.cli_endempresa, CL.cli_foneempresa, CL.cli_baiemp' +
      'resa, CL.cli_cepempresa, CL.cli_ufempresa from COTAS C INNER JOI' +
      'N CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE Where (C.COT_NRVEN' +
      'DA = :pNRVENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptUnknown
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 88
    Top = 72
  end
  object dspAux: TDataSetProvider
    DataSet = dstAux
    Options = [poAllowCommandText]
    Left = 128
    Top = 80
  end
  object cdsIniciarGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_PLA' +
      'NO, COT_POSICAO, COT_VALCOTA, COT_CDBANCO FROM cotas Where (COT_' +
      'CDGRUPO = :pCDGRUPO)order by COT_NRCOTA'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUPO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 416
    Top = 112
    object cdsIniciarGrupoCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsIniciarGrupoCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsIniciarGrupoCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsIniciarGrupoCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsIniciarGrupoCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsIniciarGrupoCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsIniciarGrupoCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      Precision = 18
      Size = 2
    end
    object cdsIniciarGrupoCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
    end
  end
  object qryUsuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)')
    SQLConnection = dmAdmDados.sqlConn
    Left = 296
    Top = 16
    object qryUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
    end
    object qryUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
    object qryUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object qryUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      Size = 6
    end
    object qryUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      Size = 30
    end
    object qryUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
    end
    object qryUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
    end
    object qryUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      FixedChar = True
      Size = 1
    end
    object qryUsuariosSEN_FLCAIXA: TStringField
      FieldName = 'SEN_FLCAIXA'
      FixedChar = True
      Size = 1
    end
    object qryUsuariosSEN_FLSUPER: TStringField
      FieldName = 'SEN_FLSUPER'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    Left = 20
    Top = 314
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 
      'select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDC' +
      'LIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT'#13#10'INNER join clien' +
      'tes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 92
    Top = 314
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 172
    Top = 314
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 260
    Top = 306
    object cdsConsultarCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultarCOT_POSICAO: TStringField
      Alignment = taCenter
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
  end
  object cdsContratoCliente: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select CL.cli_dtnascimento, CL.cli_nriden, C.COT_NRVENDA, CL.CLI' +
      '_NRCELULAR, CL.CLI_NACIONALIDADE, CL.CLI_BAIRRO, C.COT_CONTRATO,' +
      ' C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO, C.COT_VALCRE, C.COT_VALACERTO, C.COT_FLCONTEMPLADO, C.CO' +
      'T_VALCOTA, C.COT_FUNDORES, C.COT_TAXA_ADM, C.COT_DTCONTEMPLACAO,' +
      ' C.COT_ASSEB_CONTEMP, CL.CLI_NOME, CL.CLI_NRFONE, CL.CLI_ENDEREC' +
      'O, CL.CLI_NUMERO, CL.cli_cgc, CL.CLI_CPF, CL.cli_estado_civil, C' +
      'L.cli_profissao, CL.cli_sexo, CL.cli_numcep, CL.cli_cidade,  CL.' +
      'CLI_UFCLIE, CL.cli_endempresa, CL.cli_foneempresa, CL.cli_baiemp' +
      'resa, CL.cli_cepempresa, CL.cli_ufempresa from COTAS C INNER JOI' +
      'N CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE Where (C.COT_NRVEN' +
      'DA = :pNRVENDA)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVENDA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAux'
    OnCalcFields = cdsContratoClienteCalcFields
    Left = 472
    Top = 216
    object cdsContratoClienteCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsContratoClienteCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsContratoClienteCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsContratoClienteCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsContratoClienteCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsContratoClienteCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoClienteCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsContratoClienteCOT_VALACERTO: TFMTBCDField
      FieldName = 'COT_VALACERTO'
      Precision = 18
      Size = 2
    end
    object cdsContratoClienteCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoClienteCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      Precision = 18
      Size = 2
    end
    object cdsContratoClienteCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsContratoClienteCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsContratoClienteCOT_DTCONTEMPLACAO: TDateField
      FieldName = 'COT_DTCONTEMPLACAO'
    end
    object cdsContratoClienteCOT_ASSEB_CONTEMP: TIntegerField
      FieldName = 'COT_ASSEB_CONTEMP'
    end
    object cdsContratoClienteCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsContratoClienteCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsContratoClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsContratoClienteCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
    end
    object cdsContratoClienteCLI_ESTADO_CIVIL: TStringField
      FieldName = 'CLI_ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object cdsContratoClienteCLI_PROFISSAO: TStringField
      FieldName = 'CLI_PROFISSAO'
    end
    object cdsContratoClienteCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoClienteCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsContratoClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsContratoClienteCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsContratoClienteCLI_ENDEMPRESA: TStringField
      FieldName = 'CLI_ENDEMPRESA'
      Size = 60
    end
    object cdsContratoClienteCLI_FONEEMPRESA: TStringField
      FieldName = 'CLI_FONEEMPRESA'
      Size = 13
    end
    object cdsContratoClienteCLI_BAIEMPRESA: TStringField
      FieldName = 'CLI_BAIEMPRESA'
    end
    object cdsContratoClienteCLI_CEPEMPRESA: TStringField
      FieldName = 'CLI_CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object cdsContratoClienteCLI_UFEMPRESA: TStringField
      FieldName = 'CLI_UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object cdsContratoClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsContratoClienteCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsContratoClienteCLI_NRIDEN: TStringField
      FieldName = 'CLI_NRIDEN'
      Size = 11
    end
    object cdsContratoClienteCLI_DTNASCIMENTO: TDateField
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object cdsContratoClienteCLI_NACIONALIDADE: TStringField
      FieldName = 'CLI_NACIONALIDADE'
    end
    object cdsContratoClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsContratoClienteFONE1: TStringField
      FieldKind = fkCalculated
      FieldName = 'FONE1'
      Size = 13
      Calculated = True
    end
    object cdsContratoClienteFONE_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'FONE_EMP'
      Size = 13
      Calculated = True
    end
    object cdsContratoClienteEST_CIVIL: TStringField
      FieldKind = fkCalculated
      FieldName = 'EST_CIVIL'
      Size = 12
      Calculated = True
    end
    object cdsContratoClienteCEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEP'
      Size = 9
      Calculated = True
    end
    object cdsContratoClienteCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      Size = 10
    end
    object cdsContratoClienteCPF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CPF'
      Size = 14
      Calculated = True
    end
    object cdsContratoClienteCGC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CGC'
      Size = 18
      Calculated = True
    end
    object cdsContratoClienteCLI_NRCELULAR: TStringField
      FieldName = 'CLI_NRCELULAR'
      Size = 13
    end
    object cdsContratoClienteCELULAR: TStringField
      FieldKind = fkCalculated
      FieldName = 'CELULAR'
      Size = 13
      Calculated = True
    end
  end
  object dstAvalista: TSQLDataSet
    CommandText = 'select * from AVALISTAS Where (AVA_NRVEND = :pNRVEND)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRVEND'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 456
    Top = 40
    object dstAvalistaAVA_NRVEND: TIntegerField
      FieldName = 'AVA_NRVEND'
      Required = True
    end
    object dstAvalistaAVA_CDCLIE: TIntegerField
      FieldName = 'AVA_CDCLIE'
      Required = True
    end
  end
  object dspAvalista: TDataSetProvider
    DataSet = dstAvalista
    Options = [poAllowCommandText]
    Left = 528
    Top = 40
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
    Left = 496
    Top = 96
    object cdsAvalistaAVA_NRVEND: TIntegerField
      FieldName = 'AVA_NRVEND'
      Required = True
    end
    object cdsAvalistaAVA_CDCLIE: TIntegerField
      FieldName = 'AVA_CDCLIE'
      Required = True
    end
  end
  object dstCartas: TSQLDataSet
    CommandText = 'select * from CARTAS Where (CAR_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 424
    Top = 280
  end
  object dspCartas: TDataSetProvider
    DataSet = dstCartas
    Options = [poAllowCommandText]
    Left = 496
    Top = 280
  end
  object cdsCartas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCartas'
    Left = 456
    Top = 328
    object cdsCartasCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsCartasCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      Size = 50
    end
    object cdsCartasCAR_HISTORICO: TMemoField
      FieldName = 'CAR_HISTORICO'
      BlobType = ftMemo
    end
    object cdsCartasCAR_COMPLEMENTO: TMemoField
      FieldName = 'CAR_COMPLEMENTO'
      BlobType = ftMemo
    end
    object cdsCartasCAR_MENSAVAL: TMemoField
      FieldName = 'CAR_MENSAVAL'
      BlobType = ftMemo
    end
  end
  object cdsModeloCartas: TClientDataSet
    Aggregates = <>
    CommandText = 'Select CAR_CODIGO, CAR_DESCRICAO from CARTAS'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 496
    Top = 160
  end
  object dstModalidades: TSQLDataSet
    CommandText = 'select * from MODALIDADE Where (MOD_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 88
    Top = 144
    object dstModalidadesMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstModalidadesMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstModalidadesMOD_PECOMISSAO: TBCDField
      FieldName = 'MOD_PECOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object dstModalidadesMOD_ABREVIACAO: TStringField
      FieldName = 'MOD_ABREVIACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object dstModalidadesMOD_NRPARCELA: TIntegerField
      FieldName = 'MOD_NRPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object dstModalidadesMOD_FLFIXA: TStringField
      FieldName = 'MOD_FLFIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstModalidadesMOD_CAIXA_GERAL: TIntegerField
      FieldName = 'MOD_CAIXA_GERAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstModalidadesMOD_AVISTA: TStringField
      FieldName = 'MOD_AVISTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspModas: TDataSetProvider
    DataSet = dstModalidades
    Options = [poAllowCommandText]
    Left = 160
    Top = 144
  end
  object cdsModas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspModas'
    Left = 120
    Top = 192
    object cdsModasMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsModasMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsModasMOD_PECOMISSAO: TBCDField
      FieldName = 'MOD_PECOMISSAO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 9
      Size = 2
    end
    object cdsModasMOD_ABREVIACAO: TStringField
      FieldName = 'MOD_ABREVIACAO'
      FixedChar = True
      Size = 3
    end
    object cdsModasMOD_NRPARCELA: TIntegerField
      FieldName = 'MOD_NRPARCELA'
      DisplayFormat = '00'
    end
    object cdsModasMOD_FLFIXA: TStringField
      FieldName = 'MOD_FLFIXA'
      FixedChar = True
      Size = 1
    end
    object cdsModasMOD_CAIXA_GERAL: TIntegerField
      FieldName = 'MOD_CAIXA_GERAL'
    end
    object cdsModasMOD_AVISTA: TStringField
      FieldName = 'MOD_AVISTA'
      FixedChar = True
      Size = 1
    end
  end
  object dstNaturezas: TSQLDataSet
    CommandText = 'select * from NATUREZA Where (NAT_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 32
    Top = 368
    object dstNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstNaturezasNAT_NOME: TStringField
      FieldName = 'NAT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstNaturezasNAT_TIPO: TStringField
      FieldName = 'NAT_TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstNaturezasNAT_FLDESC: TStringField
      FieldName = 'NAT_FLDESC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspNaturezas: TDataSetProvider
    DataSet = dstNaturezas
    Options = [poAllowCommandText]
    OnGetTableName = dspNaturezasGetTableName
    Left = 104
    Top = 368
  end
  object cdsNaturezas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspNaturezas'
    Left = 184
    Top = 368
    object cdsNaturezasNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsNaturezasNAT_NOME: TStringField
      FieldName = 'NAT_NOME'
      Size = 30
    end
    object cdsNaturezasNAT_TIPO: TStringField
      FieldName = 'NAT_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezasNAT_FLDESC: TStringField
      FieldName = 'NAT_FLDESC'
      FixedChar = True
      Size = 1
    end
  end
  object dstPermissoes: TSQLDataSet
    CommandText = 
      'select * from PERMISSOES_USUARIOS '#13#10'Where (USU_CODIGO = :pCODIGO' +
      ')'#13#10'and (MEN_CODIGO = :pMENU)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pMENU'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 264
    Top = 360
    object dstPermissoesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstPermissoesMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstPermissoesPG_NOVO: TStringField
      FieldName = 'PG_NOVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstPermissoesPU_ALTERAR: TStringField
      FieldName = 'PU_ALTERAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstPermissoesPU_APAGAR: TStringField
      FieldName = 'PU_APAGAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstPermissoesPU_CONSULTAR: TStringField
      FieldName = 'PU_CONSULTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspPermissoes: TDataSetProvider
    DataSet = dstPermissoes
    Options = [poAllowCommandText]
    Left = 336
    Top = 360
  end
  object cdsPermissoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pMENU'
        ParamType = ptInput
      end>
    ProviderName = 'dspPermissoes'
    Left = 416
    Top = 360
    object cdsPermissoesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object cdsPermissoesMEN_CODIGO: TIntegerField
      FieldName = 'MEN_CODIGO'
      Required = True
    end
    object cdsPermissoesPG_NOVO: TStringField
      FieldName = 'PG_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsPermissoesPU_ALTERAR: TStringField
      FieldName = 'PU_ALTERAR'
      FixedChar = True
      Size = 1
    end
    object cdsPermissoesPU_APAGAR: TStringField
      FieldName = 'PU_APAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsPermissoesPU_CONSULTAR: TStringField
      FieldName = 'PU_CONSULTAR'
      FixedChar = True
      Size = 1
    end
  end
  object dstMovCaixa: TSQLDataSet
    CommandText = 
      'select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA' +
      ')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 256
    Top = 408
    object dstMovCaixaMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
    end
    object dstMovCaixaMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object dstMovCaixaMCA_NRPARC: TIntegerField
      FieldName = 'MCA_NRPARC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = dstMovCaixa
    Options = [poAllowCommandText]
    Left = 336
    Top = 408
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMovCaixa'
    Left = 416
    Top = 408
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
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsMovCaixaMCA_VLTROCO: TFMTBCDField
      FieldName = 'MCA_VLTROCO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
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
    object cdsMovCaixaMCA_NRPARC: TIntegerField
      FieldName = 'MCA_NRPARC'
    end
    object cdsMovCaixaNATUREZA: TStringField
      FieldKind = fkLookup
      FieldName = 'NATUREZA'
      LookupDataSet = cdsListaNaturezas
      LookupKeyFields = 'NAT_CODIGO'
      LookupResultField = 'NAT_NOME'
      KeyFields = 'MCA_NATUREZA'
      Size = 30
      Lookup = True
    end
    object cdsMovCaixaMODALIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'MODALIDADE'
      LookupDataSet = cdsListaModalidades
      LookupKeyFields = 'MOD_CODIGO'
      LookupResultField = 'MOD_NOME'
      KeyFields = 'MCA_MODALIDADE'
      Size = 30
      Lookup = True
    end
  end
  object cdsListaNaturezas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select NAT_CODIGO, NAT_NOME, NAT_TIPO from NATUREZA order by NAT' +
      '_NOME'
    Params = <>
    ProviderName = 'dspListas'
    Left = 504
    Top = 344
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
  object cdsListaModalidades: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MOD_CODIGO, MOD_NOME, MOD_FLFIXA from MODALIDADE Where (M' +
      'OD_FLFIXA <> '#39'B'#39') order by MOD_NOME'
    Params = <>
    ProviderName = 'dspListas'
    Left = 512
    Top = 400
    object cdsListaModalidadesMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
    end
    object cdsListaModalidadesMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsListaModalidadesMOD_FLFIXA: TStringField
      FieldName = 'MOD_FLFIXA'
      FixedChar = True
      Size = 1
    end
  end
  object dstListas: TSQLDataSet
    CommandText = 
      'Select C.* from COTAS C Where (C.COT_CDGRUPO = :pCDGRUPO) and (C' +
      '.COT_NRCOTA = :pNRCOTA) and (C.COT_POSICAO = :pPOSICAO) and (C.C' +
      'OT_FLCONTEMPLADO = :pFLCONTEMPLADO) AND (C.COT_ALIENADO = :pALIE' +
      'NADO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUPO'
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
      end
      item
        DataType = ftString
        Name = 'pFLCONTEMPLADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pALIENADO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 24
    Top = 416
  end
  object dspListas: TDataSetProvider
    DataSet = dstListas
    Options = [poAllowCommandText]
    Left = 80
    Top = 424
  end
  object dstRelMovCaixa: TSQLDataSet
    CommandText = 
      'Select MC.MCA_TIPOMOV, MC.MCA_NATUREZA, N.NAT_NOME, Sum(MC.MCA_V' +
      'LMODALIDADE) AS VALOR from MOVIMENTO_CAIXA MC INNER JOIN NATUREZ' +
      'A N ON MC.MCA_NATUREZA = N.NAT_CODIGO Where (MC.MCA_SEQUENCIA >=' +
      ' :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) and (MC.MCA_TI' +
      'POMOV = :pTIPOMOV) AND (MC.MCA_CAIXA = :pCAIXA) Group by MC.MCA_' +
      'TIPOMOV, MC.MCA_NATUREZA, N.NAT_NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pRGINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pRGFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pTIPOMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptUnknown
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 576
    Top = 136
  end
  object dspRelMovCaixa: TDataSetProvider
    DataSet = dstRelMovCaixa
    Options = [poAllowCommandText]
    Left = 584
    Top = 184
  end
  object cdsRelMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select CX.CAI_NUMERO, CX.CAI_DTABERTURA, CX.CAI_DTFECHAMENTO, CX' +
      '.CAI_HOABERTURA, CX.CAI_HOFECHAMENTO, CX.CAI_RGINICIAL, CX.CAI_R' +
      'GFINAL, CX.CAI_CAIXA, CX.CAI_SITUACAO from CAIXA CX Where (CX.CA' +
      'I_DTABERTURA = :pDTABERTURA) And (CX.CAI_SITUACAO = :pSITUACAO)'
    Params = <
      item
        DataType = ftDate
        Name = 'pDTABERTURA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSITUACAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelMovCaixa'
    Left = 584
    Top = 240
    object cdsRelMovCaixaCAI_NUMERO: TIntegerField
      FieldName = 'CAI_NUMERO'
      Required = True
    end
    object cdsRelMovCaixaCAI_DTABERTURA: TDateField
      FieldName = 'CAI_DTABERTURA'
    end
    object cdsRelMovCaixaCAI_DTFECHAMENTO: TDateField
      FieldName = 'CAI_DTFECHAMENTO'
    end
    object cdsRelMovCaixaCAI_HOABERTURA: TStringField
      FieldName = 'CAI_HOABERTURA'
      FixedChar = True
      Size = 5
    end
    object cdsRelMovCaixaCAI_HOFECHAMENTO: TStringField
      FieldName = 'CAI_HOFECHAMENTO'
      FixedChar = True
      Size = 5
    end
    object cdsRelMovCaixaCAI_RGINICIAL: TIntegerField
      FieldName = 'CAI_RGINICIAL'
    end
    object cdsRelMovCaixaCAI_RGFINAL: TIntegerField
      FieldName = 'CAI_RGFINAL'
    end
    object cdsRelMovCaixaCAI_CAIXA: TIntegerField
      FieldName = 'CAI_CAIXA'
    end
    object cdsRelMovCaixaCAI_SITUACAO: TStringField
      FieldName = 'CAI_SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsDetalheMovCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MC.MCA_TIPOMOV, MC.MCA_NATUREZA, N.NAT_NOME, Sum(MC.MCA_V' +
      'LMODALIDADE) AS VALOR from MOVIMENTO_CAIXA MC INNER JOIN NATUREZ' +
      'A N ON MC.MCA_NATUREZA = N.NAT_CODIGO Where (MC.MCA_SEQUENCIA >=' +
      ' :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) and (MC.MCA_TI' +
      'POMOV = :pTIPOMOV) AND (MC.MCA_CAIXA = :pCAIXA) Group by MC.MCA_' +
      'TIPOMOV, MC.MCA_NATUREZA, N.NAT_NOME'
    Params = <
      item
        DataType = ftInteger
        Name = 'pRGINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pRGFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pTIPOMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRelMovCaixa'
    Left = 592
    Top = 280
    object cdsDetalheMovCaixaMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsDetalheMovCaixaMCA_NATUREZA: TIntegerField
      FieldName = 'MCA_NATUREZA'
    end
    object cdsDetalheMovCaixaNAT_NOME: TStringField
      FieldName = 'NAT_NOME'
      Size = 30
    end
    object cdsDetalheMovCaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
  end
  object cdsClienteAlienado: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'Select C.* from COTAS C Where (C.COT_CDGRUPO = :pCDGRUPO) and (C' +
      '.COT_NRCOTA = :pNRCOTA) and (C.COT_POSICAO = :pPOSICAO) and (C.C' +
      'OT_FLCONTEMPLADO = :pFLCONTEMPLADO) AND (C.COT_ALIENADO = :pALIE' +
      'NADO)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRCOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pFLCONTEMPLADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pALIENADO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspListas'
    Left = 592
    Top = 328
    object cdsClienteAlienadoCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsClienteAlienadoCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsClienteAlienadoCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsClienteAlienadoCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsClienteAlienadoCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      Size = 10
    end
    object cdsClienteAlienadoCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsClienteAlienadoCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_DIAASS: TStringField
      FieldName = 'COT_DIAASS'
    end
    object cdsClienteAlienadoCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
    end
    object cdsClienteAlienadoCOT_CODBEM: TStringField
      FieldName = 'COT_CODBEM'
      Size = 10
    end
    object cdsClienteAlienadoCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_VALACERTO: TFMTBCDField
      FieldName = 'COT_VALACERTO'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_TIPO: TStringField
      FieldName = 'COT_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_DTVENCIMENTO: TDateField
      FieldName = 'COT_DTVENCIMENTO'
    end
    object cdsClienteAlienadoCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_TAXA_ADESAO: TFMTBCDField
      FieldName = 'COT_TAXA_ADESAO'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
    end
    object cdsClienteAlienadoCOT_NMBANCO: TStringField
      FieldName = 'COT_NMBANCO'
    end
    object cdsClienteAlienadoCOT_CIDADE_BANCO: TStringField
      FieldName = 'COT_CIDADE_BANCO'
    end
    object cdsClienteAlienadoCOT_ESPECIE: TStringField
      FieldName = 'COT_ESPECIE'
    end
    object cdsClienteAlienadoCOT_MARCA: TStringField
      FieldName = 'COT_MARCA'
    end
    object cdsClienteAlienadoCOT_ASSEMBLEIAFILTRO: TIntegerField
      FieldName = 'COT_ASSEMBLEIAFILTRO'
    end
    object cdsClienteAlienadoCOT_VALORLANCE: TFMTBCDField
      FieldName = 'COT_VALORLANCE'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_DTCONTEMPLACAO: TDateField
      FieldName = 'COT_DTCONTEMPLACAO'
    end
    object cdsClienteAlienadoCOT_ASSEB_CONTEMP: TIntegerField
      FieldName = 'COT_ASSEB_CONTEMP'
    end
    object cdsClienteAlienadoCOT_DTALIENACAO: TDateField
      FieldName = 'COT_DTALIENACAO'
    end
    object cdsClienteAlienadoCOT_MARCA_VEIC: TStringField
      FieldName = 'COT_MARCA_VEIC'
    end
    object cdsClienteAlienadoCOT_MODELO_VEIC: TStringField
      FieldName = 'COT_MODELO_VEIC'
    end
    object cdsClienteAlienadoCOT_ANO_FAB: TIntegerField
      FieldName = 'COT_ANO_FAB'
    end
    object cdsClienteAlienadoCOT_ANO_MOD: TIntegerField
      FieldName = 'COT_ANO_MOD'
    end
    object cdsClienteAlienadoCOT_CHASSI: TStringField
      FieldName = 'COT_CHASSI'
      Size = 25
    end
    object cdsClienteAlienadoCOT_DATA_LIB: TDateField
      FieldName = 'COT_DATA_LIB'
    end
    object cdsClienteAlienadoCOT_ALIENADO: TStringField
      FieldName = 'COT_ALIENADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_DESALIENADO: TStringField
      FieldName = 'COT_DESALIENADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_AVAL1: TIntegerField
      FieldName = 'COT_AVAL1'
    end
    object cdsClienteAlienadoCOT_AVAL2: TIntegerField
      FieldName = 'COT_AVAL2'
    end
    object cdsClienteAlienadoCOT_NRSERIE: TStringField
      FieldName = 'COT_NRSERIE'
    end
    object cdsClienteAlienadoCOT_TIPOVEIC: TStringField
      FieldName = 'COT_TIPOVEIC'
    end
    object cdsClienteAlienadoCOT_COR: TStringField
      FieldName = 'COT_COR'
      Size = 15
    end
    object cdsClienteAlienadoCOT_CDMODELO: TIntegerField
      FieldName = 'COT_CDMODELO'
    end
    object cdsClienteAlienadoCOT_VALOR_TAXACAD: TFMTBCDField
      FieldName = 'COT_VALOR_TAXACAD'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_VALORENTRADA: TFMTBCDField
      FieldName = 'COT_VALORENTRADA'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_DATAPRIMPRES: TDateField
      FieldName = 'COT_DATAPRIMPRES'
    end
    object cdsClienteAlienadoCOT_TPLANCE: TStringField
      FieldName = 'COT_TPLANCE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAlienadoCOT_DTRECEBIMENTO: TDateField
      FieldName = 'COT_DTRECEBIMENTO'
    end
    object cdsClienteAlienadoCOT_VALOR_RECEBER: TFMTBCDField
      FieldName = 'COT_VALOR_RECEBER'
      Precision = 18
      Size = 2
    end
    object cdsClienteAlienadoCOT_FLXSPC: TStringField
      FieldName = 'COT_FLXSPC'
      Size = 1
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from Caixa Where (CAI_NUMERO = :pNUMERO)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspListas'
    Left = 600
    Top = 376
    object cdsCaixaCAI_NUMERO: TIntegerField
      FieldName = 'CAI_NUMERO'
      Required = True
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
    object cdsCaixaCAI_SQINICIAL: TIntegerField
      FieldName = 'CAI_SQINICIAL'
    end
    object cdsCaixaCAI_SQFINAL: TIntegerField
      FieldName = 'CAI_SQFINAL'
    end
  end
  object cdsMovModalidade: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MC.MCA_MODALIDADE, M.MOD_NOME, Sum(MC.MCA_VLMODALIDADE) A' +
      'S VALOR from MOVIMENTO_CAIXA MC INNER JOIN MODALIDADE M ON MC.MC' +
      'A_MODALIDADE = M.MOD_CODIGO Where (MC.MCA_SEQUENCIA >= :pRGINICI' +
      'AL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND (MC.MCA_CAIXA = :pCA' +
      'IXA) AND (MC.MCA_TIPOMOV <> :pTIPOMOV) Group by MC.MCA_MODALIDAD' +
      'E, M.MOD_NOME;'
    Params = <
      item
        DataType = ftInteger
        Name = 'pRGINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pRGFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pTIPOMOV'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspListas'
    Left = 592
    Top = 88
    object cdsMovModalidadeMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
    end
    object cdsMovModalidadeMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsMovModalidadeVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object cdsVerificaBanco: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select P.REC_CDBANC from PARCELAS P Where (P.REC_nrvend = :pVEND' +
      'A) AND (P.REC_CDGRUP = :pCDGRUP) AND (P.REC_NRCOTA = :pNRCOTA) A' +
      'ND (P.REC_DTPAGA IS NULL) Group by P.REC_CDBANC'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
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
    ProviderName = 'dspListas'
    Left = 600
    Top = 424
    object cdsVerificaBancoREC_CDBANC: TIntegerField
      FieldName = 'REC_CDBANC'
    end
  end
  object cdsTitulos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 16
    Data = {
      B30100009619E0BD01000000180000000F000000000003000000B3010F434453
      5F4E4F53534F4E554D45524F0100490000000100055749445448020002001400
      0A4344535F445456454E430100490000000100055749445448020002000A000A
      4344535F4454504147410100490000000100055749445448020002000A000A43
      44535F4454435245440100490000000100055749445448020002000A000C4344
      535F564C5441524946410800040000000000134344535F4F55545241535F4445
      5350455341530800040000000000124344535F4A55524F535F444553434F4E54
      4F0800040000000000104344535F494F465F444553434F4E544F080004000000
      0000104344535F564C41424154494D454E544F08000400000000000A4344535F
      564C4445534308000400000000000E4344535F564C524543454249444F080004
      00000000000E4344535F4A55524F535F4D4F5241080004000000000017434453
      5F4F5554524F535F5245434542494D454E544F53080004000000000014434453
      5F56414C4F525F4C414E43414D454E544F0800040000000000134344535F5641
      4C4F525F444F43554D454E544F08000400000000000000}
    object cdsTitulosCDS_NOSSONUMERO: TStringField
      FieldName = 'CDS_NOSSONUMERO'
    end
    object cdsTitulosCDS_DTVENC: TStringField
      FieldName = 'CDS_DTVENC'
      Size = 10
    end
    object cdsTitulosCDS_DTPAGA: TStringField
      FieldName = 'CDS_DTPAGA'
      Size = 10
    end
    object cdsTitulosCDS_DTCRED: TStringField
      FieldName = 'CDS_DTCRED'
      Size = 10
    end
    object cdsTitulosCDS_VLTARIFA: TFloatField
      FieldName = 'CDS_VLTARIFA'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_OUTRAS_DESPESAS: TFloatField
      FieldName = 'CDS_OUTRAS_DESPESAS'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_JUROS_DESCONTO: TFloatField
      FieldName = 'CDS_JUROS_DESCONTO'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_IOF_DESCONTO: TFloatField
      FieldName = 'CDS_IOF_DESCONTO'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_VLABATIMENTO: TFloatField
      FieldName = 'CDS_VLABATIMENTO'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_VLDESC: TFloatField
      FieldName = 'CDS_VLDESC'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_VLRECEBIDO: TFloatField
      FieldName = 'CDS_VLRECEBIDO'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_JUROS_MORA: TFloatField
      FieldName = 'CDS_JUROS_MORA'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_OUTROS_RECEBIMENTOS: TFloatField
      FieldName = 'CDS_OUTROS_RECEBIMENTOS'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_VALOR_LANCAMENTO: TFloatField
      FieldName = 'CDS_VALOR_LANCAMENTO'
      DisplayFormat = '###,##0.#0'
    end
    object cdsTitulosCDS_VALOR_DOCUMENTO: TFloatField
      FieldName = 'CDS_VALOR_DOCUMENTO'
      DisplayFormat = '###,##0.#0'
    end
  end
  object gbTitulo1: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Cedente.NumeroCPFCGC = '67776116653'
    Cedente.Nome = 'Genilton Barbosa'
    Cedente.Endereco.Rua = 'Rua Alagoas'
    Cedente.Endereco.Numero = '242'
    Cedente.Endereco.Complemento = 'apto 01'
    Cedente.Endereco.Bairro = 'Sagrada Fam'#237'lia'
    Cedente.Endereco.Cidade = 'Vi'#231'osa'
    Cedente.Endereco.Estado = 'MG'
    Cedente.Endereco.CEP = '36570000'
    Cedente.Endereco.EMail = 'genilton@hotmail.com'
    Cedente.ContaBancaria.Banco.Codigo = '341'
    Cedente.ContaBancaria.CodigoAgencia = '3066'
    Cedente.ContaBancaria.NumeroConta = '17837'
    Cedente.ContaBancaria.DigitoConta = '1'
    Cedente.ContaBancaria.NomeCliente = 'Genilton Barbosa'
    Cedente.CodigoCedente = '17837'
    Cedente.DigitoCodigoCedente = '1'
    Sacado.TipoInscricao = tiPessoaFisica
    Sacado.NumeroCPFCGC = '12345678901'
    Sacado.Nome = 'Jo'#227'o da Silva'
    Sacado.Endereco.Rua = 'Av. P. H. Rolfs'
    Sacado.Endereco.Numero = '324'
    Sacado.Endereco.Complemento = 'apto 220'
    Sacado.Endereco.Bairro = 'Centro'
    Sacado.Endereco.Cidade = 'Vi'#231'osa'
    Sacado.Endereco.Estado = 'MG'
    Sacado.Endereco.CEP = '36570000'
    Sacado.Endereco.EMail = 'joao@silva.com.br'
    SeuNumero = '9876'
    NossoNumero = '1234'
    NumeroDocumento = '4567'
    Carteira = '175'
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    DataProcessamento = 37388.000000000000000000
    DataDocumento = 37386.000000000000000000
    DataVencimento = 37396.000000000000000000
    DataAbatimento = 37391.000000000000000000
    DataDesconto = 37395.000000000000000000
    DataMoraJuros = 37397.000000000000000000
    DataProtesto = 37401.000000000000000000
    DataBaixa = 37427.000000000000000000
    ValorDocumento = 100.000000000000000000
    ValorAbatimento = 20.000000000000000000
    ValorDesconto = 0.200000000000000000
    ValorMoraJuros = 0.350000000000000000
    Instrucoes.Strings = (
      'Este boleto '#233' apenas para teste')
    EmissaoBoleto = ebClienteEmite
    Left = 400
    Top = 160
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 1
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 440
    Top = 200
  end
  object dstGrupoUsuarios: TSQLDataSet
    CommandText = 'select * from GRUPOS_USUARIOS Where (GPU_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 128
    Top = 456
    object dstGrupoUsuariosGPU_CODIGO: TIntegerField
      FieldName = 'GPU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstGrupoUsuariosGPU_GRUPO: TStringField
      FieldName = 'GPU_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object dstGrupoUsuariosGPU_DESCRICAO: TStringField
      FieldName = 'GPU_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspGrupoUsuarios: TDataSetProvider
    DataSet = dstGrupoUsuarios
    Options = [poAllowCommandText]
    OnGetTableName = dspGrupoUsuariosGetTableName
    Left = 192
    Top = 424
  end
  object cdsGruposUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrupoUsuarios'
    Left = 256
    Top = 456
    object cdsGruposUsuariosGPU_CODIGO: TIntegerField
      FieldName = 'GPU_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsGruposUsuariosGPU_GRUPO: TStringField
      FieldName = 'GPU_GRUPO'
    end
    object cdsGruposUsuariosGPU_DESCRICAO: TStringField
      FieldName = 'GPU_DESCRICAO'
      Size = 40
    end
  end
  object cdsListaBanco: TClientDataSet
    Aggregates = <>
    CommandText = 'Select BAN_CODIGO, BAN_NOME from BANCOS'
    Params = <>
    ProviderName = 'dspListaBancos'
    Left = 512
    Top = 448
    object cdsListaBancoBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
    end
    object cdsListaBancoBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
  end
  object dstListaBancos: TSQLDataSet
    CommandText = 'Select BAN_CODIGO, BAN_NOME from BANCOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 360
    Top = 464
  end
  object dspListaBancos: TDataSetProvider
    DataSet = dstListaBancos
    Options = [poAllowCommandText]
    Left = 440
    Top = 464
  end
  object dstAutenticaUsuario: TSQLDataSet
    CommandText = 'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptUnknown
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 648
    Top = 160
  end
  object dspAuteUsuario: TDataSetProvider
    DataSet = dstAutenticaUsuario
    Options = [poAllowCommandText]
    Left = 656
    Top = 224
  end
  object cdsAuteUsuario: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspAuteUsuario'
    Left = 656
    Top = 272
    object cdsAuteUsuarioSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
    end
    object cdsAuteUsuarioSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
    object cdsAuteUsuarioSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object cdsAuteUsuarioSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      Size = 6
    end
    object cdsAuteUsuarioSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      Size = 30
    end
    object cdsAuteUsuarioSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
    end
    object cdsAuteUsuarioSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
    end
    object cdsAuteUsuarioSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      FixedChar = True
      Size = 1
    end
    object cdsAuteUsuarioSEN_FLCAIXA: TStringField
      FieldName = 'SEN_FLCAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsAuteUsuarioSEN_FLSUPER: TStringField
      FieldName = 'SEN_FLSUPER'
      FixedChar = True
      Size = 1
    end
    object cdsAuteUsuarioUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      FixedChar = True
      Size = 1
    end
    object cdsAuteUsuarioSEN_CDGRUP: TIntegerField
      FieldName = 'SEN_CDGRUP'
    end
  end
  object cdsMovModalidade2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV, Sum(MC.MCA' +
      '_VLMODALIDADE) AS VALOR  from MOVIMENTO_CAIXA MC INNER JOIN MODA' +
      'LIDADE M ON MC.MCA_MODALIDADE = M.MOD_CODIGO Where (MC.MCA_SEQUE' +
      'NCIA >= :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND  (M' +
      'C.MCA_CAIXA = :pCAIXA) and (MC.MCA_MODALIDADE = :pMODALIDADE) an' +
      'd ((MC.MCA_TIPOMOV = :pTIPOMOV1) or (MC.MCA_TIPOMOV = :pTIPOMOV2' +
      ')) Group by MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV'
    Params = <
      item
        DataType = ftInteger
        Name = 'pRGINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pRGFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pMODALIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pTIPOMOV1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pTIPOMOV2'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspListas'
    Left = 672
    Top = 344
    object cdsMovModalidade2MCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
    end
    object cdsMovModalidade2MOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsMovModalidade2MCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsMovModalidade2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object cdsListaCotas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select ct.cot_nrvenda, ct.cot_cdgrupo, ct.cot_nrcota, ct.cot_pos' +
      'icao from COTAS CT Order by ct.cot_cdgrupo, ct.cot_nrcota'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 672
    Top = 56
    object cdsListaCotasCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsListaCotasCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsListaCotasCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsListaCotasCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsMovModaCredito: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV, Sum(MC.MCA' +
      '_VLMODALIDADE) AS VALOR  from MOVIMENTO_CAIXA MC INNER JOIN MODA' +
      'LIDADE M ON MC.MCA_MODALIDADE = M.MOD_CODIGO Where (MC.MCA_SEQUE' +
      'NCIA >= :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND  (M' +
      'C.MCA_CAIXA = :pCAIXA) and (MC.MCA_MODALIDADE = :pMODALIDADE) an' +
      'd (MC.MCA_TIPOMOV = :pTIPOMOV1) Group by MC.MCA_MODALIDADE, M.MO' +
      'D_NOME, MC.MCA_TIPOMOV'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pRGINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pRGFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pCAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pMODALIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pTIPOMOV1'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspListas'
    Left = 672
    Top = 408
    object cdsMovModaCreditoMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
    end
    object cdsMovModaCreditoMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsMovModaCreditoMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsMovModaCreditoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object cdsNossoNumero: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select P.rec_nrvend, p.rec_nrparc, P.rec_dtvenc, P.REC_VLPARC, P' +
      '.rec_nossonumero, C.cot_taxa_adm, C.cot_fundores, C.cot_cdgrupo,' +
      ' C.cot_nrcota, C.cot_posicao, CL.cli_nome from Parcelas P INNER ' +
      'JOIN COTAS C ON C.COT_NRVENDA = P.rec_nrvend INNER JOIN CLIENTES' +
      ' CL ON CL.CLI_CODIGO = C.cot_cdclie Where (p.rec_nossonumero = :' +
      'pNosso) and (p.rec_cdbanc = :pcdbanc) and (C.cot_posicao = :pPos' +
      'icao);'
    Params = <
      item
        DataType = ftString
        Name = 'pNosso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pcdbanc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPosicao'
        ParamType = ptInput
      end>
    ProviderName = 'dspNossoNumero'
    OnCalcFields = cdsNossoNumeroCalcFields
    Left = 680
    Top = 464
    object cdsNossoNumeroREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsNossoNumeroREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsNossoNumeroCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsNossoNumeroCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsNossoNumeroCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsNossoNumeroCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsNossoNumeroREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsNossoNumeroREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsNossoNumeroCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsNossoNumeroCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsNossoNumeroREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsNossoNumeroTXADM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TXADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Calculated = True
    end
    object cdsNossoNumeroTXFUND: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TXFUND'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Calculated = True
    end
    object cdsNossoNumeroVLPAGAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLPAGAR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Calculated = True
    end
  end
  object dstNossoNumero: TSQLDataSet
    CommandText = 
      'Select P.rec_nrvend, p.rec_nrparc, P.rec_dtvenc, P.rec_dtpaga, P' +
      '.REC_VLPARC, P.rec_nossonumero, C.cot_taxa_adm, C.cot_fundores, ' +
      'C.cot_cdgrupo, C.cot_nrcota, C.cot_posicao, CL.cli_nome from Par' +
      'celas P INNER JOIN COTAS C ON C.COT_NRVENDA = P.rec_nrvend INNER' +
      ' JOIN CLIENTES CL ON CL.CLI_CODIGO = C.cot_cdclie Where (p.rec_n' +
      'ossonumero = :pNosso) and (p.rec_cdbanc = :pcdbanc)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNosso'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pcdbanc'
        ParamType = ptUnknown
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 560
    Top = 488
  end
  object dspNossoNumero: TDataSetProvider
    DataSet = dstNossoNumero
    Options = [poAllowCommandText]
    Left = 608
    Top = 472
  end
  object cdsBaixaNosso: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select P.rec_nrvend, p.rec_nrparc, P.rec_dtvenc, P.rec_dtpaga, P' +
      '.REC_VLPARC, P.rec_nossonumero, C.cot_taxa_adm, C.cot_fundores, ' +
      'C.cot_cdgrupo, C.cot_nrcota, C.cot_posicao, CL.cli_nome from Par' +
      'celas P INNER JOIN COTAS C ON C.COT_NRVENDA = P.rec_nrvend INNER' +
      ' JOIN CLIENTES CL ON CL.CLI_CODIGO = C.cot_cdclie Where (p.rec_n' +
      'ossonumero = :pNosso) and (p.rec_cdbanc = :pcdbanc)'
    Params = <
      item
        DataType = ftString
        Name = 'pNosso'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pcdbanc'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspNossoNumero'
    OnCalcFields = cdsBaixaNossoCalcFields
    Left = 488
    Top = 488
    object cdsBaixaNossoREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsBaixaNossoREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsBaixaNossoREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsBaixaNossoREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsBaixaNossoREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsBaixaNossoREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsBaixaNossoCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsBaixaNossoCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsBaixaNossoCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsBaixaNossoCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsBaixaNossoCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsBaixaNossoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsBaixaNossoTXADM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TXADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsBaixaNossoTXFUND: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TXFUND'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsBaixaNossoVLPAGAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VLPAGAR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
  end
  object cdsListaParcelasVenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select R.rec_nrvend, R.rec_cdgrup, R.rec_nrcota, R.rec_nrparc, R' +
      '.rec_dtvenc, R.rec_dtpaga, R.rec_total_pago from parcelas R Wher' +
      'e (R.REC_NRVEND = :pVENDA) AND ((R.rec_dtpaga IS null) or (R.rec' +
      '_total_pago IS NULL))'
    Params = <
      item
        DataType = ftInteger
        Name = 'pVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 48
    Top = 488
    object cdsListaParcelasVendaREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsListaParcelasVendaREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsListaParcelasVendaREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsListaParcelasVendaREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsListaParcelasVendaREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsListaParcelasVendaREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsListaParcelasVendaREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
  end
  object dstAtualizaSaldo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 152
    Top = 504
  end
  object dspAtualizaSaldo: TDataSetProvider
    DataSet = dstAtualizaSaldo
    Options = [poAllowCommandText]
    OnGetTableName = dspAtualizaSaldoGetTableName
    Left = 216
    Top = 520
  end
  object cdsAtualizaSaldo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtualizaSaldo'
    Left = 280
    Top = 504
  end
end
