inherited frmRelAtrasadasGruposCotas: TfrmRelAtrasadasGruposCotas
  Left = 189
  Top = 129
  Caption = 'Relat'#243'rio de Parcelas Atrasadas de Grupos/Cotas'
  ClientHeight = 445
  ClientWidth = 728
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 728
    Height = 404
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 136
      Height = 200
      Align = alLeft
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 15
        Width = 132
        Height = 22
        DataSource = dmAdmDados.dsLisGrupos2
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alTop
        TabOrder = 0
      end
      object grdConsultar: TDBGrid
        Left = 2
        Top = 37
        Width = 132
        Height = 161
        Align = alClient
        Ctl3D = False
        DataSource = dmAdmDados.dsLisGrupos2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'GRU_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRU_DESCRICAO'
            Title.Caption = 'Grupo'
            Width = 68
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 137
      Top = 1
      Width = 454
      Height = 200
      Align = alClient
      TabOrder = 1
      object DBNavigator2: TDBNavigator
        Left = 2
        Top = 15
        Width = 450
        Height = 22
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alTop
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 37
        Width = 450
        Height = 161
        Align = alClient
        Ctl3D = False
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COT_NRVENDA'
            Title.Caption = 'Venda'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_NRCOTA'
            Title.Caption = 'Cota'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_PLANO'
            Title.Caption = 'Plano'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_POSICAO'
            Title.Caption = 'Sit.'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_UFCLIE'
            Title.Caption = 'UF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Title.Caption = 'Cidade'
            Width = 142
            Visible = True
          end>
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 201
      Width = 726
      Height = 202
      Align = alBottom
      Caption = '[ Sele'#231#227'o de Parcelas ]'
      TabOrder = 2
      object Label6: TLabel
        Left = 128
        Top = 152
        Width = 14
        Height = 13
        Caption = 'UF'
        Transparent = True
      end
      object Label1: TLabel
        Left = 184
        Top = 152
        Width = 45
        Height = 13
        Caption = 'Municipio'
        Transparent = True
      end
      object Label12: TLabel
        Left = 342
        Top = 149
        Width = 51
        Height = 13
        Caption = 'Data Inicio'
        Transparent = True
      end
      object Label2: TLabel
        Left = 469
        Top = 149
        Width = 48
        Height = 13
        Caption = 'Data Final'
        Transparent = True
      end
      object Label3: TLabel
        Left = 596
        Top = 149
        Width = 51
        Height = 13
        Caption = 'N'#186' Parcela'
        Transparent = True
      end
      object RadioGroup1: TRadioGroup
        Left = 7
        Top = 16
        Width = 168
        Height = 65
        Caption = '[ Sele'#231#227'o de Impress'#227'o ]'
        ItemIndex = 2
        Items.Strings = (
          'Cota Selecionada'
          'Cotas de Grupo Selecionado'
          'Todos os Grupos')
        TabOrder = 0
      end
      object RadioGroup2: TRadioGroup
        Left = 179
        Top = 16
        Width = 116
        Height = 65
        Caption = '[ Tipo de Relat'#243'rio ] '
        ItemIndex = 0
        Items.Strings = (
          'Atrasadas'
          'Pagas'
          'A Vencer')
        TabOrder = 1
      end
      object RadioGroup3: TRadioGroup
        Left = 299
        Top = 16
        Width = 142
        Height = 65
        Caption = '[ Tipo de Relat'#243'rio Pagas ] '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Acerto'
          'Normais'
          'Caixa'
          'Lance'
          'Banco')
        TabOrder = 2
      end
      object RadioGroup4: TRadioGroup
        Left = 444
        Top = 16
        Width = 116
        Height = 65
        Caption = '[ Forma de Relat'#243'rio ]'
        ItemIndex = 0
        Items.Strings = (
          'Lista'
          'Resumo')
        TabOrder = 3
      end
      object RadioGroup5: TRadioGroup
        Left = 564
        Top = 16
        Width = 127
        Height = 65
        Caption = '[ Parc. Pagas/Bancos ]'
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Banco Selecionado')
        TabOrder = 4
      end
      object RadioGroup6: TRadioGroup
        Left = 7
        Top = 80
        Width = 116
        Height = 65
        Caption = '[ Situa'#231#227'o ] '
        ItemIndex = 2
        Items.Strings = (
          'Cotas Ativas'
          'Cotas Inativas'
          'Todas Cotas')
        TabOrder = 5
      end
      object RadioGroup7: TRadioGroup
        Left = 128
        Top = 80
        Width = 167
        Height = 65
        Caption = '[ Contempla'#231#227'o ]'
        ItemIndex = 2
        Items.Strings = (
          'Cotas j'#225' Contemplada'
          'Cotas N'#227'o-Contempladas'
          'Todas as Cotas')
        TabOrder = 6
      end
      object GroupBox4: TGroupBox
        Left = 299
        Top = 80
        Width = 125
        Height = 65
        Caption = '[ Corr. Taxa Adm. ]'
        TabOrder = 7
        object Label9: TLabel
          Left = 10
          Top = 27
          Width = 51
          Height = 13
          Caption = 'Percentual'
          Transparent = True
        end
        object CheckBox1: TCheckBox
          Left = 10
          Top = 11
          Width = 102
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sim '
          TabOrder = 0
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 10
          Top = 40
          Width = 106
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          TabOrder = 1
        end
      end
      object CheckBox2: TCheckBox
        Left = 432
        Top = 86
        Width = 113
        Height = 17
        Caption = 'Limite de Parcelas'
        TabOrder = 8
      end
      object RadioGroup8: TRadioGroup
        Left = 432
        Top = 102
        Width = 136
        Height = 43
        Caption = '[ Ref. ao N'#186' de Parcelas ]'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'At'#233
          'Exatas')
        TabOrder = 9
      end
      object RadioGroup9: TRadioGroup
        Left = 7
        Top = 144
        Width = 116
        Height = 50
        Caption = '[ Cliente municipio ]'
        ItemIndex = 1
        Items.Strings = (
          'Informado'
          'Todos')
        TabOrder = 10
      end
      object ComboBox1: TComboBox
        Left = 128
        Top = 166
        Width = 49
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 11
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
      object Edit1: TEdit
        Left = 184
        Top = 167
        Width = 137
        Height = 21
        TabOrder = 12
      end
      object DateEdit1: TDateEdit
        Left = 342
        Top = 165
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 13
      end
      object DateEdit2: TDateEdit
        Left = 469
        Top = 165
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 14
      end
      object SpinEdit1: TSpinEdit
        Left = 596
        Top = 163
        Width = 66
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 15
        Value = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 591
      Top = 1
      Width = 136
      Height = 200
      Align = alRight
      TabOrder = 3
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 132
        Height = 183
        Align = alClient
        Ctl3D = False
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
            Title.Caption = 'Banco'
            Width = 112
            Visible = True
          end>
      end
    end
  end
  inherited pnlBotoes: TPanel
    Top = 404
    Width = 728
    inherited BtSair: TBitBtn
      Left = 638
    end
    inherited btnVisualizar: TBitBtn
      Left = 552
    end
  end
  object DataSource1: TDataSource
    DataSet = dmAdmDados.cdsCotasClientes2
    Left = 217
    Top = 113
  end
end
