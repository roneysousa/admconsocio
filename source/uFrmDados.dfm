object frmDados: TfrmDados
  Left = 153
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmDados'
  ClientHeight = 330
  ClientWidth = 606
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
  object grdConsultar: TDBGrid
    Left = 0
    Top = 0
    Width = 606
    Height = 330
    Align = alClient
    Ctl3D = False
    DataSource = frmRelCorresDiversas.dsTabela
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
    Columns = <
      item
        Expanded = False
        FieldName = 'VALOR DO CREDITO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DURA'#199#195'O DO PLANO'
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
        FieldName = 'ENTRADA DO PLANO'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEMAIS PARCELAS'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR DO CR'#201'DITO R$'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DURA'#199#195'O DO PLANO1'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTRADA DO PLANO1'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEMAIS PARCELAS1'
        Width = 54
        Visible = True
      end>
  end
end
