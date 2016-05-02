object frmBoletoAvulso: TfrmBoletoAvulso
  Left = 192
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera Boleto Avulso'
  ClientHeight = 444
  ClientWidth = 545
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
    Width = 545
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Cota'
      Transparent = True
    end
    object Label3: TLabel
      Left = 92
      Top = 57
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 57
      Width = 31
      Height = 13
      Caption = 'Venda'
      Transparent = True
    end
    object edtGrupo: TEdit
      Left = 16
      Top = 32
      Width = 72
      Height = 21
      Hint = 'Digite o c'#243'digo do grupo'
      MaxLength = 4
      TabOrder = 0
      OnChange = edtGrupoChange
      OnExit = edtGrupoExit
      OnKeyPress = edtGrupoKeyPress
    end
    object edtCota: TEdit
      Left = 168
      Top = 32
      Width = 100
      Height = 21
      Hint = 'Digite o n'#250'mero da cota'
      MaxLength = 5
      TabOrder = 1
      OnChange = edtCotaChange
      OnKeyPress = edtCotaKeyPress
    end
    object edtCliente: TEdit
      Left = 92
      Top = 73
      Width = 429
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 60
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object btnConsulta: TBitBtn
      Left = 272
      Top = 29
      Width = 75
      Height = 25
      Hint = 'Clique para consultar'
      Caption = 'Consulta'
      TabOrder = 5
      OnClick = btnConsultaClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF0084000000840000008400000084000000840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00FF00FF008400
        0000840000008400000084000000840000008400000084000000840000008400
        000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008400000000FFFF0084000000FF00FF00FF00FF00FF00FF008400
        000000FFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object lblNomeGrupo: TEdit
      Left = 92
      Top = 32
      Width = 72
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtVenda: TEdit
      Left = 16
      Top = 73
      Width = 72
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 403
    Width = 545
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Clique aqui para confirma gera'#231#227'o de boleto'
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
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
  object Panel3: TPanel
    Left = 0
    Top = 113
    Width = 545
    Height = 189
    Align = alClient
    TabOrder = 2
    object Label5: TLabel
      Left = 16
      Top = 21
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object Label6: TLabel
      Left = 143
      Top = 21
      Width = 82
      Height = 13
      Caption = 'Data Vencimento'
    end
    object Label7: TLabel
      Left = 272
      Top = 21
      Width = 24
      Height = 13
      Caption = 'Valor'
      Transparent = True
    end
    object Label8: TLabel
      Left = 400
      Top = 21
      Width = 70
      Height = 13
      Caption = 'Quant. Boletos'
      Transparent = True
    end
    object Label9: TLabel
      Left = 16
      Top = 61
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      Transparent = True
    end
    object edbDTEMISSAO: TDateEdit
      Left = 16
      Top = 36
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 0
      OnExit = edbDTEMISSAOExit
    end
    object edtDTVENC: TDateEdit
      Left = 143
      Top = 36
      Width = 121
      Height = 21
      Hint = 'Digite a data de vencimento'
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTVENCExit
    end
    object edtValor: TCurrencyEdit
      Left = 272
      Top = 36
      Width = 121
      Height = 21
      Hint = 'Digite o valor do boleto'
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 2
      OnEnter = edtValorEnter
      OnExit = edtValorExit
    end
    object edtQuant: TCurrencyEdit
      Left = 400
      Top = 36
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MinValue = 1.000000000000000000
      ReadOnly = True
      TabOrder = 3
      Value = 1.000000000000000000
      OnEnter = edtQuantEnter
      OnExit = edtQuantExit
    end
    object mmoIntrucoes: TMemo
      Left = 16
      Top = 76
      Width = 505
      Height = 78
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 302
    Width = 545
    Height = 101
    Align = alBottom
    TabOrder = 3
    object dbgridParcelas: TDBGrid
      Left = 1
      Top = 1
      Width = 543
      Height = 99
      Align = alClient
      DataSource = dsParcelas
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAR_NRPARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'PC'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 45
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'PAR_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAR_VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 102
          Visible = True
        end>
    end
  end
  object dstConsulta: TSQLDataSet
    CommandText = 
      'Select C.*, CL.* from COTAS C'#13#10'Inner join CLIENTES CL on C.cot_c' +
      'dclie = CL.cli_codigo'#13#10'Where (C.cot_cdgrupo = :pGRUPO)'#13#10'AND (C.c' +
      'ot_nrcota = :pCOTA) AND (C.cot_posicao = :pSITUACAO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pGRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSITUACAO'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 384
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 424
    Top = 16
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pGRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSITUACAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 464
    Top = 16
    object cdsConsultaCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
    end
    object cdsConsultaCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsConsultaCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultaCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultaCOT_CONTRATO: TStringField
      FieldName = 'COT_CONTRATO'
      Size = 10
    end
    object cdsConsultaCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsConsultaCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCOT_DTCONT: TDateField
      FieldName = 'COT_DTCONT'
    end
    object cdsConsultaCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCOT_FLCONTEMPLADO: TStringField
      FieldName = 'COT_FLCONTEMPLADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCOT_CDBANCO: TIntegerField
      FieldName = 'COT_CDBANCO'
    end
    object cdsConsultaCOT_NMBANCO: TStringField
      FieldName = 'COT_NMBANCO'
    end
    object cdsConsultaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object cdsConsultaCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultaCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsConsultaCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 11
    end
    object cdsConsultaCLI_NRIDEN: TStringField
      FieldName = 'CLI_NRIDEN'
      Size = 11
    end
    object cdsConsultaCLI_DTNASCIMENTO: TDateField
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object cdsConsultaCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 60
    end
    object cdsConsultaCLI_NUMCEP: TStringField
      FieldName = 'CLI_NUMCEP'
      FixedChar = True
      Size = 8
    end
    object cdsConsultaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
    end
    object cdsConsultaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
    end
    object cdsConsultaCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaCLI_NRPLACA: TStringField
      FieldName = 'CLI_NRPLACA'
      Size = 8
    end
  end
  object dsParcelas: TDataSource
    DataSet = dmAdmDados.cdsParcelaBoleto
    Left = 416
    Top = 225
  end
end
