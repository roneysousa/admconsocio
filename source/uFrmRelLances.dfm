inherited frmModRelLance: TfrmModRelLance
  Left = 202
  Top = 158
  Caption = 'Sele'#231#227'o de Grupo e Assembl'#233'ia para impress'#227'o de Resultado'
  ClientHeight = 176
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 135
    object Label3: TLabel
      Left = 14
      Top = 13
      Width = 29
      Height = 13
      Caption = 'Grupo'
      Transparent = True
    end
    object Label6: TLabel
      Left = 14
      Top = 52
      Width = 53
      Height = 13
      Caption = 'Assembl'#233'ia'
      Transparent = True
    end
    object spLocalizarGrupo: TSpeedButton
      Left = 106
      Top = 27
      Width = 23
      Height = 22
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
      OnClick = spLocalizarGrupoClick
    end
    object lblGrupo: TLabel
      Left = 133
      Top = 32
      Width = 13
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCDGrupo: TEdit
      Left = 14
      Top = 29
      Width = 90
      Height = 21
      Hint = 'Digite o c'#243'digo do grupo'
      CharCase = ecUpperCase
      Ctl3D = True
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edtCDGrupoChange
      OnExit = edtCDGrupoExit
      OnKeyPress = edtCDGrupoKeyPress
    end
    object edtNRASSE: TEdit
      Left = 14
      Top = 68
      Width = 90
      Height = 21
      Hint = 'Informe o n'#250'mero da assembl'#233'ia'
      CharCase = ecUpperCase
      Ctl3D = True
      MaxLength = 7
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = edtNRASSEKeyPress
    end
    object rbLimitados: TRadioGroup
      Left = 225
      Top = 18
      Width = 137
      Height = 69
      Caption = '[ Para Grupos Limitados ]'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Livres'
        'Limitados')
      TabOrder = 2
    end
  end
  inherited pnlBotoes: TPanel
    Top = 135
    inherited btnVisualizar: TBitBtn
      OnClick = btnVisualizarClick
    end
  end
  object dstLancesGrupo: TSQLDataSet
    SchemaName = 'root'
    CommandText = 
      'Select L.*, CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_CDCLIE, CT.CO' +
      'T_NRCOTA,'#13#10'CT.COT_PLANO, CT.COT_POSICAO, '#13#10'CT.COT_VALCRE,  CT. C' +
      'OT_VALCOTA, CT.COT_TAXA_ADM, '#13#10'CT.COT_FUNDORES,'#13#10'CL.CLI_NOME fro' +
      'm lances L'#13#10'INNER JOIN cotas CT on L.LAN_NRVEND = CT.COT_NRVENDA' +
      #13#10'INNER JOIN clientes CL on CL.CLI_CODIGO = CT.COT_CDCLIE'#13#10'Where' +
      ' (L.lan_cdgrup = :pCDGRUP) and (L.LAN_NRASSEMBLEIA = :pNRASSE)'#13#10 +
      'order by L.LAN_PELANC Desc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRASSE'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 8
    Top = 96
  end
  object dspLancesGrupo: TDataSetProvider
    DataSet = dstLancesGrupo
    Options = [poAllowCommandText]
    Left = 48
    Top = 96
  end
  object cdsLancesGrupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDGRUP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRASSE'
        ParamType = ptInput
      end>
    ProviderName = 'dspLancesGrupo'
    OnCalcFields = cdsLancesGrupoCalcFields
    Left = 88
    Top = 96
    object cdsLancesGrupoCOT_NRVENDA: TIntegerField
      FieldName = 'COT_NRVENDA'
      Required = True
      DisplayFormat = '0000000'
      EditFormat = '0000000'
    end
    object cdsLancesGrupoCOT_CDGRUPO: TIntegerField
      FieldName = 'COT_CDGRUPO'
      Required = True
    end
    object cdsLancesGrupoCOT_NRCOTA: TIntegerField
      FieldName = 'COT_NRCOTA'
      Required = True
    end
    object cdsLancesGrupoCOT_CDCLIE: TIntegerField
      FieldName = 'COT_CDCLIE'
      Required = True
    end
    object cdsLancesGrupoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 60
    end
    object cdsLancesGrupoLAN_SEQUENCIA: TIntegerField
      FieldName = 'LAN_SEQUENCIA'
      Required = True
    end
    object cdsLancesGrupoLAN_CDGRUP: TIntegerField
      FieldName = 'LAN_CDGRUP'
      Required = True
    end
    object cdsLancesGrupoLAN_NRCOTA: TIntegerField
      FieldName = 'LAN_NRCOTA'
      Required = True
    end
    object cdsLancesGrupoLAN_NRVEND: TIntegerField
      FieldName = 'LAN_NRVEND'
      Required = True
    end
    object cdsLancesGrupoLAN_NRASSEMBLEIA: TIntegerField
      FieldName = 'LAN_NRASSEMBLEIA'
    end
    object cdsLancesGrupoLAN_TIPO: TStringField
      FieldName = 'LAN_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsLancesGrupoLAN_DTMOVI: TDateField
      FieldName = 'LAN_DTMOVI'
    end
    object cdsLancesGrupoCOT_TOTAL_CREDITO_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COT_TOTAL_CREDITO_CALC'
      Calculated = True
    end
    object cdsLancesGrupoCOT_PLANO: TIntegerField
      FieldName = 'COT_PLANO'
    end
    object cdsLancesGrupoCOT_POSICAO: TStringField
      FieldName = 'COT_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsLancesGrupoLAN_NRPARC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LAN_NRPARC'
      Calculated = True
    end
    object cdsLancesGrupoCOT_VALCOTA_CALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COT_VALCOTA_CALC'
      Calculated = True
    end
    object cdsLancesGrupoLAN_VALOR: TFMTBCDField
      FieldName = 'LAN_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesGrupoLAN_PELANC: TFMTBCDField
      FieldName = 'LAN_PELANC'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesGrupoCOT_VALCRE: TFMTBCDField
      FieldName = 'COT_VALCRE'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesGrupoCOT_VALCOTA: TFMTBCDField
      FieldName = 'COT_VALCOTA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesGrupoCOT_TAXA_ADM: TFMTBCDField
      FieldName = 'COT_TAXA_ADM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsLancesGrupoCOT_FUNDORES: TFMTBCDField
      FieldName = 'COT_FUNDORES'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
  end
  object dsLances: TDataSource
    DataSet = cdsLancesGrupo
    Left = 128
    Top = 96
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsLances
    UserName = 'DBPipeline1'
    Left = 288
    Top = 88
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
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_SEQUENCIA'
      FieldName = 'LAN_SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_CDGRUP'
      FieldName = 'LAN_CDGRUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_NRCOTA'
      FieldName = 'LAN_NRCOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_NRVEND'
      FieldName = 'LAN_NRVEND'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_NRASSEMBLEIA'
      FieldName = 'LAN_NRASSEMBLEIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'LAN_TIPO'
      FieldName = 'LAN_TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'LAN_DTMOVI'
      FieldName = 'LAN_DTMOVI'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TOTAL_CREDITO_CALC'
      FieldName = 'COT_TOTAL_CREDITO_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_PLANO'
      FieldName = 'COT_PLANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'COT_POSICAO'
      FieldName = 'COT_POSICAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_NRPARC'
      FieldName = 'LAN_NRPARC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCOTA_CALC'
      FieldName = 'COT_VALCOTA_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_VALOR'
      FieldName = 'LAN_VALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'LAN_PELANC'
      FieldName = 'LAN_PELANC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCRE'
      FieldName = 'COT_VALCRE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_VALCOTA'
      FieldName = 'COT_VALCOTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_TAXA_ADM'
      FieldName = 'COT_TAXA_ADM'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COT_FUNDORES'
      FieldName = 'COT_FUNDORES'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
  end
  object ppReport1: TppReport
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
    Template.FileName = 'C:\Empresa\AdmConsocio\Firebird\Relatorios\rbLancesGrupo2.rtm'
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
    Left = 232
    Top = 88
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 59267
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 188648
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Demonstrativo de Lance Grupo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2646
        mmTop = 41804
        mmWidth = 54610
        BandType = 0
      end
      object lblNomeGrupo: TppLabel
        UserName = 'lblNomeGrupo'
        Caption = 'lblNomeGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 58208
        mmTop = 41804
        mmWidth = 22691
        BandType = 0
      end
      object lblNumAssem: TppLabel
        UserName = 'lblNumAssem'
        Caption = 'Assembl'#233'ia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 83873
        mmTop = 41804
        mmWidth = 20574
        BandType = 0
      end
      object lblNrAssembleia: TppLabel
        UserName = 'lblNMGrupo1'
        Caption = 'lblNMGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 105569
        mmTop = 41804
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label4'
        Caption = 'Plano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 53446
        mmTop = 48419
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 48419
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 48419
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label5'
        Caption = 'Nome Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 48419
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label8'
        Caption = 'Valor Cota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 174890
        mmTop = 48419
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label9'
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 14552
        mmTop = 53446
        mmWidth = 11303
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label10'
        Caption = 'Cr'#233'dito Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33338
        mmTop = 53446
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        Caption = 'Valor Lance '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 53711
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label12'
        Caption = '% do Cr'#233'dito '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 112713
        mmTop = 53446
        mmWidth = 21251
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label13'
        Caption = 'Nr.Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 173186
        mmTop = 53446
        mmWidth = 18373
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 58208
        mmWidth = 197909
        BandType = 0
      end
      object lblLimitados: TppLabel
        UserName = 'lblLimitados'
        Caption = 'lblLimitados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 41804
        mmWidth = 28046
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COT_NRVENDA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'COT_TOTAL_CREDITO_CALC'
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
        mmHeight = 3969
        mmLeft = 33338
        mmTop = 5027
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        mmHeight = 3969
        mmLeft = 14552
        mmTop = 5027
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'COT_PLANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 53446
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'COT_NRCOTA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 529
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 529
        mmWidth = 93134
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'COT_VALCOTA_CALC'
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
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'LAN_NRPARC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 156104
        mmTop = 5027
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'LAN_VALOR'
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
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 5292
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'LAN_PELANC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 112713
        mmTop = 5027
        mmWidth = 17198
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 9525
        mmWidth = 197909
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 178065
        mmTop = 5027
        mmWidth = 13674
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 130704
        mmTop = 5027
        mmWidth = 3090
        BandType = 4
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4191
        mmLeft = 3704
        mmTop = 529
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = #186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 8467
        mmTop = 529
        mmWidth = 1270
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Lance:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 62177
        mmTop = 5292
        mmWidth = 11345
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1588
        mmWidth = 197644
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
        mmTop = 2910
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel2: TppLabel
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
        mmTop = 7408
        mmWidth = 11906
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
        mmTop = 2910
        mmWidth = 16933
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
        mmTop = 7408
        mmWidth = 4763
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label14'
        Caption = 'Total de Lances:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 27813
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
    end
  end
end
