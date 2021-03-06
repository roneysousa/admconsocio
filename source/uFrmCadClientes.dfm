inherited frmCadClientes: TfrmCadClientes
  Left = 184
  Top = 137
  Caption = 'Cadastro de Clientes'
  ClientHeight = 474
  ClientWidth = 758
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 758
    Height = 455
    inherited TabSheet1: TTabSheet
      inherited pnlBotoes: TPanel
        Top = 386
        Width = 750
        inherited BtSair: TBitBtn
          Left = 598
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 448
        Height = 386
        Align = alClient
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 13
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 88
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 128
          Width = 27
          Height = 13
          Caption = 'Bairro'
          Transparent = True
        end
        object Label5: TLabel
          Left = 239
          Top = 128
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Transparent = True
        end
        object Label6: TLabel
          Left = 16
          Top = 165
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label7: TLabel
          Left = 69
          Top = 165
          Width = 21
          Height = 13
          Caption = 'CEP'
          Transparent = True
        end
        object Label8: TLabel
          Left = 145
          Top = 165
          Width = 24
          Height = 13
          Caption = 'Fone'
          Transparent = True
        end
        object Label9: TLabel
          Left = 239
          Top = 165
          Width = 32
          Height = 13
          Caption = 'Celular'
          Transparent = True
        end
        object Label10: TLabel
          Left = 16
          Top = 202
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label11: TLabel
          Left = 17
          Top = 240
          Width = 50
          Height = 13
          Caption = 'Identidade'
          Transparent = True
        end
        object Label12: TLabel
          Left = 146
          Top = 241
          Width = 82
          Height = 13
          Caption = 'Data Nascimento'
          Transparent = True
        end
        object Label13: TLabel
          Left = 16
          Top = 279
          Width = 43
          Height = 13
          Caption = 'Profiss'#227'o'
          Transparent = True
        end
        object DBText1: TDBText
          Left = 16
          Top = 27
          Width = 79
          Height = 22
          AutoSize = True
          Color = clBtnFace
          DataField = 'CLI_CODIGO'
          DataSource = dsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 145
          Top = 202
          Width = 22
          Height = 13
          Caption = 'CGC'
        end
        object Label15: TLabel
          Left = 274
          Top = 241
          Width = 42
          Height = 13
          Caption = 'N'#186'.Placa'
          FocusControl = dbeNRPLAC
          Visible = False
        end
        object dbeNome: TDBEdit
          Left = 16
          Top = 64
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NOME'
          DataSource = dsClientes
          TabOrder = 0
        end
        object dbeEndereco: TDBEdit
          Left = 16
          Top = 104
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENDERECO'
          DataSource = dsClientes
          TabOrder = 1
        end
        object dbeBairro: TDBEdit
          Left = 16
          Top = 144
          Width = 216
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIRRO'
          DataSource = dsClientes
          TabOrder = 2
        end
        object dbeCidade: TDBEdit
          Left = 239
          Top = 143
          Width = 176
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CIDADE'
          DataSource = dsClientes
          TabOrder = 3
        end
        object cmbUF: TDBComboBox
          Left = 16
          Top = 179
          Width = 49
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'CLI_UFCLIE'
          DataSource = dsClientes
          ItemHeight = 16
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
            'PB'
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
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 69
          Top = 179
          Width = 69
          Height = 21
          DataField = 'CLI_NUMCEP'
          DataSource = dsClientes
          TabOrder = 5
        end
        object dbeFone: TDBEdit
          Left = 145
          Top = 179
          Width = 88
          Height = 21
          DataField = 'CLI_NRFONE'
          DataSource = dsClientes
          TabOrder = 6
        end
        object dbeCelular: TDBEdit
          Left = 239
          Top = 179
          Width = 92
          Height = 21
          DataField = 'CLI_NRCELULAR'
          DataSource = dsClientes
          TabOrder = 7
        end
        object dbeCPF: TDBEdit
          Left = 16
          Top = 216
          Width = 122
          Height = 21
          DataField = 'CLI_CPF'
          DataSource = dsClientes
          TabOrder = 8
          OnExit = dbeCPFExit
        end
        object dbeNRCNPJ: TDBEdit
          Left = 145
          Top = 216
          Width = 186
          Height = 21
          DataField = 'CLI_CGC'
          DataSource = dsClientes
          TabOrder = 9
          OnExit = dbeNRCNPJExit
        end
        object dbeIdentidade: TDBEdit
          Left = 16
          Top = 256
          Width = 122
          Height = 21
          DataField = 'CLI_NRIDEN'
          DataSource = dsClientes
          TabOrder = 10
          OnExit = dbeIdentidadeExit
          OnKeyPress = dbeIdentidadeKeyPress
        end
        object dbeDTNASC: TDBDateEdit
          Left = 146
          Top = 256
          Width = 121
          Height = 21
          DataField = 'CLI_DTNASCIMENTO'
          DataSource = dsClientes
          NumGlyphs = 2
          TabOrder = 11
          OnExit = dbeDTNASCExit
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 296
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PROFISSAO'
          DataSource = dsClientes
          TabOrder = 13
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 248
          Top = 280
          Width = 185
          Height = 100
          Caption = '[ Estado Civil ]'
          DataField = 'CLI_ESTADO_CIVIL'
          DataSource = dsClientes
          Items.Strings = (
            'C&asado(a)'
            '&Solteiro(a)'
            '&Divorciado(a)'
            '&Vi'#250'vo(a)')
          TabOrder = 14
          Values.Strings = (
            'C'
            'S'
            'D'
            'V')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 16
          Top = 326
          Width = 185
          Height = 52
          Caption = '[ Sexo ]'
          DataField = 'CLI_SEXO'
          DataSource = dsClientes
          Items.Strings = (
            '&Masculino'
            '&Feminino')
          TabOrder = 15
          Values.Strings = (
            'M'
            'F')
        end
        object dbeNRPLAC: TDBEdit
          Left = 274
          Top = 256
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NRPLACA'
          DataSource = dsClientes
          TabOrder = 12
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 448
        Top = 0
        Width = 302
        Height = 386
        Align = alRight
        TabOrder = 2
        object Label16: TLabel
          Left = 6
          Top = 44
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 88
          Width = 298
          Height = 168
          Align = alBottom
          Caption = '[ Cotas de Grupo do Cliente ]'
          TabOrder = 0
          object dbgCotas: TDBGrid
            Left = 2
            Top = 40
            Width = 294
            Height = 126
            Align = alClient
            DataSource = dmAdmDados.dsCotasCliente
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
                FieldName = 'COT_CDGRUPO'
                Title.Caption = 'C'#243'd.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GRU_DESCRICAO'
                Title.Caption = 'Grupo'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COT_NRCOTA'
                Title.Alignment = taCenter
                Title.Caption = 'Cota'
                Width = 42
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'COT_POSICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Status'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COT_FLUXO'
                Title.Caption = 'Contemp.'
                Visible = True
              end>
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 15
            Width = 294
            Height = 25
            DataSource = dmAdmDados.dsCotasCliente
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alTop
            Hints.Strings = (
              'Primeiro registro'
              'Registro anterior'
              'Pr'#243'ximo registro'
              #218'ltimo registro')
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 256
          Width = 298
          Height = 128
          Align = alBottom
          Caption = '[ Cotas de Grupos de Avalisada ]'
          TabOrder = 1
          object dbgridAvalistas: TDBGrid
            Left = 2
            Top = 15
            Width = 294
            Height = 111
            Align = alClient
            DataSource = dsAvalista
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
                FieldName = 'COT_CDGRUPO'
                Title.Caption = 'C'#243'd.Grupo'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COT_NRCOTA'
                Title.Caption = 'Cota'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COT_POSICAO'
                Title.Caption = 'Status'
                Visible = True
              end>
          end
        end
        object edtBusca: TEdit
          Left = 6
          Top = 60
          Width = 290
          Height = 19
          Hint = 'Informe o valor para consultar'
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 59
          ParentCtl3D = False
          TabOrder = 2
          OnChange = edtBuscaChange
        end
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 15
          Width = 298
          Height = 25
          DataSource = dsConsultar
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 3
          OnClick = DBNavigator2Click
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 750
        Height = 62
        inherited lblConsultar: TLabel
          Left = 234
          Top = 11
        end
        inherited rgConsultar: TRadioGroup
          Left = 8
          Width = 220
          Height = 54
          Columns = 3
          Items.Strings = (
            '&C'#243'digo'
            '&Nome'
            'C.&P.F.'
            'C.&G.C.'
            '&Telefone')
        end
        inherited edtConsultar: TEdit
          Left = 233
          Top = 27
          Width = 364
        end
        inherited btnConsultar: TBitBtn
          Left = 608
          Top = 22
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 716
        Top = 62
        Height = 242
      end
      inherited grdConsultar: TDBGrid
        Top = 62
        Width = 716
        Height = 242
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 259
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CPF'
            Title.Caption = 'CPF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CGC'
            Title.Caption = 'CGC'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NRFONE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Telefone'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NRCELULAR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Celular'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CLI_NRPLACA'
            Title.Caption = 'N'#186'.Placa'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = False
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
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_POSICAO'
            Title.Alignment = taCenter
            Title.Caption = 'ST'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 304
        Width = 750
        Height = 123
        Align = alBottom
        DataSource = dmAdmDados.dsCotasCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COT_CDGRUPO'
            Title.Caption = 'C'#243'd.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRU_DESCRICAO'
            Title.Caption = 'Grupo'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_NRCOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cota'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_POSICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 43
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COT_FLUXO'
            Title.Caption = 'Contemp.'
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 455
    Width = 758
  end
  inherited dsConsultar: TDataSource
    Left = 356
    Top = 114
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select CL.CLI_CODIGO, CL.CLI_NOME, CL.CLI_CGC, CL.CLI_CPF, CL.CL' +
      'I_NRFONE, CL.CLI_NRCELULAR, CL.CLI_NRPLACA from clientes CL orde' +
      'r by CL.CLI_NOME'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
    Left = 388
    Top = 114
  end
  inherited dspConsultar: TDataSetProvider
    Left = 468
    Top = 114
  end
  inherited cdsConsultar: TClientDataSet
    Left = 540
    Top = 114
    object cdsConsultarCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsConsultarCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0'
      Size = 14
    end
    object cdsConsultarCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object cdsConsultarCLI_NRFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NRFONE'
      EditMask = '(99) 9999-9999;0;_'
      Size = 13
    end
    object cdsConsultarCLI_NRPLACA: TStringField
      FieldName = 'CLI_NRPLACA'
      EditMask = 'AAA-####;1;_'
      Size = 8
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsClientes
    Left = 408
    Top = 64
  end
  object dsAvalista: TDataSource
    AutoEdit = False
    DataSet = dmAdmDados.cdsAvalistas
    Left = 546
    Top = 297
  end
end
