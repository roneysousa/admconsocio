inherited FrmRelTotalEntSaidaProdutos: TFrmRelTotalEntSaidaProdutos
  Caption = 'FrmRelTotalEntSaidaProdutos'
  ClientWidth = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 348
    inherited Label1: TLabel
      Top = 62
    end
    inherited Label2: TLabel
      Top = 106
    end
    object Label3: TLabel [2]
      Left = 16
      Top = 8
      Width = 23
      Height = 13
      Caption = '&Loja:'
      FocusControl = cmbNMLOJA
      Transparent = True
    end
    inherited edtDTINIC: TDateEdit
      Top = 78
    end
    inherited edtDTFINA: TDateEdit
      Top = 122
    end
    object cmbNMLOJA: TComboBox
      Left = 16
      Top = 24
      Width = 309
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 348
  end
end
