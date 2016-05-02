object frmSituacaoCaixa: TfrmSituacaoCaixa
  Left = 184
  Top = 231
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Situa'#231#227'o do Caixa'
  ClientHeight = 369
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 26
      Width = 91
      Height = 13
      Caption = '&Operador do Caixa:'
      FocusControl = dbeCAIXA
      Transparent = True
    end
    object sbLocCaixa: TSpeedButton
      Left = 117
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Localiza caixa'
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
      OnClick = sbLocCaixaClick
    end
    object dbeCAIXA: TEdit
      Left = 16
      Top = 21
      Width = 100
      Height = 21
      Hint = 'Digite o c'#243'digo do caixa'
      MaxLength = 3
      TabOrder = 0
      OnChange = dbeCAIXAChange
      OnExit = dbeCAIXAExit
      OnKeyPress = dbeCAIXAKeyPress
    end
    object btnConsulta: TBitBtn
      Left = 450
      Top = 18
      Width = 75
      Height = 25
      Hint = 'Clique aqui para consultar a situa'#231#227'o do caixa'
      Caption = '&Consultar'
      TabOrder = 1
      OnClick = btnConsultaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF3F00007F3F003F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFF3F0000FF3F00FFBF007F0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000004040409F9F9F6060602020200000003F0000FF3F
        00FFBF00BF0000404040FFFFFFFFFFFFFFFFFF000000404040BFBFBFDFDFDFBF
        BFBF808080909090606060FF3F00FFBF00BF0000404040FFFFFFFFFFFF000000
        404040BFBFBFDFDFDFBFBFBF9F9F9F3F3F3F404040505050BFBFBFCFCF8FBF00
        00404040FFFFFFFFFFFF505050BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F6F6F6FDF
        DF60DFDF60AFAF306F6F30606060404040000000FFFFFFFFFFFF404040A0A0A0
        BFBFBF7F7F7F7F7F7FAFAFAFCFCFCFC0C0C0C0C0C0C0C0C0AFAF30404040B0B0
        B0202020FFFFFFFFFFFFFFFFFFFFFFFF404040A0A0A09F9F9FEFEFEFC0C0C0C0
        C0C0606060606060CFCFCF7F7F00A0A0A0707070000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF606060CFCFCF606060606060CFCFCFEFEFAFFFFF3F7F7F00AFAF
        AFB0B0B0202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFCFCFCFEF
        EFAFFFFF3FBFBF007F7F3F404040EFEF6FCFCFCF707070000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6060607F7F7FFFFF00AFAF307F7F7F5F5F5F8F8F8FFFFF
        00EFEFAFB0B0B0202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020B0B0B07F
        7F40BFBF408F8F8FDFDFDFDFDF9FBFBF00BFBF3FC0C0C0404040FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF707070606060FFFF00EFEF30EFEF30BFBF006F6F
        30808080707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020B0
        B0B07F7F00BFBF006F6F30808080707070202020FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707070909090808080707070202020FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20
        2020707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object lbl_NMUSUA: TEdit
      Left = 143
      Top = 20
      Width = 298
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 544
    Height = 271
    Align = alClient
    TabOrder = 1
    object mmoSituacao: TMemo
      Left = 1
      Top = 1
      Width = 542
      Height = 269
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 328
    Width = 544
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object BtCancelar: TBitBtn
      Left = 450
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BtCancelarClick
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
end