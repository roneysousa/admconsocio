inherited frmRelCorresDiversas: TfrmRelCorresDiversas
  Left = 182
  Top = 127
  Caption = 'Relat'#243'rios de Correspond'#234'ncia Diversas'
  ClientHeight = 527
  ClientWidth = 660
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 660
    Height = 475
    object GroupBox2: TGroupBox
      Left = 1
      Top = 47
      Width = 658
      Height = 231
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 78
        Width = 654
        Height = 151
        Align = alClient
        Ctl3D = False
        DataSource = dsCotas
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_NRVENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Venda'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_NRCOTA'
            Title.Caption = 'Cota'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_PLANO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Plano'
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_POSICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Sit.'
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONTEMPLADO'
            Title.Caption = 'Contem.'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome'
            Width = 193
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CLI_UFCLIE'
            Title.Alignment = taCenter
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
        Width = 654
        Height = 63
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 4
          Width = 34
          Height = 13
          Caption = '&Venda:'
          FocusControl = edtNrvenda
          Transparent = True
        end
        object Label2: TLabel
          Left = 136
          Top = 3
          Width = 25
          Height = 13
          Caption = 'Cota:'
          FocusControl = edtCota
          Transparent = True
        end
        object lblRegistro: TLabel
          Left = 550
          Top = 20
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Registro(s):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 40
          Width = 652
          Height = 22
          DataSource = dsCotas
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
        object edtCota: TEdit
          Left = 136
          Top = 18
          Width = 90
          Height = 19
          Hint = 'Informe o valor para consultar'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 4
          ParentCtl3D = False
          TabOrder = 2
          OnChange = edtCotaChange
          OnKeyPress = edtNrvendaKeyPress
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 278
      Width = 658
      Height = 196
      Align = alBottom
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 656
        Height = 194
        Align = alClient
        Caption = '[ Sele'#231#227'o de Parcelas ]'
        TabOrder = 0
        object Label9: TLabel
          Left = 344
          Top = 88
          Width = 78
          Height = 13
          Caption = 'Data Refer'#234'ncia'
          Transparent = True
        end
        object Label3: TLabel
          Left = 511
          Top = 124
          Width = 51
          Height = 13
          Caption = 'N'#186' Parcela'
          Transparent = True
        end
        object Label4: TLabel
          Left = 484
          Top = 88
          Width = 75
          Height = 13
          Caption = 'Tamanho Fonte'
          Transparent = True
        end
        object rbSelImpressao: TRadioGroup
          Left = 8
          Top = 14
          Width = 168
          Height = 75
          Caption = '[ Sele'#231#227'o de Impress'#227'o ]'
          ItemIndex = 2
          Items.Strings = (
            'Cota Selecionada'
            'Cotas do Grupo Selecionado'
            'Todos os Grupos')
          TabOrder = 0
        end
        object rbSituacao: TRadioGroup
          Left = 180
          Top = 14
          Width = 107
          Height = 75
          Caption = '[ Situa'#231#227'o ]'
          ItemIndex = 3
          Items.Strings = (
            'Cota Ativas'
            'Cotas Inativas'
            'Cotas Quitadas'
            'Todas Cotas')
          TabOrder = 1
          OnClick = rbSituacaoClick
        end
        object rbContemplacao: TRadioGroup
          Left = 293
          Top = 14
          Width = 155
          Height = 75
          Caption = '[ Contempla'#231#227'o ]'
          ItemIndex = 2
          Items.Strings = (
            'Cotas j'#225' Contemplada'
            'Cotas N'#227'o-Contempladas'
            'Todas as Cotas')
          TabOrder = 2
          OnClick = rbContemplacaoClick
        end
        object rbTipoRel: TRadioGroup
          Left = 453
          Top = 14
          Width = 112
          Height = 75
          Caption = '[ Tipo de Relat'#243'rio ]'
          ItemIndex = 1
          Items.Strings = (
            'Atrasadas'
            'Geral')
          TabOrder = 3
          OnClick = rbTipoRelClick
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 89
          Width = 337
          Height = 100
          Caption = '[ Carta de Modelo ] '
          TabOrder = 4
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 333
            Height = 83
            Align = alClient
            Ctl3D = False
            DataSource = dsModelos
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
                FieldName = 'CAR_CODIGO'
                Title.Caption = 'C'#243'd.'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAR_DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 262
                Visible = True
              end>
          end
        end
        object edtDTREFE: TDateEdit
          Left = 344
          Top = 102
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 5
          OnExit = edtDTREFEExit
        end
        object CheckBox1: TCheckBox
          Left = 344
          Top = 124
          Width = 121
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Lista Parcelas'
          TabOrder = 6
        end
        object CheckBox2: TCheckBox
          Left = 344
          Top = 141
          Width = 121
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Emitir p/ Avalistas'
          TabOrder = 7
        end
        object seNParcela: TSpinEdit
          Left = 481
          Top = 138
          Width = 83
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 8
          Value = 0
        end
        object rbgParcelas: TRadioGroup
          Left = 348
          Top = 158
          Width = 215
          Height = 33
          Caption = '[ Ref. ao N'#186' Parcelas ]'
          Columns = 3
          Items.Strings = (
            'At'#233
            'ou Mais'
            'Exata')
          TabOrder = 9
          OnClick = rbgParcelasClick
        end
        object spTamFonte: TSpinEdit
          Left = 481
          Top = 102
          Width = 81
          Height = 22
          Hint = 'Tamanhos: 10 a 30'
          MaxValue = 30
          MinValue = 8
          TabOrder = 10
          Value = 10
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 658
      Height = 46
      Align = alTop
      TabOrder = 2
      object lblConsultar: TLabel
        Left = 16
        Top = 5
        Width = 32
        Height = 13
        Caption = '&Grupo:'
        FocusControl = edtGrupo
        Transparent = True
      end
      object spLocalizarGrupo: TSpeedButton
        Left = 110
        Top = 19
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
        Top = 24
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
        Top = 21
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
  end
  inherited pnlBotoes: TPanel
    Top = 475
    Width = 660
    Height = 52
    inherited BtSair: TBitBtn
      Left = 577
      Top = 14
    end
    inherited btnVisualizar: TBitBtn
      Left = 397
      Top = 14
      OnClick = btnVisualizarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
        CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
        1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
        D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
        A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
        81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
        7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
        A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
        93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
        E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
        BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
        EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
        8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
        55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
        926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    end
    object btnCarta: TBitBtn
      Left = 7
      Top = 14
      Width = 97
      Height = 25
      Hint = 'Cadastro de Carta Modelos de Carta de Aviso'
      Caption = 'Modelos de Cartas'
      TabOrder = 2
      OnClick = btnCartaClick
    end
    object btnImprimir: TBitBtn
      Left = 485
      Top = 14
      Width = 75
      Height = 25
      Hint = 'Imprimir todos'
      Caption = '&Imprimir'
      TabOrder = 3
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
    object rgTipo: TRadioGroup
      Left = 110
      Top = 8
      Width = 160
      Height = 32
      Caption = '[ Tipo ]'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Paisagem'
        'Retrato')
      ParentFont = False
      TabOrder = 4
    end
    object cbkSegundaVia: TCheckBox
      Left = 278
      Top = 7
      Width = 112
      Height = 17
      Caption = 'Imprimir 2'#170' Via'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object cboTabela: TCheckBox
      Left = 278
      Top = 26
      Width = 116
      Height = 17
      Caption = 'Imprimir Tabela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object dsModelos: TDataSource
    DataSet = dmPesquisas.cdsModeloCartas
    Left = 220
    Top = 356
  end
  object dstConsultar: TSQLDataSet
    CommandText = 
      'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE,' +
      #13#10'C.COT_PLANO, C.COT_POSICAO, C.COT_FLCONTEMPLADO, CL.CLI_NOME,'#13 +
      #10'CL.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO,'#13#10'CL.CLI_CIDADE, ' +
      'CL.CLI_UFCLIE'#13#10'from COTAS C'#13#10'INNER JOIN CLIENTES CL ON CL.CLI_CO' +
      'DIGO = C.COT_CDCLIE'#13#10'Where (C.COT_CDGRUPO = :pCDGRUPO)'#13#10'order by' +
      ' C.COT_NRVENDA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pCDGRUPO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 321
    Top = 209
  end
  object dspConsultar: TDataSetProvider
    DataSet = dstConsultar
    Options = [poAllowCommandText]
    Left = 377
    Top = 209
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE,' +
      ' C.COT_PLANO, C.COT_POSICAO, C.COT_FLCONTEMPLADO, CL.CLI_NOME, C' +
      'L.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO, CL.CLI_CIDADE, CL.' +
      'CLI_UFCLIE from COTAS C INNER JOIN CLIENTES CL ON CL.CLI_CODIGO ' +
      '= C.COT_CDCLIE Where (C.COT_CDGRUPO = :pCDGRUPO) order by C.COT_' +
      'NRVENDA'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pCDGRUPO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultar'
    OnCalcFields = cdsConsultarCalcFields
    Left = 433
    Top = 209
    object cdsConsultarCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsConsultarCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultarCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultarCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsConsultarCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultarCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsConsultarCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsConsultarCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
    end
    object cdsConsultarCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsConsultarCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsConsultarCONTEMPLADO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CONTEMPLADO'
      Size = 3
    end
  end
  object dsCotas: TDataSource
    AutoEdit = False
    DataSet = cdsConsultar
    OnDataChange = dsCotasDataChange
    Left = 529
    Top = 233
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 505
    Top = 201
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
    Left = 385
    Top = 153
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 194998
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 179123
        mmLeft = 6350
        mmTop = 8467
        mmWidth = 120650
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Informativo Coopercarro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 36248
        mmTop = 11906
        mmWidth = 57944
        BandType = 4
      end
      object lblData: TppLabel
        UserName = 'lblData'
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 111835
        mmTop = 19315
        mmWidth = 11726
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CAR_HISTORICO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 104775
        mmLeft = 7938
        mmTop = 27517
        mmWidth = 117211
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 144992
        mmWidth = 120386
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Grupo: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 150813
        mmWidth = 12700
        BandType = 4
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
        mmHeight = 4233
        mmLeft = 37571
        mmTop = 150813
        mmWidth = 8996
        BandType = 4
      end
      object lblGrupo: TppLabel
        UserName = 'lblGrupo'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 150813
        mmWidth = 5821
        BandType = 4
      end
      object lblCota: TppLabel
        UserName = 'lblCota'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47625
        mmTop = 150813
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 162190
        mmWidth = 20373
        BandType = 4
      end
      object lblCliente: TppLabel
        UserName = 'lblCliente'
        Caption = 'lblCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 167217
        mmWidth = 14288
        BandType = 4
      end
      object lblEndereco: TppLabel
        UserName = 'lblEndereco'
        Caption = 'lblEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 172509
        mmWidth = 18521
        BandType = 4
      end
      object lblCidade: TppLabel
        UserName = 'lblCidade'
        Caption = 'lblCidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 177536
        mmWidth = 14552
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 160073
        mmWidth = 120386
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 179123
        mmLeft = 151871
        mmTop = 8467
        mmWidth = 121973
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 151871
        mmTop = 144992
        mmWidth = 120121
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 151871
        mmTop = 160073
        mmWidth = 120386
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Informativo Coopercarro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 180182
        mmTop = 11906
        mmWidth = 61119
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'CAR_HISTORICO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 104775
        mmLeft = 153723
        mmTop = 27517
        mmWidth = 118269
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblData2: TppLabel
        UserName = 'lblData1'
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 258234
        mmTop = 19315
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label6'
        Caption = '2a. Via - Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 243153
        mmTop = 9260
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 153459
        mmTop = 162190
        mmWidth = 20373
        BandType = 4
      end
      object lblCliente2: TppLabel
        UserName = 'lblCliente1'
        Caption = 'lblCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153459
        mmTop = 167217
        mmWidth = 14288
        BandType = 4
      end
      object lblEndereco2: TppLabel
        UserName = 'lblEndereco1'
        Caption = 'lblEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153459
        mmTop = 172509
        mmWidth = 18521
        BandType = 4
      end
      object lblCidade2: TppLabel
        UserName = 'lblCidade1'
        Caption = 'lblCidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153459
        mmTop = 177536
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label7'
        Caption = 'Grupo: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 150813
        mmWidth = 12700
        BandType = 4
      end
      object lblGrupo2: TppLabel
        UserName = 'lblGrupo1'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 150813
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Cota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 184415
        mmTop = 150813
        mmWidth = 8996
        BandType = 4
      end
      object lblCota2: TppLabel
        UserName = 'lblCota1'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 194469
        mmTop = 150813
        mmWidth = 5821
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsModeloImpressao
    UserName = 'DBPipeline1'
    Left = 425
    Top = 153
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAR_CODIGO'
      FieldName = 'CAR_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CAR_DESCRICAO'
      FieldName = 'CAR_DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CAR_HISTORICO'
      FieldName = 'CAR_HISTORICO'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CAR_COMPLEMENTO'
      FieldName = 'CAR_COMPLEMENTO'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'CAR_MENSAVAL'
      FieldName = 'CAR_MENSAVAL'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object dsModeloImpressao: TDataSource
    DataSet = dmPesquisas.cdsCartas
    Left = 465
    Top = 153
  end
  object ppReport2: TppReport
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
    Left = 297
    Top = 169
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 265907
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 255059
        mmLeft = 6350
        mmTop = 8467
        mmWidth = 182563
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Informativo Coopercarro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 69586
        mmTop = 15875
        mmWidth = 57944
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'CAR_HISTORICO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 169598
        mmLeft = 14552
        mmTop = 41804
        mmWidth = 168011
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object lblData02: TppLabel
        UserName = 'lblData2'
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 27252
        mmWidth = 11642
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 227807
        mmWidth = 182298
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Grupo: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 218282
        mmWidth = 12700
        BandType = 4
      end
      object lblGrupo02: TppLabel
        UserName = 'lblGrupo2'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 218282
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Cota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 218282
        mmWidth = 8996
        BandType = 4
      end
      object lblCota02: TppLabel
        UserName = 'lblCota2'
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 48419
        mmTop = 218282
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 232569
        mmWidth = 20373
        BandType = 4
      end
      object lblCliente02: TppLabel
        UserName = 'lblCliente2'
        Caption = 'lblCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 237596
        mmWidth = 14288
        BandType = 4
      end
      object lblEndereco02: TppLabel
        UserName = 'lblEndereco2'
        Caption = 'lblEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 242888
        mmWidth = 18521
        BandType = 4
      end
      object lblCidade02: TppLabel
        UserName = 'lblCidade2'
        Caption = 'lblCidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 10054
        mmTop = 247915
        mmWidth = 14552
        BandType = 4
      end
      object lblSegundaVia: TppLabel
        UserName = 'lblSegundaVia'
        Caption = 'lblSegundaVia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 157427
        mmTop = 22225
        mmWidth = 24215
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Tabela.xls;Extended' +
      ' Properties=Excel 8.0;Persist Security Info=False'
    CursorLocation = clUseServer
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 272
    Top = 16
  end
  object dsTabela: TDataSource
    DataSet = ADOTable1
    Left = 352
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'Dados$'
    Left = 313
    Top = 17
    object ADOTable1VALORDOCRDITOR: TFloatField
      FieldName = 'VALOR DO CR'#201'DITO R$'
      DisplayFormat = '###,##0.#0'
    end
    object ADOTable1DURAODOPLANO: TFloatField
      FieldName = 'DURA'#199#195'O DO PLANO'
    end
    object ADOTable1ENTRADADOPLANO: TFloatField
      FieldName = 'ENTRADA DO PLANO'
      DisplayFormat = '###,##0.#0'
    end
    object ADOTable1DEMAISPARCELAS: TFloatField
      FieldName = 'DEMAIS PARCELAS'
      DisplayFormat = '###,##0.#0'
    end
    object ADOTable1VALORDOCREDITO: TFloatField
      FieldName = 'VALOR DO CREDITO'
      DisplayFormat = '###,##0.#0'
    end
    object ADOTable1DURAODOPLANO1: TFloatField
      FieldName = 'DURA'#199#195'O DO PLANO1'
    end
    object ADOTable1ENTRADADOPLANO1: TFloatField
      FieldName = 'ENTRADA DO PLANO1'
      DisplayFormat = '###,##0.#0'
    end
    object ADOTable1DEMAISPARCELAS1: TFloatField
      FieldName = 'DEMAIS PARCELAS1'
      DisplayFormat = '###,##0.#0'
    end
  end
  object ppDBPTabela: TppDBPipeline
    DataSource = dsTabela
    UserName = 'DBPTabela'
    Left = 481
    Top = 73
    object ppDBPTabelappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR DO CR'#201'DITO R$'
      FieldName = 'VALOR DO CR'#201'DITO R$'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPTabelappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DURA'#199#195'O DO PLANO'
      FieldName = 'DURA'#199#195'O DO PLANO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPTabelappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA DO PLANO'
      FieldName = 'ENTRADA DO PLANO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPTabelappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEMAIS PARCELAS'
      FieldName = 'DEMAIS PARCELAS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPTabelappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR DO CREDITO'
      FieldName = 'VALOR DO CREDITO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPTabelappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DURA'#199#195'O DO PLANO1'
      FieldName = 'DURA'#199#195'O DO PLANO1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPTabelappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA DO PLANO1'
      FieldName = 'ENTRADA DO PLANO1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPTabelappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEMAIS PARCELAS1'
      FieldName = 'DEMAIS PARCELAS1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Visualizar Impress'#227'o'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.MarginBottom = 1.000000000000000000
    SystemPrinter.MarginLeft = 1.000000000000000000
    SystemPrinter.MarginRight = 1.000000000000000000
    SystemPrinter.MarginTop = 1.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    OnPrint = RvSystem1Print
    OnBeforePrint = RvSystem1BeforePrint
    OnPrintHeader = RvSystem1PrintHeader
    OnPrintFooter = RvSystem1PrintFooter
    Left = 299
    Top = 96
  end
end
