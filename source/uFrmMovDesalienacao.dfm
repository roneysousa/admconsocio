inherited frmMovDesalienacao: TfrmMovDesalienacao
  Left = 191
  Top = 126
  Caption = 'Desaliena'#231#227'o'
  ClientHeight = 412
  ClientWidth = 590
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 393
    Width = 590
  end
  inherited pnlProcurar: TPanel
    Width = 590
    Height = 55
    inherited lblConsultar: TLabel
      Top = 6
    end
    inherited Label1: TLabel
      Top = 6
    end
    inherited spLocalizarGrupo: TSpeedButton
      Top = 20
    end
    inherited spLocCota: TSpeedButton
      Top = 20
    end
    inherited edtGrupo: TEdit
      Top = 22
    end
    inherited btnConsultar: TBitBtn
      Top = 17
    end
    inherited edtCota: TEdit
      Top = 22
      OnChange = edtCotaChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 55
    Width = 590
    Height = 211
    Align = alClient
    Enabled = False
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 9
      Width = 60
      Height = 13
      Caption = 'Nome Grupo'
      Transparent = True
    end
    object Label4: TLabel
      Left = 145
      Top = 9
      Width = 22
      Height = 13
      Caption = 'Cota'
      Transparent = True
    end
    object Label5: TLabel
      Left = 233
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Plano'
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 47
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object Label13: TLabel
      Left = 16
      Top = 154
      Width = 53
      Height = 13
      Caption = 'Assembl'#233'ia'
      Transparent = True
    end
    object Label7: TLabel
      Left = 112
      Top = 154
      Width = 94
      Height = 13
      Caption = 'Data Contempla'#231#227'o'
      Transparent = True
    end
    object Label2: TLabel
      Left = 424
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Venda'
      FocusControl = DBEdit4
    end
    object dbeDescricao: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object cbxGrupo: TCheckBox
      Left = 320
      Top = 26
      Width = 97
      Height = 17
      Caption = 'Grupo Iniciou'
      TabOrder = 1
    end
    object edtCliente: TEdit
      Left = 16
      Top = 62
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 299
      Top = 88
      Width = 110
      Height = 64
      TabOrder = 3
      object cbxContemp: TCheckBox
        Left = 8
        Top = 9
        Width = 97
        Height = 17
        Caption = 'Contemplado'
        TabOrder = 0
      end
      object cbxAlienado: TCheckBox
        Left = 8
        Top = 26
        Width = 97
        Height = 17
        Caption = 'Alienado'
        TabOrder = 1
      end
      object cbxDesalienado: TCheckBox
        Left = 8
        Top = 44
        Width = 97
        Height = 17
        Caption = 'Desalienado'
        TabOrder = 2
      end
    end
    object DBEdit1: TDBEdit
      Left = 145
      Top = 24
      Width = 80
      Height = 21
      DataField = 'COT_NRCOTA'
      DataSource = dsdados
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 233
      Top = 24
      Width = 80
      Height = 21
      DataField = 'COT_PLANO'
      DataSource = dsdados
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 168
      Width = 90
      Height = 21
      DataField = 'COT_ASSEB_CONTEMP'
      DataSource = dsdados
      TabOrder = 6
    end
    object DBDateEdit1: TDBDateEdit
      Left = 112
      Top = 168
      Width = 121
      Height = 21
      DataField = 'COT_DTCONTEMPLACAO'
      DataSource = dsdados
      NumGlyphs = 2
      TabOrder = 7
    end
    object rbSituacao: TDBRadioGroup
      Left = 16
      Top = 88
      Width = 181
      Height = 64
      Caption = '[ Situa'#231#227'o ]'
      Columns = 2
      DataField = 'COT_POSICAO'
      DataSource = dsdados
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Quita'#231#227'o'
        'Inativo (Pago)'
        'Vendido'
        'Reativado')
      TabOrder = 8
      Values.Strings = (
        'A'
        'I'
        'Q'
        'P'
        'V'
        'R')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 200
      Top = 88
      Width = 97
      Height = 64
      Caption = '[ Contempla'#231#227'o ]'
      DataField = 'COT_TIPO'
      DataSource = dsdados
      Items.Strings = (
        'Sorteio'
        'Lance')
      TabOrder = 9
      Values.Strings = (
        'S'
        'L')
    end
    object DBEdit4: TDBEdit
      Left = 424
      Top = 24
      Width = 81
      Height = 21
      DataField = 'COT_NRVENDA'
      DataSource = dsdados
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 590
    Height = 86
    Align = alBottom
    Enabled = False
    TabOrder = 3
    object Label12: TLabel
      Left = 14
      Top = 6
      Width = 23
      Height = 13
      Caption = 'Data'
      Transparent = True
    end
    object Label8: TLabel
      Left = 142
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Marca'
      Transparent = True
    end
    object Label9: TLabel
      Left = 302
      Top = 6
      Width = 35
      Height = 13
      Caption = 'Modelo'
      Transparent = True
    end
    object Label10: TLabel
      Left = 462
      Top = 6
      Width = 75
      Height = 13
      Caption = 'Ano Fabrica'#231#227'o'
      Transparent = True
    end
    object Label11: TLabel
      Left = 14
      Top = 41
      Width = 57
      Height = 13
      Caption = 'Ano Modelo'
      Transparent = True
    end
    object Label14: TLabel
      Left = 142
      Top = 41
      Width = 31
      Height = 13
      Caption = 'Chassi'
      Transparent = True
    end
    object Label15: TLabel
      Left = 302
      Top = 41
      Width = 73
      Height = 13
      Caption = 'Data Libera'#231#227'o'
      Transparent = True
    end
    object edtData: TDateEdit
      Left = 14
      Top = 20
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object edtMarca: TEdit
      Left = 142
      Top = 20
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object edtModelo: TEdit
      Left = 302
      Top = 20
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object edtAnoFabric: TEdit
      Left = 462
      Top = 20
      Width = 86
      Height = 21
      TabOrder = 3
    end
    object edtAnoModelo: TEdit
      Left = 14
      Top = 56
      Width = 86
      Height = 21
      TabOrder = 4
    end
    object edtChassi: TEdit
      Left = 142
      Top = 56
      Width = 153
      Height = 21
      TabOrder = 5
    end
    object edtDataLiberacao: TDateEdit
      Left = 302
      Top = 56
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 352
    Width = 590
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 4
    object btnDesalienacao: TBitBtn
      Left = 8
      Top = 8
      Width = 130
      Height = 25
      Caption = 'Desaliena'#231#227'o'
      TabOrder = 0
      OnClick = btnDesalienacaoClick
    end
    object btnCancelar: TBitBtn
      Left = 144
      Top = 8
      Width = 130
      Height = 25
      Caption = 'Cancelar Desaliena'#231#227'o'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnEmitir: TBitBtn
      Left = 282
      Top = 8
      Width = 130
      Height = 25
      Caption = 'Emitir Libera'#231#227'o'
      TabOrder = 2
      OnClick = btnEmitirClick
    end
    object BtSair: TBitBtn
      Left = 496
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = BtSairClick
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
  object dsdados: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsClienteAlienado
    Left = 480
    Top = 120
  end
  object ppRepEmitir: TppReport
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
    Left = 496
    Top = 23
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 168805
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COT_MARCA_VEIC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 88106
        mmWidth = 17198
        BandType = 4
      end
      object lblNome: TppLabel
        UserName = 'lblNome'
        Caption = 'lblNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 64823
        mmWidth = 12965
        BandType = 4
      end
      object lblCPF: TppLabel
        UserName = 'lblNome1'
        Caption = 'lblNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133086
        mmTop = 64823
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'COT_MODELO_VEIC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 88106
        mmWidth = 46038
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'COT_ANO_MOD'
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
        mmLeft = 114829
        mmTop = 88106
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'COT_ANO_FAB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 129646
        mmTop = 88106
        mmWidth = 12171
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 128323
        mmTop = 88106
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'COT_CHASSI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 151607
        mmTop = 88106
        mmWidth = 40481
        BandType = 4
      end
      object lblData: TppLabel
        UserName = 'lblData'
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 106363
        mmWidth = 10848
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsdados
    UserName = 'DBPipeline1'
    Left = 536
    Top = 24
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
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
      FieldAlias = 'COT_CDCLIE'
      FieldName = 'COT_CDCLIE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'COT_CONTRATO'
      FieldName = 'COT_CONTRATO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'COT_DIAASS'
      FieldName = 'COT_DIAASS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'COT_DTCONT'
      FieldName = 'COT_DTCONT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'COT_CODBEM'
      FieldName = 'COT_CODBEM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALACERTO'
      FieldName = 'COT_VALACERTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'COT_TIPO'
      FieldName = 'COT_TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCOTA'
      FieldName = 'COT_VALCOTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'COT_DTVENCIMENTO'
      FieldName = 'COT_DTVENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADESAO'
      FieldName = 'COT_TAXA_ADESAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDBANCO'
      FieldName = 'COT_CDBANCO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'COT_NMBANCO'
      FieldName = 'COT_NMBANCO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'COT_CIDADE_BANCO'
      FieldName = 'COT_CIDADE_BANCO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'COT_ESPECIE'
      FieldName = 'COT_ESPECIE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'COT_MARCA'
      FieldName = 'COT_MARCA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_ASSEMBLEIAFILTRO'
      FieldName = 'COT_ASSEMBLEIAFILTRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALORLANCE'
      FieldName = 'COT_VALORLANCE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'COT_DTCONTEMPLACAO'
      FieldName = 'COT_DTCONTEMPLACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_ASSEB_CONTEMP'
      FieldName = 'COT_ASSEB_CONTEMP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'COT_DTALIENACAO'
      FieldName = 'COT_DTALIENACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'COT_MARCA_VEIC'
      FieldName = 'COT_MARCA_VEIC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'COT_MODELO_VEIC'
      FieldName = 'COT_MODELO_VEIC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_ANO_FAB'
      FieldName = 'COT_ANO_FAB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_ANO_MOD'
      FieldName = 'COT_ANO_MOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'COT_CHASSI'
      FieldName = 'COT_CHASSI'
      FieldLength = 25
      DisplayWidth = 25
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'COT_DATA_LIB'
      FieldName = 'COT_DATA_LIB'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'COT_ALIENADO'
      FieldName = 'COT_ALIENADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'COT_DESALIENADO'
      FieldName = 'COT_DESALIENADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_AVAL1'
      FieldName = 'COT_AVAL1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_AVAL2'
      FieldName = 'COT_AVAL2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'COT_NRSERIE'
      FieldName = 'COT_NRSERIE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'COT_TIPOVEIC'
      FieldName = 'COT_TIPOVEIC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'COT_COR'
      FieldName = 'COT_COR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 41
    end
    object ppDBPipeline1ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDMODELO'
      FieldName = 'COT_CDMODELO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object ppDBPipeline1ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALOR_TAXACAD'
      FieldName = 'COT_VALOR_TAXACAD'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 43
    end
    object ppDBPipeline1ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALORENTRADA'
      FieldName = 'COT_VALORENTRADA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 44
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'COT_DATAPRIMPRES'
      FieldName = 'COT_DATAPRIMPRES'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 45
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'COT_TPLANCE'
      FieldName = 'COT_TPLANCE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'COT_DTRECEBIMENTO'
      FieldName = 'COT_DTRECEBIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 47
    end
    object ppDBPipeline1ppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALOR_RECEBER'
      FieldName = 'COT_VALOR_RECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 48
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'COT_FLXSPC'
      FieldName = 'COT_FLXSPC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 49
    end
  end
end
