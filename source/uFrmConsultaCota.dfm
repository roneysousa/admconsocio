inherited frmConsCotas: TfrmConsCotas
  Left = 242
  Top = 125
  Caption = 'Consulta de Cotas'
  ClientHeight = 365
  ClientWidth = 417
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 417
    inherited lblConsultar: TLabel
      Width = 27
      Caption = 'Cota:'
    end
    inherited edtConsultar: TEdit
      Width = 309
      OnChange = edtConsultarChange
      OnKeyPress = edtConsultarKeyPress
    end
    inherited btnConfirma: TBitBtn
      Left = 334
    end
  end
  inherited Panel2: TPanel
    Width = 417
    Height = 311
    inherited grdConsultar: TDBGrid
      Width = 415
      Height = 309
      Columns = <
        item
          Expanded = False
          FieldName = 'COT_NRVENDA'
          Title.Caption = 'Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_NRCOTA'
          Title.Caption = 'Cota'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'COT_POSICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Posi'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOME'
          Title.Caption = 'Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, ' +
      'C.COT_CDCLIE, C.COT_POSICAO from COTAS C'#13#10'INNER JOIN CLIENTES CL' +
      ' ON CL.CLI_CODIGO = C.COT_CDCLIE'#13#10'order by CL.CLI_NOME'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsConsultarCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultarCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsConsultarCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
  end
end
