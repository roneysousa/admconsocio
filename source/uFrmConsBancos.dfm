inherited frmConsBancos: TfrmConsBancos
  Caption = 'Localizar Banco'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lblConsultar: TLabel
      Top = 7
    end
    inherited edtConsultar: TEdit
      OnChange = edtConsultarChange
    end
  end
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'BAN_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BAN_NRBANC'
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAN_NOME'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end>
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select BAN_CODIGO, BAN_NOME, BAN_NRBANC from BANCOS order by BAN' +
      '_NOME'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Required = True
    end
    object cdsConsultarBAN_NRBANC: TIntegerField
      FieldName = 'BAN_NRBANC'
      Required = True
      DisplayFormat = '000'
    end
  end
end
