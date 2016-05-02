inherited frmConsGrupos: TfrmConsGrupos
  Caption = 'Consulta Grupos'
  ClientHeight = 376
  ClientWidth = 370
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 370
    inherited edtConsultar: TEdit
      Width = 264
      OnChange = edtGrupoChange
    end
    inherited btnConfirma: TBitBtn
      Left = 282
      Top = 17
    end
  end
  inherited Panel2: TPanel
    Width = 370
    Height = 322
    inherited grdConsultar: TDBGrid
      Width = 368
      Height = 320
      Columns = <
        item
          Expanded = False
          FieldName = 'GRU_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRU_DESCRICAO'
          Title.Caption = 'Grupo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRU_NRMESES'
          Title.Caption = 'N'#186'.Meses'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'N'#186'.Ativos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end>
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select GRU_CODIGO, GRU_DESCRICAO, GRU_NRMESES '#13#10'from grupos orde' +
      'r by GRU_DESCRICAO'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      Required = True
    end
    object cdsConsultarGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
    object cdsConsultarGRU_NRMESES: TIntegerField
      FieldName = 'GRU_NRMESES'
    end
  end
end
