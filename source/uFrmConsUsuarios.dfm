inherited frmConsUsuarios: TfrmConsUsuarios
  Caption = 'Consulta de Usu'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited edtConsultar: TEdit
      OnChange = edtConsultarChange
    end
  end
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SEN_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEN_NOME'
          Title.Caption = 'Nome'
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
    CommandText = 'select SEN_CODIGO, SEN_NOME from USUARIOS'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
  end
end
