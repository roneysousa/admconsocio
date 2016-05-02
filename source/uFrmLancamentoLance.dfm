inherited frmLancamentoLance: TfrmLancamentoLance
  Left = 201
  Top = 132
  Caption = 'Lancamento de Lance'
  ClientHeight = 505
  ClientWidth = 762
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 486
    Width = 762
  end
  inherited pnlProcurar: TPanel
    Width = 762
    inherited Label1: TLabel
      Left = 167
    end
    inherited spLocCota: TSpeedButton
      Left = 260
    end
    inherited btnConsultar: TBitBtn
      Left = 293
    end
    inherited edtCota: TEdit
      Left = 167
      OnChange = edtCotaChange
      OnEnter = edtCotaEnter
      OnExit = edtCotaExit
    end
    object btnImpressao: TBitBtn
      Left = 577
      Top = 15
      Width = 169
      Height = 25
      Hint = 'Sele'#231#227'o de Grupo e Assembl'#233'ia para impress'#227'o de Resultado'
      Caption = 'Impress'#227'o  de Resultado'
      TabOrder = 3
      OnClick = btnImpressaoClick
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D00000000000
        00000000000000000000000000000000000000000000000000000000B0C8D0B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0000000BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000B0C8D0B0C8D00000B0C8D0000000
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBF
        BF000000000000000000B0C8D0B0C8D00000B0C8D0000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF00
        0000B0C8D0B0C8D00000B0C8D000000000000000000000000000000000000000
        0000000000000000000000000000000000000000BFBFBFBFBFBF000000B0C8D0
        0000B0C8D0000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBF000000BFBFBF000000BFBFBF000000B0C8D00000B0C8D0B0C8D0
        000000000000000000000000000000000000000000000000000000000000BFBF
        BF000000BFBFBF000000000000B0C8D00000B0C8D0B0C8D0B0C8D0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF000000BF
        BFBF000000B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0000000FFFFFF00000000
        0000000000000000000000FFFFFF000000000000000000000000B0C8D0B0C8D0
        0000B0C8D0B0C8D0B0C8D0B0C8D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0000000FFFFFF000000000000000000000000000000FFFF
        FF000000B0C8D0B0C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8
        D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B0
        C8D0B0C8D0B0C8D00000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D000000000
        0000000000000000000000000000000000000000000000B0C8D0B0C8D0B0C8D0
        0000B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0
        B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D0B0C8D00000}
    end
    object btnLocNome: TBitBtn
      Left = 404
      Top = 16
      Width = 95
      Height = 25
      Hint = 'Localizar por nome do cliente'
      Caption = 'Loc. &Nome'
      TabOrder = 4
      OnClick = btnLocNomeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object pnlDadosCliente: TPanel
    Left = 0
    Top = 57
    Width = 489
    Height = 284
    Align = alLeft
    Enabled = False
    TabOrder = 2
    object Label5: TLabel
      Left = 17
      Top = 1
      Width = 27
      Height = 13
      Caption = 'Plano'
      Transparent = True
    end
    object Label7: TLabel
      Left = 15
      Top = 42
      Width = 54
      Height = 13
      Caption = 'C'#243'd.Cliente'
      Transparent = True
    end
    object Label8: TLabel
      Left = 114
      Top = 42
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label9: TLabel
      Left = 15
      Top = 79
      Width = 33
      Height = 13
      Caption = 'Cr'#233'dito'
      Transparent = True
    end
    object Label2: TLabel
      Left = 113
      Top = 79
      Width = 60
      Height = 13
      Caption = 'Cr'#233'dito Total'
      Transparent = True
    end
    object Label13: TLabel
      Left = 15
      Top = 153
      Width = 74
      Height = 13
      Caption = 'Parcelas Pagas'
      Transparent = True
    end
    object Label14: TLabel
      Left = 113
      Top = 153
      Width = 91
      Height = 13
      Caption = 'Parcelas Atrasadas'
      Transparent = True
    end
    object Label15: TLabel
      Left = 212
      Top = 153
      Width = 87
      Height = 13
      Caption = 'Parcelas a Vencer'
      Transparent = True
    end
    object Label16: TLabel
      Left = 114
      Top = 193
      Width = 90
      Height = 13
      Caption = 'Vl. Parc. Atrasadas'
      Transparent = True
    end
    object Label17: TLabel
      Left = 212
      Top = 193
      Width = 86
      Height = 13
      Caption = 'Vl. Parc. a Vencer'
      Transparent = True
    end
    object Label21: TLabel
      Left = 114
      Top = 1
      Width = 31
      Height = 13
      Caption = 'Venda'
      Transparent = True
    end
    object txtNMCLIE: TEdit
      Left = 114
      Top = 58
      Width = 327
      Height = 21
      Hint = 'Informe o valor para consultar'
      CharCase = ecUpperCase
      Ctl3D = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtCreditoTotal: TCurrencyEdit
      Left = 113
      Top = 94
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object GroupBox2: TGroupBox
      Left = 240
      Top = 81
      Width = 199
      Height = 35
      Caption = '[ Situa'#231#227'o da Cota ]'
      TabOrder = 5
      object lbl_situacao: TLabel
        Left = 11
        Top = 17
        Width = 12
        Height = 16
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rgSituacao: TRadioGroup
      Left = 16
      Top = 120
      Width = 297
      Height = 30
      Caption = '[ Situa'#231#227'o ]'
      Columns = 3
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Vendido')
      TabOrder = 6
    end
    object cbxContemplacao: TCheckBox
      Left = 328
      Top = 130
      Width = 97
      Height = 17
      Caption = 'Contemplado'
      TabOrder = 7
    end
    object edtParcPagas: TCurrencyEdit
      Left = 15
      Top = 168
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = '0'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object edtParcAtras: TCurrencyEdit
      Left = 113
      Top = 168
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = '0'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object edtParcVinc: TCurrencyEdit
      Left = 212
      Top = 168
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = '0'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object edtPCAtrasadas: TCurrencyEdit
      Left = 114
      Top = 208
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object edtValorPCVincendas: TCurrencyEdit
      Left = 212
      Top = 208
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
    end
    object dbePLANO: TDBEdit
      Left = 17
      Top = 17
      Width = 89
      Height = 21
      DataField = 'COT_PLANO'
      DataSource = dsVendaContas
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 58
      Width = 89
      Height = 21
      DataField = 'COT_CDCLIE'
      DataSource = dsVendaContas
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 94
      Width = 89
      Height = 21
      DataField = 'COT_VALCRE'
      DataSource = dsVendaContas
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 114
      Top = 17
      Width = 84
      Height = 21
      DataField = 'COT_NRVENDA'
      DataSource = dsVendaContas
      TabOrder = 13
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 341
    Width = 762
    Height = 145
    Align = alBottom
    TabOrder = 3
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 760
      Height = 123
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
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REC_NRPARC'
          Title.Alignment = taCenter
          Title.Caption = 'PC'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DTVENC'
          Title.Caption = 'Data Venc.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VLPARC'
          Title.Caption = 'Valor Parc.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_FUNDORES'
          Title.Alignment = taRightJustify
          Title.Caption = 'Fund.Reserva'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_TAXA_ADM'
          Title.Alignment = taRightJustify
          Title.Caption = 'Taxa Adm.'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_TOTAL_CALC'
          Title.Caption = 'Total Pagar'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DTPAGA'
          Title.Caption = 'Data Pgto.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VLMULT'
          Title.Alignment = taRightJustify
          Title.Caption = 'Multa'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_TOTAL_PAGO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Pago'
          Width = 85
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 124
      Width = 760
      Height = 20
      DataSource = dsParcelas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 464
    Top = 57
    Width = 298
    Height = 284
    Align = alRight
    Caption = '[ Lan'#231'amento ]'
    TabOrder = 4
    object Label3: TLabel
      Left = 11
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Transparent = True
    end
    object Label4: TLabel
      Left = 87
      Top = 56
      Width = 22
      Height = 13
      Caption = 'Cota'
      Transparent = True
    end
    object Label6: TLabel
      Left = 11
      Top = 13
      Width = 53
      Height = 13
      Caption = 'Assembl'#233'ia'
      Transparent = True
    end
    object Label10: TLabel
      Left = 11
      Top = 98
      Width = 24
      Height = 13
      Caption = 'Valor'
      Transparent = True
    end
    object Label11: TLabel
      Left = 158
      Top = 98
      Width = 14
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 183
      Top = 100
      Width = 55
      Height = 13
      Caption = 'Nr.Parcelas'
      Transparent = True
    end
    object edtCDGrupo: TEdit
      Left = 11
      Top = 72
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 1
      OnChange = edtCDGrupoChange
      OnExit = edtCDGrupoExit
      OnKeyPress = edtCDGrupoKeyPress
    end
    object edtNumCota: TEdit
      Left = 87
      Top = 72
      Width = 60
      Height = 21
      Hint = 'Informe o valor para consultar'
      CharCase = ecUpperCase
      Ctl3D = True
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = edtNumCotaEnter
      OnExit = edtNumCotaExit
      OnKeyPress = edtNumCotaKeyPress
    end
    object edtNRASSE: TEdit
      Left = 11
      Top = 28
      Width = 136
      Height = 27
      Hint = 'Informe o n'#250'mero da assembl'#233'ia'
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 7
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = edtNRASSEChange
      OnKeyPress = edtNRASSEKeyPress
    end
    object edtValor: TCurrencyEdit
      Left = 11
      Top = 113
      Width = 90
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ',0.00;-,0.00'
      MaxLength = 9
      ParentCtl3D = False
      TabOrder = 4
      OnChange = edtValorChange
      OnEnter = edtValorEnter
      OnExit = edtValorExit
      OnKeyDown = edtValorKeyDown
      OnKeyPress = edtValorKeyPress
    end
    object edtPerc: TCurrencyEdit
      Left = 108
      Top = 113
      Width = 63
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = ',0.00;-,0.00'
      MaxLength = 6
      MaxValue = 100.000000000000000000
      ParentCtl3D = False
      TabOrder = 5
      OnChange = edtPercChange
      OnEnter = edtPercEnter
      OnExit = edtPercExit
      OnKeyPress = edtPercKeyPress
    end
    object edtNrCota: TEdit
      Left = 182
      Top = 113
      Width = 90
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnKeyPress = edtNrCotaKeyPress
    end
    object btnGravar: TBitBtn
      Left = 11
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 7
      OnClick = btnGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
        1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
        1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
        1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
        13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object btnExcluir: TBitBtn
      Left = 102
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 8
      OnClick = btnExcluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
        0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
        0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object btnCancelar: TBitBtn
      Left = 194
      Top = 144
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = btnCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 178
      Width = 294
      Height = 104
      Align = alBottom
      Ctl3D = False
      DataSource = dsLanceCota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'LAN_NRASSEMBLEIA'
          Title.Caption = 'Assemb.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAN_VALOR'
          Title.Caption = 'Valor'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAN_PELANC'
          Title.Caption = 'Perc'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAN_DESC_TIPO'
          Title.Caption = 'Desc. Tipo'
          Visible = True
        end>
    end
    object rbLanceValor: TRadioGroup
      Left = 199
      Top = -5
      Width = 107
      Height = 42
      ItemIndex = 1
      Items.Strings = (
        '&Valor'
        '&Percentual')
      TabOrder = 11
      Visible = False
      OnClick = rbLanceValorClick
    end
    object rbTipoLance: TRadioGroup
      Left = 166
      Top = 50
      Width = 104
      Height = 49
      Caption = '[ Tipo de Lance ]'
      ItemIndex = 0
      Items.Strings = (
        'Livre'
        'Limitado')
      TabOrder = 3
      OnClick = rbTipoLanceClick
    end
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsConsultaCota
    Left = 388
    Top = 288
  end
  object dsVendaContas: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsVendaContas
    Left = 360
    Top = 272
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    Left = 420
    Top = 298
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 
      'select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDC' +
      'LIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT'#13#10'INNER join clien' +
      'tes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 340
    Top = 226
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 388
    Top = 226
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 396
    Top = 258
    object cdsConsultarCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultarCOT_POSICAO: TStringField
      Alignment = taCenter
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
  end
  object dsLanceCota: TDataSource
    DataSet = dmAdmDados.cdsLancesCotas
    Left = 648
    Top = 249
  end
  object PopupMenu1: TPopupMenu
    Left = 412
    Top = 184
    object Cadastro1: TMenuItem
      Caption = '&Cadastros'
      object mnuGruposItem: TMenuItem
        Caption = 'Grupos...'
        OnClick = mnuGruposItemClick
      end
      object mnuClienteItem: TMenuItem
        Caption = '&Clientes...'
        OnClick = mnuClienteItemClick
      end
      object mnuVendasItem: TMenuItem
        Caption = '&Vendas...'
        OnClick = mnuVendasItemClick
      end
      object BaixaParcelas1: TMenuItem
        Caption = '&Baixa Parcelas'
        object mnuCaixaItem: TMenuItem
          Caption = 'Caixa'
          OnClick = mnuCaixaItemClick
        end
      end
    end
    object Parametro1: TMenuItem
      Caption = '&Par'#226'metros'
      Visible = False
    end
  end
end
