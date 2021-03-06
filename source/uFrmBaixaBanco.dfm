object frmBaixaBanco: TfrmBaixaBanco
  Left = 216
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa Autom'#225'tica/Banco'
  ClientHeight = 381
  ClientWidth = 557
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
    Width = 557
    Height = 129
    Align = alTop
    TabOrder = 0
    DesignSize = (
      557
      129)
    object lblNomeArquivoRetorno: TLabel
      Left = 8
      Top = 55
      Width = 117
      Height = 13
      Caption = 'Nome do arquivo retorno'
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 34
      Height = 13
      Caption = 'Banco:'
      Transparent = True
    end
    object spLocalizarBanco: TSpeedButton
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
      OnClick = spLocalizarBancoClick
    end
    object lblNomeBanco: TLabel
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
    object txtNomeArquivoRetorno: TEdit
      Left = 8
      Top = 71
      Width = 513
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ReadOnly = True
      TabOrder = 1
      OnChange = txtNomeArquivoRetornoChange
    end
    object btnProcurar: TBitBtn
      Left = 446
      Top = 97
      Width = 75
      Height = 25
      Hint = 'Abrir Arquivo de retorno'
      Caption = '&Procurar'
      TabOrder = 2
      OnClick = btnProcurarClick
      Glyph.Data = {
        DA020000424DDA020000000000003600000028000000110000000D0000000100
        180000000000A4020000C30E0000C30E00000000000000000000BFBFBF000000
        000000000000000000000000000000000000000000000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000000000007F7F007F7F007F7F
        007F7F007F7F007F7F007F7F007F7F007F7F000000BFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBF00000000FFFF000000007F7F007F7F007F7F007F7F007F7F007F7F
        007F7F007F7F007F7F000000BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF00
        FFFF000000007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F
        000000BFBFBFBFBFBF00BFBFBF00000000FFFFFFFFFF00FFFF000000007F7F00
        7F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F000000BFBFBF00BFBF
        BF000000FFFFFF00FFFFFFFFFF00FFFF00000000000000000000000000000000
        000000000000000000000000000000000000BFBFBF00000000FFFFFFFFFF00FF
        FFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBF000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
        FF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000
        00FFFFFFFFFF00FFFF000000000000000000000000000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000000000000000BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF000000
        BFBFBF000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    object edtBanco: TEdit
      Left = 8
      Top = 24
      Width = 100
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnChange = edtBancoChange
      OnExit = edtBancoExit
      OnKeyPress = edtBancoKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 340
    Width = 557
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnExecutar: TBitBtn
      Left = 374
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Executa retorno'
      Caption = '&Executar'
      TabOrder = 0
      OnClick = btnExecutarClick
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000F0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0087FFFFFFFFFFFF0B3087FFFFFFFFFFF0BB0087FF
        FFFFFFFF0BB3008FFFFFFFFFF0BBB008FFFFFFFFF00BBB007FFFFFFF00BBB007
        FFF0FFFFF00BBB007FF0FFFFFFF00BB007F0FFFFFFFFF00B0070FFFFFFFFFFF0
        00F0FFFFFFFFFFFFFFF0}
    end
    object btnFechar: TBitBtn
      Left = 469
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 129
    Width = 557
    Height = 211
    Align = alClient
    Caption = 'Relat'#243'rio do arquivo retorno'
    TabOrder = 2
    object txtRelatorioRetorno: TMemo
      Left = 2
      Top = 15
      Width = 484
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object grdConsultar: TDBGrid
      Left = 2
      Top = 69
      Width = 553
      Height = 140
      Align = alBottom
      Ctl3D = False
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CDS_NOSSONUMERO'
          Title.Caption = 'Nosso N'#250'mero'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDS_DTVENC'
          Title.Caption = 'Dt.Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDS_DTPAGA'
          Title.Caption = 'Dt.Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDS_DTCRED'
          Title.Caption = 'Dt.Cr'#233'dito'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDS_VALOR_DOCUMENTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDS_JUROS_MORA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Juros'
          Visible = True
        end>
    end
  end
  object gbTitulo1: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Cedente.NumeroCPFCGC = '67776116653'
    Cedente.Nome = 'Genilton Barbosa'
    Cedente.Endereco.Rua = 'Rua Alagoas'
    Cedente.Endereco.Numero = '242'
    Cedente.Endereco.Complemento = 'apto 01'
    Cedente.Endereco.Bairro = 'Sagrada Fam'#237'lia'
    Cedente.Endereco.Cidade = 'Vi'#231'osa'
    Cedente.Endereco.Estado = 'MG'
    Cedente.Endereco.CEP = '36570000'
    Cedente.Endereco.EMail = 'genilton@hotmail.com'
    Cedente.ContaBancaria.Banco.Codigo = '341'
    Cedente.ContaBancaria.CodigoAgencia = '3066'
    Cedente.ContaBancaria.NumeroConta = '17837'
    Cedente.ContaBancaria.DigitoConta = '1'
    Cedente.ContaBancaria.NomeCliente = 'Genilton Barbosa'
    Cedente.CodigoCedente = '17837'
    Cedente.DigitoCodigoCedente = '1'
    Sacado.TipoInscricao = tiPessoaFisica
    Sacado.NumeroCPFCGC = '12345678901'
    Sacado.Nome = 'Jo'#227'o da Silva'
    Sacado.Endereco.Rua = 'Av. P. H. Rolfs'
    Sacado.Endereco.Numero = '324'
    Sacado.Endereco.Complemento = 'apto 220'
    Sacado.Endereco.Bairro = 'Centro'
    Sacado.Endereco.Cidade = 'Vi'#231'osa'
    Sacado.Endereco.Estado = 'MG'
    Sacado.Endereco.CEP = '36570000'
    Sacado.Endereco.EMail = 'joao@silva.com.br'
    SeuNumero = '9876'
    NossoNumero = '1234'
    NumeroDocumento = '4567'
    Carteira = '175'
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    DataProcessamento = 37388.000000000000000000
    DataDocumento = 37386.000000000000000000
    DataVencimento = 37396.000000000000000000
    DataAbatimento = 37391.000000000000000000
    DataDesconto = 37395.000000000000000000
    DataMoraJuros = 37397.000000000000000000
    DataProtesto = 37401.000000000000000000
    DataBaixa = 37427.000000000000000000
    ValorDocumento = 100.000000000000000000
    ValorAbatimento = 20.000000000000000000
    ValorDesconto = 0.200000000000000000
    ValorMoraJuros = 0.350000000000000000
    Instrucoes.Strings = (
      'Este boleto '#233' apenas para teste')
    EmissaoBoleto = ebClienteEmite
    Left = 336
    Top = 168
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 1
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 368
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivo de retorno *.ret|*.ret'
    Title = 'Ler arquivo retorno'
    Left = 400
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Remessa.txt'
    Title = 'Gerar arquivo remessa em'
    Left = 432
    Top = 168
  end
  object dstDados: TSQLDataSet
    CommandText = 'Select * from PARCELAS Where (REC_NOSSONUMERO = :pNOSSONUMERO);'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNOSSONUMERO'
        ParamType = ptUnknown
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 24
    Top = 112
  end
  object dspDados: TDataSetProvider
    DataSet = dstDados
    Options = [poAllowCommandText]
    Left = 64
    Top = 112
  end
  object cdsCedente: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select B.BAN_CODIGO, B.BAN_NOME, B.BAN_NRBANC, B.BAN_NRAGEN, B.B' +
      'AN_NRCONT, B.BAN_CARTEIRA, B.BAN_CONVENIO, B.BAN_FORMA_CALC from' +
      ' BANCOS B Where (B.BAN_NRBANC = :pNRBANC) AND (B.BAN_NRAGEN = :p' +
      'NRAGEN) AND (B.BAN_NRCONT = :pNRCONT) AND (B.BAN_CARTEIRA = :pCA' +
      'RTEIRA)'
    Params = <
      item
        DataType = ftInteger
        Name = 'pNRBANC'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pNRAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pNRCONT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pCARTEIRA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspDados'
    Left = 104
    Top = 112
    object cdsCedenteBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
    end
    object cdsCedenteBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
    object cdsCedenteBAN_NRBANC: TIntegerField
      FieldName = 'BAN_NRBANC'
      Required = True
    end
    object cdsCedenteBAN_NRAGEN: TIntegerField
      FieldName = 'BAN_NRAGEN'
    end
    object cdsCedenteBAN_NRCONT: TStringField
      FieldName = 'BAN_NRCONT'
      Size = 12
    end
    object cdsCedenteBAN_CARTEIRA: TStringField
      FieldName = 'BAN_CARTEIRA'
      Size = 5
    end
    object cdsCedenteBAN_CONVENIO: TIntegerField
      FieldName = 'BAN_CONVENIO'
    end
    object cdsCedenteBAN_FORMA_CALC: TIntegerField
      FieldName = 'BAN_FORMA_CALC'
    end
  end
  object cdsTitulo: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from PARCELAS Where (REC_NOSSONUMERO = :pNOSSONUMERO);'
    Params = <
      item
        DataType = ftString
        Name = 'pNOSSONUMERO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspDados'
    Left = 152
    Top = 112
    object cdsTituloREC_NRVEND: TIntegerField
      FieldName = 'REC_NRVEND'
      Required = True
    end
    object cdsTituloREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsTituloREC_NRCOTA: TIntegerField
      FieldName = 'REC_NRCOTA'
      Required = True
    end
    object cdsTituloREC_NRPARC: TIntegerField
      FieldName = 'REC_NRPARC'
      Required = True
    end
    object cdsTituloREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTituloREC_VLPARC: TFMTBCDField
      FieldName = 'REC_VLPARC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsTituloREC_DTPAGA: TDateField
      FieldName = 'REC_DTPAGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTituloREC_VLMULT: TFMTBCDField
      FieldName = 'REC_VLMULT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsTituloREC_TOTAL_PAGO: TFMTBCDField
      FieldName = 'REC_TOTAL_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsTituloREC_DTMOVI: TDateField
      FieldName = 'REC_DTMOVI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTituloREC_DTCREDITO: TDateField
      FieldName = 'REC_DTCREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTituloREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTituloREC_TPSLIP: TStringField
      FieldName = 'REC_TPSLIP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTituloREC_NOSSONUMERO: TStringField
      FieldName = 'REC_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTituloREC_VALORTARIFABANCO: TFMTBCDField
      FieldName = 'REC_VALORTARIFABANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsTituloREC_VALORTITULOTITULO: TFMTBCDField
      FieldName = 'REC_VALORTITULOTITULO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsTituloREC_HOPAGA: TStringField
      FieldName = 'REC_HOPAGA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsTituloREC_MOV_CAIXA: TIntegerField
      FieldName = 'REC_MOV_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DataSource1: TDataSource
    DataSet = dmPesquisas.cdsTitulos
    Left = 304
    Top = 257
  end
end
