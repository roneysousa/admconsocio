object frmConsulta: TfrmConsulta
  Left = 260
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 346
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 54
    Align = alTop
    TabOrder = 0
    object lblConsultar: TLabel
      Left = 12
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Transparent = True
    end
    object edtConsultar: TEdit
      Left = 12
      Top = 22
      Width = 217
      Height = 19
      Hint = 'Informe o valor para consultar'
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = edtConsultarKeyDown
    end
    object btnConfirma: TBitBtn
      Left = 242
      Top = 18
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 330
    Height = 292
    Align = alClient
    TabOrder = 1
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 328
      Height = 290
      Align = alClient
      Ctl3D = False
      DataSource = dsConsultar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDblClick = grdConsultarDblClick
      Columns = <
        item
          Expanded = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    Left = 36
    Top = 162
  end
  object datasetConsultar: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 116
    Top = 162
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 196
    Top = 162
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 268
    Top = 162
  end
end
