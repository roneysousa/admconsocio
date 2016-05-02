object frmRelMovEntradaSaida: TfrmRelMovEntradaSaida
  Left = 193
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '2'#170' Via Entrada/Saida'
  ClientHeight = 347
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Data da Abertura'
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 183
      Height = 13
      Caption = 'N'#186'.Caixa/Data Abertura/Hora Abertura'
      Transparent = True
    end
    object edtData: TDateEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnChange = edtDataChange
      OnEnter = edtDataEnter
      OnExit = edtDataExit
    end
    object cmbCaixa: TComboBox
      Left = 16
      Top = 65
      Width = 349
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
      OnChange = cmbCaixaChange
      OnDrawItem = cmbCaixaDrawItem
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 562
    Height = 201
    Align = alClient
    TabOrder = 1
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 560
      Height = 199
      Align = alClient
      Ctl3D = False
      DataSource = dsConsultar
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
          FieldName = 'MCA_SEQUENCIA'
          Title.Caption = 'Registro'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MCA_HRMOVIMENTO'
          Title.Caption = 'Hora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MCA_OBSEVACAO'
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MCA_TIPOMOV'
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MCA_VLMODALIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 306
    Width = 562
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object btnImprimi: TBitBtn
      Left = 374
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = btnImprimiClick
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
    object btnFechar: TBitBtn
      Left = 462
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
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    OnDataChange = dsConsultarDataChange
    Left = 164
    Top = 194
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 
      'Select MCA_SEQUENCIA, MCA_VENDA, MCA_TIPOMOV, MCA_DTMOVIMENTO, M' +
      'CA_HRMOVIMENTO, MCA_VLMODALIDADE, MCA_OBSEVACAO, MCA_CAIXA, MCA_' +
      'SEQCAIXA from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA >= :pINICIO) ' +
      'AND (MCA_SEQUENCIA <= :pFINAL) AND (MCA_CAIXA = :pCAIXA) and ((M' +
      'CA_TIPOMOV = :pENTRADA) OR (MCA_TIPOMOV = :pPSAIDA))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPSAIDA'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 244
    Top = 194
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 324
    Top = 194
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPSAIDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultar'
    Left = 396
    Top = 194
    object cdsConsultarMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
      DisplayFormat = '0000000000'
    end
    object cdsConsultarMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
    end
    object cdsConsultarMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
    end
    object cdsConsultarMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      FixedChar = True
      Size = 5
    end
    object cdsConsultarMCA_VLMODALIDADE: TFMTBCDField
      FieldName = 'MCA_VLMODALIDADE'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultarMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      Size = 40
    end
    object cdsConsultarMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
    end
    object cdsConsultarMCA_SEQCAIXA: TIntegerField
      FieldName = 'MCA_SEQCAIXA'
    end
  end
end
