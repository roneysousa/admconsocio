unit udmRelatorios;

interface

uses
  Windows, Messages, Forms, SysUtils, Classes, FMTBcd, ppCtrls, ppStrtch, ppMemo, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, gbCobranca, RpBase,
  RpSystem, RpRave, RpDefine, RpCon, RpConDS, DB, DBClient, Provider,
  SqlExpr, ppDB, ppComm, ppRelatv, ppDBPipe, Controls,  Dialogs,
  ppModule, raCodMod, RpRender, RpRenderPDF, Rpdevice, VDODmPrinter, DateUtils,
  RpFiler;

type
  TdmRelatorios = class(TDataModule)
    ppDBPExtratoCliente: TppDBPipeline;
    dstRelatorio: TSQLDataSet;
    dspRelatorio: TDataSetProvider;
    cdsReciboCliente: TClientDataSet;
    cdsReciboClienteREC_CDGRUP: TIntegerField;
    cdsReciboClienteREC_NRCOTA: TIntegerField;
    cdsReciboClienteREC_NRVEND: TIntegerField;
    cdsReciboClienteREC_NRPARC: TIntegerField;
    cdsReciboClienteREC_DTVENC: TDateField;
    cdsReciboClienteREC_DTPAGA: TDateField;
    cdsReciboClienteREC_CODOP: TStringField;
    cdsReciboClienteREC_CDOPER: TIntegerField;
    cdsReciboClienteREC_SITUACAO: TStringField;
    cdsReciboClienteREC_DTMOVI: TDateField;
    cdsReciboClienteREC_DTCREDITO: TDateField;
    cdsReciboClienteREC_REGISTRO: TStringField;
    cdsReciboClienteREC_FORMABAIXA: TStringField;
    cdsReciboClienteREC_CDBANC: TIntegerField;
    cdsReciboClienteREC_PrintSlip: TStringField;
    cdsReciboClienteREC_HISTORICO: TMemoField;
    cdsReciboClienteREC_TPCREDITO: TStringField;
    cdsReciboClienteREC_TPSLIP: TStringField;
    cdsReciboClienteREC_NOSSONUMERO: TStringField;
    dsReciboCliente: TDataSource;
    ppDBPRecibo: TppDBPipeline;
    cdsBoleto: TClientDataSet;
    dsBoleto: TDataSource;
    cdsBoletoREC_CDGRUP: TIntegerField;
    cdsBoletoREC_NRCOTA: TIntegerField;
    cdsBoletoREC_NRVEND: TIntegerField;
    cdsBoletoREC_NRPARC: TIntegerField;
    cdsBoletoREC_DTVENC: TDateField;
    cdsBoletoREC_DTPAGA: TDateField;
    cdsBoletoREC_CODOP: TStringField;
    cdsBoletoREC_CDOPER: TIntegerField;
    cdsBoletoREC_SITUACAO: TStringField;
    cdsBoletoREC_DTMOVI: TDateField;
    cdsBoletoREC_DTCREDITO: TDateField;
    cdsBoletoREC_REGISTRO: TStringField;
    cdsBoletoREC_FORMABAIXA: TStringField;
    cdsBoletoREC_CDBANC: TIntegerField;
    cdsBoletoREC_PrintSlip: TStringField;
    cdsBoletoREC_HISTORICO: TMemoField;
    cdsBoletoREC_TPCREDITO: TStringField;
    cdsBoletoREC_TPSLIP: TStringField;
    cdsBoletoREC_NOSSONUMERO: TStringField;
    rvdsBoleto: TRvDataSetConnection;
    RvBoleto: TRvProject;
    RvSystem1: TRvSystem;
    gbCobranca1: TgbCobranca;
    gbTitulo1: TgbTitulo;
    cdsBoletoREC_VLPARC: TFMTBCDField;
    cdsBoletoREC_VLMULT: TFMTBCDField;
    cdsBoletoREC_TOTAL_PAGO: TFMTBCDField;
    cdsBoletoREC_CREDITO: TFMTBCDField;
    cdsBoletoREC_VALORTARIFABANCO: TFMTBCDField;
    cdsBoletoREC_VALORTITULOTITULO: TFMTBCDField;
    cdsBoletoREC_DTESTORNO: TDateField;
    ppRepExtratoCliente: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    lblNomeCliente: TppLabel;
    lblStatus: TppLabel;
    lblDescGrupo: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppRepRecibo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    cdsReciboClienteREC_VLPARC: TFMTBCDField;
    cdsReciboClienteREC_VLMULT: TFMTBCDField;
    cdsReciboClienteREC_TOTAL_PAGO: TFMTBCDField;
    cdsReciboClienteREC_CREDITO: TFMTBCDField;
    cdsReciboClienteREC_VALORTARIFABANCO: TFMTBCDField;
    cdsReciboClienteREC_VALORTITULOTITULO: TFMTBCDField;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel15: TppLabel;
    ppShape2: TppShape;
    ppLabel18: TppLabel;
    lblLinha1: TppLabel;
    lblLinha2: TppLabel;
    lblLinha3: TppLabel;
    ppShape3: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppShape4: TppShape;
    ppLabel26: TppLabel;
    ppShape5: TppShape;
    ppLabel27: TppLabel;
    ppShape6: TppShape;
    ppLabel28: TppLabel;
    ppShape7: TppShape;
    ppLabel29: TppLabel;
    ppShape8: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppMemo1: TppMemo;
    lblData: TppLabel;
    cdsReciboClienteREC_TOTAL_CALC: TFloatField;
    cdsReciboClienteREC_TAXADM_CALC: TFloatField;
    cdsReciboClienteREC_TXFUND_CALC: TFloatField;
    cdsReciboClienteCOT_FUNDORES: TFMTBCDField;
    cdsReciboClienteCOT_TAXA_ADM: TFMTBCDField;
    lblRecibo: TppLabel;
    lblEmpresa: TppLabel;
    ppLine4: TppLine;
    ppShape9: TppShape;
    ppLabel32: TppLabel;
    ppShape10: TppShape;
    ppLabel33: TppLabel;
    lblLinha4: TppLabel;
    lblLinha5: TppLabel;
    lblLinha6: TppLabel;
    ppShape11: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppShape12: TppShape;
    ppLabel44: TppLabel;
    ppShape13: TppShape;
    ppLabel45: TppLabel;
    ppShape14: TppShape;
    ppLabel46: TppLabel;
    ppShape15: TppShape;
    ppLabel47: TppLabel;
    ppShape16: TppShape;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppMemo2: TppMemo;
    lblData2: TppLabel;
    lblRecibo2: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine5: TppLine;
    cdsListaGrupo: TClientDataSet;
    dstListaGrupos: TSQLDataSet;
    dspListaGrupos: TDataSetProvider;
    cdsListaGrupoGRU_CODIGO: TIntegerField;
    cdsListaGrupoGRU_DESCRICAO: TStringField;
    cdsListaGrupoGRU_NRMESES: TIntegerField;
    cdsListaGrupoGRU_PARTICIP: TIntegerField;
    cdsListaGrupoGRU_INICIOU: TStringField;
    cdsListaGrupoGRU_DTINICIO: TDateField;
    cdsListaGrupoINICIOU: TStringField;
    dsListaGrupos: TDataSource;
    ppRepListaGrupo: TppReport;
    ppDBPListaGrupos: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppImage3: TppImage;
    ppLine6: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel36: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine7: TppLine;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel54: TppLabel;
    ppDBCalc1: TppDBCalc;
    dstRelPadrao: TSQLDataSet;
    dspRelPadrao: TDataSetProvider;
    cdsClientesAtraso: TClientDataSet;
    cdsClientesAtrasoCOT_NRVENDA: TIntegerField;
    cdsClientesAtrasoCOT_CDGRUPO: TIntegerField;
    cdsClientesAtrasoCOT_NRCOTA: TIntegerField;
    cdsClientesAtrasoCOT_PLANO: TIntegerField;
    cdsClientesAtrasoCOT_VALCRE: TFMTBCDField;
    cdsClientesAtrasoCLI_NOME: TStringField;
    cdsClientesAtrasoCLI_ENDERECO: TStringField;
    cdsClientesAtrasoCLI_CIDADE: TStringField;
    cdsClientesAtrasoCLI_UFCLIE: TStringField;
    cdsClientesAtrasoCLI_NRFONE: TStringField;
    cdsClientesAtrasoREC_NRPARC: TIntegerField;
    cdsClientesAtrasoREC_DTVENC: TDateField;
    cdsClientesAtrasoREC_VLPARC: TFMTBCDField;
    cdsClientesAtrasoREC_VLMULT: TFMTBCDField;
    cdsClientesAtrasoREC_CREDITO: TFMTBCDField;
    cdsClientesAtrasoREC_ATRASO: TFloatField;
    cdsClientesAtrasoCOT_TAXA_ADM: TFMTBCDField;
    cdsClientesAtrasoCOT_FUNDORES: TFMTBCDField;
    cdsClientesAtrasoCLI_BAIRRO: TStringField;
    cdsClientesAtrasoREC_DTPAGA: TDateField;
    cdsClientesAtrasoREC_TOTAL_PAGO: TFMTBCDField;
    cdsClientesAtrasoCOT_QTATRA: TIntegerField;
    cdsClientesAtrasoCOT_QTPAGA: TIntegerField;
    cdsClientesAtrasoREC_VLCORRIGIDO: TFloatField;
    dstPadrao: TSQLDataSet;
    dspPadrao: TDataSetProvider;
    cdsConsultaCota: TClientDataSet;
    cdsConsultaCotaREC_NRVEND: TIntegerField;
    cdsConsultaCotaREC_CDGRUP: TIntegerField;
    cdsConsultaCotaREC_NRCOTA: TIntegerField;
    cdsConsultaCotaREC_NRPARC: TIntegerField;
    cdsConsultaCotaREC_DTVENC: TDateField;
    cdsConsultaCotaREC_DTPAGA: TDateField;
    cdsConsultaCotaREC_TPCREDITO: TStringField;
    cdsConsultaCotaREC_TPSLIP: TStringField;
    cdsConsultaCotaREC_PRINTSLIP: TStringField;
    cdsConsultaCotaCOT_CDGRUPO: TIntegerField;
    cdsConsultaCotaCOT_NRCOTA: TIntegerField;
    cdsConsultaCotaREC_TOTAL_CALC: TFloatField;
    cdsConsultaCotaREC_TAXADM_CALC: TFloatField;
    cdsConsultaCotaREC_TXFUND_CALC: TFloatField;
    cdsConsultaCotaREC_FORMABAIXA: TStringField;
    cdsConsultaCotaREC_VLPARC: TFMTBCDField;
    cdsConsultaCotaREC_VLMULT: TFMTBCDField;
    cdsConsultaCotaREC_CREDITO: TFMTBCDField;
    cdsConsultaCotaCOT_FUNDORES: TFMTBCDField;
    cdsConsultaCotaCOT_TAXA_ADM: TFMTBCDField;
    cdsConsultaCotaREC_TOTAL_PAGO: TFMTBCDField;
    cdsConsultaCotaREC_CDBANC: TIntegerField;
    cdsConsultaCotaREC_NOSSONUMERO: TStringField;
    cdsConsultaCotaCOT_PLANO: TIntegerField;
    RvBoletoCarne: TRvProject;
    RvSystem2: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    cdsConsultaCotaREC_VALORTITULOTITULO: TFMTBCDField;
    cdsConsultaCotaREC_VALORTARIFABANCO: TFMTBCDField;
    cdsConsultaCotaREC_VALORTITULOTITULO_CALC: TFloatField;
    ppRepReciboLance: TppReport;
    ppDBPReciboLance: TppDBPipeline;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppImage4: TppImage;
    ppShape17: TppShape;
    ppLabel55: TppLabel;
    ppShape18: TppShape;
    ppLabel56: TppLabel;
    lblLinha1_1: TppLabel;
    lblLinha2_2: TppLabel;
    lblLinha3_3: TppLabel;
    ppShape20: TppShape;
    ppLabel67: TppLabel;
    ppShape21: TppShape;
    ppLabel68: TppLabel;
    ppShape22: TppShape;
    ppLabel69: TppLabel;
    ppShape23: TppShape;
    ppLabel70: TppLabel;
    ppShape24: TppShape;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppMemo3: TppMemo;
    lblData3: TppLabel;
    lblRecibo3: TppLabel;
    lblEmpresa3: TppLabel;
    ppLine9: TppLine;
    ppLabel61: TppLabel;
    ppDBText28: TppDBText;
    ppLabel60: TppLabel;
    ppDBText29: TppDBText;
    ppLabel62: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText30: TppDBText;
    ppLabel66: TppLabel;
    ppDBText34: TppDBText;
    ppLine10: TppLine;
    cdsReciboLances: TClientDataSet;
    dsReciboLance: TDataSource;
    dstAux: TSQLDataSet;
    dspAux: TDataSetProvider;
    cdsReciboLances2: TClientDataSet;
    cdsReciboLances2VENDA: TIntegerField;
    cdsReciboLances2GRUPO: TIntegerField;
    cdsReciboLances2COTA: TIntegerField;
    cdsReciboLances2PARCELA: TIntegerField;
    cdsReciboLances2HISTORICO: TStringField;
    cdsReciboLances2DTVENC: TDateField;
    cdsReciboLances2VALOR_PARCELA: TFloatField;
    cdsReciboLances2DTPAGA: TDateField;
    cdsReciboLances2TOT_PAGO: TFloatField;
    ppSummaryBand3: TppSummaryBand;
    ppShape19: TppShape;
    ppLine11: TppLine;
    ppLine12: TppLine;
    lblLinha04: TppMemo;
    cdsClientesAtrasoREC_TOTAL_CALC: TFloatField;
    cdsClientesAtrasoREC_TXFUND_CALC: TFloatField;
    cdsClientesAtrasoREC_TAXADM_CALC: TFloatField;
    cdsClientesAtrasoMULTA: TFloatField;
    cdsClientesAtrasoJUROS: TFloatField;
    cdsClientesAtrasoCORRIGIDO: TFloatField;
    cdsClientesAtrasoCOT_POSICAO: TStringField;
    cdsClientesAtrasoSTATUS: TStringField;
    cdsClientesAtrasoCOT_FLCONTEMPLADO: TStringField;
    cdsClientesAtrasoREC_NOSSONUMERO: TStringField;
    cdsClientesAtrasoREC_FORMABAIXA: TStringField;
    cdsClientesAtrasoREC_TPCREDITO: TStringField;
    cdsAcessos: TClientDataSet;
    lblDinheiro: TppLabel;
    lblValorCheque: TppLabel;
    lblBanco: TppLabel;
    lblNrcheque: TppLabel;
    lblDinheiro2: TppLabel;
    lblNrCheque2: TppLabel;
    lblBanco2: TppLabel;
    lblValorCheque2: TppLabel;
    lblStatusModa2: TppLabel;
    lblStatusModa: TppLabel;
    cdsDetalheFecharCaixa: TClientDataSet;
    cdsDetalheFecharCaixaMCA_SEQUENCIA: TIntegerField;
    cdsDetalheFecharCaixaMCA_VENDA: TIntegerField;
    cdsDetalheFecharCaixaMCA_NRPARC: TIntegerField;
    cdsDetalheFecharCaixaCOT_CDGRUPO: TIntegerField;
    cdsDetalheFecharCaixaCOT_NRCOTA: TIntegerField;
    cdsDetalheFecharCaixaCLI_NOME: TStringField;
    cdsDetalheFecharCaixaMCA_TIPOMOV: TStringField;
    cdsDetalheFecharCaixaMCA_VLMODALIDADE: TFMTBCDField;
    cdsConsulta: TClientDataSet;
    dstMovEstorno: TSQLDataSet;
    dspMovEstorno: TDataSetProvider;
    cdsMovEstorno: TClientDataSet;
    cdsMovEstornoMCA_SEQUENCIA: TIntegerField;
    cdsMovEstornoMCA_VENDA: TIntegerField;
    cdsMovEstornoMCA_NRPARC: TIntegerField;
    cdsMovEstornoCOT_CDGRUPO: TIntegerField;
    cdsMovEstornoCOT_NRCOTA: TIntegerField;
    cdsMovEstornoCLI_NOME: TStringField;
    cdsMovEstornoMCA_TIPOMOV: TStringField;
    cdsMovEstornoMCA_VLMODALIDADE: TFMTBCDField;
    cdsModalidades: TClientDataSet;
    dstModas: TSQLDataSet;
    dspModas: TDataSetProvider;
    cdsModalidadesMOD_CODIGO: TIntegerField;
    cdsModalidadesMOD_NOME: TStringField;
    rvdsBanco: TRvDataSetConnection;
    cdsClientesAtrasoNRFONE: TStringField;
    cdsClientesAtrasoREC_VALOR_DIA: TFloatField;
    RvSystem3: TRvSystem;
    rvEnvelopes: TRvProject;
    rvCliente: TRvDataSetConnection;
    dstBoletos: TSQLDataSet;
    dspBoletos: TDataSetProvider;
    cdsBoletosClientes: TClientDataSet;
    cdsBoletosClientesCOT_NRVENDA: TIntegerField;
    cdsBoletosClientesCOT_CDGRUPO: TIntegerField;
    cdsBoletosClientesCOT_NRCOTA: TIntegerField;
    cdsBoletosClientesCOT_CDCLIE: TIntegerField;
    cdsBoletosClientesCOT_POSICAO: TStringField;
    cdsBoletosClientesCOUNT: TIntegerField;
    dstMovCredito: TSQLDataSet;
    dspMovCredito: TDataSetProvider;
    cdsMovCredito: TClientDataSet;
    cdsMovCreditoMCA_SEQUENCIA: TIntegerField;
    cdsMovCreditoMCA_VENDA: TIntegerField;
    cdsMovCreditoMCA_NRPARC: TIntegerField;
    cdsMovCreditoCOT_CDGRUPO: TIntegerField;
    cdsMovCreditoCOT_NRCOTA: TIntegerField;
    cdsMovCreditoCLI_NOME: TStringField;
    cdsMovCreditoMCA_TIPOMOV: TStringField;
    cdsMovCreditoMCA_VLMODALIDADE: TFMTBCDField;
    rdsConfig: TRvDataSetConnection;
    rvdsClientesAtras: TRvDataSetConnection;
    rvClientes: TRvProject;
    RvNDRWriter1: TRvNDRWriter;
    ppRepSPC: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    cdsClienteSPC: TClientDataSet;
    dstClienteSPC: TSQLDataSet;
    dspClienteSPC: TDataSetProvider;
    cdsClienteSPCCOT_NRVENDA: TIntegerField;
    cdsClienteSPCCOT_CDGRUPO: TIntegerField;
    cdsClienteSPCCOT_NRCOTA: TIntegerField;
    cdsClienteSPCCOT_CDCLIE: TIntegerField;
    cdsClienteSPCCLI_NOME: TStringField;
    dsClienteSPC: TDataSource;
    ppDBPClienteSPC: TppDBPipeline;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel65: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel73: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppImage5: TppImage;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel76: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine15: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel77: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel78: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine18: TppLine;
    cdsClientesAtrasoCOT_DTCONT: TDateField;
    rvpClientesPagas: TRvProject;
    RvSystem4: TRvSystem;
    dstRelClientes: TSQLDataSet;
    dspRelClientes: TDataSetProvider;
    cdsMaster: TClientDataSet;
    rdsMaster: TRvDataSetConnection;
    cdsDetalhes: TClientDataSet;
    rdsDetalhes: TRvDataSetConnection;
    cdsMasterCOT_NRVENDA: TIntegerField;
    cdsMasterCOT_NRCOTA: TIntegerField;
    cdsMasterCLI_NOME: TStringField;
    cdsMasterQUANT: TIntegerField;
    cdsDetalhesREC_NRVEND: TIntegerField;
    cdsDetalhesREC_CDGRUP: TIntegerField;
    cdsDetalhesREC_NRCOTA: TIntegerField;
    cdsDetalhesREC_NRPARC: TIntegerField;
    cdsDetalhesREC_DTVENC: TDateField;
    cdsDetalhesREC_DTPAGA: TDateField;
    cdsDetalhesREC_TOTAL_PAGO: TFMTBCDField;
    cdsDetalhesREC_CREDITO: TFMTBCDField;
    cdsDetalhesREC_FORMABAIXA: TStringField;
    cdsDetalhesREC_VLPARC: TFMTBCDField;
    cdsMasterCOT_CDGRUPO: TIntegerField;
    cdsMasterCOT_TAXA_ADM: TFMTBCDField;
    cdsMasterCOT_DTCONT: TDateField;
    cdsMasterCOT_POSICAO: TStringField;
    cdsMasterCOT_FLCONTEMPLADO: TStringField;
    cdsMasterCLI_ENDERECO: TStringField;
    cdsMasterCLI_NUMERO: TIntegerField;
    cdsMasterCLI_BAIRRO: TStringField;
    cdsMasterCLI_CIDADE: TStringField;
    cdsMasterCLI_UFCLIE: TStringField;
    cdsMasterCLI_NRFONE: TStringField;
    cdsMasterFONE: TStringField;
    cdsMasterSTATUS: TStringField;
    cdsMasterCOT_VALCRE: TFMTBCDField;
    cdsMasterCOT_PLANO: TIntegerField;
    cdsMasterCLI_CIDADEUF: TStringField;
    cdsDetalhesREC_ATRASO: TFloatField;
    cdsDetalhesREC_VLPARC_CALC: TFloatField;
    cdsMasterAtrasadas: TClientDataSet;
    cdsDetalhesAtrasadas: TClientDataSet;
    cdsMasterAtrasadasCOT_NRVENDA: TIntegerField;
    cdsMasterAtrasadasCOT_CDGRUPO: TIntegerField;
    cdsMasterAtrasadasCOT_NRCOTA: TIntegerField;
    cdsMasterAtrasadasCOT_PLANO: TIntegerField;
    cdsMasterAtrasadasCOT_VALCRE: TFMTBCDField;
    cdsMasterAtrasadasCOT_POSICAO: TStringField;
    cdsMasterAtrasadasCOT_FLCONTEMPLADO: TStringField;
    cdsMasterAtrasadasCOT_DTCONT: TDateField;
    cdsMasterAtrasadasCOT_TAXA_ADM: TFMTBCDField;
    cdsMasterAtrasadasCOT_FUNDORES: TFMTBCDField;
    cdsMasterAtrasadasCLI_NOME: TStringField;
    cdsMasterAtrasadasCLI_ENDERECO: TStringField;
    cdsMasterAtrasadasCLI_NUMERO: TIntegerField;
    cdsMasterAtrasadasCLI_BAIRRO: TStringField;
    cdsMasterAtrasadasCLI_CIDADE: TStringField;
    cdsMasterAtrasadasCLI_UFCLIE: TStringField;
    cdsMasterAtrasadasCLI_NRFONE: TStringField;
    cdsMasterAtrasadasREC_NRVEND: TIntegerField;
    cdsMasterAtrasadasCOUNT: TIntegerField;
    cdsDetalhesAtrasadasREC_NRVEND: TIntegerField;
    cdsDetalhesAtrasadasREC_CDGRUP: TIntegerField;
    cdsDetalhesAtrasadasREC_NRCOTA: TIntegerField;
    cdsDetalhesAtrasadasREC_NRPARC: TIntegerField;
    cdsDetalhesAtrasadasREC_DTVENC: TDateField;
    cdsDetalhesAtrasadasREC_VLPARC: TFMTBCDField;
    cdsDetalhesAtrasadasREC_DTPAGA: TDateField;
    cdsDetalhesAtrasadasREC_TOTAL_PAGO: TFMTBCDField;
    cdsDetalhesAtrasadasREC_CREDITO: TFMTBCDField;
    cdsDetalhesAtrasadasREC_FORMABAIXA: TStringField;
    rdsMasterAtrasada: TRvDataSetConnection;
    rdsDetalhesAtrasada: TRvDataSetConnection;
    rvpClientesAtrasados: TRvProject;
    cdsMasterAtrasadasSTATUS: TStringField;
    cdsMasterAtrasadasFONE: TStringField;
    cdsDetalhesAtrasadasREC_TAXADM_CALC: TFloatField;
    cdsDetalhesAtrasadasREC_TXFUND_CALC: TFloatField;
    cdsDetalhesAtrasadasREC_TOTAL_CALC: TFloatField;
    cdsDetalhesAtrasadasREC_ATRASO: TFloatField;
    cdsDetalhesAtrasadasCOT_QTATRA: TFloatField;
    cdsDetalhesAtrasadasCOT_QTPAGA: TFloatField;
    cdsDetalhesAtrasadasREC_VALOR_DIA: TFloatField;
    cdsDetalhesAtrasadasMULTA: TFloatField;
    cdsDetalhesAtrasadasJUROS: TFloatField;
    cdsDetalhesAtrasadasREC_VLCORRIGIDO: TFloatField;
    cdsDetalhesAtrasadasCOT_TAXA_ADM: TFMTBCDField;
    cdsMasterAtrasadasCOT_QTPAGAS: TIntegerField;
    cdsMasterAtrasadasCOT_DTINATIVACAO: TDateField;
    cdsTotalEstorno: TClientDataSet;
    dstTotalEstornoCredito: TSQLDataSet;
    dspTotalEstornoCredito: TDataSetProvider;
    cdsTotalEstornoMCA_SEQUENCIA: TIntegerField;
    cdsTotalEstornoMCA_VENDA: TIntegerField;
    cdsTotalEstornoMCA_NRPARC: TIntegerField;
    cdsTotalEstornoMCA_TIPOMOV: TStringField;
    cdsTotalEstornoMCA_DTMOVIMENTO: TDateField;
    cdsTotalEstornoMCA_MODALIDADE: TIntegerField;
    cdsTotalEstornoMCA_VLMODALIDADE: TFMTBCDField;
    cdsTotalEstornoMCA_OBSEVACAO: TStringField;
    cdsTotalEstornoMCA_SITUACAO: TStringField;
    cdsTotalEstornoMCA_CAIXA: TIntegerField;
    cdsTotalEstornoMCA_NATUREZA: TIntegerField;
    cdsTotalEstornoMCA_FUNCIONARIO: TIntegerField;
    cdsConsultaCotaREC_NATUREZA: TIntegerField;
    cdsConsultaCotaREC_HISTORICO: TMemoField;
    cdsAtualizaBancoCota: TClientDataSet;
    cdsAtualizaBancoCotaREC_NRVEND: TIntegerField;
    cdsAtualizaBancoCotaREC_CDGRUP: TIntegerField;
    cdsAtualizaBancoCotaREC_NRCOTA: TIntegerField;
    cdsAtualizaBancoCotaREC_CDBANC: TIntegerField;
    cdsAtualizaBancoCotaREC_NRPARC: TIntegerField;
    cdsAtualizaBancoCotaREC_DTVENC: TDateField;
    cdsAtualizaBancoCotaREC_VLPARC: TFMTBCDField;
    cdsAtualizaBancoCotaREC_DTPAGA: TDateField;
    cdsAtualizaBancoCotaREC_VLMULT: TFMTBCDField;
    cdsAtualizaBancoCotaREC_CREDITO: TFMTBCDField;
    cdsAtualizaBancoCotaREC_NOSSONUMERO: TStringField;
    cdsAtualizaBancoCotaREC_NATUREZA: TIntegerField;
    cdsAtualizaBancoCotaREC_TPCREDITO: TStringField;
    cdsAtualizaBancoCotaREC_TPSLIP: TStringField;
    cdsAtualizaBancoCotaREC_PRINTSLIP: TStringField;
    cdsAtualizaBancoCotaREC_VALORTITULOTITULO: TFMTBCDField;
    cdsAtualizaBancoCotaREC_HISTORICO: TMemoField;
    cdsAtualizaBancoCotaREC_VALORTARIFABANCO: TFMTBCDField;
    cdsAtualizaBancoCotaREC_TOTAL_PAGO: TFMTBCDField;
    cdsAtualizaBancoCotaREC_FORMABAIXA: TStringField;
    cdsMasterAtrasadasCOT_DTREATIVACAO: TDateField;
    cdsMasterCOT_DTINATIVACAO: TDateField;
    cdsMasterCOT_DTREATIVACAO: TDateField;
    cdsMovContaPagar: TClientDataSet;
    cdsMovContaPagarMCA_SEQUENCIA: TIntegerField;
    cdsMovContaPagarMCA_VENDA: TIntegerField;
    cdsMovContaPagarMCA_NRPARC: TIntegerField;
    cdsMovContaPagarFOR_RAZAO: TStringField;
    cdsMovContaPagarPAG_NRNOTA: TStringField;
    cdsMovContaPagarPAG_SERIENOTA: TStringField;
    cdsMovContaPagarMCA_TIPOMOV: TStringField;
    cdsMovContaPagarMCA_VLMODALIDADE: TFMTBCDField;
    cdsDetalhesAtrasadasREC_VLPARC_CALC: TFloatField;
    ppRepEnvCliente: TppReport;
    ppDBPipEnvCliente: TppDBPipeline;
    dsEnvCliente: TDataSource;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppDBText38: TppDBText;
    ppLabel79: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    txtEndereco: TppLabel;
    txtCidadeUF: TppLabel;
    procedure cdsReciboClienteCalcFields(DataSet: TDataSet);
    procedure cdsListaGrupoCalcFields(DataSet: TDataSet);
    procedure cdsClientesAtrasoCalcFields(DataSet: TDataSet);
    procedure cdsConsultaCotaCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsDetalhesCalcFields(DataSet: TDataSet);
    procedure cdsMasterAtrasadasCalcFields(DataSet: TDataSet);
    procedure cdsDetalhesAtrasadasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Recibo_Cliente(W_CDGRUP,W_NRCOTA, W_NRVEND, W_NRPARC : integer);
    procedure SELECIONA_CLIENTE(M_CDCLIE : Integer);
    procedure IMPRIMIR_BOLETO(M_CDBANC, M_TPIMPR : Integer; M_NRDOCU, M_FLSEGU : String);
    procedure PrepararTitulo(M_CDBANC : integer);
    Procedure AddDadosLance(aVenda, aGrupo, aCota, aParcela : integer; aTipoHis : String;
                      aDataVenc, aDataPago : TDate; aValor, aPago : Double);
    procedure Imprime_Caixa(iCaixa, iInicial, iFinal : Integer; aVia : String);
    procedure Imprime_Caixa2(iCaixa, iInicial, iFinal, iSeqInicio, iSeqFinal : Integer; aVia : String);
    Function Situacao_Caixa(iCaixa : Integer) : boolean;
    Function Parcelas_Pagas_Caixa(iCaixa, iInicial, iFinal : Integer) : Boolean;
    Function Parcelas_Credito_Caixa(iCaixa, iInicial, iFinal : Integer) : Boolean;
    Function Parcelas_Estornadas_Caixa(iCaixa, iInicial, iFinal : Integer) : Boolean;
    Function Parcelas_ContaPagar_Caixa(iCaixa, iInicial, iFinal : Integer; aTipoMov : String) : Boolean;
    Procedure Total_Modalidades;
    Procedure Gerar_Recibo(iVenda,  iGrupo, iCota, iParcela, iSequencia, iModa : Integer;
        aCliente : String; fValor : Double);
  end;

