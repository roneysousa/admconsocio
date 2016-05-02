object frmSelCliente: TfrmSelCliente
  Left = 131
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione Cliente'
  ClientHeight = 255
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 214
    Align = alClient
    TabOrder = 0
    object grdConsultar: TDBGrid
      Left = 1
      Top = 1
      Width = 599
      Height = 212
      Align = alClient
      Ctl3D = False
      DataSource = dsDados
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
          FieldName = 'REC_NRVEND'
          Title.Caption = 'N'#186'.Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COT_CDGRUPO'
          Title.Caption = 'Grupo'
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
          FieldName = 'COT_NRCOTA'
          Title.Caption = 'Cota'
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
          FieldName = 'REC_DTVENC'
          Title.Caption = 'Dt.Venc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLPAGAR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REC_NOSSONUMERO'
          Title.Caption = 'Nosso N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 108
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
  object Panel2: TPanel
    Left = 0
    Top = 214
    Width = 601
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsNossoNumero
    Left = 256
    Top = 80
  end
end
