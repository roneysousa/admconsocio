object frmBoletosClientes: TfrmBoletosClientes
  Left = 149
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Boletos de Clientes'
  ClientHeight = 396
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 355
    Align = alClient
    TabOrder = 0
    object grdConsultar: TDBGrid
      Left = 1
      Top = 89
      Width = 619
      Height = 128
      Align = alClient
      Ctl3D = False
      DataSource = dsBoletosClientes
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
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'COT_NRVENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_CDGRUPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_NRCOTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_CDCLIE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_POSICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNT'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 242
      Width = 619
      Height = 112
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
          FieldName = 'REC_NRVEND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_CDGRUP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_NRCOTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_NOSSONUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_DTVENC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_TOTAL_CALC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_VALORTITULOTITULO_CALC'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 217
      Width = 619
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 619
      Height = 88
      Align = alTop
      TabOrder = 3
      object lblConsultar: TLabel
        Left = 16
        Top = 4
        Width = 32
        Height = 13
        Caption = '&Grupo:'
        FocusControl = edtGrupo
        Transparent = True
      end
      object spLocalizarGrupo: TSpeedButton
        Left = 110
        Top = 18
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
      end
      object lblNomeGrupo: TLabel
        Left = 140
        Top = 23
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
      object Label5: TLabel
        Left = 16
        Top = 39
        Width = 34
        Height = 13
        Caption = 'Banco:'
        Transparent = True
      end
      object spLocalizarBanco: TSpeedButton
        Left = 110
        Top = 53
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
      end
      object lblNomeBanco: TLabel
        Left = 139
        Top = 58
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
        Top = 20
        Width = 90
        Height = 19
        Hint = 'Informe o valor para consultar'
        CharCase = ecUpperCase
        Ctl3D = False
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 0
      end
      object edtBanco: TEdit
        Left = 16
        Top = 55
        Width = 90
        Height = 19
        Ctl3D = False
        MaxLength = 3
        ParentCtl3D = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 528
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object edtDTINIC: TDateEdit
        Left = 262
        Top = 20
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
      object edtDTFINA: TDateEdit
        Left = 398
        Top = 20
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 355
    Width = 621
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BtSair: TBitBtn
      Left = 517
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 0
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
  end
  object DataSource1: TDataSource
    DataSet = dmRelatorios.cdsConsultaCota
    Left = 312
    Top = 64
  end
  object cdsBoletosClientes: TClientDataSet
    Active = True
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
    Left = 394
    Top = 60
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
    Left = 442
    Top = 60
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
    Left = 360
    Top = 107
  end
  object dspBoletos: TDataSetProvider
    DataSet = dstBoletos
    Options = [poAllowCommandText]
    Left = 410
    Top = 108
  end
end
