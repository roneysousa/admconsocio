inherited frmRelContasRecebidas: TfrmRelContasRecebidas
  Left = 244
  Top = 179
  Caption = 'Relat'#243'rio Contas Recebidas por Per'#237'odo'
  ClientHeight = 347
  ClientWidth = 410
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 410
    Height = 306
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = '&Per'#237'odo'
      FocusControl = edtDTINIC
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
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Transparent = True
    end
    object spLocalizarGrupo: TSpeedButton
      Left = 137
      Top = 71
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
      Top = 76
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
      Top = 218
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object Label4: TLabel
      Left = 72
      Top = 218
      Width = 45
      Height = 13
      Caption = 'Municipio'
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 175
      Width = 34
      Height = 13
      Caption = 'Banco:'
      Transparent = True
    end
    object spLocalizarBanco: TSpeedButton
      Left = 118
      Top = 191
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
      OnClick = spLocalizarBancoClick
    end
    object lblNomeBanco: TLabel
      Left = 152
      Top = 196
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
      OnKeyPress = edtDTINICKeyPress
    end
    object edtDTFINA: TDateEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTFINAExit
      OnKeyPress = edtDTFINAKeyPress
    end
    object edtGrupo: TEdit
      Left = 16
      Top = 72
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
      Top = 98
      Width = 353
      Height = 36
      Caption = '[ Situa'#231#227'o ] '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cotas Ativas'
        'Cotas Inativas'
        'Todas Cotas')
      TabOrder = 3
    end
    object cmbUF: TComboBox
      Left = 16
      Top = 232
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
      Top = 233
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 7
    end
    object rbContemplacao: TRadioGroup
      Left = 16
      Top = 136
      Width = 353
      Height = 36
      Caption = '[ Contempla'#231#227'o ]'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Contempladas'
        'N'#227'o-Contempladas'
        'Todas as Cotas')
      TabOrder = 4
    end
    object edtBanco: TEdit
      Left = 16
      Top = 192
      Width = 100
      Height = 21
      MaxLength = 3
      TabOrder = 5
      OnChange = edtBancoChange
      OnExit = edtBancoExit
      OnKeyPress = edtBancoKeyPress
    end
    object rbTipoPagas: TRadioGroup
      Left = 16
      Top = 264
      Width = 286
      Height = 34
      Caption = '[ Tipo de Relat'#243'rio Pagas ] '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Todas'
        '&Caixa'
        '&Banco')
      TabOrder = 8
    end
  end
  inherited pnlBotoes: TPanel
    Top = 306
    Width = 410
    inherited BtSair: TBitBtn
      Left = 326
    end
    inherited btnVisualizar: TBitBtn
      Left = 240
      OnClick = btnVisualizarClick
    end
  end
  object ppRepListaClientes: TppReport
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
    Template.FileName = 'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbContasRecebidas.rtm'
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
    Left = 297
    Top = 88
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2646
        mmTop = 2381
        mmWidth = 188648
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object lblTitulo2: TppLabel
        UserName = 'lblTitulo2'
        Caption = 'Lista de Parcelas Pagas no Per'#237'odo de  99/99/9999 A 99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 85725
        mmTop = 529
        mmWidth = 128323
        BandType = 0
      end
      object lblCotas2: TppLabel
        UserName = 'lblCotas2'
        Caption = 'das Cotas do Grupo:1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 117475
        mmTop = 5292
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Nosso Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 26194
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 44979
        mmTop = 26194
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 26194
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 69056
        mmTop = 26194
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Parc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 26194
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Dt.Venc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 158486
        mmTop = 26194
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Dt.Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 177800
        mmTop = 26194
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Val. Parc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 193940
        mmTop = 26194
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 216694
        mmTop = 26194
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Cr'#233'dito/Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 228600
        mmTop = 26194
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 256382
        mmTop = 26194
        mmWidth = 14817
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 30163
        mmWidth = 284428
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 24871
        mmWidth = 284428
        BandType = 0
      end
      object lblMunicipio: TppLabel
        UserName = 'lblMunicipio'
        Caption = 'das Cotas do Grupo:1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 117475
        mmTop = 20373
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 34925
        mmTop = 26194
        mmWidth = 8467
        BandType = 0
      end
      object lblSituacao: TppLabel
        UserName = 'lblMunicipio1'
        Caption = 'das Cotas do Grupo:1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 117475
        mmTop = 10319
        mmWidth = 65088
        BandType = 0
      end
      object lblContem: TppLabel
        UserName = 'lblContem'
        Caption = 'das Cotas do Grupo:1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 117475
        mmTop = 15346
        mmWidth = 65088
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'REC_NOSSONUMERO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 529
        mmTop = 0
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 44979
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'COT_NRVENDA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 53711
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 69056
        mmTop = 0
        mmWidth = 73819
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'REC_NRPARC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 143934
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'REC_DTVENC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 153194
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'REC_DTPAGA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 171186
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 190765
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'REC_VLMULT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3598
        mmLeft = 209021
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 225955
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'REC_TPCREDITO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 243417
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'REC_TOTAL_PAGO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 249767
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COT_CDGRUPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 34925
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 794
        mmWidth = 284428
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 222515
        mmTop = 2646
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 227542
        mmTop = 7144
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
        mmLeft = 240771
        mmTop = 7144
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
        mmLeft = 240507
        mmTop = 2646
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 40000
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Total Geral : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 1323
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'REC_VLMULT'
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
        mmLeft = 203730
        mmTop = 1323
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
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
        mmLeft = 225955
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'REC_TOTAL_PAGO'
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
        mmLeft = 246328
        mmTop = 1323
        mmWidth = 25929
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Total de Registro(s): '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1058
        mmWidth = 35190
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 20000
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 270140
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COT_CDGRUPO'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'REC_TOTAL_PAGO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 238919
          mmTop = 1323
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 233628
          mmTop = 529
          mmWidth = 38100
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 6350
          mmWidth = 284428
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 23813
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 2381
          mmTop = 1588
          mmWidth = 20574
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsClientesAtraso
    UserName = 'DBPipeline1'
    Left = 200
    Top = 81
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
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'NRFONE'
      FieldName = 'NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALOR_DIA'
      FieldName = 'REC_VALOR_DIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'COT_DTCONT'
      FieldName = 'COT_DTCONT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 38
    end
  end
  object dsClientesAtraso: TDataSource
    DataSet = dmRelatorios.cdsClientesAtraso
    Left = 248
    Top = 81
  end
  object dstRelatorio: TSQLDataSet
    CommandText = 
      'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano, ' +
      ' C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, COT_DTCONT,'#13#10 +
      'C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL' +
      '.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE,'#13#10'PC.RE' +
      'C_NRPARC, PC.REC_DTVENC, PC.REC_DTPAGA, PC.REC_VLPARC, PC.rec_vl' +
      'mult, PC.REC_CREDITO,'#13#10'PC.REC_NOSSONUMERO, PC.REC_DTESTORNO, PC.' +
      'REC_HISTORICO'#13#10'from COTAS C'#13#10'INNER JOIN CLIENTES CL ON CL.CLI_CO' +
      'DIGO = C.COT_CDCLIE'#13#10'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C' +
      '.COT_NRVENDA'#13#10'Where (PC.REC_DTESTORNO >= :pDTINIC) and (PC.REC_D' +
      'TESTORNO <= :pDTFINA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDTINIC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDTFINA'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 240
    Top = 192
  end
  object dstRelatorios: TDataSetProvider
    DataSet = dstRelatorio
    Options = [poAllowCommandText]
    Left = 272
    Top = 192
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDTINIC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDTFINA'
        ParamType = ptInput
      end>
    ProviderName = 'dstRelatorios'
    OnCalcFields = cdsRelatorioCalcFields
    Left = 304
    Top = 192
    object cdsRelatorioCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsRelatorioCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsRelatorioCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsRelatorioCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsRelatorioCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsRelatorioCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsRelatorioCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
    end
    object cdsRelatorioCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsRelatorioCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsRelatorioCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsRelatorioCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsRelatorioCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsRelatorioCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsRelatorioREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsRelatorioREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
    end
    object cdsRelatorioREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
    end
    object cdsRelatorioREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioREC_CREDITO: TFMTBCDField
      FieldName = 'REC_CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
    end
    object cdsRelatorioREC_DTESTORNO: TDateField
      FieldName = 'REC_DTESTORNO'
    end
    object cdsRelatorioREC_HISTORICO: TMemoField
      FieldName = 'REC_HISTORICO'
      BlobType = ftMemo
    end
    object cdsRelatorioREC_TAXADM_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'REC_TAXADM_CALC'
    end
    object cdsRelatorioREC_TXFUND_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'REC_TXFUND_CALC'
    end
    object cdsRelatorioREC_TOTAL_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'REC_TOTAL_CALC'
    end
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = cdsRelatorio
    Left = 336
    Top = 192
  end
  object ppDBPEstornos: TppDBPipeline
    DataSource = dsRelatorio
    UserName = 'DBPEstornos'
    Left = 344
    Top = 152
  end
end
