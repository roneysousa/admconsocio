inherited FrmCaixaBaixaEstornarLances: TFrmCaixaBaixaEstornarLances
  Left = 219
  Top = 121
  Caption = 'Baixa / Estornar de Lances'
  ClientHeight = 496
  ClientWidth = 640
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 477
    Width = 640
  end
  inherited pnlProcurar: TPanel
    Width = 640
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 434
    Height = 153
    Align = alClient
    Enabled = False
    TabOrder = 2
    object Label5: TLabel
      Left = 230
      Top = 2
      Width = 27
      Height = 13
      Caption = 'Plano'
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 77
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object Label8: TLabel
      Left = 16
      Top = 39
      Width = 63
      Height = 13
      Caption = 'Valor Parcela'
      Transparent = True
    end
    object Label4: TLabel
      Left = 144
      Top = 3
      Width = 31
      Height = 13
      Caption = 'Venda'
      Transparent = True
    end
    object Label12: TLabel
      Left = 16
      Top = 2
      Width = 62
      Height = 13
      Caption = 'Grupo/Nome'
      Transparent = True
    end
    object edtNmclie: TEdit
      Left = 16
      Top = 92
      Width = 393
      Height = 21
      TabOrder = 4
    end
    object ckbContemplado: TCheckBox
      Left = 16
      Top = 125
      Width = 97
      Height = 17
      Caption = 'Contemplado'
      TabOrder = 5
    end
    object ckbMult: TCheckBox
      Left = 304
      Top = 125
      Width = 97
      Height = 17
      Caption = 'Multpas Contem'
      TabOrder = 6
    end
    object dbePLANO: TDBEdit
      Left = 230
      Top = 16
      Width = 80
      Height = 21
      DataField = 'COT_PLANO'
      DataSource = dsVendaContas
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 143
      Top = 16
      Width = 81
      Height = 21
      DataField = 'COT_NRVENDA'
      DataSource = dsVendaContas
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 58
      Top = 16
      Width = 80
      Height = 21
      DataField = 'COT_NMGRUP'
      DataSource = dsVendaContas
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 53
      Width = 104
      Height = 21
      DataField = 'COT_VALCOTA'
      DataSource = dsVendaContas
      TabOrder = 3
    end
    object dbeGrupo: TDBEdit
      Left = 16
      Top = 16
      Width = 39
      Height = 21
      DataField = 'COT_CDGRUPO'
      DataSource = dsVendaContas
      TabOrder = 7
    end
    object rbSituacao: TDBRadioGroup
      Left = 322
      Top = 10
      Width = 93
      Height = 54
      Caption = '[ Situa'#231#227'o ]'
      DataField = 'COT_POSICAO'
      DataSource = dsVendaContas
      Items.Strings = (
        'Ativo'
        'Inativo')
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
      Left = 112
      Top = 113
      Width = 184
      Height = 35
      Caption = '[ Forma de Contempal'#231#227'o ]'
      Columns = 2
      DataField = 'COT_TIPO'
      DataSource = dsVendaContas
      Items.Strings = (
        'Sorteio'
        'Lance')
      TabOrder = 9
      Values.Strings = (
        'S'
        'L')
    end
  end
  object GroupBox1: TGroupBox
    Left = 434
    Top = 57
    Width = 206
    Height = 153
    Align = alRight
    Caption = '[ Area de Pesquisa de Grupo ]'
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 11
      Top = 12
      Width = 78
      Height = 13
      Caption = 'Nome do Grupo:'
      Transparent = True
    end
    object Edit1: TEdit
      Left = 11
      Top = 28
      Width = 90
      Height = 19
      Hint = 'Informe o valor para consultar'
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = edtGrupoKeyPress
    end
    object DBNavigator1: TDBNavigator
      Left = 3
      Top = 48
      Width = 180
      Height = 22
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object grdConsultar: TDBGrid
      Left = 2
      Top = -54
      Width = 202
      Height = 205
      Align = alBottom
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Grupo'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'N'#186'. Meses'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Ativo'
          Width = 34
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 337
    Width = 640
    Height = 140
    Align = alBottom
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 638
      Height = 138
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
          Expanded = False
          FieldName = 'REC_NRPARC'
          Title.Caption = 'Parc.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DTVENC'
          Title.Caption = 'Data Venc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_TOTAL_CALC'
          Title.Caption = 'Total Pagar'
          Width = 64
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'REC_DTCREDITO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Pg.Cr'#233'dito'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_CREDITO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cr'#233'dito'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REC_TPCREDITO'
          Title.Caption = 'T.Cr'#233'd.'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DTPAGA'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_TOTAL_PAGO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total Pago'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REC_FORMABAIXA'
          Title.Caption = 'T.Baixa'
          Width = 64
          Visible = True
        end>
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 210
    Width = 640
    Height = 86
    Align = alBottom
    TabOrder = 5
    object Label7: TLabel
      Left = 13
      Top = 6
      Width = 53
      Height = 13
      Caption = 'Assembl'#233'ia'
      Transparent = True
    end
    object Label9: TLabel
      Left = 13
      Top = 46
      Width = 57
      Height = 13
      Caption = 'Valor Lance'
      Transparent = True
    end
    object Label10: TLabel
      Left = 128
      Top = 46
      Width = 94
      Height = 13
      Caption = 'Data Contempla'#231#227'o'
      Transparent = True
    end
    object Label11: TLabel
      Left = 255
      Top = 46
      Width = 61
      Height = 13
      Caption = 'Valor Acento'
      Transparent = True
    end
    object edtNRASSE: TCurrencyEdit
      Left = 13
      Top = 21
      Width = 94
      Height = 21
      AutoSize = False
      DisplayFormat = '0'
      MaxLength = 7
      TabOrder = 0
      OnExit = edtNRASSEExit
    end
    object rbTipoBaixa: TRadioGroup
      Left = 129
      Top = 8
      Width = 175
      Height = 36
      Caption = '[ Tipo de Baixa ]'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Parcelas'
        'Valor')
      TabOrder = 1
    end
    object edtValorLance: TCurrencyEdit
      Left = 13
      Top = 61
      Width = 106
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      Enabled = False
      MaxLength = 9
      ReadOnly = True
      TabOrder = 2
    end
    object edtDataContem: TDateEdit
      Left = 127
      Top = 61
      Width = 120
      Height = 21
      Enabled = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 3
    end
    object edtValorAcento: TCurrencyEdit
      Left = 255
      Top = 61
      Width = 106
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      MaxLength = 9
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 296
    Width = 640
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 6
    object btnBaixa: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Baixar'
      TabOrder = 0
      OnClick = btnBaixaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF3F3F00202020000000FFFFFFFFFFFFFFFFFF000000000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F005F5F00BFBFBFB0B0B000
        0000FFFFFF0000003FBFBF60DFDF303030CFCFCFC0C0C0303030FFFFFFFFFFFF
        3F3F009F9F00505030B0B0B0BFBFBF4040402020200000006FEFEF6FEFEF6060
        60DFDFDFCFCFCF606060FFFFFF3F3F009F9F0080BF6060DF60205F004040007F
        7F00606060202020003F3F306F6F303030CFCFCFCFCFCF3030300000009F9F00
        70AF3060DF6060DF6050CF3050CF3050CF309F9F00606060202020FFFFFFFFFF
        FF000000000000FFFFFFFFFFFF0000009F9F0040BF0050CF3060DF6080BF6070
        AF3040BF009F9F00606060202020FFFFFF000000000000FFFFFF0000009F9F00
        7070309F9F0040BF0050CF3040BF0040BF0080800050CF309F9F006060602020
        20606060CFCFCF000000FFFFFF3F3F007FBF00508F309F9F0040BF0080800060
        9F0040BF0060DF6050CF309F9F00606060505050606060000000FFFFFFFFFFFF
        3F3F007FBF00407F009F9F0040BF00609F0080BF6080BF6060DF6070AF307FBF
        00606060202020FFFFFFFFFFFFFFFFFFFFFFFF3F3F007FBF00609F609F9F0040
        BF0050CF3060DF6080BF6050CF309F9F005F5F20202020FFFFFFFFFFFFFFFFFF
        0000000000003F3F007FBF00609F609F9F0040BF0060DF6080BF609F9F003F3F
        00606060FFFFFFFFFFFFFFFFFF003F3F6FEFEF3FBFBF0000003F3F007FBF0050
        8F309F9F0040BF009F9F005F5F009F9F005F5F20404040FFFFFFFFFFFF306F6F
        6FEFEF6FEFEF000000FFFFFF3F3F007FBF00407F009F9F005F5F008080009F9F
        00404040FFFFFFFFFFFFFFFFFF000000306F6F003F3F000000000000FFFFFF3F
        3F007FBF008080608080009F9F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF606060CFCFCF000000FFFFFF3F3F007FBF009F9F00404040FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF303030606060000000FF
        FFFFFFFFFF3F3F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnEstornar: TBitBtn
      Left = 87
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Estornar'
      TabOrder = 1
      OnClick = btnEstornarClick
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FFBFBFBFBFBFBF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBF0000FF0000FF0000FFBFBFBF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBF0000
        FF0000FFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF0000FF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00
        00007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBF00007F00000000007FBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF00000000
        0000000000BFBFBF0000FF0000FF0000FF0000FF0000FF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBF0000FF0000
        FF0000FF0000FF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FF0000FF0000FF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBF0000FF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
    end
    object btnRecibo: TBitBtn
      Left = 356
      Top = 8
      Width = 95
      Height = 25
      Caption = 'Emite &Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnReciboClick
    end
    object BtGravar: TBitBtn
      Left = 180
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar dados'
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = BtGravarClick
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
    object BtCancelar: TBitBtn
      Left = 262
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 4
      OnClick = BtCancelarClick
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
    object DBNavigator3: TDBNavigator
      Left = 469
      Top = 8
      Width = 164
      Height = 25
      DataSource = dsParcelas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsConsultaCota
    Left = 372
    Top = 376
  end
  object dsVendaContas: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsVendaContas
    OnStateChange = dsVendaContasStateChange
    Left = 256
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 428
    Top = 136
    object Cadastro1: TMenuItem
      Caption = '&Cadastros'
      object Grupos1: TMenuItem
        Caption = 'Grupos...'
        OnClick = Grupos1Click
      end
      object Cliente1: TMenuItem
        Caption = '&Clientes...'
        OnClick = Cliente1Click
      end
      object Vendas1: TMenuItem
        Caption = '&Vendas...'
        OnClick = Vendas1Click
      end
      object BaixaParcelas1: TMenuItem
        Caption = '&Baixa Parcelas'
        object Caixa1: TMenuItem
          Caption = 'Caixa'
          OnClick = Caixa1Click
        end
        object Crdito1: TMenuItem
          Caption = 'Cr'#233'dito'
        end
      end
    end
    object Parametro1: TMenuItem
      Caption = '&Par'#226'metros'
    end
  end
end
