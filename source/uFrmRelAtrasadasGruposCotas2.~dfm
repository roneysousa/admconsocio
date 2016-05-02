inherited frmRelAtrasadasGruposCotas2: TfrmRelAtrasadasGruposCotas2
  Left = 191
  Top = 87
  Caption = 'Relat'#243'rio de Parcelas Atrasadas de Grupos/Cotas'
  ClientHeight = 576
  ClientWidth = 728
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 728
    Height = 535
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 726
      Height = 52
      Align = alTop
      TabOrder = 0
      object lblConsultar: TLabel
        Left = 16
        Top = 9
        Width = 32
        Height = 13
        Caption = '&Grupo:'
        FocusControl = edtGrupo
        Transparent = True
      end
      object spLocalizarGrupo: TSpeedButton
        Left = 110
        Top = 23
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
        Left = 144
        Top = 28
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
      object edtGrupo: TEdit
        Left = 16
        Top = 25
        Width = 90
        Height = 19
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edtGrupoChange
        OnExit = edtGrupoExit
        OnKeyPress = edtGrupoKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 53
      Width = 726
      Height = 248
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 78
        Width = 722
        Height = 168
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
            FieldName = 'COT_NRVENDA'
            Title.Caption = 'Venda'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_NRCOTA'
            Title.Caption = 'Cota'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_PLANO'
            Title.Caption = 'Plano'
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_POSICAO'
            Title.Caption = 'Sit.'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome'
            Width = 324
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_UFCLIE'
            Title.Caption = 'UF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Title.Caption = 'Cidade'
            Width = 142
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 722
        Height = 63
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 4
          Width = 34
          Height = 13
          Caption = '&Venda:'
          FocusControl = edtNrvenda
          Transparent = True
        end
        object Label5: TLabel
          Left = 112
          Top = 4
          Width = 66
          Height = 13
          Caption = 'Nome Cliente:'
          FocusControl = edtNrvenda
          Transparent = True
        end
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 40
          Width = 720
          Height = 22
          DataSource = dsConsulta
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object edtNrvenda: TEdit
          Left = 16
          Top = 19
          Width = 90
          Height = 19
          Hint = 'Informe o valor para consultar'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 1
          OnChange = edtNrvendaChange
          OnKeyPress = edtNrvendaKeyPress
        end
        object edtNome: TEdit
          Left = 112
          Top = 19
          Width = 561
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 59
          ParentCtl3D = False
          TabOrder = 2
          OnChange = edtNomeChange
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 301
      Width = 726
      Height = 233
      Align = alBottom
      Caption = '[ Sele'#231#227'o de Parcelas ]'
      TabOrder = 2
      object Label6: TLabel
        Left = 128
        Top = 148
        Width = 14
        Height = 13
        Caption = 'UF'
        Transparent = True
      end
      object Label1: TLabel
        Left = 128
        Top = 188
        Width = 45
        Height = 13
        Caption = 'Municipio'
        Transparent = True
      end
      object Label12: TLabel
        Left = 299
        Top = 148
        Width = 68
        Height = 13
        Caption = 'Per'#237'odo Inicial'
        Transparent = True
      end
      object Label2: TLabel
        Left = 299
        Top = 188
        Width = 63
        Height = 13
        Caption = 'Per'#237'odo Final'
        Transparent = True
      end
      object Label3: TLabel
        Left = 572
        Top = 101
        Width = 51
        Height = 13
        Caption = 'N'#186' Parcela'
        Transparent = True
      end
      object rbSelImpressao: TRadioGroup
        Left = 7
        Top = 16
        Width = 168
        Height = 65
        Caption = '[ Sele'#231#227'o de Impress'#227'o ]'
        ItemIndex = 2
        Items.Strings = (
          'Cota Selecionada'
          'Cotas de Grupo Selecionado'
          'Todos os Grupos')
        TabOrder = 0
      end
      object rbTipoRelatorio: TRadioGroup
        Left = 179
        Top = 16
        Width = 116
        Height = 65
        Caption = '[ Tipo de Relat'#243'rio ] '
        ItemIndex = 0
        Items.Strings = (
          'Atrasadas'
          'Pagas'
          'A Vencer')
        TabOrder = 1
        OnClick = rbTipoRelatorioClick
      end
      object rbTipoPagas: TRadioGroup
        Left = 299
        Top = 16
        Width = 142
        Height = 65
        Caption = '[ Tipo de Relat'#243'rio Pagas ] '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Acerto'
          'Normais'
          'Caixa'
          'Lance'
          'Banco')
        TabOrder = 2
        OnClick = rbTipoPagasClick
      end
      object rbFormaRelatorio: TRadioGroup
        Left = 444
        Top = 16
        Width = 116
        Height = 65
        Caption = '[ Forma de Relat'#243'rio ]'
        ItemIndex = 0
        Items.Strings = (
          'Lista'
          'Resumo')
        TabOrder = 3
      end
      object rbPagasBancos: TRadioGroup
        Left = 564
        Top = 16
        Width = 127
        Height = 65
        Caption = '[ Parc. Pagas/Bancos ]'
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Banco Selecionado')
        TabOrder = 4
      end
      object rbSituacao: TRadioGroup
        Left = 7
        Top = 80
        Width = 116
        Height = 89
        Caption = '[ Situa'#231#227'o ] '
        ItemIndex = 3
        Items.Strings = (
          'Cotas Ativas'
          'Cotas Inativas'
          'Cotas Reativadas'
          'Todas Cotas')
        TabOrder = 5
        OnClick = rbSituacaoClick
      end
      object rbContemplacao: TRadioGroup
        Left = 128
        Top = 80
        Width = 167
        Height = 65
        Caption = '[ Contempla'#231#227'o ]'
        ItemIndex = 2
        Items.Strings = (
          'Cotas j'#225' Contemplada'
          'Cotas N'#227'o-Contempladas'
          'Todas as Cotas')
        TabOrder = 6
        OnClick = rbContemplacaoClick
      end
      object rbTaxaAdm: TGroupBox
        Left = 299
        Top = 80
        Width = 125
        Height = 65
        Caption = '[ Corr. Taxa Adm. ]'
        TabOrder = 7
        object Label9: TLabel
          Left = 10
          Top = 27
          Width = 51
          Height = 13
          Caption = 'Percentual'
          Transparent = True
        end
        object CheckBox1: TCheckBox
          Left = 10
          Top = 11
          Width = 102
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sim '
          TabOrder = 0
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 10
          Top = 40
          Width = 106
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          TabOrder = 1
        end
      end
      object cbxLimite: TCheckBox
        Left = 432
        Top = 86
        Width = 113
        Height = 17
        Caption = 'Limite de Parcelas'
        TabOrder = 8
        OnClick = cbxLimiteClick
      end
      object rbRefParcelas: TRadioGroup
        Left = 432
        Top = 102
        Width = 136
        Height = 43
        Caption = '[ Ref. ao N'#186' de Parcelas ]'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'At'#233
          'Exatas')
        TabOrder = 9
      end
      object rbMunicipio: TRadioGroup
        Left = 7
        Top = 176
        Width = 116
        Height = 48
        Caption = '[ Cliente Municipio ]'
        ItemIndex = 1
        Items.Strings = (
          'Informado'
          'Todos')
        TabOrder = 11
        OnClick = rbMunicipioClick
      end
      object cmbUF: TComboBox
        Left = 128
        Top = 164
        Width = 49
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 12
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
        Left = 128
        Top = 202
        Width = 158
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 13
      end
      object edtDTINIC: TDateEdit
        Left = 299
        Top = 164
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 14
        OnExit = edtDTINICExit
      end
      object edtDTFINA: TDateEdit
        Left = 299
        Top = 202
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 15
        OnExit = edtDTFINAExit
      end
      object speNumeroParcelas: TSpinEdit
        Left = 572
        Top = 115
        Width = 66
        Height = 22
        MaxLength = 3
        MaxValue = 100
        MinValue = 0
        TabOrder = 10
        Value = 0
        OnKeyPress = speNumeroParcelasKeyPress
      end
      object rbOrdem: TRadioGroup
        Left = 573
        Top = 148
        Width = 114
        Height = 76
        Caption = '[ Ordem ]'
        ItemIndex = 0
        Items.Strings = (
          'Cota'
          'Data Contrato')
        TabOrder = 17
      end
      object rgPeriodo: TRadioGroup
        Left = 432
        Top = 148
        Width = 136
        Height = 76
        Caption = '[ Per'#237'odo por Data ]'
        ItemIndex = 0
        Items.Strings = (
          'Data de Contrato'
          'Data de Inativa'#231#227'o'
          'Data de Reativa'#231#227'o')
        TabOrder = 16
      end
    end
  end
  inherited pnlBotoes: TPanel
    Top = 535
    Width = 728
    object lblMensagem: TLabel [0]
      Left = 523
      Top = 16
      Width = 12
      Height = 14
      Alignment = taRightJustify
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    inherited BtSair: TBitBtn
      Left = 638
    end
    inherited btnVisualizar: TBitBtn
      Left = 552
      OnClick = btnVisualizarClick
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar Impress'#227'o'
      Caption = '&Visualizar'
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
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
    CommandText = 
      'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, ' +
      'C.COT_CDCLIE, CL.CLI_CIDADE, CL.CLI_UFCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO, C.COT_FLCONTEMPLADO from COTAS C INNER JOIN CLIENTES CL ' +
      'ON CL.CLI_CODIGO = C.COT_CDCLIE Where (C.COT_CDGRUPO = :pCODIGO)' +
      ' order by C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 169
    Top = 169
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 217
    Top = 169
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, ' +
      'C.COT_CDCLIE, CL.CLI_CIDADE, CL.CLI_UFCLIE, C.COT_PLANO, C.COT_P' +
      'OSICAO, C.COT_FLCONTEMPLADO from COTAS C INNER JOIN CLIENTES CL ' +
      'ON CL.CLI_CODIGO = C.COT_CDCLIE Where (C.COT_CDGRUPO = :pCODIGO)' +
      ' order by C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 265
    Top = 169
    object cdsConsultaCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultaCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsConsultaCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultaCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultaCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsConsultaCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsConsultaCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 329
    Top = 169
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
    Left = 448
    Top = 137
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57944
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2646
        mmTop = 1323
        mmWidth = 188648
        BandType = 0
      end
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
        mmHeight = 4995
        mmLeft = 66146
        mmTop = 38894
        mmWidth = 64855
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
        mmHeight = 4995
        mmLeft = 77714
        mmTop = 44715
        mmWidth = 41952
        BandType = 0
      end
      object txtPeriodoContrato: TppLabel
        UserName = 'txtPeriodoContrato'
        Caption = 'Per'#237'odo de contrato :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 77756
        mmTop = 51065
        mmWidth = 42672
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
        mmLeft = 48419
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
        mmLeft = 76200
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
        mmLeft = 103188
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
        mmLeft = 129911
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
        mmLeft = 142082
        mmTop = 264
        mmWidth = 14288
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
        mmLeft = 157427
        mmTop = 264
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 8731
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
        mmLeft = 142346
        mmTop = 9525
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
        mmLeft = 147373
        mmTop = 14023
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
        mmLeft = 160602
        mmTop = 14023
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
        mmLeft = 160338
        mmTop = 9525
        mmWidth = 32015
        BandType = 8
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 1852
        mmWidth = 197380
        BandType = 8
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Total da P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 2910
        mmWidth = 27252
        BandType = 8
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
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
        mmLeft = 48683
        mmTop = 2910
        mmWidth = 23813
        BandType = 8
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
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
        mmLeft = 102923
        mmTop = 2910
        mmWidth = 23813
        BandType = 8
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
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
        mmLeft = 171980
        mmTop = 2646
        mmWidth = 23813
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2910
        mmTop = 10054
        mmWidth = 19770
        BandType = 8
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
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
        mmLeft = 24342
        mmTop = 10054
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 265
        mmTop = 1058
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
        mmTop = 2381
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
        mmLeft = 2910
        mmTop = 2381
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
        mmTop = 2381
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
        mmTop = 2117
        mmWidth = 23813
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COT_NRVENDA'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 31750
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
          mmLeft = 1058
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
          mmLeft = 26458
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
          mmLeft = 48948
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
          mmLeft = 130440
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
          mmLeft = 1058
          mmTop = 8467
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
          mmLeft = 1058
          mmTop = 14023
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
          mmLeft = 1058
          mmTop = 19579
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
          mmTop = 19579
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
          mmLeft = 64029
          mmTop = 19579
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
          mmLeft = 103717
          mmTop = 19579
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
          mmLeft = 140494
          mmTop = 19579
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
          mmTop = 19579
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
          mmLeft = 1058
          mmTop = 24871
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
          mmTop = 24871
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
          mmTop = 29898
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
          mmLeft = 49742
          mmTop = 24871
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
          mmLeft = 84667
          mmTop = 24871
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
          mmLeft = 103717
          mmTop = 24871
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
          mmLeft = 130704
          mmTop = 24871
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
          mmLeft = 146844
          mmTop = 24871
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
          mmLeft = 164836
          mmTop = 24871
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
          mmTop = 24871
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
          mmLeft = 13494
          mmTop = 3175
          mmWidth = 11642
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
          mmLeft = 36248
          mmTop = 3175
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
          mmLeft = 61913
          mmTop = 3175
          mmWidth = 17463
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
          mmLeft = 17727
          mmTop = 8467
          mmWidth = 151871
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
          mmLeft = 19050
          mmTop = 14288
          mmWidth = 68263
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
          mmTop = 14288
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
          mmTop = 14288
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'NRFONE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 10848
          mmTop = 19579
          mmWidth = 24606
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
          mmTop = 19579
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
          mmLeft = 80169
          mmTop = 19579
          mmWidth = 20108
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
          mmHeight = 4233
          mmLeft = 124090
          mmTop = 19579
          mmWidth = 8996
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
          mmTop = 14288
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
          mmLeft = 159015
          mmTop = 19844
          mmWidth = 9260
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
          mmTop = 19844
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
          mmLeft = 142346
          mmTop = 3175
          mmWidth = 52652
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 133615
          mmTop = 19579
          mmWidth = 3133
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Dt.Contrato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 80963
          mmTop = 2910
          mmWidth = 20574
          BandType = 3
          GroupNo = 0
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'COT_DTCONT'
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
          mmLeft = 102923
          mmTop = 2910
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
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
          mmLeft = 0
          mmTop = 1852
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
          mmHeight = 4022
          mmLeft = 25929
          mmTop = 2117
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
          mmHeight = 4022
          mmLeft = 48419
          mmTop = 1852
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
          mmLeft = 76200
          mmTop = 1852
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
          mmLeft = 102659
          mmTop = 1588
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
          mmTop = 1588
          mmWidth = 19315
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
          mmLeft = 157427
          mmTop = 1588
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc102'
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
          mmLeft = 142082
          mmTop = 1588
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsClientesAtraso
    UserName = 'DBPipeline1'
    Left = 496
    Top = 177
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
    Left = 544
    Top = 153
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
    Template.FileName = 
      'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbContatasRecebidas.r' +
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
    Left = 449
    Top = 173
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 69321
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 188648
        BandType = 0
      end
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
        mmLeft = 84931
        mmTop = 41010
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
        mmLeft = 116681
        mmTop = 47361
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Nosso Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 38365
        mmTop = 62442
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 62442
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 65352
        mmTop = 62442
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Parc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 146579
        mmTop = 62442
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Dt.Venc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 62442
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Dt.Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 180711
        mmTop = 62442
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Val. Parc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 197380
        mmTop = 62442
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Val Pago/Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 218811
        mmTop = 62442
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Cr'#233'dito/Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 245005
        mmTop = 62442
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 266436
        mmTop = 62442
        mmWidth = 16637
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 794
        mmTop = 66411
        mmWidth = 284428
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 794
        mmTop = 61119
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
        mmHeight = 5027
        mmLeft = 116681
        mmTop = 53181
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
        mmLeft = 1852
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
        mmLeft = 36513
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
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 47361
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
        mmLeft = 64558
        mmTop = 0
        mmWidth = 78317
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
        mmHeight = 4022
        mmLeft = 146050
        mmTop = 0
        mmWidth = 6879
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
        mmHeight = 4022
        mmLeft = 157427
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
        mmHeight = 3979
        mmLeft = 177800
        mmTop = 0
        mmWidth = 17198
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
        mmLeft = 196586
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
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
        mmLeft = 215900
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'REC_FORMABAIXA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 235215
        mmTop = 0
        mmWidth = 5027
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
        mmHeight = 4022
        mmLeft = 242359
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
        mmLeft = 259821
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
        mmHeight = 4022
        mmLeft = 265642
        mmTop = 0
        mmWidth = 17727
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
        mmLeft = 232569
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
        mmLeft = 237596
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
        mmLeft = 250825
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
        mmLeft = 250561
        mmTop = 2646
        mmWidth = 32015
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
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
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 21548
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
        mmLeft = 24077
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
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
        mmLeft = 215900
        mmTop = 1852
        mmWidth = 18785
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
        mmLeft = 242359
        mmTop = 1852
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
        mmLeft = 262203
        mmTop = 1852
        mmWidth = 22225
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 0
        mmWidth = 284428
        BandType = 7
      end
    end
  end
end
