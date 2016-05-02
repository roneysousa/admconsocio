inherited frmLocCliente: TfrmLocCliente
  Left = 125
  Top = 133
  Caption = 'Localizar Cliente'
  ClientHeight = 349
  ClientWidth = 642
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 642
    inherited lblConsultar: TLabel
      Left = 211
      Top = 7
    end
    inherited rgConsultar: TRadioGroup
      Width = 202
      Columns = 3
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'C.P.F.'
        'C.G.C.'
        'Telefone')
    end
    inherited edtConsultar: TEdit
      Left = 211
      Top = 23
      Width = 295
    end
    inherited btnConsultar: TBitBtn
      Left = 537
      Top = 19
    end
  end
  inherited Panel3: TPanel
    Left = 608
    Height = 290
  end
  inherited Panel1: TPanel
    Width = 608
    Height = 290
    inherited grdConsultar: TDBGrid
      Width = 606
      Height = 288
      Columns = <
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOME'
          Title.Caption = 'Nome'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CPF'
          Title.Caption = 'CPF'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CGC'
          Title.Caption = 'CGC'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NRFONE'
          Title.Caption = 'Telefone'
          Visible = True
        end>
    end
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select CLI_CODIGO, CLI_NOME, CLI_CPF, CLI_NRFONE, CLI_CGC from c' +
      'lientes order by CLI_NOME'
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultarCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Size = 11
    end
    object cdsConsultarCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Size = 13
    end
    object cdsConsultarCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
  end
end
