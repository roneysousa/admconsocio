inherited frmCadGruposUsuarios: TfrmCadGruposUsuarios
  Left = 173
  Top = 165
  Caption = 'Cadastro Grupos de Usu'#225'rios'
  ClientHeight = 290
  ClientWidth = 584
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 584
    Height = 271
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 72
        Width = 29
        Height = 13
        Caption = 'Grupo'
        FocusControl = dbeDescricao
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 21
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText [2]
        Left = 16
        Top = 39
        Width = 80
        Height = 22
        AutoSize = True
        DataField = 'GPU_CODIGO'
        DataSource = dsGruposUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 202
        Width = 576
        inherited BtExcluir: TBitBtn
          Visible = False
        end
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 88
        Width = 264
        Height = 21
        DataField = 'GPU_GRUPO'
        DataSource = dsGruposUsuarios
        TabOrder = 1
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 576
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 542
        Height = 170
      end
      inherited grdConsultar: TDBGrid
        Width = 542
        Height = 170
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'GPU_CODIGO'
            Title.Caption = 'C'#243'digo'
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
            FieldName = 'GPU_GRUPO'
            Title.Caption = 'Grupo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 435
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 271
    Width = 584
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select GPU_CODIGO, GPU_GRUPO from GRUPOS_USUARIOS order by GPU_G' +
      'RUPO'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited dspConsultar: TDataSetProvider
    Left = 316
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarGPU_CODIGO: TIntegerField
      FieldName = 'GPU_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarGPU_GRUPO: TStringField
      FieldName = 'GPU_GRUPO'
    end
  end
  object dsGruposUsuarios: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsGruposUsuarios
    Left = 240
    Top = 152
  end
end
