inherited FrmRelTotalRecGrupo: TFrmRelTotalRecGrupo
  Left = 336
  Top = 222
  Caption = 'Total Recebido por Grupo'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 19
      Top = 21
      Width = 38
      Height = 13
      Caption = '&Per'#237'odo'
      FocusControl = edtDTINIC
      Transparent = True
    end
    object Label2: TLabel
      Left = 143
      Top = 42
      Width = 6
      Height = 13
      Caption = #224
      Transparent = True
    end
    object edtDTINIC: TDateEdit
      Left = 19
      Top = 37
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edtDTINICExit
      OnKeyPress = edtDTINICKeyPress
    end
    object edtDTFINA: TDateEdit
      Left = 155
      Top = 37
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTFINAExit
      OnKeyPress = edtDTFINAKeyPress
    end
  end
  inherited pnlBotoes: TPanel
    inherited btnVisualizar: TBitBtn
      OnClick = btnVisualizarClick
    end
  end
  object dstConsulta: TSQLDataSet
    CommandText = 
      'Select P.REC_CDGRUP, G.GRU_DESCRICAO, SUM(P.REC_VLPARC) as Valor' +
      'Parcela, SUM(P.REC_TOTAL_PAGO) as TotalPago,'#13#10'SUM(P.REC_VLMULT) ' +
      'as TotalMulta'#13#10'from PARCELAS P'#13#10'Inner Join GRUPOS G ON P.REC_CDG' +
      'RUP = G.GRU_CODIGO'#13#10'Where (P.REC_DTPAGA >= :pDTINICIO) AND (P.RE' +
      'C_DTPAGA <= :pDTFINAL)'#13#10'and not (P.REC_DTPAGA is null)'#13#10'group by' +
      ' P.REC_CDGRUP, G.GRU_DESCRICAO'#13#10'order by P.REC_CDGRUP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDTINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmAdmDados.sqlConn
    Left = 40
    Top = 96
  end
  object dspConsulta: TDataSetProvider
    DataSet = dstConsulta
    Options = [poAllowCommandText]
    Left = 88
    Top = 96
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDTINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDTFINAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 128
    Top = 96
    object cdsConsultaREC_CDGRUP: TIntegerField
      FieldName = 'REC_CDGRUP'
      Required = True
    end
    object cdsConsultaGRU_DESCRICAO: TStringField
      FieldName = 'GRU_DESCRICAO'
      Required = True
    end
    object cdsConsultaVALORPARCELA: TFMTBCDField
      FieldName = 'VALORPARCELA'
      ReadOnly = True
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaTOTALPAGO: TFMTBCDField
      FieldName = 'TOTALPAGO'
      ReadOnly = True
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
    object cdsConsultaTOTALMULTA: TFMTBCDField
      FieldName = 'TOTALMULTA'
      ReadOnly = True
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Precision = 18
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 168
    Top = 96
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Left = 240
    Top = 72
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 66411
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 58473
        mmWidth = 196586
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 64029
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 59531
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'TOTAL A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 45244
        mmTop = 59531
        mmWidth = 32639
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'TOTAL MULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 80169
        mmTop = 59531
        mmWidth = 24172
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'TOTAL RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 109231
        mmTop = 59531
        mmWidth = 30903
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 35719
        mmLeft = 2646
        mmTop = 2381
        mmWidth = 188648
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'TOTAL RECEBIDO POR GRUPOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 41275
        mmWidth = 55827
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 46302
        mmWidth = 17187
        BandType = 0
      end
      object lblPeriodo: TppLabel
        UserName = 'lblPeriodo'
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 20902
        mmTop = 46302
        mmWidth = 974
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CDS_DESCRICAO'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 13494
        mmTop = 529
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CDS_CDGRUP'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4022
        mmLeft = 3175
        mmTop = 529
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CDS_TOTAL_PARCELA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 529
        mmWidth = 32639
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CDS_VLMULTA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 529
        mmWidth = 24172
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CDS_TOTAL_RECEBIDO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 106098
        mmTop = 529
        mmWidth = 34036
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 12171
        mmTop = 529
        mmWidth = 1185
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143404
        mmTop = 2646
        mmWidth = 16933
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143404
        mmTop = 7144
        mmWidth = 11906
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 7144
        mmWidth = 4763
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 2646
        mmWidth = 32015
        BandType = 8
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 794
        mmWidth = 196586
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 0
        mmWidth = 196586
        BandType = 7
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TOTAL ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4106
        mmLeft = 3175
        mmTop = 1588
        mmWidth = 18500
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CDS_TOTAL_PARCELA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4191
        mmLeft = 45244
        mmTop = 1588
        mmWidth = 32639
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CDS_VLMULTA'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4191
        mmLeft = 80169
        mmTop = 1588
        mmWidth = 24172
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CDS_TOTAL_RECEBIDO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4191
        mmLeft = 106098
        mmTop = 1588
        mmWidth = 34036
        BandType = 7
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsConsulta
    UserName = 'DBPipeline1'
    Left = 240
    Top = 104
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CDGRUP'
      FieldName = 'REC_CDGRUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'GRU_DESCRICAO'
      FieldName = 'GRU_DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORPARCELA'
      FieldName = 'VALORPARCELA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALPAGO'
      FieldName = 'TOTALPAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALMULTA'
      FieldName = 'TOTALMULTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
  end
  object cdsDados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsDadosCalcFields
    Left = 296
    Top = 40
    Data = {
      020100009619E0BD01000000180000000A00000000000300000002010A434453
      5F43444752555004000100000000000D4344535F44455343524943414F010049
      0000000100055749445448020002001E000D4344535F564C50415243454C4108
      000400000000000B4344535F5045545841444D08000400000000000B4344535F
      564C545841444D08000400000000000D4344535F5045545846554E444F080004
      00000000000D4344535F564C545846554E444F0800040000000000114344535F
      544F54414C5F50415243454C4108000400000000000B4344535F564C4D554C54
      410800040000000000124344535F544F54414C5F524543454249444F08000400
      000000000000}
    object cdsDadosCDS_CDGRUP: TIntegerField
      FieldName = 'CDS_CDGRUP'
    end
    object cdsDadosCDS_DESCRICAO: TStringField
      FieldName = 'CDS_DESCRICAO'
      Size = 30
    end
    object cdsDadosCDS_VLPARCELA: TFloatField
      FieldName = 'CDS_VLPARCELA'
    end
    object cdsDadosCDS_PETXADM: TFloatField
      FieldName = 'CDS_PETXADM'
    end
    object cdsDadosCDS_VLTXADM: TFloatField
      FieldName = 'CDS_VLTXADM'
    end
    object cdsDadosCDS_PETXFUNDO: TFloatField
      FieldName = 'CDS_PETXFUNDO'
    end
    object cdsDadosCDS_VLTXFUNDO: TFloatField
      FieldName = 'CDS_VLTXFUNDO'
    end
    object cdsDadosCDS_TOTAL_PARCELA: TFloatField
      FieldName = 'CDS_TOTAL_PARCELA'
    end
    object cdsDadosCDS_VLMULTA: TFloatField
      FieldName = 'CDS_VLMULTA'
    end
    object cdsDadosCDS_TOTAL_RECEBIDO: TFloatField
      FieldName = 'CDS_TOTAL_RECEBIDO'
    end
    object cdsDadosCDS_TOTAL_RECEBIDO_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CDS_TOTAL_RECEBIDO_CALC'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 336
    Top = 48
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsDados
    UserName = 'DBPipeline2'
    Left = 320
    Top = 104
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_CDGRUP'
      FieldName = 'CDS_CDGRUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'CDS_DESCRICAO'
      FieldName = 'CDS_DESCRICAO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_VLPARCELA'
      FieldName = 'CDS_VLPARCELA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_PETXADM'
      FieldName = 'CDS_PETXADM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_VLTXADM'
      FieldName = 'CDS_VLTXADM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_PETXFUNDO'
      FieldName = 'CDS_PETXFUNDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_VLTXFUNDO'
      FieldName = 'CDS_VLTXFUNDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_TOTAL_PARCELA'
      FieldName = 'CDS_TOTAL_PARCELA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_VLMULTA'
      FieldName = 'CDS_VLMULTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_TOTAL_RECEBIDO'
      FieldName = 'CDS_TOTAL_RECEBIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CDS_TOTAL_RECEBIDO_CALC'
      FieldName = 'CDS_TOTAL_RECEBIDO_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
end
