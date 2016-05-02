object frmBaixaEstorno: TfrmBaixaEstorno
  Left = 245
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa de Parcela'
  ClientHeight = 375
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Width = 441
    Height = 334
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 47
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
      Transparent = True
    end
    object Label2: TLabel
      Left = 149
      Top = 47
      Width = 63
      Height = 13
      Caption = 'Valor Parcela'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label3: TLabel
      Left = 290
      Top = 47
      Width = 73
      Height = 13
      Caption = 'Fundo Reserva'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label4: TLabel
      Left = 11
      Top = 87
      Width = 51
      Height = 13
      Caption = 'Taxa Adm.'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label5: TLabel
      Left = 290
      Top = 87
      Width = 33
      Height = 13
      Caption = 'Cr'#233'dito'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 11
      Top = 128
      Width = 49
      Height = 13
      Caption = 'Multa (R$)'
      FocusControl = dbeMulta
      Transparent = True
    end
    object Label7: TLabel
      Left = 11
      Top = 168
      Width = 90
      Height = 13
      Caption = 'Valor a Pagar  (R$)'
      FocusControl = dbeValorPago
      Transparent = True
    end
    object Label8: TLabel
      Left = 149
      Top = 87
      Width = 64
      Height = 13
      Caption = 'Total a Pagar'
      FocusControl = DBEdit1
    end
    object Label9: TLabel
      Left = 11
      Top = 244
      Width = 55
      Height = 13
      Caption = 'Modalidade'
      FocusControl = dbeValorPago
      Transparent = True
    end
    object Label14: TLabel
      Left = 11
      Top = 11
      Width = 82
      Height = 13
      Caption = 'Data Vencimento'
      Transparent = True
    end
    object Label16: TLabel
      Left = 149
      Top = 11
      Width = 36
      Height = 13
      Caption = 'Parcela'
      Transparent = True
    end
    object Label15: TLabel
      Left = 289
      Top = 11
      Width = 69
      Height = 13
      Caption = 'Dias de Atraso'
      Transparent = True
    end
    object Label17: TLabel
      Left = 11
      Top = 208
      Width = 78
      Height = 13
      Caption = 'Valor Pago  (R$)'
      FocusControl = dbeValorPago
      Transparent = True
    end
    object Label18: TLabel
      Left = 11
      Top = 284
      Width = 75
      Height = 13
      Caption = 'Valor do Cr'#233'dito'
      FocusControl = dbeValorPago
      Transparent = True
    end
    object DBEdit2: TDBEdit
      Left = 149
      Top = 63
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'REC_VLPARC'
      DataSource = dsParcela
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 290
      Top = 63
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'COT_FUNDORES'
      DataSource = dsParcela
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 11
      Top = 103
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'COT_TAXA_ADM'
      DataSource = dsParcela
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 290
      Top = 103
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'REC_CREDITO'
      DataSource = dsParcela
      ReadOnly = True
      TabOrder = 8
    end
    object dbeMulta: TDBEdit
      Left = 11
      Top = 144
      Width = 134
      Height = 21
      Hint = 'Digite o valor da multa'
      DataField = 'REC_VLMULT'
      DataSource = dsParcela
      TabOrder = 1
      OnEnter = dbeMultaEnter
      OnExit = dbeMultaExit
      OnKeyPress = dbeMultaKeyPress
    end
    object dbeValorPago: TDBEdit
      Left = 11
      Top = 184
      Width = 134
      Height = 21
      DataField = 'REC_TOTAL_PAGO'
      DataSource = dsParcela
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 149
      Top = 103
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'REC_TOTAL_CALC'
      DataSource = dsParcela
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object cmbModa: TComboBox
      Left = 11
      Top = 259
      Width = 134
      Height = 22
      Hint = 'Selecione a modalidade de pagamento'
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 4
      OnExit = cmbModaExit
      OnKeyPress = cmbModaKeyPress
    end
    object gbxCheque: TGroupBox
      Left = 160
      Top = 140
      Width = 265
      Height = 106
      Caption = '[ Dados do Cheque ]'
      TabOrder = 10
      object Label10: TLabel
        Left = 13
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label11: TLabel
        Left = 147
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
      end
      object Label12: TLabel
        Left = 11
        Top = 58
        Width = 58
        Height = 13
        Caption = 'N'#186' da Conta'
      end
      object Label13: TLabel
        Left = 147
        Top = 58
        Width = 52
        Height = 13
        Caption = 'N'#186' Cheque'
      end
      object edtAgencia: TEdit
        Left = 147
        Top = 32
        Width = 110
        Height = 21
        Hint = 'Digite a ag'#234'ncia do banco'
        MaxLength = 5
        TabOrder = 1
        OnKeyPress = edtAgenciaKeyPress
      end
      object edtConta: TEdit
        Left = 11
        Top = 74
        Width = 125
        Height = 21
        Hint = 'Digite o n'#250'mero da conta'
        MaxLength = 12
        TabOrder = 2
        OnExit = edtContaExit
        OnKeyPress = edtContaKeyPress
      end
      object edtCheque: TEdit
        Left = 147
        Top = 74
        Width = 110
        Height = 21
        Hint = 'Digite o n'#250'mero do cheque'
        MaxLength = 10
        TabOrder = 3
        OnExit = edtChequeExit
        OnKeyPress = edtChequeKeyPress
      end
      object edtBanco: TEdit
        Left = 12
        Top = 32
        Width = 125
        Height = 21
        Hint = 'Digite o n'#250'mero do banco'
        MaxLength = 3
        TabOrder = 0
        OnExit = edtBancoExit
        OnKeyPress = edtAgenciaKeyPress
      end
    end
    object dbeDTPAGA: TDBDateEdit
      Left = 11
      Top = 63
      Width = 132
      Height = 21
      DataField = 'REC_DTPAGA'
      DataSource = dsParcela
      NumGlyphs = 2
      TabOrder = 0
      OnExit = dbeDTPAGAExit
      OnKeyPress = dbeDTPAGAKeyPress
    end
    object lblVencimento: TEdit
      Left = 11
      Top = 24
      Width = 132
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object lblParcela: TEdit
      Left = 149
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object lblDias: TEdit
      Left = 289
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object edtTotalDigitado: TCurrencyEdit
      Left = 12
      Top = 222
      Width = 134
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00;'
      TabOrder = 3
      OnExit = edtTotalDigitadoExit
      OnKeyPress = edtTotalDigitadoKeyPress
    end
    object edtVLCRED: TCurrencyEdit
      Left = 11
      Top = 298
      Width = 134
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 334
    Width = 441
    Height = 41
    Align = alBottom
    Color = clNavy
    ParentBackground = False
    TabOrder = 1
    object BtSair: TBitBtn
      Left = 340
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = BtSairClick
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
    object btnSim: TBitBtn
      Left = 259
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Confirma baixa'
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btnSimClick
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
    object cbxImpressora: TCheckBox
      Left = 20
      Top = 14
      Width = 125
      Height = 17
      Caption = 'Impressora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object dsParcela: TDataSource
    DataSet = dmPesquisas.cdsConsultaCota
    Left = 400
    Top = 72
  end
end
