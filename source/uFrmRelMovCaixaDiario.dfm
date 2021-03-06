object frmRelMovCaixaDiario: TfrmRelMovCaixaDiario
  Left = 295
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Entradas/Sa'#237'das'
  ClientHeight = 346
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 561
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Data da Abertura'
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 183
      Height = 13
      Caption = 'N'#186'.Caixa/Data Abertura/Hora Abertura'
      Transparent = True
    end
    object edtData: TDateEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnEnter = edtDataEnter
      OnExit = edtDataExit
    end
    object cmbCaixa: TComboBox
      Left = 16
      Top = 65
      Width = 349
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
      OnChange = cmbCaixaChange
      OnDrawItem = cmbCaixaDrawItem
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 561
    Height = 200
    Align = alClient
    TabOrder = 1
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 559
      Height = 198
      Align = alClient
      Ctl3D = False
      DataSource = dsConsultar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'MCA_SEQUENCIA'
          Title.Caption = 'Registro'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MCA_HRMOVIMENTO'
          Title.Caption = 'Hora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MCA_OBSEVACAO'
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MCA_TIPOMOV'
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MCA_VLMODALIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 305
    Width = 561
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object btnImprimir: TBitBtn
      Left = 374
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = btnImprimirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
    object btnFechar: TBitBtn
      Left = 462
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    OnDataChange = dsConsultarDataChange
    Left = 164
    Top = 194
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 
      'Select MCA_SEQUENCIA, MCA_VENDA, MCA_TIPOMOV, MCA_DTMOVIMENTO, M' +
      'CA_HRMOVIMENTO, MCA_VLMODALIDADE, MCA_OBSEVACAO, MCA_CAIXA, MCA_' +
      'SEQCAIXA from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA >= :pINICIO) ' +
      'AND (MCA_SEQUENCIA <= :pFINAL) AND (MCA_CAIXA = :pCAIXA) and ((M' +
      'CA_TIPOMOV = :pENTRADA) OR (MCA_TIPOMOV = :pPSAIDA))'#13#10'order by M' +
      'CA_TIPOMOV, MCA_HRMOVIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pCAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pPSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 244
    Top = 194
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 324
    Top = 194
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'pINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pCAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pPSAIDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultar'
    OnCalcFields = cdsConsultarCalcFields
    Left = 396
    Top = 194
    object cdsConsultarMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
      DisplayFormat = '0000000000'
    end
    object cdsConsultarMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
    end
    object cdsConsultarMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
    end
    object cdsConsultarMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      FixedChar = True
      Size = 5
    end
    object cdsConsultarMCA_VLMODALIDADE: TFMTBCDField
      FieldName = 'MCA_VLMODALIDADE'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultarMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      Size = 40
    end
    object cdsConsultarMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
    end
    object cdsConsultarMCA_SEQCAIXA: TIntegerField
      FieldName = 'MCA_SEQCAIXA'
    end
    object cdsConsultarMCA_DESC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'MCA_DESC_TIPO'
      Size = 10
      Calculated = True
    end
  end
  object ppReport1: TppReport
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
    Left = 368
    Top = 16
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
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object lblTitulo1: TppLabel
        UserName = 'lblTitulo1'
        Caption = 'lblTitulo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 85725
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object lblTitulo2: TppLabel
        UserName = 'lblTitulo2'
        Caption = 'lblTitulo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 85725
        mmTop = 6615
        mmWidth = 15610
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 18521
        mmWidth = 197380
        BandType = 0
      end
      object lblTitulo3: TppLabel
        UserName = 'lblTitulo3'
        Caption = 'lblTitulo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 85725
        mmTop = 12435
        mmWidth = 15610
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'MCA_OBSEVACAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 0
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'MCA_VLMODALIDADE'
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
        mmLeft = 101336
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
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
        mmWidth = 197380
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
        mmLeft = 139965
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
        mmLeft = 172509
        mmTop = 7408
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
        mmLeft = 185209
        mmTop = 7408
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
        mmLeft = 157957
        mmTop = 2646
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'MCA_TIPOMOV'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'MCA_DESC_TIPO'
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
          mmTop = 794
          mmWidth = 35454
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = '>> TIPO DE MOVIMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 2910
          mmTop = 794
          mmWidth = 43180
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 2910
          mmTop = 6879
          mmWidth = 20955
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 112184
          mmTop = 6879
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 11642
          mmWidth = 124619
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 2910
          mmTop = 1058
          mmWidth = 18796
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MCA_VLMODALIDADE'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '###,##0.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 91546
          mmTop = 1058
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 265
          mmTop = 0
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsConsultar
    UserName = 'DBPipeline1'
    Left = 416
    Top = 16
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'MCA_SEQUENCIA'
      FieldName = 'MCA_SEQUENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'MCA_VENDA'
      FieldName = 'MCA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'MCA_TIPOMOV'
      FieldName = 'MCA_TIPOMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'MCA_DTMOVIMENTO'
      FieldName = 'MCA_DTMOVIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'MCA_HRMOVIMENTO'
      FieldName = 'MCA_HRMOVIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'MCA_VLMODALIDADE'
      FieldName = 'MCA_VLMODALIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'MCA_OBSEVACAO'
      FieldName = 'MCA_OBSEVACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'MCA_CAIXA'
      FieldName = 'MCA_CAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'MCA_SEQCAIXA'
      FieldName = 'MCA_SEQCAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
end
