inherited frmRelMovCaixa: TfrmRelMovCaixa
  Left = 199
  Top = 184
  Caption = 'Relatorio Movimento de Caixa'
  ClientHeight = 189
  ClientWidth = 384
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 384
    Height = 148
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 81
      Height = 13
      Caption = 'Data da Abertura'
      Transparent = True
    end
    object Label2: TLabel
      Left = 12
      Top = 56
      Width = 183
      Height = 13
      Caption = 'N'#186'.Caixa/Data Abertura/Hora Abertura'
      Transparent = True
    end
    object edtData: TDateEdit
      Left = 12
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnChange = edtDataChange
      OnExit = edtDataExit
    end
    object cmbCaixa: TComboBox
      Left = 12
      Top = 72
      Width = 349
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
      OnDrawItem = cmbCaixaDrawItem
    end
  end
  inherited pnlBotoes: TPanel
    Top = 148
    Width = 384
    inherited btnVisualizar: TBitBtn
      Caption = '&Imprimir'
      OnClick = btnVisualizarClick
    end
  end
end