var
  dmRelatorios: TdmRelatorios;
  M_CODIGOBARRAS, M_DIGITOCODIGO : String;

implementation

uses udmAdmDados, uDmPesquisas, uFuncoes, uFrmVendas, uCodBarras;
//uFrmVendas, uCodBarras;

{$R *.dfm}

{ TdmRelatorios }

procedure TdmRelatorios.IMPRIMIR_BOLETO(M_CDBANC, M_TPIMPR: Integer; M_NRDOCU , M_FLSEGU: String);
Var
     M_NOSNUM, M_CPFCNPJ, M_NRCONV, M_CARTEIRA, W_DTVENC, M_NRCONTA : String;
     W_CDBANC, W_DVBANC, W_NRAGEN, W_CDCEDE, x , M_DTVCJU: String;
     M_NRCEP, M_CDCEDE : String;
     M_TPBOLE, M_BANC_PADRAO : Integer;
     M_DTVENC : TDate;
     M_VLDOCU : DOuble;
     M_NSPRIM, M_NSSEGU, M_DIG_CEDENTE, M_DGNNUME, M_NRAGEN, M_DIG_VER_CAMPO_LIVRE : String;
begin
      dmAdmDados.Parametros;
      //
      If (M_CDBANC = 0) Then
          M_BANC_PADRAO := 1
      eLSE
          M_BANC_PADRAO := M_CDBANC;
      uFuncoes.FilterCDS(dmAdmDados.cdsbancos, fsString, InttoStr(M_BANC_PADRAO));
      if not (dmAdmDados.cdsbancos.IsEmpty) Then
         M_TPBOLE := dmAdmDados.cdsbancosBAN_FORMA_CALC.AsInteger;
      //PrepararTituloNovo;
      //
      W_CDBANC := uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_NRBANC.AsString,3);
      W_DVBANC := dmAdmDados.cdsbancosBAN_DVNRBA.AsString;
      W_NRAGEN := gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia+'-'+gbTitulo1.Cedente.ContaBancaria.fDigitoAgencia;
      M_NRAGEN := uFuncoes.Alltrim(dmAdmDados.cdsbancosBAN_NRAGEN.AsString);
      W_CDCEDE := gbTitulo1.Cedente.CodigoCedente+'-'+gbTitulo1.Cedente.DigitoCodigoCedente;
      M_NRCONV := dmAdmDados.cdsbancosBAN_CONVENIO.AsString;
      M_CARTEIRA := dmAdmDados.cdsbancosBAN_CARTEIRA.AsString;
      //
      M_VLDOCU := dmRelatorios.cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat;
      M_DTVENC := dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime;
      W_DTVENC := dmRelatorios.cdsConsultaCotaREC_DTVENC.AsString;
      //
      M_NRCEP := uFuncoes.FormataCep('64000000');
      //
      If (M_TPBOLE = 1) Then
      begin
           M_CODIGOBARRAS := gbTitulo1.CodigoBarra.Codigo;
           M_NOSNUM       := gbTitulo1.NossoNumero;
           //
      End;
      //  altera��o 11/09/2008
      If (M_TPBOLE = 2) and (M_CARTEIRA = 'CNR') Then
      begin
         // codigo de barras
         x := Copy(gbTitulo1.DigitoNossoNumero,13,3);
         M_DTVCJU := uFuncoes.StrZero(uFuncoes.Data_Juliana(M_DTVENC),3)+Copy(DatetoStr(M_DTVENC), 10,1) ;
         //uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
         M_CODIGOBARRAS := '3999'+CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          +M_NRCONV
                          +uFuncoes.StrZero(gbTitulo1.NossoNumero,13) +M_DTVCJU+'2';
                          // +'1'+StrZero(Copy(M_NRCONV,1,5),5)
         // digito do codigo
         M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
         If M_DIGITOCODIGO = '0' then
             M_DIGITOCODIGO := '1';
         //
         M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                         +M_DIGITOCODIGO
                         +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
         //
      End;
      //
      If (M_TPBOLE = 3) and (M_CARTEIRA = '1') Then
      begin
         // codigo de barras
         M_CODIGOBARRAS := '1049'+CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          +'1'+StrZero(Copy(M_NRCONV,1,5),6)
                          +gbTitulo1.NossoNumero;
                          // +'1'+StrZero(Copy(M_NRCONV,1,5),5)
         // digito do codigo
         M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
         If M_DIGITOCODIGO = '0' then
             M_DIGITOCODIGO := '1';
         //
         M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                         +M_DIGITOCODIGO
                         +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
      End;
      // 18/10/2008
      If (M_TPBOLE = 3) and (M_CARTEIRA = '18') Then
      begin
          gbTitulo1.NossoNumero := M_NRDOCU;
          // W_NRCONV M_NRCONV
          //
          M_NOSNUM := uFuncoes.StrZero(gbTitulo1.NossoNumero,11) +
                '-' + uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
          // codigo de barras
          M_CODIGOBARRAS := W_CDBANC+'9'
                          +uCodBarras.CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          //+ '000000'
                          +gbTitulo1.NossoNumero+gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia+gbTitulo1.Cedente.CodigoCedente+M_CARTEIRA;
          // digito do codigo
          M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
          If M_DIGITOCODIGO = '0' then
              M_DIGITOCODIGO := '1';
          //      Aqui
          M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                          +M_DIGITOCODIGO
                          +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
      End;
      // BB carteira 18-027    04/05/2011
      If  (M_CARTEIRA = '18') and (M_TPBOLE = 5) Then
        begin
             gbTitulo1.NossoNumero := M_NRDOCU;
             //
             M_NOSNUM := uFuncoes.StrZero(gbTitulo1.NossoNumero,11) +
                   '-' + uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
             // codigo de barras
             M_CODIGOBARRAS := W_CDBANC+'9'
                          +uCodBarras.CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          +uFuncoes.Replicate('0',6)+gbTitulo1.NossoNumero + M_CARTEIRA;
             // digito do codigo
             M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
             If M_DIGITOCODIGO = '0' then
                M_DIGITOCODIGO := '1';
             //
             M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                          +M_DIGITOCODIGO
                          +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
        End;
      //        REAL
      If (M_TPBOLE = 4) Then
        begin
             // codigo de barras
             M_CODIGOBARRAS := '3569'
                          +CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          +uFuncoes.StrZero(gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia,4)
                          +uFuncoes.StrZero(M_NRCONV,7)
                          +uCodBarras.Modulo10(gbTitulo1.NossoNumero
                                               +uFuncoes.StrZero(gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia,4)
                                               +uFuncoes.StrZero(M_NRCONV,7))
                          +gbTitulo1.NossoNumero;
             // digito do codigo
             M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
             If M_DIGITOCODIGO = '0' then
                 M_DIGITOCODIGO := '1';
             //
             M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                         +M_DIGITOCODIGO
                         +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
        End;
       // 07/11/2013 Caixa
       If (M_TPBOLE = 6) Then  // CAIXA
       begin
           if (M_CARTEIRA = '02') Then
           begin
                M_NRCONTA := uFuncoes.Alltrim(M_NRCONV);
                //
                M_NSPRIM := '0002';
                M_NSSEGU := '0004';
                //
                M_DIG_CEDENTE := uCodBarras.Modulo11(M_NRCONTA,9);
                //
                M_DGNNUME := uCodBarras.Modulo11(M_NRAGEN+M_NRCONTA+M_DIG_CEDENTE
                                     +M_NSPRIM + M_NSSEGU+uFuncoes.StrZero(M_NRDOCU,9) ,9) ;
                //

                M_NOSNUM       := gbTitulo1.NossoNumero + '-'+M_DGNNUME;
                //             M_NRCONTA+M_DIG_CEDENTE
                M_DIG_VER_CAMPO_LIVRE := uCodBarras.Modulo11(M_NRCONTA+M_DIG_CEDENTE     //M_NRAGEN+
                                        +M_NSPRIM + M_NSSEGU+uFuncoes.StrZero(M_NRDOCU, 9),9);
                // codigo de barras
                M_CODIGOBARRAS := '1049'+CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          +M_NRCONTA+M_DIG_CEDENTE
                          +M_NSPRIM+ M_NSSEGU+uFuncoes.StrZero(M_NRDOCU, 9) +M_DIG_VER_CAMPO_LIVRE; //
                M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
                //M_DIGITOCODIGO := uCodBarras.Modulo11(ZQryContaBancarianumero_conta.AsString,9);
                If M_DIGITOCODIGO = '0' then
                    M_DIGITOCODIGO := '1';
                //
                M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                                +M_DIGITOCODIGO
                                +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
          End;
      End;
      //    novo convenio
      {If (M_TPBOLE = 3) and (M_CARTEIRA = '18') Then
      begin
          //gbTitulo1.NossoNumero := M_NRCONV+M_NRDOCU;
          gbTitulo1.NossoNumero := M_NRDOCU;
          // W_NRCONV
          If (Length(uFuncoes.Alltrim(M_NRCONV)) = 7) Then
             W_DVBANC := '9';
          //
          M_NOSNUM := uFuncoes.StrZero(gbTitulo1.NossoNumero,17) +
                '-' + uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
          // codigo de barras        //
          M_CODIGOBARRAS := W_CDBANC+W_DVBANC
                          +uCodBarras.CalcularFatorVencimento(M_DTVENC)
                          +StrZero(RemoveChar(FormatFloat('##,###,##0.#0',M_VLDOCU)),10)
                          + '000000'
                          +gbTitulo1.NossoNumero+M_CARTEIRA;
          // digito do codigo
          M_DIGITOCODIGO := uCodBarras.Modulo11(M_CODIGOBARRAS,9);
          If M_DIGITOCODIGO = '0' then
              M_DIGITOCODIGO := '1';
          //      Aqui
          M_CODIGOBARRAS := Copy(M_CODIGOBARRAS,1,4)
                          +M_DIGITOCODIGO
                          +Copy(M_CODIGOBARRAS,5,length(M_CODIGOBARRAS)-4);
      End;  }
      //
