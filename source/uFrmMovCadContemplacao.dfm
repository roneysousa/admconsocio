inherited frmCadContemplacao: TfrmCadContemplacao
  Left = 254
  Top = 184
  Caption = 'Contempla'#231#227'o p/ Sorteio - Baixa/Estorno'
  ClientHeight = 431
  ClientWidth = 663
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 412
    Width = 663
  end
  inherited pnlProcurar: TPanel
    Width = 663
    inherited edtCota: TEdit
      OnChange = edtCotaChange
      OnEnter = edtCotaEnter
    end
  end
  object pnlDadosCliente: TPanel
    Left = 0
    Top = 57
    Width = 663
    Height = 225
    Align = alTop
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 16
      Top = 121
      Width = 434
      Height = 59
      TabOrder = 0
      object Label13: TLabel
        Left = 9
        Top = 14
        Width = 53
        Height = 13
        Caption = 'Assembl'#233'ia'
        Transparent = True
      end
      object Label2: TLabel
        Left = 113
        Top = 14
        Width = 94
        Height = 13
        Caption = 'Data Contempla'#231#227'o'
        Transparent = True
      end
      object edtNRASSE: TCurrencyEdit
        Left = 9
        Top = 30
        Width = 90
        Height = 21
        AutoSize = False
        Ctl3D = True
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edtNRASSEExit
        OnKeyPress = edtNRASSEKeyPress
      end
      object edtDTCONT: TDateEdit
        Left = 113
        Top = 30
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edtDTCONTExit
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 661
      Height = 121
      Align = alTop
      TabOrder = 1
      object Label18: TLabel
        Left = 16
        Top = 1
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Transparent = True
      end
      object Label19: TLabel
        Left = 168
        Top = 1
        Width = 22
        Height = 13
        Caption = 'Cota'
        Transparent = True
      end
      object Label5: TLabel
        Left = 257
        Top = 3
        Width = 27
        Height = 13
        Caption = 'Plano'
        Transparent = True
      end
      object Label4: TLabel
        Left = 350
        Top = 3
        Width = 31
        Height = 13
        Caption = 'Venda'
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
      object Label3: TLabel
        Left = 458
        Top = 78
        Width = 94
        Height = 13
        Caption = 'Data Contempla'#231#227'o'
        Transparent = True
      end
      object cmbGrupos: TDBLookupComboBox
        Left = 16
        Top = 17
        Width = 145
        Height = 21
        DataField = 'COT_NMGRUP'
        DataSource = dsVendaContas
        ReadOnly = True
        TabOrder = 0
      end
      object dbeCOTA: TDBEdit
        Left = 168
        Top = 17
        Width = 81
        Height = 21
        DataField = 'COT_NRCOTA'
        DataSource = dsVendaContas
        ReadOnly = True
        TabOrder = 1
      end
      object dbePLANO: TDBEdit
        Left = 255
        Top = 17
        Width = 89
        Height = 21
        DataField = 'COT_PLANO'
        DataSource = dsVendaContas
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 350
        Top = 17
        Width = 89
        Height = 21
        DataField = 'COT_NRVENDA'
        DataSource = dsVendaContas
        TabOrder = 3
      end
      object cbxIniciou: TCheckBox
        Left = 449
        Top = 18
        Width = 92
        Height = 17
        Caption = 'Grupo Iniciou'
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 58
        Width = 89
        Height = 21
        DataField = 'COT_CDCLIE'
        DataSource = dsVendaContas
        TabOrder = 5
      end
      object txtNMCLIE: TEdit
        Left = 114
        Top = 58
        Width = 334
        Height = 21
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
      end
      object rbSituacao: TDBRadioGroup
        Left = 15
        Top = 80
        Width = 147
        Height = 39
        Caption = '[ Situa'#231#227'o ]'
        Columns = 2
        DataField = 'COT_POSICAO'
        DataSource = dsVendaContas
        Items.Strings = (
          'Ativo'
          'Inativo')
        ReadOnly = True
        TabOrder = 7
        Values.Strings = (
          'A'
          'I'
          'Q'
          'P'
          'V'
          'R')
      end
      object cbxFLCONT: TCheckBox
        Left = 175
        Top = 94
        Width = 97
        Height = 17
        Caption = 'Contemplado'
        TabOrder = 8
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 288
        Top = 80
        Width = 160
        Height = 39
        Caption = '[ Forma de Contempla'#231#227'o ]'
        Columns = 2
        DataField = 'COT_FLCONTEMPLADO'
        DataSource = dsVendaContas
        Items.Strings = (
          'Sorteio'
          'Lance')
        ReadOnly = True
        TabOrder = 9
        Values.Strings = (
          'S'
          'L')
      end
      object DBDateEdit1: TDBDateEdit
        Left = 456
        Top = 94
        Width = 121
        Height = 21
        DataField = 'COT_DTCONTEMPLACAO'
        DataSource = dsVendaContas
        ReadOnly = True
        NumGlyphs = 2
        TabOrder = 10
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 184
      Width = 661
      Height = 40
      Align = alBottom
      Color = clNavy
      TabOrder = 2
      object btnBaixa: TBitBtn
        Left = 16
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Baixa'
        TabOrder = 0
        OnClick = btnBaixaClick
        Glyph.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333BFBF
          BFBFBFBF333333333333388F388F33333333FFFFF08FF80F333333333333338F
          F8F333333333BFBFBF0FB0BF333333333333338888F333333333FFFFFF0880FF
          3333333333333F388F3333333333BFBFBFB88FBF33333333333338F88F8F3333
          3333FFFFF0F88F0F33333333F333338888F333333330BFBFBF0880BF33333338
          FF3333388F33333333010FFFFFF00FFF333333888FF3338F38333333330180BF
          BF0770BF3333338888FF338FF83333333301180FFF0770FF333333888883F338
          8333333330811190BFB00FBF3333388888383F3333333333307719990FFFFFFF
          33333833833383F333333333077FF9999033333333338333333FF83333333330
          77FFFF0003333333333833333F888333333333077FFF00333333333333833333
          8833333333333077FFF033333333333338333338333333333333077FFF093333
          333333338F33338333333333333307FFF09333333333333383F3383333333333
          333330FF0333333333333333383F833333333333333333003333333333333333
          33883333333333333333}
        NumGlyphs = 2
      end
      object btnEstornar: TBitBtn
        Left = 100
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Estornar'
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
      object bntSim: TBitBtn
        Left = 279
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 2
        OnClick = bntSimClick
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
      object btnNao: TBitBtn
        Left = 370
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = btnNaoClick
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
    end
  end
  object grdConsultar: TDBGrid
    Left = 0
    Top = 282
    Width = 663
    Height = 130
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
    TabOrder = 3
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
        Width = 33
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
        FieldName = 'REC_VLPARC'
        Title.Caption = 'Valor Parc.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COT_FUNDORES'
        Title.Caption = 'Fund.Reserva'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COT_TAXA_ADM'
        Title.Caption = 'Taxa Adm.'
        Width = 69
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
        FieldName = 'REC_DTPAGA'
        Title.Caption = 'Data Pgto.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_VLMULT'
        Title.Caption = 'Multa'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_CREDITO'
        Title.Caption = 'Cr'#233'dito'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_TOTAL_PAGO'
        Title.Caption = 'Total Pago'
        Width = 73
        Visible = True
      end>
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    Left = 300
    Top = 226
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
    Left = 444
    Top = 234
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
  object dsVendaContas: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsVendaContas
    OnStateChange = dsVendaContasStateChange
    Left = 488
    Top = 192
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsConsultaCota
    Left = 340
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 548
    Top = 72
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
