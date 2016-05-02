inherited FrmIncContasPagar: TFrmIncContasPagar
  Caption = 'Inclus'#227'o de Contas a Pagar'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCentral: TPanel
    inherited pnlDados: TPanel
      inherited Label3: TLabel
        Width = 54
        Caption = '&Fornecedor'
      end
      inherited spLocalizar: TSpeedButton
        Hint = 'Localizar Fornecedor'
        OnClick = spLocalizarClick
      end
      object Label1: TLabel [6]
        Left = 150
        Top = 55
        Width = 41
        Height = 13
        Caption = 'N'#186'. Nota'
      end
      object Label2: TLabel [7]
        Left = 287
        Top = 55
        Width = 42
        Height = 13
        Caption = 'N'#186'. S'#233'rie'
      end
      inherited edtCodigo: TEdit
        OnExit = edtCodigoExit
      end
      inherited mmoDescricao: TMemo
        TabOrder = 4
      end
      inherited cmbNaturezas: TComboBox
        TabOrder = 5
      end
      inherited edtQTPARC: TCurrencyEdit
        TabOrder = 6
      end
      inherited edtDescricao: TEdit
        TabOrder = 7
      end
      object edtNumNota: TEdit
        Left = 150
        Top = 71
        Width = 130
        Height = 21
        MaxLength = 10
        TabOrder = 2
        OnExit = edtNumNotaExit
        OnKeyPress = edtNumNotaKeyPress
      end
      object edtSerie: TEdit
        Left = 285
        Top = 71
        Width = 89
        Height = 21
        MaxLength = 3
        TabOrder = 3
        OnExit = edtSerieExit
        OnKeyPress = edtSerieKeyPress
      end
    end
  end
end