end;

procedure TdmRelatorios.Recibo_Cliente(W_CDGRUP, W_NRCOTA, W_NRVEND,
  W_NRPARC: integer);
begin
     With cdsReciboCliente do
      begin
          Active := False;
          Params[0].AsInteger := W_CDGRUP;
          Params[1].AsInteger := W_NRCOTA;
          Params[2].AsInteger := W_NRVEND;
          Params[3].AsInteger := W_NRPARC;
          Active := True;
      end;
end;


procedure TdmRelatorios.cdsReciboClienteCalcFields(DataSet: TDataSet);
begin
     // Taxa adm
     If (cdsReciboClienteCOT_TAXA_ADM.AsFloat > 0)
     and (cdsReciboClienteREC_NRPARC.AsInteger > 1) Then
        cdsReciboClienteREC_TAXADM_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsReciboClienteREC_VLPARC.AsFloat, cdsReciboClienteCOT_TAXA_ADM.AsFloat)
     Else
        cdsReciboClienteREC_TAXADM_CALC.AsFloat := 0;
     // Taxa fundo
     If (cdsReciboClienteCOT_FUNDORES.AsFloat > 0)
       and (cdsReciboClienteREC_NRPARC.AsInteger > 1) Then
        cdsReciboClienteREC_TXFUND_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsReciboClienteREC_VLPARC.AsFloat, cdsReciboClienteCOT_FUNDORES.AsFloat)
     Else
        cdsReciboClienteREC_TXFUND_CALC.AsFloat := 0;
     //
     //    Tota a Pagar
     if (cdsReciboClienteREC_VLPARC.AsFloat > 0)
      and (cdsReciboClienteREC_NRPARC.AsInteger > 1) Then
        cdsReciboClienteREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar(
             cdsReciboClienteREC_VLPARC.AsFloat +
             cdsReciboClienteREC_TAXADM_CALC.AsFloat +
             cdsReciboClienteREC_TXFUND_CALC.AsFloat,2)
      Else
          cdsReciboClienteREC_TOTAL_CALC.AsFloat :=
             cdsReciboClienteREC_VLPARC.AsFloat;
