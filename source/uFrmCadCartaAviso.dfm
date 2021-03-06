inherited frmCadCartaAviso: TfrmCadCartaAviso
  Left = 189
  Top = 97
  Caption = 'Cadastro de Carta de Aviso'
  ClientHeight = 504
  ClientWidth = 584
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 584
    Height = 485
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
        Top = 50
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        Transparent = True
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 94
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 199
        Width = 105
        Height = 13
        Caption = 'Hist'#243'rico para Avalista'
        Transparent = True
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 305
        Width = 164
        Height = 13
        Caption = 'Complementos para aviso em geral'
        Transparent = True
      end
      object DBText1: TDBText [5]
        Left = 16
        Top = 25
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'CAR_CODIGO'
        DataSource = dsCartas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      inherited pnlBotoes: TPanel
        Top = 416
        Width = 576
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 64
        Width = 450
        Height = 21
        DataField = 'CAR_DESCRICAO'
        DataSource = dsCartas
        TabOrder = 4
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 108
        Width = 450
        Height = 89
        DataField = 'CAR_HISTORICO'
        DataSource = dsCartas
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 214
        Width = 450
        Height = 86
        DataField = 'CAR_MENSAVAL'
        DataSource = dsCartas
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 319
        Width = 450
        Height = 89
        DataField = 'CAR_COMPLEMENTO'
        DataSource = dsCartas
        ScrollBars = ssVertical
        TabOrder = 3
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
        Height = 384
      end
      inherited grdConsultar: TDBGrid
        Width = 542
        Height = 384
        OnDblClick = grdConsultarDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CAR_CODIGO'
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
            FieldName = 'CAR_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 386
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 485
    Width = 584
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select CAR_CODIGO, CAR_DESCRICAO from CARTAS'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      Size = 50
    end
  end
  object dsCartas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsCartas
    Left = 228
    Top = 48
  end
end
