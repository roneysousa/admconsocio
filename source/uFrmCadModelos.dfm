inherited frmCadModelos: TfrmCadModelos
  Left = 182
  Top = 159
  Caption = 'Cadastro de Modelos'
  ClientHeight = 289
  ClientWidth = 582
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 582
    Height = 270
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 54
        Width = 35
        Height = 13
        Caption = 'Modelo'
        Transparent = True
      end
      object DBText1: TDBText [2]
        Left = 16
        Top = 25
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'MOD_CODIGO'
        DataSource = dsModelos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      inherited pnlBotoes: TPanel
        Top = 201
        Width = 574
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 68
        Width = 505
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MOD_DESCRICAO'
        DataSource = dsModelos
        TabOrder = 1
        OnExit = dbeDescricaoExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 574
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 540
        Height = 169
      end
      inherited grdConsultar: TDBGrid
        Width = 540
        Height = 169
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
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOD_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 421
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 270
    Width = 582
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select MOD_CODIGO, MOD_DESCRICAO from modelos order by MOD_DESCR' +
      'ICAO'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarMOD_DESCRICAO: TStringField
      FieldName = 'MOD_DESCRICAO'
    end
  end
  object dsModelos: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsModelos
    Left = 192
    Top = 24
  end
end