end;

procedure TdmRelatorios.cdsListaGrupoCalcFields(DataSet: TDataSet);
begin
     If (cdsListaGrupoGRU_INICIOU.AsString = 'S') Then
         cdsListaGrupoINICIOU.AsString := 'SIM'
     Else
         cdsListaGrupoINICIOU.AsString := 'N�O';
end;

procedure TdmRelatorios.cdsClientesAtrasoCalcFields(DataSet: TDataSet);
Var
   M_QTMESE, iAnos,iMeses,iDias : Integer;
begin
     // Taxa adm
     If (cdsClientesAtrasoCOT_TAXA_ADM.AsFloat > 0) Then
        cdsClientesAtrasoREC_TAXADM_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsClientesAtrasoREC_VLPARC.AsFloat, cdsClientesAtrasoCOT_TAXA_ADM.AsFloat);
     // Taxa fundo
     If (cdsClientesAtrasoCOT_FUNDORES.AsFloat > 0) Then
        cdsClientesAtrasoREC_TXFUND_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsClientesAtrasoREC_VLPARC.AsFloat, cdsClientesAtrasoCOT_FUNDORES.AsFloat);
     //    Tota a Pagar
     if (cdsClientesAtrasoREC_VLPARC.AsFloat > 0) Then
        cdsClientesAtrasoREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar((
             cdsClientesAtrasoREC_VLPARC.AsFloat +
             cdsClientesAtrasoREC_TAXADM_CALC.AsFloat +
             cdsClientesAtrasoREC_TXFUND_CALC.AsFloat) - cdsClientesAtrasoREC_CREDITO.AsFloat,2);
      // Atraso
      if (cdsClientesAtrasoREC_DTPAGA.IsNull) Then
         cdsClientesAtrasoREC_ATRASO.AsFloat :=
             Date() - cdsClientesAtrasoREC_DTVENC.AsDateTime
      Else
         cdsClientesAtrasoREC_ATRASO.AsFloat :=
            cdsClientesAtrasoREC_DTPAGA.AsDateTime - cdsClientesAtrasoREC_DTVENC.AsDateTime;
      // Quant. Atrasadas
      cdsClientesAtrasoCOT_QTATRA.AsInteger :=
          dmPesquisas.Parcelas_Atrasadas(cdsClientesAtrasoCOT_CDGRUPO.AsInteger,
                                         cdsClientesAtrasoCOT_NRCOTA.AsInteger,
                                         cdsClientesAtrasoCOT_NRVENDA.AsInteger);
      // Quant. Pagas
      cdsClientesAtrasoCOT_QTPAGA.AsInteger :=
          dmPesquisas.Parcelas_Pagas(cdsClientesAtrasoCOT_CDGRUPO.AsInteger,
                                         cdsClientesAtrasoCOT_NRCOTA.AsInteger,
                                         cdsClientesAtrasoCOT_NRVENDA.AsInteger);
      //
      {uFuncoes.MesesEntreDatas(Date(), cdsClientesAtrasoREC_DTVENC.AsDateTime, iAnos, iMeses, iDias);
      If (cdsClientesAtrasoREC_ATRASO.AsInteger > 360) Then
       begin
            iMeses := iMeses + 1;
            ShowMessage('M ' + InttoStr(iMeses)) ;
       End;     }
       //
       iMeses := MonthsBetween(cdsClientesAtrasoREC_DTVENC.AsDateTime, Date());
      //
      cdsClientesAtrasoREC_VALOR_DIA.AsFloat := uFuncoes.Arredondar((uFuncoes.Gerapercentual(cdsClientesAtrasoREC_TOTAL_CALC.AsFloat + dmAdmDados.cdsConfigCFG_MULTA.AsFloat, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2);
      cdsClientesAtrasoMULTA.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsClientesAtrasoREC_TOTAL_CALC.AsFloat, dmAdmDados.cdsConfigCFG_MULTA.AsFloat * iMeses),2);
      cdsClientesAtrasoJUROS.AsFloat := cdsClientesAtrasoREC_VALOR_DIA.AsFloat * cdsClientesAtrasoREC_ATRASO.AsFloat;
      // uFuncoes.Arredondar((uFuncoes.Gerapercentual(cdsClientesAtrasoREC_TOTAL_CALC.AsFloat + dmAdmDados.cdsConfigCFG_MULTA.AsFloat, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2)
      //
      cdsClientesAtrasoREC_VLCORRIGIDO.AsFloat :=
            cdsClientesAtrasoREC_TOTAL_CALC.AsFloat +
            cdsClientesAtrasoMULTA.AsFloat +
            cdsClientesAtrasoJUROS.AsFloat;
      //
      If not uFuncoes.Empty(cdsClientesAtrasoCLI_NRFONE.AsString) Then
          If Length(cdsClientesAtrasoCLI_NRFONE.AsString) = 10 Then
             cdsClientesAtrasoNRFONE.AsString := uFuncoes.FormataFONE(cdsClientesAtrasoCLI_NRFONE.AsString);
      //cdsClientesAtrasoCORRIGIDO.AsFloat :=
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'A') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Ativo-�-Contem';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'Q') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Outros-Contemp.';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'I') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Inativo-�-Contemp.';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'P') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Outros-�-Contemp.';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'A') AND (cdsClientesAtrasoCOT_FLCONTEMPLADO.AsString = 'S') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Ativo-Contemp.';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'V') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- Vendido';
      If (cdsClientesAtrasoCOT_POSICAO.AsString = 'R') Then
         cdsClientesAtrasoSTATUS.AsString := cdsClientesAtrasoCOT_POSICAO.AsString + '- N�o Contpl.';
end;

procedure TdmRelatorios.SELECIONA_CLIENTE(M_CDCLIE: Integer);
begin
     uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, InttoStr(M_CDCLIE));
end;

procedure TdmRelatorios.PrepararTitulo(M_CDBANC : integer);
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servir� de apoio para diveras outras rotinas
}
Var
    M_CDCLIE, M_COMPLE, aDigito : String;
    M_ININSN : String;
    M_BANC_PADRAO : integer;
begin
      If (M_CDBANC = 0) Then
          M_BANC_PADRAO := 1
      eLSE
          M_BANC_PADRAO := M_CDBANC;
      uFuncoes.FilterCDS(dmAdmDados.cdsbancos, fsString, InttoStr(M_BANC_PADRAO));
      //
    M_ININSN := '9';
    //
    if not uFuncoes.Empty(dmAdmDados.cdsbancosBAN_INICIO_NOSSO_NUMERO.AsString) Then
         M_ININSN := uFuncoes.Alltrim(dmAdmDados.cdsbancosBAN_INICIO_NOSSO_NUMERO.AsString);
   {Dados do titulo}
   with gbTitulo1 do
   begin
      //
      SeuNumero   := cdsConsultaCotaREC_NOSSONUMERO.AsString;
      Carteira    := dmAdmDados.cdsbancosBAN_CARTEIRA.AsString;
      //
      If (M_ININSN = '82') Then
      Begin
            NossoNumero    := '82'+Copy(uFuncoes.StrZero(cdsConsultaCotaREC_NOSSONUMERO.AsString,8),3,8);
            Carteira := 'SR';
      End;
      //
      If (M_ININSN = '9') and (Carteira = '1') Then
      begin
             gbTitulo1.NossoNumero    :=
               uFuncoes.StrZero(cdsConsultaCotaREC_NOSSONUMERO.AsString,17);
             gbTitulo1.Carteira := dmAdmDados.cdsbancosBAN_CARTEIRA.AsString;
      End;
      //
      If (M_ININSN = '9') and (Carteira = '18') Then
         Begin
             gbTitulo1.Carteira       := dmAdmDados.cdsbancosBAN_CARTEIRA.AsString;
             //
             gbTitulo1.NossoNumero    := cdsConsultaCotaREC_NOSSONUMERO.AsString;
             //dmAdmDados.cdsbancosBAN_CONVENIO.AsString
         End;
       //
       If (Carteira = 'CNR') Then
        begin
             gbTitulo1.NossoNumero    := cdsConsultaCotaREC_NOSSONUMERO.AsString;
        End;
        //
       If (Carteira = '57') Then
         Begin
              gbTitulo1.NossoNumero := cdsConsultaCotaREC_NOSSONUMERO.AsString;
         End;
       // Altera��o 07/11/2013
       If (M_ININSN = '24') and (Carteira = '02') Then
       Begin
            NossoNumero    := '24'+StrZero(cdsConsultaCotaREC_NOSSONUMERO.AsString,15);
       End;
      //
      aDigito := uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
      DataDocumento  := Date();
      DataVencimento := cdsConsultaCotaREC_DTVENC.AsDateTime;
      ValorDocumento := cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat;
      //ValorDocumento := cdsConsultaCotaREC_TOTAL_CALC.AsFloat;
       //
      {Dados do cedente}
      with Cedente do
      begin

         TipoInscricao := tiPessoaJuridica; //CNPJ
         If (Carteira = 'SR') Then
         Begin
           CodigoCedente := dmAdmDados.cdsbancosBAN_NRCONT.AsString;
           DigitoCodigoCedente := dmAdmDados.cdsbancosBAN_DVCONT.AsString;
         End;
         //
         If (Carteira = 'CR') or (Carteira = '1') Then
         Begin
             CodigoCedente       := uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_NRCONT.AsString,6);
             DigitoCodigoCedente := dmAdmDados.cdsbancosBAN_DVCONT.AsString;
         End;
         //
         If (Carteira = '18') Then
         Begin
             CodigoCedente       := uFuncoes.StrZero( dmAdmDados.cdsbancosBAN_NRCONT.AsString,6);
             DigitoCodigoCedente := dmAdmDados.cdsbancosBAN_DVCONT.AsString;
         End;
         //
         If (Carteira = '57') Then
         Begin
             CodigoCedente       := uFuncoes.StrZero( dmAdmDados.cdsbancosBAN_NRCONT.AsString,7);
             DigitoCodigoCedente := dmAdmDados.cdsbancosBAN_DVCONT.AsString;
         End;
         {Endere�o do cedente}
         //
         uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
         //
         with Endereco do
         begin
            Rua := dmAdmDados.cdsConfigCFG_ENDERECO.AsString;
            Endereco.Numero := dmAdmDados.cdsConfigCFG_ENDERECO.AsString;
            Bairro := dmAdmDados.cdsConfigCFG_BAIRRO.AsString;
            Cidade := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
            Estado := dmAdmDados.cdsConfigCFG_UF.AsString;
            CEP    := dmAdmDados.cdsConfigCFG_CEP_EMPRESA.AsString;
         end; {with Endereco}

         {Dados banc�rios do cedente}
         with ContaBancaria do
         begin
              Banco.Codigo  := dmAdmDados.cdsbancosBAN_NRBANC.AsString;
              CodigoAgencia := dmAdmDados.cdsbancosBAN_NRAGEN.AsString;
              DigitoAgencia := dmAdmDados.cdsbancosBAN_DVAGEN.AsString;
              NumeroConta    := dmAdmDados.cdsbancosBAN_NRCONT.AsString;
             //
             If (Banco.Codigo = '000') Then
                 Banco.Codigo := '104';
         end; {with Banco}
      end; {with Cedente}

     //Dados do sacado do t�tulo
      with Sacado do
      begin
         if not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_CPF.AsString) Then
            NumeroCPFCGC := dmAdmDados.cdsClientesCLI_CPF.AsString;
         //
         if not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_CGC.AsString) and uFuncoes.Empty(dmAdmDados.cdsClientesCLI_CPF.AsString) Then
            NumeroCPFCGC := dmAdmDados.cdsClientesCLI_CGC.AsString;
         //
         Nome := dmAdmDados.cdsClientesCLI_NOME.AsString;
         //Endere�o do sacado do t�tulo
         with Endereco do
         begin
            Rua         := dmAdmDados.cdsClientesCLI_ENDERECO.AsString;
            Complemento := '';
            Bairro      := dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
            Cidade      := dmAdmDados.cdsClientesCLI_CIDADE.AsString;
            Estado      := dmAdmDados.cdsClientesCLI_UFCLIE.AsString;
         end; //with Endereco

      end; //with Sacado
      //
   end; //with Titulo
end;

procedure TdmRelatorios.cdsConsultaCotaCalcFields(DataSet: TDataSet);
begin
   If (cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
   begin
     // Taxa adm
     If (cdsConsultaCotaCOT_TAXA_ADM.AsFloat > 0) Then
        cdsConsultaCotaREC_TAXADM_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsConsultaCotaREC_VLPARC.AsFloat, cdsConsultaCotaCOT_TAXA_ADM.AsFloat)
     Else
        cdsConsultaCotaREC_TAXADM_CALC.AsFloat := 0;
     // Taxa fundo
     If (cdsConsultaCotaCOT_FUNDORES.AsFloat > 0) Then
        cdsConsultaCotaREC_TXFUND_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsConsultaCotaREC_VLPARC.AsFloat, cdsConsultaCotaCOT_FUNDORES.AsFloat)
     Else
        cdsConsultaCotaREC_TXFUND_CALC.AsFloat := 0;
     //    Tota a Pagar
     if (cdsConsultaCotaREC_VLPARC.AsFloat > 0) Then
        cdsConsultaCotaREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar(
             cdsConsultaCotaREC_VLPARC.AsFloat +
             cdsConsultaCotaREC_TAXADM_CALC.AsFloat +
             cdsConsultaCotaREC_TXFUND_CALC.AsFloat,2)
      Else
          cdsConsultaCotaREC_TOTAL_CALC.AsFloat :=
             cdsConsultaCotaREC_VLPARC.AsFloat;
      // Valor do titulo
      //If (cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat > 0) Then
           cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat :=
               (cdsConsultaCotaREC_TOTAL_CALC.AsFloat - cdsConsultaCotaREC_CREDITO.AsFloat) +
               cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat;
   End
   Else
   begin
       cdsConsultaCotaREC_TOTAL_CALC.AsFloat := cdsConsultaCotaREC_VLPARC.AsFloat;
       cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat := cdsConsultaCotaREC_TOTAL_CALC.AsFloat;
   End;
      {Else
          cdsConsultaCotaREC_VALORTITULOTITULO.AsFloat :=
              cdsConsultaCotaREC_TOTAL_CALC.AsFloat;}
