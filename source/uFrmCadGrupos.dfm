inherited frmCadGrupo: TfrmCadGrupo
  Left = 204
  Top = 128
  Caption = 'Cadastro Grupos'
  ClientHeight = 563
  ClientWidth = 719
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 719
    Height = 544
    inherited TabSheet1: TTabSheet
      inherited pnlBotoes: TPanel
        Top = 475
        Width = 711
        inherited BtAdicionar: TBitBtn
          Left = 7
        end
        inherited BtGravar: TBitBtn
          Left = 382
        end
        inherited BtCancelar: TBitBtn
          Left = 463
        end
        inherited BtSair: TBitBtn
          Left = 566
        end
        object btnIniciar: TBitBtn
          Left = 267
          Top = 8
          Width = 91
          Height = 25
          Caption = 'Iniciar Grupo'
          TabOrder = 6
          OnClick = btnIniciarClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 447
        Height = 312
        Align = alClient
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 10
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object Label2: TLabel
          Left = 16
          Top = 49
          Width = 60
          Height = 13
          Caption = 'Nome Grupo'
          Transparent = True
        end
        object Label3: TLabel
          Left = 145
          Top = 49
          Width = 49
          Height = 13
          Caption = 'N'#186'. Meses'
          Transparent = True
        end
        object Label4: TLabel
          Left = 231
          Top = 49
          Width = 51
          Height = 13
          Caption = 'Data Inicio'
          Transparent = True
        end
        object Label5: TLabel
          Left = 16
          Top = 89
          Width = 72
          Height = 13
          Caption = 'Dia Assembl'#233'ia'
          Transparent = True
        end
        object Label6: TLabel
          Left = 145
          Top = 89
          Width = 89
          Height = 13
          Caption = 'M'#234's 1'#170' Assembl'#233'ia'
          Transparent = True
        end
        object DBText1: TDBText
          Left = 16
          Top = 25
          Width = 79
          Height = 22
          AutoSize = True
          Color = clBtnFace
          DataField = 'GRU_CODIGO'
          DataSource = dsGrupos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 275
          Width = 82
          Height = 13
          Caption = 'N'#186'. Participantes '
        end
        object Label10: TLabel
          Left = 16
          Top = 207
          Width = 77
          Height = 13
          Caption = 'Lance Minimo %'
          FocusControl = DBEdit2
        end
        object cbxMulti: TCheckBox
          Left = 16
          Top = 135
          Width = 120
          Height = 17
          Caption = 'Multi-Contempla'#231#245'es'
          TabOrder = 0
        end
        object cbxCorrigido: TCheckBox
          Left = 144
          Top = 135
          Width = 77
          Height = 17
          Caption = 'Corrigido'
          TabOrder = 1
        end
        object cbxTarifas: TCheckBox
          Left = 231
          Top = 135
          Width = 113
          Height = 17
          Caption = 'Tarifa Bancarias'
          TabOrder = 2
        end
        object dbeDescricao: TDBEdit
          Left = 16
          Top = 64
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GRU_DESCRICAO'
          DataSource = dsGrupos
          TabOrder = 3
          OnExit = dbeDescricaoExit
        end
        object dbeNRMESES: TDBEdit
          Left = 144
          Top = 64
          Width = 79
          Height = 21
          DataField = 'GRU_NRMESES'
          DataSource = dsGrupos
          MaxLength = 3
          TabOrder = 4
        end
        object dbeDTInicio: TDBDateEdit
          Left = 231
          Top = 64
          Width = 121
          Height = 21
          DataField = 'GRU_DTINICIO'
          DataSource = dsGrupos
          ReadOnly = True
          NumGlyphs = 2
          TabOrder = 5
          OnExit = dbeDTInicioExit
        end
        object dbeDia: TDBEdit
          Left = 16
          Top = 104
          Width = 121
          Height = 21
          DataField = 'GRU_DIAASS'
          DataSource = dsGrupos
          MaxLength = 2
          TabOrder = 6
          OnExit = dbeDiaExit
        end
        object DBEdit1: TDBEdit
          Left = 144
          Top = 104
          Width = 79
          Height = 21
          DataField = 'GRU_MES1ASS'
          DataSource = dsGrupos
          TabOrder = 7
        end
        object GroupBox5: TGroupBox
          Left = 7
          Top = 155
          Width = 417
          Height = 47
          TabOrder = 8
          object Label8: TLabel
            Left = 152
            Top = 6
            Width = 119
            Height = 13
            Caption = 'Lance Minimo Limitado %'
            FocusControl = dbeMinimo
          end
          object Label9: TLabel
            Left = 280
            Top = 6
            Width = 122
            Height = 13
            Caption = 'Lance M'#225'ximo Limitado %'
            FocusControl = dbeMaximo
          end
          object cbxSortLimi: TCheckBox
            Left = 8
            Top = 21
            Width = 137
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Lance Limitado'
            TabOrder = 0
          end
          object dbeMinimo: TDBEdit
            Left = 152
            Top = 20
            Width = 121
            Height = 21
            DataField = 'GRU_LIMITEMININO'
            DataSource = dsGrupos
            MaxLength = 5
            TabOrder = 1
            OnExit = dbeMinimoExit
          end
          object dbeMaximo: TDBEdit
            Left = 280
            Top = 20
            Width = 121
            Height = 21
            DataField = 'GRU_LIMITEMAXIMO'
            DataSource = dsGrupos
            MaxLength = 5
            TabOrder = 2
            OnExit = dbeMaximoExit
          end
        end
        object dbeNRPART: TDBEdit
          Left = 91
          Top = 270
          Width = 100
          Height = 21
          TabStop = False
          DataField = 'GRU_PARTICIP'
          DataSource = dsGrupos
          ReadOnly = True
          TabOrder = 9
        end
        object cbxIniciou: TCheckBox
          Left = 208
          Top = 271
          Width = 97
          Height = 17
          Caption = 'Iniciou'
          Enabled = False
          TabOrder = 10
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 223
          Width = 113
          Height = 21
          DataField = 'GRU_LANCE_MINIMO'
          DataSource = dsGrupos
          TabOrder = 11
        end
      end
      object GroupBox2: TGroupBox
        Left = 447
        Top = 0
        Width = 264
        Height = 312
        Align = alRight
        Caption = '[ Assembleias Mult-Contempladas ]'
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 15
          Width = 260
          Height = 25
          DataSource = dsMult
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 40
          Width = 260
          Height = 270
          Align = alClient
          DataSource = dsMult
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'GPA_NRASSE'
              Title.Caption = 'Assembl'#233'ia'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GPA_NRCONT'
              Title.Caption = 'N'#186'.Contemp.'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GPA_CONT_LANC'
              Title.Caption = 'Quant.Lanc'
              Width = 76
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 350
        Width = 711
        Height = 125
        Align = alBottom
        Caption = '[ Cotas do Grupo ]'
        TabOrder = 3
        object dbGridCotasGrupo: TDBGrid
          Left = 2
          Top = 15
          Width = 707
          Height = 108
          Align = alClient
          DataSource = dsCotasGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COT_NRCOTA'
              Title.Caption = 'Cota'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_NOME'
              Title.Caption = 'Nome Cliente'
              Width = 288
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'COT_POSICAO'
              Title.Caption = 'Posi'#231#227'o'
              Visible = True
            end>
        end
      end
      object pnlProg: TPanel
        Left = 0
        Top = 312
        Width = 711
        Height = 38
        Align = alBottom
        TabOrder = 4
        object lblStatus: TLabel
          Left = 536
          Top = 10
          Width = 26
          Height = 13
          Caption = '0 %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ProgressBar1: TProgressBar
          Left = 184
          Top = 10
          Width = 321
          Height = 17
          TabOrder = 0
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 711
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 677
        Height = 443
      end
      inherited grdConsultar: TDBGrid
        Width = 677
        Height = 443
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'GRU_CODIGO'
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
            FieldName = 'GRU_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 452
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 544
    Width = 719
    Panels = <
      item
        Style = psOwnerDraw
        Width = 300
      end
      item
        Width = 50
      end>
    OnDrawPanel = StatusBar1DrawPanel
  end
  inherited dsConsultar: TDataSource
    Left = 428
    Top = 178
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select GRU_CODIGO, GRU_DESCRICAO from grupos order by GRU_DESCRI' +
      'CAO'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
    Left = 508
    Top = 178
    object datasetConsultarGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object datasetConsultarGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  inherited dspConsultar: TDataSetProvider
    Left = 564
    Top = 178
  end
  inherited cdsConsultar: TClientDataSet
    Left = 612
    Top = 178
    object cdsConsultarGRU_CODIGO: TIntegerField
      FieldName = 'GRU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsGrupos
    OnStateChange = dsGruposStateChange
    Left = 344
    Top = 56
  end
  object dsCotasGrupo: TDataSource
    AutoEdit = False
    DataSet = dmPesquisas.cdsCotasGrupo
    Left = 344
    Top = 288
  end
  object dsMult: TDataSource
    DataSet = dmAdmDados.cdsMultiContemGrupo
    Left = 499
    Top = 120
  end
end
