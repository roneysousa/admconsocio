object frmVendas: TfrmVendas
  Left = 205
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 563
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 748
    Height = 473
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Dados'
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 16
        Top = 12
        Width = 82
        Height = 13
        Caption = 'Grupo/Descri'#231#227'o'
        Transparent = True
      end
      object Label2: TLabel
        Left = 196
        Top = 12
        Width = 22
        Height = 13
        Caption = 'Cota'
        Transparent = True
      end
      object Label3: TLabel
        Left = 284
        Top = 12
        Width = 27
        Height = 13
        Caption = 'Plano'
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 64
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Cliente'
        Transparent = True
      end
      object spLocCliente: TSpeedButton
        Left = 97
        Top = 77
        Width = 23
        Height = 22
        Hint = 'Localizar cliente'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        OnClick = spLocClienteClick
      end
      object Label7: TLabel
        Left = 16
        Top = 100
        Width = 40
        Height = 13
        Caption = 'Contrato'
        Transparent = True
      end
      object Label8: TLabel
        Left = 126
        Top = 100
        Width = 66
        Height = 13
        Caption = 'Data Contrato'
        Transparent = True
      end
      object Label9: TLabel
        Left = 290
        Top = 100
        Width = 75
        Height = 13
        Caption = 'Data 1'#170' Parcela'
        Transparent = True
      end
      object Label11: TLabel
        Left = 16
        Top = 139
        Width = 33
        Height = 13
        Caption = 'Cr'#233'dito'
        Transparent = True
      end
      object Label12: TLabel
        Left = 144
        Top = 139
        Width = 76
        Height = 13
        Caption = 'Valor 1'#170' Parcela'
        Transparent = True
      end
      object Label13: TLabel
        Left = 272
        Top = 139
        Width = 63
        Height = 13
        Caption = 'Valor Parcela'
        Transparent = True
      end
      object Label10: TLabel
        Left = 272
        Top = 176
        Width = 102
        Height = 13
        Caption = 'Acerto Contempla'#231#227'o'
        Transparent = True
        Visible = False
      end
      object Label14: TLabel
        Left = 16
        Top = 176
        Width = 72
        Height = 13
        Caption = 'Cr'#233'dito L'#237'quido'
        Transparent = True
      end
      object Label15: TLabel
        Left = 144
        Top = 176
        Width = 115
        Height = 13
        Caption = 'Taxa de Fundo Reserva'
        Transparent = True
      end
      object Label16: TLabel
        Left = 16
        Top = 216
        Width = 51
        Height = 13
        Caption = 'Taxa Adm.'
        Transparent = True
      end
      object Label17: TLabel
        Left = 144
        Top = 216
        Width = 78
        Height = 13
        Caption = 'Taxa de Ades'#227'o'
        Transparent = True
      end
      object Label18: TLabel
        Left = 272
        Top = 216
        Width = 96
        Height = 13
        Caption = 'Taxa Valor Cadastro'
        Transparent = True
      end
      object Label19: TLabel
        Left = 16
        Top = 253
        Width = 31
        Height = 13
        Caption = 'Banco'
        Transparent = True
      end
      object Label20: TLabel
        Left = 194
        Top = 253
        Width = 35
        Height = 13
        Caption = 'Modelo'
        Transparent = True
      end
      object spLocGrupo: TSpeedButton
        Left = 161
        Top = 51
        Width = 23
        Height = 22
        Hint = 'Localizar grupo'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        Visible = False
        OnClick = spLocGrupoClick
      end
      object lblDataReceber: TLabel
        Left = 16
        Top = 290
        Width = 104
        Height = 13
        Caption = 'Data do Recebimento'
      end
      object lblReceber: TLabel
        Left = 144
        Top = 290
        Width = 88
        Height = 13
        Caption = 'Valor do Recebido'
        FocusControl = dbeValorReceber
      end
      object Label25: TLabel
        Left = 427
        Top = 65
        Width = 77
        Height = 13
        Caption = 'Saldo de Cliente'
        Transparent = True
      end
      object Label26: TLabel
        Left = 126
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Nome'
        Transparent = True
      end
      object Label29: TLabel
        Left = 234
        Top = 100
        Width = 16
        Height = 13
        Caption = 'Dia'
        FocusControl = cmbDia
      end
      object rbStatusGrupo: TGroupBox
        Left = 368
        Top = -2
        Width = 353
        Height = 55
        Caption = '[ Status do Grupo ]'
        Enabled = False
        TabOrder = 22
        object Label4: TLabel
          Left = 8
          Top = 13
          Width = 64
          Height = 13
          Caption = 'N'#186'. de Meses'
        end
        object Label5: TLabel
          Left = 104
          Top = 13
          Width = 60
          Height = 13
          Caption = 'N'#186'. de Cotas'
        end
        object cbxIniciou: TCheckBox
          Left = 208
          Top = 29
          Width = 57
          Height = 17
          Caption = 'Iniciou'
          TabOrder = 0
        end
        object cbxCorrigido: TCheckBox
          Left = 273
          Top = 29
          Width = 69
          Height = 17
          Caption = 'Corrigido'
          TabOrder = 1
        end
        object edtMeses: TEdit
          Left = 8
          Top = 27
          Width = 90
          Height = 21
          TabOrder = 2
        end
        object edtCotas: TEdit
          Left = 104
          Top = 27
          Width = 90
          Height = 21
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 402
        Top = 102
        Width = 318
        Height = 216
        Caption = '[ Status de Cotas ] '
        Enabled = False
        TabOrder = 20
        object Label28: TLabel
          Left = 8
          Top = 13
          Width = 31
          Height = 13
          Caption = 'Venda'
          Transparent = True
        end
        object Label32: TLabel
          Left = 12
          Top = 170
          Width = 69
          Height = 13
          Caption = 'Parcela Pagas'
          Transparent = True
        end
        object Label33: TLabel
          Left = 114
          Top = 168
          Width = 86
          Height = 13
          Caption = 'Parcela Atrasadas'
          Transparent = True
        end
        object Label34: TLabel
          Left = 216
          Top = 168
          Width = 82
          Height = 13
          Caption = 'Parcela a Vencer'
          Transparent = True
        end
        object DBText1: TDBText
          Left = 8
          Top = 24
          Width = 79
          Height = 22
          AutoSize = True
          Color = clBtnFace
          DataField = 'COT_NRVENDA'
          DataSource = dsVendaContas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lbl_situacao: TLabel
          Left = 100
          Top = 24
          Width = 12
          Height = 19
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox4: TGroupBox
          Left = 12
          Top = 45
          Width = 176
          Height = 120
          Caption = '[ Contempla'#231#227'o ]'
          TabOrder = 0
          object Label31: TLabel
            Left = 8
            Top = 65
            Width = 53
            Height = 13
            Caption = 'Assembl'#233'ia'
          end
          object cbxContemplacao: TCheckBox
            Left = 9
            Top = 17
            Width = 97
            Height = 17
            Caption = 'Contempla'#231#227'o'
            TabOrder = 0
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 8
            Top = 32
            Width = 159
            Height = 31
            Columns = 2
            DataField = 'COT_TIPO'
            DataSource = dsVendaContas
            Items.Strings = (
              'Sorteio'
              'Lance')
            TabOrder = 1
            Values.Strings = (
              'S'
              'L')
          end
          object dbeAssembleia: TDBEdit
            Left = 8
            Top = 80
            Width = 134
            Height = 21
            DataField = 'COT_ASSEB_CONTEMP'
            DataSource = dsVendaContas
            TabOrder = 2
          end
        end
        object edtParcPagas: TEdit
          Left = 12
          Top = 184
          Width = 90
          Height = 21
          TabOrder = 1
        end
        object edtParcAtras: TEdit
          Left = 114
          Top = 184
          Width = 90
          Height = 21
          TabOrder = 2
        end
        object edtParcVinc: TEdit
          Left = 216
          Top = 184
          Width = 90
          Height = 21
          TabOrder = 3
        end
        object rbSituacao: TDBRadioGroup
          Left = 196
          Top = 45
          Width = 110
          Height = 120
          Caption = '[ Situa'#231#227'o ]'
          DataField = 'COT_POSICAO'
          DataSource = dsVendaContas
          Items.Strings = (
            'Ativo'
            'Inativo'
            'Quita'#231#227'o'
            'Inativo (Pago)'
            'Vendido'
            'Reativado'
            'Migrado')
          TabOrder = 4
          Values.Strings = (
            'A'
            'I'
            'Q'
            'P'
            'V'
            'R'
            'M')
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 332
        Width = 740
        Height = 113
        Align = alBottom
        TabOrder = 21
        object grdConsultar2: TDBGrid
          Left = 1
          Top = 1
          Width = 738
          Height = 111
          Align = alClient
          Ctl3D = False
          DataSource = dsParcelas
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
          OnDblClick = grdConsultar2DblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_NRPARC'
              Title.Alignment = taCenter
              Title.Caption = 'PC'
              Width = 34
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_DTVENC'
              Title.Caption = 'Data Venc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_VLPARC'
              Title.Caption = 'Valor Parc.'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_TXFUND_CALC'
              Title.Caption = 'Fund.Res'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_TAXADM_CALC'
              Title.Caption = 'Taxa Adm.'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_TOTAL_CALC'
              Title.Caption = 'Total Pagar'
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_DTPAGA'
              Title.Caption = 'Data Pgto.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_VLMULT'
              Title.Caption = 'Multa'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_CREDITO'
              Title.Caption = 'Cr'#233'dito'
              Width = 45
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_TPCREDITO'
              Title.Caption = 'Tipo'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_TOTAL_PAGO'
              Title.Caption = 'Total Pago'
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'REC_FORMABAIXA'
              Title.Caption = 'Tipo'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_NMBANCO'
              Title.Caption = 'Banco'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REC_NOSSONUMERO'
              Title.Caption = 'Nosso Numero'
              Width = 185
              Visible = True
            end>
        end
      end
      object dbeCOTA: TDBEdit
        Left = 196
        Top = 28
        Width = 81
        Height = 21
        Hint = 'Digite o n'#250'mero da cota'
        DataField = 'COT_NRCOTA'
        DataSource = dsVendaContas
        MaxLength = 5
        TabOrder = 1
        OnEnter = dbeCOTAEnter
        OnExit = dbeCOTAExit
        OnKeyPress = dbeCOTAKeyPress
      end
      object dbePLANO: TDBEdit
        Left = 284
        Top = 28
        Width = 81
        Height = 21
        Hint = 'Digite o plano'
        DataField = 'COT_PLANO'
        DataSource = dsVendaContas
        MaxLength = 4
        TabOrder = 2
        OnExit = dbePLANOExit
        OnKeyPress = dbePLANOKeyPress
      end
      object dbeCliente: TDBEdit
        Left = 16
        Top = 79
        Width = 81
        Height = 21
        Hint = 'Digite o c'#243'digo do cliente'
        DataField = 'COT_CDCLIE'
        DataSource = dsVendaContas
        MaxLength = 7
        TabOrder = 3
        OnChange = dbeClienteChange
        OnExit = dbeClienteExit
        OnKeyPress = dbeClienteKeyPress
      end
      object dbeContrato: TDBEdit
        Left = 17
        Top = 115
        Width = 104
        Height = 21
        DataField = 'COT_CONTRATO'
        DataSource = dsVendaContas
        TabOrder = 5
        OnKeyPress = dbeContratoKeyPress
      end
      object dbeCredito: TDBEdit
        Left = 16
        Top = 152
        Width = 121
        Height = 21
        Hint = 'Digite o cr'#233'dito do cliente'
        DataField = 'COT_VALCRE'
        DataSource = dsVendaContas
        MaxLength = 9
        TabOrder = 9
        OnChange = dbeCreditoChange
        OnEnter = dbeCreditoEnter
        OnExit = dbeCreditoExit
        OnKeyPress = dbeCreditoKeyPress
      end
      object dbePrimeiraPC: TDBEdit
        Left = 144
        Top = 152
        Width = 121
        Height = 21
        DataField = 'COT_VALORENTRADA'
        DataSource = dsVendaContas
        MaxLength = 9
        TabOrder = 10
        OnExit = dbePrimeiraPCExit
      end
      object dbeValorPC: TDBEdit
        Left = 272
        Top = 152
        Width = 121
        Height = 21
        DataField = 'COT_VALCOTA'
        DataSource = dsVendaContas
        MaxLength = 9
        TabOrder = 11
      end
      object dbeAcerto: TDBEdit
        Left = 272
        Top = 192
        Width = 121
        Height = 21
        DataField = 'COT_VALACERTO'
        DataSource = dsVendaContas
        MaxLength = 9
        ReadOnly = True
        TabOrder = 12
        Visible = False
      end
      object dbeCreditoLiq: TDBEdit
        Left = 16
        Top = 192
        Width = 121
        Height = 21
        DataField = 'COT_VALCRE'
        DataSource = dsVendaContas
        MaxLength = 9
        ReadOnly = True
        TabOrder = 13
      end
      object dbeFundo: TDBEdit
        Left = 144
        Top = 192
        Width = 121
        Height = 21
        DataField = 'COT_FUNDORES'
        DataSource = dsVendaContas
        MaxLength = 9
        TabOrder = 14
      end
      object dbeTxAdm: TDBEdit
        Left = 16
        Top = 232
        Width = 121
        Height = 21
        DataField = 'COT_TAXA_ADM'
        DataSource = dsVendaContas
        MaxLength = 9
        TabOrder = 15
        OnExit = dbeTxAdmExit
      end
      object dbeTxAdesao: TDBEdit
        Left = 144
        Top = 232
        Width = 121
        Height = 21
        DataField = 'COT_TAXA_ADESAO'
        DataSource = dsVendaContas
        MaxLength = 9
        ReadOnly = True
        TabOrder = 16
      end
      object dbeTxCad: TDBEdit
        Left = 272
        Top = 232
        Width = 121
        Height = 21
        DataField = 'COT_VALOR_TAXACAD'
        DataSource = dsVendaContas
        MaxLength = 9
        ReadOnly = True
        TabOrder = 17
      end
      object cmbBancos: TDBLookupComboBox
        Left = 16
        Top = 268
        Width = 172
        Height = 21
        DataField = 'BANCO'
        DataSource = dsVendaContas
        TabOrder = 18
        OnExit = cmbBancosExit
      end
      object cmbGrupos: TDBLookupComboBox
        Left = 64
        Top = 28
        Width = 126
        Height = 21
        Hint = 'Selecione o grupo'
        DataField = 'COT_NMGRUP'
        DataSource = dsVendaContas
        TabOrder = 0
        OnExit = cmbGruposExit
        OnKeyPress = cmbGruposKeyPress
      end
      object dbeDtContrato: TDBDateEdit
        Left = 126
        Top = 115
        Width = 104
        Height = 21
        DataField = 'COT_DTCONT'
        DataSource = dsVendaContas
        NumGlyphs = 2
        TabOrder = 6
        OnExit = dbeDtContratoExit
      end
      object dbeDTVenc1: TDBDateEdit
        Left = 290
        Top = 115
        Width = 104
        Height = 21
        DataField = 'COT_DTVENCIMENTO'
        DataSource = dsVendaContas
        NumGlyphs = 2
        TabOrder = 8
        OnEnter = dbeDTVenc1Enter
        OnExit = dbeDTVenc1Exit
      end
      object dbeCDGRUP: TDBEdit
        Left = 18
        Top = 28
        Width = 39
        Height = 21
        TabStop = False
        Color = clSilver
        DataField = 'COT_CDGRUPO'
        DataSource = dsVendaContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        OnEnter = dbeCOTAEnter
        OnExit = dbeCOTAExit
        OnKeyPress = dbeCOTAKeyPress
      end
      object cbmModelos: TComboBox
        Left = 194
        Top = 267
        Width = 199
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        TabOrder = 19
        OnEnter = cbmModelosEnter
      end
      object dbeValorReceber: TDBEdit
        Left = 144
        Top = 305
        Width = 121
        Height = 21
        DataField = 'COT_VALOR_RECEBER'
        DataSource = dsVendaContas
        TabOrder = 25
      end
      object dbeRecebimento: TDBDateEdit
        Left = 16
        Top = 304
        Width = 121
        Height = 21
        DataField = 'COT_DTRECEBIMENTO'
        DataSource = dsVendaContas
        NumGlyphs = 2
        TabOrder = 24
      end
      object DBNavigator2: TDBNavigator
        Left = 576
        Top = 55
        Width = 144
        Height = 21
        DataSource = dsLista
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro registro'
          'Registro anterior'
          'Pr'#243'ximo registro'
          #218'ltimo registro')
        TabOrder = 26
        OnClick = DBNavigator2Click
      end
      object rbAdesao: TDBRadioGroup
        Left = 276
        Top = 292
        Width = 121
        Height = 34
        Caption = '[ Ades'#227'o]'
        Columns = 2
        DataField = 'COT_FLPROMOCAO'
        DataSource = dsVendaContas
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 27
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object lblNMCLIE: TEdit
        Left = 126
        Top = 79
        Width = 297
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
        Text = '...'
      end
      object edtSaldo: TDBEdit
        Left = 427
        Top = 79
        Width = 113
        Height = 21
        DataField = 'COT_SALDO_ANTERIOR'
        DataSource = dsVendaContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 4
        OnClick = edtSaldoClick
      end
      object cmbDia: TDBLookupComboBox
        Left = 234
        Top = 115
        Width = 52
        Height = 21
        DataField = 'COT_DIA'
        DataSource = dsVendaContas
        TabOrder = 7
        OnExit = cmbDiaExit
        OnKeyPress = cmbDiaKeyPress
      end
      object ckbSaldoParcela: TCheckBox
        Left = 547
        Top = 81
        Width = 173
        Height = 17
        Caption = 'Reduzir Valor PC do Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
        OnClick = ckbSaldoParcelaClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Consulta'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object pnlProcurar: TPanel
        Left = 0
        Top = 0
        Width = 740
        Height = 169
        Align = alTop
        TabOrder = 0
        object lblConsultar: TLabel
          Left = 16
          Top = 5
          Width = 32
          Height = 13
          Caption = 'Grupo:'
          Transparent = True
        end
        object Label27: TLabel
          Left = 120
          Top = 5
          Width = 25
          Height = 13
          Caption = 'Cota:'
          Transparent = True
        end
        object Label21: TLabel
          Left = 16
          Top = 45
          Width = 34
          Height = 13
          Caption = 'Venda:'
          Transparent = True
        end
        object Label22: TLabel
          Left = 119
          Top = 45
          Width = 45
          Height = 13
          Caption = 'N'#186'. S'#233'rie:'
          Transparent = True
        end
        object Label23: TLabel
          Left = 16
          Top = 86
          Width = 78
          Height = 13
          Caption = 'Nome do Cliente'
        end
        object Label24: TLabel
          Left = 15
          Top = 124
          Width = 38
          Height = 13
          Caption = 'N'#186' CPF:'
          Transparent = True
        end
        object edtConsultar: TEdit
          Left = 16
          Top = 21
          Width = 90
          Height = 19
          Hint = 'Informe o grupo'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 4
          ParentCtl3D = False
          TabOrder = 0
          OnChange = edtConsultarChange
          OnEnter = edtConsultarEnter
          OnKeyPress = edtConsultarKeyPress
        end
        object btnConsultar: TBitBtn
          Left = 256
          Top = 18
          Width = 95
          Height = 25
          Hint = 'Localizar registro'
          Caption = 'Localizar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
          OnClick = btnConsultarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
            DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
            FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
            5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FF000000
            DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
            FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
            5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
            DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
            FF00FF48FF00FF25FF00FF00FF00DC00DC00B900B90096009600730073005000
            5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
            9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
            8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
            1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FF000000DC00
            0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
            6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
            0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
            0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
            6B00FFFF4800FFFF2500FFFF0000DCDC0000B9B9000096960000737300005050
            0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
            00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
            6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
            0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FF000000DC
            000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
            8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
            1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
            920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
            FF0048FFFF0025FFFF0000FFFF0000DCDC0000B9B90000969600007373000050
            5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
            9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
            3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFF2F2F2
            F2F2F2F2F2F2F2FFFFFFFFFFF2EBE7E4E4E4E4E4E4E5F2F3F3FFFFF2E2F0E7E3
            E3E3E3E3E3EE1D0F1FF3F2EBF0EEE3E3E2E2E2E2EE1D0C241DF3F2E4E3E3E3E3
            E4E8E8EE1D0C241DF3FFF2E3E3E3E6EDF0F0F0F00C241DF3FFFFF2E3E3E6ED85
            858586791B1DF3FFFFFFF2E3E6EDE8839090858679F0F2FFFFFFF2E3E6ED838E
            8F90908586F0F2FFFFFFF2E3E6ED838E8F8F909086F0F2FFFFFFF2E3E6ED838E
            8F8F8F9086F0F2FFFFFFF2E3E4EDE6838E8F8F83E8F0F2FFFFFFF2E3E4E6EDE6
            838383E8F3E6F2FFFFFFF2E3E4E4E6EDEDEDEDEDE6E3F2FFFFFFF2E2E3E3E3E3
            E6E6E6E6E3E3F2FFFFFFF2F2F2F2F2F2F2F2F2F2F2F2F2FFFFFF}
        end
        object edtCota: TEdit
          Left = 119
          Top = 21
          Width = 90
          Height = 19
          Hint = 'Informe a cota'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 1
          OnChange = edtCotaChange
          OnExit = edtCotaExit
          OnKeyDown = edtCotaKeyDown
          OnKeyPress = edtConsultarKeyPress
        end
        object rgConsultar: TRadioGroup
          Left = 512
          Top = 11
          Width = 204
          Height = 137
          Caption = '[ Situa'#231#227'o ]'
          ItemIndex = 0
          Items.Strings = (
            'Ativo'
            'Inativo (Pago)'
            'Inativo'
            'Vendido'
            'Quitados'
            'Reativados'
            'Migrado')
          TabOrder = 4
          OnClick = rgConsultarClick
        end
        object btnRegistro: TBitBtn
          Left = 400
          Top = 17
          Width = 95
          Height = 25
          Hint = 'Ver registro'
          Caption = '&Ver Registro'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnRegistroClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            080000000000000100000000000000000000000100000000000000000000FFFF
            FF005441B100614EBE00C0C0C000FCD7DA00ECC8CA00F0CCCE00EFCBCD00EECA
            CC00FDD9DB00FBD7D900EAC5C700EEC9CB00F9D4D600FAD5D700E1BABB00ECC4
            C500EDC6C700E6C0C100E4BEBF00E3BDBE00E9C3C400E7C2C300F4CECF00F8D3
            D400F6D1D200FFCFCF00D6AEAE00D9B2B200D8B1B100E7BFBF00E8C1C100EAC3
            C300F6D0D000CAA09F00CCA2A100D4AAA900E0B6B500DEB5B400DCB3B200D7B0
            AF00E1B9B800C3999700CDA4A200D3AAA80046C6C50053D3D2004D8DB900ADAF
            D900BABCE600F2F2F200C3C3C300B6B6B6008F8F8F008B8B8B00282828001B1B
            1B000D0D0D000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000040404040404
            0404040404040404040404040404040439010404040404040404040401330133
            38390133013304040404043A003A003A392F3936330104040404040001070B16
            382E0339013304040404043A330F07050C382E03390104040404040001170E08
            0A392F02383304040404043A33121319090A392F0238330404040400011D1114
            1A0D382E033901040404043A332A1E21152206382E03390104040400012C2629
            201018392F3938330404043A332524271C1F003A3930023833040400012B2D23
            28001B00383132390104043A330133013301000135383138330404003A003A00
            3A003A3534393837010404040404040404040404040404040404}
        end
        object edtNRVEND: TEdit
          Left = 16
          Top = 61
          Width = 90
          Height = 19
          Hint = 'Informe n'#250'mero da venda'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 2
          OnChange = edtNRVENDChange
          OnKeyPress = edtNRVENDKeyPress
        end
        object edtNumPlaca: TEdit
          Left = 119
          Top = 61
          Width = 90
          Height = 19
          Hint = 'Informe n'#250'mero da placar'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 7
          ParentCtl3D = False
          TabOrder = 6
          OnChange = edtNumPlacaChange
          OnKeyPress = edtNumPlacaKeyPress
        end
        object edtNomeCliente: TEdit
          Left = 16
          Top = 101
          Width = 393
          Height = 19
          Hint = 'Informe o valor para consultar'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 60
          ParentCtl3D = False
          TabOrder = 7
          OnChange = edtNomeClienteChange
          OnKeyDown = edtNomeClienteKeyDown
          OnKeyPress = edtNomeClienteKeyPress
        end
        object edtNRCPF: TMaskEdit
          Left = 16
          Top = 139
          Width = 137
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnChange = edtNRCPFChange
          OnKeyPress = edtNRCPFKeyPress
        end
      end
      object Panel3: TPanel
        Left = 706
        Top = 169
        Width = 34
        Height = 257
        Align = alRight
        TabOrder = 1
        object sbProximo: TSpeedButton
          Left = 5
          Top = 83
          Width = 25
          Height = 35
          Hint = 'Pr'#243'ximo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FFE6
            E600FEE5E500FCE3E300FBE1E100F9DFE000F7DDDE00F7DDDD00F5DBDB00F4DB
            DB00F2D9D900E6D9D900F0D6D700EED4D400EBD2D200E9D0D000E9CFD000E7CD
            CD00E5CBCB00E3C9C900E0C7C700DEC4C400DCC2C200CCC0C000D9C0BF00D7BE
            BD00D4BBBB00D3B9B900D0B7B700CFB5B500CEB4B400CCB3B300C9B0B000C7AE
            AE00C5ACAC00C3AAAA00C1A8A800C1A7A700BFA5A500BDA3A300BCA3A300BAA0
            A100BAA1A000B89E9E00B59C9C00B39A9A00AF969600AD949400A88F8F00A68D
            8D00A18888009F8686009B8382009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939003939
            3939393939393939393939393939393939393939000037393939393939393939
            39393939393939393939390000370D3839393939393939393939393939393939
            39390000370D260D383939393939393939393939393939393900003706260D2E
            1138393939393939393939393939393900003706260D2C112E15383939393939
            3939393939393900003705210D2B112E15311938393939393939393939390000
            3706210D261038143019331D383939393939393939000037012106260D383938
            18331D331D38393939393939000037012106260D3839393938193321331D3839
            393939393937011D05250C3839393939393821331D170B383939393939393801
            25063839393939393939381D170B383939393939393939380638393939393939
            393939380B383939393939393939393938393939393939393939393938393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbProximoClick
        end
        object sbUltimo: TSpeedButton
          Left = 5
          Top = 122
          Width = 25
          Height = 35
          Hint = #218'ltimo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777777
            7777777777777777777777777777777077777777777777777777770027777777
            7777777777777002327777777777777777770023432777777777777777700234
            3432777777777777770023434343277777777777700234343434327777777777
            0025656565656547777777700256565656565654777777772121212121212121
            2777777777777777777777777777777000000000000000007777777034343434
            3434343617777770456565656565656527777770365656565656565617777770
            4565656565656565277777771212121212121212177777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbUltimoClick
        end
        object sbAnterior: TSpeedButton
          Left = 5
          Top = 44
          Width = 25
          Height = 35
          Hint = 'Registro anterior'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FEE5
            E400FDE3E300FBE1E100F9DFE000F7DEDD00F4DBDB00F2D9D900E6D9D900F0D7
            D700EED4D400EBD2D200E9CFCF00E7CECD00E5CBCB00E3C9C900E0C6C700DEC4
            C500DBC2C200D9C0C000CDC0C000CCC0C000D7BDBD00D5BBBB00D3B9B900D1B7
            B700CFB6B500CFB5B500CDB4B400CCB3B300C7AEAE00C6ACAC00C1A8A800BFA6
            A600BAA0A100B89E9E00B39A9A00B1989800AD949400AA919100A68D8D00A38A
            8A009F8686009D8484009C8283009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131003131313131313131
            313131003131313131313131313100002F31313131313131313100002F313131
            313131313100002F01303131313131313100002F1A3031313131313100002F01
            1E0530313131313100002F1A2A1A303131313131312F011E05210A3031313100
            002F1E2A1A1408303131313131313004210A230D303100002F1E2A1A14083031
            313131313131313005210D241130002F1A2A1A16083031313131313131313131
            300A240D26162F1A2A1A140830313131313131313131313131300D2611281A2A
            1A1408303131313131313131313131313131301128162A1A1408303131313131
            313131313131313131313130162A1A1408303131313131313131313131313131
            3131313130191408303131313131313131313131313131313131313131300830
            3131313131313131313131313131313131313131313130313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbAnteriorClick
        end
        object sbPrimeiro: TSpeedButton
          Left = 5
          Top = 6
          Width = 25
          Height = 35
          Hint = 'Primeiro registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777770
            0000000000000000777777703434343434343436177777704565656565656565
            2777777036565656565656561777777045656565656565652777777712121212
            1212121217777777777777777777777777777777777777777777777777777770
            0000000000000000777777771212121212121212177777777143434343434341
            7777777777143434343656177777777777714343436561777777777777771434
            3656177777777777777771436561777777777777777777165617777777777777
            7777777161777777777777777777777717777777777777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbPrimeiroClick
        end
      end
      object grdConsultar: TDBGrid
        Left = 0
        Top = 169
        Width = 706
        Height = 257
        Align = alClient
        Ctl3D = False
        DataSource = dsConsultar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = grdConsultarDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COT_NRVENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Venda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_CDGRUPO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Grupo'
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
            FieldName = 'COT_NRCOTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Cota'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_CDCLIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Cliente'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Nome Cliente'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 318
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_POSICAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Posi'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_NRSERIE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'N'#186'. S'#233'rie'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'CPF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object pnlStatus: TPanel
        Left = 0
        Top = 426
        Width = 740
        Height = 19
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 3
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 473
    Width = 748
    Height = 71
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BtAdicionar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Incluir novo registro'
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BtAdicionarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
        0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
        0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
        111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Alterar registro'
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = BtEditarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
        1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
        1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
        0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtExcluir: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Excluir registro'
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = BtExcluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
        0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
        0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtGravar: TBitBtn
      Left = 255
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar dados'
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = BtGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
        1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
        1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
        1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
        13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtCancelar: TBitBtn
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 4
      OnClick = BtCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtSair: TBitBtn
      Left = 658
      Top = 39
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = BtSairClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnImprimiExt: TBitBtn
      Left = 8
      Top = 39
      Width = 75
      Height = 25
      Hint = 'Imprime Extrato'
      Caption = 'Extrato'
      TabOrder = 6
      OnClick = btnImprimiExtClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
    object bntImportar: TBitBtn
      Left = 488
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Importar'
      TabOrder = 7
      Visible = False
      OnClick = bntImportarClick
    end
    object btnContrato: TBitBtn
      Left = 88
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Contrato'
      TabOrder = 8
      OnClick = btnContratoClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00000000000000000000000000000000000000000000000000000000
        0000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBF000000000000BFBFBF000000000000000000000000000000000000
        FFFFFFFFFFFF000000000000000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
        000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
        FFFFFFFF00FFFF000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF000000BFBFBF0000BFBFBFFFFF0000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBFFFFF00000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000
        000000000000FFFFFFFFFFFF000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
        00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF0000
        00FFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
        FF000000000000000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF000000BFBFBF0000BFBFBF000000000000000000FFFFFF00FFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000FFFFFFFFFF
        FF000000000000000000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
        FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
        0000FF0000FF0000FF0000FF0000FF0000000000FFFFFF000000BFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
    end
    object btnSPC: TBitBtn
      Left = 168
      Top = 39
      Width = 75
      Height = 25
      Hint = 'Incluir/Excluir do SPC'
      Caption = 'SPC'
      TabOrder = 9
      OnClick = btnSPCClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnQuitar: TBitBtn
      Left = 255
      Top = 40
      Width = 75
      Height = 25
      Caption = '&Quita'#231#227'o'
      TabOrder = 10
      OnClick = btnQuitarClick
    end
    object btnInativar: TBitBtn
      Left = 335
      Top = 40
      Width = 75
      Height = 25
      Caption = '&Inativar'
      TabOrder = 11
      OnClick = btnInativarClick
    end
    object btnInativarPago: TBitBtn
      Left = 415
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Inat.&Pago'
      TabOrder = 12
      OnClick = btnInativarPagoClick
    end
    object btnReativar: TBitBtn
      Left = 495
      Top = 40
      Width = 75
      Height = 25
      Caption = '&Reativar'
      TabOrder = 13
      OnClick = btnReativarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 417
      Top = 8
      Width = 152
      Height = 25
      DataSource = dsParcelas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimo registro')
      TabOrder = 14
    end
    object btnEtiqueta: TBitBtn
      Left = 576
      Top = 40
      Width = 75
      Height = 25
      Hint = 'Imprime etiqueta do cliente'
      Caption = 'E&tiqueta'
      TabOrder = 15
      OnClick = btnEtiquetaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAA444444444444444A4FFFFFFFFFFFFF4A4F000F000F00
        0F4A4FFFFFFFFFFFFF4A4F000F000F000F4A4FFFFFFFFFFFFF4A4F000F000F00
        0F4A4FFFFFFFFFFFFF4A4F000F000F000F4A4FFFFFFFFFFFFF4A444444444444
        444A4F444F444F444F4A444444444444444AAAAAAAAAAAAAAAAA}
    end
    object btnTransferencia: TBitBtn
      Left = 658
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Tranfer'#234'ncia de cliente'
      Caption = '&Transfer'#234'ncia'
      TabOrder = 16
      OnClick = btnTransferenciaClick
    end
    object btnProtesto: TBitBtn
      Left = 576
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Incluir/Excluir Protesto'
      Caption = 'Protesto'
      TabOrder = 17
      OnClick = btnProtestoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC90D8FC90D8FC90D
        8FC90D8FC90D8FC90D8FC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC967CFF070CCEF2769E036A5E62DAFE328ABE126A9E00D8FC9FF00
        FF021FDCFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC98AE2FB90D9F60C2FD814
        48DE31A7E52DB0E32AACE20C81CB0116E0021FE0FF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC99CEAFFAFE5FA69A9EE1341E01148E52FA0E91E80E30323EB021A
        E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC9A5EFFFC7EFFFB0E9FB70
        C5F41854E90935E90733E70323EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC9A5EEFFCFF2FFC4F0FF97E6FC2870F00323EB0A38EE0C7BCEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC9A5EEFFCEF2FFBFEAFF41
        78F80932EF358AF33388F60323EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC9A5EEFFCEF2FF3E69FA092DF33E92F769E2FE6AE1FE0B76CF0323
        EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC9A5EEFFCEF2FF0A2DF755
        92FA6FE2FE6AE2FE72E7FF0D8FC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC9A5EEFFCEF2FFC5F0FFA0EBFF6FE2FE6AE2FE72E7FF0D8FC9FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC9A7EFFFD5F6FFCFF6FFA9
        F0FF75E6FF6EE5FF74E9FF0D8FC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC9A4EFFFBFEBFAA6E2F480DAF35BD4F460DAF872E7FF0D8FC9FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC95FC6E968C4E664C2E658
        C1E64ABDE540BCE641C1E90D8FC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0D8FC988D7F099E7F793EAFC88EAFE79E6FC6BE0F855D0F20D8FC9FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D8FC90D8FC90D8FC90D
        8FC90D8FC90D8FC90D8FC9FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 544
    Width = 748
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
    Visible = False
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    OnDataChange = dsConsultarDataChange
    Left = 212
    Top = 42
  end
  object datasetConsultar: TSQLDataSet
    CommandText = 
      'select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDC' +
      'LIE, CT.COT_NRSERIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO fro' +
      'm cotas CT'#13#10'INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDC' +
      'LIE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmAdmDados.sqlConn
    Left = 268
    Top = 202
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 316
    Top = 202
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 356
    Top = 202
    object cdsConsultarCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsConsultarCOT_POSICAO: TStringField
      Alignment = taCenter
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultarCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultarCOT_NRSERIE: TStringField
      FieldName = 'COT_NRSERIE'
    end
    object cdsConsultarCLI_CPF: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
  end
  object dsVendaContas: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsVendaContas
    OnStateChange = dsVendaContasStateChange
    OnDataChange = dsVendaContasDataChange
    Left = 272
    Top = 32
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsConsultaCota
    Left = 340
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 340
    Top = 24
    object Cadastro1: TMenuItem
      Caption = '&Cadastros'
      object mnuGruposItem: TMenuItem
        Caption = 'Grupos...'
        OnClick = mnuGruposItemClick
      end
      object mnuClienteItem: TMenuItem
        Caption = '&Clientes...'
        OnClick = mnuClienteItemClick
      end
      object Vendas1: TMenuItem
        Caption = '&Vendas...'
        Enabled = False
      end
      object BaixaParcelas1: TMenuItem
        Caption = '&Baixa Parcelas'
        object mnuCaixaItem: TMenuItem
          Caption = 'Caixa'
          OnClick = mnuCaixaItemClick
        end
      end
    end
    object Parametro1: TMenuItem
      Caption = '&Par'#226'metros'
      Visible = False
      OnClick = Parametro1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AlterarStatuspAtivo1: TMenuItem
      Caption = 'Alterar Status p/ &Ativo...'
      OnClick = AlterarStatuspAtivo1Click
    end
    object pmnAlterarStatusReativadopInativoPagoItem: TMenuItem
      Caption = 'Alterar Status &Reativado p/ Inativo(Pago)'
      OnClick = pmnAlterarStatusReativadopInativoPagoItemClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnuAlterarDiadeVencimentoItem: TMenuItem
      Caption = 'Alterar &Dia de Vencimento'
      OnClick = mnuAlterarDiadeVencimentoItemClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object pmnBaixarSaldoInativoItem: TMenuItem
      Caption = '&Baixar Saldo de Cliente...'
      OnClick = pmnBaixarSaldoInativoItemClick
    end
    object ZerarSaldodoCliente1: TMenuItem
      Caption = '&Zerar Saldo do Cliente...'
      OnClick = ZerarSaldodoCliente1Click
    end
  end
  object ppRepContrato: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbContrato.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 608
    Top = 145
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 267230
      mmPrintPosition = 0
      object txtRazao: TppDBText
        UserName = 'txtRazao'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 10000
        mmTop = 85000
        mmWidth = 174096
        BandType = 4
      end
      object txtCPF: TppDBText
        UserName = 'txtCPF'
        DataField = 'CPF'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 95000
        mmWidth = 42863
        BandType = 4
      end
      object txtIdentidade: TppDBText
        UserName = 'txtIdentidade'
        DataField = 'CLI_NRIDEN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 69850
        mmTop = 95000
        mmWidth = 34925
        BandType = 4
      end
      object txtNacionalidade: TppDBText
        UserName = 'txtNacionalidade'
        DataField = 'CLI_NACIONALIDADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 95000
        mmWidth = 47890
        BandType = 4
      end
      object txtSexo: TppDBText
        UserName = 'txtSexo'
        DataField = 'CLI_SEXO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 105000
        mmWidth = 8467
        BandType = 4
      end
      object txtDataNasc: TppDBText
        UserName = 'txtDataNasc'
        DataField = 'CLI_DTNASCIMENTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 105040
        mmWidth = 21431
        BandType = 4
      end
      object txtProfissao: TppDBText
        UserName = 'txtProfissao'
        DataField = 'CLI_PROFISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 105040
        mmWidth = 31750
        BandType = 4
      end
      object txtEndereco: TppDBText
        UserName = 'txtEndereco'
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 100013
        mmTop = 105000
        mmWidth = 87577
        BandType = 4
      end
      object lbIdentificacao: TppLabel
        UserName = 'lbIdentificacao'
        Caption = 'Coopercarro Ltda.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 14000
        mmTop = 64290
        mmWidth = 42884
        BandType = 4
      end
      object txtEstCivil: TppDBText
        UserName = 'txtEstCivil'
        DataField = 'EST_CIVIL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 95000
        mmWidth = 24871
        BandType = 4
      end
      object txtBairro: TppDBText
        UserName = 'txtBairro'
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 115000
        mmWidth = 35983
        BandType = 4
      end
      object txtCidade: TppDBText
        UserName = 'DBText101'
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 115000
        mmWidth = 32015
        BandType = 4
      end
      object txtUF: TppDBText
        UserName = 'DBText11'
        DataField = 'CLI_UFCLIE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 94721
        mmTop = 115000
        mmWidth = 7673
        BandType = 4
      end
      object txtCep: TppDBText
        UserName = 'DBText12'
        DataField = 'CEP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 115000
        mmWidth = 25929
        BandType = 4
      end
      object txtFone: TppDBText
        UserName = 'DBText13'
        DataField = 'FONE1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 125000
        mmWidth = 23283
        BandType = 4
      end
      object txtEndEmpresa: TppDBText
        UserName = 'DBText14'
        DataField = 'CLI_ENDEMPRESA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 39952
        mmTop = 125000
        mmWidth = 103452
        BandType = 4
      end
      object txtBairroEmp: TppDBText
        UserName = 'DBText15'
        DataField = 'CLI_BAIEMPRESA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 125000
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText16'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 135000
        mmWidth = 17198
        BandType = 4
      end
      object txtUFEmp: TppDBText
        UserName = 'DBText17'
        DataField = 'CLI_UFEMPRESA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 135000
        mmWidth = 17198
        BandType = 4
      end
      object txtCEPEmp: TppDBText
        UserName = 'DBText18'
        DataField = 'CLI_CEPEMPRESA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 136790
        mmTop = 135000
        mmWidth = 17198
        BandType = 4
      end
      object txtFoneEmp: TppDBText
        UserName = 'DBText19'
        DataField = 'FONE_EMP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 135000
        mmWidth = 28310
        BandType = 4
      end
      object lblGrupo: TppLabel
        UserName = 'lblGrupo'
        Caption = 'lblGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13758
        mmTop = 153000
        mmWidth = 20320
        BandType = 4
      end
      object txtCota: TppDBText
        UserName = 'DBText20'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 153000
        mmWidth = 17198
        BandType = 4
      end
      object txtDuracao: TppDBText
        UserName = 'DBText21'
        DataField = 'COT_PLANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 100013
        mmTop = 153000
        mmWidth = 17198
        BandType = 4
      end
      object txtCredito: TppDBText
        UserName = 'DBText22'
        DataField = 'COT_VALCRE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 40481
        mmTop = 173000
        mmWidth = 23019
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsContratoCliente
    UserName = 'DBPipeline1'
    Left = 648
    Top = 145
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRVENDA'
      FieldName = 'COT_NRVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDCLIE'
      FieldName = 'COT_CDCLIE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALACERTO'
      FieldName = 'COT_VALACERTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'COT_FLCONTEMPLADO'
      FieldName = 'COT_FLCONTEMPLADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCOTA'
      FieldName = 'COT_VALCOTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'COT_DTCONTEMPLACAO'
      FieldName = 'COT_DTCONTEMPLACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_ASSEB_CONTEMP'
      FieldName = 'COT_ASSEB_CONTEMP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'CLI_NRFONE'
      FieldName = 'CLI_NRFONE'
      FieldLength = 13
      DisplayWidth = 13
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NUMERO'
      FieldName = 'CLI_NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'CLI_ESTADO_CIVIL'
      FieldName = 'CLI_ESTADO_CIVIL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'CLI_PROFISSAO'
      FieldName = 'CLI_PROFISSAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'CLI_SEXO'
      FieldName = 'CLI_SEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'CLI_NUMCEP'
      FieldName = 'CLI_NUMCEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'CLI_UFCLIE'
      FieldName = 'CLI_UFCLIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'CLI_ENDEMPRESA'
      FieldName = 'CLI_ENDEMPRESA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'CLI_FONEEMPRESA'
      FieldName = 'CLI_FONEEMPRESA'
      FieldLength = 13
      DisplayWidth = 13
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'CLI_BAIEMPRESA'
      FieldName = 'CLI_BAIEMPRESA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'CLI_CEPEMPRESA'
      FieldName = 'CLI_CEPEMPRESA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'CLI_UFEMPRESA'
      FieldName = 'CLI_UFEMPRESA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'CLI_CPF'
      FieldName = 'CLI_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'CLI_NRIDEN'
      FieldName = 'CLI_NRIDEN'
      FieldLength = 11
      DisplayWidth = 11
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'CLI_DTNASCIMENTO'
      FieldName = 'CLI_DTNASCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'CLI_NACIONALIDADE'
      FieldName = 'CLI_NACIONALIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 13
      DisplayWidth = 13
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'FONE_EMP'
      FieldName = 'FONE_EMP'
      FieldLength = 13
      DisplayWidth = 13
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'EST_CIVIL'
      FieldName = 'EST_CIVIL'
      FieldLength = 12
      DisplayWidth = 12
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 9
      DisplayWidth = 9
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'COT_CONTRATO'
      FieldName = 'COT_CONTRATO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 39
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'CPF'
      FieldName = 'CPF'
      FieldLength = 14
      DisplayWidth = 14
      Position = 40
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'CGC'
      FieldName = 'CGC'
      FieldLength = 18
      DisplayWidth = 18
      Position = 41
    end
  end
  object dsContratoCliente: TDataSource
    DataSet = dmPesquisas.cdsContratoCliente
    Left = 640
    Top = 185
  end
  object ppRepExtratoCliente: TppReport
    AutoStop = False
    DataPipeline = ppDBPExtratoCliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 528
    Top = 168
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPExtratoCliente'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 3175
        mmTop = 2381
        mmWidth = 188648
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label1'
        Caption = 'Extrato de Cota de Cons'#243'rcio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 65088
        mmTop = 2910
        mmWidth = 59531
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Grupo: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 11377
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 32279
        mmTop = 11377
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cliente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 59002
        mmTop = 11377
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Status: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 11377
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Parc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 16669
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Data Venc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 16669
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Valor Parc. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 59002
        mmTop = 16669
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 16669
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Data Pagto '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 115623
        mmTop = 16669
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 147109
        mmTop = 16669
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Total Pago '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 16669
        mmWidth = 19050
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 21431
        mmWidth = 197644
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText2'
        DataField = 'REC_NRCOTA'
        DataPipeline = ppDBPExtratoCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4763
        mmLeft = 41010
        mmTop = 11113
        mmWidth = 14552
        BandType = 0
      end
      object lblNomeCliente: TppLabel
        UserName = 'lblNomeCliente'
        Caption = 'lblNomeCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 74348
        mmTop = 11377
        mmWidth = 23813
        BandType = 0
      end
      object lblStatus: TppLabel
        UserName = 'lblStatus'
        Caption = 'lblStatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 11642
        mmWidth = 13494
        BandType = 0
      end
      object lblDescGrupo: TppLabel
        UserName = 'lblDescGrupo'
        Caption = 'lblDescGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 16140
        mmTop = 11377
        mmWidth = 15346
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText25: TppDBText
        UserName = 'DBText1'
        DataField = 'REC_NRPARC'
        DataPipeline = ppDBPExtratoCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 529
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText3'
        DataField = 'REC_DTVENC'
        DataPipeline = ppDBPExtratoCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4022
        mmLeft = 32015
        mmTop = 529
        mmWidth = 18923
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText4'
        DataField = 'REC_TOTAL_CALC'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4022
        mmLeft = 58738
        mmTop = 529
        mmWidth = 19262
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText5'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 3969
        mmLeft = 83873
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText6'
        DataField = 'REC_DTPAGA'
        DataPipeline = ppDBPExtratoCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 3969
        mmLeft = 115623
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText7'
        DataField = 'REC_VLMULT'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText8'
        DataField = 'REC_TOTAL_PAGO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 3969
        mmLeft = 172244
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 7673
        mmWidth = 197644
        BandType = 8
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 8731
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel15: TppLabel
        UserName = 'Label2'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 149225
        mmTop = 13229
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 13229
        mmWidth = 4763
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 162190
        mmTop = 8731
        mmWidth = 32015
        BandType = 8
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 2381
        mmWidth = 19315
        BandType = 8
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'REC_VLMULT'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 2381
        mmWidth = 19315
        BandType = 8
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'REC_TOTAL_PAGO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4233
        mmLeft = 166688
        mmTop = 2381
        mmWidth = 24871
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1323
        mmWidth = 197644
        BandType = 8
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Total da P'#225'gina ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3440
        mmTop = 2381
        mmWidth = 33105
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'REC_TOTAL_PAGO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4191
        mmLeft = 166688
        mmTop = 1323
        mmWidth = 24871
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'REC_VLMULT'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4191
        mmLeft = 137584
        mmTop = 1323
        mmWidth = 19315
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label15'
        Caption = 'TOTAL RECEBIDO ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 3440
        mmTop = 1323
        mmWidth = 38312
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 265
        mmWidth = 197644
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'REC_CREDITO'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 1058
        mmWidth = 19315
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'TOTAL RECEBIDO + CREDITO ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 99219
        mmTop = 8996
        mmWidth = 57785
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataPipeline = ppDBPExtratoCliente
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        OnCalc = ppDBCalc7Calc
        DataPipelineName = 'ppDBPExtratoCliente'
        mmHeight = 4191
        mmLeft = 166688
        mmTop = 8202
        mmWidth = 24871
        BandType = 7
      end
    end
  end
  object ppDBPExtratoCliente: TppDBPipeline
    DataSource = dsParcelas
    UserName = 'DBPExtratoCliente'
    Left = 560
    Top = 168
    object ppDBPExtratoClienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRVEND'
      FieldName = 'REC_NRVEND'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPExtratoClienteppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CDGRUP'
      FieldName = 'REC_CDGRUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPExtratoClienteppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRCOTA'
      FieldName = 'REC_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPExtratoClienteppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_NRPARC'
      FieldName = 'REC_NRPARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPExtratoClienteppField5: TppField
      FieldAlias = 'REC_DTVENC'
      FieldName = 'REC_DTVENC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPExtratoClienteppField6: TppField
      FieldAlias = 'REC_DTPAGA'
      FieldName = 'REC_DTPAGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPExtratoClienteppField7: TppField
      FieldAlias = 'REC_TPCREDITO'
      FieldName = 'REC_TPCREDITO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBPExtratoClienteppField8: TppField
      FieldAlias = 'REC_TPSLIP'
      FieldName = 'REC_TPSLIP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppDBPExtratoClienteppField9: TppField
      FieldAlias = 'REC_PRINTSLIP'
      FieldName = 'REC_PRINTSLIP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBPExtratoClienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_CDGRUPO'
      FieldName = 'COT_CDGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPExtratoClienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_NRCOTA'
      FieldName = 'COT_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPExtratoClienteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_CALC'
      FieldName = 'REC_TOTAL_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPExtratoClienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TAXADM_CALC'
      FieldName = 'REC_TAXADM_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPExtratoClienteppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TXFUND_CALC'
      FieldName = 'REC_TXFUND_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPExtratoClienteppField15: TppField
      FieldAlias = 'REC_FORMABAIXA'
      FieldName = 'REC_FORMABAIXA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBPExtratoClienteppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLPARC'
      FieldName = 'REC_VLPARC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppDBPExtratoClienteppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLMULT'
      FieldName = 'REC_VLMULT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppDBPExtratoClienteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CREDITO'
      FieldName = 'REC_CREDITO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPExtratoClienteppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppDBPExtratoClienteppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppDBPExtratoClienteppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_TOTAL_PAGO'
      FieldName = 'REC_TOTAL_PAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBPExtratoClienteppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CDBANC'
      FieldName = 'REC_CDBANC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPExtratoClienteppField23: TppField
      FieldAlias = 'REC_NOSSONUMERO'
      FieldName = 'REC_NOSSONUMERO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPExtratoClienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPExtratoClienteppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALORTITULOTITULO'
      FieldName = 'REC_VALORTITULOTITULO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object ppDBPExtratoClienteppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALORTARIFABANCO'
      FieldName = 'REC_VALORTARIFABANCO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object ppDBPExtratoClienteppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALORTITULOTITULO_CALC'
      FieldName = 'REC_VALORTITULOTITULO_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPExtratoClienteppField28: TppField
      FieldAlias = 'REC_DTCREDITO'
      FieldName = 'REC_DTCREDITO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 27
    end
  end
  object dsLista: TDataSource
    DataSet = dmPesquisas.cdsListaCotas
    Left = 516
    Top = 136
  end
end