end;

procedure TdmRelatorios.DataModuleCreate(Sender: TObject);
begin
     rvBoleto.ProjectFile             := ExtractFilePath( Application.ExeName )+'\Relatorios\rvBoletoNovo.rav';
     RvBoletoCarne.ProjectFile        := ExtractFilePath( Application.ExeName )+'\Relatorios\rvBoletoCarne.rav';
     rvEnvelopes.ProjectFile          := ExtractFilePath( Application.ExeName )+'\Relatorios\prvEnvelopes.rav';
     rvClientes.ProjectFile           := ExtractFilePath( Application.ExeName )+'\Relatorios\rvListaGrupo.rav';
     rvpClientesPagas.ProjectFile     := ExtractFilePath( Application.ExeName )+'\Relatorios\rvParcelasPagas.rav';
     rvpClientesAtrasados.ProjectFile := ExtractFilePath( Application.ExeName )+'\Relatorios\rvClientesAtrasadasNovo.rav';
end;

procedure TdmRelatorios.RvSystem1Print(Sender: TObject);
begin
     {RPDev.Orientation := poPortrait;
     RVSystem1.SystemPrinter.Orientation   := RPDev.Orientation;
     RPDev.SetPaperSize(DMPAPER_A4,0,0);
     RPDev.SelectPaper('A4 small sheet, 210- by 297-millimeters',false);}
end;

procedure TdmRelatorios.AddDadosLance(aVenda, aGrupo, aCota,
  aParcela: integer; aTipoHis: String; aDataVenc, aDataPago: TDate; aValor,
  aPago: Double);
begin
      if not (cdsReciboLances2.Active) Then
       begin
           cdsReciboLances2.Open;
           cdsReciboLances2.EmptyDataSet;
       End;
      //
      With cdsReciboLances2 do
        begin
             Append;
             FieldByName('VENDA').AsInteger := aVenda;
             FieldByName('GRUPO').AsInteger := aGrupo;
             FieldByName('COTA').AsInteger  := aCota;
             FieldByName('PARCELA').AsInteger := aParcela;
             if (aTipoHis = 'CL') Then
                 FieldByName('HISTORICO').AsString := 'Cr�dito em Lance';
             if (aTipoHis = 'BL') Then
                 FieldByName('HISTORICO').AsString := 'Baixa p/ Lance';
             FieldByName('DTVENC').AsDateTime := aDataVenc;
             FieldByName('DTPAGA').AsDateTime := aDataPago;
             FieldByName('VALOR_PARCELA').AsFloat := aValor;
             FieldByName('TOT_PAGO').AsFloat  := aPago;  
             //
             Post;
        End;
end;

procedure TdmRelatorios.Imprime_Caixa(iCaixa, iInicial, iFinal: Integer; aVia : String);
Var
    // Vari�vel da classe TVDODmPrinter que far� o relat�rio
    VDOImpressora : TVDODmPrinter;
    M_QTCARA, M_POSINI : Integer;
    M_TOENTR, M_TOSAID, M_TOPAGA : Double;
