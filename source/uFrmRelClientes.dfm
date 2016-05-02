inherited frmRelClientes: TfrmRelClientes
  Left = 216
  Top = 143
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 322
  ClientWidth = 413
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 413
    Height = 192
    object rgOpcoes: TRadioGroup
      Left = 16
      Top = 6
      Width = 385
      Height = 106
      Caption = '[ Ordem ]'
      ItemIndex = 0
      Items.Strings = (
        '&C'#243'digo'
        '&Alfab'#233'tica'
        '&Cidade/Bairro'
        'Cidade/&Bairro/Contratos'
        'Cidade/&Parcelas Pagas')
      TabOrder = 0
      OnClick = rgOpcoesClick
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 120
      Width = 385
      Height = 49
      Caption = '[ Situa'#231#227'o ]'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Quitados'
        'Todas as Cotas')
      TabOrder = 1
    end
  end
  inherited pnlBotoes: TPanel
    Top = 281
    Width = 413
    TabOrder = 2
    inherited BtSair: TBitBtn
      Left = 321
    end
    inherited btnVisualizar: TBitBtn
      Left = 235
      OnClick = btnVisualizarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 192
    Width = 413
    Height = 89
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Transparent = True
    end
    object Label2: TLabel
      Left = 18
      Top = 44
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Transparent = True
    end
    object edtCidade: TEdit
      Left = 18
      Top = 23
      Width = 343
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
    end
    object edtBairro: TEdit
      Left = 18
      Top = 59
      Width = 343
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 1
    end
  end
  object dstRelClientes: TSQLDataSet
    CommandText = 
      'Select CLI_CODIGO, CLI_NOME, CLI_ESTADO_CIVIL, CLI_SEXO, CLI_CGC' +
      ', CLI_CPF, CLI_NRIDEN, CLI_DTNASCIMENTO, CLI_NRFONE, CLI_NRCELUL' +
      'AR, CLI_ENDERECO, CLI_NUMCEP, CLI_BAIRRO, CLI_CIDADE, CLI_UFCLIE' +
      ' from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 8
    Top = 279
  end
  object dspRelClientes: TDataSetProvider
    DataSet = dstRelClientes
    Options = [poAllowCommandText]
    Left = 64
    Top = 279
  end
  object cdsRelClientes: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'Select CLI_CODIGO, CLI_NOME, CLI_ESTADO_CIVIL, CLI_SEXO, CLI_CGC' +
      ', CLI_CPF, CLI_NRIDEN, CLI_DTNASCIMENTO, CLI_NRFONE, CLI_NRCELUL' +
      'AR, CLI_ENDERECO, CLI_NUMCEP, CLI_BAIRRO, CLI_CIDADE, CLI_UFCLIE' +
      ' from clientes'
    Params = <>
    ProviderName = 'dspRelClientes'
    Left = 104
    Top = 279
    object cdsRelClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
      EditFormat = '0000000'
    end
    object cdsRelClientesCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsRelClientesCLI_ESTADO_CIVIL: TStringField
      FieldName = 'CLI_ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object cdsRelClientesCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsRelClientesCLI_CGC: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cdsRelClientesCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsRelClientesCLI_NRIDEN: TStringField
      FieldName = 'CLI_NRIDEN'
      Size = 11
    end
    object cdsRelClientesCLI_DTNASCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'CLI_DTNASCIMENTO'
      EditMask = '99/99/9999;0;_'
    end
    object cdsRelClientesCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsRelClientesCLI_NRCELULAR: TStringField
      FieldName = 'CLI_NRCELULAR'
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsRelClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsRelClientesCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      EditMask = '99999-999;0;_'
      FixedChar = True
      Size = 6
    end
    object cdsRelClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsRelClientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsRelClientesCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
  end
  object dsRelClientes: TDataSource
    DataSet = cdsRelClientes
    Left = 144
    Top = 280
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 240
    Top = 16
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57679
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 183621
        BandType = 0
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'lblTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5715
        mmLeft = 139637
        mmTop = 38894
        mmWidth = 17060
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1863
        mmTop = 46302
        mmWidth = 12150
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 16933
        mmTop = 46302
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 109009
        mmTop = 46302
        mmWidth = 16002
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 192088
        mmTop = 46302
        mmWidth = 10329
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 235215
        mmTop = 46302
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 276226
        mmTop = 46302
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1852
        mmTop = 51065
        mmWidth = 6646
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 25665
        mmTop = 51065
        mmWidth = 14520
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Identidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 54240
        mmTop = 51065
        mmWidth = 17611
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'C.P.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 102394
        mmTop = 51065
        mmWidth = 9948
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'C.G.C.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 134144
        mmTop = 51065
        mmWidth = 10753
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'E.Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 51329
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 206111
        mmTop = 51329
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Data Nasc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 237332
        mmTop = 51329
        mmWidth = 17992
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 56091
        mmWidth = 284692
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 529
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 529
        mmWidth = 88106
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 109009
        mmTop = 529
        mmWidth = 81492
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 192088
        mmTop = 529
        mmWidth = 41010
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 234950
        mmTop = 529
        mmWidth = 40217
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CLI_UFCLIE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 276226
        mmTop = 529
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CLI_NUMCEP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 1323
        mmTop = 4974
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'CLI_NRFONE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 25665
        mmTop = 5027
        mmWidth = 17526
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CLI_NRIDEN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 54240
        mmTop = 4974
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CLI_CPF'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 5027
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'CLI_CGC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 5027
        mmWidth = 39158
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText11'
        DataField = 'CLI_ESTADO_CIVIL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 183621
        mmTop = 5027
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CLI_SEXO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 206905
        mmTop = 5027
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText12'
        DataField = 'CLI_DTNASCIMENTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 237332
        mmTop = 4974
        mmWidth = 17198
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 9790
        mmWidth = 284692
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 265
        mmWidth = 284692
        BandType = 8
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 232305
        mmTop = 1058
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 5556
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 250561
        mmTop = 5556
        mmWidth = 4763
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250296
        mmTop = 1323
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2910
        mmTop = 1323
        mmWidth = 19770
        BandType = 8
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRelClientes
    UserName = 'DBPipeline1'
    Left = 240
    Top = 48
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CLI_ESTADO_CIVIL'
      FieldName = 'CLI_ESTADO_CIVIL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'CLI_CPF'
      FieldName = 'CLI_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CLI_NRIDEN'
      FieldName = 'CLI_NRIDEN'
      FieldLength = 11
      DisplayWidth = 11
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CLI_DTNASCIMENTO'
      FieldName = 'CLI_DTNASCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'CLI_NRCELULAR'
      FieldName = 'CLI_NRCELULAR'
      FieldLength = 13
      DisplayWidth = 13
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 6
      DisplayWidth = 6
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
  end
  object dstRelatorio: TSQLDataSet
    CommandText = 
      'select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO,' +
      ' CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, c' +
      'l.cli_sexo From Clientes cl Where (cl.cli_cidade = '#39'TERESINA'#39') G' +
      'roup by CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO' +
      ', CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, ' +
      'cl.cli_sexo Order By CL.CLI_BAIRRO, cl.cli_nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 216
    Top = 248
  end
  object dspRelatorio: TDataSetProvider
    DataSet = dstRelatorio
    Options = [poAllowCommandText]
    Left = 248
    Top = 248
  end
  object cdsCidadeBairro: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO,' +
      ' CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, c' +
      'l.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, C.cot_nrcota, C.COT_PO' +
      'SICAO, C.COT_FLCONTEMPLADO From Clientes CL inner join COTAS C o' +
      'n CL.CLI_CODIGO = C.COT_CDCLIE Where (cl.cli_cidade = '#39'TERESINA'#39 +
      ') Group by CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAI' +
      'RRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufcli' +
      'e, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, C.cot_nrcota, C.CO' +
      'T_POSICAO, C.COT_FLCONTEMPLADO Order By CL.CLI_BAIRRO, cl.cli_no' +
      'me'
    Params = <>
    ProviderName = 'dspRelatorio'
    OnCalcFields = cdsCidadeBairroCalcFields
    Left = 328
    Top = 216
    object cdsCidadeBairroCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsCidadeBairroCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsCidadeBairroCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsCidadeBairroCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsCidadeBairroCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsCidadeBairroCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsCidadeBairroCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsCidadeBairroCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsCidadeBairroCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsCidadeBairroCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsCidadeBairroCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsCidadeBairroCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCidadeBairroCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsCidadeBairroCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsCidadeBairroCLI_STATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_STATUS'
      Calculated = True
    end
    object cdsCidadeBairroCLI_FLCONT: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_FLCONT'
      Size = 15
      Calculated = True
    end
    object cdsCidadeBairroFONE: TStringField
      FieldKind = fkCalculated
      FieldName = 'FONE'
      Size = 13
      Calculated = True
    end
    object cdsCidadeBairroCEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEP'
      Size = 9
      Calculated = True
    end
  end
  object dsCidadeBairro: TDataSource
    DataSet = cdsCidadeBairro
    Left = 336
    Top = 184
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 288
    Top = 16
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 3969
        mmTop = 1588
        mmWidth = 183621
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 11377
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 11377
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 111654
        mmTop = 11377
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 214842
        mmTop = 11377
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 237596
        mmTop = 11113
        mmWidth = 11642
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 8731
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 274109
        mmTop = 11377
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 16140
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 16140
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 55827
        mmTop = 16140
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 76465
        mmTop = 16404
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Contemplado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111654
        mmTop = 16404
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'LISTA DE CLIENTES POR CONTRATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 1058
        mmWidth = 63765
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 794
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 16933
        mmTop = 794
        mmWidth = 88106
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'COT_NRVENDA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 16933
        mmTop = 4763
        mmWidth = 14023
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3683
        mmLeft = 111654
        mmTop = 794
        mmWidth = 88106
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CEP'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 214842
        mmTop = 794
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'FONE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 237596
        mmTop = 794
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'CLI_SEXO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 273051
        mmTop = 794
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'COT_CDGRUPO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 33338
        mmTop = 4763
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 50271
        mmTop = 4763
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'CLI_STATUS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 76465
        mmTop = 4763
        mmWidth = 17187
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'CLI_FLCONT'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3260
        mmLeft = 111654
        mmTop = 4763
        mmWidth = 17272
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 265
        mmWidth = 284692
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 232305
        mmTop = 1058
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 5556
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 250296
        mmTop = 5556
        mmWidth = 18785
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250296
        mmTop = 1058
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppLabel28'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 2995
          mmTop = 5556
          mmWidth = 10414
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 2954
          mmTop = 1323
          mmWidth = 4741
          BandType = 3
          GroupNo = 0
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3260
          mmLeft = 16404
          mmTop = 5821
          mmWidth = 68792
          BandType = 3
          GroupNo = 0
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'CLI_UFCLIE'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3260
          mmLeft = 16669
          mmTop = 1323
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 794
          mmWidth = 284428
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3387
          mmLeft = 43392
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 'Total Clientes por Cidade ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 37719
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 529
          mmWidth = 88900
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_BAIRRO'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 2884
          mmTop = 265
          mmWidth = 9313
          BandType = 3
          GroupNo = 1
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3683
          mmLeft = 16933
          mmTop = 529
          mmWidth = 68792
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3387
          mmLeft = 43392
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          Caption = 'Total Clientes por Bairro ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 3440
          mmTop = 1588
          mmWidth = 36322
          BandType = 5
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 794
          mmWidth = 88900
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsCidadeBairro
    UserName = 'DBPipeline2'
    Left = 320
    Top = 16
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
  end
  object cdsClientesPorBairro: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 
      'select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO,' +
      ' CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, c' +
      'l.cli_sexo From Clientes cl Where (cl.cli_cidade = '#39'TERESINA'#39') G' +
      'roup by CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO' +
      ', CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, ' +
      'cl.cli_sexo Order By CL.CLI_BAIRRO, cl.cli_nome'
    Params = <>
    ProviderName = 'dspRelatorio'
    OnCalcFields = cdsClientesPorBairroCalcFields
    Left = 312
    Top = 256
    object cdsClientesPorBairroCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientesPorBairroCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsClientesPorBairroCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsClientesPorBairroCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsClientesPorBairroCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsClientesPorBairroCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsClientesPorBairroCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsClientesPorBairroCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsClientesPorBairroCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClientesPorBairroFONE: TStringField
      FieldKind = fkCalculated
      FieldName = 'FONE'
      Size = 13
      Calculated = True
    end
    object cdsClientesPorBairroCEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEP'
      Size = 9
      Calculated = True
    end
  end
  object dsClientesBairro: TDataSource
    DataSet = cdsClientesPorBairro
    Left = 280
    Top = 256
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline3
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 184
    Top = 248
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline3'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 4763
        mmTop = 1852
        mmWidth = 183621
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 8996
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 18521
        mmTop = 8996
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 111919
        mmTop = 8996
        mmWidth = 12965
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 7673
        mmWidth = 284428
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 214313
        mmTop = 8996
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 245798
        mmTop = 8996
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 277284
        mmTop = 8996
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'LISTA DE CLIENTES POR BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 1588
        mmWidth = 57679
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 265
        mmWidth = 86519
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 265
        mmWidth = 96838
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'CEP'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3260
        mmLeft = 213784
        mmTop = 444
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        AutoSize = True
        DataField = 'FONE'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3260
        mmLeft = 245269
        mmTop = 444
        mmWidth = 7874
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'CLI_SEXO'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3175
        mmLeft = 276755
        mmTop = 529
        mmWidth = 6879
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 265
        mmWidth = 284692
        BandType = 8
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 232305
        mmTop = 1323
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 237332
        mmTop = 6085
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 250296
        mmTop = 6085
        mmWidth = 15346
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250561
        mmTop = 1323
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CLI_CIDADE'
      DataPipeline = ppDBPipeline3
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          AutoSize = True
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 3260
          mmLeft = 15875
          mmTop = 4148
          mmWidth = 14224
          BandType = 3
          GroupNo = 0
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          AutoSize = True
          DataField = 'CLI_UFCLIE'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 3260
          mmLeft = 15875
          mmTop = 265
          mmWidth = 2709
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2646
          mmTop = 0
          mmWidth = 4741
          BandType = 3
          GroupNo = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2381
          mmTop = 3969
          mmWidth = 10414
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Total Clientes por Cidade ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 37719
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 3387
          mmLeft = 43127
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 529
          mmWidth = 88900
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CLI_BAIRRO'
      DataPipeline = ppDBPipeline3
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2381
          mmTop = 265
          mmWidth = 9313
          BandType = 3
          GroupNo = 1
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          AutoSize = True
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 3260
          mmLeft = 15875
          mmTop = 529
          mmWidth = 16849
          BandType = 3
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 265
          mmTop = 3968
          mmWidth = 284692
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Caption = 'Total Clientes por Bairro ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 3440
          mmTop = 1588
          mmWidth = 36322
          BandType = 5
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 794
          mmWidth = 88900
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 3387
          mmLeft = 43127
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = dsClientesBairro
    UserName = 'DBPipeline3'
    Left = 144
    Top = 248
    object ppDBPipeline3ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline3ppField3: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline3ppField4: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline3ppField5: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPipeline3ppField6: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPipeline3ppField7: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 6
    end
    object ppDBPipeline3ppField8: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBPipeline3ppField9: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
  end
  object dstClienteParcelaPagas: TSQLDataSet
    CommandText = 
      'select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO,' +
      ' CL.CLI_ENDERECO,'#13#10'CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, ' +
      'cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, '#13#10'C.cot_nrcota, C.COT' +
      '_POSICAO, COT_VALCRE, C.COT_FLCONTEMPLADO,'#13#10'R.rec_nrparc, r.rec_' +
      'dtvenc, R.rec_dtpaga, R.rec_total_pago, R.REC_VLPARC, C.COT_TAXA' +
      '_ADM, C.COT_FUNDORES'#13#10', REC_VLMULT'#13#10'From Clientes CL'#13#10'inner join' +
      ' COTAS C on CL.CLI_CODIGO = C.COT_CDCLIE'#13#10'inner join PARCELAS R ' +
      'on R.rec_nrvend = C.COT_NRVENDA'#13#10'Where (cl.cli_cidade = :pCidade' +
      ') and not (R.rec_dtpaga is null) and (r.rec_total_pago > 0) AND ' +
      '(C.COT_POSICAO = :pPOSICAO)'#13#10'Group by CL.cli_codigo, cl.cli_nome' +
      ','#13#10'cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP,' +
      ' CL.CLI_NRFONE,'#13#10'cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.CO' +
      'T_CDGRUPO, C.cot_nrcota, C.COT_POSICAO, COT_VALCRE,'#13#10'C.COT_FLCON' +
      'TEMPLADO,'#13#10'R.rec_nrparc, r.rec_dtvenc, R.rec_dtpaga, R.rec_total' +
      '_pago, R.REC_VLPARC, C.COT_TAXA_ADM, C.COT_FUNDORES'#13#10', REC_VLMUL' +
      'T'#13#10'Order By CL.CLI_BAIRRO, cl.cli_nome;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 16
    Top = 184
  end
  object dspClienteParcelaPagas: TDataSetProvider
    DataSet = dstClienteParcelaPagas
    Options = [poAllowCommandText]
    Left = 56
    Top = 184
  end
  object cdsClienteParcelaPagas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspClienteParcelaPagas'
    OnCalcFields = cdsClienteParcelaPagasCalcFields
    Left = 96
    Top = 184
    object cdsClienteParcelaPagasCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object cdsClienteParcelaPagasCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsClienteParcelaPagasCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsClienteParcelaPagasCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsClienteParcelaPagasCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsClienteParcelaPagasCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsClienteParcelaPagasCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsClienteParcelaPagasCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsClienteParcelaPagasCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteParcelaPagasCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsClienteParcelaPagasCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsClienteParcelaPagasCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsClienteParcelaPagasCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteParcelaPagasCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteParcelaPagasREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsClienteParcelaPagasREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsClienteParcelaPagasREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsClienteParcelaPagasREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsClienteParcelaPagasREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsClienteParcelaPagasCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsClienteParcelaPagasCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsClienteParcelaPagasCLI_FLCONT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_FLCONT'
      Size = 15
    end
    object cdsClienteParcelaPagasCLI_STATUS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_STATUS'
    end
    object cdsClienteParcelaPagasFONE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FONE'
      Size = 13
    end
    object cdsClienteParcelaPagasCEP: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClienteParcelaPagasVALOR_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_CALC'
    end
    object cdsClienteParcelaPagasREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsClienteParcelaPagasATRASO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ATRASO'
    end
    object cdsClienteParcelaPagasCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
  end
  object ppRepClientesPagos: TppReport
    AutoStop = False
    DataPipeline = ppDBPClientesPagos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 8
    Top = 235
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPClientesPagos'
    object ppTitleBand3: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppImage4: TppImage
        UserName = 'Image4'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2910
        mmTop = 3175
        mmWidth = 119592
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'LISTA DE PARCELAS PAGAS DE CLIENTES POR CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 48154
        mmTop = 2646
        mmWidth = 97631
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 794
        mmWidth = 197644
        BandType = 0
      end
      object lblCidade: TppLabel
        UserName = 'lblCidade'
        Caption = 'TERESINA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 88212
        mmTop = 7585
        mmWidth = 17780
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'REC_NRPARC'
        DataPipeline = ppDBPClientesPagos
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'REC_DTVENC'
        DataPipeline = ppDBPClientesPagos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 15610
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'REC_DTPAGA'
        DataPipeline = ppDBPClientesPagos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'REC_TOTAL_PAGO'
        DataPipeline = ppDBPClientesPagos
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 120121
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'VALOR_CALC'
        DataPipeline = ppDBPClientesPagos
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'REC_VLMULT'
        DataPipeline = ppDBPClientesPagos
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'ATRASO'
        DataPipeline = ppDBPClientesPagos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPClientesPagos'
        mmHeight = 3175
        mmLeft = 61648
        mmTop = 265
        mmWidth = 9790
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 794
        mmWidth = 197644
        BandType = 8
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143934
        mmTop = 1852
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 148961
        mmTop = 6350
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 161925
        mmTop = 6350
        mmWidth = 12171
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161925
        mmTop = 1852
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'COT_NRVENDA'
      DataPipeline = ppDBPClientesPagos
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPClientesPagos'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 26194
        mmPrintPosition = 0
        object ppDBText42: TppDBText
          UserName = 'DBText42'
          DataField = 'COT_NRVENDA'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '0000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 150548
          mmTop = 11113
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          AutoSize = True
          DataField = 'CLI_NOME'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3260
          mmLeft = 46302
          mmTop = 2646
          mmWidth = 14436
          BandType = 3
          GroupNo = 0
        end
        object ppDBText44: TppDBText
          UserName = 'DBText44'
          DataField = 'CLI_ENDERECO'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 19315
          mmTop = 6615
          mmWidth = 118004
          BandType = 3
          GroupNo = 0
        end
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          DataField = 'CLI_CODIGO'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '0000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 15081
          mmTop = 2646
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'CEP'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 88371
          mmTop = 10848
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          DataField = 'FONE'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 115623
          mmTop = 10848
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          DataField = 'COT_CDGRUPO'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 12965
          mmTop = 15081
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
          DataField = 'COT_NRCOTA'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 32015
          mmTop = 15081
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          DataField = 'CLI_STATUS'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 121179
          mmTop = 15081
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'PC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 2117
          mmTop = 20902
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          Caption = 'Dt.Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 13229
          mmTop = 20902
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          Caption = 'Dt.Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 37306
          mmTop = 20902
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = 'Valor Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 121444
          mmTop = 21167
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 20108
          mmWidth = 197909
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 24871
          mmWidth = 197909
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 1323
          mmWidth = 197909
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 2646
          mmTop = 2646
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 35719
          mmTop = 2646
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 2646
          mmTop = 6615
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 81227
          mmTop = 10848
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 106892
          mmTop = 10848
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 2646
          mmTop = 10848
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppDBText51: TppDBText
          UserName = 'DBText51'
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 12435
          mmTop = 10848
          mmWidth = 67204
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          Caption = 'Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 138642
          mmTop = 11113
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 2646
          mmTop = 15081
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = 'Cota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 23283
          mmTop = 15081
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'Situa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 106363
          mmTop = 15081
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label301'
          Caption = 'Contemplado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 142875
          mmTop = 15081
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppDBText52: TppDBText
          UserName = 'DBText501'
          DataField = 'CLI_FLCONT'
          DataPipeline = ppDBPClientesPagos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 164042
          mmTop = 15081
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = 'Valor Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 75142
          mmTop = 21167
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          Caption = 'Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 102659
          mmTop = 21167
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = 'Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 61648
          mmTop = 20902
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'Taxa Adm.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 76729
          mmTop = 15081
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppDBText56: TppDBText
          UserName = 'DBText56'
          DataField = 'COT_TAXA_ADM'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 94456
          mmTop = 15081
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          Caption = 'Vl.Cr'#233'dito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 42598
          mmTop = 15081
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppDBText57: TppDBText
          UserName = 'DBText57'
          DataField = 'COT_VALCRE'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 59002
          mmTop = 15081
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'REC_TOTAL_PAGO'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 117475
          mmTop = 2381
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataPipeline = ppDBPClientesPagos
          DisplayFormat = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPClientesPagos'
          mmHeight = 3175
          mmLeft = 22225
          mmTop = 2381
          mmWidth = 7938
          BandType = 5
          GroupNo = 0
        end
        object ppLabel68: TppLabel
          UserName = 'Label68'
          Caption = 'Registro(s):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 5556
          mmTop = 2381
          mmWidth = 15240
          BandType = 5
          GroupNo = 0
        end
        object ppLabel69: TppLabel
          UserName = 'Label69'
          Caption = 'TOTAL PAGO =>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 89165
          mmTop = 2381
          mmWidth = 22648
          BandType = 5
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 88900
          mmTop = 1058
          mmWidth = 50271
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPClientesPagos: TppDBPipeline
    DataSource = dsClienteParcelaPagas
    UserName = 'DBPClientesPagos'
    Left = 40
    Top = 235
    object ppDBPClientesPagosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPClientesPagosppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPClientesPagosppField3: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPClientesPagosppField4: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPClientesPagosppField5: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPClientesPagosppField6: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPClientesPagosppField7: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 6
    end
    object ppDBPClientesPagosppField8: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBPClientesPagosppField9: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBPClientesPagosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPClientesPagosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPClientesPagosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPClientesPagosppField13: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBPClientesPagosppField14: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDBPClientesPagosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRPARC'
      FieldName = 'REC_NRPARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPClientesPagosppField16: TppField
      FieldAlias = 'REC_DTVENC'
      FieldName = 'REC_DTVENC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPClientesPagosppField17: TppField
      FieldAlias = 'REC_DTPAGA'
      FieldName = 'REC_DTPAGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPClientesPagosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_PAGO'
      FieldName = 'REC_TOTAL_PAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPClientesPagosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLPARC'
      FieldName = 'REC_VLPARC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppDBPClientesPagosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppDBPClientesPagosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBPClientesPagosppField22: TppField
      FieldAlias = 'CLI_FLCONT'
      FieldName = 'CLI_FLCONT'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppDBPClientesPagosppField23: TppField
      FieldAlias = 'CLI_STATUS'
      FieldName = 'CLI_STATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPClientesPagosppField24: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 23
    end
    object ppDBPClientesPagosppField25: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 9
      DisplayWidth = 9
      Position = 24
    end
    object ppDBPClientesPagosppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_CALC'
      FieldName = 'VALOR_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPClientesPagosppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLMULT'
      FieldName = 'REC_VLMULT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppDBPClientesPagosppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ATRASO'
      FieldName = 'ATRASO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPClientesPagosppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
  end
  object dsClienteParcelaPagas: TDataSource
    DataSet = cdsClienteParcelaPagas
    Left = 80
    Top = 235
  end
  object ppRepQuitados: TppReport
    AutoStop = False
    DataPipeline = ppDBQuitados
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 112
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBQuitados'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 55827
      mmPrintPosition = 0
      object ppImage5: TppImage
        UserName = 'Image5'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2910
        mmTop = 3175
        mmWidth = 119592
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 41804
        mmWidth = 197644
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'LISTA DE PARCELAS PAGAS DE CLIENTES POR CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 48154
        mmTop = 43656
        mmWidth = 97631
        BandType = 0
      end
      object lblCidade2: TppLabel
        UserName = 'lblCidade1'
        Caption = 'TERESINA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 48683
        mmWidth = 17727
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        DataField = 'COT_NRVENDA'
        DataPipeline = ppDBQuitados
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 154782
        mmTop = 10848
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        AutoSize = True
        DataField = 'CLI_NOME'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 46302
        mmTop = 2381
        mmWidth = 92869
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 6350
        mmWidth = 118004
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBQuitados
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 2381
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'CLI_CEP'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 10583
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'FONE'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 10583
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        DataField = 'COT_CDGRUPO'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 12965
        mmTop = 14817
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 14817
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText502'
        DataField = 'CLI_STATUS'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 121179
        mmTop = 14817
        mmWidth = 20902
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197909
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 2381
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 35719
        mmTop = 2381
        mmWidth = 9260
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label601'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 6350
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 81227
        mmTop = 10583
        mmWidth = 6615
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 106892
        mmTop = 10583
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label701'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 10583
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 10583
        mmWidth = 67204
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Caption = 'Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 10848
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 14817
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'Cota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 14817
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 14817
        mmWidth = 13758
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'Contemplado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 14817
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        DataField = 'CLI_FLCONT'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 164042
        mmTop = 14817
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Taxa Adm.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 76729
        mmTop = 14817
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        DataField = 'COT_TAXA_ADM'
        DataPipeline = ppDBQuitados
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 94456
        mmTop = 14817
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Vl.Cr'#233'dito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 42598
        mmTop = 14817
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        DataField = 'COT_VALCRE'
        DataPipeline = ppDBQuitados
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 3175
        mmLeft = 59002
        mmTop = 14817
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 794
        mmWidth = 197644
        BandType = 8
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143934
        mmTop = 1852
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 148961
        mmTop = 6350
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 161925
        mmTop = 6350
        mmWidth = 12171
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161925
        mmTop = 1852
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1852
        mmTop = 2646
        mmWidth = 19770
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataPipeline = ppDBQuitados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBQuitados'
        mmHeight = 4022
        mmLeft = 22754
        mmTop = 2646
        mmWidth = 17198
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 1323
        mmWidth = 197644
        BandType = 7
      end
    end
  end
  object dstClientesQuitados: TSQLDataSet
    CommandText = 
      'Select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO,' +
      ' CL.CLI_ENDERECO,'#13#10'CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, ' +
      'cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO,'#13#10'C.cot_nrcota, C.COT_' +
      'POSICAO, COT_VALCRE, C.COT_FLCONTEMPLADO, C.COT_TAXA_ADM, C.COT_' +
      'FUNDORES'#13#10' REC_VLMULT  From Clientes CL'#13#10'inner join COTAS C on C' +
      'L.CLI_CODIGO = C.COT_CDCLIE'#13#10'Where (cl.cli_cidade = :pCidade) AN' +
      'D (C.COT_POSICAO = :pPOSICAO)'#13#10'Group by CL.cli_codigo, cl.cli_no' +
      'me,'#13#10'cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCE' +
      'P, CL.CLI_NRFONE,'#13#10'cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.' +
      'COT_CDGRUPO, C.cot_nrcota, C.COT_POSICAO, COT_VALCRE,'#13#10'C.COT_FLC' +
      'ONTEMPLADO, C.COT_TAXA_ADM, C.COT_FUNDORES'#13#10'Order By CL.CLI_BAIR' +
      'RO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 176
    Top = 160
  end
  object dspClientesQuitados: TDataSetProvider
    DataSet = dstClientesQuitados
    Options = [poAllowCommandText]
    Left = 208
    Top = 160
  end
  object cdsClientesQuitados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPOSICAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspClientesQuitados'
    OnCalcFields = cdsClientesQuitadosCalcFields
    Left = 240
    Top = 160
    object cdsClientesQuitadosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object cdsClientesQuitadosCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsClientesQuitadosCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsClientesQuitadosCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsClientesQuitadosCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsClientesQuitadosCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsClientesQuitadosCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsClientesQuitadosCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsClientesQuitadosCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClientesQuitadosCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsClientesQuitadosCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsClientesQuitadosCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsClientesQuitadosCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsClientesQuitadosCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsClientesQuitadosCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsClientesQuitadosCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsClientesQuitadosREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsClientesQuitadosCLI_FLCONT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_FLCONT'
    end
    object cdsClientesQuitadosCLI_STATUS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_STATUS'
    end
    object cdsClientesQuitadosCLI_CEP: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_CEP'
      Size = 9
    end
    object cdsClientesQuitadosFONE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FONE'
      Size = 13
    end
  end
  object dsClientesQuitados: TDataSource
    DataSet = cdsClientesQuitados
    Left = 280
    Top = 160
  end
  object ppDBQuitados: TppDBPipeline
    DataSource = dsClientesQuitados
    UserName = 'DBQuitados'
    Left = 304
    Top = 112
    object ppDBQuitadosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBQuitadosppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBQuitadosppField3: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBQuitadosppField4: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBQuitadosppField5: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBQuitadosppField6: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBQuitadosppField7: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 6
    end
    object ppDBQuitadosppField8: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBQuitadosppField9: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBQuitadosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBQuitadosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBQuitadosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBQuitadosppField13: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBQuitadosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppDBQuitadosppField15: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBQuitadosppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppDBQuitadosppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLMULT'
      FieldName = 'REC_VLMULT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
  end
end
