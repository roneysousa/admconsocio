inherited frmCadModalidade: TfrmCadModalidade
  Left = 137
  Top = 139
  Caption = 'Tabelas de Modalidades'
  ClientHeight = 271
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 252
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 96
        Width = 54
        Height = 13
        Caption = 'Abrevia'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object DBText1: TDBText [3]
        Left = 16
        Top = 25
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'MOD_CODIGO'
        DataSource = dsModas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      inherited pnlBotoes: TPanel
        Top = 183
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 72
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MOD_NOME'
        DataSource = dsModas
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 112
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MOD_ABREVIACAO'
        DataSource = dsModas
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Height = 151
      end
      inherited grdConsultar: TDBGrid
        Height = 151
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MOD_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOD_NOME'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 462
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 252
  end
  inherited dsConsultar: TDataSource
    Left = 204
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select MOD_CODIGO, MOD_NOME from MODALIDADE'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
    Left = 268
    Top = 178
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
  end
  object dsModas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsModas
    Left = 200
    Top = 40
  end
end
