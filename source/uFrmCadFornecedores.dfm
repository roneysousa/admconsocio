inherited frmCadFornecedores: TfrmCadFornecedores
  Left = 207
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 518
  ClientWidth = 599
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 599
    Height = 499
    inherited TabSheet1: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 13
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object DBText1: TDBText [1]
        Left = 16
        Top = 27
        Width = 79
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'FOR_CODIGO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 55
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = dbeRazao
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 95
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
        FocusControl = dbeNome
        Transparent = True
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 136
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = dbeCNPJ
        Transparent = True
      end
      object Label5: TLabel [5]
        Left = 207
        Top = 136
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = dbeInscricao
        Transparent = True
      end
      object Label6: TLabel [6]
        Left = 16
        Top = 176
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit5
        Transparent = True
      end
      object Label7: TLabel [7]
        Left = 434
        Top = 175
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit6
        Transparent = True
      end
      object Label8: TLabel [8]
        Left = 16
        Top = 216
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit7
        Transparent = True
      end
      object Label9: TLabel [9]
        Left = 95
        Top = 216
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit8
        Transparent = True
      end
      object Label10: TLabel [10]
        Left = 279
        Top = 216
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit9
        Transparent = True
      end
      object Label12: TLabel [11]
        Left = 464
        Top = 216
        Width = 14
        Height = 13
        Caption = 'UF'
        Transparent = True
      end
      object Label11: TLabel [12]
        Left = 16
        Top = 256
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit10
        Transparent = True
      end
      object Label13: TLabel [13]
        Left = 123
        Top = 256
        Width = 17
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit11
        Transparent = True
      end
      object Label14: TLabel [14]
        Left = 16
        Top = 296
        Width = 83
        Height = 13
        Caption = 'Nome do Contato'
        FocusControl = DBEdit12
        Transparent = True
      end
      object Label15: TLabel [15]
        Left = 237
        Top = 296
        Width = 83
        Height = 13
        Caption = 'Cargo do Contato'
        FocusControl = DBEdit13
        Transparent = True
      end
      object Label16: TLabel [16]
        Left = 413
        Top = 296
        Width = 24
        Height = 13
        Caption = 'Fone'
        FocusControl = DBEdit14
        Transparent = True
      end
      object Label17: TLabel [17]
        Left = 16
        Top = 336
        Width = 18
        Height = 13
        Caption = 'Site'
        FocusControl = DBEdit15
        Transparent = True
      end
      object Label18: TLabel [18]
        Left = 16
        Top = 376
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit16
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 430
        Width = 591
        inherited BtGravar: TBitBtn
          Left = 260
        end
        inherited BtCancelar: TBitBtn
          Left = 341
        end
        inherited BtSair: TBitBtn
          Left = 438
        end
      end
      object dbeRazao: TDBEdit
        Left = 16
        Top = 71
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_RAZAO'
        DataSource = dsCadastro
        TabOrder = 1
        OnExit = dbeRazaoExit
      end
      object dbeNome: TDBEdit
        Left = 16
        Top = 111
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_FANTASIA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object dbeCNPJ: TDBEdit
        Left = 16
        Top = 152
        Width = 186
        Height = 21
        DataField = 'FOR_CNPJ'
        DataSource = dsCadastro
        TabOrder = 3
        OnExit = dbeCNPJExit
      end
      object dbeInscricao: TDBEdit
        Left = 207
        Top = 152
        Width = 186
        Height = 21
        DataField = 'FOR_INSCESTADUAL'
        DataSource = dsCadastro
        TabOrder = 4
        OnKeyPress = dbeInscricaoKeyPress
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 192
        Width = 414
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 434
        Top = 191
        Width = 80
        Height = 21
        DataField = 'FOR_NUMERO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 232
        Width = 75
        Height = 21
        DataField = 'FOR_CEP'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 95
        Top = 232
        Width = 180
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_BAIRRO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 279
        Top = 232
        Width = 180
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_CIDADE'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object cmbUF: TDBComboBox
        Left = 464
        Top = 232
        Width = 49
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        DataField = 'FOR_UF'
        DataSource = dsCadastro
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
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 272
        Width = 100
        Height = 21
        DataField = 'FOR_FONE1'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 123
        Top = 272
        Width = 100
        Height = 21
        DataField = 'FOR_FAX'
        DataSource = dsCadastro
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 312
        Width = 214
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_CONTATO1'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object DBEdit13: TDBEdit
        Left = 237
        Top = 312
        Width = 171
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_CARGO1'
        DataSource = dsCadastro
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 413
        Top = 312
        Width = 100
        Height = 21
        DataField = 'FOR_FONECON1'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object DBEdit15: TDBEdit
        Left = 16
        Top = 352
        Width = 500
        Height = 21
        CharCase = ecLowerCase
        DataField = 'FOR_SITE'
        DataSource = dsCadastro
        TabOrder = 16
      end
      object DBEdit16: TDBEdit
        Left = 16
        Top = 392
        Width = 500
        Height = 21
        CharCase = ecLowerCase
        DataField = 'FOR_EMAIL'
        DataSource = dsCadastro
        TabOrder = 17
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 591
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 557
        Height = 398
      end
      inherited grdConsultar: TDBGrid
        Width = 557
        Height = 398
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FANTASIA'
            Title.Caption = 'Nome Fantasia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 499
    Width = 599
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select FOR_CODIGO, FOR_FANTASIA, FOR_RAZAO from FORNECEDORES'
    MaxBlobSize = -1
    SQLConnection = dmAdmDados.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Required = True
      Size = 50
    end
    object cdsConsultarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Required = True
      Size = 50
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmAdmDados.cdsFornecedor
    Top = 64
  end
end
