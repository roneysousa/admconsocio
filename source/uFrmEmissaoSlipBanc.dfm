inherited FrmEmissaoSlipBanc: TFrmEmissaoSlipBanc
  Left = 228
  Top = 123
  Caption = 'Emiss'#227'o de Slip Banc'#225'rio'
  ClientHeight = 552
  ClientWidth = 777
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 533
    Width = 777
    Visible = False
  end
  inherited pnlProcurar: TPanel
    Width = 777
    Height = 51
    TabOrder = 0
    inherited edtCota: TEdit
      OnChange = edtCotaChange
      OnEnter = edtCotaEnter
    end
    object BitBtn1: TBitBtn
      Left = 456
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Ver Clientes'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
    object rbgTipoBoleto: TRadioGroup
      Left = 563
      Top = 4
      Width = 130
      Height = 36
      Caption = '[ Boletos ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Avulso')
      TabOrder = 4
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 51
    Width = 217
    Height = 417
    Align = alLeft
    TabOrder = 2
    object rbSelecao: TRadioGroup
      Left = 1
      Top = 113
      Width = 215
      Height = 97
      Align = alTop
      Caption = '[ Sele'#231#227'o ]'
      ItemIndex = 0
      Items.Strings = (
        'Grupo'
        'Grupo a partir Cota Selecionada'
        'Grupo, Cota e Parcelas Selecionada'
        'Grupo e Cota Selecionada')
      TabOrder = 1
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 210
      Width = 215
      Height = 206
      Align = alClient
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 211
        Height = 189
        Align = alClient
        Ctl3D = False
        DataSource = dsBancos
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
            FieldName = 'BAN_NRAGEN'
            Title.Caption = 'Ag'#234'ncia'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_NOME'
            Title.Caption = 'Banco'
            Width = 140
            Visible = True
          end>
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 112
      Align = alTop
      TabOrder = 0
      object Label9: TLabel
        Left = 14
        Top = 6
        Width = 38
        Height = 13
        Caption = 'Per'#237'odo'
        Transparent = True
      end
      object edtDTINIC: TDateEdit
        Left = 14
        Top = 20
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        OnExit = edtDTINICExit
      end
      object edtDTFINA: TDateEdit
        Left = 14
        Top = 46
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edtDTFINAExit
      end
      object CheckBox1: TCheckBox
        Left = 15
        Top = 74
        Width = 169
        Height = 17
        Caption = 'Emitir Resultado dos Lances'
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 217
    Top = 51
    Width = 560
    Height = 417
    Align = alClient
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 158
      Width = 558
      Height = 180
      Align = alClient
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 556
        Height = 178
        Align = alClient
        Caption = '[ Parcelas Abertas ]'
        TabOrder = 0
        object grdConsultar: TDBGrid
          Left = 2
          Top = 34
          Width = 552
          Height = 142
          Align = alClient
          Ctl3D = False
          DataSource = dsParcelas
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
          OnDblClick = grdConsultarDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_NRPARC'
              Title.Alignment = taCenter
              Title.Caption = 'PC'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_DTVENC'
              Title.Caption = 'Dt.Venc.'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_TOTAL_CALC'
              Title.Caption = 'Total Pagar'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_CREDITO'
              Title.Caption = 'Cr'#233'dito'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_NOSSONUMERO'
              Title.Caption = 'Nosso Num.'
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Fator Venc.'
              Visible = False
            end
            item
              Expanded = False
              Title.Caption = 'Codigo de Barras'
              Width = 281
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Digito'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_VALORTARIFABANCO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Tarifa Banco'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_VALORTITULOTITULO_CALC'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Titulo'
              Width = 77
              Visible = True
            end>
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 15
          Width = 552
          Height = 19
          DataSource = dsParcelas
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 1
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 338
      Width = 558
      Height = 78
      Align = alBottom
      TabOrder = 2
      object Label11: TLabel
        Left = 113
        Top = 1
        Width = 79
        Height = 13
        Caption = 'Data Assembl'#233'ia'
        Transparent = True
      end
      object Label13: TLabel
        Left = 9
        Top = 38
        Width = 98
        Height = 13
        Caption = 'Contemplado Sorteio'
        Transparent = True
      end
      object Label14: TLabel
        Left = 113
        Top = 38
        Width = 95
        Height = 13
        Caption = 'Contemplado Lance'
        Transparent = True
      end
      object Label15: TLabel
        Left = 9
        Top = 1
        Width = 74
        Height = 13
        Caption = 'N'#186'.  Assembl'#233'ia'
        Transparent = True
      end
      object edtDTASSE: TDateEdit
        Left = 113
        Top = 17
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edtDTASSEExit
      end
      object edtSorteio: TEdit
        Left = 9
        Top = 53
        Width = 90
        Height = 21
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = edtSorteioKeyPress
      end
      object edtLance: TEdit
        Left = 113
        Top = 52
        Width = 292
        Height = 21
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
      end
      object btnLimpar: TBitBtn
        Left = 409
        Top = 49
        Width = 75
        Height = 25
        Caption = '&Limpar'
        TabOrder = 4
        OnClick = btnLimparClick
      end
      object edtNumAsse: TEdit
        Left = 9
        Top = 17
        Width = 90
        Height = 21
        Hint = 'Informe o numero da assembleia'
        CharCase = ecUpperCase
        Ctl3D = True
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = edtNumAsseKeyPress
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 558
      Height = 157
      Align = alTop
      Enabled = False
      TabOrder = 0
      object Label2: TLabel
        Left = 9
        Top = 4
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Transparent = True
      end
      object Label4: TLabel
        Left = 108
        Top = 4
        Width = 22
        Height = 13
        Caption = 'Cota'
        Transparent = True
      end
      object Label5: TLabel
        Left = 208
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Plano'
        Transparent = True
      end
      object Label8: TLabel
        Left = 9
        Top = 39
        Width = 31
        Height = 13
        Caption = 'Nome:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 9
        Top = 79
        Width = 31
        Height = 13
        Caption = 'Venda'
        Transparent = True
      end
      object Label3: TLabel
        Left = 108
        Top = 77
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
        Transparent = True
      end
      object Label7: TLabel
        Left = 9
        Top = 116
        Width = 62
        Height = 13
        Caption = 'Nome Banco'
        Transparent = True
      end
      object Label12: TLabel
        Left = 275
        Top = 114
        Width = 83
        Height = 13
        Caption = 'Fator Vencimento'
        Transparent = True
      end
      object cmbGrupos: TDBLookupComboBox
        Left = 9
        Top = 17
        Width = 84
        Height = 21
        DataField = 'COT_NMGRUP'
        DataSource = dsVendaContas
        ReadOnly = True
        TabOrder = 0
      end
      object dbeCOTA: TDBEdit
        Left = 108
        Top = 17
        Width = 80
        Height = 21
        DataField = 'COT_NRCOTA'
        DataSource = dsVendaContas
        ReadOnly = True
        TabOrder = 1
      end
      object dbePLANO: TDBEdit
        Left = 208
        Top = 17
        Width = 88
        Height = 21
        DataField = 'COT_PLANO'
        DataSource = dsVendaContas
        TabOrder = 2
      end
      object txtNMCLIE: TEdit
        Left = 9
        Top = 55
        Width = 388
        Height = 21
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 9
        Top = 92
        Width = 88
        Height = 21
        DataField = 'COT_NRVENDA'
        DataSource = dsVendaContas
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 108
        Top = 92
        Width = 88
        Height = 21
        DataField = 'COT_VALCRE'
        DataSource = dsVendaContas
        TabOrder = 5
      end
      object rgSituacao: TRadioGroup
        Left = 208
        Top = 79
        Width = 188
        Height = 33
        Caption = '[ Situa'#231#227'o ] '
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Ativas'
          'Inativas')
        TabOrder = 6
      end
      object edtBanco: TEdit
        Left = 9
        Top = 131
        Width = 259
        Height = 21
        TabOrder = 7
      end
      object DateEdit1: TDateEdit
        Left = 275
        Top = 131
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 8
        Text = '07/10/1997'
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 468
    Width = 777
    Height = 65
    Align = alBottom
    ParentBackground = False
    TabOrder = 4
    object RadioGroup2: TRadioGroup
      Left = 6
      Top = 3
      Width = 154
      Height = 49
      Caption = '[ Filtragem de Cotas/Banco ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Selecionado')
      ParentFont = False
      TabOrder = 0
    end
    object rbTipoBoleto: TRadioGroup
      Left = 166
      Top = 3
      Width = 135
      Height = 49
      Caption = '[ Tipo Boleto ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Carn'#234)
      ParentFont = False
      TabOrder = 1
    end
    object btnVisualizar: TBitBtn
      Left = 453
      Top = 32
      Width = 75
      Height = 25
      Hint = 'Visualizar Impress'#227'o'
      Caption = '&Visualizar'
      TabOrder = 2
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
    object BtSair: TBitBtn
      Left = 622
      Top = 32
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
    object btnTodos: TBitBtn
      Left = 538
      Top = 32
      Width = 75
      Height = 25
      Hint = 'Imprimir todos da cota atual'
      Caption = '&Imp.Todos'
      TabOrder = 4
      OnClick = btnTodosClick
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
    object cbxNossoNumero: TCheckBox
      Left = 312
      Top = 6
      Width = 217
      Height = 17
      Caption = 'N'#227'o imprimir boletos c/Nosso N'#250'mero'
      TabOrder = 5
    end
    object cbxGrupo: TCheckBox
      Left = 544
      Top = 6
      Width = 153
      Height = 17
      Caption = 'Imprimir Grupo &Selecionado'
      TabOrder = 6
    end
  end
  object dsVendaContas: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsVendaContas
    Left = 336
    Top = 40
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = dmRelatorios.cdsConsultaCota
    Left = 380
    Top = 280
  end
  object dsBancos: TDataSource
    DataSet = dmPesquisas.cdsListaBancos
    Left = 153
    Top = 356
  end
  object dstBoletos: TSQLDataSet
    CommandText = 
      'Select C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie,' +
      #13#10'C.cot_posicao, COUNT(PC.rec_nrvend) FROM cotas C'#13#10'inner join P' +
      'ARCELAS PC on C.cot_nrvenda = PC.rec_nrvend '#13#10'Where (C.cot_cdgru' +
      'po = :pGRUPO) And (C.cot_posicao = :pposicao)'#13#10'And (PC.REC_DTPAG' +
      'A IS NULL) AND (PC.rec_dtvenc >= :pDTINIC)'#13#10'AND (PC.rec_dtvenc <' +
      '= :pDTFINA)'#13#10'Group by C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota' +
      ', C.cot_cdclie,'#13#10'C.cot_posicao;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pGRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pposicao'
        ParamType = ptInput
      end
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
    Left = 536
    Top = 67
  end
  object dspBoletos: TDataSetProvider
    DataSet = dstBoletos
    Options = [poAllowCommandText]
    Left = 586
    Top = 68
  end
  object cdsBoletosClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pGRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pposicao'
        ParamType = ptInput
      end
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
    ProviderName = 'dspBoletos'
    Left = 626
    Top = 68
    object cdsBoletosClientesCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsBoletosClientesCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsBoletosClientesCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsBoletosClientesCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsBoletosClientesCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsBoletosClientesCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
      Required = True
    end
  end
  object dsBoletosClientes: TDataSource
    DataSet = cdsBoletosClientes
    OnDataChange = dsBoletosClientesDataChange
    Left = 666
    Top = 68
  end
  object DataSource1: TDataSource
    DataSet = dmRelatorios.cdsBoletosClientes
    OnDataChange = DataSource1DataChange
    Left = 145
    Top = 108
  end
end
