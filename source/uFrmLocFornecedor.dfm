inherited FrmConsFornecedores: TFrmConsFornecedores
  Caption = 'Localizar Fornecedor'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdConsultar: TDBGrid
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FOR_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_RAZAO'
        Title.Caption = 'Raz'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 407
        Visible = True
      end>
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select FOR_CODIGO, FOR_FANTASIA, FOR_RAZAO from FORNECEDORES whe' +
      're (FOR_RAZAO like :pNome) order by FOR_RAZAO'
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    object cdsConsultarFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Required = True
      Size = 50
    end
    object cdsConsultarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 50
    end
  end
end
