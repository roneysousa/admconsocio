inherited frmCadaNaturezas: TfrmCadaNaturezas
  Left = 155
  Top = 117
  Caption = 'Tabela de Natureza'
  ClientHeight = 283
  ClientWidth = 581
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 581
    Height = 264
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 54
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object Label3: TLabel [1]
        Left = 16
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object DBText1: TDBText [2]
        Left = 16
        Top = 25
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'NAT_CODIGO'
        DataSource = dsNatureza
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      inherited pnlBotoes: TPanel
        Top = 195
        Width = 573
        inherited BtExcluir: TBitBtn
          Visible = False
        end
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 70
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NAT_NOME'
        DataSource = dsNatureza
        TabOrder = 1
        OnExit = dbeDescricaoExit
      end
      object rbTipo: TDBRadioGroup
        Left = 16
        Top = 96
        Width = 185
        Height = 73
        Caption = '[ Tipo de Natureza ]'
        DataField = 'NAT_TIPO'
        DataSource = dsNatureza
        Items.Strings = (
          '&Sa'#237'da'
          '&Entrada')
        TabOrder = 2
        Values.Strings = (
          'S'
          'E')
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 573
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 539
        Height = 163
      end
      inherited grdConsultar: TDBGrid
        Width = 539
        Height = 163
        OnDblClick = grdConsultarDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NAT_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAT_NOME'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 429
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 264
    Width = 581
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select NAT_CODIGO, NAT_NOME from NATUREZA'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarNAT_NOME: TStringField
      FieldName = 'NAT_NOME'
      Size = 30
    end
  end
  object dsNatureza: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsNaturezas
    Left = 320
    Top = 128
  end
end
