inherited frmLocGrupos: TfrmLocGrupos
  Caption = 'Localiza Grupos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grdConsultar: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'GRU_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRU_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 413
          Visible = True
        end>
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select GRU_CODIGO, GRU_DESCRICAO from grupos'#13#10'order by GRU_DESCR' +
      'ICAO'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
  end
end
