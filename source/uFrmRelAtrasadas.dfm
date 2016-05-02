inherited frmRelAtrasadas: TfrmRelAtrasadas
  Left = 219
  Top = 154
  Caption = 'Rel'#225'torio de Parcelas Atrasadas'
  ClientHeight = 303
  ClientWidth = 437
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 437
    Height = 262
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Per'#237'odo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 140
      Top = 37
      Width = 6
      Height = 13
      Caption = #224
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 54
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Transparent = True
    end
    object spLocalizarGrupo: TSpeedButton
      Left = 137
      Top = 69
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777770077777777777770FF077777777777077FF07777
        7777770777FF077777777770777FFF00777777790777F1111077777790771117
        0B77777770799170B77777777709990B77777777770990B77777777777090B77
        777777777770B777777777777777777777777777777777777777}
      OnClick = spLocalizarGrupoClick
    end
    object lblNomeGrupo: TLabel
      Left = 171
      Top = 74
      Width = 13
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 210
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object Label4: TLabel
      Left = 72
      Top = 210
      Width = 45
      Height = 13
      Caption = 'Municipio'
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 93
      Width = 49
      Height = 13
      Caption = 'N'#186'. Venda'
      Transparent = True
    end
    object lblCliente: TLabel
      Left = 163
      Top = 111
      Width = 13
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtDTINIC: TDateEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edtDTINICExit
    end
    object edtDTFINA: TDateEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTFINAExit
    end
    object edtGrupo: TEdit
      Left = 16
      Top = 70
      Width = 121
      Height = 21
      MaxLength = 4
      TabOrder = 2
      OnChange = edtGrupoChange
      OnExit = edtGrupoExit
      OnKeyPress = edtGrupoKeyPress
    end
    object rbSituacao: TRadioGroup
      Left = 16
      Top = 129
      Width = 353
      Height = 36
      Caption = '[ Situa'#231#227'o ] '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cotas Ativas'
        'Cotas Inativas'
        'Todas Cotas')
      TabOrder = 4
    end
    object rbContemplacao: TRadioGroup
      Left = 16
      Top = 167
      Width = 353
      Height = 36
      Caption = '[ Contempla'#231#227'o ]'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Contempladas'
        'N'#227'o-Contempladas'
        'Todas as Cotas')
      TabOrder = 5
    end
    object cmbUF: TComboBox
      Left = 16
      Top = 224
      Width = 49
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 6
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PE'
        'PR'
        'PI'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
    end
    object edtCidade: TEdit
      Left = 72
      Top = 225
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 7
    end
    object edtNRVenda: TEdit
      Left = 16
      Top = 107
      Width = 121
      Height = 21
      MaxLength = 7
      TabOrder = 3
      OnChange = edtNRVendaChange
      OnExit = edtNRVendaExit
      OnKeyPress = edtNRVendaKeyPress
    end
  end
  inherited pnlBotoes: TPanel
    Top = 262
    Width = 437
    inherited BtSair: TBitBtn
      Left = 326
    end
    inherited btnVisualizar: TBitBtn
      Left = 240
      OnClick = btnVisualizarClick
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsClientesAtraso
    UserName = 'DBPipeline1'
    Left = 272
    Top = 17
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRPARC'
      FieldName = 'REC_NRPARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'REC_DTVENC'
      FieldName = 'REC_DTVENC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLPARC'
      FieldName = 'REC_VLPARC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLMULT'
      FieldName = 'REC_VLMULT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CREDITO'
      FieldName = 'REC_CREDITO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_ATRASO'
      FieldName = 'REC_ATRASO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'REC_DTPAGA'
      FieldName = 'REC_DTPAGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_PAGO'
      FieldName = 'REC_TOTAL_PAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_QTATRA'
      FieldName = 'COT_QTATRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_QTPAGA'
      FieldName = 'COT_QTPAGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLCORRIGIDO'
      FieldName = 'REC_VLCORRIGIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_CALC'
      FieldName = 'REC_TOTAL_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TXFUND_CALC'
      FieldName = 'REC_TXFUND_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TAXADM_CALC'
      FieldName = 'REC_TAXADM_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'MULTA'
      FieldName = 'MULTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'CORRIGIDO'
      FieldName = 'CORRIGIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'REC_NOSSONUMERO'
      FieldName = 'REC_NOSSONUMERO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'REC_FORMABAIXA'
      FieldName = 'REC_FORMABAIXA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'REC_TPCREDITO'
      FieldName = 'REC_TPCREDITO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
  end
  object dsClientesAtraso: TDataSource
    DataSet = dmRelatorios.cdsClientesAtraso
    Left = 320
    Top = 17
  end
  object ppRepClientesAtraso: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 
      'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbClientesAtrasados.r' +
      'tm'
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
    Left = 224
    Top = 57
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 3175
        mmTop = 1852
        mmWidth = 188648
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'Lista de Parcelas Atrasadas ate '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 66940
        mmTop = 1588
        mmWidth = 64823
        BandType = 0
      end
      object lblCotas: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'das Cotas do Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 78581
        mmTop = 7408
        mmWidth = 42069
        BandType = 0
      end
      object lblMunicipio: TppLabel
        UserName = 'lblMunicipio'
        Caption = 'das Cotas do Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 78581
        mmTop = 13494
        mmWidth = 42069
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'REC_NRPARC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 211
        mmWidth = 4868
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'REC_DTVENC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 12171
        mmTop = 264
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 45773
        mmTop = 264
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 264
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 264
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'REC_ATRASO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 120650
        mmTop = 211
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'MULTA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText21'
        DataField = 'REC_VLCORRIGIDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 176477
        mmTop = 264
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'JUROS'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 529
        mmWidth = 197380
        BandType = 8
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 1323
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 149225
        mmTop = 5821
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 5821
        mmWidth = 4763
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 1323
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 1058
        mmWidth = 19844
        BandType = 8
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 24871
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 265
        mmTop = 265
        mmWidth = 197380
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 48419
        mmTop = 1588
        mmWidth = 23813
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'TOTAL GERAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 1588
        mmWidth = 27051
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 1588
        mmWidth = 23813
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'REC_VLCORRIGIDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 172509
        mmTop = 1323
        mmWidth = 23813
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COT_NRVENDA'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 25400
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 529
          mmTop = 3175
          mmWidth = 11769
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Cota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 21431
          mmTop = 3175
          mmWidth = 9017
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Venda :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 43921
          mmTop = 3175
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Status: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 75671
          mmTop = 3175
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Cliente : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 110596
          mmTop = 3175
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 265
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Endereco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 529
          mmTop = 8731
          mmWidth = 17187
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 14288
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Plano : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 35719
          mmTop = 14288
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Credito : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 65617
          mmTop = 14288
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Taxa Adm : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 102659
          mmTop = 14288
          mmWidth = 19854
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'PC. Pagas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 140229
          mmTop = 14288
          mmWidth = 18330
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'PC.Atras:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 169863
          mmTop = 14288
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'PC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2381
          mmTop = 19579
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Vencimento.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 13494
          mmTop = 19579
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 265
          mmTop = 24077
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Valor da Parc. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 47096
          mmTop = 19579
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 80433
          mmTop = 19579
          mmWidth = 12319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Valor a Pagar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 95779
          mmTop = 19579
          mmWidth = 23368
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 120650
          mmTop = 19579
          mmWidth = 11007
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 142346
          mmTop = 19579
          mmWidth = 9271
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Juros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 164307
          mmTop = 19579
          mmWidth = 9567
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Corrigido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 180446
          mmTop = 19579
          mmWidth = 15833
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'COT_CDGRUPO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4022
          mmLeft = 12700
          mmTop = 3440
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'COT_NRCOTA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 31221
          mmTop = 3440
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'COT_NRVENDA'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '0000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 57150
          mmTop = 3440
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
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
          mmLeft = 126471
          mmTop = 3175
          mmWidth = 70908
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
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
          mmLeft = 17727
          mmTop = 8996
          mmWidth = 70115
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
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
          mmLeft = 135996
          mmTop = 8996
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
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
          mmLeft = 172509
          mmTop = 8996
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'CLI_NRFONE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 12435
          mmTop = 14288
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'COT_PLANO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 48683
          mmTop = 14288
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'COT_VALCRE'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 81756
          mmTop = 14288
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'COT_TAXA_ADM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4022
          mmLeft = 123296
          mmTop = 14288
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
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
          mmLeft = 88636
          mmTop = 8996
          mmWidth = 44715
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'COT_QTPAGA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4022
          mmLeft = 158750
          mmTop = 14552
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppDBText21: TppDBText
          UserName = 'DBText201'
          DataField = 'COT_QTATRA'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 186002
          mmTop = 14552
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          DataField = 'STATUS'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 87577
          mmTop = 3175
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 134938
          mmTop = 14288
          mmWidth = 3133
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'Total Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4191
          mmLeft = 2381
          mmTop = 1058
          mmWidth = 25019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 27781
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'REC_TOTAL_CALC'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 46567
          mmTop = 1058
          mmWidth = 23813
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'REC_CREDITO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 72761
          mmTop = 1058
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'REC_TOTAL_CALC'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 95515
          mmTop = 1058
          mmWidth = 23813
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'REC_VLCORRIGIDO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4022
          mmLeft = 176213
          mmTop = 1058
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'MULTA'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 134144
          mmTop = 1058
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'JUROS'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 155575
          mmTop = 1588
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 529
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
