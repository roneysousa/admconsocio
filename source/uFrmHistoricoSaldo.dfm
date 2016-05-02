object frmHisSaldo: TfrmHisSaldo
  Left = 258
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Historico de Saldo'
  ClientHeight = 222
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 181
    Align = alClient
    TabOrder = 0
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 352
      Height = 179
      Align = alClient
      Ctl3D = False
      DataSource = dsConsulta
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
          FieldName = 'SLD_NRVENDA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLD_GRUPO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Grupo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLD_COTA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cota'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLD_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 181
    Width = 354
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object lblSaldo: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Saldo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnFechar: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 0
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
    object btnImprimir: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 1
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
  end
  object dstConsulta: TSQLDataSet
    CommandText = 'select * from CLIENTES_SALDO Where (SLD_CLIENTE = :pCLIENTE)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 56
    Top = 96
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 96
    Top = 96
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 136
    Top = 96
    object cdsConsultaSLD_NRVENDA: TIntegerField
      FieldName = 'SLD_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultaSLD_GRUPO: TIntegerField
      FieldName = 'SLD_GRUPO'
    end
    object cdsConsultaSLD_COTA: TIntegerField
      FieldName = 'SLD_COTA'
    end
    object cdsConsultaSLD_CLIENTE: TIntegerField
      FieldName = 'SLD_CLIENTE'
    end
    object cdsConsultaSLD_VALOR: TFMTBCDField
      FieldName = 'SLD_VALOR'
      DisplayFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = cdsConsulta
    Left = 176
    Top = 96
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
    Left = 240
    Top = 88
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 55298
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 41275
        mmWidth = 197380
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 53711
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'N'#186'.VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1768
        mmTop = 49213
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'GRUPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 23283
        mmTop = 49213
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'COTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 43127
        mmTop = 49213
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'SALDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 69985
        mmTop = 49213
        mmWidth = 12192
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 32808
        mmLeft = 2910
        mmTop = 2910
        mmWidth = 105040
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'SALDO DE CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6646
        mmLeft = 137202
        mmTop = 5027
        mmWidth = 54568
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1768
        mmTop = 43656
        mmWidth = 16256
        BandType = 0
      end
      object txtNmCliente: TppLabel
        UserName = 'txtNmCliente'
        Caption = 'txtNmCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 43656
        mmWidth = 20108
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'SLD_NRVENDA'
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
        mmLeft = 1852
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'SLD_GRUPO'
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
        mmLeft = 20902
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'SLD_COTA'
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
        mmLeft = 39688
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SLD_VALOR'
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
        mmLeft = 62177
        mmTop = 0
        mmWidth = 20000
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 1058
        mmWidth = 197380
        BandType = 8
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 145786
        mmTop = 2910
        mmWidth = 16933
        BandType = 8
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 163777
        mmTop = 2910
        mmWidth = 32131
        BandType = 8
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 145521
        mmTop = 7408
        mmWidth = 11853
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 160073
        mmTop = 7408
        mmWidth = 1947
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'TOTAL ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 24606
        mmTop = 1323
        mmWidth = 18796
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'SLD_VALOR'
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
        mmHeight = 4022
        mmLeft = 62177
        mmTop = 1323
        mmWidth = 20000
        BandType = 7
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsConsulta
    UserName = 'DBPipeline1'
    Left = 280
    Top = 88
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLD_NRVENDA'
      FieldName = 'SLD_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLD_GRUPO'
      FieldName = 'SLD_GRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLD_COTA'
      FieldName = 'SLD_COTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLD_CLIENTE'
      FieldName = 'SLD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SLD_VALOR'
      FieldName = 'SLD_VALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
  end
end
