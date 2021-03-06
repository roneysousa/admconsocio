inherited frmRelPCVencer: TfrmRelPCVencer
  Left = 208
  Top = 177
  Caption = 'Relat'#243'rio Parcelas a Vencer'
  ClientHeight = 277
  ClientWidth = 408
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 408
    Height = 236
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
      Top = 179
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object Label4: TLabel
      Left = 72
      Top = 179
      Width = 45
      Height = 13
      Caption = 'Municipio'
      Transparent = True
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
    object cmbUF: TComboBox
      Left = 16
      Top = 193
      Width = 49
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 5
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
      Top = 194
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 6
    end
  end
  inherited pnlBotoes: TPanel
    Top = 236
    Width = 408
    inherited BtSair: TBitBtn
      Left = 316
    end
    inherited btnVisualizar: TBitBtn
      Left = 230
      OnClick = btnVisualizarClick
    end
  end
  object ppReport1: TppReport
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
    Template.FileName = 'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbParcAVencer.rtm'
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
    Top = 24
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 188648
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
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
        mmLeft = 67998
        mmTop = 1323
        mmWidth = 64823
        BandType = 0
      end
      object lblCotas: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'Lista de Parcelas Atrasadas ate '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 68263
        mmTop = 7673
        mmWidth = 64823
        BandType = 0
      end
      object lblMunicipio: TppLabel
        UserName = 'lblMunicipio'
        Caption = 'Lista de Parcelas Atrasadas ate '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 68263
        mmTop = 14552
        mmWidth = 64823
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 37835
        mmTop = 211
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3979
        mmLeft = 53181
        mmTop = 254
        mmWidth = 78317
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'REC_NRPARC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 133615
        mmTop = 264
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 140759
        mmTop = 529
        mmWidth = 804
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'REC_NOSSONUMERO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 141817
        mmTop = 264
        mmWidth = 41540
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'REC_DTVENC'
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
        mmLeft = 184150
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 204259
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 226748
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 246063
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1323
        mmWidth = 284428
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 219075
        mmTop = 2117
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 224103
        mmTop = 6615
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
        mmLeft = 237332
        mmTop = 6615
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
        mmLeft = 237067
        mmTop = 2117
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 26077
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 29369
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 195527
        mmTop = 1588
        mmWidth = 29104
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 238125
        mmTop = 1588
        mmWidth = 30956
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 529
        mmWidth = 284428
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COT_CDGRUPO'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 4763
          mmTop = 2646
          mmWidth = 9483
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'COT_CDGRUPO'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3979
          mmLeft = 18256
          mmTop = 2646
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Cota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 37571
          mmTop = 2646
          mmWidth = 6265
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 52917
          mmTop = 2646
          mmWidth = 9440
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Parc. / Nosso N'#250'mero '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 2646
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 184415
          mmTop = 2646
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Valor da Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 206640
          mmTop = 2646
          mmWidth = 18965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 231246
          mmTop = 2646
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Valor a Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 245798
          mmTop = 2646
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 794
          mmWidth = 284428
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 6615
          mmWidth = 284428
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Total de Parcelas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 529
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3260
          mmLeft = 33338
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'REC_TOTAL_CALC'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3260
          mmLeft = 204259
          mmTop = 265
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'REC_TOTAL_CALC'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3175
          mmLeft = 247121
          mmTop = 265
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsClientesAtraso
    UserName = 'DBPipeline2'
    Left = 328
    Top = 25
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRPARC'
      FieldName = 'REC_NRPARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'REC_DTVENC'
      FieldName = 'REC_DTVENC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLPARC'
      FieldName = 'REC_VLPARC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLMULT'
      FieldName = 'REC_VLMULT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppDBPipeline2ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CREDITO'
      FieldName = 'REC_CREDITO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppDBPipeline2ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_ATRASO'
      FieldName = 'REC_ATRASO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline2ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppDBPipeline2ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppDBPipeline2ppField20: TppField
      FieldAlias = 'REC_DTPAGA'
      FieldName = 'REC_DTPAGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline2ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_PAGO'
      FieldName = 'REC_TOTAL_PAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBPipeline2ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_QTATRA'
      FieldName = 'COT_QTATRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline2ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_QTPAGA'
      FieldName = 'COT_QTPAGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline2ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLCORRIGIDO'
      FieldName = 'REC_VLCORRIGIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline2ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_CALC'
      FieldName = 'REC_TOTAL_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline2ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TXFUND_CALC'
      FieldName = 'REC_TXFUND_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline2ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TAXADM_CALC'
      FieldName = 'REC_TAXADM_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline2ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'MULTA'
      FieldName = 'MULTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline2ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline2ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'CORRIGIDO'
      FieldName = 'CORRIGIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline2ppField31: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object ppDBPipeline2ppField32: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDBPipeline2ppField33: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 32
    end
    object ppDBPipeline2ppField34: TppField
      FieldAlias = 'REC_NOSSONUMERO'
      FieldName = 'REC_NOSSONUMERO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDBPipeline2ppField35: TppField
      FieldAlias = 'REC_FORMABAIXA'
      FieldName = 'REC_FORMABAIXA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object ppDBPipeline2ppField36: TppField
      FieldAlias = 'REC_TPCREDITO'
      FieldName = 'REC_TPCREDITO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
    object ppDBPipeline2ppField37: TppField
      FieldAlias = 'NRFONE'
      FieldName = 'NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 36
    end
    object ppDBPipeline2ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALOR_DIA'
      FieldName = 'REC_VALOR_DIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipeline2ppField39: TppField
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
    Left = 328
    Top = 65
  end
end