begin
    try
         VDOImpressora := TVDODmPrinter.Create(nil);
         VDOImpressora.Title := 'Visualizar Impress�o';
         VDOImpressora.ShowPreview       := True;
         VDOImpressora.ShowProgress      := True;
         VDOImpressora.Font.Size         := fsCondensed;
         M_QTCARA := 159;
         M_POSINI := 0;
         M_TOENTR := 0;
         M_TOSAID := 0;
         M_TOPAGA := 0;
         //
         uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
         //
         With VDOImpressora do
         Begin
              BeginDoc;
              //
              Font.Size  := fsCondensed;
              Font.Style := [];
              { salta duas linhas}
              NewLine(2);
              { Imprime e alinhado � esquerda dentro de uma �rea de 52 caracteres}
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('*',48 )]), True);
              { Imprime a string "Cupom ", alinhado � esquerda"-" dentro de uma �rea de trita caracteres}
              Font.Style := [fsDmBold];
              if (aVia = '1') Then
                  Print(M_POSINI, Format('%-48s', [uFuncoes.PadC('FECHAMENTO DE CAIXA',48)]), True)
              Else
                  Print(M_POSINI, Format('%-48s', [uFuncoes.PadC('FECHAMENTO DE CAIXA - 2� VIA',48)]), True);
              Font.Style := [];
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('*',48 )]), True);
              { Imprime o nome da Loja}
              Print(M_POSINI, Format('%-48s', [uFuncoes.PadC(dmAdmDados.cdsConfig.FieldByName('CFG_NOMEEMPRESA').AsString,48)]), True);
              Print(M_POSINI, Format('%-48s', [uFuncoes.PadC(dmAdmDados.cdsConfig.FieldByName('CFG_ENDERECO').AsString,48)]), True);
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('*',48 )]), True);
              Print(M_POSINI, Format('%-48s', ['Registro Inicial: '+uFuncoes.StrZero(InttoStr(iInicial),10)]), True);
              Print(M_POSINI, Format('%-48s', ['Registro Final..: '+uFuncoes.StrZero(InttoStr(iFinal),10)]), True);
              Print(M_POSINI, Format('%-48s', ['Data Abertura...: '+dmPesquisas.cdsCaixaCAI_DTABERTURA.AsString   + ' Hora Abert.: '+dmPesquisas.cdsCaixaCAI_HOABERTURA.AsString]), True);
              Print(M_POSINI, Format('%-48s', ['Data Fechamento.: '+dmPesquisas.cdsCaixaCAI_DTFECHAMENTO.AsString + ' Hora Fecha.: '+dmPesquisas.cdsCaixaCAI_HOFECHAMENTO.AsString]), True);
              Print(M_POSINI, Format('%-48s', ['Caixa...........: '+dmAdmDados.GetNomeCaixa(dmPesquisas.cdsCaixaCAI_CAIXA.AsInteger)]), True);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('*',48 )]), True);
              //
              dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'A');
              Print(M_POSINI, Format('%-38s', ['>> VALOR INICIAL..............:']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]), True);
              NewLine(2);
              // PAGAMENTO DE PARCELA
              if (Parcelas_Pagas_Caixa(iCaixa, iInicial, iFinal)) Then
                begin
                     With cdsDetalheFecharCaixa do
                      begin
                           Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
                           Print(M_POSINI, Format('%-48s', ['PARCELAS PAGAS']), True);
                           Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
                           Font.Style := [fsDmBold];
                           Print(M_POSINI, Format('%-6s', ['GRUPO']), False);
                           Print(M_POSINI, Format('%-5s', ['COTA ']), False);
                           Print(M_POSINI, Format('%-6s', ['PARC.']), False);
                           Print(M_POSINI, Format('%-21s',['CLIENTE']), False);
                           Print(M_POSINI, Format('%10s', ['VALOR']), true);
                           Font.Style := [];
                           Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
                           //
                           First;
                           While not (Eof) do
                            begin
                                 Print(M_POSINI, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]), False);
                                 Print(M_POSINI, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]), False);
                                 Print(M_POSINI, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]), False);
                                 Print(M_POSINI, Format('%-21s',[Copy(FieldByName('CLI_NOME').AsString,1,20)]), False);
                                 Print(M_POSINI, Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]), true);
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                End;
              //
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
              dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'P');
              Print(M_POSINI, Format('%-38s', ['TOTAL..........................:']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]), True);
              NewLine();
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-48s', ['>> RESUMO <<']),true);
              Font.Style := [];
              NewLine();
              Print(M_POSINI, Format('%-38s', ['PAGAMENTO DE PARCELA.........:']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]), True);
              NewLine();
              M_TOPAGA := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
              // Entradas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'E')) Then
              begin
                  NewLine();
                  Font.Style := [fsDmBold];
                  Print(M_POSINI, Format('%-48s', ['>> ENTRADAS']), True);
                  Font.Style := [];
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Print(M_POSINI, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Print(M_POSINI, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]), True);
                           M_TOENTR := M_TOENTR + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              // Saidas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'S')) Then
              begin
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      NewLine();
                      Font.Style := [fsDmBold];
                      Print(M_POSINI, Format('%-48s', ['>> SAIDAS']), True);
                      Font.Style := [];
                      First;
                      While not (Eof) do
                      begin
                           Print(M_POSINI, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Print(M_POSINI, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]), True);
                           M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              //
              NewLine();
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
              NewLine(2);
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-48s', ['>> RECEBIMENTO DE PARCELA <<']),true);
              Font.Style := [];
              Print(M_POSINI, Format('%-38s', ['TOTAL RECEBIMENTO ==> ']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',M_TOPAGA)]), True);
              NewLine();
              //
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-48s', ['>> ENTRADAS << ']),true);
              Font.Style := [];
              Print(M_POSINI, Format('%-38s', ['TOTAL ENTRADAS ==> ']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',M_TOENTR)]), True);
              NewLine();
              //
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-48s', ['>> SAIDAS <<']),true);
              Font.Style := [];
              Print(M_POSINI, Format('%-38s', ['TOTAL SAIDAS   ==> ']));
              Print(M_POSINI, Format('%10s',  [FormatFloat('###,##0.#0',M_TOSAID)]), True);
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-33s', ['TOTAL  ==>']),False);
              Print(M_POSINI, Format('%15s',  [FormatFloat('###,###,##0.#0', (M_TOPAGA + M_TOENTR) - M_TOSAID)]), True);
              Font.Style := [];
              NewLine(2);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Print(M_POSINI, Format('%-48s', [uFuncoes.Replicate('=',48 )]), True);
              NewLine(2);
              Font.Style := [fsDmBold];
              Print(M_POSINI, Format('%-48s', ['>> MODALIDADES <<']),true);
              Font.Style := [];
              NewLine();
              //
              if (dmPesquisas.GetMovCaixaModalidades(iCaixa, iInicial, iFinal, 'P')) Then
              begin
                  With dmPesquisas.cdsMovModalidade do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Print(M_POSINI, Format('%-38s',[FieldByName('MOD_NOME').AsString +' : ']));
                           Print(M_POSINI, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsMovModalidadeVALOR.AsFloat)]), True);
                           //M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              //
              NewLine(4);
              //
              EndDoc;
              FreeAndNil(VDOImpressora);
         End;   // fim-with VDOImpressora
   Finally

   End;
end;

function TdmRelatorios.Parcelas_Pagas_Caixa(iCaixa, iInicial,
  iFinal: Integer): Boolean;
begin
     Result := False;
     With cdsDetalheFecharCaixa do
      begin
           Close;
           Params.ParamByName('pCAIXA').AsInteger := iCaixa;
           Params.ParamByName('pINICIO').AsInteger := iInicial;
           Params.ParamByName('pFINAL').AsInteger := iFinal;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
      End;
end;

function TdmRelatorios.Situacao_Caixa(iCaixa: Integer): boolean;
Var
   IMPRESSORA : TextFile;
   aDescricao : String;
   iRegInicial, iRegFinal, CONTADOR : integer;
   aValorInicial, M_TOPAGA, M_TOENTR, M_TOSAID, M_TOESTO : double;
   W_TOCANC : double;
   M_TORECE, M_TOCANC, M_TOMODA, M_MODASA, W_TOCRED, M_ESTORNO_CREDITO : Double;
   M_TOCTPG, M_TOCTPG_ESTORNO, M_TOTAL_CP, M_TOTAL_CP_ESTORNO : Double;
begin
    M_TORECE := 0;
    M_TOCANC := 0;
    W_TOCRED := 0;
    //
    Try
       {Relaciona a vari�vel impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, 'NN.TXT');
       {abre a porta da impress�o }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impress�o}
       Write(IMPRESSORA);
       { salta duas linhas}
       Writeln(impressora);
       Writeln(Impressora);
       Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('-',48)]));
       // Caixa
       With cdsConsulta do
        begin
             Close;
             CommandText := 'Select * from CAIXA Where (CAI_CAIXA = :pCAIXA) and (CAI_SITUACAO = '+QuotedStr('A') +')';
             Params.ParamByName('pCAIXA').AsInteger := iCaixa;
             open;
             //
             If not (IsEmpty) Then
              begin
                   iRegInicial   := FieldByName('CAI_RGINICIAL').AsInteger;
                   iRegFinal     := 99999999;
                   //
                   uFuncoes.FilterCDS(dmPesquisas.cdsMovCaixa, fsInteger, InttoStr(iRegInicial));
                   //
                   if not (dmPesquisas.cdsMovCaixa.IsEmpty) Then
                    begin
                         aValorInicial :=  dmPesquisas.cdsMovCaixaMCA_VLMODALIDADE.AsFloat;
                         Write  (Impressora, Format('%-38s', ['>> VALOR INICIAL..............:']));
                         Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0', aValorInicial)]));
                    End;
              //
              Writeln(Impressora);
              Writeln(Impressora);
              if (Parcelas_Pagas_Caixa(iCaixa, iRegInicial, iRegFinal)) Then
                begin
                     With cdsDetalheFecharCaixa do
                      begin
                           Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(Impressora, Format('%-48s', ['PARCELAS PAGAS']));
                           Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
                           Write  (Impressora, Format('%-6s', ['GRUPO']));
                           Write  (Impressora, Format('%-5s', ['COTA ']));
                           Write  (Impressora, Format('%-6s', ['PARC.']));
                           Write  (Impressora, Format('%-21s',['CLIENTE']));
                           Writeln(Impressora, Format('%10s', ['VALOR']));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write  (Impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write  (Impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write  (Impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write  (Impressora, Format('%-21s',[Copy(uFuncoes.RemoveAcentos(FieldByName('CLI_NOME').AsString),1,20)]));
                                 Writeln(Impressora, Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'P');
                            //
                            Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
                            Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                            Write  (Impressora, Format('%-38s', ['TOTAL == >']));
                            Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                            M_TORECE := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                            //
                            Close;
                      End;
                End;
                Writeln(impressora);
                //Writeln(impressora);
              // novo 13/11/2008 creditos
              if (Parcelas_Credito_Caixa(iCaixa, iRegInicial, iRegFinal)) Then
                begin
                     //
                     With cdsMovCredito do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CREDITO DE PARCELAS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-6s', ['GRUPO']));
                           Write  (impressora, Format('%-5s', ['COTA ']));
                           Write  (impressora, Format('%-6s', ['PARC.']));
                           Write  (impressora, Format('%-21s',['CLIENTE']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write (impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write (impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-21s',[Copy(uFuncoes.RemoveAcentos(FieldByName('CLI_NOME').AsString),1,20)]));
                                 Writeln(impressora,Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                            Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                            dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'C');
                            Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                            //
                            Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                            Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                            W_TOCRED := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                            Writeln(impressora);
                            Writeln(impressora);
                      End;
                End;
              // novo estorno
              // ESTORNO DE PARCELA
              if (Parcelas_Estornadas_Caixa(iCaixa, iRegInicial, iRegFinal)) Then
                begin
                     With cdsMovEstorno do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['PARCELAS ESTORNADAS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-6s', ['GRUPO']));
                           Write  (impressora, Format('%-5s', ['COTA ']));
                           Write  (impressora, Format('%-6s', ['PARC.']));
                           Write  (impressora, Format('%-21s',['CLIENTE']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write (impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write (impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-21s',[Copy(uFuncoes.RemoveAcentos(FieldByName('CLI_NOME').AsString),1,20)]));
                                 Writeln(impressora,Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'T');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                      W_TOCANC := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      M_TOCANC := W_TOCANC;
                      Writeln(impressora);
                      Writeln(impressora);
                End;
              // novo Contas a Pagar - PAGAS
              if (Parcelas_ContaPagar_Caixa(iCaixa, iRegInicial, iRegFinal, 'G')) Then
                begin
                     With cdsMovContaPagar do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CONTAS PAGAR']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-10s',['N.NOTA']));
                           Write  (impressora, Format('%-5s', ['SERIE ']));
                           Write  (impressora, Format('%-4s', ['PC']));
                           Write  (impressora, Format('%-17s',['FORNECEDOR']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-10s', [FieldByName('PAG_NRNOTA').AsString]));
                                 Write (impressora, Format('%-5s',  [FieldByName('PAG_SERIENOTA').AsString]));
                                 Write (impressora, Format('%-4s',  [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-17s', [Copy(FieldByName('FOR_RAZAO').AsString,1,17)]));
                                 Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      //
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'G');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      M_TOCTPG := 0;
                      dmPesquisas.cdsDetalheMovCaixa.First;
                      While not (dmPesquisas.cdsDetalheMovCaixa.Eof) do
                      begin
                           M_TOCTPG := M_TOCTPG + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           //
                           dmPesquisas.cdsDetalheMovCaixa.Next;
                      End;
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',M_TOCTPG)]));
                      //M_TOCTPG := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      //M_TOCTPG := M_TOCTPG;
                      Writeln(impressora);
                End;
              //
              Writeln(impressora);
              // Contas a Pagar - PAGAS - ESTORNO
              if (Parcelas_ContaPagar_Caixa(iCaixa, iRegInicial, iRegFinal, 'N')) Then
                begin
                     With cdsMovContaPagar do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CONTAS PAGAR - ESTORNOS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-10s',['N.NOTA']));
                           Write  (impressora, Format('%-5s', ['SERIE ']));
                           Write  (impressora, Format('%-4s', ['PC']));
                           Write  (impressora, Format('%-17s',['FORNECEDOR']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-10s', [FieldByName('PAG_NRNOTA').AsString]));
                                 Write (impressora, Format('%-5s',  [FieldByName('PAG_SERIENOTA').AsString]));
                                 Write (impressora, Format('%-4s',  [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-17s', [Copy(FieldByName('FOR_RAZAO').AsString,1,17)]));
                                 Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      //
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'N');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      M_TOCTPG_ESTORNO := 0;
                      dmPesquisas.cdsDetalheMovCaixa.First;
                      While not (dmPesquisas.cdsDetalheMovCaixa.Eof) do
                      begin
                           M_TOCTPG_ESTORNO := M_TOCTPG_ESTORNO + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           //
                           dmPesquisas.cdsDetalheMovCaixa.Next;
                      End;
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',M_TOCTPG_ESTORNO)]));
                      //M_TOCTPG := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      //M_TOCTPG := M_TOCTPG;
                      Writeln(impressora);
                End;
              //
              dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'P');
              Writeln(Impressora);
              Writeln(Impressora);
              Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['>> RESUMO <<']));
              Writeln(Impressora);
              Write  (Impressora, Format('%-38s', ['PAGAMENTO DE PARCELA.........:']));
              M_TORECE := M_TORECE - M_TOCANC;
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TORECE)]));
              //Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
              Writeln(Impressora);
              M_TOPAGA := M_TORECE;
              //dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
              // Estorno de parcelas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'T')) Then
              begin
                  Writeln(impressora);
                  Writeln(impressora,Format('%-48s', ['>> ESTORNO DE PARCELAS']));
                  M_TOESTO := 0;
                  //
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOESTO := M_TOESTO + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              //
              M_ESTORNO_CREDITO := 0;
              // Entradas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'E')) Then
              begin
                  Writeln(Impressora);
                  Writeln(Impressora, Format('%-48s', ['>> ENTRADAS']));
                  //
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (Impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(Impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOENTR := M_TOENTR + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              // Saidas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iRegInicial, iRegFinal, 'S')) Then
              begin
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      Writeln(Impressora);
                      Writeln(Impressora, Format('%-48s', ['>> SAIDAS']));
                      First;
                      While not (Eof) do
                      begin
                           Write  (Impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(Impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              //
              Writeln(Impressora);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
              Writeln(Impressora);
              Writeln(Impressora);
              //
              Writeln(Impressora, Format('%-48s', ['(+) >> RECEBIMENTO DE PARCELA <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL RECEBIMENTO ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOPAGA)]));
              Writeln(Impressora);
              //                    13/11/2008
              Write  (impressora, Format('%-38s', ['TOTAL CREDITO     ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0', W_TOCRED)]));
              //Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOPAGA)]));
              Writeln(impressora);
              Writeln(Impressora, Format('%-48s', ['(-) >> ESTORNO DE PARCELA <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL ESTORNO ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOESTO)]));
              Writeln(Impressora);
              //
              M_ESTORNO_CREDITO := dmAdmDados.GetTotalEstornoCredito( iCaixa, iRegInicial, iRegFinal);
              {Writeln(Impressora, Format('%-48s', ['(-) >> ESTORNO DE CREDITO PARCELA <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL ESTORNO ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_ESTORNO_CREDITO)]));
              Writeln(Impressora);  }
              //
              Writeln(Impressora, Format('%-48s', ['(+) >> ENTRADAS <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL ENTRADAS ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOENTR)]));
              Writeln(Impressora);
              //
              Writeln(Impressora, Format('%-48s', ['(-) >> SAIDAS <<']));
              Write (Impressora, Format('%-38s', ['TOTAL SAIDAS   ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOSAID)]));
              //
              {Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['(-) >> CONTAS PAGAS <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL CONTAS PAGAS   ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOCTPG)]));
              //
              Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['(+) >> CONTAS PAGAS - ESTORNOS <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL CT PAGAS ESTORNOS   ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOCTPG_ESTORNO)]));  }
              //
              Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
              Write  (Impressora, Format('%-33s', ['TOTAL  ==>']));
              Writeln(Impressora, Format('%15s',  [FormatFloat('###,###,##0.#0', (((M_TOPAGA + M_TOENTR + W_TOCRED - M_ESTORNO_CREDITO + M_TOCTPG_ESTORNO) - M_TOSAID) - M_TOCTPG))]));
              //Writeln(Impressora, Format('%15s',  [FormatFloat('###,###,##0.#0', ((M_TOPAGA + M_TOENTR)-M_TOESTO) - M_TOSAID)]));
              //
              Writeln(Impressora);
              Writeln(Impressora);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(Impressora, Format('%-48s', [Replicate('=',48 )]));
              Writeln(Impressora);
              Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['>> TOTAL DAS MODALIDADES <<']));
              Writeln(Impressora);
              //
              {if (dmPesquisas.GetMovCaixaModalidades(iCaixa, iRegInicial, iRegFinal, 'P')) Then
              begin
                  With dmPesquisas.cdsMovModalidade do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (Impressora, Format('%-38s',[FieldByName('MOD_NOME').AsString +' : ']));
                           Writeln(Impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsMovModalidadeVALOR.AsFloat)]));
                           //M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;}
              // novo
              Total_Modalidades;
              //
              Writeln(Impressora);
              Writeln(Impressora);
              //
              With cdsModalidades do   // cdsModalidades
              begin
                First;
                While not Eof  do
                 begin
                      M_TOMODA := 0;
                      M_MODASA := 0;
                      M_TOTAL_CP := 0;
                      M_TOTAL_CP_ESTORNO := 0;
                      M_TOMODA := dmPesquisas.GetMovCaixaModalidades2(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                            iRegInicial, iRegFinal, 'P', 'E', 'E');
                      //
                      M_MODASA := dmPesquisas.GetMovCaixaModalidades2(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                            iRegInicial, iRegFinal, 'S', 'T', 'S');
                      //
                      M_TOTAL_CP := dmPesquisas.GetMovCaixaModalidades2ContaPagar(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                             iRegInicial, iRegFinal, 'G', 'S');
                      M_TOTAL_CP_ESTORNO := dmPesquisas.GetMovCaixaModalidades2ContaPagar(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                             iRegInicial, iRegFinal, 'N', 'E');
                      //
                      M_TOMODA := M_TOMODA + M_TOTAL_CP_ESTORNO;
                      M_MODASA := M_MODASA + M_TOTAL_CP;
                      //
                      If (M_TOMODA > 0) or (M_MODASA > 0) Then
                        begin
                            Write  (Impressora, Format('%-38s', [FieldByName('MOD_NOME').AsString+' : ']));
                            If (FieldByName('MOD_CODIGO').AsInteger = 1) Then
                                Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0', M_TOMODA - M_MODASA - M_ESTORNO_CREDITO)]))   // - M_TOTAL_CP + M_TOTAL_CP_ESTORNO
                            Else
                            begin
                                 Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0', M_TOMODA - M_MODASA )]));   // ) - M_TOTAL_CP + M_TOTAL_CP_ESTORNO
                            End;
                        End;
                      //
                      Next;
                 End;
              End;   // cdsModalidades
           End;
        End;
        //
        Writeln(Impressora);
        Writeln(Impressora);
        Writeln(Impressora, Format('%-48s', [Replicate('*',48 )]));
        Result := True;
   finally
          { Fecha a porta de impress�o}
           System.Close(Impressora);
   end;
end;

procedure TdmRelatorios.Imprime_Caixa2(iCaixa, iInicial, iFinal, iSeqInicio, iSeqFinal: Integer;
  aVia: String);
Var
    M_QTCARA, M_POSINI, I : Integer;
    M_TOENTR, M_TOSAID, M_TOPAGA, M_TOESTO : Double;
    CONTADOR:Integer;
    IMPRESSORA:TextFile;
    aDescricao, aNomeDispositivo : String;
    W_TORECE, W_TOCANC, M_TOMODA, M_MODASA, W_TOCRED,  M_ESTORNO_CREDITO : Double;
    M_TOCTPG, M_TOCTPG_ESTORNO, M_TOTAL_CP, M_TOTAL_CP_ESTORNO : Double;
begin
   //
   aNomeDispositivo := dmAdmDados.GetDispositivoImpUsuario(iCaixa);
   //dmAdmDados.GetNomeDispositivo();
   //
   try
         M_QTCARA := 159;
         M_POSINI := 0;
         M_TOENTR := 0;
         M_TOSAID := 0;
         M_TOPAGA := 0;
         CONTADOR := 0;
         W_TORECE := 0;
         W_TOCANC := 0;
         W_TOCRED := 0;
         //
         uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
         //
             {Relaciona a vari�vel impressora com a
             lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
             //AssignFile(IMPRESSORA,'LPT1:');
             AssignFile(IMPRESSORA, aNomeDispositivo);
             {abre a porta da impress�o }
             Rewrite(IMPRESSORA);
             {envia caractere de controle para comprimir a impress�o}
             Write(IMPRESSORA);
             { salta duas linhas}
              Writeln(impressora);
              Writeln(impressora);
              { Imprime e alinhado � esquerda dentro de uma �rea de 52 caracteres}
              Writeln(impressora, Format('%-48s', [Replicate('*',48 )]));
              { Imprime a string "Cupom ", alinhado � esquerda"-" dentro de uma �rea de trita caracteres}
              if (aVia = '1') Then
                  Writeln(impressora, Format('%-48s', [uFuncoes.PadC('FECHAMENTO DE CAIXA',48)]))
              Else
                  Writeln(impressora, Format('%-48s', [uFuncoes.PadC('FECHAMENTO DE CAIXA - 2� VIA',48)]));
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(impressora, Format('%-48s', [Replicate('*',48 )]));
              { Imprime o nome da Loja}
              Writeln(impressora, Format('%-48s', [uFuncoes.PadC(dmAdmDados.cdsConfig.FieldByName('CFG_NOMEEMPRESA').AsString,48)]));
              Writeln(impressora, Format('%-48s', [uFuncoes.PadC(dmAdmDados.cdsConfig.FieldByName('CFG_ENDERECO').AsString,48)]));
              Writeln(impressora, Format('%-48s', [Replicate('*',48 )]));
              {Writeln(impressora, Format('%-48s', ['Registro Inicial: '+uFuncoes.StrZero(InttoStr(iInicial),10)]));
              Writeln(impressora, Format('%-48s', ['Registro Final..: '+uFuncoes.StrZero(InttoStr(iFinal),10)]));}
              Writeln(impressora, Format('%-48s', ['Registro Inicial: '+uFuncoes.StrZero(InttoStr(iSeqInicio),10)]));
              Writeln(impressora, Format('%-48s', ['Registro Final..: '+uFuncoes.StrZero(InttoStr(iSeqFinal),10)]));
              Writeln(impressora, Format('%-48s', ['Data Abertura...: '+dmPesquisas.cdsCaixaCAI_DTABERTURA.AsString   + ' Hora Abert.: '+dmPesquisas.cdsCaixaCAI_HOABERTURA.AsString]));
              Writeln(impressora, Format('%-48s', ['Data Fechamento.: '+dmPesquisas.cdsCaixaCAI_DTFECHAMENTO.AsString + ' Hora Fecha.: '+dmPesquisas.cdsCaixaCAI_HOFECHAMENTO.AsString]));
              Writeln(impressora, Format('%-48s', ['Caixa...........: '+dmAdmDados.GetNomeCaixa(dmPesquisas.cdsCaixaCAI_CAIXA.AsInteger)]));
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(impressora, Format('%-48s', [Replicate('*',48 )]));
              //
              dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'A');
              Write  (impressora, Format('%-38s', ['>> VALOR INICIAL..............:']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
              Writeln(impressora);
              Writeln(impressora);
              // PAGAMENTO DE PARCELA
              if (Parcelas_Pagas_Caixa(iCaixa, iInicial, iFinal)) Then
                begin
                     With cdsDetalheFecharCaixa do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['PARCELAS PAGAS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-6s', ['GRUPO']));
                           Write  (impressora, Format('%-5s', ['COTA ']));
                           Write  (impressora, Format('%-6s', ['PARC.']));
                           Write  (impressora, Format('%-21s',['CLIENTE']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write (impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write (impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-21s',[Copy(FieldByName('CLI_NOME').AsString,1,20)]));
                                 Writeln(impressora,Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                End;
              //
              Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
              dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'P');
              Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
              //
              Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
              Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
              W_TORECE := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
              Writeln(impressora);
              Writeln(impressora);
              // novo 13/11/2008 creditos
              if (Parcelas_Credito_Caixa(iCaixa, iInicial, iFinal)) Then
                begin
                     //
                     With cdsMovCredito do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CREDITO DE PARCELAS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-6s', ['GRUPO']));
                           Write  (impressora, Format('%-5s', ['COTA ']));
                           Write  (impressora, Format('%-6s', ['PARC.']));
                           Write  (impressora, Format('%-21s',['CLIENTE']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write (impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write (impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-21s',[Copy(FieldByName('CLI_NOME').AsString,1,20)]));
                                 Writeln(impressora,Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                            //
                            Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                            dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'C');
                            Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                            Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                            Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                            W_TOCRED := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      End;
                End;
              //
              Writeln(impressora);
              Writeln(impressora);
              // novo estorno
              // ESTORNO DE PARCELA
              if (Parcelas_Estornadas_Caixa(iCaixa, iInicial, iFinal)) Then
                begin
                     With cdsMovEstorno do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['PARCELAS ESTORNADAS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-6s', ['GRUPO']));
                           Write  (impressora, Format('%-5s', ['COTA ']));
                           Write  (impressora, Format('%-6s', ['PARC.']));
                           Write  (impressora, Format('%-21s',['CLIENTE']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-6s', [FieldByName('COT_CDGRUPO').AsString]));
                                 Write (impressora, Format('%-5s', [FieldByName('COT_NRCOTA').AsString]));
                                 Write (impressora, Format('%-6s', [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-21s',[Copy(FieldByName('CLI_NOME').AsString,1,20)]));
                                 Writeln(impressora,Format('%10s', [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'T');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                      W_TOCANC := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      Writeln(impressora);
                End;
              //
              M_ESTORNO_CREDITO := dmAdmDados.GetTotalEstornoCredito( iCaixa, iInicial, iFinal);
              //
              Writeln(impressora);
              Writeln(impressora);
              Writeln(impressora, Format('%-48s', ['>> RESUMO <<']));
              Writeln(impressora);
              W_TORECE := W_TORECE - W_TOCANC;
              Write  (impressora, Format('%-38s', ['PAGAMENTO DE PARCELA.........:']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0', W_TORECE)]));
              //Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
              Writeln(impressora);
              M_TOPAGA := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
              // Estorno de parcelas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'T')) Then
              begin
                  Writeln(impressora);
                  Writeln(impressora,Format('%-48s', ['>> ESTORNO DE PARCELAS']));
                  //
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOESTO := M_TOESTO + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              // Entradas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'E')) Then
              begin
                  Writeln(impressora);
                  Writeln(impressora,Format('%-48s', ['>> ENTRADAS']));
                  //
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOENTR := M_TOENTR + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              // Saidas
              if (dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'S')) Then
              begin
                  With dmPesquisas.cdsDetalheMovCaixa do
                  begin
                      Writeln(impressora);
                      //
                      Writeln(impressora, Format('%-48s', ['>> SAIDAS']));
                      //
                      First;
                      While not (Eof) do
                      begin
                           Write  (impressora, Format('%-38s', [FieldByName('NAT_NOME').AsString +' : ']));
                           Writeln(impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat)]));
                           M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;
              //
              Writeln(impressora);
              // novo Contas a Pagar - PAGAS
              if (Parcelas_ContaPagar_Caixa(iCaixa, iInicial, iFinal, 'G')) Then
                begin
                     With cdsMovContaPagar do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CONTAS PAGAR']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-10s',['N.NOTA']));
                           Write  (impressora, Format('%-5s', ['SERIE ']));
                           Write  (impressora, Format('%-4s', ['PC']));
                           Write  (impressora, Format('%-17s',['FORNECEDOR']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-10s', [FieldByName('PAG_NRNOTA').AsString]));
                                 Write (impressora, Format('%-5s',  [FieldByName('PAG_SERIENOTA').AsString]));
                                 Write (impressora, Format('%-4s',  [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-17s', [Copy(FieldByName('FOR_RAZAO').AsString,1,17)]));
                                 Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      //
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'G');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      M_TOCTPG := 0;
                      dmPesquisas.cdsDetalheMovCaixa.First;
                      While not (dmPesquisas.cdsDetalheMovCaixa.Eof) do
                      begin
                           M_TOCTPG := M_TOCTPG + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           //
                           dmPesquisas.cdsDetalheMovCaixa.Next;
                      End;
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',M_TOCTPG)]));
                      //M_TOCTPG := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      //M_TOCTPG := M_TOCTPG;
                      Writeln(impressora);
                End;
              //
              Writeln(impressora);
              Writeln(impressora);
              // Contas a Pagar - PAGAS - ESTORNO
              if (Parcelas_ContaPagar_Caixa(iCaixa, iInicial, iFinal, 'N')) Then
                begin
                     With cdsMovContaPagar do
                      begin
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           Writeln(impressora, Format('%-48s', ['CONTAS PAGAR - ESTORNOS']));
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           Write  (impressora, Format('%-10s',['N.NOTA']));
                           Write  (impressora, Format('%-5s', ['SERIE ']));
                           Write  (impressora, Format('%-4s', ['PC']));
                           Write  (impressora, Format('%-17s',['FORNECEDOR']));
                           Writeln(impressora, Format('%10s', ['VALOR']));
                           //
                           Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                           //
                           First;
                           CONTADOR := 0;
                           While not (Eof) do
                            begin
                                 Write (impressora, Format('%-10s', [FieldByName('PAG_NRNOTA').AsString]));
                                 Write (impressora, Format('%-5s',  [FieldByName('PAG_SERIENOTA').AsString]));
                                 Write (impressora, Format('%-4s',  [FieldByName('MCA_NRPARC').AsString]));
                                 Write (impressora, Format('%-17s', [Copy(FieldByName('FOR_RAZAO').AsString,1,17)]));
                                 Writeln(impressora,Format('%10s',  [FormatFloat('###,##0.#0',FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                                 CONTADOR := CONTADOR + 1;
                                 //
                                 Next;
                            End;
                            //
                            Close;
                      End;
                      //
                      // Rodap� estorno
                      Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
                      dmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial, iFinal, 'N');
                      Writeln(impressora, Format('%-38s', ['REGISTRO(S) : '+InttoStr(CONTADOR)]));
                      //
                      M_TOCTPG_ESTORNO := 0;
                      dmPesquisas.cdsDetalheMovCaixa.First;
                      While not (dmPesquisas.cdsDetalheMovCaixa.Eof) do
                      begin
                           M_TOCTPG_ESTORNO := M_TOCTPG_ESTORNO + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           //
                           dmPesquisas.cdsDetalheMovCaixa.Next;
                      End;
                      Write  (impressora, Format('%-38s', ['TOTAL..........................:']));
                      Writeln(impressora,Format('%10s',   [FormatFloat('###,##0.#0',M_TOCTPG_ESTORNO)]));
                      //M_TOCTPG := dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                      //M_TOCTPG := M_TOCTPG;
                      Writeln(impressora);
                End;
              //
              Writeln(impressora);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
              Writeln(impressora);
              Writeln(impressora);
              //
              Writeln(impressora, Format('%-48s', ['(+) >> RECEBIMENTO DE PARCELA <<']));
              //
              Write  (impressora, Format('%-38s', ['TOTAL RECEBIMENTO ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',W_TORECE)]));
              //Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOPAGA)]));
              Writeln(impressora);
              //
              Write  (impressora, Format('%-38s', ['TOTAL CREDITO     ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0', W_TOCRED)]));
              //Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOPAGA)]));
              Writeln(impressora);
              //
              {Writeln(impressora, Format('%-48s', ['(-) >> ESTORNO DE PARCELA <<']));
              //
              Write  (impressora, Format('%-38s', ['TOTAL ESTORNO ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOESTO)]));
              Writeln(impressora);}
              //
              Writeln(impressora, Format('%-48s', ['(+) >> ENTRADAS <<']));
              //
              Write  (impressora, Format('%-38s', ['TOTAL ENTRADAS ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOENTR)]));
              Writeln(impressora);
              //
              Writeln(impressora, Format('%-48s', ['(-) >> SAIDAS <<']));
              Write (impressora, Format('%-38s', ['TOTAL SAIDAS   ==> ']));
              Writeln(impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOSAID)]));
              //
              {Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['(-) >> CONTAS PAGAS <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL CONTAS PAGAS   ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOCTPG)]));
              //
              Writeln(Impressora);
              Writeln(Impressora, Format('%-48s', ['(+) >> CONTAS PAGAS - ESTORNOS <<']));
              Write  (Impressora, Format('%-38s', ['TOTAL CT PAGAS ESTORNOS   ==> ']));
              Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0',M_TOCTPG_ESTORNO)])); }
              //
              Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
              Write  (impressora, Format('%-33s', ['TOTAL  ==>']));
              // 13/11/2008
              Writeln(impressora, Format('%15s',  [FormatFloat('###,###,##0.#0', (((W_TORECE + M_TOENTR + W_TOCRED - M_ESTORNO_CREDITO + M_TOCTPG_ESTORNO)  - M_TOSAID) - M_TOCTPG))]));
              //Writeln(impressora, Format('%15s',  [FormatFloat('###,###,##0.#0', ((M_TOPAGA + M_TOENTR)-M_TOESTO)  - M_TOSAID)]));
              Writeln(impressora);
              Writeln(impressora);
              Writeln(impressora);
              { Imprime e alinhado � esquerda dentro de uma �rea de 48 caracteres}
              Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
              Writeln(impressora, Format('%-48s', ['>> TOTAL DAS MODALIDADES <<']));
              Writeln(impressora, Format('%-48s', [Replicate('=',48 )]));
              Writeln(impressora);
              //
              {if (dmPesquisas.GetMovCaixaModalidades(iCaixa, iInicial, iFinal, 'P')) Then
              begin
                  With dmPesquisas.cdsMovModalidade do
                  begin
                      First;
                      While not (Eof) do
                      begin
                           Write  (impressora, Format('%-38s',[FieldByName('MOD_NOME').AsString +' : ']));
                           Writeln(impressora, Format('%10s', [FormatFloat('###,##0.#0',dmPesquisas.cdsMovModalidadeVALOR.AsFloat)]));
                           //M_TOSAID  := M_TOSAID + dmPesquisas.cdsDetalheMovCaixaVALOR.AsFloat;
                           next;
                      End;
                  End;
              End;}
              // novo
              Total_Modalidades;
              //
              With cdsModalidades do   // cdsModalidades
              begin
                First;
                While not Eof  do
                 begin
                      M_TOMODA := 0;
                      M_MODASA := 0;
                      M_TOTAL_CP := 0;
                      M_TOTAL_CP_ESTORNO := 0;
                      //
                      M_TOMODA := dmPesquisas.GetMovCaixaModalidades2(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                            iInicial, iFinal, 'P', 'E', 'E');
                      //
                      M_MODASA := dmPesquisas.GetMovCaixaModalidades2(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                            iInicial, iFinal, 'S', 'T', 'S');
                      //
                      M_TOTAL_CP := dmPesquisas.GetMovCaixaModalidades2ContaPagar(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                             iInicial, iFinal, 'G', 'S');
                      M_TOTAL_CP_ESTORNO := dmPesquisas.GetMovCaixaModalidades2ContaPagar(iCaixa, FieldByName('MOD_CODIGO').AsInteger,
                             iInicial, iFinal, 'N', 'E');
                      //
                      M_TOMODA := M_TOMODA + M_TOTAL_CP_ESTORNO;
                      M_MODASA := M_MODASA + M_TOTAL_CP;
                      //
                      If (M_TOMODA > 0)  or (M_MODASA > 0) Then
                        begin
                            Write  (Impressora, Format('%-38s', [FieldByName('MOD_NOME').AsString+' : ']));
                            If (FieldByName('MOD_CODIGO').AsInteger = 1) Then
                                Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0', (M_TOMODA - M_MODASA - M_ESTORNO_CREDITO))]))
                            Else
                                Writeln(Impressora, Format('%10s',  [FormatFloat('###,##0.#0', M_TOMODA - M_MODASA)]));
                        End;
                      //
                      Next;
                 End;
              End;   // cdsModalidades
              //
              Writeln(Impressora);
              Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
              For I := 1 to 9 do
                 Writeln(impressora);
              //
   Finally
        { Fecha a porta de impress�o}
        System.Close(Impressora);
   End;
end;

function TdmRelatorios.Parcelas_Estornadas_Caixa(iCaixa, iInicial,
  iFinal: Integer): Boolean;
begin
     Result := False;
     With cdsMovEstorno do
      begin
           Close;
           Params.ParamByName('pCAIXA').AsInteger := iCaixa;
           Params.ParamByName('pINICIO').AsInteger := iInicial;
           Params.ParamByName('pFINAL').AsInteger := iFinal;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
      End;
end;

procedure TdmRelatorios.Total_Modalidades;
begin
     With cdsModalidades do
      begin
            Active := False;
            Active := True;
      End;
end;

procedure TdmRelatorios.Gerar_Recibo(iVenda, iGrupo, iCota,
  iParcela, iSequencia, iModa : Integer; aCliente : String; fValor : Double);
Var
    M_CIDADE, M_UFEMPR, M_NRRECI : String;
begin
      // Recebemos de
      //dmRelatorios := TdmRelatorios.create ( application );
      uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
      //
      dmAdmDados.Start;
      Try
        dmAdmDados.cdsConfig.edit;
        dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger :=
            dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger + 1;
        dmAdmDados.cdsConfig.ApplyUpdates(0);
        dmAdmDados.Comit(Transc);
      Except
        dmAdmDados.Rollback;  
      End;
      //
      M_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
      M_UFEMPR := dmAdmDados.cdsConfigCFG_UF.AsString;
      M_NRRECI := uFuncoes.StrZero(dmAdmDados.cdsConfigCFG_NRRECIBO.AsString,8);
      //
      try
           With dmRelatorios do
            begin
                 Recibo_Cliente(iGrupo, iCota, iVenda, iParcela);
            end;
          //
           with dmRelatorios.ppRepRecibo do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    dmRelatorios.ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 dmRelatorios.lblRecibo.Caption := M_NRRECI;
                 dmRelatorios.lblLinha1.Caption := 'Recebemos de '+ aCliente;
                 dmRelatorios.lblLinha2.Caption := 'A import�ncia R$ '+ FormatFloat('###,##0.#0', fValor)
                                                   +' ( '+uFuncoes.extenso(fValor)+' )';
                 dmRelatorios.lblLinha3.Caption := 'Referente a pagamento de parcela do Grupo ' + inttoStr(iGrupo)+'/'+ dmAdmDados.GetNomeGrupo(iGrupo) + '  Cota ' + InttoStr(iCota) + '  relacionada abaixo:';
                 dmRelatorios.lblData.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(Date());
                 //
                 dmRelatorios.lblEmpresa.Caption := dmAdmDados.cdsConfigCFG_NOMEEMPRESA.AsString;
                 //
                 With dmRelatorios do
                  begin
                       lblLinha4.Caption := lblLinha1.Caption;
                       lblLinha5.Caption := lblLinha2.Caption;
                       lblLinha6.Caption := lblLinha3.Caption;
                       //
                       lblData2.Caption  := lblData.Caption;
                       lblEmpresa2.Caption := lblEmpresa.Caption;
                       lblRecibo2.Caption  := lblRecibo.Caption;
                       //
                       lblDinheiro.Caption := '';
                       lblValorCheque.Caption := '';
                       lblBanco.Caption    := '';
                       lblNrcheque.Caption := '';
                       //
                       lblStatusModa.Caption := '';
                       lblStatusModa2.Caption := lblStatusModa.Caption;
                       //
                     If not uFuncoes.Empty(IntToStr(iSequencia)) Then
                     begin
                       uFuncoes.FilterCDS(dmPesquisas.cdsMovCaixa, fsInteger, IntToStr(iSequencia));
                       //
                       If not (dmPesquisas.cdsMovCaixa.IsEmpty) Then
                          Begin
                               uFuncoes.FilterCDS(dmPesquisas.cdsModas, fsInteger, IntToStr(iModa));
                               //
                               lblStatusModa.Caption := 'X';
                               lblStatusModa2.Caption := lblStatusModa.Caption;
                               //
                               If (dmPesquisas.cdsModasMOD_NOME.AsString = 'CHEQUE') Then
                                begin
                                     lblValorCheque.Caption := FormatFloat('###,##0.#0',dmPesquisas.cdsMovCaixaMCA_VLMODALIDADE.AsFloat);
                                     lblBanco.Caption    := uFuncoes.StrZero(dmPesquisas.cdsMovCaixaMCA_NRBANC.AsString,3);
                                     lblNrcheque.Caption := uFuncoes.StrZero(dmPesquisas.cdsMovCaixaMCA_NRCHEQ.AsString,10);
                                     lblStatusModa.Top   := 165.365;
                                     lblStatusModa2.Top  := 65.617;
                                End
                                Else
                                Begin
                                     lblDinheiro.Caption := FormatFloat('###,##0.#0',dmPesquisas.cdsMovCaixaMCA_VLMODALIDADE.AsFloat);
                                     lblStatusModa.Top   := 158.75;
                                     lblStatusModa2.Top  := 59.002;
                                End;
                                //
                                lblDinheiro2.Caption := lblDinheiro.Caption;
                                lblValorCheque2.Caption := lblValorCheque.Caption;
                                lblNrCheque2.Caption := lblNrcheque.Caption;
                                lblBanco2.Caption    := lblBanco.Caption;
                          End;
                     End;
                  End;
                 //
                 PrintReport;
            end;
      finally

      end;
      Application.ProcessMessages;
end;

function TdmRelatorios.Parcelas_Credito_Caixa(iCaixa, iInicial,
  iFinal: Integer): Boolean;
begin
     Result := False;
     With cdsMovCredito do
      begin
           Close;
           Params.ParamByName('pCAIXA').AsInteger := iCaixa;
           Params.ParamByName('pINICIO').AsInteger := iInicial;
           Params.ParamByName('pFINAL').AsInteger := iFinal;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
      End;
end;

procedure TdmRelatorios.cdsMasterCalcFields(DataSet: TDataSet);
Var
    aPosicao, aContemplado : String;
begin
     if (cdsMaster. state in [dsInternalCalc]) Then
      Begin
           if not uFuncoes.Empty(cdsMasterCLI_NRFONE.AsString) Then
               cdsMasterFONE.AsString := uFuncoes.FormataFONE(cdsMasterCLI_NRFONE.AsString);
           //
           If (cdsMasterCOT_POSICAO.AsString = 'A') Then
                aPosicao := 'ATIVO';
           If (cdsMasterCOT_POSICAO.AsString = 'I') Then
                aPosicao := 'INATIVO';
           If (cdsMasterCOT_POSICAO.AsString = 'Q') Then
                aPosicao := 'QUITADO';
           If (cdsMasterCOT_POSICAO.AsString = 'P') Then
                aPosicao := 'INATIVO PAGO';
           If (cdsMasterCOT_POSICAO.AsString = 'R') Then
                aPosicao := 'REATIVADO';
           If (cdsMasterCOT_POSICAO.AsString = 'M') Then
                aPosicao := 'MIGRADO';
           //
           If (cdsMasterCOT_FLCONTEMPLADO.AsString = 'S') Then
               aContemplado := 'CONTEMPLADO'
           Else
               aContemplado := 'N�O-CONTEMPLADO';
           //
           cdsMasterSTATUS.AsString := aPosicao + ' - ' + aContemplado;
           cdsMasterCLI_CIDADEUF.AsString := cdsMasterCLI_CIDADE.AsString +'-'+cdsMasterCLI_UFCLIE.AsString;
      End;
end;

procedure TdmRelatorios.cdsDetalhesCalcFields(DataSet: TDataSet);
begin
     if (cdsDetalhes.state in [dsInternalCalc]) Then
      Begin
         If (cdsDetalhesREC_DTVENC.AsDateTime <= cdsDetalhesREC_DTPAGA.AsDateTime) Then
            cdsDetalhesREC_ATRASO.AsFloat :=
               cdsDetalhesREC_DTPAGA.AsDateTime - cdsDetalhesREC_DTVENC.AsDateTime
         Else
            cdsDetalhesREC_ATRASO.AsFloat := 0;
         //
         cdsDetalhesREC_VLPARC_CALC.AsFloat :=
                uFuncoes.Arredondar(cdsDetalhesREC_VLPARC.AsFloat+
                uFuncoes.Gerapercentual(cdsDetalhesREC_VLPARC.AsFloat, cdsMasterCOT_TAXA_ADM.AsFloat),2);
      End;
end;

procedure TdmRelatorios.cdsMasterAtrasadasCalcFields(DataSet: TDataSet);
begin
     if (cdsMasterAtrasadas.State in [dsInternalCalc]) Then
      begin
            //
            If not uFuncoes.Empty(cdsMasterAtrasadasCLI_NRFONE.AsString) Then
                If Length(cdsMasterAtrasadasCLI_NRFONE.AsString) = 10 Then
                   cdsMasterAtrasadasFONE.AsString := uFuncoes.FormataFONE(cdsMasterAtrasadasCLI_NRFONE.AsString);
            //cdsClientesAtrasoCORRIGIDO.AsFloat :=
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'A') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Ativo-�-Contem';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'Q') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Outros-Contemp.';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'I') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Inativo-�-Contemp.';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'P') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Outros-�-Contemp.';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'A') AND (cdsMasterAtrasadasCOT_FLCONTEMPLADO.AsString = 'S') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Ativo-Contemp.';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'V') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- Vendido';
            If (cdsMasterAtrasadasCOT_POSICAO.AsString = 'R') Then
               cdsMasterAtrasadasSTATUS.AsString := cdsMasterAtrasadasCOT_POSICAO.AsString + '- N�o Contpl.';
            //
            cdsMasterAtrasadasCOT_QTPAGAS.AsInteger :=
                       dmPesquisas.Parcelas_Pagas(cdsMasterAtrasadasCOT_CDGRUPO.AsInteger,
                                               cdsMasterAtrasadasCOT_NRCOTA.AsInteger,
                                               cdsMasterAtrasadasCOT_NRVENDA.AsInteger);
      End;
end;

procedure TdmRelatorios.cdsDetalhesAtrasadasCalcFields(DataSet: TDataSet);
Var
   M_QTMESE, iAnos,iMeses,iDias : Integer;
begin
     if (cdsDetalhesAtrasadas.State in [dsInternalCalc]) Then
      begin

           // Taxa adm
           If (cdsMasterAtrasadasCOT_TAXA_ADM.AsFloat > 0) Then
              cdsDetalhesAtrasadasREC_TAXADM_CALC.AsFloat :=
                    uFuncoes.Gerapercentual(cdsDetalhesAtrasadasREC_VLPARC.AsFloat, cdsDetalhesAtrasadasCOT_TAXA_ADM.AsFloat);
           // Taxa fundo
           If (cdsMasterAtrasadasCOT_FUNDORES.AsFloat > 0) Then
              cdsDetalhesAtrasadasREC_TXFUND_CALC.AsFloat :=
                    uFuncoes.Gerapercentual(cdsDetalhesAtrasadasREC_VLPARC.AsFloat, cdsMasterAtrasadasCOT_FUNDORES.AsFloat);
           //    Tota a Pagar
           if (cdsDetalhesAtrasadasREC_VLPARC.AsFloat > 0) Then
           begin
              cdsDetalhesAtrasadasREC_VLPARC_CALC.AsFloat :=  uFuncoes.Arredondar((
                   cdsDetalhesAtrasadasREC_VLPARC.AsFloat +
                   cdsDetalhesAtrasadasREC_TAXADM_CALC.AsFloat +
                   cdsDetalhesAtrasadasREC_TXFUND_CALC.AsFloat),2);
              //
              cdsDetalhesAtrasadasREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar((
                   cdsDetalhesAtrasadasREC_VLPARC.AsFloat +
                   cdsDetalhesAtrasadasREC_TAXADM_CALC.AsFloat +
                   cdsDetalhesAtrasadasREC_TXFUND_CALC.AsFloat) - cdsDetalhesAtrasadasREC_CREDITO.AsFloat,2);
           End;
            // Atraso
            if (cdsDetalhesAtrasadasREC_DTPAGA.IsNull) Then
               cdsDetalhesAtrasadasREC_ATRASO.AsFloat :=
                   Date() - cdsDetalhesAtrasadasREC_DTVENC.AsDateTime
            Else
               cdsDetalhesAtrasadasREC_ATRASO.AsFloat :=
                  cdsDetalhesAtrasadasREC_DTPAGA.AsDateTime - cdsDetalhesAtrasadasREC_DTVENC.AsDateTime;
            // Quant. Atrasadas
            {cdsDetalhesAtrasadasCOT_QTATRA.AsInteger :=
                dmPesquisas.Parcelas_Atrasadas(cdsMasterAtrasadasCOT_CDGRUPO.AsInteger,
                                               cdsMasterAtrasadasCOT_NRCOTA.AsInteger,
                                               cdsMasterAtrasadasCOT_NRVENDA.AsInteger);
            // Quant. Pagas
            cdsDetalhesAtrasadasCOT_QTPAGA.AsInteger := }

            //
             iMeses := MonthsBetween(cdsDetalhesAtrasadasREC_DTVENC.AsDateTime, Date());
            //
            cdsDetalhesAtrasadasREC_VALOR_DIA.AsFloat := uFuncoes.Arredondar((uFuncoes.Gerapercentual(cdsDetalhesAtrasadasREC_TOTAL_CALC.AsFloat + dmAdmDados.cdsConfigCFG_MULTA.AsFloat, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2);
            cdsDetalhesAtrasadasMULTA.AsFloat := uFuncoes.Arredondar(uFuncoes.Gerapercentual(cdsDetalhesAtrasadasREC_TOTAL_CALC.AsFloat, dmAdmDados.cdsConfigCFG_MULTA.AsFloat * iMeses),2);
            cdsDetalhesAtrasadasJUROS.AsFloat := cdsDetalhesAtrasadasREC_VALOR_DIA.AsFloat * cdsDetalhesAtrasadasREC_ATRASO.AsFloat;
            // uFuncoes.Arredondar((uFuncoes.Gerapercentual(cdsClientesAtrasoREC_TOTAL_CALC.AsFloat + dmAdmDados.cdsConfigCFG_MULTA.AsFloat, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2)
            //
            cdsDetalhesAtrasadasREC_VLCORRIGIDO.AsFloat :=
                  cdsDetalhesAtrasadasREC_TOTAL_CALC.AsFloat +
                  cdsDetalhesAtrasadasMULTA.AsFloat +
                  cdsDetalhesAtrasadasJUROS.AsFloat;
      End;
end;

function TdmRelatorios.Parcelas_ContaPagar_Caixa(iCaixa, iInicial,
  iFinal: Integer; aTipoMov: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := '';
  //
  With cdsMovContaPagar do
  begin
       Close;
       Params.ParamByName('pCAIXA').AsInteger  := iCaixa;
       Params.ParamByName('pINICIO').AsInteger := iInicial;
       Params.ParamByName('pFINAL').AsInteger  := iFinal;
       Params.ParamByName('pTIPOMOV').AsString := aTipoMov;
       Open;
       if not (IsEmpty) Then
          Result := true;
   end;
end;

end.

