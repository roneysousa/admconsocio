unit udmAdmDados;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider,
  Controls, Windows, Messages, Forms,StdCtrls, DBTables, inifiles;

type
  TdmAdmDados = class(TDataModule)
    sqlConn: TSQLConnection;
    dstBancos: TSQLDataSet;
    dstClientes: TSQLDataSet;
    dstGrupos: TSQLDataSet;
    dstModelos: TSQLDataSet;
    dstBancosBAN_CODIGO: TIntegerField;
    dstBancosBAN_NOME: TStringField;
    dstBancosBAN_NRBANC: TIntegerField;
    dstBancosBAN_DVNRBA: TStringField;
    dstBancosBAN_NRAGEN: TIntegerField;
    dstBancosBAN_DVAGEN: TIntegerField;
    dstBancosBAN_NRCONT: TStringField;
    dstBancosBAN_DVCONT: TIntegerField;
    dstBancosBAN_CIDADE: TStringField;
    dstBancosBAN_CARTEIRA: TStringField;
    dstBancosBAN_VARIACAO: TStringField;
    dstBancosBAN_CONVENIO: TIntegerField;
    dstBancosBAN_NOSSONUMERO: TIntegerField;
    dstBancosBAN_FORMA_CALC: TIntegerField;
    dstBancosBAN_ESPECIEMOEDA: TStringField;
    dstBancosBAN_MARGE_LOGOMARCA: TIntegerField;
    dstBancosBAN_ARQLOGOMARCA: TStringField;
    dstBancosBAN_LOGOMARCA: TBlobField;
    dstBancosBAN_DAtAFATORVENC: TDateField;
    dstBancosBAN_MASCRETORNO: TStringField;
    dstBancosBAN_TARIFABANCO: TFMTBCDField;
    dspBancos: TDataSetProvider;
    cdsbancos: TClientDataSet;
    cdsbancosBAN_CODIGO: TIntegerField;
    cdsbancosBAN_NOME: TStringField;
    cdsbancosBAN_NRBANC: TIntegerField;
    cdsbancosBAN_DVNRBA: TStringField;
    cdsbancosBAN_NRAGEN: TIntegerField;
    cdsbancosBAN_DVAGEN: TIntegerField;
    cdsbancosBAN_NRCONT: TStringField;
    cdsbancosBAN_DVCONT: TIntegerField;
    cdsbancosBAN_CIDADE: TStringField;
    cdsbancosBAN_CARTEIRA: TStringField;
    cdsbancosBAN_VARIACAO: TStringField;
    cdsbancosBAN_CONVENIO: TIntegerField;
    cdsbancosBAN_NOSSONUMERO: TIntegerField;
    cdsbancosBAN_FORMA_CALC: TIntegerField;
    cdsbancosBAN_ESPECIEMOEDA: TStringField;
    cdsbancosBAN_MARGE_LOGOMARCA: TIntegerField;
    cdsbancosBAN_ARQLOGOMARCA: TStringField;
    cdsbancosBAN_LOGOMARCA: TBlobField;
    cdsbancosBAN_DAtAFATORVENC: TDateField;
    cdsbancosBAN_MASCRETORNO: TStringField;
    cdsbancosBAN_TARIFABANCO: TFMTBCDField;
    dstConfig: TSQLDataSet;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    cdsConfigCFG_NOMEEMPRESA: TStringField;
    cdsConfigCFG_CGC: TStringField;
    cdsConfigCFG_ENDERECO: TStringField;
    cdsConfigCFG_BAIRRO: TStringField;
    cdsConfigCFG_CIDADE: TStringField;
    cdsConfigCFG_UF: TStringField;
    cdsConfigCFG_NRFONE1: TStringField;
    cdsConfigCFG_NRFONE2: TStringField;
    cdsConfigCFG_BANCO: TIntegerField;
    cdsConfigCFG_CLIENTE: TIntegerField;
    cdsConfigCFG_MODELO: TIntegerField;
    cdsConfigCFG_GRUPO: TIntegerField;
    cdsConfigCFG_NATUREZA: TIntegerField;
    cdsConfigCFG_CREDITO: TIntegerField;
    cdsConfigCFG_SEQUENCIA: TIntegerField;
    cdsConfigCFG_CAIXA: TIntegerField;
    cdsConfigCFG_USUARIO: TIntegerField;
    cdsConfigCFG_VENDA: TIntegerField;
    cdsConfigCFG_DATATUAL: TDateField;
    dspClientes: TDataSetProvider;
    dstClientesCLI_CODIGO: TIntegerField;
    dstClientesCLI_NUMERO: TIntegerField;
    dstClientesCLI_NOME: TStringField;
    dstClientesCLI_ESTADO_CIVIL: TStringField;
    dstClientesCLI_SEXO: TStringField;
    dstClientesCLI_NATURAL: TStringField;
    dstClientesCLI_NACIONALIDADE: TStringField;
    dstClientesCLI_ISNCEST: TStringField;
    dstClientesCLI_CGC: TStringField;
    dstClientesCLI_CPF: TStringField;
    dstClientesCLI_NRIDEN: TStringField;
    dstClientesCLI_DTNASCIMENTO: TDateField;
    dstClientesCLI_NRFONE: TStringField;
    dstClientesCLI_NRCELULAR: TStringField;
    dstClientesCLI_ENDERECO: TStringField;
    dstClientesCLI_BAIRRO: TStringField;
    dstClientesCLI_CIDADE: TStringField;
    dstClientesCLI_UFCLIE: TStringField;
    dstClientesCLI_NMEMPRESA: TStringField;
    dstClientesCLI_CARGO: TStringField;
    dstClientesCLI_ENDEMPRESA: TStringField;
    dstClientesCLI_BAIEMPRESA: TStringField;
    dstClientesCLI_UFEMPRESA: TStringField;
    dstClientesCLI_CEPEMPRESA: TStringField;
    dstClientesCLI_FONEEMPRESA: TStringField;
    dstClientesCLI_NOMEP: TStringField;
    dstClientesCLI_GRAUPAR: TStringField;
    dstClientesCLI_FONEPAR: TStringField;
    dstClientesCLI_PROFISSAO: TStringField;
    cdsClientes: TClientDataSet;
    cdsClientesCLI_CODIGO: TIntegerField;
    cdsClientesCLI_NUMERO: TIntegerField;
    cdsClientesCLI_NOME: TStringField;
    cdsClientesCLI_ESTADO_CIVIL: TStringField;
    cdsClientesCLI_SEXO: TStringField;
    cdsClientesCLI_NATURAL: TStringField;
    cdsClientesCLI_NACIONALIDADE: TStringField;
    cdsClientesCLI_ISNCEST: TStringField;
    cdsClientesCLI_CGC: TStringField;
    cdsClientesCLI_CPF: TStringField;
    cdsClientesCLI_NRIDEN: TStringField;
    cdsClientesCLI_DTNASCIMENTO: TDateField;
    cdsClientesCLI_NRFONE: TStringField;
    cdsClientesCLI_NRCELULAR: TStringField;
    cdsClientesCLI_ENDERECO: TStringField;
    cdsClientesCLI_BAIRRO: TStringField;
    cdsClientesCLI_CIDADE: TStringField;
    cdsClientesCLI_UFCLIE: TStringField;
    cdsClientesCLI_NMEMPRESA: TStringField;
    cdsClientesCLI_CARGO: TStringField;
    cdsClientesCLI_ENDEMPRESA: TStringField;
    cdsClientesCLI_BAIEMPRESA: TStringField;
    cdsClientesCLI_UFEMPRESA: TStringField;
    cdsClientesCLI_CEPEMPRESA: TStringField;
    cdsClientesCLI_FONEEMPRESA: TStringField;
    cdsClientesCLI_NOMEP: TStringField;
    cdsClientesCLI_GRAUPAR: TStringField;
    cdsClientesCLI_FONEPAR: TStringField;
    cdsClientesCLI_PROFISSAO: TStringField;
    dspGrupos: TDataSetProvider;
    cdsGrupos: TClientDataSet;
    dspModelos: TDataSetProvider;
    cdsModelos: TClientDataSet;
    dstModelosMOD_CODIGO: TIntegerField;
    dstModelosMOD_DESCRICAO: TStringField;
    cdsModelosMOD_CODIGO: TIntegerField;
    cdsModelosMOD_DESCRICAO: TStringField;
    dstUsuarios: TSQLDataSet;
    dspUsuarios: TDataSetProvider;
    dstUsuariosSEN_CODIGO: TIntegerField;
    dstUsuariosSEN_NOME: TStringField;
    dstUsuariosSEN_SNATUA: TStringField;
    dstUsuariosSEN_SNANTE: TStringField;
    dstUsuariosSEN_CARGO: TStringField;
    dstUsuariosSEN_DTATUAL: TDateField;
    dstUsuariosSEN_TERMINAL: TStringField;
    dstUsuariosSEN_ADMIN: TStringField;
    dstUsuariosSEN_FLCAIXA: TStringField;
    dstUsuariosSEN_FLSUPER: TStringField;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosSEN_CODIGO: TIntegerField;
    cdsUsuariosSEN_NOME: TStringField;
    cdsUsuariosSEN_SNATUA: TStringField;
    cdsUsuariosSEN_SNANTE: TStringField;
    cdsUsuariosSEN_CARGO: TStringField;
    cdsUsuariosSEN_DTATUAL: TDateField;
    cdsUsuariosSEN_TERMINAL: TStringField;
    cdsUsuariosSEN_ADMIN: TStringField;
    cdsUsuariosSEN_FLCAIXA: TStringField;
    cdsUsuariosSEN_FLSUPER: TStringField;
    dsConfig: TDataSource;
    dstVendaCotas: TSQLDataSet;
    dspVendaContas: TDataSetProvider;
    cdsVendaContas: TClientDataSet;
    dstPadrao: TSQLDataSet;
    dspPadrao: TDataSetProvider;
    cdsListaGrupos: TClientDataSet;
    cdsListaGruposGRU_CODIGO: TIntegerField;
    cdsListaGruposGRU_DESCRICAO: TStringField;
    dstParcelas: TSQLDataSet;
    dspParcelas: TDataSetProvider;
    cdsParcelas: TClientDataSet;
    cdsListaGruposGRU_NRMESES: TIntegerField;
    cdsListaGruposGRU_PARTICIP: TIntegerField;
    dsListaGrupos: TDataSource;
    cdsConfigCFG_DIAVENC: TIntegerField;
    cdsConfigCFG_NRRECIBO: TIntegerField;
    cdsVendaContasCOT_TOTAL_CREDITO_CALC: TFloatField;
    dstLances: TSQLDataSet;
    dspLances: TDataSetProvider;
    cdsLances: TClientDataSet;
    qryCotaCliente: TSQLQuery;
    cdsVendaContasCOT_VLCOTA_CALC: TFloatField;
    dstAux: TSQLDataSet;
    dspAux: TDataSetProvider;
    cdsAtualizaCota: TClientDataSet;
    cdsConfigCFG_PERCENTUAL_ADESAO: TFMTBCDField;
    dstClientesCLI_NUMCEP: TStringField;
    cdsClientesCLI_NUMCEP: TStringField;
    dstGruposGRU_CODIGO: TIntegerField;
    dstGruposGRU_DESCRICAO: TStringField;
    dstGruposGRU_NRMESES: TIntegerField;
    dstGruposGRU_PARTICIP: TIntegerField;
    dstGruposGRU_DTINICIO: TDateField;
    dstGruposGRU_INICIOU: TStringField;
    dstGruposGRU_DIAASS: TIntegerField;
    dstGruposGRU_MES1ASS: TStringField;
    dstGruposGRU_RESASSEMBLEIA: TMemoField;
    dstGruposGRU_MULTCONT: TStringField;
    dstGruposGRU_CORRIGIDO: TStringField;
    dstGruposGRU_TARIFABANCO: TStringField;
    dstGruposGRU_LIMITADO: TStringField;
    dstGruposGRU_LIMITEMININO: TFMTBCDField;
    dstGruposGRU_LIMITEMAXIMO: TFMTBCDField;
    cdsGruposGRU_CODIGO: TIntegerField;
    cdsGruposGRU_DESCRICAO: TStringField;
    cdsGruposGRU_NRMESES: TIntegerField;
    cdsGruposGRU_PARTICIP: TIntegerField;
    cdsGruposGRU_DTINICIO: TDateField;
    cdsGruposGRU_INICIOU: TStringField;
    cdsGruposGRU_DIAASS: TIntegerField;
    cdsGruposGRU_MES1ASS: TStringField;
    cdsGruposGRU_RESASSEMBLEIA: TMemoField;
    cdsGruposGRU_MULTCONT: TStringField;
    cdsGruposGRU_CORRIGIDO: TStringField;
    cdsGruposGRU_TARIFABANCO: TStringField;
    cdsGruposGRU_LIMITADO: TStringField;
    cdsGruposGRU_LIMITEMININO: TFMTBCDField;
    cdsGruposGRU_LIMITEMAXIMO: TFMTBCDField;
    cdsConfigCFG_LOGO: TMemoField;
    cdsConfigCFG_LOCAL_PAGAMENTO: TStringField;
    dstVendaCotasCOT_NRVENDA: TIntegerField;
    dstVendaCotasCOT_CDGRUPO: TIntegerField;
    dstVendaCotasCOT_NRCOTA: TIntegerField;
    dstVendaCotasCOT_CDCLIE: TIntegerField;
    dstVendaCotasCOT_CONTRATO: TStringField;
    dstVendaCotasCOT_PLANO: TIntegerField;
    dstVendaCotasCOT_POSICAO: TStringField;
    dstVendaCotasCOT_DIAASS: TStringField;
    dstVendaCotasCOT_DTCONT: TDateField;
    dstVendaCotasCOT_CODBEM: TStringField;
    dstVendaCotasCOT_VALCRE: TFMTBCDField;
    dstVendaCotasCOT_VALACERTO: TFMTBCDField;
    dstVendaCotasCOT_FLCONTEMPLADO: TStringField;
    dstVendaCotasCOT_TIPO: TStringField;
    dstVendaCotasCOT_VALCOTA: TFMTBCDField;
    dstVendaCotasCOT_DTVENCIMENTO: TDateField;
    dstVendaCotasCOT_FUNDORES: TFMTBCDField;
    dstVendaCotasCOT_TAXA_ADESAO: TFMTBCDField;
    dstVendaCotasCOT_TAXA_ADM: TFMTBCDField;
    dstVendaCotasCOT_CDBANCO: TIntegerField;
    dstVendaCotasCOT_NMBANCO: TStringField;
    dstVendaCotasCOT_CIDADE_BANCO: TStringField;
    dstVendaCotasCOT_ESPECIE: TStringField;
    dstVendaCotasCOT_MARCA: TStringField;
    dstVendaCotasCOT_ASSEMBLEIAFILTRO: TIntegerField;
    dstVendaCotasCOT_VALORLANCE: TFMTBCDField;
    dstVendaCotasCOT_DTCONTEMPLACAO: TDateField;
    dstVendaCotasCOT_ASSEB_CONTEMP: TIntegerField;
    dstVendaCotasCOT_DTALIENACAO: TDateField;
    dstVendaCotasCOT_MARCA_VEIC: TStringField;
    dstVendaCotasCOT_MODELO_VEIC: TStringField;
    dstVendaCotasCOT_ANO_FAB: TIntegerField;
    dstVendaCotasCOT_ANO_MOD: TIntegerField;
    dstVendaCotasCOT_CHASSI: TStringField;
    dstVendaCotasCOT_DATA_LIB: TDateField;
    dstVendaCotasCOT_ALIENADO: TStringField;
    dstVendaCotasCOT_DESALIENADO: TStringField;
    dstVendaCotasCOT_AVAL1: TIntegerField;
    dstVendaCotasCOT_AVAL2: TIntegerField;
    dstVendaCotasCOT_NRSERIE: TStringField;
    dstVendaCotasCOT_TIPOVEIC: TStringField;
    dstVendaCotasCOT_COR: TStringField;
    dstVendaCotasCOT_CDMODELO: TIntegerField;
    dstVendaCotasCOT_VALOR_TAXACAD: TFMTBCDField;
    dstVendaCotasCOT_VALORENTRADA: TFMTBCDField;
    dstVendaCotasCOT_DATAPRIMPRES: TDateField;
    dstVendaCotasCOT_TPLANCE: TStringField;
    cdsVendaContasCOT_NRVENDA: TIntegerField;
    cdsVendaContasCOT_CDGRUPO: TIntegerField;
    cdsVendaContasCOT_NRCOTA: TIntegerField;
    cdsVendaContasCOT_CDCLIE: TIntegerField;
    cdsVendaContasCOT_CONTRATO: TStringField;
    cdsVendaContasCOT_PLANO: TIntegerField;
    cdsVendaContasCOT_POSICAO: TStringField;
    cdsVendaContasCOT_DIAASS: TStringField;
    cdsVendaContasCOT_DTCONT: TDateField;
    cdsVendaContasCOT_CODBEM: TStringField;
    cdsVendaContasCOT_VALCRE: TFMTBCDField;
    cdsVendaContasCOT_VALACERTO: TFMTBCDField;
    cdsVendaContasCOT_FLCONTEMPLADO: TStringField;
    cdsVendaContasCOT_TIPO: TStringField;
    cdsVendaContasCOT_VALCOTA: TFMTBCDField;
    cdsVendaContasCOT_DTVENCIMENTO: TDateField;
    cdsVendaContasCOT_FUNDORES: TFMTBCDField;
    cdsVendaContasCOT_TAXA_ADESAO: TFMTBCDField;
    cdsVendaContasCOT_TAXA_ADM: TFMTBCDField;
    cdsVendaContasCOT_CDBANCO: TIntegerField;
    cdsVendaContasCOT_NMBANCO: TStringField;
    cdsVendaContasCOT_CIDADE_BANCO: TStringField;
    cdsVendaContasCOT_ESPECIE: TStringField;
    cdsVendaContasCOT_MARCA: TStringField;
    cdsVendaContasCOT_ASSEMBLEIAFILTRO: TIntegerField;
    cdsVendaContasCOT_VALORLANCE: TFMTBCDField;
    cdsVendaContasCOT_DTCONTEMPLACAO: TDateField;
    cdsVendaContasCOT_ASSEB_CONTEMP: TIntegerField;
    cdsVendaContasCOT_DTALIENACAO: TDateField;
    cdsVendaContasCOT_MARCA_VEIC: TStringField;
    cdsVendaContasCOT_MODELO_VEIC: TStringField;
    cdsVendaContasCOT_ANO_FAB: TIntegerField;
    cdsVendaContasCOT_ANO_MOD: TIntegerField;
    cdsVendaContasCOT_CHASSI: TStringField;
    cdsVendaContasCOT_DATA_LIB: TDateField;
    cdsVendaContasCOT_ALIENADO: TStringField;
    cdsVendaContasCOT_DESALIENADO: TStringField;
    cdsVendaContasCOT_AVAL1: TIntegerField;
    cdsVendaContasCOT_AVAL2: TIntegerField;
    cdsVendaContasCOT_NRSERIE: TStringField;
    cdsVendaContasCOT_TIPOVEIC: TStringField;
    cdsVendaContasCOT_COR: TStringField;
    cdsVendaContasCOT_CDMODELO: TIntegerField;
    cdsVendaContasCOT_VALOR_TAXACAD: TFMTBCDField;
    cdsVendaContasCOT_DATAPRIMPRES: TDateField;
    cdsVendaContasCOT_TPLANCE: TStringField;
    cdsVendaContasCOT_VALORENTRADA: TFMTBCDField;
    cdsVendaContasSTATUS_COTA: TStringField;
    cdsVendaContasCOT_NMGRUP: TStringField;
    dstParcelasREC_NRVEND: TIntegerField;
    dstParcelasREC_CDGRUP: TIntegerField;
    dstParcelasREC_NRCOTA: TIntegerField;
    dstParcelasREC_NRPARC: TIntegerField;
    dstParcelasREC_DTVENC: TDateField;
    dstParcelasREC_VLPARC: TFMTBCDField;
    dstParcelasREC_DTPAGA: TDateField;
    dstParcelasREC_VLMULT: TFMTBCDField;
    dstParcelasREC_TOTAL_PAGO: TFMTBCDField;
    dstParcelasREC_CODOP: TStringField;
    dstParcelasREC_CDOPER: TIntegerField;
    dstParcelasREC_SITUACAO: TStringField;
    dstParcelasREC_DTMOVI: TDateField;
    dstParcelasREC_DTCREDITO: TDateField;
    dstParcelasREC_CREDITO: TFMTBCDField;
    dstParcelasREC_REGISTRO: TStringField;
    dstParcelasREC_FORMABAIXA: TStringField;
    dstParcelasREC_CDBANC: TIntegerField;
    dstParcelasREC_PRINTSLIP: TStringField;
    dstParcelasREC_HISTORICO: TMemoField;
    dstParcelasREC_TPCREDITO: TStringField;
    dstParcelasREC_TPSLIP: TStringField;
    dstParcelasREC_NOSSONUMERO: TStringField;
    dstParcelasREC_VALORTARIFABANCO: TFMTBCDField;
    dstParcelasREC_VALORTITULOTITULO: TFMTBCDField;
    dstParcelasREC_DTESTORNO: TDateField;
    cdsParcelasREC_NRVEND: TIntegerField;
    cdsParcelasREC_CDGRUP: TIntegerField;
    cdsParcelasREC_NRCOTA: TIntegerField;
    cdsParcelasREC_NRPARC: TIntegerField;
    cdsParcelasREC_DTVENC: TDateField;
    cdsParcelasREC_VLPARC: TFMTBCDField;
    cdsParcelasREC_DTPAGA: TDateField;
    cdsParcelasREC_VLMULT: TFMTBCDField;
    cdsParcelasREC_TOTAL_PAGO: TFMTBCDField;
    cdsParcelasREC_CODOP: TStringField;
    cdsParcelasREC_CDOPER: TIntegerField;
    cdsParcelasREC_SITUACAO: TStringField;
    cdsParcelasREC_DTMOVI: TDateField;
    cdsParcelasREC_DTCREDITO: TDateField;
    cdsParcelasREC_CREDITO: TFMTBCDField;
    cdsParcelasREC_REGISTRO: TStringField;
    cdsParcelasREC_FORMABAIXA: TStringField;
    cdsParcelasREC_CDBANC: TIntegerField;
    cdsParcelasREC_PRINTSLIP: TStringField;
    cdsParcelasREC_HISTORICO: TMemoField;
    cdsParcelasREC_TPCREDITO: TStringField;
    cdsParcelasREC_TPSLIP: TStringField;
    cdsParcelasREC_NOSSONUMERO: TStringField;
    cdsParcelasREC_VALORTARIFABANCO: TFMTBCDField;
    cdsParcelasREC_VALORTITULOTITULO: TFMTBCDField;
    cdsParcelasREC_DTESTORNO: TDateField;
    cdsListaBancos: TClientDataSet;
    cdsListaModelos: TClientDataSet;
    cdsListaModelosMOD_CODIGO: TIntegerField;
    cdsListaModelosMOD_DESCRICAO: TStringField;
    dstLancesLAN_SEQUENCIA: TIntegerField;
    dstLancesLAN_CDGRUP: TIntegerField;
    dstLancesLAN_NRCOTA: TIntegerField;
    dstLancesLAN_NRVEND: TIntegerField;
    dstLancesLAN_NRASSEMBLEIA: TIntegerField;
    dstLancesLAN_TIPO: TStringField;
    dstLancesLAN_VALOR: TFMTBCDField;
    dstLancesLAN_PELANC: TFMTBCDField;
    dstLancesLAN_DTMOVI: TDateField;
    cdsLancesLAN_SEQUENCIA: TIntegerField;
    cdsLancesLAN_CDGRUP: TIntegerField;
    cdsLancesLAN_NRCOTA: TIntegerField;
    cdsLancesLAN_NRVEND: TIntegerField;
    cdsLancesLAN_NRASSEMBLEIA: TIntegerField;
    cdsLancesLAN_TIPO: TStringField;
    cdsLancesLAN_VALOR: TFMTBCDField;
    cdsLancesLAN_PELANC: TFMTBCDField;
    cdsLancesLAN_DTMOVI: TDateField;
    cdsCotasCliente: TClientDataSet;
    cdsCotasClienteCOT_CDCLIE: TIntegerField;
    cdsCotasClienteCOT_CDGRUPO: TIntegerField;
    cdsCotasClienteCOT_NRCOTA: TIntegerField;
    cdsCotasClienteCOT_POSICAO: TStringField;
    cdsCotasClienteCOT_FLCONTEMPLADO: TStringField;
    dsCotasCliente: TDataSource;
    cdsCotasClienteCOT_TIPO: TStringField;
    cdsCotasClienteCOT_FLUXO: TStringField;
    cdsEstornaParcela: TClientDataSet;
    cdsListaModelos2: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cdsListaAvalistas: TClientDataSet;
    cdsListaAvalistasCODIGO: TIntegerField;
    cdsListaAvalistasNOME: TStringField;
    dstAvalista: TSQLDataSet;
    dspAvalista: TDataSetProvider;
    cdsAvalista: TClientDataSet;
    cdsListaAvalistasVENDA: TIntegerField;
    dstAvalistaAVA_NRVEND: TIntegerField;
    dstAvalistaAVA_CDCLIE: TIntegerField;
    cdsAvalistaAVA_NRVEND: TIntegerField;
    cdsAvalistaAVA_CDCLIE: TIntegerField;
    cdsAvalistaNOME: TStringField;
    cdsConfigCFG_MULTA: TFMTBCDField;
    cdsConfigCFG_JUROS: TFMTBCDField;
    cdsConfigCFG_NRCOLUNASLIP: TFMTBCDField;
    cdsConfigCFG_PERC_ACERTO: TFMTBCDField;
    cdsConfigCFG_TIMETAB: TIntegerField;
    cdsConfigCFG_MARGEMSUPBOLVERT: TFMTBCDField;
    cdsConfigCFG_MARGEMESQBOLVERT: TFMTBCDField;
    cdsVendaContasBANCO: TStringField;
    dstMasterDetail: TSQLDataSet;
    dspMasterDetail: TDataSetProvider;
    cdsCotasClientes2: TClientDataSet;
    cdsListaGrupos2: TClientDataSet;
    dsLisGrupos2: TDataSource;
    cdsListaGrupos2GRU_CODIGO: TIntegerField;
    cdsListaGrupos2GRU_DESCRICAO: TStringField;
    cdsCotasClientes2COT_NRVENDA: TIntegerField;
    cdsCotasClientes2COT_CDGRUPO: TIntegerField;
    cdsCotasClientes2COT_NRCOTA: TIntegerField;
    cdsCotasClientes2CLI_NOME: TStringField;
    cdsCotasClientes2COT_CDCLIE: TIntegerField;
    cdsCotasClientes2CLI_CIDADE: TStringField;
    cdsCotasClientes2CLI_UFCLIE: TStringField;
    cdsCotasClientes2COT_PLANO: TIntegerField;
    cdsCotasClientes2COT_POSICAO: TStringField;
    cdsNossoNumero: TClientDataSet;
    cdsNossoNumeroREC_NRVEND: TIntegerField;
    cdsNossoNumeroREC_CDGRUP: TIntegerField;
    cdsNossoNumeroREC_NRCOTA: TIntegerField;
    cdsNossoNumeroREC_NRPARC: TIntegerField;
    cdsNossoNumeroREC_CDBANC: TIntegerField;
    cdsNossoNumeroREC_NOSSONUMERO: TStringField;
    cdsNossoNumeroREC_PRINTSLIP: TStringField;
    cdsNossoNumeroREC_TPSLIP: TStringField;
    cdsNossoNumeroREC_VALORTARIFABANCO: TFMTBCDField;
    cdsNossoNumeroREC_VALORTITULOTITULO: TFMTBCDField;
    cdsConfigCFG_CEP_EMPRESA: TStringField;
    cdsLancesCotas: TClientDataSet;
    cdsLancesCotasLAN_SEQUENCIA: TIntegerField;
    cdsLancesCotasLAN_CDGRUP: TIntegerField;
    cdsLancesCotasLAN_NRCOTA: TIntegerField;
    cdsLancesCotasLAN_NRASSEMBLEIA: TIntegerField;
    cdsLancesCotasLAN_VALOR: TFMTBCDField;
    cdsLancesCotasLAN_PELANC: TFMTBCDField;
    cdsConfigCFG_MENSAGEM_BOLETO: TMemoField;
    cdsLancesCotasLAN_TIPO: TStringField;
    cdsLancesCotasLAN_DESC_TIPO: TStringField;
    cdsCotasGrupoModelos: TClientDataSet;
    cdsCotasGrupoModelosCOT_NRVENDA: TIntegerField;
    cdsCotasGrupoModelosCOT_CDGRUPO: TIntegerField;
    cdsCotasGrupoModelosCOT_NRCOTA: TIntegerField;
    cdsCotasGrupoModelosCOT_CDCLIE: TIntegerField;
    cdsCotasGrupoModelosCOT_PLANO: TIntegerField;
    cdsCotasGrupoModelosCOT_POSICAO: TStringField;
    cdsCotasGrupoModelosCOT_CDMODELO: TIntegerField;
    cdsCotasGrupoModelosCOT_VALCRE: TFMTBCDField;
    dstGruposGRU_FIXO: TStringField;
    dstGruposGRU_LANCE_MINIMO: TFMTBCDField;
    cdsGruposGRU_FIXO: TStringField;
    cdsGruposGRU_LANCE_MINIMO: TFMTBCDField;
    cdsMultiContemGrupo: TClientDataSet;
    cdsMultiContemGrupoGPA_CDGRUP: TIntegerField;
    cdsMultiContemGrupoGPA_NRASSE: TIntegerField;
    cdsMultiContemGrupoGPA_NRCONT: TIntegerField;
    cdsMultiContemGrupoGPA_CONT_LANC: TIntegerField;
    cdsCotasClienteGRU_DESCRICAO: TStringField;
    cdsAvalistas: TClientDataSet;
    cdsAvalistasAVA_NRVEND: TIntegerField;
    cdsAvalistasAVA_CDCLIE: TIntegerField;
    cdsAvalistasCOT_CDGRUPO: TIntegerField;
    cdsAvalistasCOT_NRCOTA: TIntegerField;
    cdsAvalistasCOT_POSICAO: TStringField;
    qryImp: TQuery;
    dstAux2: TSQLDataSet;
    dspAux2: TDataSetProvider;
    cdsAux: TClientDataSet;
    qryAux: TSQLQuery;
    qryAuxREC_NRVEND: TIntegerField;
    qryAuxREC_CDGRUP: TIntegerField;
    qryAuxREC_NRCOTA: TIntegerField;
    qryAuxREC_NRPARC: TIntegerField;
    qryImpCodGrupo: TSmallintField;
    qryImpCOTA: TSmallintField;
    qryImpVENDA: TSmallintField;
    qryImpNUMPARCPG: TSmallintField;
    qryImpDATAVENC: TDateField;
    qryImpVALORPARPG: TFloatField;
    qryImpDATAPG: TDateField;
    qryImpMULTAPG: TFloatField;
    qryImpTOTALPG: TFloatField;
    qryImpCODOP: TStringField;
    qryImpSITUACAO: TStringField;
    qryImpMOVIMENTO: TDateField;
    qryImpPAGTOCREDITO: TDateField;
    qryImpCREDITO: TFloatField;
    qryImpREGISTRO: TStringField;
    qryImpFORMABAIXA: TStringField;
    qryImpCODBANCO: TSmallintField;
    qryImpPrintSlip: TBooleanField;
    qryImpHistorico: TBlobField;
    qryImpTipoCredito: TStringField;
    qryImpTipoSlip: TStringField;
    qryImpNOSSONUMERO: TStringField;
    qryImpValorTarifaBanco: TFloatField;
    qryImpValorTitulo: TFloatField;
    cdsGetAssembleia: TClientDataSet;
    cdsGetAssembleiaLAN_SEQUENCIA: TIntegerField;
    cdsGetAssembleiaLAN_CDGRUP: TIntegerField;
    cdsGetAssembleiaLAN_NRCOTA: TIntegerField;
    cdsGetAssembleiaLAN_NRVEND: TIntegerField;
    cdsGetAssembleiaLAN_NRASSEMBLEIA: TIntegerField;
    cdsGetAssembleiaLAN_TIPO: TStringField;
    cdsGetAssembleiaLAN_VALOR: TFMTBCDField;
    cdsGetAssembleiaLAN_PELANC: TFMTBCDField;
    cdsGetAssembleiaLAN_DTMOVI: TDateField;
    cdsBaixaLances: TClientDataSet;
    cdsBaixaLancesREC_NRVEND: TIntegerField;
    cdsBaixaLancesREC_CDGRUP: TIntegerField;
    cdsBaixaLancesREC_NRCOTA: TIntegerField;
    cdsBaixaLancesREC_NRPARC: TIntegerField;
    cdsBaixaLancesREC_DTVENC: TDateField;
    cdsBaixaLancesREC_VLPARC: TFMTBCDField;
    cdsBaixaLancesREC_DTPAGA: TDateField;
    cdsBaixaLancesREC_VLMULT: TFMTBCDField;
    cdsBaixaLancesREC_TOTAL_PAGO: TFMTBCDField;
    cdsBaixaLancesREC_CODOP: TStringField;
    cdsBaixaLancesREC_CDOPER: TIntegerField;
    cdsBaixaLancesREC_SITUACAO: TStringField;
    cdsBaixaLancesREC_DTMOVI: TDateField;
    cdsBaixaLancesREC_DTCREDITO: TDateField;
    cdsBaixaLancesREC_CREDITO: TFMTBCDField;
    cdsBaixaLancesREC_REGISTRO: TStringField;
    cdsBaixaLancesREC_FORMABAIXA: TStringField;
    cdsBaixaLancesREC_CDBANC: TIntegerField;
    cdsBaixaLancesREC_PRINTSLIP: TStringField;
    cdsBaixaLancesREC_HISTORICO: TMemoField;
    cdsBaixaLancesREC_TPCREDITO: TStringField;
    cdsBaixaLancesREC_TPSLIP: TStringField;
    cdsBaixaLancesREC_NOSSONUMERO: TStringField;
    cdsBaixaLancesREC_VALORTARIFABANCO: TFMTBCDField;
    cdsBaixaLancesREC_VALORTITULOTITULO: TFMTBCDField;
    cdsBaixaLancesREC_DTESTORNO: TDateField;
    cdsBaixaLancesREC_TAXADM_CALC: TFloatField;
    cdsBaixaLancesREC_TXFUND_CALC: TFloatField;
    cdsBaixaLancesREC_TOTAL_CALC: TFloatField;
    cdsConfigCFG_MENS_CUPOM: TStringField;
    cdsListaBancosBAN_CODIGO: TIntegerField;
    cdsListaBancosBAN_NOME: TStringField;
    cdsConfigCFG_CARTA: TIntegerField;
    dstCaixa: TSQLDataSet;
    dstCaixaCAI_NUMERO: TIntegerField;
    dstCaixaCAI_DTABERTURA: TDateField;
    dstCaixaCAI_DTFECHAMENTO: TDateField;
    dstCaixaCAI_HOABERTURA: TStringField;
    dstCaixaCAI_HOFECHAMENTO: TStringField;
    dstCaixaCAI_RGINICIAL: TIntegerField;
    dstCaixaCAI_RGFINAL: TIntegerField;
    dstCaixaCAI_CAIXA: TIntegerField;
    dstCaixaCAI_SITUACAO: TStringField;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    cdsCaixaCAI_NUMERO: TIntegerField;
    cdsCaixaCAI_DTABERTURA: TDateField;
    cdsCaixaCAI_DTFECHAMENTO: TDateField;
    cdsCaixaCAI_HOABERTURA: TStringField;
    cdsCaixaCAI_HOFECHAMENTO: TStringField;
    cdsCaixaCAI_RGINICIAL: TIntegerField;
    cdsCaixaCAI_RGFINAL: TIntegerField;
    cdsCaixaCAI_CAIXA: TIntegerField;
    cdsCaixaCAI_SITUACAO: TStringField;
    dstMovCaixa: TSQLDataSet;
    dstMovCaixaMCA_SEQUENCIA: TIntegerField;
    dstMovCaixaMCA_VENDA: TIntegerField;
    dstMovCaixaMCA_TIPOMOV: TStringField;
    dstMovCaixaMCA_DTMOVIMENTO: TDateField;
    dstMovCaixaMCA_HRMOVIMENTO: TStringField;
    dstMovCaixaMCA_MODALIDADE: TIntegerField;
    dstMovCaixaMCA_VLMODALIDADE: TFMTBCDField;
    dstMovCaixaMCA_VLTROCO: TFMTBCDField;
    dstMovCaixaMCA_OBSEVACAO: TStringField;
    dstMovCaixaMCA_SITUACAO: TStringField;
    dstMovCaixaMCA_CAIXA: TIntegerField;
    dstMovCaixaMCA_NATUREZA: TIntegerField;
    dstMovCaixaMCA_FUNCIONARIO: TIntegerField;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    cdsMovCaixaMCA_SEQUENCIA: TIntegerField;
    cdsMovCaixaMCA_VENDA: TIntegerField;
    cdsMovCaixaMCA_TIPOMOV: TStringField;
    cdsMovCaixaMCA_DTMOVIMENTO: TDateField;
    cdsMovCaixaMCA_HRMOVIMENTO: TStringField;
    cdsMovCaixaMCA_MODALIDADE: TIntegerField;
    cdsMovCaixaMCA_VLMODALIDADE: TFMTBCDField;
    cdsMovCaixaMCA_VLTROCO: TFMTBCDField;
    cdsMovCaixaMCA_OBSEVACAO: TStringField;
    cdsMovCaixaMCA_SITUACAO: TStringField;
    cdsMovCaixaMCA_CAIXA: TIntegerField;
    cdsMovCaixaMCA_NATUREZA: TIntegerField;
    cdsMovCaixaMCA_FUNCIONARIO: TIntegerField;
    cdsConfigCFG_MODALIDADE: TIntegerField;
    cdsConfigCFG_MOV_CAIXA_SEQ: TIntegerField;
    dstVendaCotasCOT_DTRECEBIMENTO: TDateField;
    dstVendaCotasCOT_VALOR_RECEBER: TFMTBCDField;
    cdsVendaContasCOT_DTRECEBIMENTO: TDateField;
    cdsVendaContasCOT_VALOR_RECEBER: TFMTBCDField;
    cdsConfigCFG_REGISTRO: TIntegerField;
    dstVendaCotasCOT_FLXSPC: TStringField;
    cdsVendaContasCOT_FLXSPC: TStringField;
    dstMovCaixaMCA_NRCHEQ: TStringField;
    dstMovCaixaMCA_NRAGEN: TStringField;
    dstMovCaixaMCA_NRBANC: TIntegerField;
    dstMovCaixaMCA_NRCONTA: TStringField;
    cdsMovCaixaMCA_NRCHEQ: TStringField;
    cdsMovCaixaMCA_NRAGEN: TStringField;
    cdsMovCaixaMCA_NRBANC: TIntegerField;
    cdsMovCaixaMCA_NRCONTA: TStringField;
    cdsListaModalidades: TClientDataSet;
    cdsListaModalidadesMOD_CODIGO: TIntegerField;
    cdsListaModalidadesMOD_NOME: TStringField;
    cdsAcessoMenu: TClientDataSet;
    dstUsuariosUSU_ADMIN: TStringField;
    cdsUsuariosUSU_ADMIN: TStringField;
    cdsConfigCFG_NMDISP: TStringField;
    cdsConfigCFG_PERC_MIN_LANCE: TBCDField;
    cdsCotasGrupoModelosCOT_VALCOTA: TFMTBCDField;
    cdsConfigCFG_GRUPO_USUARIO: TIntegerField;
    dstClientesCLI_NRPLACA: TStringField;
    cdsClientesCLI_NRPLACA: TStringField;
    cdsConfigCFG_LINHA_INICIAL_CONTRATO: TBCDField;
    cdsConfigCFG_LIN_INI_ALI_FRENTE: TBCDField;
    cdsConfigCFG_LIN_INICIAL_VERSO: TBCDField;
    cdsConfigCFG_LIN_INICIAL_VEICULO: TBCDField;
    cdsConfigCFG_QTLINHA_TOP: TIntegerField;
    cdsConfigCFG_QTLINHA_BOTTON: TIntegerField;
    cdsConfigCFG_DTASSEMBLEIAS: TMemoField;
    dstVendaCotasCOT_FLPROMOCAO: TStringField;
    cdsVendaContasCOT_FLPROMOCAO: TStringField;
    cdsConfigCFG_TOP_ETIQUETA: TIntegerField;
    cdsConfigCFG_TIPO_ETIQUETA: TIntegerField;
    dstUsuariosSEN_SEQCAIXA: TIntegerField;
    cdsUsuariosSEN_SEQCAIXA: TIntegerField;
    cdsConfigCFG_LINHA_CUPOM_ES: TIntegerField;
    cdsConfigCFG_TAMANHO_FONTE: TIntegerField;
    dstCredito: TSQLDataSet;
    dspCredito: TDataSetProvider;
    cdsCredito: TClientDataSet;
    cdsCreditoREC_NRVEND: TIntegerField;
    cdsCreditoREC_CDGRUP: TIntegerField;
    cdsCreditoREC_NRCOTA: TIntegerField;
    cdsCreditoREC_NRPARC: TIntegerField;
    cdsCreditoREC_DTVENC: TDateField;
    cdsCreditoREC_VLPARC: TFMTBCDField;
    cdsCreditoREC_DTPAGA: TDateField;
    cdsCreditoREC_VLMULT: TFMTBCDField;
    cdsCreditoREC_TOTAL_PAGO: TFMTBCDField;
    cdsCreditoREC_SITUACAO: TStringField;
    cdsCreditoREC_DTMOVI: TDateField;
    cdsCreditoREC_DTCREDITO: TDateField;
    cdsCreditoREC_CREDITO: TFMTBCDField;
    cdsCreditoREC_REGISTRO: TStringField;
    cdsCreditoREC_FORMABAIXA: TStringField;
    cdsCreditoREC_CDBANC: TIntegerField;
    cdsCreditoREC_PRINTSLIP: TStringField;
    cdsCreditoREC_TPCREDITO: TStringField;
    dstVendaCotasCOT_FLPROTESTO: TStringField;
    cdsVendaContasCOT_FLPROTESTO: TStringField;
    dstSaldoCliente: TSQLDataSet;
    dstSaldoClienteSLD_NRVENDA: TIntegerField;
    dstSaldoClienteSLD_GRUPO: TIntegerField;
    dstSaldoClienteSLD_COTA: TIntegerField;
    dstSaldoClienteSLD_CLIENTE: TIntegerField;
    dstSaldoClienteSLD_VALOR: TFMTBCDField;
    dspSaldoCliente: TDataSetProvider;
    cdsSaldoCliente: TClientDataSet;
    cdsSaldoClienteSLD_NRVENDA: TIntegerField;
    cdsSaldoClienteSLD_GRUPO: TIntegerField;
    cdsSaldoClienteSLD_COTA: TIntegerField;
    cdsSaldoClienteSLD_CLIENTE: TIntegerField;
    cdsSaldoClienteSLD_VALOR: TFMTBCDField;
    dstPadrao2: TSQLDataSet;
    dspPadrao2: TDataSetProvider;
    aCdsClienteCota: TClientDataSet;
    aCdsParcelas: TClientDataSet;
    dstVendaCotasCOT_SALDO_ANTERIOR: TFMTBCDField;
    cdsVendaContasCOT_SALDO_ANTERIOR: TFMTBCDField;
    cdsEstornoPCLance: TClientDataSet;
    cdsBaixaLancesREC_MOV_CAIXA: TIntegerField;
    cdsConfigCFG_MENS_TABELA: TStringField;
    cdsConfigCFG_TOP_CARTA: TIntegerField;
    cdsConfigCFG_TOP_CABECALHO: TIntegerField;
    cdsConfigCFG_BOTTOR_CARTA: TIntegerField;
    cdsConfigCFG_FONTE_TABELA: TIntegerField;
    cdsConfigCFG_FONTE_RODAPE: TIntegerField;
    cdsIncluirVenda: TClientDataSet;
    cdsIncParcelas: TClientDataSet;
    cdsIncluirVendaCOT_NRVENDA: TIntegerField;
    cdsIncluirVendaCOT_CDGRUPO: TIntegerField;
    cdsIncluirVendaCOT_NRCOTA: TIntegerField;
    cdsIncluirVendaCOT_CDCLIE: TIntegerField;
    cdsIncluirVendaCOT_CONTRATO: TStringField;
    cdsIncluirVendaCOT_PLANO: TIntegerField;
    cdsIncluirVendaCOT_POSICAO: TStringField;
    cdsIncluirVendaCOT_DIAASS: TStringField;
    cdsIncluirVendaCOT_DTCONT: TDateField;
    cdsIncluirVendaCOT_CODBEM: TStringField;
    cdsIncluirVendaCOT_VALCRE: TFMTBCDField;
    cdsIncluirVendaCOT_VALACERTO: TFMTBCDField;
    cdsIncluirVendaCOT_FLCONTEMPLADO: TStringField;
    cdsIncluirVendaCOT_TIPO: TStringField;
    cdsIncluirVendaCOT_VALCOTA: TFMTBCDField;
    cdsIncluirVendaCOT_DTVENCIMENTO: TDateField;
    cdsIncluirVendaCOT_FUNDORES: TFMTBCDField;
    cdsIncluirVendaCOT_TAXA_ADESAO: TFMTBCDField;
    cdsIncluirVendaCOT_TAXA_ADM: TFMTBCDField;
    cdsIncluirVendaCOT_CDBANCO: TIntegerField;
    cdsIncluirVendaCOT_NMBANCO: TStringField;
    cdsIncluirVendaCOT_CIDADE_BANCO: TStringField;
    cdsIncluirVendaCOT_ESPECIE: TStringField;
    cdsIncluirVendaCOT_MARCA: TStringField;
    cdsIncluirVendaCOT_ASSEMBLEIAFILTRO: TIntegerField;
    cdsIncluirVendaCOT_VALORLANCE: TFMTBCDField;
    cdsIncluirVendaCOT_DTCONTEMPLACAO: TDateField;
    cdsIncluirVendaCOT_ASSEB_CONTEMP: TIntegerField;
    cdsIncluirVendaCOT_DTALIENACAO: TDateField;
    cdsIncluirVendaCOT_MARCA_VEIC: TStringField;
    cdsIncluirVendaCOT_MODELO_VEIC: TStringField;
    cdsIncluirVendaCOT_ANO_FAB: TIntegerField;
    cdsIncluirVendaCOT_ANO_MOD: TIntegerField;
    cdsIncluirVendaCOT_CHASSI: TStringField;
    cdsIncluirVendaCOT_DATA_LIB: TDateField;
    cdsIncluirVendaCOT_ALIENADO: TStringField;
    cdsIncluirVendaCOT_DESALIENADO: TStringField;
    cdsIncluirVendaCOT_AVAL1: TIntegerField;
    cdsIncluirVendaCOT_AVAL2: TIntegerField;
    cdsIncluirVendaCOT_NRSERIE: TStringField;
    cdsIncluirVendaCOT_TIPOVEIC: TStringField;
    cdsIncluirVendaCOT_COR: TStringField;
    cdsIncluirVendaCOT_CDMODELO: TIntegerField;
    cdsIncluirVendaCOT_VALOR_TAXACAD: TFMTBCDField;
    cdsIncluirVendaCOT_VALORENTRADA: TFMTBCDField;
    cdsIncluirVendaCOT_DATAPRIMPRES: TDateField;
    cdsIncluirVendaCOT_TPLANCE: TStringField;
    cdsIncluirVendaCOT_DTRECEBIMENTO: TDateField;
    cdsIncluirVendaCOT_VALOR_RECEBER: TFMTBCDField;
    cdsIncluirVendaCOT_FLXSPC: TStringField;
    cdsIncluirVendaCOT_FLPROMOCAO: TStringField;
    cdsIncluirVendaCOT_FLPROTESTO: TStringField;
    cdsIncluirVendaCOT_SALDO_ANTERIOR: TFMTBCDField;
    cdsIncParcelasREC_NRVEND: TIntegerField;
    cdsIncParcelasREC_CDGRUP: TIntegerField;
    cdsIncParcelasREC_NRCOTA: TIntegerField;
    cdsIncParcelasREC_NRPARC: TIntegerField;
    cdsIncParcelasREC_DTVENC: TDateField;
    cdsIncParcelasREC_VLPARC: TFMTBCDField;
    cdsIncParcelasREC_DTPAGA: TDateField;
    cdsIncParcelasREC_VLMULT: TFMTBCDField;
    cdsIncParcelasREC_TOTAL_PAGO: TFMTBCDField;
    cdsIncParcelasREC_CODOP: TStringField;
    cdsIncParcelasREC_CDOPER: TIntegerField;
    cdsIncParcelasREC_SITUACAO: TStringField;
    cdsIncParcelasREC_DTMOVI: TDateField;
    cdsIncParcelasREC_DTCREDITO: TDateField;
    cdsIncParcelasREC_CREDITO: TFMTBCDField;
    cdsIncParcelasREC_REGISTRO: TStringField;
    cdsIncParcelasREC_FORMABAIXA: TStringField;
    cdsIncParcelasREC_CDBANC: TIntegerField;
    cdsIncParcelasREC_PRINTSLIP: TStringField;
    cdsIncParcelasREC_HISTORICO: TMemoField;
    cdsIncParcelasREC_TPCREDITO: TStringField;
    cdsIncParcelasREC_TPSLIP: TStringField;
    cdsIncParcelasREC_NOSSONUMERO: TStringField;
    cdsIncParcelasREC_VALORTARIFABANCO: TFMTBCDField;
    cdsIncParcelasREC_VALORTITULOTITULO: TFMTBCDField;
    cdsIncParcelasREC_DTESTORNO: TDateField;
    cdsIncParcelasREC_HOPAGA: TStringField;
    cdsIncParcelasREC_MOV_CAIXA: TIntegerField;
    cdsParcTransferido: TClientDataSet;
    cdsParcTransferidoREC_NRVEND: TIntegerField;
    cdsParcTransferidoREC_CDGRUP: TIntegerField;
    cdsParcTransferidoREC_NRCOTA: TIntegerField;
    cdsParcTransferidoREC_NRPARC: TIntegerField;
    cdsParcTransferidoREC_DTVENC: TDateField;
    cdsParcTransferidoREC_VLPARC: TFMTBCDField;
    cdsParcTransferidoREC_DTPAGA: TDateField;
    cdsParcTransferidoREC_VLMULT: TFMTBCDField;
    cdsParcTransferidoREC_TOTAL_PAGO: TFMTBCDField;
    cdsParcTransferidoREC_CODOP: TStringField;
    cdsParcTransferidoREC_CDOPER: TIntegerField;
    cdsParcTransferidoREC_SITUACAO: TStringField;
    cdsParcTransferidoREC_DTMOVI: TDateField;
    cdsParcTransferidoREC_DTCREDITO: TDateField;
    cdsParcTransferidoREC_CREDITO: TFMTBCDField;
    cdsParcTransferidoREC_REGISTRO: TStringField;
    cdsParcTransferidoREC_FORMABAIXA: TStringField;
    cdsParcTransferidoREC_CDBANC: TIntegerField;
    cdsParcTransferidoREC_PRINTSLIP: TStringField;
    cdsParcTransferidoREC_HISTORICO: TMemoField;
    cdsParcTransferidoREC_TPCREDITO: TStringField;
    cdsParcTransferidoREC_TPSLIP: TStringField;
    cdsParcTransferidoREC_NOSSONUMERO: TStringField;
    cdsParcTransferidoREC_VALORTARIFABANCO: TFMTBCDField;
    cdsParcTransferidoREC_VALORTITULOTITULO: TFMTBCDField;
    cdsParcTransferidoREC_DTESTORNO: TDateField;
    cdsParcTransferidoREC_HOPAGA: TStringField;
    cdsParcTransferidoREC_MOV_CAIXA: TIntegerField;
    dstVendaCotasCOT_DTINATIVACAO: TDateField;
    dstVendaCotasCOT_DTREATIVACAO: TDateField;
    cdsVendaContasCOT_DTINATIVACAO: TDateField;
    cdsVendaContasCOT_DTREATIVACAO: TDateField;
    cdsEstornoCredito: TClientDataSet;
    cdsEstornoCreditoREC_NRVEND: TIntegerField;
    cdsEstornoCreditoREC_CDGRUP: TIntegerField;
    cdsEstornoCreditoREC_NRCOTA: TIntegerField;
    cdsEstornoCreditoREC_NRPARC: TIntegerField;
    cdsEstornoCreditoREC_VLPARC: TFMTBCDField;
    cdsEstornoCreditoREC_SITUACAO: TStringField;
    cdsEstornoCreditoREC_DTCREDITO: TDateField;
    cdsEstornoCreditoREC_CREDITO: TFMTBCDField;
    cdsEstornoCreditoREC_TPCREDITO: TStringField;
    cdsEstornoCreditoREC_VALOR_DIGITADO: TFMTBCDField;
    dstVendaCotasCOT_VCTDIA: TIntegerField;
    cdsVendaContasCOT_VCTDIA: TIntegerField;
    dstDias: TSQLDataSet;
    dstDiasDIA_CODIGO: TIntegerField;
    dspDias: TDataSetProvider;
    cdsDias: TClientDataSet;
    cdsDiasDIA_CODIGO: TIntegerField;
    cdsVendaContasCOT_DIA: TIntegerField;
    dstVendaCotasCOT_NRRENAVAN: TStringField;
    dstVendaCotasCOT_LOCALPAGAMENTO: TStringField;
    cdsVendaContasCOT_NRRENAVAN: TStringField;
    cdsVendaContasCOT_LOCALPAGAMENTO: TStringField;
    cdsConfigCFG_QTESPACO_CONTRATO1: TFMTBCDField;
    cdsConfigCFG_QTESPACO_CONTRATO2: TFMTBCDField;
    cdsConfigCFG_CONTALIE_PXLINHA: TIntegerField;
    cdsConfigCFG_CONTALIE_PXLINHA_VERSO: TFMTBCDField;
    dstVendaCotasCOT_NTFISCAL: TStringField;
    dstVendaCotasCOT_SALDODEVEDOR: TFMTBCDField;
    dstVendaCotasCOT_VALORCREDITO_REL: TFMTBCDField;
    dstVendaCotasCOT_PRESTACOES_RESTANTES: TIntegerField;
    cdsVendaContasCOT_NTFISCAL: TStringField;
    cdsVendaContasCOT_SALDODEVEDOR: TFMTBCDField;
    cdsVendaContasCOT_VALORCREDITO_REL: TFMTBCDField;
    cdsVendaContasCOT_PRESTACOES_RESTANTES: TIntegerField;
    cdsParcelaBoleto: TClientDataSet;
    cdsParcelasPAR_NRPARCELA: TIntegerField;
    cdsParcelasPAR_VENCIMENTO: TDateField;
    cdsParcelasPAR_VALOR: TCurrencyField;
    cdsParcelasPAR_BANCO: TStringField;
    cdsParcelasPAR_AGENCIA: TStringField;
    cdsParcelasPAR_CONTA: TStringField;
    cdsParcelasPAR_CHEQUE: TStringField;
    dstParcelasREC_HOPAGA: TStringField;
    dstParcelasREC_MOV_CAIXA: TIntegerField;
    dstParcelasREC_VALOR_DIGITADO: TFMTBCDField;
    dstParcelasREC_NATUREZA: TIntegerField;
    cdsParcelasREC_HOPAGA: TStringField;
    cdsParcelasREC_MOV_CAIXA: TIntegerField;
    cdsParcelasREC_VALOR_DIGITADO: TFMTBCDField;
    cdsParcelasREC_NATUREZA: TIntegerField;
    dstBancosBAN_FLATIVO: TStringField;
    cdsbancosBAN_FLATIVO: TStringField;
    dstUsuariosSEN_FLRESU: TStringField;
    cdsUsuariosSEN_FLRESU: TStringField;
    cdsResumo: TClientDataSet;
    cdsResumoCDS_CODIGO: TIntegerField;
    cdsResumoCDS_DESCRICAO: TStringField;
    cdsResumoCDS_VALOR: TFloatField;
    cdsListaMenus: TClientDataSet;
    cdsListaMenusMEN_CODIGO: TIntegerField;
    cdsListaMenusMEN_NOME: TStringField;
    cdsListaMenusMEN_CODIGOPAI: TIntegerField;
    cdsListaMenusMEN_EXISTE: TStringField;
    dstUsuariosSEN_IMPRESSAO: TStringField;
    cdsUsuariosSEN_IMPRESSAO: TStringField;
    cdsConfigCFG_FORNECEDOR: TIntegerField;
    cdsConfigCFG_SEQ_CONTAPAGAR: TIntegerField;
    dstFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dstFornecedorFOR_CODIGO: TIntegerField;
    dstFornecedorFOR_FANTASIA: TStringField;
    dstFornecedorFOR_RAZAO: TStringField;
    dstFornecedorFOR_CNPJ: TStringField;
    dstFornecedorFOR_INSCESTADUAL: TStringField;
    dstFornecedorFOR_ENDERECO: TStringField;
    dstFornecedorFOR_NUMERO: TIntegerField;
    dstFornecedorFOR_CEP: TStringField;
    dstFornecedorFOR_BAIRRO: TStringField;
    dstFornecedorFOR_CIDADE: TStringField;
    dstFornecedorFOR_UF: TStringField;
    dstFornecedorFOR_FONE1: TStringField;
    dstFornecedorFOR_FONE2: TStringField;
    dstFornecedorFOR_FAX: TStringField;
    dstFornecedorFOR_OPERACAO: TIntegerField;
    dstFornecedorFOR_CONTA: TStringField;
    dstFornecedorFOR_CONTATO1: TStringField;
    dstFornecedorFOR_CARGO1: TStringField;
    dstFornecedorFOR_FONECON1: TStringField;
    dstFornecedorFOR_CONTATO2: TStringField;
    dstFornecedorFOR_CARGO2: TStringField;
    dstFornecedorFOR_FONECON2: TStringField;
    dstFornecedorFOR_SITE: TStringField;
    dstFornecedorFOR_EMAIL: TStringField;
    dstFornecedorFOR_CDBANC: TIntegerField;
    dstFornecedorFOR_AGENCIA: TStringField;
    dstFornecedorFOR_DTCADA: TDateField;
    dstFornecedorFOR_HOCADA: TStringField;
    dstFornecedorFOR_USUARIO_CAD: TIntegerField;
    dstFornecedorFOR_DTALTE: TDateField;
    dstFornecedorFOR_HOALTE: TStringField;
    dstFornecedorFOR_USUARIO_ALT: TIntegerField;
    cdsFornecedorFOR_CODIGO: TIntegerField;
    cdsFornecedorFOR_FANTASIA: TStringField;
    cdsFornecedorFOR_RAZAO: TStringField;
    cdsFornecedorFOR_CNPJ: TStringField;
    cdsFornecedorFOR_INSCESTADUAL: TStringField;
    cdsFornecedorFOR_ENDERECO: TStringField;
    cdsFornecedorFOR_NUMERO: TIntegerField;
    cdsFornecedorFOR_CEP: TStringField;
    cdsFornecedorFOR_BAIRRO: TStringField;
    cdsFornecedorFOR_CIDADE: TStringField;
    cdsFornecedorFOR_UF: TStringField;
    cdsFornecedorFOR_FONE1: TStringField;
    cdsFornecedorFOR_FONE2: TStringField;
    cdsFornecedorFOR_FAX: TStringField;
    cdsFornecedorFOR_OPERACAO: TIntegerField;
    cdsFornecedorFOR_CONTA: TStringField;
    cdsFornecedorFOR_CONTATO1: TStringField;
    cdsFornecedorFOR_CARGO1: TStringField;
    cdsFornecedorFOR_FONECON1: TStringField;
    cdsFornecedorFOR_CONTATO2: TStringField;
    cdsFornecedorFOR_CARGO2: TStringField;
    cdsFornecedorFOR_FONECON2: TStringField;
    cdsFornecedorFOR_SITE: TStringField;
    cdsFornecedorFOR_EMAIL: TStringField;
    cdsFornecedorFOR_CDBANC: TIntegerField;
    cdsFornecedorFOR_AGENCIA: TStringField;
    cdsFornecedorFOR_DTCADA: TDateField;
    cdsFornecedorFOR_HOCADA: TStringField;
    cdsFornecedorFOR_USUARIO_CAD: TIntegerField;
    cdsFornecedorFOR_DTALTE: TDateField;
    cdsFornecedorFOR_HOALTE: TStringField;
    cdsFornecedorFOR_USUARIO_ALT: TIntegerField;
    cdsParcelaContas: TClientDataSet;
    cdsParcelasCDS_NRPARC: TIntegerField;
    cdsParcelasCDS_CDCLIE: TIntegerField;
    cdsParcelasCDS_DTVENC: TDateField;
    cdsParcelasCDS_DTEMIS: TDateField;
    cdsParcelasCDS_DTPAGA: TDateField;
    cdsParcelasCDS_VALOR: TFloatField;
    cdsParcelasCDS_MULTA: TFloatField;
    cdsParcelasCDS_JUROS: TFloatField;
    cdsParcelasCDS_DESCONTO: TFloatField;
    cdsParcelasCDS_BANCO: TIntegerField;
    cdsParcelasCDS_AGENCIA: TStringField;
    cdsParcelasCDS_NRCONTA: TStringField;
    cdsParcelasCDS_NRCHEQUE: TStringField;
    dstContaPagar: TSQLDataSet;
    dspContaPagar: TDataSetProvider;
    cdsContaPagar: TClientDataSet;
    cdsContaPagarPAG_SEQUENCIA: TIntegerField;
    cdsContaPagarPAG_LOJA: TIntegerField;
    cdsContaPagarPAG_NRENTRADA: TIntegerField;
    cdsContaPagarPAG_QTPARCELAS: TIntegerField;
    cdsContaPagarPAG_DATACOMPRA: TDateField;
    cdsContaPagarPAG_DATAVENCIMENTO: TDateField;
    cdsContaPagarPAG_FORNECEDOR: TIntegerField;
    cdsContaPagarPAG_NRNOTA: TStringField;
    cdsContaPagarPAG_NATUREZADESPESA: TIntegerField;
    cdsContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField;
    cdsContaPagarPAG_DESCRICAO: TMemoField;
    cdsContaPagarPAG_VALORPARCELA: TFMTBCDField;
    cdsContaPagarPAG_SITUACAO: TStringField;
    cdsContaPagarPAG_DATAPAGAMENTO: TDateField;
    cdsContaPagarPAG_VALORPAGO: TFMTBCDField;
    cdsContaPagarPAG_VALORDESCONTO: TFMTBCDField;
    cdsContaPagarPAG_VALORJUROS: TFMTBCDField;
    cdsContaPagarPAG_MODALIDADE: TIntegerField;
    cdsContaPagarPAG_USUARIO: TIntegerField;
    cdsContaPagarPAG_SERIENOTA: TStringField;
    dstRegContaPagar: TSQLDataSet;
    dstRegContaPagarPAG_SEQUENCIA: TIntegerField;
    dstRegContaPagarPAG_LOJA: TIntegerField;
    dstRegContaPagarPAG_NRENTRADA: TIntegerField;
    dstRegContaPagarPAG_QTPARCELAS: TIntegerField;
    dstRegContaPagarPAG_DATACOMPRA: TDateField;
    dstRegContaPagarPAG_DATAVENCIMENTO: TDateField;
    dstRegContaPagarPAG_FORNECEDOR: TIntegerField;
    dstRegContaPagarPAG_NRNOTA: TStringField;
    dstRegContaPagarPAG_SERIENOTA: TStringField;
    dstRegContaPagarPAG_NATUREZADESPESA: TIntegerField;
    dstRegContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField;
    dstRegContaPagarPAG_DESCRICAO: TMemoField;
    dstRegContaPagarPAG_VALORPARCELA: TFMTBCDField;
    dstRegContaPagarPAG_SITUACAO: TStringField;
    dstRegContaPagarPAG_DATAPAGAMENTO: TDateField;
    dstRegContaPagarPAG_VALORPAGO: TFMTBCDField;
    dstRegContaPagarPAG_VALORDESCONTO: TFMTBCDField;
    dstRegContaPagarPAG_VALORJUROS: TFMTBCDField;
    dstRegContaPagarPAG_MODALIDADE: TIntegerField;
    dstRegContaPagarPAG_BANCO: TStringField;
    dstRegContaPagarPAG_NRCONTA: TStringField;
    dstRegContaPagarPAG_NRCHEQUE: TStringField;
    dstRegContaPagarPAG_USUARIO: TIntegerField;
    dspRegContaPagar: TDataSetProvider;
    cdsRegContaPagar: TClientDataSet;
    cdsRegContaPagarPAG_SEQUENCIA: TIntegerField;
    cdsRegContaPagarPAG_LOJA: TIntegerField;
    cdsRegContaPagarPAG_NRENTRADA: TIntegerField;
    cdsRegContaPagarPAG_QTPARCELAS: TIntegerField;
    cdsRegContaPagarPAG_DATACOMPRA: TDateField;
    cdsRegContaPagarPAG_DATAVENCIMENTO: TDateField;
    cdsRegContaPagarPAG_FORNECEDOR: TIntegerField;
    cdsRegContaPagarPAG_NRNOTA: TStringField;
    cdsRegContaPagarPAG_SERIENOTA: TStringField;
    cdsRegContaPagarPAG_NATUREZADESPESA: TIntegerField;
    cdsRegContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField;
    cdsRegContaPagarPAG_DESCRICAO: TMemoField;
    cdsRegContaPagarPAG_VALORPARCELA: TFMTBCDField;
    cdsRegContaPagarPAG_SITUACAO: TStringField;
    cdsRegContaPagarPAG_DATAPAGAMENTO: TDateField;
    cdsRegContaPagarPAG_VALORPAGO: TFMTBCDField;
    cdsRegContaPagarPAG_VALORDESCONTO: TFMTBCDField;
    cdsRegContaPagarPAG_VALORJUROS: TFMTBCDField;
    cdsRegContaPagarPAG_MODALIDADE: TIntegerField;
    cdsRegContaPagarPAG_BANCO: TStringField;
    cdsRegContaPagarPAG_NRCONTA: TStringField;
    cdsRegContaPagarPAG_NRCHEQUE: TStringField;
    cdsRegContaPagarPAG_USUARIO: TIntegerField;
    cdsRegContaPagarPAG_NOME_MODA: TStringField;
    cdsListaNaturezas: TClientDataSet;
    cdsListaNaturezasNAT_CODIGO: TIntegerField;
    cdsListaNaturezasNAT_NOME: TStringField;
    cdsListaNaturezasNAT_TIPO: TStringField;
    cdsListaModas: TClientDataSet;
    cdsListaModasMOD_CODIGO: TIntegerField;
    cdsListaModasMOD_NOME: TStringField;
    cdsRegContaPagarPAG_TOTAL_CALC: TFloatField;
    dstRegContaPagarPAG_PARCELA: TIntegerField;
    cdsRegContaPagarPAG_PARCELA: TIntegerField;
    dstContaPagarPAG_SEQUENCIA: TIntegerField;
    dstContaPagarPAG_LOJA: TIntegerField;
    dstContaPagarPAG_NRENTRADA: TIntegerField;
    dstContaPagarPAG_PARCELA: TIntegerField;
    dstContaPagarPAG_QTPARCELAS: TIntegerField;
    dstContaPagarPAG_DATACOMPRA: TDateField;
    dstContaPagarPAG_DATAVENCIMENTO: TDateField;
    dstContaPagarPAG_FORNECEDOR: TIntegerField;
    dstContaPagarPAG_NRNOTA: TStringField;
    dstContaPagarPAG_SERIENOTA: TStringField;
    dstContaPagarPAG_NATUREZADESPESA: TIntegerField;
    dstContaPagarPAG_DESCONTOANTECIPADO: TFMTBCDField;
    dstContaPagarPAG_DESCRICAO: TMemoField;
    dstContaPagarPAG_VALORPARCELA: TFMTBCDField;
    dstContaPagarPAG_SITUACAO: TStringField;
    dstContaPagarPAG_DATAPAGAMENTO: TDateField;
    dstContaPagarPAG_VALORPAGO: TFMTBCDField;
    dstContaPagarPAG_VALORDESCONTO: TFMTBCDField;
    dstContaPagarPAG_VALORJUROS: TFMTBCDField;
    dstContaPagarPAG_MODALIDADE: TIntegerField;
    dstContaPagarPAG_BANCO: TStringField;
    dstContaPagarPAG_NRCONTA: TStringField;
    dstContaPagarPAG_NRCHEQUE: TStringField;
    dstContaPagarPAG_USUARIO: TIntegerField;
    cdsContaPagarPAG_PARCELA: TIntegerField;
    cdsEstornaCP: TClientDataSet;
    cdsContaPagarPAG_BANCO: TStringField;
    cdsContaPagarPAG_NRCONTA: TStringField;
    cdsContaPagarPAG_NRCHEQUE: TStringField;
    dstContaPagarPAG_AGENCIA: TStringField;
    cdsContaPagarPAG_AGENCIA: TStringField;
    dstRegContaPagarPAG_AGENCIA: TStringField;
    cdsRegContaPagarPAG_AGENCIA: TStringField;
    dstVendaCotasCOT_REDUZIR_VALOR_PC_SALDO: TStringField;
    cdsVendaContasCOT_REDUZIR_VALOR_PC_SALDO: TStringField;
    dstBancosBAN_INICIO_NOSSO_NUMERO: TStringField;
    cdsbancosBAN_INICIO_NOSSO_NUMERO: TStringField;
    cdsListaCedenteBancos: TClientDataSet;
    cdsListaCedenteBancosBAN_CODIGO: TIntegerField;
    cdsListaCedenteBancosBAN_NOME: TStringField;
    cdsListaCedenteBancosBAN_NRBANC: TIntegerField;
    cdsListaCedenteBancosBAN_NRAGEN: TIntegerField;
    cdsListaCedenteBancosBAN_NRCONT: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dspBancosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspConfigGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspClientesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspGruposGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspModelosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspVendaContasGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsVendaContasCalcFields(DataSet: TDataSet);
    procedure dspLancesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsCotasClienteCalcFields(DataSet: TDataSet);
    procedure cdsAvalistaCalcFields(DataSet: TDataSet);
    procedure cdsLancesCotasCalcFields(DataSet: TDataSet);
    procedure cdsBaixaLancesCalcFields(DataSet: TDataSet);
    procedure dspCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspMovCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure sqlConnBeforeConnect(Sender: TObject);
    procedure dspSaldoClienteGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dspDiasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsRegContaPagarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Validar_Banco(M_NMBANC : String) : Boolean;
    function Validar_Modelo(M_NMDESC : String) : Boolean;
    function Validar_Grupos(M_NMDESC : String) : Boolean;
    function Verificar_Grupo(M_CDGRUP : integer) : Boolean;
    function Verificar_Grupo2(M_CDGRUP : integer) : Boolean;
    function Verificar_Cota_Grupo(M_CDGRUP, M_NRCOTA : integer) : Boolean;
    function Verificar_Cota_Grupo2(M_CDGRUP, M_NRCOTA : integer) : Boolean;
    function Verificar_Cota_Grupo_Aberta(M_CDGRUP, M_NRCOTA : integer) : Integer;
    function Validar_Plano_Grupo(M_CDGRUP, M_NRPLAN : integer) : Boolean;
    function Validar_Usuario(M_NMUSUA : String) : Boolean;
    function Validar_Cliente(M_NMCLIE, M_NUMCPF, M_NUMCGC, M_RNIDEN : String) : Boolean;
    function GetCPFCliente(M_NUMCPF : String) : Boolean;
    function Valor_Parcela(M_VLCRED, M_VLPLAN, M_VLPARC, M_TAXADM : Double; aFluxoTxAdm : String) : Double;
    function GetCodigoCliente(M_CDCLIE : integer) : Boolean;
    function GetNomeCliente(M_CDCLIE : integer) : String;
    function GetNomeBanco(M_CDBANC : integer) : String;
    function GetNomeGrupo(M_CDGRUP : integer) : String;
    Procedure MOSTRA_SITUACAO_COTA(M_NRVEND, M_CDGRUP, M_NRCOTA : Integer);
    Procedure MOSTRA_SITUACAO_COTA2(M_NRVEND, M_CDGRUP, M_NRCOTA : Integer; M_FLSITU, M_TIPO : String);
    Procedure STATUS_GRUPO(M_CDGRUP : Integer);
    procedure Start;
    procedure Comit(aTransc : TTransactionDesc);
    procedure Rollback;
    procedure Adicionar_Parcela(W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC : Integer;
              W_DTVENC : TDate;
              W_VLPARC, W_VLMULT, W_TOTAL_PAGO, W_CREDITO, W_TarifaBanco, W_ValorTitulo : Double;
              W_CODOP, W_FLSITU, W_REGISTRO, W_FORMABAIXA, W_PrintSlip : String;
              W_CDOPER, W_CDBANC : integer;
              W_HISTORICO, W_TPCREDITO, W_TPSLIP, W_NOSSONUMERO : String);
    function Atualizar_Grupo(W_CDGRUP : integer): boolean;
    procedure Parametros;
    procedure Nova_Venda(W_CDGRUP, W_NRCOTA, W_NRVEND : Integer);
    procedure Incluir_Parcela(W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC, W_CDBANC : Integer;
               W_DTVENC : TDate; W_VLPARC, M_VLCRED : double);
    procedure Incluir_Parcela_Boleto_avulso(W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC, W_CDBANC : Integer;
               W_DTVENC : TDate; W_VLPARC : double; aInstrucoes : String);
    function Calcular_Taxa_Adesao(W_VLCRED, M_VLPERC : double): double ;
    function Iniciar_Grupo(W_CDGRUP : integer; W_DTVENC : TDate) : boolean;
    procedure CotasGrupo(W_CDGRUP : integer);
    function GetGrupo(aBusca, aCampo : String) : String;
    Function Baixa_Parcela_Manual(M_CDGRUP, M_NRCOTA, M_NRVEND, M_NRPARC : integer; M_DTPAGA : TDate; M_VLCRED, M_VLMULT, M_TOPAGO, M_VLDIGI : Double; aTipoBaixa, M_HOPAGA : String; aNRAUTE : integer) : boolean;
    Function Baixa_Parcela_Automatica(aNossoNumero, aHora : String; aDataPaga : TDate; aValor, aMulta : double; aMovCaixa : integer) : boolean;
    //Function GetVerificaParcelaPaga(aNossoNumero : String);
    Function Estorno_Parcela_Manual(M_CDGRUP, M_NRCOTA, M_NRVEND, M_NRPARC : integer; M_DTESTO : TDate; aDescEstorno : String) : boolean;
    Function Estorno_Credito_Parcela_Manual(M_CDGRUP, M_NRCOTA, M_NRVEND, M_NRPARC : integer;  M_VLCRED : Double) : boolean;
    Function Incluir_Lance(M_CDGRUP, M_NRCOTA, M_NRVEND, M_NRASSE : Integer;
              M_TIPO : String; M_VLLANC, M_PELANC : Double; M_DTLANC : TDate) : Boolean;
    procedure Excluir_Lance(M_NRSEQU : integer);
    Function GetNumeroVenda(M_CDGRUP, M_NRCOTA : Integer) : Integer;
    Function GetCotaCliente(M_CDGRUP, M_NRCOTA : Integer) : Boolean;
    Function Contemplacao_Cota(M_NRVEND, M_CDGRUP, M_NRCOTA, M_NRASSE : Integer;
             M_DTASSE : TDate; M_VLLANC : Double; M_TPCONT : String) : boolean;
    Function Estorno_Contemplacao_Cota(M_NRVEND, M_CDGRUP, M_NRCOTA : Integer) : boolean;
    Procedure Cotas_Cliente(M_CDCLIE : Integer);
    Function Grupo_Mult(M_CDGRUP : Integer) : Boolean;
    Function GetAssembleiaGrupo(M_CDGRUP, M_NRASSE : Integer) : Boolean;
    Procedure Incluir_Avalista(aCodigo : integer; aNome : String);
    Function Verificar_Avalista(aVenda, aCodigo : integer) : Boolean;
    Function GetLance(M_CDGRUP, M_NRCOTA, M_NRASSE : integer ) : Double;
    Procedure GetLanceCota(M_CDGRUP, M_NRCOTA, M_NRASSE : integer );
    Function VerificarLance(M_CDGRUP, M_NRCOTA, M_NRASSE : integer; W_TPLANC : String ) : integer;
    Function VerificarCotaContemplada(M_CDGRUP, M_NRCOTA : integer ) : Boolean;
    function Valor_Parcelas_Vincendas(aCDS : TClientDataSet) : double;
    function Total_Parcelas_Atrasadas(aCDS : TClientDataSet) : double;
    Procedure Abrir_Cotas_Grupo(M_CDGRUP : integer);
    Function Gerar_Nosso_Numero(aVenda, aGrupo, aCota, aParcela, aCodBanco : Integer): boolean;
    Function Atualizar_Banco_Cota(aVenda, aCodigo, aCota, aBanco, aBanco_Anterior : integer) : boolean;
    Function Atualizar_Banco_Cota_Vazio(aVenda, aCodigo, aCota, aBanco, aParcela : integer) : boolean;
    Function Banco_Venda(aVenda : integer) : Integer;
    procedure CampoModelo(aCombo : TComboBox; aModelo : Integer);
    Function GetDescModelo(aModelo : integer) : String;
    procedure ListaModelo(aCombo : TComboBox);
    procedure ListaBancos(aCombo : TComboBox);
    Function Excluir_Venda(aVenda : integer) : boolean;
    Function GetModelo(aCodigo : integer) : boolean;
    procedure ListaMultContemplacao(aGrupo : integer);
    procedure ListaAvalistaCliente(aCliente : integer);
    Function ImportarParcelas(aVenda : integer) : Boolean;
    procedure CotasModelo(aModelo : integer);
    procedure GetAssembleia(aVenda, aGrupo, aCota, aAssembleia : integer; aTipo : String);
    Function BaixaEstornoLances(aVenda, aGrupo, aCota, aAssembleia, aCaixa : integer; aTipo, aBaixaEstorno : String; aValorLance, aValorAceito : double; aDataAssem : TDate): boolean;
    Function VerificarBaixaLance(aGrupo, aAssembleia : integer) : boolean;
    procedure CupomBaixa(aCDS :TClientDataSet; aVenda, aGrupo, aCota, aParcela, aCliente : integer; aVia : String);
    procedure AutenticacaoBaixa(aVenda, aGrupo, aCota, aParcela, aCliente, aRegistro, iRgcaixa : integer; aDataMov : String; aValorParcela : Double);
    procedure AutenticacaoDoc(iSequencia : Integer);
    procedure AutenticacaoDocContaPagar(iSequencia : Integer; aTipo : String);
    procedure AutenticacaoEstorno(iSequencia : Integer);
    procedure CupomEntradaSaida(aSEQUENCIA, iSeqCaixa, aCaixa : integer; aVia : String);
    Function GetNomeAvalista(aCodigo : Integer) : String;
    Function Add_Avalista(aVenda, aCodigo : integer) : boolean;
    Function Testa_Caixa(aCodigo : integer; aSituacao : String) : Boolean;
    Function Verificar_Caixa_Aberto(aCodigo : integer) : Boolean;
    Function GetVerificarSenha(aCodigo : integer; aSenha : String) : Boolean;
    Function Incluir_Dados_Caixa(aNUMERO, aCAIXA, aRGINICIAL, iSeqInicial : integer ; aDTABERTURA : TDate; aHOABERTURA, aSITUACAO : String) : boolean;
    Function Fechar_Caixa(aCAIXA, aRegFinal, iSeqFinal : integer; aData : TDate; aHora : String) : boolean;
    Function Numero_Caixa(aCAIXA, aRegInicial, aRegFinal : integer) : integer;
    Function Incluir_Movimento_Caixa(pSEQUENCIA, pSeqCaixa, pVENDA, pNRPARC, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO : integer;
           pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO : String ; pDTMOVIMENTO : TDate; pVLMODALIDADE, pVLTROCO : Double; aBanco : Integer; aAgencia, aConta, aCheque : String) : boolean;
    Function Editar_Movimento_Caixa(pSEQUENCIA, pCAIXA, pNATUREZA : integer;
           pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO : String ; pDTMOVIMENTO : TDate) : boolean;
    Function GetRegMovCaixa(): Integer;
    Function SetClienteSPC(aVenda : Integer; aSitucao : String) : Boolean;
    Function SetClienteProtesto(aVenda : Integer; aSitucao : String) : Boolean;
    Function SetPosicaoCliente(aVenda : Integer; aSitucao : String) : Boolean;
    Function SetPosicaoInativoPago(aVenda : Integer; aSitucao : String) : Boolean;
    procedure ListaModalidades(aCombo : TComboBox);
    Function VerificarModa(aCodigo : Integer; aTipo : String) : Boolean;
    Function Verificar_Acesso_Menu(aUsuario, aCodMenu : Integer) : String;
    procedure Incluir_Acesso_Usuario(aCodUsu, aCodMenu : Integer; aNome_Acesso,
       aConsulta, aNovo, aAlterar, aExcluir : String);
    Procedure SetAdminUsuario(aCodigo : Integer; aValor : String);
    Function ValidarAcesso(aCodUsuario : Integer) : boolean;
    procedure Acessos_Sistema(aCds : TClientDataSet; aTipo, aCodUsu : Integer);
    Function GetNomeMenu(aCodMenu : Integer) : String;
    Function Verificar_Menu_Pai(aCodigo : Integer) : Boolean;
    Procedure Verificar_Direito_Acesso(aUsuario, aCodMenu : Integer);
    Function GetNomeNatureza(aDescricao : String) : Boolean;
    Function GetCodNatureza(aDescricao : String) : Integer;
    Function GetNaturezaNome(aCogigo : Integer) : String;
    function GetTipoNatureza(aDescricao : String) : String;
    Function GetCaixaRecebimento(aSequencia, aVenda : Integer) : Integer;
    Function GetNomeCaixa(aCodigo : Integer) : String;
    Procedure Incluir_Natureza(aCodigo : integer; aDescricao, aTipo : String);
    function GetCodModalidade(aDescricao : String) : integer;
    function SetDesalienacaoCota(iVenda : integer; aSituacao : String) : Boolean ;
    function GetVerificaGrupoIniciou(aGrupo : integer) : boolean;
    function GetRegInicialCaixa(aCaixa, aRgFinal : integer) : Integer;
    function GetNomeModalidade(aCodigo : integer) : String;
    function GetNomeDispositivo(): String;
    function AjustaCodCliente(): boolean;
    function VerificarProximoLance(): boolean;
    function AjustaProximoLance(): boolean;
    function AjustaNumVenda(): boolean;
    function GetNumVenda(aVenda : integer) : boolean;
    Function VerificaBancoCliente(aVenda, aGrupo, aCota, aBanco : integer) : boolean;
    Function AdicionarAcaoUsuario(aUsuario : integer; aData : TDate; aAcao : String) : boolean;
    Function SetTarefaUsuario(M_NMDESC : String) : Boolean;
    Procedure SetTarefa_Usuario(M_NMDESC : String);
    Function GetCodMenu(aNomeMenu : String) : Integer;
    Function SetValorCredito(aVenda : Integer; aValorCredito, aValorParcela : Double) : boolean;
    Function SetValorParcela(aVenda, aGrupo, aCota, aParcela : Integer; aDataRef : TDate; aValorParcela : Double) : boolean;
    Function SetValorNovoParcela(aVenda : Integer; aDataRef : TDate; aValorParcela : Double) : boolean;
    Function GetNumPlaca(aPlaca : String): Boolean;
    Function AutenticarSupervisor(iCodigo : integer) : boolean;
    Procedure CumpoAbrirCaixa(iCaixa, iRegistro, iRgInicial : integer; aValorInicial : double);
    Function BaixaPrimeiraParcela(REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC :integer;
                 REC_DTPAGA : TDate; aValor, fValorCredito : Double) : boolean;
    Function PrimeiroReg(aTabela, aCampo : String) : integer;
    Function UltimoReg(aTabela, aCampo : String) : integer;
    Function GetClienteVenda(iVenda : Integer) : String;
    Procedure ImprimiEtiqueta(aCodigo : String);
    Procedure ImprimiEtiquetaNovo(aCodigo : String);
    Function Excluir_Avalista(iVenda, iAvalista : Integer) : Boolean;
    Function GetSequenciaCaixa(iCaixa : Integer) : Integer;
    Function SetCreditoParcela(iVenda, iGrupo, iCota, iParcela, iCaixa, iModa : Integer; fValor : Double;aBanco : Integer; aAgencia, aConta, aCheque : String; aData : TDate) : Boolean;
    Function VerificarProximoParcela(iVenda, iGrupo, iCota, iParcela : Integer): Boolean;
    Function Impressao_Credito(iSequencia, iCaixa, iVenda, iGrupo, iCota, iParcela : Integer): Boolean;
    Function Impressao_Estorno_Credito(iSequencia, iCaixa, iVenda, iGrupo, iCota, iParcela : Integer): Boolean;
    Function Verificar_Venda_Cliente(iCodigo : Integer) : Boolean;
    Procedure GravaTamanhoFonte(iValor : integer);
    Function SetSaldoCliente(iVenda, iGrupo, iCota, iCliente : Integer; aTipo : String; fValor : Double): Boolean;
    Function GetSaldoCliente(iCliente : Integer): Boolean;
    Function GetSaldo(iCliente : Integer): Double;
    Function GetSaldoNovo(iCliente : Integer): Double;
    Function Verificar_Saldo_Cliente(iCliente : Integer) : Boolean;
    Function Verificar_Saldo_Cliente_Venda(iVenda, iCliente : Integer) : Boolean;
    Function Verificar_PC_Abertas(iVenda : Integer) : Boolean;
    Function Verificar_PC_Paga(iVenda, iGrupo, iCota, iParcela : Integer) : Boolean;
    Function GetProximaCota(iGrupo : Integer): Integer;
    Function MigrarClienteGrupo(iGrupoNovo, iCota, iCliente : integer) : boolean;
    Function MigrarParcelasCliente(iVenda, iGrupo, iCota : integer; aCdsParcelas : TClientDataSet) : boolean;
    Function VerificarClienteGrupoNovo(iGrupo, iCliente : Integer) : boolean;
    Function AlterarStatusparaMigrado(iVenda : Integer) : Boolean;
    Function AlterarStatusVenda(iVenda, iUsuario : Integer; aStatusAtual : String) : Boolean;
    Function AlterarStatusVendaCliente(iVenda, iUsuario : Integer; aStatusAtual, aStatusNovo : String) : Boolean;
    Function GetParcelaExiste(iVenda, iGrupo, iCota, iParcela : integer) : Boolean;
    function AlterarDataPagamentoParcela(iVenda, iGrupo, iCota, iParcela, iUsuario : Integer; aData, aDataAnterior : TDateTime) : Boolean;
    Function GetTotalEstornoCredito(iCaixa, iRGInicial, iRGFinal : Integer) : Double;
    Function GetExistePCPaga(iGrupo, iCota : Integer) : Boolean;
    Function GetExisteDiaPagamento(iVenda : Integer) : Boolean;
    Function SetNovoDiaVencimento(iVenda, iDia, iUsuario : Integer) : Boolean;
    Function GetDiaVencimento(iDia : Integer) : Boolean;
    Function CriarParcelas(iParcela : Integer; aDtVencimento : TDatetime; fValor : Double) : Boolean;
    Function SetDtInativacaoPago(iVenda : Integer; aData : TDate) : Boolean;
    Function GetVariacaoBanco(iBanco : Integer): String;
    Function GetVerificarBancoAtivo(iBanco : Integer): Boolean;
    Function SetBancodoCliente(iVenda, iGrupo, iCota, iBancoAtual, iBancoNovo : Integer): Boolean;
    Function GetTotalContasRecebidaPeriodo(aDtInicio, aDtFinal : TDate; aTipoBaixa : String): Double;
    Function GetQuantidadeContasRecebidaPeriodo(aDtInicio, aDtFinal : TDate; aTipoBaixa : String): Integer;
    Function GetTotalEntradasSaidasCaixaPeriodo(aDtInicio, aDtFinal : TDate; aTipoMov : String): Double;
    Function GetQuantEntradasSaidasCaixaPeriodo(aDtInicio, aDtFinal : TDate; aTipoMov : String): Integer;
    Function GetQuantCotasVendidaPeriodo(aDtInicio, aDtFinal : TDate; aPosicao : String): Integer;
    Function GetVerResumo(iUsuario : Integer): Boolean;
    Function GetDispositivoImpUsuario(iUsuario : Integer): String;
    Function ProcurarValor(aValor, aCampo, aTabela : String) : Boolean;
    Function LOCALIZAR_BANCO(aCodigo : String): Boolean;
    procedure CarregarNaturezas(aCombo : TComboBox; aTipo : String);
    Function AddContaPagarFornecedor(iLoja, iFornecedor, iNatureza, iQuantParcelas, iUsuario : Integer;
             aDtEmissao : TDatetime; aNumNota, aSerie, aObservacao : String; aCDSParcelas : TClientDataSet): Boolean;
    Function GetNomeFornecedor(iCodigo : Integer) : String;
    Function GetCPNumeroSerieNota(iFornecedor : Integer; aNumNota, aSerie : String): Boolean;
    Function ExcluirContaPagar(iSeq, iLoja, iParcela : Integer): Boolean;
    Function EstornarContaPagar(iSeq, iLoja, iParcela : Integer; aMotivo : String): Boolean;
    Function AddNatureza(aDescricao, aTipo : String): Integer;
    Function SetAtualizarCodigoBancoParcelas(idVenda, idBanco : Integer): Boolean;
  end;

Const
    M_NMFILE = 'logo.jpg';

var
  dmAdmDados: TdmAdmDados;
  Transc : TTransactionDesc;
  W_NRMESE, W_NRCOTA, W_NRASSE, W_PCPAGA, W_PCATRA, W_PCVINC : integer;
  W_FLINIC, W_FLCORR, W_FLCONT, W_TPCONT, W_FLSITU : String;
  W_NRSEQU : INTEGER;
  aDataMovimento : TDate;
  aAcaoUsuario, aHoraMov : String;
  aTexto : TStrings;
  M_VALOR_CRED : Double;


implementation

uses uFuncoes, uDmPesquisas, DateUtils, udmRelatorios, Variants,
  uFrmAdmMain, uFrmCadGrupos, ppReport;
//uDmPesquisas,

{$R *.dfm}

procedure TdmAdmDados.DataModuleCreate(Sender: TObject);
begin
  {aTexto := sqlConn.Params;
  with sqlConn.Params do
  begin
    Clear;
    Add('DriverName=UIB FireBird15');
    Add('Database=C:\Infog2\CONSOCIO.FDB');
    //Add('Database=C:\Infog2\AdmConsocio\CONSOCIO.FDB');
    Add('RoleName=RoleName');
    Add('User_Name=SYSDBA');
    Add('Password=masterkey');
    Add('ServerCharSet=WIN1252');
    Add('SQLDialect=3');
    Add('BlobSize=-1');
    Add('CommitRetain=False');
    Add('WaitOnLocks=True');
    Add('ErrorResourceFile=');
    Add('LocaleCode=0000');
    Add('Interbase TransIsolation=ReadCommited');
    Add('Trim Char=False');
  end;
  //
  aTexto := sqlConn.Params;
  Application.MessageBox(PChar(sqlConn.Params),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);}
      //
    {  with sqlConn do
        begin
             DriverName := 'UIB FireBird15';
             //lembrando que os values do parametros abaixo variam de acordo com o banco escolhido
             Params.Values['DataBase']  := 'C:\infog2';
             Params.Values['User_Name'] := 'SYSDBA';
             Params.Values['Password']  := 'masterkey';
        End;}
      //
      try
           sqlConn.Connected := True;
      Except
          on e: exception do
          begin
              Application.MessageBox(PChar('Erro na abertura do Sistema!!! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              sqlConn.Connected := false;
              Application.Terminate;
          End;
      End;
end;

procedure TdmAdmDados.DataModuleDestroy(Sender: TObject);
begin
     sqlConn.Connected := False;
end;

procedure TdmAdmDados.dspBancosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
    TableName := 'bancos';
end;

procedure TdmAdmDados.dspConfigGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'config';
end;

procedure TdmAdmDados.dspClientesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'clientes';
end;

procedure TdmAdmDados.dspGruposGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'grupos';
end;

procedure TdmAdmDados.dspLancesGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
     TableName := 'lances';
end;

procedure TdmAdmDados.dspModelosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'modelos';
end;

function TdmAdmDados.Validar_Banco(M_NMBANC: String): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsBanco do
      begin
           Active := False;
           Params.ParamByName('pNOME').AsString := M_NMBANC;
           Active := True;
           //
           if not (IsEmpty) Then
              Result := True;
           //
           Close;
      End;
end;

function TdmAdmDados.Validar_Modelo(M_NMDESC: String): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsModelos do
      begin
           Active := False;
           Params.ParamByName('pNOME').AsString := M_NMDESC;
           Active := True;
           //
           if not (IsEmpty) Then
              Result := True;
           //
           Close;
      End;
end;

function TdmAdmDados.Validar_Grupos(M_NMDESC: String): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsGrupo  do
      begin
           Active := False;
           CommandText := 'Select GRU_DESCRICAO from grupos Where (GRU_DESCRICAO = :pNOME)';
           Params.ParamByName('pNOME').AsString := M_NMDESC;
           Active := True;
           //
           if not (IsEmpty) Then
              Result := True;
           //
           Close;
      End;
end;

procedure TdmAdmDados.dspUsuariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'usuarios';
end;

function TdmAdmDados.Validar_Usuario(M_NMUSUA: String): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsUsuario do
      begin
           Active := False;
           Params.ParamByName('pNOME').AsString := M_NMUSUA;
           Active := True;
           //
           if not (IsEmpty) Then
              Result := True;
           //
           Close;
      End;
end;

procedure TdmAdmDados.dspVendaContasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'cotas';
end;


procedure TdmAdmDados.Excluir_Lance(M_NRSEQU: integer);
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Delete from lances where (LAN_SEQUENCIA = :pSEQUENCIA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQUENCIA').AsInteger := M_NRSEQU;
       ExecSQL();
       // Grava
       Comit(Transc);
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.Verificar_Grupo(M_CDGRUP: integer): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsGrupo  do
      begin
           Active := False;
           CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO, GRU_LIMITADO, GRU_FIXO, GRU_LIMITEMININO, GRU_LIMITEMAXIMO, GRU_LANCE_MINIMO from grupos Where (GRU_CODIGO = :pCODIGO)';
           Params.ParamByName('pCODIGO').AsInteger := M_CDGRUP;
           Active := True;
           //
           if not (IsEmpty) Then
              Result := True;
           //
           Close;
      End;
end;

function TdmAdmDados.Valor_Parcela(M_VLCRED, M_VLPLAN, M_VLPARC, M_TAXADM: Double;
 aFluxoTxAdm : String): Double;
begin
  if (M_VLCRED > 0) and (M_VLPLAN > 0) Then
  begin
     if (M_VLPARC = 0) Then
      begin
        // sem o valor da 1ª Parcela
        // valor da parcela = crédito basico / plano
        //if (aFluxoTxAdm = 'N') Then
            Result := uFuncoes.Arredondar((M_VLCRED / M_VLPLAN),2)
        {Else
            Result := uFuncoes.Arredondar(((M_VLCRED+uFuncoes.Gerapercentual(M_VLCRED, M_TAXADM)-3000) / M_VLPLAN),2)}
      End
     Else
        // Com o valor da 1ª Parcela
        // valor da parcela = (crédito basico - valor 1ª parcela) / (plano - 1)
        Result := uFuncoes.Arredondar(((M_VLCRED - M_VLPARC)/(M_VLPLAN-1)),2);
  End;      
end;

function TdmAdmDados.Validar_Plano_Grupo(M_CDGRUP,
  M_NRPLAN: integer): Boolean;
begin
     Result := False;
     With dmPesquisas.cdsGrupo  do
      begin
           Active := False;
           CommandText := 'Select GRU_CODIGO, GRU_NRMESES from grupos Where (GRU_CODIGO = :pCODIGO)';
           Params.ParamByName('pCODIGO').AsInteger := M_CDGRUP;
           Active := True;
           //
           if not (IsEmpty) Then
            If (FieldByName('GRU_NRMESES').AsInteger <= M_NRPLAN) Then
                Result := True;
           //
           Close;
      End;
end;

procedure TdmAdmDados.MOSTRA_SITUACAO_COTA(M_NRVEND, M_CDGRUP, M_NRCOTA : Integer);
begin
      //   
      With dmPesquisas.cdsConsultaCota do
        begin
             DisableControls;
             Active := False;
             CommandText := 'Select R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_CDBANC, R.REC_NRPARC, R.REC_DTVENC, ';
             CommandText := CommandText + ' R.REC_MOV_CAIXA, R.REC_VLPARC, R.REC_DTPAGA, R.REC_HOPAGA, R.REC_VLMULT, R.REC_CREDITO, ';
             CommandText := CommandText + ' R.REC_NOSSONUMERO, R.REC_TPCREDITO, R.REC_TPSLIP, R.REC_PRINTSLIP, R.REC_VALORTITULOTITULO, ';
             CommandText := CommandText + ' R.REC_VALORTARIFABANCO, R.REC_DTCREDITO, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_FUNDORES, ';
             CommandText := CommandText + ' CT.COT_TAXA_ADM, R.REC_TOTAL_PAGO, R.REC_FORMABAIXA, R.REC_NATUREZA, R.REC_VALOR_DIGITADO, CT.COT_PLANO from PARCELAS R ';
             CommandText := CommandText + ' INNER join COTAS CT ON CT.COT_NRVENDA = R.REC_NRVEND Where (R.REC_NRVEND = :pNRVEND) ';
             CommandText := CommandText + ' and (R.REC_CDGRUP = :pCDGRUP) AND (R.REC_NRCOTA = :pNRCOTA) order by R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_NRPARC ';
             Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
             Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
             Active := True;
             EnableControls;
             //
             if not (IsEmpty) Then
              begin
                   //W_NRMESE := FieldByName('')
              End;
        End;
        //
        With dmPesquisas.cdsSituacaoCota do
          begin
             DisableControls;
             Active := False;
             //CommandText := 'Select * from cotas where (COT_NRVENDA = :pNRVEND) and (COT_CDGRUPO = :pCDGRUP) AND ( COT_NRCOTA = :pNRCOTA)';
             Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
             Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
             Active := True;
             EnableControls;
          End;
end;

procedure TdmAdmDados.Nova_Venda(W_CDGRUP, W_NRCOTA, W_NRVEND : Integer);
begin
      With cdsParcelas do
        begin
             Active := False;
             //CommandText := 'Select * from parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND)';
             Params.ParamByName('pCDGRUP').AsInteger := W_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := W_NRCOTA;
             Params.ParamByName('pNRVEND').AsInteger := W_NRVEND;
             Active := True;
             //
        End;

end;

procedure TdmAdmDados.Parametros;
begin
     cdsConfig.Close;
     cdsConfig.Open;
end;

procedure TdmAdmDados.STATUS_GRUPO(M_CDGRUP: Integer);
begin
    uFuncoes.FilterCDS(cdsGrupos, fsString, Inttostr(M_CDGRUP));
end;

procedure TdmAdmDados.Comit(aTransc: TTransactionDesc);
begin
     sqlConn.Commit(aTransc);
end;

// Função para contemplação de cota
function TdmAdmDados.Contemplacao_Cota(M_NRVEND, M_CDGRUP, M_NRCOTA,
  M_NRASSE: Integer; M_DTASSE: TDate; M_VLLANC: Double; M_TPCONT : String): boolean;
Var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  := 'Update cotas set COT_DTCONTEMPLACAO = :pDATA, COT_ASSEB_CONTEMP = :pNRASSE , COT_VALORLANCE = :pVALOR, COT_TIPO = :pTPCONT, COT_FLCONTEMPLADO = :pFLCONT ';
  texto  := texto  +  'Where (COT_NRVENDA = :pNRVENDA) and (COT_CDGRUPO = :pCDGRUP) and (COT_NRCOTA = :pNRCOTA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
      try
       Start;
       //
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := M_NRVEND;
       Params.ParamByName('pCDGRUP').AsInteger  := M_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger  := M_NRCOTA;
       //
       Params.ParamByName('pDATA').AsDate       := M_DTASSE;
       Params.ParamByName('pNRASSE').AsInteger  := M_NRASSE;
       Params.ParamByName('pVALOR').AsFloat     := M_VLLANC;
       Params.ParamByName('pTPCONT').AsString   := M_TPCONT;
       Params.ParamByName('pFLCONT').AsString   := 'S';
       //
       ExecSQL();
       //
       Comit(Transc);
       //
       Result := True;
      except
           Rollback;
           Result := False;
      end;
   finally
        QrAux.Free;
   end;
end;

// função para estorno de contemplação de cota
function TdmAdmDados.Estorno_Contemplacao_Cota(M_NRVEND, M_CDGRUP,
  M_NRCOTA: Integer): boolean;
Var
    texto : string;
    dataComp : TDate;
    M_FLGRAV : Boolean;
begin
  {texto  := 'Select * from cotas ';
  texto  := texto  +  'Where (COT_NRVENDA = :pNRVENDA) and (COT_CDGRUPO = :pCDGRUP) and (COT_NRCOTA = :pNRCOTA)';}
  //
  M_FLGRAV := True;
  with cdsAtualizaCota do
   begin
       Close;
       Params.ParamByName('pNRVENDA').AsInteger := M_NRVEND;
       Params.ParamByName('pCDGRUP').AsInteger  := M_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger  := M_NRCOTA;
       Open;
       //
       {If not (IsEmpty) Then
        begin
             dataComp := FieldByName('COT_DTCONTEMPLACAO').AsDateTime;
             //
             with cdsEstornoPCLance do
              begin
                   Close;
                   Params[0].AsInteger := M_NRVEND;
                   Params[1].AsInteger := M_CDGRUP;
                   Params[2].AsInteger := M_NRCOTA;
                   Open;
                   //
                  Start;
                  try
                   If not (IsEmpty) Then
                    begin
                         Last;
                         While not (bof) Do
                         begin
                              If (FieldByName('REC_FORMABAIXA').AsString = 'L') Then
                              begin
                                  Edit;
                                  FieldByName('REC_DTPAGA').Clear;
                                  FieldByName('REC_TOTAL_PAGO').AsFloat := 0;
                                  FieldByName('REC_FORMABAIXA').Clear;
                              End;
                              //
                              If (FieldByName('REC_TPCREDITO').AsString = 'L') Then
                              begin
                                   Edit;
                                   FieldByName('REC_DTCREDITO').Clear;
                                   FieldByName('REC_CREDITO').AsFloat := 0;
                              End;
                              // Anterior
                              Prior;
                         End;     // fim-do-enquanto
                         //
                         ApplyUpdates(0);
                         cdsEstornoPCLance.Close;
                         Comit(Transc);
                         M_FLGRAV := True;
                    End;
                  Except
                        Rollback;
                  End;
              End;  // fim-with cdsEstornoPCLance
        End; }
       //
     if (M_FLGRAV) Then
     begin
      try
       Start;
       with cdsAtualizaCota do
       begin
           Close;
           Params.ParamByName('pNRVENDA').AsInteger := M_NRVEND;
           Params.ParamByName('pCDGRUP').AsInteger  := M_CDGRUP;
           Params.ParamByName('pNRCOTA').AsInteger  := M_NRCOTA;
           Open;
         //
         if not (IsEmpty) then
         begin
              Edit;
              FieldByName('COT_DTCONTEMPLACAO').Clear;
              FieldByName('COT_ASSEB_CONTEMP').Clear;
              FieldByName('COT_VALORLANCE').Clear;
              FieldByName('COT_TIPO').Clear;
              FieldByName('COT_FLCONTEMPLADO').AsString   := 'N';
              ApplyUpdates(0);
         end;
       End;   // fim-with  cdsAtualizaCota
       //
       Comit(Transc);
       //
       Result := True;
      except
           Rollback;
           Result := False;
      end;
     End;
   end;
end;


procedure TdmAdmDados.CotasGrupo(W_CDGRUP: integer);
begin
     With dmPesquisas.cdsCotasGrupo do
      begin
           DisableControls;
           Active := False;
           Params[0].AsInteger := W_CDGRUP;
           Active := True;
           EnableControls;
      end;
end;

procedure TdmAdmDados.Rollback;
begin
     sqlConn.Rollback(Transc);
     raise Exception.Create(MSG_ERROR);
end;

procedure TdmAdmDados.Start;
begin
     Transc.IsolationLevel := xilREADCOMMITTED;
     Transc.TransactionID  := StrToInt(uFuncoes.IDTransation);
     sqlConn.StartTransaction(Transc);
end;

procedure TdmAdmDados.cdsVendaContasCalcFields(DataSet: TDataSet);
begin
     // Situação da cota
     if uFuncoes.Empty(cdsVendaContasCOT_POSICAO.AsString) Then
         cdsVendaContasSTATUS_COTA.AsString := '';
     if (cdsVendaContasCOT_POSICAO.AsString = 'A') Then
         cdsVendaContasSTATUS_COTA.AsString := 'OK!';
     if (cdsVendaContasCOT_POSICAO.AsString = 'I') Then
         cdsVendaContasSTATUS_COTA.AsString := 'INATIVO';
     if (cdsVendaContasCOT_POSICAO.AsString = 'Q')
       AND (cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
         cdsVendaContasSTATUS_COTA.AsString := 'QUITADO';
     if (cdsVendaContasCOT_POSICAO.AsString = 'P') Then
         cdsVendaContasSTATUS_COTA.AsString := 'INATIVO (PAGO)';
     if (cdsVendaContasCOT_POSICAO.AsString = 'V') Then
         cdsVendaContasSTATUS_COTA.AsString := 'VENDIDO';
     if (cdsVendaContasCOT_POSICAO.AsString = 'R') Then
         cdsVendaContasSTATUS_COTA.AsString := 'REATIVADO';
     //
     if (cdsVendaContasCOT_VALCRE.AsFloat > 0) then
        cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat :=
          cdsVendaContasCOT_VALCRE.AsFloat+
          uFuncoes.Gerapercentual(cdsVendaContasCOT_VALCRE.AsFloat, cdsVendaContasCOT_TAXA_ADM.AsFloat)
     else
        cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat := 0;
     //
     if (cdsVendaContasCOT_VALCOTA.AsFloat > 0) then
         cdsVendaContasCOT_VLCOTA_CALC.AsFloat :=
          uFuncoes.Arredondar(cdsVendaContasCOT_VALCOTA.AsFloat+
          uFuncoes.Gerapercentual(cdsVendaContasCOT_VALCOTA.AsFloat, cdsVendaContasCOT_TAXA_ADM.AsFloat)+
          uFuncoes.Gerapercentual(cdsVendaContasCOT_VALCOTA.AsFloat, cdsVendaContasCOT_FUNDORES.AsFloat),2)
     Else
         cdsVendaContasCOT_VLCOTA_CALC.AsFloat := 0;
end;

function TdmAdmDados.GetNomeCliente(M_CDCLIE: integer): String;
begin
      With dmPesquisas.cdsConsulta do
        begin
             Active := False;
             CommandText := 'Select CLI_CODIGO, CLI_NOME from clientes Where (CLI_CODIGO = :pCODIGO)';
             Params.ParamByName('pCODIGO').AsInteger := M_CDCLIE;
             Active := True;
             //
             if not (IsEmpty) Then
                Result := fieldByName('CLI_NOME').AsString;
             //
             Close;
        End;
end;

function TdmAdmDados.GetNomeGrupo(M_CDGRUP: integer): String;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  :=
     'Select GRU_CODIGO, GRU_DESCRICAO from grupos Where (GRU_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := M_CDGRUP;
       Open;
       //
       if not (IsEmpty) then
          Result := FieldByName('GRU_DESCRICAO').AsString;
   finally
        QrAux.Free;
   end;
end;

function TdmAdmDados.GetNumeroVenda(M_CDGRUP, M_NRCOTA: Integer): Integer;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  :=
     'Select * from cotas Where (COT_CDGRUPO = :pCDGRUP) AND (COT_NRCOTA = :pNRCOTA) AND (COT_POSICAO = :pPOSICAO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
       Params.ParamByName('pPOSICAO').AsString := 'A';
       Open;
       //
       if not (IsEmpty) then
          Result := FieldByName('COT_NRVENDA').AsInteger;
   finally
        QrAux.Free;
   end;
end;

function TdmAdmDados.GetCotaCliente(M_CDGRUP, M_NRCOTA: Integer) : boolean;
var
    texto : string;
begin
  Result := False;
  texto  :=
     'Select * from cotas Where (COT_CDGRUPO = :pCDGRUP) AND (COT_NRCOTA = :pNRCOTA) AND (COT_POSICAO = :pPOSICAO)';
  //
  //QrAux := TSqlquery.Create(nil);
  with qryCotaCliente do
   begin
       //SQLConnection := dmAdmDados.sqlConn;
       //sql.Add(texto);
       Close;
       Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
       Params.ParamByName('pPOSICAO').AsString := 'A';
       Open;
       //
       if not (IsEmpty) then
          Result := True;
   end;
end;

function TdmAdmDados.Incluir_Lance(M_CDGRUP, M_NRCOTA, M_NRVEND,
  M_NRASSE: Integer; M_TIPO: String; M_VLLANC, M_PELANC: Double;
  M_DTLANC: TDate): Boolean;
Var
    M_OPERACAO : String;
    M_NRSEQUE : integer;
begin
     result := False;
     M_OPERACAO := 'I';
     uFuncoes.FilterCDS(cdsLances, fsInteger, '-1');
     //Parametros;
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     M_NRSEQUE := VerificarLance(M_CDGRUP, M_NRCOTA, M_NRASSE, M_TIPO);
     if (M_NRSEQUE > 0) Then
     begin
         M_OPERACAO := 'A';
         uFuncoes.FilterCDS(cdsLances, fsInteger, InttoStr(M_NRSEQUE));
     End;
     //
     Start;
     try
        //
        If (M_OPERACAO = 'I') Then
        begin
           cdsConfig.Edit;
           cdsConfigCFG_SEQUENCIA.AsInteger :=
               cdsConfigCFG_SEQUENCIA.AsInteger + 1;
           cdsConfig.ApplyUpdates(0);
           //
           with cdsLances do
            begin
                 // Novo registro
                 Append;
                 //
                 FieldByName('LAN_SEQUENCIA').AsInteger := cdsConfigCFG_SEQUENCIA.AsInteger;
                 FieldByName('LAN_CDGRUP').AsInteger    := M_CDGRUP;
                 FieldByName('LAN_NRCOTA').AsInteger    := M_NRCOTA;
                 FieldByName('LAN_NRVEND').AsInteger    := M_NRVEND;
                 FieldByName('LAN_NRASSEMBLEIA').AsInteger    := M_NRASSE;
                 FieldByName('LAN_TIPO').AsString       := M_TIPO;
                 FieldByName('LAN_VALOR').AsFloat       := M_VLLANC;
                 FieldByName('LAN_PELANC').AsFloat      := M_PELANC;
                 FieldByName('LAN_DTMOVI').AsDateTime   := M_DTLANC;
                 //
                 ApplyUpdates(0);
            end;
        End;
        //
        if (M_OPERACAO = 'A') Then
          begin
               if not (cdsLances.IsEmpty) Then
                begin
                     With cdsLances do
                     begin
                          Edit;
                          //
                          FieldByName('LAN_TIPO').AsString       := M_TIPO;
                          FieldByName('LAN_VALOR').AsFloat       := M_VLLANC;
                          FieldByName('LAN_PELANC').AsFloat      := M_PELANC;
                          //
                          ApplyUpdates(0);
                     End;
                End;
          End;
           // Grava
           Comit(Transc);
           Result := True;
     except
           // Cancela;
           Rollback;
     end;
end;

procedure TdmAdmDados.Incluir_Parcela(W_CDGRUP, W_NRCOTA, W_NRVEND,
  W_NRPARC, W_CDBANC : Integer; W_DTVENC: TDate; W_VLPARC, M_VLCRED: double);
begin
      With cdsParcelas do
        begin
             Append;
             //
             FieldByName('REC_CDGRUP').AsInteger := W_CDGRUP;
             FieldByName('REC_NRCOTA').AsInteger := W_NRCOTA;
             FieldByName('REC_NRVEND').AsInteger := W_NRVEND;
             FieldByName('REC_NRPARC').AsInteger := W_NRPARC;
             FieldByName('REC_DTVENC').AsDateTime := W_DTVENC;
             FieldByName('REC_VLPARC').asFloat   := W_VLPARC;
             FieldByName('REC_CDBANC').AsInteger := W_CDBANC;
             //
             if (M_VLCRED > 0) Then
             begin
                 //FieldByName('REC_VLPARC').asFloat   := W_VLPARC - M_VLCRED;
                 FieldByName('REC_TPCREDITO').AsString := 'S';
                 FieldByName('REC_CREDITO').AsFloat    := M_VLCRED;
                 FieldByName('REC_DTCREDITO').AsDateTime := Date();
             End;
             //
             Post;
             ApplyUpdates(0);
        End;
end;

function TdmAdmDados.Iniciar_Grupo(W_CDGRUP : integer; W_DTVENC: TDate): boolean;
Var
    M_NRPARC, M_QTPARC, M_QTCOTA, M_CTATUA : Integer;
    W_DTPARC : TDate;
    M_DIAVEN, x, w_dia : String;
    N_DTVENC : TDate;
begin
   //
   M_DIAVEN := Copy(DatetoStr(W_DTVENC),1,2);
   //
   Nova_Venda(W_CDGRUP, -1,-1) ;
   M_CTATUA := 1;
   //
   Start;
   try
     { Atualiza a posição da ProgressBar }
     frmCadGrupo.ProgressBar1.Position := 1;
     { Repinta a StatusBar para forçar a atualização visual }
     M_QTCOTA := dmPesquisas.cdsIniciarGrupo.RecordCount;
     //
     with dmPesquisas.cdsIniciarGrupo do
      begin
           First;
           while not (Eof) do
           begin
               M_NRPARC := 2;
               M_QTPARC := dmPesquisas.cdsIniciarGrupoCOT_PLANO.AsInteger;
               W_DTPARC := W_DTVENC;
               frmCadGrupo.ProgressBar1.Position := M_CTATUA;
               frmCadGrupo.ProgressBar1.Repaint;
               frmCadGrupo.StatusBar1.Panels[1].Text := 'Cota '+Inttostr(M_CTATUA)+' de '+Inttostr(M_qtcota);
               //
               while M_NRPARC <= M_QTPARC do
               begin
                    x := M_DIAVEN+Copy(DatetoStr(IncMonth(W_DTPARC, M_NRPARC)),3,8);
                    try
                         N_DTVENC := StrtoDate(DatetoStr(W_DTPARC));
                            //StrToDate(DatetoStr(N_DTVENC));
                    except
                         w_dia := InttoStr(uFuncoes.DiasPorMes(StrtoInt(Copy(X,7,4)),StrtoInt(Copy(X,4,2))));
                         N_DTVENC := StrtoDate(w_dia+'/'+Copy(X,4,2)+'/'+Copy(X,7,4));
                    end;
                    //
                    W_DTPARC := N_DTVENC;
                    //   02/05/2009
                    If not (GetParcelaExiste(dmPesquisas.cdsIniciarGrupoCOT_NRVENDA.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_CDGRUPO.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRCOTA.AsInteger,M_NRPARC) ) Then
                    Begin
                         Incluir_Parcela(dmPesquisas.cdsIniciarGrupoCOT_CDGRUPO.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRCOTA.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRVENDA.AsInteger,
                                    M_NRPARC,
                                    dmPesquisas.cdsIniciarGrupoCOT_CDBANCO.AsInteger,
                                    W_DTPARC,
                                    dmPesquisas.cdsIniciarGrupo.FieldByName('COT_VALCOTA').AsFloat, 0);
                    End;
                    //
                    W_DTPARC  := IncMonth(W_DTPARC,1);
                    M_NRPARC := M_NRPARC + 1;
               end;
               //
               M_CTATUA := M_CTATUA + 1;
               // Proxima cota
               Next;
           End;  // fim-enquanto  dmPesquisas.cdsCotasClientes
           //
      End;   // With  dmPesquisas.cdsCotasClientes
      Comit(Transc);
      //
      frmCadGrupo.StatusBar1.Panels[1].Text := '';
      //
      Result := True;
   except
      Result := False;
      Rollback;
   end;
end;

function TdmAdmDados.GetCodigoCliente(M_CDCLIE: integer): Boolean;
begin
      Result := False;
      With dmPesquisas.cdsConsulta do
        begin
             Active := False;
             CommandText := 'Select CLI_CODIGO from clientes Where (CLI_CODIGO = :pCODIGO)';
             Params.ParamByName('pCODIGO').AsInteger := M_CDCLIE;
             Active := True;
             //
             if not (IsEmpty) Then
                Result := True;
             //
             Close;
        End;
end;

function TdmAdmDados.GetGrupo(aBusca, aCampo: String): String;
Var
   M_NMCAMP : String;
begin
    if (aCampo = '1') then
       M_NMCAMP := 'GRU_CODIGO'
    Else
       M_NMCAMP := 'GRU_DESCRICAO';
    //
    with dmPesquisas.cdsAux do
      begin
           Active := False;
           //CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos where ('+QuotedStr(M_NMCAMP)+'= :pbusca) ';
           CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos where (GRU_DESCRICAO = :pbusca) ';
           Params.ParamByName('pbusca').AsString := aBusca;
           Active := True;
           //
           if not(IsEmpty) then
             if (aCampo = '1') then
                Result := FieldByName('GRU_DESCRICAO').AsString
             Else
                Result := FieldByName('GRU_CODIGO').AsString;
      end;
end;

function TdmAdmDados.Verificar_Cota_Grupo(M_CDGRUP,
  M_NRCOTA: integer): Boolean;
begin
      Result := False;
      With dmPesquisas.cdsConsulta do
        begin
             Active := False;
             CommandText := 'Select COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_POSICAO from cotas Where (COT_CDGRUPO = :pGRUPO) AND (COT_NRCOTA = :pNRCOTA) AND (COT_POSICAO = :pPOSICAO)';
             Params.ParamByName('pGRUPO').AsInteger  := M_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
             Params.ParamByName('pPOSICAO').AsString := 'A';
             Active := True;
             //
             if not (IsEmpty) Then
                Result := True;
             //
             //Close;
        End;
end;

function TdmAdmDados.Verificar_Cota_Grupo2(M_CDGRUP,
  M_NRCOTA: integer): Boolean;
begin
      Result := False;
      With dmPesquisas.qryConsulta do
        begin
           SQL.Clear;
           Close;
           SQL.Add('Select CodGrupo, COTA from cotas Where (CodGrupo = :pGRUPO) AND (COTA = :pNRCOTA)');
           ParamByName('pGRUPO').AsInteger  := M_CDGRUP;
           ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
           Open;
           //
           //if (dmPesquisas.qryConsulta.RecordCount > 0) Then
           if not (dmPesquisas.qryConsulta.IsEmpty) Then
                Result := True;
             //
             Close;
        End;
end;

function TdmAdmDados.Verificar_Grupo2(M_CDGRUP: integer): Boolean;
begin
     Result := False;
     With dmPesquisas.qryConsulta  do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select CodGrupo, Grupo from grupo Where (CodGrupo = :pCODIGO)');
           ParamByName('pCODIGO').AsInteger := M_CDGRUP;
           Open;
           //
           if (dmPesquisas.qryConsulta.RecordCount > 0) Then
              Result := True;
           //
           Close;
      End;
end;

// GRUPO, COTA, VENDA, PARCELA: Inteiro;
// VENCIMENTO, PAGAMENTO, MOVIMENTO, CREDITO : Data;
// VALOR PARCELA, VALOR MULTA, TOTAL_PAGO, CREDITO, W_TarifaBanco, W_ValorTitulo: Numerico;
// CODIGO OPERACAO, SITUACAO, REGISTRO, FORMA DE BAIXA, PrintSlip: String;
// CODIGO OPERACAO, CODIGO BANCO: inteiro;
// HISTORICO, TIPO CREDITO, TIPOSLIP, NOSSO NUMERO : String;
procedure TdmAdmDados.Adicionar_Parcela(W_CDGRUP, W_NRCOTA, W_NRVEND,
  W_NRPARC: Integer; W_DTVENC : TDate;
  W_VLPARC, W_VLMULT, W_TOTAL_PAGO, W_CREDITO, W_TarifaBanco,
  W_ValorTitulo: Double; W_CODOP, W_FLSITU, W_REGISTRO, W_FORMABAIXA,
  W_PrintSlip: String; W_CDOPER, W_CDBANC: integer; W_HISTORICO,
  W_TPCREDITO, W_TPSLIP, W_NOSSONUMERO: String);
begin
      {With cdsParcelas do
        begin
             Active := False;
             //CommandText := 'Select * from parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND)';
             {Params.ParamByName('pCDGRUP').AsInteger := W_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := W_NRCOTA;
             Params.ParamByName('pNRVEND').AsInteger := W_NRVEND;
             Active := True;
             //
        End;}
        //
      With cdsParcelas do
        begin
             Append;
             //
             FieldByName('REC_CDGRUP').AsInteger := W_CDGRUP;
             FieldByName('REC_NRCOTA').AsInteger := W_NRCOTA;
             FieldByName('REC_NRVEND').AsInteger := W_NRVEND;
             FieldByName('REC_NRPARC').AsInteger := W_NRPARC;
             FieldByName('REC_DTVENC').AsDateTime := W_DTVENC;
             FieldByName('REC_VLPARC').asFloat  := W_VLPARC;
             //FieldByName('REC_DTPAGA').AsFloat   := W_DTPAGA;
             //FieldByName('REC_VLMULT').Value      := W_VLMULT;
             //FieldByName('REC_TOTAL_PAGO').Value := W_TOTAL_PAGO;
             FieldByName('REC_CODOP').AsString   := W_CODOP;
             FieldByName('REC_CDOPER').AsInteger := W_CDOPER;
             FieldByName('REC_SITUACAO').AsString := W_FLSITU;
             {FieldByName('REC_DTMOVI').AsDateTime := W_DTMOVI;
             FieldByName('REC_DTCREDITO').AsDateTime := W_DTCRED;}
             //FieldByName('REC_CREDITO').value   := W_CREDITO;
             FieldByName('REC_REGISTRO').AsString := W_REGISTRO;
             FieldByName('REC_FORMABAIXA').AsString := W_FORMABAIXA;
             FieldByName('REC_CDBANC').AsInteger    := W_CDBANC;
             FieldByName('REC_PrintSlip').AsString  := W_PrintSlip;
             FieldByName('REC_HISTORICO').AsString  := W_HISTORICO;
             FieldByName('REC_TPCREDITO').AsString  := W_TPCREDITO;
             FieldByName('REC_TPSLIP').AsString     := W_TPSLIP;
             FieldByName('REC_NOSSONUMERO').AsString := W_NOSSONUMERO;
             {FieldByName('REC_ValorTarifaBanco').value := W_TarifaBanco;
             FieldByName('REC_ValorTitulo').value  := W_ValorTitulo;}
             //
             Post;
             ApplyUpdates(0);
        End;
end;


function TdmAdmDados.Atualizar_Grupo(W_CDGRUP: integer): boolean;
begin
     Result := False;
     //
     //uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsString, InttoStr(W_CDGRUP));
     if not (dmAdmDados.cdsGrupos.IsEmpty) Then
      begin
           try
               With dmAdmDados.cdsGrupos do
                begin
                      Edit;
                      FieldByName('GRU_PARTICIP').AsInteger :=
                          FieldByName('GRU_PARTICIP').AsInteger + 1;
                      //
                      ApplyUpdates(0);
                End;
               Result := True;
           Except
               Raise Exception.Create('Erro ao atualizar participante do grupo');   
           End;
      End;
end;

function TdmAdmDados.Baixa_Parcela_Manual(M_CDGRUP, M_NRCOTA, M_NRVEND, M_NRPARC: integer;
  M_DTPAGA: TDate; M_VLCRED, M_VLMULT, M_TOPAGO, M_VLDIGI : Double; aTipoBaixa, M_HOPAGA : String; aNRAUTE : integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  :=
     'Update parcelas set REC_DTPAGA = :pDTPAGA, REC_FORMABAIXA = :pFORMABAIXA, REC_VLMULT = :pVLMULT, REC_CREDITO = :pCREDITO, REC_TOTAL_PAGO = :pPAGO, REC_VALOR_DIGITADO = :pVALOR_DIGITADO, REC_HOPAGA = :pHOPAGA, REC_MOV_CAIXA = :pMOVCAIXA ';
  texto  := texto +  ' Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) AND (REC_NRPARC = :pNRPARC)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
       Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
       Params.ParamByName('pNRPARC').AsInteger := M_NRPARC;
       //
       Params.ParamByName('pDTPAGA').AsDate    := M_DTPAGA;
       Params.ParamByName('pFORMABAIXA').AsString := aTipoBaixa;
       Params.ParamByName('pVLMULT').AsFloat   := M_VLMULT;
       Params.ParamByName('pCREDITO').AsFloat  := M_VLCRED;
       Params.ParamByName('pPAGO').AsFloat     := M_TOPAGO;
       Params.ParamByName('pVALOR_DIGITADO').AsFloat := M_VLDIGI;
       Params.ParamByName('pHOPAGA').AsString  := M_HOPAGA;
       Params.ParamByName('pMOVCAIXA').AsInteger := aNRAUTE;
       ExecSQL();
       // Grava
       Comit(Transc);
       //
       result := True;
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.Estorno_Parcela_Manual(M_CDGRUP, M_NRCOTA, M_NRVEND,
  M_NRPARC: integer; M_DTESTO: TDate; aDescEstorno : String): boolean;
begin
  Result := False;
  //
  with cdsEstornaParcela do
  begin
     Active := False;
     Params[0].AsInteger := M_NRVEND;
     Params[1].AsInteger := M_CDGRUP;
     Params[2].AsInteger := M_NRCOTA;
     Params[3].AsInteger := M_NRPARC;
     Active := True;
     //
    if not (IsEmpty) Then
    begin
         Start;
         try
            Edit;
            //
            FieldByName('REC_DTESTORNO').AsDateTime := M_DTESTO;
            FieldByName('REC_DTPAGA').Clear;
            FieldByName('REC_TOTAL_PAGO').AsFloat   := 0;
            //FieldByName('REC_TPCREDITO').Clear;
            FieldByName('REC_FORMABAIXA').Clear;
            FieldByName('REC_VLMULT').AsFloat      := 0;
            FieldByName('REC_HISTORICO').AsString  := aDescEstorno;
            //
            ApplyUpdates(0);
            // Grava
            Comit(Transc);
            //
            result := True;
         except
           Rollback;
         end;
    End;
  End; // fim-with
end;


function TdmAdmDados.Calcular_Taxa_Adesao(W_VLCRED, M_VLPERC: double): double;
begin
    Result := uFuncoes.Arredondar(uFuncoes.Gerapercentual(W_VLCRED, M_VLPERC),2);
end;

function TdmAdmDados.Validar_Cliente(M_NMCLIE, M_NUMCPF, M_NUMCGC,
  M_RNIDEN: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select CLI_CODIGO, CLI_NOME ';
  // CPF
  If not uFuncoes.Empty(M_NUMCPF) Then
    texto  := texto + ', CLI_CPF ';
  // CGC
  If not uFuncoes.Empty(M_NUMCGC) Then
    texto  := texto + ', CLI_CGC ';
  // NR IDENTIDADE
  If not uFuncoes.Empty(M_NUMCGC) Then
    texto  := texto + ', CLI_NRIDEN ';
  //
  texto  := texto + ' from CLIENTES Where (CLI_NOME = '+QuotedStr(M_NMCLIE)+')';
  //
  If not uFuncoes.Empty(M_NUMCPF) Then
    texto  := texto + ' and (CLI_CPF = '+QuotedStr(M_NUMCPF)+')';
  If not uFuncoes.Empty(M_NUMCGC) Then
    texto  := texto + ' and (CLI_CGC = '+QuotedStr(M_NUMCGC)+')';
  If not uFuncoes.Empty(M_RNIDEN) Then
    texto  := texto + ' and (CLI_NRIDEN = '+QuotedStr(M_RNIDEN)+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Open;
       if not (IsEmpty) Then
          result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.Cotas_Cliente(M_CDCLIE: Integer);
begin
     With cdsCotasCliente do
      begin
           Active := False;
           Params[0].AsInteger := M_CDCLIE;
           Active := True;
      End;
end;

procedure TdmAdmDados.cdsCotasClienteCalcFields(DataSet: TDataSet);
begin
     if not uFuncoes.Empty(cdsCotasClienteCOT_TIPO.AsString) Then
     begin
         if (cdsCotasClienteCOT_TIPO.AsString = 'L') Then
             cdsCotasClienteCOT_FLUXO.AsString := 'Lance';
         //
         if (cdsCotasClienteCOT_TIPO.AsString = 'S') Then
             cdsCotasClienteCOT_FLUXO.AsString := 'Sorteio';
     End
     Else
         cdsCotasClienteCOT_FLUXO.AsString := '';
end;

function TdmAdmDados.Grupo_Mult(M_CDGRUP: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select GRU_CODIGO, GRU_MULTCONT from GRUPOS where (GRU_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Open;
       if not (IsEmpty) Then
          if (FieldByName('GRU_MULTCONT').AsString = 'S') Then
               result := True;
   finally
      free;
   end;
end;

function TdmAdmDados.GetAssembleiaGrupo(M_CDGRUP,
  M_NRASSE: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select COT_CDGRUPO, COT_ASSEB_CONTEMP, COT_TIPO from COTAS where (COT_CDGRUPO = :pCODIGO) AND (COT_ASSEB_CONTEMP = :pASSEB)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Params[1].AsInteger := M_NRASSE;
       //
       Open;
       if not (IsEmpty) Then
           result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.Incluir_Avalista(aCodigo: integer; aNome: String);
begin
     if not (cdsListaAvalistas.Active) Then
        cdsListaAvalistas.Open;
     //
     With cdsListaAvalistas do
      begin
           append;
           FieldByName('CODIGO').AsInteger := aCodigo;
           FieldByName('NOME').AsString    := aNome;
           Post;
      End;
end;

function TdmAdmDados.Verificar_Avalista(aVenda, aCodigo: integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select * from AVALISTAS Where (AVA_NRVEND = :pNRVEND) and (AVA_CDCLIE = :pCDCLIE) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aVenda;
       Params[1].AsInteger := aCodigo;
       //
       Open;
       if not (IsEmpty) Then
           result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.cdsAvalistaCalcFields(DataSet: TDataSet);
begin
     If not uFuncoes.Empty(cdsAvalistaAVA_CDCLIE.AsString) Then
       cdsAvalistaNOME.AsString := dmAdmDados.GetNomeCliente(cdsAvalistaAVA_CDCLIE.AsInteger);
end;

function TdmAdmDados.GetLance(M_CDGRUP, M_NRCOTA,
  M_NRASSE: integer): Double;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  W_NRSEQU := 0;
  texto  := 'Select LAN_SEQUENCIA, LAN_CDGRUP, LAN_NRCOTA, LAN_NRASSEMBLEIA, LAN_VALOR, LAN_PELANC from  LANCES ';
  texto  := texto  + ' Where (LAN_CDGRUP = :pCDGRUP) and (LAN_NRCOTA = :pNRCOTA) AND (LAN_NRASSEMBLEIA = :pNRASSE) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Params[1].AsInteger := M_NRCOTA;
       Params[2].AsInteger := M_NRASSE;
       //
       Open;
       if not (IsEmpty) Then
        Begin
             W_NRSEQU := FieldBYName('LAN_SEQUENCIA').AsInteger;
             result := FieldBYName('LAN_VALOR').AsFloat;
        End;
   finally
      free;
   end;
end;

function TdmAdmDados.VerificarLance(M_CDGRUP, M_NRCOTA,
  M_NRASSE: integer; W_TPLANC : String): integer;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select LAN_SEQUENCIA, LAN_CDGRUP, LAN_NRCOTA, LAN_NRASSEMBLEIA, LAN_VALOR, LAN_PELANC from  LANCES ';
  texto  := texto  + ' Where (LAN_CDGRUP = :pCDGRUP) and (LAN_NRCOTA = :pNRCOTA) AND (LAN_NRASSEMBLEIA = :pNRASSE) ';
  if not uFuncoes.Empty(W_TPLANC) Then
      texto  := texto  + ' and (LAN_TIPO = :pTIPO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Params[1].AsInteger := M_NRCOTA;
       Params[2].AsInteger := M_NRASSE;
       if not uFuncoes.Empty(W_TPLANC) Then
          Params.ParamByName('pTIPO').AsString := W_TPLANC;
       //
       Open;
       if not (IsEmpty) Then
           result := fieldByName('LAN_SEQUENCIA').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.VerificarCotaContemplada(M_CDGRUP,
  M_NRCOTA: integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto  := 'Select COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_FLCONTEMPLADO, COT_POSICAO from COTAS ';
  texto  := texto  + ' Where (COT_CDGRUPO = :pCDGRUPO) AND (COT_NRCOTA = :pNRCOTA) AND (COT_POSICAO = '+QuotedStr('A') +')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Params[1].AsInteger := M_NRCOTA;
       //
       Open;
       if not (IsEmpty) Then
         If (fieldByName('COT_FLCONTEMPLADO').AsString = 'S') Then
           result := True;
   finally
      free;
   end;
end;

function TdmAdmDados.Valor_Parcelas_Vincendas(
  aCDS: TClientDataSet): double;
Var
   M_VALOR : Double;
begin
     M_VALOR := 0;
     //
     With aCDS do
      begin
          First;
          DisableControls;
          While not (aCDS.Eof) do
            begin
                 //not uFuncoes.Empty(FieldByName('REC_TOTAL_PAGO').AsString)
                 if  (FieldByName('REC_TOTAL_PAGO').AsFloat = 0)
                    and (FieldByName('REC_DTVENC').AsDateTime >= date()) Then
                     M_VALOR := M_VALOR +  FieldByName('REC_TOTAL_CALC').AsFloat;
                 //
                 Next;
            End;
          //
          First;
          EnableControls;
      End;
      //
      Result := M_VALOR;
end;

function TdmAdmDados.Total_Parcelas_Atrasadas(
  aCDS: TClientDataSet): double;
Var
   M_VALOR : Double;
begin
     M_VALOR := 0;
     //
     With aCDS do
      begin
          First;
          DisableControls;
          While not (aCDS.Eof) do
            begin
                 if not uFuncoes.Empty(FieldByName('REC_TOTAL_PAGO').AsString)
                       and  (FieldByName('REC_TOTAL_PAGO').AsFloat = 0)
                       and uFuncoes.Empty(FieldByName('REC_DTPAGA').AsString)
                       and (FieldByName('REC_DTVENC').AsDateTime < Date()) Then
                     M_VALOR := M_VALOR +  FieldByName('REC_VLPARC').AsFloat;
                 //
                 Next;
            End;
          //
          First;
          EnableControls;
      End;
      //
      Result := M_VALOR;
end;

procedure TdmAdmDados.Abrir_Cotas_Grupo(M_CDGRUP: integer);
begin
     With cdsCotasClientes2 do
      begin
           DisableControls;
           Active := False;
           Params[0].AsInteger := M_CDGRUP;
           Active := True;
           EnableControls;
           //
           If (IsEmpty) Then
              Raise Exception.Create('Vazio..');
      End;
end;

function TdmAdmDados.Gerar_Nosso_Numero(aVenda, aGrupo, aCota,
  aParcela, aCodBanco : Integer): boolean;
var qraux : TSQLquery;
    texto : string;
    M_NOSNUM : Integer;
    M_NRCONV, W_CDGRUP, M_NRVEND, M_NRPARC : String;
begin
  result := False;
  texto  := 'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_CDBANC, REC_NOSSONUMERO from PARCELAS ';
  texto  := texto  + ' Where (REC_NRVEND = :pNRVENDA) and (REC_CDGRUP = :pCDGRUPO) AND (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aVenda;
       Params[1].AsInteger := aGrupo;
       Params[2].AsInteger := aCota;
       Params[3].AsInteger := aParcela;
       //
       Open;
       if not (IsEmpty) Then
         If uFuncoes.Empty(fieldByName('REC_NOSSONUMERO').AsString) Then
          begin
               With cdsNossoNumero do
                begin
                     Active := False;
                     Params[0].AsInteger := aVenda;
                     Params[1].AsInteger := aGrupo;
                     Params[2].AsInteger := aCota;
                     Params[3].AsInteger := aParcela;
                     //
                     Active := True;
                     //
                     If not (IsEmpty) Then
                      begin
                           uFuncoes.RefreshCDS(cdsConfig);
                           //uFuncoes.FilterCDS(cdsbancos, fsInteger, InttoStr(1));
                           uFuncoes.FilterCDS(cdsbancos, fsInteger, InttoStr(aCodBanco));
                           // 
                           Start;
                           try
                               cdsbancos.Edit;
                               cdsbancosBAN_NOSSONUMERO.AsInteger :=
                                   cdsbancosBAN_NOSSONUMERO.AsInteger + 1;
                               cdsbancos.ApplyUpdates(0);
                               M_NOSNUM := cdsbancosBAN_NOSSONUMERO.AsInteger;
                               M_NRCONV := cdsbancosBAN_CONVENIO.AsString;
                               //
                               W_CDGRUP := uFuncoes.StrZero(InttoStr(aGrupo),5);
                               M_NRVEND := uFuncoes.StrZero(InttoStr(aVenda),6);
                               M_NRPARC := uFuncoes.StrZero(InttoStr(aParcela),6);
                               //
                               Edit;
                               // Banco do Brasil  novo
                               {if (aCodBanco = 1) Then
                                begin
                                    If Length(M_NRCONV) = 6 Then
                                       FieldByName('REC_NOSSONUMERO').AsString := M_NRCONV+uFuncoes.StrZero(InttoStr(M_NOSNUM),5);
                                    If Length(M_NRCONV) = 7 Then
                                       FieldByName('REC_NOSSONUMERO').AsString := M_NRCONV+uFuncoes.StrZero(InttoStr(M_NOSNUM),10);
                                End;}
                               // 18/10/2008
                               // Banco do Brasil
                               if (aCodBanco = 1) Then
                                   FieldByName('REC_NOSSONUMERO').AsString := M_NRCONV+uFuncoes.StrZero(InttoStr(M_NOSNUM),5);
                               // HSBC
                               if (aCodBanco = 2) Then
                                  FieldByName('REC_NOSSONUMERO').AsString := M_NRVEND+Copy(M_NRPARC,2,5);
                               // Real
                               if (aCodBanco = 3) Then
                                  FieldByName('REC_NOSSONUMERO').AsString := uFuncoes.StrZero(InttoStr(M_NOSNUM),13);
                               // Caixa
                               if (aCodBanco = 4) Then
                                   FieldByName('REC_NOSSONUMERO').AsString := '9'+W_CDGRUP+M_NRVEND+M_NRPARC;
                               if (aCodBanco = 5) Then
                                   FieldByName('REC_NOSSONUMERO').AsString := M_NRCONV+uFuncoes.StrZero(InttoStr(M_NOSNUM),10);
                               // Caixa
                               if (aCodBanco = 6) Then
                                   FieldByName('REC_NOSSONUMERO').AsString := uFuncoes.StrZero(InttoStr(aVenda),6)+uFuncoes.StrZero(InttoStr(aParcela),3);
                               if (aCodBanco = 7) Then
                                   FieldByName('REC_NOSSONUMERO').AsString := M_NRCONV+uFuncoes.StrZero(InttoStr(M_NOSNUM),10);

                               ApplyUpdates(0);
                               //
                               Comit(Transc);
                               //
                               result := True;
                           Except
                               Rollback;
                           End;
                      End;
                End;
          End;

   finally
      free;
   end;
end;

function TdmAdmDados.GetNomeBanco(M_CDBANC: integer): String;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  :=
     'Select BAN_CODIGO, BAN_NOME from BANCOS Where (BAN_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := M_CDBANC;
       Open;
       //
       if not (IsEmpty) then
          Result := FieldByName('BAN_NOME').AsString;
   finally
        QrAux.Free;
   end;
end;

procedure TdmAdmDados.MOSTRA_SITUACAO_COTA2(M_NRVEND, M_CDGRUP, M_NRCOTA : Integer;
 M_FLSITU, M_TIPO : String);
begin
        //
      With dmRelatorios.cdsConsultaCota do
        begin
             DisableControls;
             Active := False;
             Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
             Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
             Params.ParamByName('pPAGO').AsFloat     := 0;
             Active := True;
             //
             EnableControls;
        End;
end;

procedure TdmAdmDados.GetLanceCota(M_CDGRUP, M_NRCOTA, M_NRASSE: integer);
begin
      With cdsLancesCotas do
        begin
             Active := False;
             Params[0].AsInteger := M_CDGRUP;
             Params[1].AsInteger := M_NRCOTA;
             Params[2].AsInteger := M_NRASSE;
             Active := True;
        End;
end;

function TdmAdmDados.Atualizar_Banco_Cota(aVenda, aCodigo, aCota,
  aBanco, aBanco_Anterior: integer): boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Update PARCELAS SET REC_CDBANC = :pBANCO ';
  if (aBanco <> aBanco_Anterior) Then
     texto  := texto + ', REC_NOSSONUMERO = ' + QuotedStr('');
  texto  := texto +'Where (REC_NRVEND = :pVENDA) AND (REC_CDGRUP = :pCDGRUP) AND (REC_NRCOTA = :pNRCOTA) AND (REC_DTPAGA IS NULL)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pVENDA').AsInteger  := aVenda;
       Params.ParamByName('pCDGRUP').AsInteger := aCodigo;
       Params.ParamByName('pNRCOTA').AsInteger := aCota;
       Params.ParamByName('pBANCO').AsInteger  := aBanco;
       ExecSQL();
       //
       Result := True;
   finally
        QrAux.Free;
   end;

end;

procedure TdmAdmDados.cdsLancesCotasCalcFields(DataSet: TDataSet);
begin
   if not uFuncoes.Empty(cdsLancesCotasLAN_TIPO.AsString) Then
      If (cdsLancesCotasLAN_TIPO.AsString = 'L' ) Then
          cdsLancesCotasLAN_DESC_TIPO.AsString := 'Livre'
      Else
          cdsLancesCotasLAN_DESC_TIPO.AsString := 'Limitado';
end;

procedure TdmAdmDados.CampoModelo(aCombo: TComboBox; aModelo: Integer);
begin
     aCombo.Clear;
     aCombo.Items.Add(GetDescModelo(aModelo));
     aCombo.ItemIndex := 0;
end;

function TdmAdmDados.GetDescModelo(aModelo: integer): String;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  := 'Select * from MODELOS Where (MOD_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger  := aModelo;
       Open;
       //
       If not (IsEmpty) Then
          Result := StrZero(FieldByName('MOD_CODIGO').AsString,4)+' - '+
                          FieldByName('MOD_DESCRICAO').AsString;
   finally
        QrAux.Free;
   end;
end;

procedure TdmAdmDados.ListaModelo(aCombo: TComboBox);
begin
     with cdsListaModelos2 do
      begin
           Active := False;
           Active := True;
           //
           First;
           aCombo.Clear;
           aCombo.Items.add(' ');
           While not (Eof) do
           begin
                aCombo.Items.add(StrZero(FieldByName('MOD_CODIGO').AsString,4)+' - '+FieldByName('MOD_DESCRICAO').AsString);
                //
                next;
           End;
      End;
end;

function TdmAdmDados.Excluir_Venda(aVenda: integer): boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Delete from PARCELAS Where (REC_NRVEND = :pNRVEND) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVEND').AsInteger  := aVenda;
       ExecSQL();
       //
       Result := True;
   finally
        QrAux.Free;
   end;
end;

function TdmAdmDados.GetModelo(aCodigo: integer): boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Select * from MODELOS Where (MOD_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger  := aCodigo;
       Open;
       //
       If not (IsEmpty) Then
          Result := True;
   finally
        QrAux.Free;
   end;
end;

procedure TdmAdmDados.ListaMultContemplacao(aGrupo: integer);
begin
     With cdsMultiContemGrupo do
      begin
           DisableControls;
           Active := False;
           Params[0].AsInteger := aGrupo;
           Active := True;
           EnableControls;
      End;
end;

procedure TdmAdmDados.ListaAvalistaCliente(aCliente: integer);
begin
     With cdsAvalistas do
      begin
           DisableControls;
           Active := False;
           Params[0].AsInteger := aCliente;
           Active := True;
           EnableControls;
      End;
end;

function TdmAdmDados.ImportarParcelas(aVenda: integer): Boolean;
Var
   I, Cont, Total : Integer;

begin
       result := False;
       With qryImp do
           begin
                Close;
                Params.ParamByName('pVENDA').AsInteger := aVenda;
                Open;
                If (qryImp.RecordCount > 0) Then
                begin
                   First;
                   //
                   While not (qryImp.Eof) do
                      begin
                           cdsAux.Close;
                           if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) and
                                not uFuncoes.Empty(FieldByName('COTA').AsString) and
                                not uFuncoes.Empty(FieldByName('VENDA').AsString) Then
                           begin
                                //
                                 cdsAux.Close;
                                 cdsAux.CommandText := 'select * from PARCELAS Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC)';
                                 cdsAux.Params[0].AsInteger := qryImp.FieldByName('VENDA').AsInteger;
                                 cdsAux.Params[1].AsInteger := qryImp.FieldByName('CodGrupo').AsInteger;
                                 cdsAux.Params[2].AsInteger := qryImp.FieldByName('COTA').AsInteger;
                                 cdsAux.Params[3].AsInteger := qryImp.FieldByName('NUMPARCPG').AsInteger;
                                 //
                                 cdsAux.Open;
                                 //
                                 if (cdsAux.IsEmpty) Then
                                  begin
                                     try
                                         dmAdmDados.Start;
                                         //
                                         cdsAux.Append;
                                         cdsAux.FieldByName('REC_NRVEND').AsInteger  := FieldByName('VENDA').AsInteger;
                                         cdsAux.FieldByName('REC_CDGRUP').AsInteger  := FieldByName('CodGrupo').AsInteger;
                                         cdsAux.FieldByName('REC_NRCOTA').AsInteger  := FieldByName('COTA').AsInteger;
                                         cdsAux.FieldByName('REC_NRPARC').AsInteger  := FieldByName('NUMPARCPG').AsInteger;
                                         cdsAux.FieldByName('REC_DTVENC').AsDateTime := FieldByName('DATAVENC').AsDateTime;
                                         cdsAux.FieldByName('REC_VLPARC').AsFloat    := FieldByName('VALORPARPG').AsFloat;
                                         If not uFuncoes.Empty(FieldByName('DATAPG').AsString) Then
                                            cdsAux.FieldByName('REC_DTPAGA').AsDateTime := FieldByName('DATAPG').AsDateTime;
                                         //
                                         cdsAux.FieldByName('REC_VLMULT').AsFloat     := FieldByName('MULTAPG').AsFloat;
                                         cdsAux.FieldByName('REC_TOTAL_PAGO').AsFloat := FieldByName('TOTALPG').AsFloat;
                                         cdsAux.FieldByName('REC_CODOP').AsString     := FieldByName('CODOP').AsString;
                                         //cdsAux.FieldByName('REC_CDOPER').AsInteger
                                         cdsAux.FieldByName('REC_SITUACAO').AsString  := FieldByName('SITUACAO').AsString;
                                         //
                                         If not uFuncoes.Empty(cdsAux.FieldByName('REC_DTMOVI').AsString) Then
                                            cdsAux.FieldByName('REC_DTMOVI').AsDateTime  := FieldByName('MOVIMENTO').AsDateTime;
                                         //
                                         If not uFuncoes.Empty(FieldByName('PAGTOCREDITO').AsString) Then
                                             cdsAux.FieldByName('REC_DTCREDITO').AsDateTime := FieldByName('PAGTOCREDITO').AsDateTime;
                                         //
                                         cdsAux.FieldByName('REC_CREDITO').AsFloat     := FieldByName('CREDITO').AsFloat;
                                         cdsAux.FieldByName('REC_REGISTRO').AsString   := FieldByName('REGISTRO').AsString;
                                         cdsAux.FieldByName('REC_FORMABAIXA').AsString := FieldByName('FORMABAIXA').AsString;
                                         cdsAux.FieldByName('REC_CDBANC').AsInteger    := FieldByName('CODBANCO').AsInteger;
                                         if (FieldByName('PrintSlip').AsBoolean) Then
                                             cdsAux.FieldByName('REC_PRINTSLIP').AsString  := 'S';
                                         //
                                         cdsAux.FieldByName('REC_HISTORICO').AsString  := FieldByName('Historico').AsString;
                                         cdsAux.FieldByName('REC_TPCREDITO').AsString  := FieldByName('TipoCredito').AsString;
                                         cdsAux.FieldByName('REC_TPSLIP').AsString     := FieldByName('TipoSlip').AsString;
                                         cdsAux.FieldByName('REC_NOSSONUMERO').AsString := FieldByName('NOSSONUMERO').AsString;
                                         cdsAux.FieldByName('REC_VALORTARIFABANCO').AsFloat  := FieldByName('ValorTarifaBanco').AsFloat;
                                         cdsAux.FieldByName('REC_VALORTITULOTITULO').AsFloat := FieldByName('ValorTitulo').AsFloat;
                                         //
                                         cdsAux.ApplyUpdates(0);
                                       //
                                       dmAdmDados.Comit(udmAdmDados.Transc);
                                     Except
                                       on E: Exception do
                                         begin
                                            // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                                            dmAdmDados.Rollback;
                                            Continue;
                                         End;
                                     End;   // try
                                  End;      // cdsAux.IsEmpty
                                  // Proximo
                                  qryImp.Next;
                              End;           //if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) and
                            End;
                      End;
                End;
                result := True;
end;

procedure TdmAdmDados.CotasModelo(aModelo: integer);
begin
     With cdsCotasGrupoModelos do
      begin
           DisableControls;
           Active := False;
           Params[0].AsInteger := aModelo;
           Active := True;
           EnableControls;
      End;
end;

procedure TdmAdmDados.GetAssembleia(aVenda, aGrupo, aCota,
  aAssembleia: integer; aTipo : String);
begin
     with cdsGetAssembleia do
      begin
           Active := False;
           CommandText := 'select * from LANCES L where (L.lan_nrvend = :Pnrvend) AND (L.lan_cdgrup = :pcdgrup) AND (L.lan_nrcota = :pnrcota) AND (L.lan_nrassembleia = :passembleia) ';
           If (aTipo = 'T') Then
              CommandText := CommandText + ' and (LAN_TIPO = '+QuotedStr(aTipo)+')';
           Params[0].AsInteger := aVenda;
           Params[1].AsInteger := aGrupo;
           Params[2].AsInteger := aCota;
           Params[3].AsInteger := aAssembleia;
           active := true;
      End;
end;

function TdmAdmDados.BaixaEstornoLances(aVenda, aGrupo, aCota,
  aAssembleia, aCaixa : integer; aTipo, aBaixaEstorno: String; aValorLance,
  aValorAceito: double; aDataAssem : TDate): boolean;
Var
   M_TOVALO, M_VLCRED, M_TOPAGO, M_VLDIFE : double;
   M_DTMOVI : TDate;
   M_QTPAGA, M_QTABER, M_NRSEQU, M_PCDIFE : Integer;
   M_HOMOVI : String;
begin
      Result := false;
      M_TOVALO := aValorLance;
      M_VLDIFE := 0;
      M_PCDIFE := 1;
      M_DTMOVI := Date();
      M_HOMOVI := Copy(TimetoStr(Time),1,5);
      //
      uFuncoes.RefreshCDS(cdsConfig); 
      //
      if (aBaixaEstorno = 'B') Then
        begin
             Start;
             Try
                 //
                 uFuncoes.FilterCDS(dmAdmDados.cdsVendaContas, fsInteger, InttoStr(aVenda));
                 if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
                 begin
                        //  Baixa por parcelas
                        if (aTipo = 'P') Then
                          begin
                                With cdsBaixaLances do
                                  begin
                                       Active := False;
                                       CommandText := 'Select * from PARCELAS R WHERE (R.rec_nrvend  = :pVENDA) and (r.rec_dtpaga is null)';
                                       Params[0].AsInteger := aVenda;
                                       Active := True;
                                       //
                                       if not (IsEmpty) Then
                                        begin
                                             // Vai para ultimo registro
                                             Last;
                                             While not (Bof) and (M_TOVALO > 0) do
                                              begin
                                                   If (M_TOVALO >= cdsBaixaLancesREC_TOTAL_CALC.AsFloat) Then
                                                   begin
                                                        Edit;
                                                        FieldByName('REC_DTPAGA').AsDateTime  := M_DTMOVI;
                                                        FieldByName('REC_TOTAL_PAGO').AsFloat := cdsBaixaLancesREC_TOTAL_CALC.AsFloat;
                                                        FieldByName('REC_FORMABAIXA').AsString := 'L';
                                                        //
                                                        // Incluir movimento de caixa
                                                        // pSEQUENCIA, pVENDA, pParcela, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                                                        //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                                                        // aBanco : Integer; aAgencia, aConta, aCheque
                                                        {if Not (dmAdmDados.Incluir_Movimento_Caixa(
                                                              GetRegMovCaixa, aVenda, FieldByName('REC_NRPARC').AsInteger, 1, aCaixa, 4, 0, 'L', M_HOMOVI,'BAIXA DE LANCE', 'N', M_DTMOVI, FieldByName('REC_TOTAL_PAGO').AsFloat,0, 0, '', '', '')) Then
                                                                  raise Exception.Create('Erro ao incluir movimento de caixa.');}
                                                        //
                                                        M_TOVALO := uFuncoes.Arredondar(M_TOVALO - cdsBaixaLancesREC_TOTAL_CALC.AsFloat,2);
                                                   End
                                                   Else
                                                   begin
                                                        Edit;
                                                        FieldByName('REC_DTCREDITO').AsDateTime  := M_DTMOVI;
                                                        FieldByName('REC_TPCREDITO').AsString    := 'L';
                                                        FieldByName('REC_CREDITO').AsFloat       := M_TOVALO;
                                                        //
                                                        M_TOVALO := uFuncoes.Arredondar(M_TOVALO - FieldByName('REC_CREDITO').AsFloat,2);
                                                   End;
                                                   //
                                                   GetSequenciaCaixa(aCaixa);
                                                   // registro anterior
                                                   Prior;
                                              End;
                                              //
                                              ApplyUpdates(0);
                                        End
                                        Else
                                            raise Exception.Create('Erro na baixa de parcelas.');
                                      //
                                      // tabela cotas
                                      With dmAdmDados.cdsVendaContas do
                                        begin
                                             Edit;
                                             FieldByName('COT_VALACERTO').AsFloat      := aValorAceito;
                                             FieldByName('COT_FLCONTEMPLADO').AsString := 'S';
                                             FieldByName('COT_TIPO').AsString          := 'L';
                                             FieldByName('COT_ASSEB_CONTEMP').AsInteger   := aAssembleia;
                                             FieldByName('COT_DTCONTEMPLACAO').AsDateTime := aDataAssem;
                                             FieldByName('COT_VALORLANCE').AsFloat     := aValorLance;
                                             //
                                             ApplyUpdates(0);
                                        End;
                                  End;
                          End;
                          //
                        if (aTipo = 'V') Then
                          begin
                                M_QTPAGA := dmPesquisas.Parcelas_Pagas(aGrupo, aCota, aVenda);
                                M_QTABER := cdsVendaContasCOT_PLANO.AsInteger - M_QTPAGA;
                                //
                                With cdsBaixaLances do
                                  begin
                                       Active := False;
                                       Params[0].AsInteger := aVenda;
                                       Active := True;
                                       //
                                       if not (IsEmpty) Then
                                        begin
                                             M_TOPAGO := uFuncoes.Arredondar(M_QTPAGA * cdsBaixaLancesREC_TOTAL_CALC.AsFloat,2);
                                             //
                                             M_VLCRED := cdsBaixaLancesREC_TOTAL_CALC.AsFloat - (uFuncoes.Arredondar(((cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat - aValorLance) - M_TOPAGO) / M_QTABER, 2));
                                             M_VLDIFE := (M_VLCRED * M_QTABER) - M_TOVALO;
                                             // Vai para ultimo registro
                                             Last;
                                             While not (Bof) do
                                              begin
                                                   If (FieldByName('REC_DTPAGA').IsNull) Then
                                                    begin
                                                        Edit;
                                                        FieldByName('REC_DTCREDITO').AsDateTime  := M_DTMOVI;
                                                        FieldByName('REC_TPCREDITO').AsString    := 'L';
                                                        If (M_PCDIFE = 1) Then
                                                            FieldByName('REC_CREDITO').AsFloat   := M_VLCRED - M_VLDIFE
                                                        Else
                                                           FieldByName('REC_CREDITO').AsFloat    := M_VLCRED;
                                                        //
                                                        M_PCDIFE := M_PCDIFE + 1;
                                                    End;
                                                    //
                                                    GetSequenciaCaixa(aCaixa);
                                                   // registro anterior
                                                   Prior;
                                              End;
                                              //
                                              ApplyUpdates(0);
                                              // tabela cotas
                                              With dmAdmDados.cdsVendaContas do
                                              begin
                                                   Edit;
                                                   FieldByName('COT_VALACERTO').AsFloat      := aValorAceito;
                                                   FieldByName('COT_FLCONTEMPLADO').AsString := 'S';
                                                   FieldByName('COT_TIPO').AsString          := 'L';
                                                   FieldByName('COT_ASSEB_CONTEMP').AsInteger   := aAssembleia;
                                                   FieldByName('COT_DTCONTEMPLACAO').AsDateTime := aDataAssem;
                                                   FieldByName('COT_VALORLANCE').AsFloat     := aValorLance;
                                                   //
                                                   ApplyUpdates(0);
                                              End;
                                        End
                                        Else
                                            raise Exception.Create('Erro na baixa de parcelas.');
                                  End;

                          End;        
                 End
                 Else
                     raise Exception.Create('Erro ao baixa lance.');
                 //
                 Comit(Transc);
                 Result := true;
             Except
                 Rollback;
             End;
        End;
      //
      if (aBaixaEstorno = 'E') Then
      begin
             Start;
             Try
                 //
                 uFuncoes.FilterCDS(dmAdmDados.cdsVendaContas, fsInteger, InttoStr(aVenda));
                 if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
                 begin
                        //
                                With cdsBaixaLances do
                                  begin
                                       Active := False;
                                       CommandText := 'Select * from PARCELAS R WHERE (R.rec_nrvend  = :pVENDA) and ';
                                       CommandText := CommandText  + '((r.rec_formabaixa = :pTIPO) or (r.rec_tpcredito = :pTIPO))';
                                       Params[0].AsInteger := aVenda;
                                       Params[1].AsString  := 'L';
                                       Active := True;
                                       //
                                       if not (IsEmpty) Then
                                        begin
                                             // Vai para ultimo registro
                                             Last;
                                             While not (Bof) do
                                              begin
                                                   Edit;
                                                   If (FieldByName('REC_FORMABAIXA').AsString = 'L') Then
                                                    begin
                                                        M_NRSEQU := GetRegMovCaixa();
                                                        FieldByName('REC_DTPAGA').Clear;
                                                        FieldByName('REC_TOTAL_PAGO').AsFloat := 0;
                                                        FieldByName('REC_FORMABAIXA').Clear;
                                                        FieldByName('REC_MOV_CAIXA').Clear;
                                                        // Incluir movimento de caixa
                                                        // pSEQUENCIA, pVENDA, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                                                        // pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                                                        // aBanco : Integer; aAgencia, aConta, aCheque
                                                        {if Not (dmAdmDados.Incluir_Movimento_Caixa(
                                                              M_NRSEQU, aVenda, FieldbyName('REC_NRPARC').AsInteger, 1, aCaixa, 5, 0, 'T', M_HOMOVI, 'ESTORNO DE BAIXA DE LANCE', 'N', M_DTMOVI,
                                                                  FieldbyName('REC_TOTAL_PAGO').AsFloat, 0, 0, '', '', '')) Then
                                                                  raise Exception.Create('Erro ao incluir movimento de caixa.');}
                                                    End;
                                                    //
                                                    if (FieldByName('REC_TPCREDITO').AsString = 'L') Then
                                                    begin
                                                        FieldByName('REC_DTPAGA').Clear;
                                                        FieldByName('REC_TOTAL_PAGO').AsFloat := 0;
                                                        FieldByName('REC_FORMABAIXA').Clear;
                                                        FieldByName('REC_DTCREDITO').Clear;
                                                        FieldByName('REC_TPCREDITO').Clear;
                                                        FieldByName('REC_CREDITO').AsFloat := 0;
                                                    End;
                                                    //
                                                    GetSequenciaCaixa(aCaixa);
                                                   // registro anterior
                                                   Prior;
                                              End;
                                              //
                                              ApplyUpdates(0);
                                        End
                                        Else
                                            raise Exception.Create('Erro na baixa de parcelas.');
                                  End;
                      //
                      // tabela cotas
                      With dmAdmDados.cdsVendaContas do
                        begin
                             Edit;
                             FieldByName('COT_VALACERTO').AsFloat      := 0;
                             FieldByName('COT_FLCONTEMPLADO').AsString := 'N';
                             FieldByName('COT_TIPO').Clear;
                             FieldByName('COT_ASSEB_CONTEMP').Clear;
                             FieldByName('COT_DTCONTEMPLACAO').Clear;
                             FieldByName('COT_VALORLANCE').Clear;
                             //
                             ApplyUpdates(0);
                        End;
                     //
                     Comit(Transc);
                     Result := true;
                 End;
             Except
                 Rollback;
             End;
      End;
end;

procedure TdmAdmDados.cdsBaixaLancesCalcFields(DataSet: TDataSet);
begin
     // Taxa adm
     cdsBaixaLancesREC_TAXADM_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsBaixaLancesREC_VLPARC.AsFloat,  cdsVendaContasCOT_TAXA_ADM.AsFloat);
     // Taxa fundo
     cdsBaixaLancesREC_TXFUND_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsBaixaLancesREC_VLPARC.AsFloat,  cdsVendaContasCOT_FUNDORES.AsFloat);
     //    Tota a Pagar
     cdsBaixaLancesREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar(
             cdsBaixaLancesREC_VLPARC.AsFloat +
             cdsBaixaLancesREC_TAXADM_CALC.AsFloat +
             cdsBaixaLancesREC_TXFUND_CALC.AsFloat,2) - cdsBaixaLancesREC_CREDITO.AsFloat;
end;

function TdmAdmDados.Verificar_Cota_Grupo_Aberta(M_CDGRUP,
  M_NRCOTA: integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_POSICAO, COT_CDCLIE from COTAS ';
  texto  := texto + 'Where (COT_CDGRUPO = :pCDGRUPO) and (COT_NRCOTA = :pNRCOTA) and (COT_POSICAO = '+QuotedStr('A')+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := M_CDGRUP;
       Params[1].AsInteger := M_NRCOTA; 
       Open;
       if not (IsEmpty) Then
          result := FieldByName('COT_NRVENDA').AsInteger 
       Else
          result := 0;
   finally
      free;
   end;

end;

function TdmAdmDados.VerificarBaixaLance(aGrupo,
  aAssembleia: integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto  := 'Select COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_POSICAO, COT_CDCLIE, COT_ASSEB_CONTEMP, COT_DTCONTEMPLACAO from COTAS ';
  texto  := texto + 'Where (COT_CDGRUPO = :pCDGRUPO) and (COT_ASSEB_CONTEMP = :pASSEBLEIA) AND (COT_TIPO = '+QuotedStr('L')+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aGrupo;
       Params[1].AsInteger := aAssembleia;
       Open;
       if Not (IsEmpty) Then
          result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.CupomBaixa(aCDS :TClientDataSet; aVenda, aGrupo, aCota, aParcela, aCliente: integer; aVia : String);
var
   CONTADOR:Integer;
   IMPRESSORA:TextFile;
   W_CDCAIX, I, iUsuario : Integer;
   aNomeDispositivo : String;
begin
  //
   try
       //
       aNomeDispositivo := 'NN.TXT';
       If not uFuncoes.Empty(uFrmAdmMain.M_CDUSUA) Then
       begin
            iUsuario := StrtoInt(uFrmAdmMain.M_CDUSUA);
            aNomeDispositivo := GetDispositivoImpUsuario(iUsuario);
       End;
       //GetNomeDispositivo();
       //
       if Not (aCDS.IsEmpty) Then
        begin
             {Relaciona a variável impressora com a
             lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
             AssignFile(IMPRESSORA, aNomeDispositivo);
             //AssignFile(IMPRESSORA,'nn.txt');
             {abre a porta da impressão }
             Rewrite(IMPRESSORA);
             {envia caractere de controle para comprimir a impressão}
             Write(IMPRESSORA);
             { salta duas linhas}
             Writeln(impressora);
             Writeln(Impressora);
             Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
             { ---- Impressão dos Dados do Consumidor-----}
             RefreshCDS(cdsConfig);
             If aCDS.Locate('REC_NRVEND;REC_CDGRUP;REC_NRCOTA;REC_NRPARC',
                  VarArrayOf([aVenda, aGrupo, aCota, aParcela]),[]) Then
             begin
                  { Imprime a Razão Social, alinhado à esquerda dentro de uma área de 90 caracteres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(cdsConfig.FieldByName('CFG_NOMEEMPRESA').AsString,48)]));
                  { Imprime a CGC, alinhado à esquerda dentro de umaárea de 30 caracteres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC('CGC : '+uFuncoes.FormataCNPJ(cdsConfig.FieldByName('CFG_CGC').AsString),48)]));
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(cdsConfig.FieldByName('CFG_ENDERECO').AsString+', '+cdsConfig.FieldByName('CFG_BAIRRO').AsString,48)]));
                  { Imprime CEP, dentro de uma área de 15 carcateres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC('CEP : '+uFuncoes.FormataCep(cdsConfig.FieldByName('CFG_CEP_EMPRESA').AsString)+'  FONE : '+uFuncoes.FormataFONE(cdsConfig.FieldByName('CFG_NRFONE1').AsString),48)]));
                  //
                  Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
                  If (aVia = '2') Then
                     Writeln(Impressora, Format('%-48s',[uFuncoes.PadC('CUPOM DE RECEBIMENTO - 2'+CHR(166)+' VIA',48)]))
                  Else
                      Writeln(Impressora, Format('%-48s',[uFuncoes.PadC('CUPOM DE RECEBIMENTO',48)]));
                  //
                  Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
                  { Salta uma linha}
                  //Writeln(Impressora);
                  FilterCDS(cdsClientes, fsInteger, IntToStr(aCliente));
                  // cliente
                  Writeln(Impressora, Format('%-48s',     ['VENDA..: ' + uFuncoes.StrZero(InttoStr(aVenda),7)+ '  GRUPO: ' + InttoStr(aGrupo) + ' - '+ GetNomeGrupo(aGrupo) + '  COTA.: ' + InttoStr(aCota)]));
                  // Parcela
                  Writeln(Impressora, Format('%-7s',      ['PARCELA: ' + aCDS.FieldByName('REC_NRPARC').AsString]));
                  //
                  If not (cdsClientes.IsEmpty) Then
                      Writeln(Impressora, Format('%-48s', ['CLIENTE: ' + copy(cdsClientesCLI_NOME.AsString,1,39)]))
                  Else
                      Writeln(Impressora, Format('%-48s', ['CLIENTE: NAO ENCONTRADO']));
                  {Imprime a Data e hora do recebimento e Salta para próxima Linha}
                  W_CDCAIX := GetCaixaRecebimento(aCDS.FieldByName('REC_MOV_CAIXA').AsInteger, aVenda);
                  Writeln(Impressora, Format('%-48s',     ['DATA...: ' +aCDS.FieldByName('REC_DTPAGA').AsString+' - '+aCDS.FieldByName('REC_HOPAGA').AsString]));
                  Writeln(Impressora, Format('%-48s',     ['CAIXA..: ' + GetNomeCaixa(W_CDCAIX)]));
                  Writeln(Impressora, Format('%-48s',     ['N'+Chr(167)+'AUTEN: '+ uFuncoes.StrZero(aCDS.FieldByName('REC_MOV_CAIXA').AsString,7)]));
                  {Imprime a Data de Saída, baseada na Hora Atual e Salta para próxima Linha}
                  //
                  Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('=',48)]));
                  //
                  Write(Impressora,Format('%10s',   ['DT.VENCIM.']));
                  Write(Impressora,Format('%10s',   ['VALOR PC']));
                  Write(Impressora,Format('%10s',   ['CREDITO']));
                  Write(Impressora,Format('%7s',    ['MULTA']));
                  Writeln(Impressora,Format('%11s', ['TOTAL PAGO']));
                  Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('=',48)]));
                  {----- Fase de Emissão dos Itens da Nota -----}
                  { Imprime Parcela}
                  //Write(Impressora,Format('%-7s',  [uFuncoes.PadC(aCDS.FieldByName('REC_NRPARC').AsString,5)]));
                  { Imprime Vencimento}
                  Write(Impressora,Format('%10s', [aCDS.FieldByName('REC_DTVENC').AsString]));
                  { Imprime Valor Parcela}
                  Write(Impressora,Format('%10s', [FormatFloat('#,##0.#0',aCDS.FieldByName('REC_TOTAL_CALC').AsFloat)]));
                  { Imprime Crédito}
                  Write(Impressora,Format('%10s',[FormatFloat('#,##0.#0',aCDS.FieldByName('REC_CREDITO').AsFloat)]));
                  { Imprime Valor Multa}
                  Write(Impressora,Format('%7s', [FormatFloat('#,##0.#0',aCDS.FieldByName('REC_VLMULT').AsFloat)]));
                  { Imprime Valor Pago}
                  Writeln(Impressora,Format('%11s',[FormatFloat('#,##0.#0',aCDS.FieldByName('REC_TOTAL_PAGO').AsFloat)]));
             End;
             //
             { laço de Itens}
             { Salta duas Linhas}
             Writeln(Impressora);
             Writeln(Impressora);
             { Imprime o rodape}
             Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
             Writeln(Impressora,Format('%-48s',[uFuncoes.PadC(cdsConfigCFG_MENS_CUPOM.AsString,48)]));
             Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
             Writeln(Impressora,Format('%-48s',['DESENVOLVIDO POR:INFOG2 TECNOLOGIA-(86)3226-4510']));
             { Salta nove linhas}
              For I := 1 to 9 do
                 Writeln(impressora);

             {Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);}
        End;
   finally
          { Fecha a porta de impressão}
           System.Close(Impressora);
   end;
end;

function TdmAdmDados.GetNomeAvalista(aCodigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select CLI_CODIGO, CLI_NOME  from CLIENTES ';
  texto  := texto + 'Where (CLI_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aCodigo;
       Open;
       if Not (IsEmpty) Then
          result := fieldByName('CLI_NOME').AsString;
   finally
      free;
   end;
end;

function TdmAdmDados.Add_Avalista(aVenda, aCodigo: integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Insert into AVALISTAS( AVA_NRVEND, AVA_CDCLIE) Values (:pNRVEND, :pCDCLIE)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aVenda;
       Params[1].AsInteger := aCodigo;
       ExecSQL();
       result := true;
   finally
      free;
   end;
end;

procedure TdmAdmDados.dspCaixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CAIXA';
end;

procedure TdmAdmDados.dspMovCaixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'MOVIMENTO_CAIXA';
end;

function TdmAdmDados.Testa_Caixa(aCodigo: integer;
  aSituacao: String): Boolean;
begin
     result := false;
     uFuncoes.FilterCDS(cdsUsuarios, fsInteger,  InttoStr(aCodigo));
     //
     If (cdsUsuarios.IsEmpty) Then
     begin
          raise Exception.Create('Registro de caixa não cadastrado!!!');
     End     
     Else
     begin
          //
          result := Verificar_Caixa_Aberto(aCodigo);
     End;
end;

function TdmAdmDados.Verificar_Caixa_Aberto(aCodigo: integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select CAI_NUMERO, CAI_CAIXA, CAI_SITUACAO from CAIXA Where (CAI_CAIXA = :pCAIXA) and (CAI_SITUACAO = '+QuotedStr('A')+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aCodigo;
       Open;
       //
       If not (IsEmpty) Then
          result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.GetVerificarSenha(aCodigo: integer;
  aSenha: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsInteger := aCodigo;
       Open;
       //
       If not (IsEmpty) Then
         if (FieldByName('SEN_SNATUA').AsString = aSenha) Then
          result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.Incluir_Dados_Caixa(aNUMERO, aCAIXA,
  aRGINICIAL, iSeqInicial : integer; aDTABERTURA: TDate; aHOABERTURA,
  aSITUACAO: String): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Insert Into CAIXA (CAI_NUMERO, CAI_DTABERTURA, CAI_HOABERTURA, CAI_RGINICIAL, CAI_CAIXA, CAI_SITUACAO, CAI_SQINICIAL) ';
  texto  := texto  +  ' Values (:pNUMERO, :pDTABERTURA, :pHOABERTURA, :pRGINICIAL, :pCAIXA, :pSITUACAO, :pSQINICIAL )';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNUMERO').AsInteger     := aNUMERO;
       Params.ParamByName('pDTABERTURA').AsDateTime := aDTABERTURA;
       Params.ParamByName('pHOABERTURA').AsString  := aHOABERTURA;
       Params.ParamByName('pRGINICIAL').AsInteger  := aRGINICIAL;
       Params.ParamByName('pCAIXA').AsInteger      := aCAIXA;
       Params.ParamByName('pSITUACAO').AsString    := aSITUACAO;
       Params.ParamByName('pSQINICIAL').AsInteger  := iSeqInicial; 
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.Incluir_Movimento_Caixa(pSEQUENCIA, pSeqCaixa, pVENDA, pNRPARC,
  pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO: integer; pTIPOMOV,
  pHRMOVIMENTO, pOBSEVACAO, pSITUACAO: String; pDTMOVIMENTO: TDate;
  pVLMODALIDADE, pVLTROCO: Double; aBanco : Integer; aAgencia, aConta, aCheque : String): boolean;
var qraux : TSQLquery;
    texto, texto2 : string;
begin
  Result := False;
  texto  := 'Insert Into MOVIMENTO_CAIXA (MCA_SEQUENCIA, MCA_VENDA, MCA_TIPOMOV, MCA_DTMOVIMENTO, MCA_HRMOVIMENTO, ';
  texto  := texto  +  ' MCA_MODALIDADE, MCA_VLMODALIDADE, MCA_VLTROCO, MCA_OBSEVACAO, MCA_SITUACAO, MCA_CAIXA, MCA_NATUREZA, MCA_FUNCIONARIO, MCA_NRPARC, MCA_SEQCAIXA)';
  texto  := texto  +  ' Values (:pSEQUENCIA, :pVENDA, :pTIPOMOV, :pDTMOVIMENTO, :pHRMOVIMENTO, :pMODALIDADE, :pVLMODALIDADE, :pVLTROCO, :pOBSEVACAO, :pSITUACAO, :pCAIXA, :pNATUREZA, :pFUNCIONARIO, :pNRPARC, :pSEQCAIXA)';
  //
  texto2 := 'Insert Into MOVIMENTO_CAIXA (MCA_SEQUENCIA, MCA_VENDA, MCA_TIPOMOV, MCA_DTMOVIMENTO, MCA_HRMOVIMENTO, ';
  texto2 := texto2 +  ' MCA_MODALIDADE, MCA_VLMODALIDADE, MCA_VLTROCO, MCA_OBSEVACAO, MCA_SITUACAO, MCA_CAIXA, MCA_NATUREZA, MCA_FUNCIONARIO, MCA_NRBANC, MCA_NRAGEN, MCA_NRCONTA, MCA_NRCHEQ, MCA_NRPARC, MCA_SEQCAIXA)';
  texto2 := texto2 +  ' Values (:pSEQUENCIA, :pVENDA, :pTIPOMOV, :pDTMOVIMENTO, :pHRMOVIMENTO, :pMODALIDADE, :pVLMODALIDADE, :pVLTROCO, :pOBSEVACAO, :pSITUACAO, :pCAIXA, :pNATUREZA, :pFUNCIONARIO, ';
  texto2 := texto2 +  ' :pNRBANC, :pNRAGEN, :pNRCONTA, :pNRCHEQ, :pNRPARC, :pSEQCAIXA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       //
       SQLConnection := dmAdmDados.sqlConn;
       if (aBanco = 0) Then
          sql.Add(texto)
       Else
          sql.Add(texto2);
       Params.ParamByName('pSEQUENCIA').AsInteger := pSEQUENCIA;
       Params.ParamByName('pVENDA').AsInteger     := pVENDA;
       Params.ParamByName('pNRPARC').AsInteger    := pNRPARC;
       Params.ParamByName('pTIPOMOV').AsString    := pTIPOMOV;
       Params.ParamByName('pDTMOVIMENTO').AsDateTime := pDTMOVIMENTO;
       Params.ParamByName('pHRMOVIMENTO').AsString   := pHRMOVIMENTO;
       Params.ParamByName('pMODALIDADE').AsInteger   := pMODALIDADE;
       Params.ParamByName('pVLMODALIDADE').AsFloat   := pVLMODALIDADE;
       Params.ParamByName('pVLTROCO').AsFloat     := pVLTROCO;
       Params.ParamByName('pOBSEVACAO').AsString  := pOBSEVACAO;
       Params.ParamByName('pSITUACAO').AsString   := pSITUACAO;
       Params.ParamByName('pCAIXA').AsInteger     := pCAIXA;
       Params.ParamByName('pNATUREZA').AsInteger  := pNATUREZA;
       Params.ParamByName('pFUNCIONARIO').AsInteger := pFUNCIONARIO;
       Params.ParamByName('pSEQCAIXA').AsInteger  := pSeqCaixa;
       //
       if (aBanco > 0) Then
        begin
             Params.ParamByName('pNRBANC').AsInteger := aBanco;
             Params.ParamByName('pNRAGEN').AsString  := aAgencia;
             Params.ParamByName('pNRCONTA').AsString := aConta;
             Params.ParamByName('pNRCHEQ').AsString  := aCheque;
        End;
       //
       ExecSQL();
       //
       result := true;
   finally
       //
       free;
   end;
end;

function TdmAdmDados.Fechar_Caixa(aCAIXA, aRegFinal, iSeqFinal : integer; aData : TDate; aHora : String): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update CAIXA set CAI_DTFECHAMENTO = :pDTFECH, CAI_HOFECHAMENTO = :pHOFECH, CAI_RGFINAL = :pRGFINAL, CAI_SITUACAO = :pSITU, CAI_SQFINAL = :pSQFINAL ';
  texto  := texto  +  'Where  (CAI_CAIXA = :pCAIXA) and (CAI_SITUACAO = :pSITUACAO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCAIXA').AsInteger   := aCAIXA;
       Params.ParamByName('pSITUACAO').AsString := 'A';
       //
       Params.ParamByName('pDTFECH').AsDateTime := aData;
       Params.ParamByName('pHOFECH').AsString   := aHora;
       Params.ParamByName('pRGFINAL').AsInteger := aRegFinal;
       Params.ParamByName('pSITU').AsString     := 'F';
       Params.ParamByName('pSQFINAL').AsInteger := iSeqFinal; 
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.GetRegMovCaixa: Integer;
begin
     dmAdmDados.CdsConfig.Edit;
     dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
     dmAdmDados.CdsConfig.ApplyUpdates(0);
     //
     Result := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
end;

function TdmAdmDados.Editar_Movimento_Caixa(pSEQUENCIA, pCAIXA,
  pNATUREZA: integer; pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO,
  pSITUACAO: String; pDTMOVIMENTO: TDate): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update MOVIMENTO_CAIXA set MCA_TIPOMOV = :pTIPOMOV, MCA_OBSEVACAO = :pOBSEVACAO, MCA_NATUREZA = :pNATUREZA, ';
  texto  := texto  + 'MCA_DTMOVIMENTO = :pDATA, MCA_HRMOVIMENTO = :pHORA, MCA_SITUACAO = :pSITUACAO';
  texto  := texto  + 'Where (MCA_SEQUENCIA = :pSEQUENCIA) and (MCA_CAIXA = :pCAIXA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQUENCIA').AsInteger := pSEQUENCIA;
       Params.ParamByName('pCAIXA').AsInteger     := pCAIXA;
       //
       Params.ParamByName('pTIPOMOV').AsString    := pTIPOMOV;
       Params.ParamByName('pDATA').AsDateTime     := pDTMOVIMENTO;
       Params.ParamByName('pHORA').AsString       := pHRMOVIMENTO;
       Params.ParamByName('pSITUACAO').AsString   := pSITUACAO;
       Params.ParamByName('pOBSEVACAO').AsString  := pOBSEVACAO;
       Params.ParamByName('pNATUREZA').AsInteger  := pNATUREZA;
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.SetClienteSPC(aVenda: Integer;
  aSitucao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update COTAS set COT_FLXSPC = :pSituacao Where (COT_NRVENDA = :pNRVENDA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := aVenda;
       Params.ParamByName('pSituacao').AsString := aSitucao;
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

procedure TdmAdmDados.ListaModalidades(aCombo: TComboBox);
begin
     with cdsListaModalidades do
      begin
           Active := False;
           CommandText := 'Select MOD_CODIGO, MOD_NOME, MOD_FLFIXA from MODALIDADE Where (MOD_FLFIXA <> '+QuotedStr('B') +') order by MOD_NOME';
           Active := True;
           //
           First;
           aCombo.Items.Clear;
           While not (Eof) do
           begin
                aCombo.Items.add(StrZero(FieldByName('MOD_CODIGO').AsString,3)+' - '+FieldByName('MOD_NOME').AsString);
                //
                next;
           End;
      End;
end;

function TdmAdmDados.VerificarModa(aCodigo: Integer;
  aTipo: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select * from MODALIDADE  Where (MOD_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := aCodigo;
       //
       Open;
       //
       if not (IsEmpty) Then
          if (FieldByName('MOD_FLFIXA').AsString = aTipo) Then
              result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.SetPosicaoCliente(aVenda: Integer;
  aSitucao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  If (aSitucao = 'I') Then
      texto  := 'Update COTAS set COT_POSICAO = :pPOSICAO, COT_DTINATIVACAO = :pDATA Where (COT_NRVENDA = :pNRVENDA) ';
  If (aSitucao = 'R') Then
      texto  := 'Update COTAS set COT_POSICAO = :pPOSICAO, COT_DTREATIVACAO = :pDATA Where (COT_NRVENDA = :pNRVENDA) ';
  If ((aSitucao <> 'R') and (aSitucao <> 'I')) Then
      texto  := 'Update COTAS set COT_POSICAO = :pPOSICAO Where (COT_NRVENDA = :pNRVENDA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := aVenda;
       Params.ParamByName('pPOSICAO').AsString := aSitucao;
       If ((aSitucao = 'I') or (aSitucao = 'R')) Then
          Params.ParamByName('pDATA').AsDatetime := Date();
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.Verificar_Acesso_Menu(aUsuario,
  aCodMenu: Integer): String;
begin
     result := 'N';
     //
     with cdsAcessoMenu do
      begin
           Active := False;
           CommandText := 'SELECT PU_CONSULTAR FROM PERMISSOES_USUARIOS ';
           CommandText := CommandText + 'WHERE (USU_CODIGO = :CODUSUARIO) AND (MEN_CODIGO = :CODMENU)';
           Params.ParamByName('CODUSUARIO').AsInteger := aUsuario;
           Params.ParamByName('CODMENU').AsInteger    := aCodMenu;
           Active := True;
           //
           If not (IsEmpty) Then
             If (FieldByName('PU_CONSULTAR').AsString = 'S') Then
                Result := FieldByName('PU_CONSULTAR').AsString;
           //
           Active := False;
      End;
end;

procedure TdmAdmDados.Incluir_Acesso_Usuario(aCodUsu, aCodMenu: Integer;
  aNome_Acesso, aConsulta, aNovo, aAlterar, aExcluir: String);
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select * from PERMISSOES_USUARIOS Where (USU_CODIGO = :pCODIGO) and (MEN_CODIGO = :pMENU)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           //
           SQLConnection := dmAdmDados.sqlConn;
           Sql.Add(Texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodUsu;
           Params.ParamByName('pMENU').AsInteger   := aCodMenu;
           Open;
           //
           If (IsEmpty) Then   // incluir registro
           begin
                With dmPesquisas.cdsPermissoes do
                  begin
                       Active := False;
                       CommandText := 'Select * from PERMISSOES_USUARIOS Where (USU_CODIGO = :pCODIGO) and (MEN_CODIGO = :pMENU)';
                       Params.ParamByName('pCODIGO').AsInteger := aCodUsu;
                       Params.ParamByName('pMENU').AsInteger   := aCodMenu;
                       Active := True;
                       //
                       Append;
                       FieldByName('USU_CODIGO').AsInteger := aCodUsu;
                       FieldByName('MEN_CODIGO').AsInteger := aCodMenu;
                       ApplyUpdates(0);
                  End;
           End      // altera registro
           Else
           begin
                With dmPesquisas.cdsPermissoes do
                  begin
                       Active := False;
                       CommandText := 'Select * from PERMISSOES_USUARIOS Where (USU_CODIGO = :pCODIGO) and (MEN_CODIGO = :pMENU)';
                       Params.ParamByName('pCODIGO').AsInteger := aCodUsu;
                       Params.ParamByName('pMENU').AsInteger   := aCodMenu;
                       Active := True;
                       //
                       edit;
                       FieldByName('PG_NOVO').AsString      := aNovo;
                       FieldByName('PU_ALTERAR').AsString   := aAlterar;
                       FieldByName('PU_APAGAR').asString    := aExcluir;
                       FieldByName('PU_CONSULTAR').AsString := aConsulta;
                       //
                       ApplyUpdates(0);
                  End;
           End;
   finally
      free;
   end;

End;

function TdmAdmDados.ValidarAcesso(aCodUsuario: Integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := False;
     //
     texto  := 'Select PU.usu_codigo, count(*) as QUANT from PERMISSOES_USUARIOS PU ';
     texto  := texto  + 'Where (PU.usu_codigo = :pUSUARIO) group by PU.usu_codigo';
     //
     QrAux := TSqlquery.Create(nil);
     with QrAux do
      try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pUSUARIO').AsInteger := aCodUsuario;
           Open;
           //
           If not(IsEmpty) Then
              if (FieldByName('QUANT').AsFloat > 0) Then
                 Result := True;
           //
           Active := False;
      finally
            Free;
      End;
end;

procedure TdmAdmDados.Acessos_Sistema(aCds: TClientDataSet; aTipo,
  aCodUsu: Integer);
begin
     aCds.Close;
     aCds.Open;
     aCds.EmptyDataSet;
     //
     If (aTipo = 1) Then
     begin
      With dmRelatorios.cdsAcessos do
      begin
           Active := False;
           CommandText := 'Select * from MENUS Where (MEN_NOME <> '+QuotedStr('-')+') order by MEN_CODIGO ';
           Active := True;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 //
                 While not (dmRelatorios.cdsAcessos.Eof) do
                 begin
                       With aCds do
                       begin
                            append;
                            FieldByName('CODIGO').AsInteger    := dmRelatorios.cdsAcessos.FieldByName('MEN_CODIGO').AsInteger;
                            FieldByName('MENU_NOME').AsString  := dmRelatorios.cdsAcessos.FieldByName('MEN_NOME').AsString;
                            FieldByName('MENU_PAI').AsInteger  := dmRelatorios.cdsAcessos.FieldByName('MEN_CODIGOPAI').AsInteger;
                            FieldByName('PERMISSAO').AsBoolean := False;
                            FieldByName('NOVO').AsBoolean      := False;
                            FieldByName('ALTERAR').AsBoolean   := False;
                            FieldByName('EXCLUIR').AsBoolean   := False;
                            Post;
                       End;
                       //
                       dmRelatorios.cdsAcessos.Next;
                  End;
                  //
                  aCds.First;
            End;
      End;
      //
     End;
     // Tipo dois
     If (aTipo = 2) Then
     begin
          With dmPesquisas.cdsPermissoes do
             begin
                 Active := False;
                 CommandText := 'Select * from PERMISSOES_USUARIOS Where (USU_CODIGO = :pCODIGO)';
                 Params.ParamByName('pCODIGO').AsInteger := aCodUsu;
                 Active := True;
                 //
                 If not (IsEmpty) Then
                  begin
                   First;
                   //
                   While not (dmPesquisas.cdsPermissoes.Eof) do
                   begin
                       With aCds do
                       begin
                            append;
                            FieldByName('CODIGO').AsInteger    := dmPesquisas.cdsPermissoes.FieldByName('MEN_CODIGO').AsInteger;
                            FieldByName('MENU_NOME').AsString  := GetNomeMenu(dmPesquisas.cdsPermissoes.FieldByName('MEN_CODIGO').AsInteger);
                            If Verificar_Menu_Pai(dmPesquisas.cdsPermissoes.FieldByName('MEN_CODIGO').AsInteger) Then
                                FieldByName('MENU_PAI').AsInteger  := 1;
                            //
                            If (dmPesquisas.cdsPermissoes.FieldByName('PU_CONSULTAR').AsString = 'S') Then
                                FieldByName('PERMISSAO').AsBoolean := True
                            Else
                                FieldByName('PERMISSAO').AsBoolean := False;
                            //
                            If (dmPesquisas.cdsPermissoes.FieldByName('PG_NOVO').AsString = 'S') Then
                                FieldByName('NOVO').AsBoolean      := True
                            Else
                                FieldByName('NOVO').AsBoolean      := False;
                            //
                            If (dmPesquisas.cdsPermissoes.FieldByName('PU_ALTERAR').AsString = 'S') Then
                                FieldByName('ALTERAR').AsBoolean   := True
                            Else
                                FieldByName('ALTERAR').AsBoolean   := False;
                            //
                            If (dmPesquisas.cdsPermissoes.FieldByName('PU_APAGAR').AsString = 'S') Then
                                FieldByName('EXCLUIR').AsBoolean   := True
                            Else
                                FieldByName('EXCLUIR').AsBoolean   := False;
                            //
                            Post;
                       End;
                       //
                       dmPesquisas.cdsPermissoes.Next;
                     End;  // fim-enquanto
                  //
                  RefreshCDS(cdsListaMenus);
                  With cdsListaMenus do
                  begin
                       First;
                       While not (Eof) do
                        begin
                             If not (dmPesquisas.cdsPermissoes.Locate('MEN_CODIGO', cdsListaMenusMEN_CODIGO.AsInteger,[])) Then
                               begin
                                      With aCds do
                                       begin
                                            append;
                                            //
                                            FieldByName('CODIGO').AsInteger    := cdsListaMenusMEN_CODIGO.AsInteger;
                                            FieldByName('MENU_NOME').AsString  := GetNomeMenu(cdsListaMenusMEN_CODIGO.AsInteger);
                                            If Verificar_Menu_Pai(cdsListaMenusMEN_CODIGO.AsInteger) Then
                                                FieldByName('MENU_PAI').AsInteger  := 1;
                                            FieldByName('PERMISSAO').AsBoolean := False;
                                            FieldByName('NOVO').AsBoolean      := False;
                                            FieldByName('ALTERAR').AsBoolean   := False;
                                            FieldByName('EXCLUIR').AsBoolean   := False;
                                            //
                                            Post;
                                       End;
                               End;
                             //
                             Next;
                        End;
                  End;
                  //
                  aCds.First;
                  End;
             End;
     End;
end;

function TdmAdmDados.GetNomeMenu(aCodMenu: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select MEN_NOME from MENUS Where (MEN_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodMenu;
           //
           Open;
           //
            if not (IsEmpty) Then
              Result := FieldByName('MEN_NOME').AsString
            Else
              Result := 'MENU NÃO ENCONTRADO';
    finally
      free;
    end;
end;

function TdmAdmDados.Verificar_Menu_Pai(aCodigo: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select MEN_CODIGO, MEN_CODIGOPAI from MENUS Where (MEN_CODIGO = :pCODIGO) ';
   //
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodigo;
           Open;
           //
           If not (IsEmpty) Then
              If (fieldByName('MEN_CODIGOPAI').IsNull) Then
                 Result := True;
    finally
      free;
    end;
end;


procedure TdmAdmDados.SetAdminUsuario(aCodigo: Integer; aValor: String);
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Update USUARIOS SET USU_ADMIN = :pValor Where (SEN_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodigo;
           Params.ParamByName('pValor').AsString := aValor;
           ExecSQL();
           //
    finally
      free;
    end;
end;

function TdmAdmDados.GetNomeNatureza(aDescricao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select NAT_CODIGO, NAT_NOME from NATUREZA Where (NAT_NOME = :pNOME)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString := aDescricao;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.GetCaixaRecebimento(aSequencia, aVenda : Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select MCA_SEQUENCIA, MCA_VENDA, MCA_NRPARC, MCA_CAIXA from MOVIMENTO_CAIXA ';
   texto  := texto + ' Where (MCA_SEQUENCIA = :pSEQUENCIA) and (MCA_VENDA = :pVENDA) ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pSEQUENCIA').AsInteger := aSequencia;
           Params.ParamByName('pVENDA').AsInteger     := aVenda;
           Open;
           //
           if not (IsEmpty) Then
              Result := fieldByName('MCA_CAIXA').AsInteger;
    finally
      free;
    end;
end;

function TdmAdmDados.GetNomeCaixa(aCodigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select SEN_CODIGO, SEN_NOME from USUARIOS Where (SEN_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodigo;
           Open;
           //
           if not (IsEmpty) Then
              Result := uFuncoes.StrZero(fieldByName('SEN_CODIGO').AsString,3)+ ' - '+fieldByName('SEN_NOME').AsString;
    finally
      free;
    end;
end;

procedure TdmAdmDados.Verificar_Direito_Acesso(aUsuario,
  aCodMenu: Integer);
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'SELECT PG_NOVO, PU_ALTERAR, PU_APAGAR, PU_CONSULTAR FROM PERMISSOES_USUARIOS ';
   texto  := texto  + 'WHERE (USU_CODIGO = :CODUSUARIO) AND (MEN_CODIGO = :CODMENU)' ;
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('CODUSUARIO').AsInteger := aUsuario;
           Params.ParamByName('CODMENU').AsInteger    := aCodMenu;
           Open;
           //
           if not (IsEmpty) Then
            Begin
                 uFrmAdmMain.aNovo    := FieldByName('PG_NOVO').AsString;
                 uFrmAdmMain.aAlterar := FieldByName('PU_ALTERAR').AsString;
                 uFrmAdmMain.aApagar  := FieldByName('PU_APAGAR').AsString;
            End;
    finally
      free;
    end;
end;

procedure TdmAdmDados.Incluir_Natureza(aCodigo: integer; aDescricao,
  aTipo: String);
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Insert Into NATUREZA (NAT_CODIGO, NAT_NOME, NAT_TIPO) ';
   texto  := texto  + ' Values (:pCODIGO, :pNOME, :pTIPO)' ;
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := aCodigo;
           Params.ParamByName('pNOME').AsString    := aDescricao;
           Params.ParamByName('pTIPO').AsString    := aTipo;
           ExecSQL();
    finally
      free;
    end;
end;

function TdmAdmDados.GetCodModalidade(aDescricao: String): integer;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'select MOD_CODIGO, MOD_NOME from MODALIDADE Where (MOD_NOME = :pNOME)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString    := aDescricao;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('MOD_CODIGO').AsInteger;
    finally
      free;
    end;
end;

function TdmAdmDados.GetCodNatureza(aDescricao: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select NAT_CODIGO, NAT_NOME from NATUREZA Where (NAT_NOME = :pNOME)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString    := aDescricao;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('NAT_CODIGO').AsInteger;
    finally
      free;
    end;
end;

function TdmAdmDados.GetTipoNatureza(aDescricao: String): String;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select NAT_CODIGO, NAT_NOME, NAT_TIPO from NATUREZA Where (NAT_NOME = :pNOME)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString    := aDescricao;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('NAT_TIPO').AsString;
    finally
      free;
    end;

end;

function TdmAdmDados.SetDesalienacaoCota(iVenda: integer; aSituacao : String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   result := False;
   texto  := 'Update COTAS Set COT_DESALIENADO = :pDESALIENADO Where (COT_NRVENDA = :pNRVENDA)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pNRVENDA').AsInteger  := iVenda;
           Params.ParamByName('pDESALIENADO').AsString  := aSituacao;
           ExecSQL();
           result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.GetVerificaGrupoIniciou(aGrupo: integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
   result := False;
   texto  := 'Select GRU_CODIGO, GRU_INICIOU  from GRUPOS Where (GRU_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger  := aGrupo;
           Open;
           //
           if not (IsEmpty) Then
             if (FieldByName('GRU_INICIOU').AsString = 'S') then
                 result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.GetRegInicialCaixa(aCaixa,
  aRgFinal: integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select CAI_NUMERO, CAI_RGINICIAL, CAI_RGFINAL, CAI_CAIXA from CAIXA Where (CAI_RGFINAL = :pRGFINAL) and (CAI_CAIXA = :pCAIXA) and (CAI_SITUACAO = :pSITUACAO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pRGFINAL').AsInteger  := aRgFinal;
           Params.ParamByName('pCAIXA').AsInteger    := aCaixa;
           Params.ParamByName('pSITUACAO').AsString  := 'F';
           Open;
           //
           if not (IsEmpty) Then
              result := FieldByName('CAI_NUMERO').AsInteger
           Else
              result := 0;
    finally
      free;
    end;
end;

procedure TdmAdmDados.CupomEntradaSaida(aSEQUENCIA, iSeqCaixa, aCaixa : integer; aVia: String);
var
   CONTADOR, LINHA, I :Integer;
   IMPRESSORA:TextFile;
   aDescricao, aNomeDispositivo, M_NMMODA : String;
begin
  //
   try
       //
       aNomeDispositivo := GetNomeDispositivo();
       //
       uFuncoes.FilterCDS(dmPesquisas.cdsMovCaixa, fsInteger, InttoStr(aSEQUENCIA));
       if Not (dmPesquisas.cdsMovCaixa.IsEmpty) Then
        begin
             {Relaciona a variável impressora com a
             lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
             //AssignFile(IMPRESSORA,'LPT1:');
             AssignFile(IMPRESSORA, aNomeDispositivo);
             {abre a porta da impressão }
             Rewrite(IMPRESSORA);
             {envia caractere de controle para comprimir a impressão}
             Write(IMPRESSORA);
             { salta duas linhas}
             Writeln(impressora);
             Writeln(Impressora);
             Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
             //
             if (dmPesquisas.cdsMovCaixaMCA_TIPOMOV.AsString = 'E') Then
                 aDescricao := 'ENTRADA'
             Else
                 aDescricao := 'SAIDA';
             { ---- Impressão dos Dados do Consumidor-----}
             RefreshCDS(cdsConfig);
             //
             LINHA := cdsConfigCFG_LINHA_CUPOM_ES.AsInteger;
             //
                  { Imprime a Razão Social, alinhado à esquerda dentro de uma área de 90 caracteres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(cdsConfig.FieldByName('CFG_NOMEEMPRESA').AsString,48)]));
                  { Imprime a CGC, alinhado à esquerda dentro de umaárea de 30 caracteres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC('CGC : '+uFuncoes.FormataCNPJ(cdsConfig.FieldByName('CFG_CGC').AsString),48)]));
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(cdsConfig.FieldByName('CFG_ENDERECO').AsString+', '+cdsConfig.FieldByName('CFG_BAIRRO').AsString,48)]));
                  { Imprime CEP, dentro de uma área de 15 carcateres}
                  Writeln(Impressora,Format('%-48s', [uFuncoes.PadC('CEP : '+uFuncoes.FormataCep(cdsConfig.FieldByName('CFG_CEP_EMPRESA').AsString)+'  FONE : '+uFuncoes.FormataFONE(cdsConfig.FieldByName('CFG_NRFONE1').AsString),48)]));
                  //
                  Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
                  If (aVia = '2') Then
                     Writeln(Impressora, Format('%-48s',[uFuncoes.PadC(aDescricao+' - 2'+CHR(166)+' VIA',48)]))
                  Else
                      Writeln(Impressora, Format('%-48s',[uFuncoes.PadC(aDescricao,48)]));
                  //
                  Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
                  { Salta uma linha}
                  //
                  M_NMMODA := dmAdmDados.GetNomeModalidade(dmPesquisas.cdsMovCaixa.FieldByName('MCA_MODALIDADE').AsInteger);
                  {Imprime a Data e hora do recebimento e Salta para próxima Linha}
                  If (iSeqCaixa > 0) Then
                    Writeln(Impressora, Format('%-48s',     ['N. Registro: ' + uFuncoes.StrZero(InttoStr(iSeqCaixa),10)]))
                  Else
                    Writeln(Impressora, Format('%-48s',     ['N. Registro: ' + uFuncoes.StrZero(InttoStr(aSEQUENCIA),10)]));
                    //
                  Writeln(Impressora, Format('%-48s',     ['Data.......: ' + dmPesquisas.cdsMovCaixa.FieldByName('MCA_DTMOVIMENTO').AsString+' - '+dmPesquisas.cdsMovCaixa.FieldByName('MCA_HRMOVIMENTO').AsString]));
                  Writeln(Impressora, Format('%-48s',     ['Modalidade.: ' + M_NMMODA]));
                  If (M_NMMODA = 'CHEQUE') Then
                    Begin
                         Writeln(Impressora, Format('%-48s', ['Banco......: ' + uFuncoes.StrZero(dmPesquisas.cdsMovCaixa.FieldByName('MCA_NRBANC').AsString,3)]));
                         Writeln(Impressora, Format('%-48s', ['Agencia....: ' + dmPesquisas.cdsMovCaixa.FieldByName('MCA_NRAGEN').AsString]));
                         Writeln(Impressora, Format('%-48s', ['N.Conta....: ' + dmPesquisas.cdsMovCaixa.FieldByName('MCA_NRCONTA').AsString]));
                         Writeln(Impressora, Format('%-48s', ['N.Cheque...: ' + dmPesquisas.cdsMovCaixa.FieldByName('MCA_NRCHEQ').AsString]));
                    End;
                  Write  (Impressora, Format('%-13s',     ['Valor......: ' ]));
                  Writeln(Impressora, Format('%10s',      [FormatFloat('###,##0.#0',dmPesquisas.cdsMovCaixa.FieldByName('MCA_VLMODALIDADE').AsFloat)]));
                  Writeln(Impressora, Format('%-48s',     ['Referencia.: ' + Copy(dmPesquisas.cdsMovCaixa.FieldByName('MCA_OBSEVACAO').AsString,1,35)]));
                  Writeln(Impressora, Format('%-48s',     ['Natureza...: ' + GetNaturezaNome(dmPesquisas.cdsMovCaixa.FieldByName('MCA_NATUREZA').AsInteger)]));
                  Writeln(Impressora, Format('%-48s',     ['Caixa......: ' + GetNomeCaixa(aCaixa)]));
                  //
                  Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
             //
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(uFuncoes.Replicate('_',40),48)]));
             { Salta duas Linhas}
             {Writeln(Impressora);
             Writeln(Impressora);}
             { Imprime o rodape}
             {Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
             Writeln(Impressora,Format('%-48s',[uFuncoes.PadC(cdsConfigCFG_MENS_CUPOM.AsString,48)]));
             Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
             Writeln(Impressora,Format('%-48s',['DESENVOLVIDO POR:INFOG2 TECNOLOGIA-(86)3226-4510']));}
             { Salta nove linhas}
             For I := 1 to LINHA do
                Writeln(Impressora);
             //
             {Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);
             Writeln(Impressora);}
        End;
   finally
          { Fecha a porta de impressão}
           System.Close(Impressora);
   end;
end;

function TdmAdmDados.GetNaturezaNome(aCogigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select NAT_CODIGO, NAT_NOME from NATUREZA Where (NAT_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger  := aCogigo;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('NAT_NOME').AsString;
    finally
      free;
    end;
end;

function TdmAdmDados.GetNomeModalidade(aCodigo: integer): String;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select MOD_CODIGO, MOD_NOME from MODALIDADE Where (MOD_CODIGO = :pCODIGO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger  := aCodigo;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('MOD_NOME').AsString;
    finally
      free;
    end;
end;

function TdmAdmDados.GetNomeDispositivo: String;
begin
       uFuncoes.RefreshCDS(cdsConfig);
       if not uFuncoes.Empty(cdsConfigCFG_NMDISP.AsString) Then
            Result  := cdsConfigCFG_NMDISP.AsString
       Else
            Result := 'nn.txt';
end;

function TdmAdmDados.AjustaCodCliente: boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select max(c.cli_codigo) as codigo from clientes c';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Open;
           //
           if not (IsEmpty) Then
             begin
                  uFuncoes.RefreshCDS(cdsConfig);
                  Start;
                  try
                     cdsConfig.Edit;
                     cdsConfigCFG_CLIENTE.AsInteger := FieldByName('codigo').AsInteger;
                     cdsConfig.ApplyUpdates(0);
                     //
                     Comit(Transc);
                     Result := True;
                  Except
                     Rollback;
                  End;

             End;
    finally
      free;
    end;
end;

function TdmAdmDados.AjustaNumVenda: boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select max(v.cot_nrvenda) as codigo from cotas v ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Open;
           //
           if not (IsEmpty) Then
             begin
                  uFuncoes.RefreshCDS(cdsConfig);
                  Start;
                  try
                     cdsConfig.Edit;
                     cdsConfigCFG_VENDA.AsInteger := FieldByName('codigo').AsInteger;
                     cdsConfig.ApplyUpdates(0);
                     //
                     Comit(Transc);
                     Result := True;
                  Except
                     Rollback;
                  End;

             End;
    finally
      free;
    end;
end;

function TdmAdmDados.GetNumVenda(aVenda: integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select COT_NRVENDA from COTAS Where (COT_NRVENDA = :pVENDA)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pVENDA').AsInteger  := aVenda;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.VerificaBancoCliente(aVenda, aGrupo, aCota,
  aBanco: integer): boolean;
begin
     Result := False;
     //
     With dmPesquisas.cdsVerificaBanco do
      begin
           Close;
           Params.ParamByName('pVENDA').AsInteger  := aVenda;
           Params.ParamByName('pCDGRUP').AsInteger := aGrupo;
           Params.ParamByName('pNRCOTA').AsInteger := aCota;
           Open;
           //
           If not (IsEmpty) Then
              If (FieldByName('REC_CDBANC').AsInteger <> aBanco) Then
                 Result := True;
      End;
end;

function TdmAdmDados.AdicionarAcaoUsuario(aUsuario: integer; aData: TDate;
  aAcao: String): boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Insert Into TAREFAS_USUARIOS (TAR_USUARIO, TAR_DTMOVI, TAR_ACAO) ';
   texto  := texto + 'Values (:pUSUARIO, :pDTMOVI, :pACAO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
        Start;
        try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pUSUARIO').AsInteger := aUsuario;
           Params.ParamByName('pDTMOVI').AsDate     := aData;
           Params.ParamByName('pACAO').AsString     := aAcao;
           ExecSQL() ;
           //
           Comit(Transc);
           //
           Result := True;
        Except
           Rollback;
        End;
    finally
      free;
    end;
end;

function TdmAdmDados.SetTarefaUsuario(M_NMDESC: String): Boolean;
begin
     result := False;
     // Tarefa Usuario - Entrou no sistema
     aDataMovimento := Date();
     aHoraMov       := TimetoStr(Time);
     aAcaoUsuario   := M_NMDESC+DatetoStr(udmAdmDados.aDataMovimento)+' '+udmAdmDados.aHoraMov+' *F*';
     //
      if (dmAdmDados.AdicionarAcaoUsuario(
             dmAdmDados.cdsUsuariosSEN_CODIGO.AsInteger,
             udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario)) Then
             result := True;
end;

procedure TdmAdmDados.SetTarefa_Usuario(M_NMDESC : String);
begin
     aDataMovimento := Date();
     aHoraMov       := TimetoStr(Time);
     aAcaoUsuario   := M_NMDESC+' *F*';
end;

function TdmAdmDados.Numero_Caixa(aCAIXA, aRegInicial,
  aRegFinal: integer): integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select CAI_NUMERO, CAI_RGINICIAL, CAI_RGFINAL, CAI_CAIXA, CAI_SITUACAO from CAIXA  ';
  texto  := texto  +  'Where  (CAI_RGINICIAL = :pRGINICIAL) and (CAI_RGFINAL = :pRGFINAL) and (CAI_CAIXA = :pCAIXA) and (CAI_SITUACAO = :pSITUACAO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pRGINICIAL').AsInteger := aRegInicial;
       Params.ParamByName('pRGFINAL').AsInteger := aRegFinal;
       Params.ParamByName('pCAIXA').AsInteger   := aCAIXA;
       Params.ParamByName('pSITUACAO').AsString := 'F';
       Open;
       //
       If not (IsEmpty) Then
          Result := fieldByName('CAI_NUMERO').AsInteger;
   finally
      free;
   end;
end;


function TdmAdmDados.GetCodMenu(aNomeMenu: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select MEN_CODIGO from MENUS Where (MEN_NOME = :pNOME)  ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNOME').AsString := aNomeMenu;
       Open;
       //
       If not (IsEmpty) Then
          Result := fieldByName('MEN_CODIGO').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.Baixa_Parcela_Automatica(aNossoNumero, aHora : String;
 aDataPaga : TDate; aValor, aMulta : double; aMovCaixa : integer ): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := false;
  texto  :=
     'Update parcelas set REC_DTPAGA = :pDTPAGA, REC_FORMABAIXA = :pFORMABAIXA, REC_VLMULT = :pVLMULT, REC_TOTAL_PAGO = :pPAGO, REC_HOPAGA = :pHOPAGA, REC_MOV_CAIXA = :pMOVCAIXA ';
  texto  := texto +  ' Where (REC_NOSSONUMERO = :pNOSSONUMERO) and (REC_DTPAGA is null) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       //
       Params.ParamByName('pNOSSONUMERO').AsString := aNossoNumero;
       Params.ParamByName('pDTPAGA').AsDate        := aDataPaga;
       Params.ParamByName('pFORMABAIXA').AsString  := 'B';
       Params.ParamByName('pVLMULT').AsFloat       := aMulta;
       Params.ParamByName('pPAGO').AsFloat         := aValor;
       Params.ParamByName('pHOPAGA').AsString      := aHora;
       Params.ParamByName('pMOVCAIXA').AsInteger   := aMovCaixa;
       ExecSQL();
       // Grava
       Comit(Transc);
       //
       result := True;
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.SetValorCredito(aVenda: Integer;
  aValorCredito, aValorParcela : Double): boolean;
// Atualiza o valor do crédito
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  :=
     'Update cotas set COT_VALCRE = :pVALCRE, COT_VALCOTA = :pVALCOTA Where (COT_NRVENDA = :pNRVENDA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       //
       Params.ParamByName('pNRVENDA').AsInteger := aVenda;
       Params.ParamByName('pVALCRE').AsFloat    := aValorCredito;
       Params.ParamByName('pVALCOTA').AsFloat   := aValorParcela;
       ExecSQL();
       // Grava
       Comit(Transc);
       //
       result := True;
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.SetValorParcela(aVenda, aGrupo, aCota,
  aParcela: Integer; aDataRef : TDate; aValorParcela: Double): boolean;
// Atualiza o valor da parcela
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  :=
     'Update parcelas set REC_VLPARC = :pVLPARC Where (REC_NRVEND = :pNRVEND) And (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) ';
  texto  := texto +  '  and (REC_NRPARC = :pNRPARC) and (REC_DTVENC >= :pDTVENC) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       //
       Params.ParamByName('pNRVEND').AsInteger := aVenda;
       Params.ParamByName('pCDGRUP').AsInteger := aGrupo;
       Params.ParamByName('pNRCOTA').Asinteger := aCota;
       Params.ParamByName('pNRPARC').AsInteger := aParcela;
       Params.ParamByName('pDTVENC').AsDate    := aDataRef;
       //
       Params.ParamByName('pVLPARC').AsFloat   := aValorParcela;
       //
       ExecSQL();
       // Grava
       Comit(Transc);
       //
       result := True;
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.SetValorNovoParcela(aVenda: Integer; aDataRef: TDate;
  aValorParcela: Double): boolean;
// Atualiza o valor da parcela
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  :=
     'Update parcelas set REC_VLPARC = :pVLPARC Where (REC_NRVEND = :pNRVEND)  ';
  texto  := texto +  ' and (REC_DTVENC >= :pDTVENC) and (REC_DTPAGA is null) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     Start;
     try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       //
       Params.ParamByName('pNRVEND').AsInteger := aVenda;
       Params.ParamByName('pDTVENC').AsDate    := aDataRef;
       //
       Params.ParamByName('pVLPARC').AsFloat   := aValorParcela;
       //
       ExecSQL();
       // Grava
       Comit(Transc);
       //
       result := True;
     except
       Rollback;
     end;
   finally
      free;
   end;
end;

function TdmAdmDados.GetCPFCliente(M_NUMCPF: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select CLI_CODIGO, CLI_NOME, CLI_CPF ';
  texto  := texto + ' from CLIENTES Where (CLI_CPF = '+QuotedStr(M_NUMCPF)+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Open;
       if not (IsEmpty) Then
          result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.ListaBancos(aCombo: TComboBox);
begin
     with dmPesquisas.cdsListaBanco do
      begin
           Active := False;
           Active := True;
           //
           First;
           aCombo.Clear;
           While not (Eof) do
           begin
                aCombo.Items.add(StrZero(FieldByName('BAN_CODIGO').AsString,3)+' - '+FieldByName('BAN_NOME').AsString);
                //
                next;
           End;
           //
           aCombo.ItemIndex := 0;
      End;
end;

function TdmAdmDados.GetNumPlaca(aPlaca: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select CLI_CODIGO, CLI_NOME, CLI_NRPLACA ';
  texto  := texto + ' from CLIENTES Where (CLI_NRPLACA = '+QuotedStr(aPlaca)+')';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Open;
       if not (IsEmpty) Then
          result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.AutenticacaoBaixa(aVenda, aGrupo, aCota, aParcela,
  aCliente, aRegistro, iRgcaixa : integer; aDataMov: String; aValorParcela: Double);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco : String;
   M_LINTOP, M_LINBOT, I, iUsuario : Integer;
begin
  //
   try
       aNomeDispositivo := 'NN.TXT';
       //
       If not uFuncoes.Empty(uFrmAdmMain.M_CDUSUA) Then
       begin
            iUsuario := StrtoInt(uFrmAdmMain.M_CDUSUA);
            aNomeDispositivo := GetDispositivoImpUsuario(iUsuario);
       End;
       //GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
       M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
       M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
       aEspaco  := uFuncoes.Replicate(' ',1);
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
       If (M_LINTOP > 0) Then
         For I := 1 to M_LINTOP do
           Writeln(Impressora);
       { Imprime linha de autenticação}
              Writeln(Impressora,Format('%-48s', ['RG'+uFuncoes.StrZero(InttoStr(iRgcaixa),7)
              + aEspaco + 'G:'+uFuncoes.StrZero(InttoStr(aGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(aCota),3)+ 'PC:'+ uFuncoes.StrZero(InttoStr(aParcela),3)
              +' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),8)+ '-'+ aDataMov]));
       {Writeln(Impressora,Format('%-48s', ['RG'+uFuncoes.StrZero(InttoStr(aRegistro),7)
              + aEspaco + 'G:'+uFuncoes.StrZero(InttoStr(aGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(aCota),3)+ 'PC:'+ uFuncoes.StrZero(InttoStr(aParcela),3)
              +' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),8)+ '-'+ aDataMov]));}
       If (M_LINBOT > 0) Then
          For I := 1 to M_LINBOT do
             Writeln(Impressora);
       //
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
   end;
end;

function TdmAdmDados.AutenticarSupervisor(iCodigo: integer): boolean;
begin
     Result := False;
     uFuncoes.FilterCDS(dmPesquisas.cdsAuteUsuario, fsInteger, InttoStr(iCodigo));
     //
     With dmPesquisas.cdsAuteUsuario do
      begin
           If not (IsEmpty) Then
              if (FieldByName('SEN_FLSUPER').AsString = 'S') Then
                   Result := True;
      End;
      //
      dmPesquisas.cdsAuteUsuario.Close;
end;

procedure TdmAdmDados.CumpoAbrirCaixa(iCaixa, iRegistro, iRgInicial: integer;
  aValorInicial: double);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aNomeCaixa : String;
   I : Integer;
begin
  //
   try
       //
       aNomeDispositivo := GetDispositivoImpUsuario(iCaixa);
       //GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       //
       uFuncoes.FilterCDS(cdsUsuarios, fsInteger, InttoStr(iCaixa));
       If not (cdsUsuarios.IsEmpty) Then
           aNomeCaixa := cdsUsuariosSEN_NOME.AsString;
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
       Write(IMPRESSORA);
       Write(IMPRESSORA);              
       Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
       Writeln(Impressora,Format('%-48s',[uFuncoes.PadC('ABERTURA DE CAIXA',48)]));
       Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
       { Imprime a Razão Social, alinhado à esquerda dentro de uma área de 90 caracteres}
       Writeln(Impressora,Format('%-48s', [uFuncoes.PadC(cdsConfig.FieldByName('CFG_NOMEEMPRESA').AsString,48)]));
       { Imprime a CGC, alinhado à esquerda dentro de umaárea de 30 caracteres}
       Writeln(Impressora,Format('%-48s', [uFuncoes.PadC('CGC : '+uFuncoes.FormataCNPJ(cdsConfig.FieldByName('CFG_CGC').AsString),48)]));
       //
       Writeln(Impressora, Format('%48s',[uFuncoes.Replicate('*',48)]));
       { Imprime linha de autenticação}
       //Writeln(Impressora, Format('%-48s',     ['Registro......: ' + uFuncoes.StrZero(InttoStr(iRegistro),10)]));
       Writeln(Impressora, Format('%-48s',     ['Registro......: ' + uFuncoes.StrZero(InttoStr(iRgInicial),10)]));
       Writeln(Impressora, Format('%-48s',     ['Data/Hora.....: ' + DatetoStr(Date())+ ' - '+TimetoStr(Time())]));
       Writeln(Impressora, Format('%-48s',     ['Caixa.........: ' + aNomeCaixa]));
       Writeln(Impressora, Format('%-48s',     ['Valor Inicial.: ' + FormatFloat('###,##0.#0',aValorInicial)]));
       Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('=',48)]));
       //
       Writeln(Impressora);
       Writeln(Impressora);
       { Imprime o rodape}
       Writeln(Impressora,Format('%-48s',[uFuncoes.Replicate('*',48)]));
       //Writeln(Impressora,Format('%-48s',['DESENVOLVIDO POR:INFOG2 TECNOLOGIA-(86)3226-4510']));
       { Salta nove linhas}
        For I := 1 to 9 do
           Writeln(impressora);
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
       //
       cdsUsuarios.Close;
   end;
end;

function TdmAdmDados.BaixaPrimeiraParcela(REC_NRVEND, REC_CDGRUP,
  REC_NRCOTA, REC_NRPARC: integer; REC_DTPAGA: TDate; aValor, fValorCredito : Double): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update PARCELAS set REC_TOTAL_PAGO = :pValor, REC_DTPAGA = :pDTPAGA, REC_FORMABAIXA = :pFORMABAIXA, REC_VLMULT = :pVLMULT, REC_CREDITO = :pCREDITO';
  texto  := texto + ' Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVEND').AsInteger := REC_NRVEND;
       Params.ParamByName('pCDGRUP').AsInteger := REC_CDGRUP;
       Params.ParamByName('pNRCOTA').AsInteger := REC_NRCOTA;
       Params.ParamByName('pNRPARC').AsInteger := REC_NRPARC;
       //
       Params.ParamByName('pDTPAGA').AsDateTime := REC_DTPAGA;
       Params.ParamByName('pFORMABAIXA').AsString := 'C';
       Params.ParamByName('pVLMULT').AsFloat      := 0;
       if (fValorCredito > 0) Then
           Params.ParamByName('pCREDITO').AsFloat     := fValorCredito
       Else
           Params.ParamByName('pCREDITO').AsFloat     := 0;
       Params.ParamByName('pValor').AsFloat       := aValor; 
       //
       ExecSQL();
       //
       
       //
       result := True;
   finally
      free;
   end;
end;

function TdmAdmDados.Atualizar_Banco_Cota_Vazio(aVenda, aCodigo, aCota,
  aBanco, aParcela: integer): boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Update PARCELAS SET REC_CDBANC = :pBANCO ';
  texto  := texto +'Where (REC_NRVEND = :pVENDA) AND (REC_CDGRUP = :pCDGRUP) AND (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC) AND (REC_DTPAGA IS NULL)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       //
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pVENDA').AsInteger  := aVenda;
       Params.ParamByName('pCDGRUP').AsInteger := aCodigo;
       Params.ParamByName('pNRCOTA').AsInteger := aCota;
       Params.ParamByName('pNRPARC').AsInteger := aParcela;
       Params.ParamByName('pBANCO').AsInteger  := aBanco;
       ExecSQL();
       //
       Result := True;
       //
   finally
       QrAux.Free;
       //
   end;
end;

function TdmAdmDados.Banco_Venda(aVenda: integer): Integer;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  := 'Select COT_NRVENDA, COT_CDBANCO from COTAS ';
  texto  := texto +'Where (COT_NRVENDA = :pVENDA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pVENDA').AsInteger := aVenda;
       Open;
       //
       if not (IsEmpty) Then
          Result := FieldByName('COT_CDBANCO').AsInteger;
   finally
        QrAux.Free;
   end;
end;

procedure TdmAdmDados.AutenticacaoDoc(iSequencia: Integer);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco, aDataMov, M_SQCAIX : String;
   M_LINTOP, M_LINBOT, I : Integer;
   aValorParcela : double;
   QrAux : TSQLQuery;
   texto : string;
begin
  texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQUENCIA').AsInteger := iSequencia;
       Open;
       //
       if not (IsEmpty) Then
        begin
             aValorParcela := FieldByName('MCA_VLMODALIDADE').AsFloat;
             aDataMov      := FieldByName('MCA_DTMOVIMENTO').AsString;
             M_SQCAIX      := FieldByName('MCA_SEQCAIXA').AsString;
        End;
   finally
        QrAux.Free;
   end;
  //
   try
       //
       aNomeDispositivo := GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
       M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
       M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
       aEspaco  := uFuncoes.Replicate(' ',2);
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
       If (M_LINTOP > 0) Then
         For I := 1 to M_LINTOP do
           Writeln(Impressora);
       { Imprime linha de autenticação}
       If not uFuncoes.Empty(M_SQCAIX) Then
           Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(M_SQCAIX,10) + aEspaco + '-'+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),12)+ ' - '+ aDataMov]))
       Else
           Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iSequencia),10) + aEspaco + '-'+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),12)+ ' - '+ aDataMov]));
       // 11/11/2008
              { Imprime linha de autenticação}
      { Writeln(Impressora,Format('%-48s', ['RG'+uFuncoes.StrZero(InttoStr(iSequencia),7)
              + aEspaco + 'G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(aCota),3)+ 'PC:'+ uFuncoes.StrZero(InttoStr(aParcela),3)
              +' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),8)+ '-'+ aDataMov]));}
       //
       If (M_LINBOT > 0) Then
          For I := 1 to M_LINBOT do
             Writeln(Impressora);
       //
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
   end;
end;


function TdmAdmDados.PrimeiroReg(aTabela, aCampo: String): integer;
begin
     result := uFuncoes.mvcodigo(aCampo, aTabela);
end;

function TdmAdmDados.UltimoReg(aTabela, aCampo: String): integer;
begin
     result := uFuncoes.mvcodigomax(aCampo, aTabela);
end;

function TdmAdmDados.GetClienteVenda(iVenda: Integer): String;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  texto  := 'Select CT.COT_NRVENDA, CL.CLI_NOME FROM COTAS CT inner join CLIENTES CL ON CL.cli_codigo = CT.cot_cdclie Where (COT_NRVENDA = :pNRVENDA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := iVenda;
       Open;
       //
       if not (IsEmpty) Then
          Result := FieldByName('CLI_NOME').AsString;
   finally
        QrAux.Free;
   end;
end;

procedure TdmAdmDados.ImprimiEtiqueta(aCodigo : String);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEspaco : String;
   M_LINTOP, I : integer;
begin
   uFuncoes.FilterCDS(cdsClientes, fsInteger, aCodigo);
   //
   try
       //
       aNomeDispositivo := GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       aEspaco  := uFuncoes.Replicate(' ',1);
       //
       M_LINTOP := cdsConfigCFG_TOP_ETIQUETA.AsInteger;
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
         For I := 1 to M_LINTOP do
           Writeln(Impressora);
       { Imprime linha de autenticação}
       Writeln(Impressora,Format('%-50s', [aEspaco + cdsClientesCLI_NOME.AsString]));
       Writeln(Impressora,Format('%-50s', [aEspaco + cdsClientesCLI_ENDERECO.AsString]));
       Writeln(Impressora,Format('%-40s', [aEspaco + cdsClientesCLI_BAIRRO.AsString]));
       Writeln(Impressora,Format('%-40s', [aEspaco + uFuncoes.FormataCep(cdsClientesCLI_NUMCEP.AsString) + '   '+cdsClientesCLI_CIDADE.AsString + ' - '+cdsClientesCLI_UFCLIE.AsString]));
       //
       For I := 1 to 3 do
           Writeln(Impressora);
       //
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
   end;
end;

function TdmAdmDados.Excluir_Avalista(iVenda, iAvalista: Integer): Boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Delete from AVALISTAS Where (AVA_NRVEND = :pNRVENDA) AND (AVA_CDCLIE = :pCDCLIE)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := iVenda;
       Params.ParamByName('pCDCLIE').AsInteger  := iAvalista;
       ExecSQL();
       //
       Result := True;
   finally
       QrAux.Free;
   end;
end;

function TdmAdmDados.GetSequenciaCaixa(iCaixa: Integer): Integer;
begin
     Result := 0;
     //
     FilterCDS(cdsUsuarios, fsInteger, IntToStr(iCaixa));
     //
     If not (cdsUsuarios.IsEmpty) Then
      begin
           With cdsUsuarios do
            begin
                 Edit;
                 FieldByName('SEN_SEQCAIXA').AsInteger :=
                     FieldByName('SEN_SEQCAIXA').AsInteger + 1;
                 ApplyUpdates(0);
                 //
                 Result := FieldByName('SEN_SEQCAIXA').AsInteger;
            End;
      End;
end;

procedure TdmAdmDados.AutenticacaoEstorno(iSequencia: Integer);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco, aDataMov : String;
   W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC : String;
   M_LINTOP, M_LINBOT, I , W_SQCAIX  : Integer;
   aValorParcela : double;
   QrAux : TSQLQuery;
   texto : string;
begin
  texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQUENCIA').AsInteger := iSequencia;
       Open;
       //
       if not (IsEmpty) Then
        begin
             aValorParcela := FieldByName('MCA_VLMODALIDADE').AsFloat;
             aDataMov      := FieldByName('MCA_DTMOVIMENTO').AsString;
             W_SQCAIX      := FieldByName('MCA_SEQCAIXA').AsInteger;
             W_NRPARC      := uFuncoes.StrZero(FieldByName('MCA_NRPARC').AsString,3) ;
             W_NRVEND      := FieldByName('MCA_VENDA').AsString;
             //
             FilterCDS(cdsVendaContas, fsInteger,  W_NRVEND);
             //
             If not (cdsVendaContas.IsEmpty) Then
              begin
                   W_CDGRUP := uFuncoes.StrZero(cdsVendaContasCOT_CDGRUPO.AsString,3);
                   W_NRCOTA := uFuncoes.StrZero(cdsVendaContasCOT_NRCOTA.AsString,3);
              End;
        End;
   finally
        QrAux.Free;
   end;
  //
   try
       //
       aNomeDispositivo := GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
       M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
       M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
       aEspaco  := uFuncoes.Replicate(' ',2);
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
       If (M_LINTOP > 0) Then
         For I := 1 to M_LINTOP do
           Writeln(Impressora);
       { Imprime linha de autenticação}
       If (W_SQCAIX > 0) Then
           Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(W_SQCAIX),7) + aEspaco + '- G:'+W_CDGRUP+'C:'+W_NRCOTA+'P:'+W_NRPARC+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),9)+'>Estorno']))
       Else
           Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iSequencia),7) + aEspaco + '- G:'+W_CDGRUP+'C:'+W_NRCOTA+'P:'+W_NRPARC+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),9)+'>Estorno']));
       // 11/11/2008
              { Imprime linha de autenticação}
      { Writeln(Impressora,Format('%-48s', ['RG'+uFuncoes.StrZero(InttoStr(iSequencia),7)
              + aEspaco + 'G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(aCota),3)+ 'PC:'+ uFuncoes.StrZero(InttoStr(aParcela),3)
              +' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),8)+ '-'+ aDataMov]));}
       //
       If (M_LINBOT > 0) Then
          For I := 1 to M_LINBOT do
             Writeln(Impressora);
       //
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
   end;
end;

function TdmAdmDados.SetCreditoParcela(iVenda, iGrupo, iCota, iParcela,
  iCaixa, iModa: Integer; fValor: Double; aBanco : Integer; aAgencia, aConta, aCheque : String; aData : TDate): Boolean;
Var
   dsAux : TSQLDataSet;
   QrAux, QrAux2 : TSQLQuery;
   texto, M_HOATUA : string;
   M_FLGRAV, resp : Boolean;
   M_NRSEQU, W_SQCAIX : Integer;
   M_DTMOVI : TDateTime;
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco: String;
   M_LINTOP, M_LINBOT, I   : Integer;
begin
    M_FLGRAV := False;
    M_HOATUA := Copy(TimetoStr(time),1,5);
    M_DTMOVI := Date();
    // Aqui 03/02/2010
    texto  := 'Update PARCELAS Set REC_CREDITO = REC_CREDITO + :pCREDITO, REC_TPCREDITO = :pTPCREDITO, REC_DTCREDITO = :pDTCREDITO ';
    texto  := texto +' Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC)';
    With cdsCredito do
      begin
            Close;
            Params.ParamByName('pNRVEND').AsInteger := iVenda;
            Params.ParamByName('pCDGRUP').AsInteger := iGrupo;
            Params.ParamByName('pNRCOTA').AsInteger := iCota;
            Params.ParamByName('pNRPARC').AsInteger := iParcela;
            //
            Open;
      End;
    //
  if not (cdsCredito.IsEmpty) Then
   begin
     try
        Start;
        // Credito Parcela
        {QrAux := TSqlquery.Create(nil);
        //
        with QrAux do }
        try
           {SQLConnection := dmAdmDados.sqlConn;
           //sql.Add(texto);
           Params.ParamByName('pNRVEND').AsInteger := iVenda;
           Params.ParamByName('pCDGRUP').AsInteger := iGrupo;
           Params.ParamByName('pNRCOTA').AsInteger := iCota;
           Params.ParamByName('pNRPARC').AsInteger := iParcela;
           Params.ParamByName('pCREDITO').AsFloat  := fValor;
           Params.ParamByName('pTPCREDITO').AsString := 'C';
           ExecSQL(); }
           With cdsCredito do
            begin
                  Edit;
                  FieldByName('REC_CREDITO').AsFloat     := FieldByName('REC_CREDITO').AsFloat + fValor;
                  FieldByName('REC_TPCREDITO').AsString  := 'C';
                  FieldByName('REC_DTCREDITO').AsDateTime := aData;
                  ApplyUpdates(0);
            End;
           //
           M_FLGRAV := True;
           //
        finally
            //dsAux.Free;
            //QrAux.Free;
            cdsCredito.Close;
        end;
        // Movimento Caixa
        If (M_FLGRAV) Then
          begin
               uFuncoes.RefreshCDS(CdsConfig);
               //
               CdsConfig.Edit;
               cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger :=
                   CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
               CdsConfig.ApplyUpdates(0);
               //
               M_NRSEQU := cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
               W_SQCAIX := dmAdmDados.GetSequenciaCaixa(iCaixa);
               // Incluir movimento de caixa
               // pSEQUENCIA, pVENDA, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
               //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
               // aBanco : Integer; aAgencia, aConta, aCheque
               // pSEQUENCIA, pVENDA, pParcela, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
               //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
               // aBanco : Integer; aAgencia, aConta, aCheque
               if Not (dmAdmDados.Incluir_Movimento_Caixa(
                    M_NRSEQU, W_SQCAIX, iVenda, iParcela, iModa, iCaixa, 3, 0, 'C', M_HOATUA,'CREDITO DE PARCELA', 'N', M_DTMOVI,
                    fValor, 0, aBanco , aAgencia, aConta, aCheque)) Then
                       raise Exception.Create('Erro ao incluir movimento de caixa.');
          End;
          //
        Comit(Transc);
        Result := True;
     Except
        Rollback;
     End;
     // Impressão
     For i := 1 to 3 do
      Begin
           if (i <= 3) Then
            begin
               Impressao_Credito(M_NRSEQU, iCaixa, iVenda, iGrupo, iCota, iParcela);  // W_SQCAIX
               //
               // If (i = 1) Then
               If (i >= 1) and (i+1 <= 3) Then
                 Application.MessageBox( Pchar(InttoStr(i+1)+'ª Impressão de autenticação de crédito.'),
                        'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            End;
      End;  //fim-do-para
   End;
     {texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
     //
     QrAux2 := TSqlquery.Create(nil);
     with QrAux2 do
      try
          SQLConnection := dmAdmDados.sqlConn;
          sql.Add(texto);
          Params.ParamByName('pSEQUENCIA').AsInteger := M_NRSEQU;
          Open;
          //
          If not (IsEmpty) Then
          begin
              try
                  //
                  aNomeDispositivo := GetNomeDispositivo();
                  if not (cdsConfig.Active) Then
                     uFuncoes.RefreshCDS(cdsConfig);
                  aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
                  M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
                  M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
                  aEspaco  := uFuncoes.Replicate(' ',2);
                  //
                  // Relaciona a variável impressora com a
                  // lpt1: - Poderia ser LPT, COM1,// Servidor/impressora
                  AssignFile(IMPRESSORA, aNomeDispositivo);
                  // Abre a porta da impressão
                  Rewrite(IMPRESSORA);
                  //envia caractere de controle para comprimir a impressão
                  Write(IMPRESSORA);
                  If (M_LINTOP > 0) Then
                    For I := 1 to M_LINTOP do
                      Writeln(Impressora);
                  // Imprime linha de autenticação
                  //
                  If (W_SQCAIX > 0) Then
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(W_SQCAIX),7) + aEspaco + '- G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)+'>Credito']))
                  Else
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(M_NRSEQU),7) + aEspaco + '- G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)+'>Credito']));
                  //
                  If (M_LINBOT > 0) Then
                     For I := 1 to M_LINBOT do
                        Writeln(Impressora);
                  //
              finally
                  // Fecha a porta de impressão
                  System.Close(Impressora);
              end;
          End;
          //
      finally
           QrAux2.Free;
      end;   }
end;

function TdmAdmDados.VerificarProximoParcela(iVenda, iGrupo, iCota,
  iParcela: Integer): Boolean;
var
    QrAux : TSQLQuery;
    texto : string;
begin
  Result := False;
  texto  := 'Select REC_NRVEND, REC_DTVENC, REC_DTPAGA from PARCELAS Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) ';
  texto  := texto  + ' and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC) and (REC_DTPAGA is null)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVEND').AsInteger := iVenda;
       Params.ParamByName('pCDGRUP').AsInteger := iGrupo;
       Params.ParamByName('pNRCOTA').AsInteger := iCota;
       Params.ParamByName('pNRPARC').AsInteger := iParcela;
       ExecSQL();
       //
       Result := True;
   finally
       QrAux.Free;
   end;
end;

function TdmAdmDados.Impressao_Credito(iSequencia, iCaixa, iVenda, iGrupo,
iCota, iParcela: Integer): Boolean;
Var
   QrAux, QrAux2 : TSQLQuery;
   texto, M_HOATUA : string;
   M_DTMOVI : TDateTime;
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco: String;
   M_LINTOP, M_LINBOT, I   : Integer;
   fValor : Double;
begin
     texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
     //
     QrAux2 := TSqlquery.Create(nil);
     with QrAux2 do
      try
          SQLConnection := dmAdmDados.sqlConn;
          sql.Add(texto);
          Params.ParamByName('pSEQUENCIA').AsInteger := iSequencia;
          Open;
          //
          If not (IsEmpty) Then
          begin
              try
                  //
                  fValor := FieldByName('MCA_VLMODALIDADE').AsFloat;
                  //
                  aNomeDispositivo := GetDispositivoImpUsuario(iCaixa);
                  //GetNomeDispositivo();
                  if not (cdsConfig.Active) Then
                     uFuncoes.RefreshCDS(cdsConfig);
                  aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
                  M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
                  M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
                  aEspaco  := uFuncoes.Replicate(' ',2);
                  //
                  {Relaciona a variável impressora com a
                  lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
                  AssignFile(IMPRESSORA, aNomeDispositivo);
                  {abre a porta da impressão }
                  Rewrite(IMPRESSORA);
                  {envia caractere de controle para comprimir a impressão}
                  Write(IMPRESSORA);
                  If (M_LINTOP > 0) Then
                    For I := 1 to M_LINTOP do
                      Writeln(Impressora);
                  { Imprime linha de autenticação}
                  //
                  If (iCaixa > 0) Then
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iCaixa),7) + aEspaco + '- G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)+'>Credito']))
                  Else
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iSequencia),7) + aEspaco + '- G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)+'>Credito']));
                  //
                  If (M_LINBOT > 0) Then
                     For I := 1 to M_LINBOT do
                        Writeln(Impressora);
                  //
              finally
                  { Fecha a porta de impressão}
                  System.Close(Impressora);
              end;
          End;
          //
      finally
           QrAux2.Free;
      end;
end;

function TdmAdmDados.Verificar_Venda_Cliente(iCodigo: Integer): Boolean;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := False;
    texto := 'Select C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, C.cot_posicao from COTAS C where (c.cot_cdclie = :pCDCLIE)';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := dmAdmDados.sqlConn;
         sql.Add(texto);
         Params.ParamByName('pCDCLIE').AsInteger := iCodigo;
         Open;
         //
         If not (IsEmpty) Then
             Result := True;
    finally
         QrAux.Free;
    end;
end;

procedure TdmAdmDados.GravaTamanhoFonte(iValor: integer);
begin
     if not (cdsConfig.Active) Then
        uFuncoes.RefreshCDS(cdsConfig);
     //
     With cdsConfig do
      begin
           Edit;
           cdsConfigCFG_TAMANHO_FONTE.AsInteger := iValor;
           ApplyUpdates(0);
      End;
end;

procedure TdmAdmDados.sqlConnBeforeConnect(Sender: TObject);
Var 
	ConfigIni : TIniFile;
	Path, aFile : String;
Begin
  aFile := ExtractFilePath(ParamStr(0)) + 'fbclient.dll';
  sqlConn.VendorLib := aFile;
  //
	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
	sqlConn.Params.Values['Database'] := ConfigIni.ReadString('CONFIG','DATABASE','');
	ConfigIni.Free;
end;

procedure TdmAdmDados.dspSaldoClienteGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CLIENTES_SALDO';
end;

function TdmAdmDados.SetSaldoCliente(iVenda, iGrupo, iCota, iCliente : Integer;
    aTipo: String; fValor: Double): Boolean;
begin
    Result := False;
    FilterCDS(cdsSaldoCliente, fsInteger, InttoStr(iVenda));
    //
    Start;
    try
       With cdsSaldoCliente do
       begin
         if (IsEmpty) Then
         begin
             Append;
             FieldByName('SLD_NRVENDA').AsInteger := iVenda;
             FieldByName('SLD_GRUPO').AsInteger   := iGrupo;
             FieldByName('SLD_COTA').AsInteger    := iCota;
             FieldByName('SLD_CLIENTE').AsInteger := iCliente;
         End
         Else
             Edit;
         //
         If (aTipo = 'A') Then
             FieldByName('SLD_VALOR').AsFloat     :=
                 FieldByName('SLD_VALOR').AsFloat + fValor
         Else
             FieldByName('SLD_VALOR').AsFloat     :=
                 FieldByName('SLD_VALOR').AsFloat - fValor;
         // Grava
         ApplyUpdates(0);
         //
       End;
       Comit(Transc);
       Result := True;
    Except
       Rollback; 
    End;
end;

function TdmAdmDados.GetSaldoCliente(iCliente: Integer): Boolean;
Var
    fSaldo : Double;
    qryAux : TSQLQuery;
begin
     Result := False;
     fSaldo := 0;
     //
      try
          with aCdsClienteCota do
            begin
                 Close;
                 CommandText := 'Select C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, COUNT(*) from COTAS C ';
                 CommandText := CommandText + 'Where (c.cot_cdclie = :pCLIENTE) GROUP BY C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie ';
                 Params.ParamByName('pCLIENTE').AsInteger := iCliente;
                 //FetchParams;
                 Open;
                 //
                 If not (IsEmpty) Then
                  begin
                        first;
                        //
                        While not (Eof) do
                          begin
                               qryAux :=  TSQLQuery.Create(nil);
                               With qryAux do
                               try
                                    SQLConnection := sqlConn;
                                    Close;
                                    SQL.Add('Select P.rec_nrvend, SUM(P.rec_total_pago) AS TOTAL from PARCELAS P ');
                                    SQL.Add(' Where (P.rec_nrvend = :pVENDA) Group BY P.rec_nrvend ');
                                    Params.ParamByName('pVENDA').AsInteger :=
                                       aCdsClienteCota.FieldByName('COT_NRVENDA').AsInteger;
                                    Open;
                                    //
                                    //If not (IsEmpty) Then
                                    fSaldo := FieldByName('TOTAL').AsFloat;
                                    //fSaldo := fSaldo +  FieldByName('TOTAL').AsFloat;
                                    If not (Verificar_Saldo_Cliente_Venda(aCdsClienteCota.FieldByName('COT_NRVENDA').AsInteger,
                                                    iCliente) ) Then
                                        If not (SetSaldoCliente(aCdsClienteCota.FieldByName('COT_NRVENDA').AsInteger,
                                                   aCdsClienteCota.FieldByName('cot_cdgrupo').AsInteger,
                                                   aCdsClienteCota.FieldByName('cot_nrcota').AsInteger,
                                                   iCliente, 'A', fSaldo)) Then
                               Finally
                                    qryAux.Free;
                               End;
                               // proximo
                               Next;
                          End;
                  End;
            End;
      Finally
           aCdsClienteCota.Close;
      End;
      //
      Result := True;
end;

function TdmAdmDados.Verificar_Saldo_Cliente(iCliente: Integer): Boolean;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := False;
    texto := 'Select CS.SLD_NRVENDA, CS.SLD_CLIENTE, Count(*) from CLIENTES_SALDO CS ';
    texto := texto + ' Where (CS.SLD_CLIENTE = :pCDCLIE) Group by CS.SLD_NRVENDA, CS.SLD_CLIENTE';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := sqlConn;
         sql.Add(texto);
         Params.ParamByName('pCDCLIE').AsInteger := iCliente;
         Open;
         //
         If not (IsEmpty) Then
             Result := True;
    finally
         QrAux.Free;
    end;
end;

function TdmAdmDados.Verificar_Saldo_Cliente_Venda(iVenda,
  iCliente: Integer): Boolean;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := False;
    texto := 'Select CS.SLD_NRVENDA, CS.SLD_CLIENTE from CLIENTES_SALDO CS ';
    texto := texto + ' Where (CS.SLD_NRVENDA = :pVENDA) and (CS.SLD_CLIENTE = :pCDCLIE)';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := sqlConn;
         sql.Add(texto);
         Params.ParamByName('pVENDA').AsInteger  := iVenda;
         Params.ParamByName('pCDCLIE').AsInteger := iCliente;
         Open;
         //
         If not (IsEmpty) Then
             Result := True;
    finally
         QrAux.Free;
    end;
end;

function TdmAdmDados.GetSaldo(iCliente: Integer): Double;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := 0;
    texto := 'Select CS.SLD_CLIENTE, Sum(CS.sld_valor) as TOTAL from CLIENTES_SALDO CS ';
    texto := texto + ' Where (CS.SLD_CLIENTE = :pCDCLIE) Group by CS.SLD_CLIENTE';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := sqlConn;
         sql.Add(texto);
         Params.ParamByName('pCDCLIE').AsInteger := iCliente;
         Open;
         //
         If not (IsEmpty) Then
             Result := fieldByName('TOTAL').AsFloat;
    finally
         QrAux.Free;
    end;
end;

function TdmAdmDados.Verificar_PC_Abertas(iVenda: Integer): Boolean;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := False;
    texto := ' select P.rec_nrvend, Count(*) as QUANT  from Parcelas p where (p.rec_nrvend = :pVENDA) AND (P.rec_dtvenc <= :pDTFINA) ';
    texto := texto + ' AND ((P.rec_total_pago = 0) or (P.rec_total_pago IS NULL) )Group by P.rec_nrvend ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := sqlConn;
         sql.Add(texto);
         Params.ParamByName('pVENDA').AsInteger   := iVenda;
         Params.ParamByName('pDTFINA').AsDateTime := Date();
         Open;
         //
         If (FieldByName('QUANT').AsInteger > 0) Then
              Result := True;
    finally
         QrAux.Free;
    end;
end;

function TdmAdmDados.SetClienteProtesto(aVenda: Integer;
  aSitucao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update COTAS set COT_FLPROTESTO = :pSituacao Where (COT_NRVENDA = :pNRVENDA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := aVenda;
       Params.ParamByName('pSituacao').AsString := aSitucao;
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.GetSaldoNovo(iCliente: Integer): Double;
Var
   QrAux : TSQLQuery;
   texto : string;
begin
    Result := 0;
    texto := 'select C.cot_cdclie, Sum(r.rec_total_pago) as PAGO, COUNT(*)  ';
    texto := texto + 'from COTAS C inner join parcelas r on c.cot_nrvenda = r.rec_nrvend ';
    texto := texto + 'where (c.cot_cdclie = :pCLIENTE) GROUP BY C.cot_cdclie ';
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
         SQLConnection := sqlConn;
         sql.Add(texto);
         Params.ParamByName('pCLIENTE').AsInteger := iCliente;
         Open;
         //
         If not (IsEmpty) Then
             Result := fieldbyName('PAGO').AsFloat;
    finally
         QrAux.Free;
    end;
end;

function TdmAdmDados.AjustaProximoLance: boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select max(L.LAN_SEQUENCIA) as codigo from LANCES L';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Open;
           //
           if not (IsEmpty) Then
             begin
                  uFuncoes.RefreshCDS(cdsConfig);
                  Start;
                  try
                     cdsConfig.Edit;
                     cdsConfigCFG_SEQUENCIA.AsInteger := FieldByName('codigo').AsInteger;
                     cdsConfig.ApplyUpdates(0);
                     //
                     Comit(Transc);
                     Result := True;
                  Except
                     Rollback;
                  End;

             End;
    finally
      free;
    end;

end;

function TdmAdmDados.VerificarProximoLance: boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select max(L.LAN_SEQUENCIA) as codigo from LANCES L';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Open;
           //
           if not (IsEmpty) Then
             begin
                  uFuncoes.RefreshCDS(cdsConfig);
                  If (cdsConfigCFG_SEQUENCIA.AsInteger < FieldByName('codigo').AsInteger) then
                        Result := True;
             End;
    finally
      free;
    end;
end;

function TdmAdmDados.GetProximaCota(iGrupo: Integer): Integer;
var qraux : TSQLquery;
    texto : string;
begin
   texto  := 'Select max(COT_NRCOTA) as codigo from COTAS Where (COT_CDGRUPO = :pCDGRUPO)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCDGRUPO').AsInteger := iGrupo;
           Open;
           //
           if not (IsEmpty) Then
              Result := FieldByName('codigo').AsInteger + 1;
    finally
      free;
    end;
end;

function TdmAdmDados.MigrarClienteGrupo(iGrupoNovo, iCota, iCliente: integer): boolean;
Var
   M_NRVEND, M_NRCOTA : Integer;
begin
    Result := False;
    //
    uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
    //
    dmAdmDados.cdsConfig.Edit;
    dmAdmDados.cdsConfigCFG_VENDA.AsInteger :=
        dmAdmDados.cdsConfigCFG_VENDA.AsInteger + 1;
    dmAdmDados.cdsConfig.ApplyUpdates(0);
    //
    M_NRVEND := dmAdmDados.cdsConfigCFG_VENDA.AsInteger;
    //
    With cdsIncluirVenda do
      begin
           Active := False;
           Params.ParamByName('pnrvenda').AsInteger := M_NRVEND;
           Active := True;
           //
           If (Active) Then
            begin
              //
              Start;
              //
              M_NRCOTA := iCota;
              //GetProximaCota(iGrupoNovo);
              //
              Try
                 Append;
                 //
                 FieldByName('COT_NRVENDA').AsInteger := M_NRVEND;
                 FieldByName('COT_CDGRUPO').AsInteger := iGrupoNovo;
                 FieldByName('COT_NRCOTA').AsInteger  := M_NRCOTA;
                 // iCota;
                 FieldByName('COT_CDCLIE').AsInteger  := iCliente;   // dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
                 FieldByName('COT_CONTRATO').AsString := dmAdmDados.cdsVendaContasCOT_CONTRATO.AsString;
                 FieldByName('COT_PLANO').AsInteger   := dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger;
                 FieldByName('COT_POSICAO').AsString  := dmAdmDados.cdsVendaContasCOT_POSICAO.AsString;
                 FieldByName('COT_DIAASS').AsString   := dmAdmDados.cdsVendaContasCOT_DIAASS.AsString;
                 FieldByName('COT_DTCONT').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime;
                 FieldByName('COT_CODBEM').AsString   := dmAdmDados.cdsVendaContasCOT_CODBEM.AsString;
                 FieldByName('COT_VALCRE').AsFloat    := dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat;
                 FieldByName('COT_VALACERTO').AsFloat := dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat;
                 FieldByName('COT_FLCONTEMPLADO').AsString := dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString;
                 FieldByName('COT_TIPO').AsString     := dmAdmDados.cdsVendaContasCOT_TIPO.AsString;
                 FieldByName('COT_VALCOTA').AsFloat   := dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat;
                 FieldByName('COT_DTVENCIMENTO').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime;
                 FieldByName('COT_FUNDORES').AsFloat  := dmAdmDados.cdsVendaContasCOT_FUNDORES.AsFloat;
                 FieldByName('COT_TAXA_ADESAO').AsFloat := dmAdmDados.cdsVendaContasCOT_TAXA_ADESAO.AsFloat;
                 FieldByName('COT_TAXA_ADM').AsFloat  := dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat;
                 FieldByName('COT_CDBANCO').AsInteger := dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger;
                 FieldByName('COT_NMBANCO').AsString  := dmAdmDados.cdsVendaContasCOT_NMBANCO.AsString;
                 FieldByName('COT_CIDADE_BANCO').AsString := dmAdmDados.cdsVendaContasCOT_CIDADE_BANCO.AsString;
                 FieldByName('COT_ESPECIE').AsString  := dmAdmDados.cdsVendaContasCOT_ESPECIE.AsString;
                 FieldByName('COT_MARCA').AsString    := dmAdmDados.cdsVendaContasCOT_MARCA.AsString;
                 FieldByName('COT_ASSEMBLEIAFILTRO').AsInteger := dmAdmDados.cdsVendaContasCOT_ASSEMBLEIAFILTRO.AsInteger;
                 FieldByName('COT_VALORLANCE').AsFloat := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;
                 //FieldByName('COT_DTCONTEMPLACAO')
                 //FieldByName('COT_ASSEB_CONTEMP
                 //FieldByName('COT_DTALIENACAO
                 FieldByName('COT_MARCA_VEIC').AsString  := dmAdmDados.cdsVendaContasCOT_MARCA_VEIC.AsString;
                 FieldByName('COT_MODELO_VEIC').AsString := dmAdmDados.cdsVendaContasCOT_MODELO_VEIC.AsString;
                 FieldByName('COT_ANO_FAB').AsInteger    := dmAdmDados.cdsVendaContasCOT_ANO_FAB.AsInteger;
                 FieldByName('COT_ANO_MOD').AsInteger    := dmAdmDados.cdsVendaContasCOT_ANO_MOD.AsInteger;
                 FieldByName('COT_CHASSI').AsString      := dmAdmDados.cdsVendaContasCOT_CHASSI.AsString;
                 //FieldByName('COT_DATA_LIB')
                 FieldByName('COT_ALIENADO').AsString    := dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString;
                 FieldByName('COT_DESALIENADO').AsString := dmAdmDados.cdsVendaContasCOT_DESALIENADO.AsString;
                 FieldByName('COT_AVAL1').AsInteger      := dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger;
                 FieldByName('COT_AVAL2').AsInteger      := dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger;
                 FieldByName('COT_NRSERIE').AsString     := dmAdmDados.cdsVendaContasCOT_NRSERIE.AsString;
                 FieldByName('COT_TIPOVEIC').AsString    := dmAdmDados.cdsVendaContasCOT_TIPOVEIC.AsString;
                 FieldByName('COT_COR').AsString         := dmAdmDados.cdsVendaContasCOT_COR.AsString;
                 FieldByName('COT_CDMODELO').AsInteger   := dmAdmDados.cdsVendaContasCOT_CDMODELO.AsInteger;
                 FieldByName('COT_VALOR_TAXACAD').AsFloat := dmAdmDados.cdsVendaContasCOT_VALOR_TAXACAD.AsFloat;
                 FieldByName('COT_VALORENTRADA').AsFloat := dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat;
                 //FieldByName('COT_DATAPRIMPRES')
                 FieldByName('COT_TPLANCE').AsString     := dmAdmDados.cdsVendaContasCOT_TPLANCE.AsString;
                 //FieldByName('COT_DTRECEBIMENTO')
                 FieldByName('COT_VALOR_RECEBER').AsFloat := dmAdmDados.cdsVendaContasCOT_VALOR_RECEBER.AsFloat;
                 FieldByName('COT_FLXSPC').AsString      := dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString;
                 FieldByName('COT_FLPROMOCAO').AsString  := dmAdmDados.cdsVendaContasCOT_FLPROMOCAO.AsString;
                 FieldByName('COT_FLPROTESTO').AsString  := dmAdmDados.cdsVendaContasCOT_FLPROTESTO.AsString;
                 FieldByName('COT_SALDO_ANTERIOR').AsFloat := dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat;
                 // Grava
                 ApplyUpdates(0);
                 //
                 Comit(Transc);
                 Result := True;
                 //
                 MigrarParcelasCliente(M_NRVEND, iGrupoNovo, iCota, dmPesquisas.cdsConsultaCota);
              Except
                  Rollback;
              End;
            End;
      End;
    //
end;

function TdmAdmDados.MigrarParcelasCliente(iVenda, iGrupo, iCota: integer;
  aCdsParcelas: TClientDataSet): boolean;
begin
     Result := False;
     //
     With cdsIncParcelas do
      begin
           Active := False;
           Params.ParamByName('pnrvenda').AsInteger := iVenda;
           Active := True;
           //
           If (Active) Then
            begin
               Start;
               //
               try
                 aCdsParcelas.DisableControls;
                 aCdsParcelas.First;
                 While not (aCdsParcelas.Eof) do
                  Begin
                       // Novo registro
                       Append;
                       FieldByName('REC_NRVEND').AsInteger := iVenda;
                       FieldByName('REC_CDGRUP').AsInteger := iGrupo;
                       FieldByName('REC_NRCOTA').AsInteger := iCota;
                       FieldByName('REC_NRPARC').AsInteger := aCdsParcelas.FieldByName('REC_NRPARC').AsInteger;
                       FieldByName('REC_DTVENC').AsDateTime:= aCdsParcelas.FieldByName('REC_DTVENC').AsDateTime;
                       FieldByName('REC_VLPARC').AsFloat   := aCdsParcelas.FieldByName('REC_VLPARC').AsFloat;
                       If (aCdsParcelas.FieldByName('REC_TOTAL_PAGO').AsFloat > 0) Then
                          FieldByName('REC_DTPAGA').AsDateTime:= aCdsParcelas.FieldByName('REC_DTPAGA').AsDateTime;
                       FieldByName('REC_VLMULT').AsFloat   := aCdsParcelas.FieldByName('REC_VLMULT').AsFloat;
                       FieldByName('REC_TOTAL_PAGO').AsFloat := aCdsParcelas.FieldByName('REC_TOTAL_PAGO').AsFloat;
                       //FieldByName('REC_CODOP').AsString   := aCdsParcelas.FieldByName('REC_CODOP').AsString;
                       //FieldByName('REC_CDOPER').AsInteger := aCdsParcelas.FieldByName('REC_CDOPER').AsInteger;
                       //FieldByName('REC_SITUACAO').AsString    := aCdsParcelas.FieldByName('REC_SITUACAO').AsString;
                       {If not (aCdsParcelas.FieldByName('REC_DTMOVI').IsNull) Then
                           FieldByName('REC_DTMOVI').AsDateTime    := aCdsParcelas.FieldByName('REC_DTMOVI').AsDateTime;
                       If not (aCdsParcelas.FieldByName('REC_DTCREDITO').isNull) Then}
                           FieldByName('REC_DTCREDITO').AsDateTime     := aCdsParcelas.FieldByName('REC_DTCREDITO').AsDateTime;
                       FieldByName('REC_CREDITO').AsFloat      := aCdsParcelas.FieldByName('REC_CREDITO').AsFloat;
                       //FieldByName('REC_REGISTRO').AsString    := aCdsParcelas.FieldByName('REC_REGISTRO').AsString;
                       FieldByName('REC_FORMABAIXA').AsString  := aCdsParcelas.FieldByName('REC_FORMABAIXA').AsString;
                       FieldByName('REC_CDBANC').AsInteger     := aCdsParcelas.FieldByName('REC_CDBANC').AsInteger;
                       {FieldByName('REC_PRINTSLIP').AsString   := aCdsParcelas.FieldByName('REC_PRINTSLIP').AsString;
                       FieldByName('REC_HISTORICO').Value      := aCdsParcelas.FieldByName('REC_HISTORICO').Value;}
                       FieldByName('REC_TPCREDITO').AsString   := aCdsParcelas.FieldByName('REC_TPCREDITO').AsString;
                       FieldByName('REC_TPSLIP').AsString      := aCdsParcelas.FieldByName('REC_TPSLIP').AsString;
                       FieldByName('REC_NOSSONUMERO').AsString := aCdsParcelas.FieldByName('REC_NOSSONUMERO').AsString;
                       FieldByName('REC_VALORTARIFABANCO').AsFloat  := aCdsParcelas.FieldByName('REC_VALORTARIFABANCO').AsFloat;
                       FieldByName('REC_VALORTITULOTITULO').AsFloat := aCdsParcelas.FieldByName('REC_VALORTITULOTITULO').AsFloat;
                       {If not (aCdsParcelas.FieldByName('REC_DTESTORNO').isnull) Then
                           FieldByName('REC_DTESTORNO').AsDateTime  := aCdsParcelas.FieldByName('REC_CDGRUP').AsDateTime;}
                       FieldByName('REC_HOPAGA').AsString      := aCdsParcelas.FieldByName('REC_HOPAGA').AsString;
                       FieldByName('REC_MOV_CAIXA').AsInteger  := aCdsParcelas.FieldByName('REC_MOV_CAIXA').AsInteger;
                       //
                       aCdsParcelas.Next;
                  End;    // Fim-do-enquanto
                  // Grava dados
                  //Post;
                  ApplyUpdates(0);
                  //
                  Comit(Transc);
                  Result := True;
               Except
                  Rollback;
               End;
                  //
                 aCdsParcelas.EnableControls;
            End;
      End;
end;

function TdmAdmDados.VerificarClienteGrupoNovo(iGrupo,
  iCliente: Integer): boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select COT_NRVENDA, COT_CDGRUPO, COT_CDCLIE, COT_POSICAO from COTAS ';
   texto  := texto + ' Where (COT_CDGRUPO = :pCDGRUPO) and (COT_CDCLIE = :pCDCLIE) and (COT_POSICAO = '+QuotedStr('A')+') ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           SQLConnection := dmAdmDados.sqlConn;
           SQL.Add(texto);
           Params.ParamByName('pCDGRUPO').AsInteger := iGrupo;
           Params.ParamByName('pCDCLIE').AsInteger  := iCliente;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
    finally
      free;
    end;
end;


function TdmAdmDados.AlterarStatusparaMigrado(iVenda: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Update COTAS Set COT_POSICAO = :pPOSICAO Where (COT_NRVENDA = :pNRVEND)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           Start;
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pPOSICAO').AsString  := 'M';
             ExecSQL();
             //
             Comit(Transc);
             //
             Result := True;
           Except
               Rollback;
           End;
    finally
      free;
    end;
end;

function TdmAdmDados.Verificar_PC_Paga(iVenda, iGrupo, iCota,
  iParcela: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_DTPAGA, REC_TOTAL_PAGO from PARCELAS ';
   texto  := texto   + ' Where (REC_NRVEND = :pNRVEND) AND (REC_CDGRUP = :pCDGRUP) AND (REC_NRCOTA = :pNRCOTA) AND (REC_NRPARC = :pNRPARC)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pCDGRUP').AsInteger  := iGrupo;
             Params.ParamByName('pNRCOTA').AsInteger  := iCota;
             Params.ParamByName('pNRPARC').AsInteger  := iParcela;
             Open;
             //
             If not (IsEmpty) Then
               If not uFuncoes.Empty(FieldByName('REC_DTPAGA').AsString)
                  and (FieldByName('REC_TOTAL_PAGO').AsFloat > 0 ) Then
                      Result := True;
           Except

           End;
    finally
      free;
    end;
end;

function TdmAdmDados.GetParcelaExiste(iVenda, iGrupo, iCota,
  iParcela: integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
   Result := False;
   texto  := 'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC from PARCELAS ';
   texto  := texto   + ' Where (REC_NRVEND = :pNRVEND) AND (REC_CDGRUP = :pCDGRUP) AND (REC_NRCOTA = :pNRCOTA) AND (REC_NRPARC = :pNRPARC)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pCDGRUP').AsInteger  := iGrupo;
             Params.ParamByName('pNRCOTA').AsInteger  := iCota;
             Params.ParamByName('pNRPARC').AsInteger  := iParcela;
             Open;
             //
             If not (IsEmpty) Then
                Result := True;
           Except

           End;
    finally
      free;
    end;
end;

function TdmAdmDados.AlterarStatusVenda(iVenda, iUsuario: Integer; aStatusAtual : String): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Update COTAS C set COT_POSICAO = :pPOSICAO Where (C.COT_NRVENDA = :pNRVEND)';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           Start;
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pPOSICAO').AsString  := 'A';
             ExecSQL();
             //
             Comit(Transc);
             //
             aDescricao := 'Venda : '+ uFuncoes.StrZero(InttoStr(iVenda),7)+' > Alterou status de '+aStatusAtual+' para A';
             SetTarefa_Usuario(aDescricao);
             AdicionarAcaoUsuario(iUsuario, aDataMovimento, aAcaoUsuario);
             //
             Result := True;
           Except
             Rollback;
           End;
    finally
      free;
    end;
end;

function TdmAdmDados.AlterarDataPagamentoParcela(iVenda, iGrupo, iCota,
  iParcela, iUsuario : Integer ; aData, aDataAnterior: TDateTime): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Update PARCELAS Set REC_DTPAGA = :pDTPAGA ';
   texto  := texto + ' Where (REC_NRVEND = :pNRVEND) AND (REC_CDGRUP = :pCDGRUP) AND (REC_NRCOTA = :pNRCOTA) AND (REC_NRPARC = :pNRPARC) ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           Start;
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pCDGRUP').AsInteger  := iGrupo;
             Params.ParamByName('pNRCOTA').AsInteger  := iCota;
             Params.ParamByName('pNRPARC').AsInteger  := iParcela;
             Params.ParamByName('pDTPAGA').AsDateTime := aData;
             ExecSQL();
             //
             Comit(Transc);
             //
             Result := True;
             //
             aDescricao := 'Alterou dt. Pgto de '+DatetoStr(aDataAnterior) +' para '+DatetoStr(aData) + ' - Venda ' + InttoStr(iVenda) +' | P '+InttoStr(iParcela);
             SetTarefa_Usuario(aDescricao);
             AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
             //
           Except
               Rollback;
           End;
    finally
      free;
    end;
end;

function TdmAdmDados.Estorno_Credito_Parcela_Manual(M_CDGRUP, M_NRCOTA,
  M_NRVEND, M_NRPARC: integer; M_VLCRED: Double): boolean;
Var
   aDescricao  : String;
begin
    Result := False;
    M_VALOR_CRED := 0;
    //
    With cdsEstornoCredito do
      begin
           Close;
           Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
           Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
           Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
           Params.ParamByName('pNRPARC').AsInteger := M_NRPARC;
           open;
           //
           If not (IsEmpty) Then
            begin
                If not uFuncoes.Empty(FieldByName('REC_DTCREDITO').AsString)
                  and ((FieldByName('REC_CREDITO').AsFloat > 0) or (not FieldByName('REC_CREDITO').IsNull)) Then
                  begin
                       // Atualiza parcela
                       Edit;
                       M_VALOR_CRED := FieldByName('REC_CREDITO').AsFloat;
                       If (M_VALOR_CRED > 0) Then
                       begin
                            FieldByName('REC_DTCREDITO').Clear;
                            FieldByName('REC_TPCREDITO').Clear;
                            FieldByName('REC_CREDITO').AsFloat := 0;
                            //
                            ApplyUpdates(0);
                            // Inclui na lista de tarefa
                            aDescricao := 'Estornou Crédito PC :'+FormatFloat('###,##0.#0', M_VALOR_CRED) + ' | Em Caixa G '+ InttoStr(M_CDGRUP) + ' | C '+ InttoStr(M_NRCOTA) + ' | P '+InttoStr(M_NRPARC);
                            dmAdmDados.SetTarefa_Usuario(aDescricao);
                            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                            //
                            Result := True;
                       End
                       Else
                       begin
                           Cancel;
                           Result := False;
                       End;
                  End;
            End;
            //
            Close;
      End;
end;

function TdmAdmDados.Impressao_Estorno_Credito(iSequencia, iCaixa, iVenda,
  iGrupo, iCota, iParcela: Integer): Boolean;
Var
   QrAux, QrAux2 : TSQLQuery;
   texto, M_HOATUA : string;
   M_DTMOVI : TDateTime;
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco: String;
   M_LINTOP, M_LINBOT, I   : Integer;
   fValor : Double;
begin
     texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
     //
     QrAux2 := TSqlquery.Create(nil);
     with QrAux2 do
      try
          SQLConnection := dmAdmDados.sqlConn;
          sql.Add(texto);
          Params.ParamByName('pSEQUENCIA').AsInteger := iSequencia;
          Open;
          //
          If not (IsEmpty) Then
          begin
              try
                  //
                  fValor := FieldByName('MCA_VLMODALIDADE').AsFloat;
                  //
                  If not (uFrmAdmMain.admin) Then
                      aNomeDispositivo := GetNomeDispositivo()
                  Else
                      aNomeDispositivo := 'nn.txt';
                  if not (cdsConfig.Active) Then
                     uFuncoes.RefreshCDS(cdsConfig);
                  aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
                  M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
                  M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
                  aEspaco  := uFuncoes.Replicate(' ',2);
                  //
                  {Relaciona a variável impressora com a
                  lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
                  AssignFile(IMPRESSORA, aNomeDispositivo);
                  {abre a porta da impressão }
                  Rewrite(IMPRESSORA);
                  {envia caractere de controle para comprimir a impressão}
                  Write(IMPRESSORA);
                  If (M_LINTOP > 0) Then
                    For I := 1 to M_LINTOP do
                      Writeln(Impressora);
                  { Imprime linha de autenticação}
                  //
                  If (iCaixa > 0) Then
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iCaixa),7) + 'Est.Cred.-G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)]))
                  Else
                      Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iCaixa),7) + 'Est.Cred.-G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(iCota),3)+'P:'+uFuncoes.StrZero(InttoStr(iParcela),3)+aEspaco +uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', fValor),9)]));
                  //
                  If (M_LINBOT > 0) Then
                     For I := 1 to M_LINBOT do
                        Writeln(Impressora);
                  //
              finally
                  { Fecha a porta de impressão}
                  System.Close(Impressora);
              end;
          End;
          //
      finally
           QrAux2.Free;
      end;
end;

function TdmAdmDados.GetTotalEstornoCredito(iCaixa, iRGInicial,
  iRGFinal: Integer): Double;
Var
   M_VLESTO : Double;
begin
     M_VLESTO := 0;
     //
     With dmRelatorios.cdsTotalEstorno do
      begin
           Close;
           Params.ParamByName('pRGI').AsInteger   := iRGInicial;
           Params.ParamByName('pRGF').AsInteger   := iRGFinal;
           Params.ParamByName('pCAIXA').AsInteger := iCaixa;
           Params.ParamByName('pTIPOMOV').AsString   := 'T';
           Params.ParamByName('pOBSEVACAO').AsString := 'ESTORNO DE CRÉDITO DE PARCELA';
           Open;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 While not (Eof) do
                  begin
                       M_VLESTO := M_VLESTO + FieldByName('MCA_VLMODALIDADE').AsFloat;
                       //
                       Next;
                  End;
            End;
            //
            Close;
            //
            Result := M_VLESTO;
      End;
end;

procedure TdmAdmDados.dspDiasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'DIAS_VENCIMENTOS';
end;

function TdmAdmDados.GetExistePCPaga(iGrupo, iCota: Integer): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Select C.COT_NRVENDA, C.COT_CDCLIE, C.COT_POSICAO from COTAS C Inner Join PARCELAS R ON R.REC_NRVEND = C.COT_NRVENDA ';
   texto  := texto + ' Where (C.cot_cdgrupo = :pCDGRUP) and (C.COT_NRCOTA = :pNRCOTA) and (C.COT_POSICAO = '+ QuotedStr('A')+') and (R.REC_TOTAL_PAGO > 0) AND NOT (R.REC_DTPAGA IS NULL) ';
   texto  := texto + ' Group by C.COT_NRVENDA, C.COT_CDCLIE, C.COT_POSICAO ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
       SQLConnection := dmAdmDados.sqlConn;
       SQL.Add(texto);
       Params.ParamByName('pCDGRUP').AsInteger  := iGrupo;
       Params.ParamByName('pNRCOTA').AsInteger  := iCota;
       Open;
       //
       If not (IsEmpty) Then
          Result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.GetExisteDiaPagamento(iVenda: Integer): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Select C.COT_NRVENDA, C.COT_VCTDIA from COTAS C Where (C.COT_NRVENDA = :pNRVENDA) ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
       SQLConnection := dmAdmDados.sqlConn;
       SQL.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger  := iVenda;
       Open;
       //
       If not (IsEmpty) Then
         If not uFuncoes.Empty(FieldByname('COT_VCTDIA').AsString) Then
             Result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.AlterarStatusVendaCliente(iVenda, iUsuario: Integer;
  aStatusAtual, aStatusNovo: String): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Update COTAS C set C.COT_POSICAO = :pPOSICAO Where (C.COT_NRVENDA = :pNRVEND) and (C.COT_POSICAO = '+QuotedStr(aStatusAtual)+')';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
           Start;
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pPOSICAO').AsString  := aStatusNovo;
             ExecSQL();
             //
             Comit(Transc);
             //
             aDescricao := 'Venda : '+ uFuncoes.StrZero(InttoStr(iVenda),7)+' > Alterou status de '+aStatusAtual+' para '+aStatusNovo;
             SetTarefa_Usuario(aDescricao);
             AdicionarAcaoUsuario(iUsuario, aDataMovimento, aAcaoUsuario);
             //
             Result := True;
           Except
             Rollback;
           End;
    finally
      free;
    end;
end;

function TdmAdmDados.SetNovoDiaVencimento(iVenda, iDia, iUsuario: Integer): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
    aDateVenc : TDatetime;
    Ano, Mes, Dia : word;
begin
     result := true;
     //
     texto  := 'Update COTAS C set C.COT_VCTDIA = :pDIA Where (C.COT_NRVENDA = :pNRVEND) and (C.COT_POSICAO = :pPOSICAO)';
     QrAux := TSqlquery.Create(nil);
     with QrAux do
     try
           Start;
           try
             SQLConnection := dmAdmDados.sqlConn;
             SQL.Add(texto);
             Params.ParamByName('pNRVEND').AsInteger  := iVenda;
             Params.ParamByName('pPOSICAO').AsString  := 'A';
             Params.ParamByName('pDIA').AsInteger     := iDia;
             ExecSQL();
             //
             Comit(Transc);
             //
             With dmPesquisas.cdsListaParcelasVenda do
              begin
                   Close;
                   Params[0].AsInteger := iVenda;
                   Open;
                   //
                   If not (IsEmpty) Then
                    begin
                       Start;
                       try
                         First;
                         While not (Eof) do
                          begin
                               If Not uFuncoes.Empty(FieldByName('REC_DTVENC').AsString) Then
                                begin
                                    Edit;
                                    aDateVenc := FieldByName('REC_DTVENC').AsDateTime;
                                    //
                                    DecodeDate(aDateVenc, Ano, Mes, Dia);
                                    //
                                    FieldByName('REC_DTVENC').AsDateTime := EncodeDate(Ano, Mes, iDia);
                                End;
                               //
                               Next;
                          End;
                          //
                          ApplyUpdates(0);
                          //
                          Comit(Transc);
                       Except
                           Rollback;
                       End;
                    End;
              End;
             //
             aDescricao := 'Venda : '+ uFuncoes.StrZero(InttoStr(iVenda),7)+' > Alterou dia de vencimento para dia : '+uFuncoes.StrZero(InttoStr(iDia),2);
             SetTarefa_Usuario(aDescricao);
             AdicionarAcaoUsuario(iUsuario, aDataMovimento, aAcaoUsuario);
             //
             Result := True;
           Except
             Rollback;
           End;
     finally
          free;
     end;
end;

function TdmAdmDados.GetDiaVencimento(iDia: Integer): Boolean;
var qraux : TSQLquery;
    texto, aDescricao : string;
begin
   Result := False;
   texto  := 'Select DIA_CODIGO from DIAS_VENCIMENTOS Where (DIA_CODIGO = :pDia) ';
   QrAux := TSqlquery.Create(nil);
   with QrAux do
    try
       SQLConnection := dmAdmDados.sqlConn;
       SQL.Add(texto);
       Params.ParamByName('pDia').AsInteger  := iDia;
       Open;
       //
       If not (IsEmpty) Then
            Result := True;
    finally
      free;
    end;
end;

function TdmAdmDados.CriarParcelas(iParcela : Integer; aDtVencimento : TDatetime;
fValor : Double): Boolean;
Var
  M_QTPARC : integer;
  aDataVenc : TDatetime;
begin
     cdsParcelaBoleto.Close;
     cdsParcelaBoleto.Open;
     cdsParcelaBoleto.EmptyDataSet;
     //
     With cdsParcelaBoleto do
     begin
          DisableControls;
          aDataVenc := aDtVencimento;
          For M_QTPARC := 1 to iParcela do
          Begin
               // Incluir
               Append;
               FieldByName('PAR_NRPARCELA').AsInteger   := M_QTPARC;
               If (M_QTPARC = 1) Then
                   FieldByName('PAR_VENCIMENTO').AsDateTime := aDtVencimento
               Else
                   FieldByName('PAR_VENCIMENTO').AsDateTime := aDataVenc;
               //
               FieldByName('PAR_VALOR').AsFloat         := fValor;
               Post;
               //
               aDataVenc := IncMonth(aDataVenc, 1);
          End;
          //
          First;
          EnableControls;
     End;
end;

procedure TdmAdmDados.Incluir_Parcela_Boleto_avulso(W_CDGRUP, W_NRCOTA,
  W_NRVEND, W_NRPARC, W_CDBANC: Integer; W_DTVENC: TDate;
  W_VLPARC: double; aInstrucoes : String);
begin
      With cdsParcelas do
        begin
             Close;
             Params.ParamByName('pCDGRUP').AsInteger := W_CDGRUP;
             Params.ParamByName('pNRCOTA').AsInteger := W_NRCOTA;
             Params.ParamByName('pNRVEND').AsInteger := W_NRVEND;
             Open;
             //
             If not (IsEmpty) then
             begin
                  Start;
                  try
                    With cdsParcelas do
                      begin
                           Append;
                           //
                           FieldByName('REC_CDGRUP').AsInteger := W_CDGRUP;
                           FieldByName('REC_NRCOTA').AsInteger := W_NRCOTA;
                           FieldByName('REC_NRVEND').AsInteger := W_NRVEND;
                           FieldByName('REC_NRPARC').AsInteger := W_NRPARC;
                           FieldByName('REC_DTVENC').AsDateTime := W_DTVENC;
                           FieldByName('REC_VLPARC').asFloat   := W_VLPARC;
                           FieldByName('REC_CDBANC').AsInteger := W_CDBANC;
                           FieldByName('REC_NATUREZA').AsInteger := 2;
                           FieldByName('REC_HISTORICO').AsString := aInstrucoes;
                           //
                           ApplyUpdates(0);
                      End;
                      //
                      Comit(Transc);
                  Except
                       Rollback;
                  End;
           End;
       End;
end;

function TdmAdmDados.SetPosicaoInativoPago(aVenda: Integer;
  aSitucao: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update COTAS set COT_POSICAO = :pPOSICAO, COT_DTINATIVO_PAGO = :pDATA Where (COT_NRVENDA = :pNRVENDA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := aVenda;
       Params.ParamByName('pPOSICAO').AsString  := aSitucao;
       Params.ParamByName('pDATA').AsDatetime   := Date();
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.SetDtInativacaoPago(iVenda: Integer;
  aData: TDate): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Update COTAS set COT_DTINATIVO_PAGO = :pDATA Where (COT_NRVENDA = :pNRVENDA) and (COT_POSICAO = :pPOSICAO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pNRVENDA').AsInteger := iVenda;
       Params.ParamByName('pPOSICAO').AsString  := 'P';
       Params.ParamByName('pDATA').AsDatetime   :=  aData;
       //
       ExecSQL();
       //
       result := true;
   finally
      free;
   end;
end;

function TdmAdmDados.GetVariacaoBanco(iBanco: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  result := '';
  texto  := 'Select BAN_CODIGO, BAN_VARIACAO from BANCOS Where (BAN_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iBanco;
       open;
       //
       If not (IsEmpty) Then
         if not ufuncoes.Empty(FieldByName('BAN_VARIACAO').AsString) Then
            result := FieldByName('BAN_VARIACAO').AsString;
   finally
      free;
   end;
end;

function TdmAdmDados.GetVerificarBancoAtivo(iBanco: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto  := 'Select BAN_CODIGO, BAN_FLATIVO from BANCOS Where (BAN_CODIGO = :pCODIGO)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iBanco;
       open;
       //
       If not (IsEmpty) Then
         if (FieldByName('BAN_FLATIVO').AsString = 'S') Then
            result := True;
   finally
      free;
   end;
end;

function TdmAdmDados.SetBancodoCliente(iVenda, iGrupo, iCota, iBancoAtual,
  iBancoNovo: Integer): Boolean;
Var
  bFlAtualizar : Boolean;
begin
      With dmRelatorios.cdsAtualizaBancoCota do
        begin
             DisableControls;
             Active := False;
             Params.ParamByName('pNRVEND').AsInteger := iVenda;
             Params.ParamByName('pCDGRUP').AsInteger := iGrupo;
             Params.ParamByName('pNRCOTA').AsInteger := iCota;
             Params.ParamByName('pPAGO').AsFloat     := 0;
             Active := True;
             //
              if not (IsEmpty) Then
              begin
                Start;
                Try
                   First;
                   bFlAtualizar := False;
                   While not (Eof) do
                    begin
                         If (FieldByName('REC_CDBANC').AsInteger = iBancoAtual)
                           and uFuncoes.Empty(FieldByName('REC_NOSSONUMERO').AsString) Then
                          begin
                               Edit;
                               FieldByName('REC_CDBANC').AsInteger := iBancoNovo;
                               //
                               bFlAtualizar := True;
                          End;
                         //
                         Next;
                    End;
                    //
                    ApplyUpdates(0);
                    //
                    if (bFlAtualizar) Then
                     begin
                          FilterCDS(cdsVendaContas, fsInteger, InttoStr(iVenda));
                          //
                          if not (cdsVendaContas.IsEmpty)
                           and (cdsVendaContasCOT_CDBANCO.AsInteger = iBancoAtual) Then
                          begin
                               cdsVendaContas.edit;
                               cdsVendaContasCOT_CDBANCO.AsInteger := iBancoNovo;
                               cdsVendaContas.ApplyUpdates(0);
                               cdsVendaContas.close;
                          End;
                     End;
                     //
                     Comit(Transc);
                 Except
                      Rollback;
                 End;
              End;
              //
             EnableControls;
             Active := False;
        End;
end;

function TdmAdmDados.GetTotalContasRecebidaPeriodo(aDtInicio,
  aDtFinal: TDate; aTipoBaixa: String): Double;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select Sum(R.REC_TOTAL_PAGO) AS TOTAL, Count(*) AS QUANT from PARCELAS R ';
  texto  := texto + 'Where (r.rec_dtpaga >= :pDTINICIO) and (r.rec_dtpaga <= :pDTFINAL) and (r.rec_formabaixa = :pBAIXA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pDTINICIO').AsDate := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate  := aDtFinal;
       Params.ParamByName('pBAIXA').AsString  := aTipoBaixa;
       open;
       //
       If not (IsEmpty) Then
         Result := FieldByName('TOTAL').AsFloat;
   finally
      free;
   end;
end;

function TdmAdmDados.GetQuantidadeContasRecebidaPeriodo(aDtInicio,
  aDtFinal: TDate; aTipoBaixa: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select Count(*) AS QUANT from PARCELAS R ';
  texto  := texto + 'Where (r.rec_dtpaga >= :pDTINICIO) and (r.rec_dtpaga <= :pDTFINAL) and (r.rec_formabaixa = :pBAIXA)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pDTINICIO').AsDate := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate  := aDtFinal;
       Params.ParamByName('pBAIXA').AsString  := aTipoBaixa;
       open;
       //
       If not (IsEmpty) Then
         Result := FieldByName('QUANT').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.GetQuantEntradasSaidasCaixaPeriodo(aDtInicio,
  aDtFinal: TDate; aTipoMov: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select Count(*) as QUANT from MOVIMENTO_CAIXA MC Where (MC.MCA_DTMOVIMENTO >= :pDTINICIO) ';
  texto  := texto + 'AND (MC.MCA_DTMOVIMENTO <= :pDTFINAL) AND (MC.MCA_TIPOMOV = :pTPMOVI) ';
  texto  := texto + 'AND (MC.MCA_VLMODALIDADE > 0) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pDTINICIO').AsDate := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate  := aDtFinal;
       Params.ParamByName('pTPMOVI').AsString := aTipoMov;
       open;
       //
       If not (IsEmpty) Then
         Result := FieldByName('QUANT').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.GetTotalEntradasSaidasCaixaPeriodo(aDtInicio,
  aDtFinal: TDate; aTipoMov: String): Double;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select Sum(MC.MCA_VLMODALIDADE) as TOTAL from MOVIMENTO_CAIXA MC Where (MC.MCA_DTMOVIMENTO >= :pDTINICIO) ';
  texto  := texto + 'AND (MC.MCA_DTMOVIMENTO <= :pDTFINAL) AND (MC.MCA_TIPOMOV = :pTPMOVI) ';
  texto  := texto + 'AND (MC.MCA_VLMODALIDADE > 0) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pDTINICIO').AsDate := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate  := aDtFinal;
       Params.ParamByName('pTPMOVI').AsString := aTipoMov;
       open;
       //
       If not (IsEmpty) Then
         Result := FieldByName('TOTAL').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.GetQuantCotasVendidaPeriodo(aDtInicio,
  aDtFinal: TDate; aPosicao: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  result := 0;
  texto  := 'Select Count(*) as Quant from COTAS C Where (C.COT_DTCONT >= :pDTINICIO) AND (C.COT_DTCONT <= :pDTFINAL) ';
  texto  := texto + 'and (C.COT_POSICAO = :pPOSICAO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pDTINICIO').AsDate  := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate   := aDtFinal;
       Params.ParamByName('pPOSICAO').AsString := aPosicao;
       open;
       //
       If not (IsEmpty) Then
         Result := FieldByName('QUANT').AsInteger;
   finally
      free;
   end;
end;

function TdmAdmDados.GetVerResumo(iUsuario: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  result := False;
  texto  := 'Select SEN_CODIGO, SEN_FLRESU from USUARIOS Where (SEN_CODIGO = :pCODIGO) and (SEN_FLRESU = '+QuotedStr('S')+') ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iUsuario;
       open;
       //
       If not (IsEmpty) Then
           result := True
   finally
      free;
   end;
end;


function TdmAdmDados.GetDispositivoImpUsuario(iUsuario: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  result := 'NN.TXT';
  texto  := 'Select SEN_CODIGO, SEN_IMPRESSAO from USUARIOS Where (SEN_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iUsuario;
       open;
       //
       If not (IsEmpty) Then
       begin
          If not uFuncoes.Empty(FieldByName('SEN_IMPRESSAO').AsString) Then
             result := FieldByName('SEN_IMPRESSAO').AsString 
          Else
             result := 'NN.TXT';
      End;
   finally
      free;
   end;
end;

function TdmAdmDados.ProcurarValor(aValor, aCampo,
  aTabela: String): Boolean;
Var
    qryBanco : TSQLQuery;
    texto : String;
begin
     result := False;
     texto  := 'select '+aCampo+' from '+aTabela+' where ('+aCampo+' = :pValor)';
     //
     qryBanco := TSQLQuery.Create(nil);
     with qryBanco do
      try
           SQLConnection := sqlConn;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aValor;
           Open;
           //
           If not (IsEmpty) Then
                Result := True;
      Finally
         Free;
      End;
end;

function TdmAdmDados.LOCALIZAR_BANCO(aCodigo: String): Boolean;
begin
     result := false;
     //
     if (ProcurarValor(aCodigo, 'BAN_NRBANC','BANCOS')) Then
          Result := True;
end;

procedure TdmAdmDados.CarregarNaturezas(aCombo: TComboBox; aTipo: String);
var qraux : TSQLquery;
    texto : string;
begin
    texto := 'Select NAT_CODIGO, NAT_NOME, NAT_TIPO from NATUREZA Where (NAT_TIPO = :pTIPO) order by NAT_NOME';
    //
    QrAux := TSqlquery.Create(nil);
    with QrAux do
     try
           SQLConnection := sqlConn;
           sql.Add(texto);
           Params.ParamByName('pTIPO').AsString := aTipo;
           Open;
           //
           aCombo.Clear;
           If not (IsEmpty) Then
            Begin
                 First;
                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('NAT_NOME').AsString);
                       //
                       next;
                  End;
            End;
     finally
         free;
     end;
end;

function TdmAdmDados.AddContaPagarFornecedor(iLoja, iFornecedor, iNatureza,
  iQuantParcelas, iUsuario: Integer; aDtEmissao: TDatetime; aNumNota,
  aSerie, aObservacao: String; aCDSParcelas: TClientDataSet): Boolean;
Var
   iSeq, iCredito, iNumParcela : Integer;
begin
     result := False;
     try
          uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
          dmAdmDados.cdsConfig.Edit;
          {dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger :=
             dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger + 1;}
          //dmAdmDados.cdsConfig.Post;
          //
          iCredito := dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger + 1;
          iNumParcela := 1;
          //
          With cdsContaPagar do
           begin
                Close;
                Params.ParamByName('pLOJA').AsInteger      := iLoja;
                Params.ParamByName('pNRENTRADA').AsInteger := iCredito;
                open;
           End;
          //
          With aCDSParcelas do
          begin
              DisableControls;
              First;
              While not (Eof) do
              begin
                   dmAdmDados.cdsConfig.Edit;
                   dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger :=
                      dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger + 1;
                   dmAdmDados.cdsConfig.Post;
                   iSeq := dmAdmDados.cdsConfigCFG_SEQ_CONTAPAGAR.AsInteger;
                   //
                   if (cdsContaPagar.Active) then
                   begin
                        With cdsContaPagar do
                        begin
                             Append;
                             FieldByname('PAG_SEQUENCIA').AsInteger := iSeq;
                             FieldByname('PAG_LOJA').AsInteger      := iLoja;
                             FieldByname('PAG_PARCELA').AsInteger   := iNumParcela;
                             FieldByname('PAG_NRENTRADA').AsInteger := iCredito;
                             FieldByname('PAG_NRNOTA').AsString     := aNumNota;
                             FieldByname('PAG_SERIENOTA').AsString  := aSerie;
                             FieldByname('PAG_QTPARCELAS').AsInteger      := iQuantParcelas;
                             FieldByname('PAG_FORNECEDOR').AsInteger      := iFornecedor;
                             FieldByname('PAG_DESCRICAO').AsString        := aObservacao;
                             FieldByname('PAG_DATACOMPRA').AsDateTime    := aDtEmissao;
                             FieldByname('PAG_DATAVENCIMENTO').AsDateTime := aCDSParcelas.FieldByName('CDS_DTVENC').AsDateTime;
                             FieldByname('PAG_VALORPARCELA').AsFloat      := aCDSParcelas.FieldByName('CDS_VALOR').AsFloat;
                             FieldByname('PAG_SITUACAO').AsString         := 'A';
                             if not uFuncoes.Empty(aCDSParcelas.FieldByName('CDS_BANCO').AsString) Then
                                 FieldByname('PAG_BANCO').AsString            := ufuncoes.StrZero(uFuncoes.Alltrim(aCDSParcelas.FieldByName('CDS_BANCO').AsString),3);
                             if not uFuncoes.Empty(aCDSParcelas.FieldByName('CDS_AGENCIA').AsString) Then
                                 FieldByname('PAG_AGENCIA').AsString          := aCDSParcelas.FieldByName('CDS_AGENCIA').AsString;
                             if not uFuncoes.Empty(aCDSParcelas.FieldByName('CDS_NRCONTA').AsString) Then
                                 FieldByname('PAG_NRCONTA').AsString          := ufuncoes.StrZero(uFuncoes.Alltrim(aCDSParcelas.FieldByName('CDS_NRCONTA').AsString),10);
                             if not uFuncoes.Empty(aCDSParcelas.FieldByName('CDS_NRCHEQUE').AsString) Then
                                 FieldByname('PAG_NRCHEQUE').AsString         := ufuncoes.StrZero(uFuncoes.Alltrim(aCDSParcelas.FieldByName('CDS_NRCHEQUE').AsString),10);                             FieldByname('PAG_USUARIO').AsInteger         := iUsuario;
                             FieldByname('PAG_NATUREZADESPESA').AsInteger := iNatureza;
                             //
                             Post;
                        End;
                   End;
                   //
                   iNumParcela := iNumParcela + 1;
                   Next;
              End;
              //
              cdsContaPagar.ApplyUpdates(0);
              dmAdmDados.cdsConfig.ApplyUpdates(0);
              //
              EnableControls;
          End;
          //
          Result := true;
     Except

     End;
end;

function TdmAdmDados.GetNomeFornecedor(iCodigo: Integer): String;
var qraux : TSQLquery;
    texto : string;
begin
  texto  := 'Select FOR_CODIGO, FOR_RAZAO, FOR_FANTASIA from FORNECEDORES Where (FOR_CODIGO = :pCODIGO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger  := iCodigo;
       Open;
       if not (IsEmpty) Then
          result := FieldByName('FOR_RAZAO').AsString;
   finally
      free;
   end;
end;

function TdmAdmDados.GetCPNumeroSerieNota(iFornecedor: Integer; aNumNota,
  aSerie: String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select PAG_FORNECEDOR, PAG_NRNOTA, PAG_SERIENOTA from CONTASPAGAR ';
  texto  := texto + ' Where (PAG_FORNECEDOR = :pFORNECEDOR) and (PAG_NRNOTA = :pNRNOTA) and (PAG_SERIENOTA = :pSERIENOTA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pFORNECEDOR').AsInteger  := iFornecedor;
       Params.ParamByName('pNRNOTA').AsString       := aNumNota;
       Params.ParamByName('pSERIENOTA').AsString    := aSerie;
       Open;
       if not (IsEmpty) Then
          result := True;
   finally
      free;
   end;
end;

procedure TdmAdmDados.cdsRegContaPagarCalcFields(DataSet: TDataSet);
begin
     cdsRegContaPagarPAG_TOTAL_CALC.AsFloat :=
        (cdsRegContaPagarPAG_VALORPARCELA.AsFloat +
        cdsRegContaPagarPAG_VALORJUROS.AsFloat) -
        cdsRegContaPagarPAG_VALORDESCONTO.AsFloat;
end;

function TdmAdmDados.ExcluirContaPagar(iSeq, iLoja, iParcela : Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Delete from CONTASPAGAR Where (PAG_SEQUENCIA = :pSEQ) '+
            'and (PAG_LOJA = :pLOJA) and (PAG_PARCELA = :pPARCELA) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQ').AsInteger  := iSeq;
       Params.ParamByName('pLOJA').AsInteger := iLoja;
       Params.ParamByName('pPARCELA').AsInteger := iParcela;
       ExecSQL();
       Result := True;
   finally
      free;
   end;
end;

function TdmAdmDados.EstornarContaPagar(iSeq, iLoja,
  iParcela: Integer; aMotivo : String): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
     Result := False;
     texto := 'Select * from CONTASPAGAR Where (PAG_SEQUENCIA = :pSEQ)';
     texto := texto + ' and (PAG_LOJA = :pLOJA) and (PAG_PARCELA = :pPARCELA) ';
     //
     With cdsEstornaCP do
     begin
          Close;
          CommandText := Texto;
          Params.ParamByName('pSEQ').AsInteger  := iSeq;
          Params.ParamByName('pLOJA').AsInteger := iLoja;
          Params.ParamByName('pPARCELA').AsInteger := iParcela;
          Open;
          //
          if not (IsEmpty) Then
          begin
               Edit;
               FieldByName('PAG_DATAPAGAMENTO').Clear;
               FieldByName('PAG_VALORPAGO').Clear;
               FieldByName('PAG_MODALIDADE').Clear;
               FieldByName('PAG_SITUACAO').AsString  := 'A';
               FieldByName('PAG_DESCRICAO').AsString := FieldByName('PAG_DESCRICAO').AsString + #13+'MOTIVO :'+aMotivo;
               //
               ApplyUpdates(0);
               Close;
               Result := True;
          End;
     End;
end;

function TdmAdmDados.AddNatureza(aDescricao, aTipo: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;
  RefreshCDS(cdsConfig);
  cdsConfig.Edit;
  cdsConfigCFG_NATUREZA.AsInteger := cdsConfigCFG_NATUREZA.AsInteger + 1;
  cdsConfig.ApplyUpdates(0);
  //
  texto  := 'insert into NATUREZA (NAT_CODIGO, NAT_NOME, NAT_TIPO) values (:pCODIGO, :pNOME, :pTIPO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := cdsConfigCFG_NATUREZA.AsInteger;
       Params.ParamByName('pNOME').AsString    := aDescricao;
       Params.ParamByName('pTIPO').AsString    := aTipo;
       ExecSQL();
       Result := cdsConfigCFG_NATUREZA.AsInteger;
   finally
      free;
   end;
end;

procedure TdmAdmDados.AutenticacaoDocContaPagar(iSequencia: Integer;
  aTipo: String);
var
   IMPRESSORA:TextFile;
   aNomeDispositivo, aEmpresa, aEspaco, aDataMov, M_SQCAIX : String;
   M_LINTOP, M_LINBOT, I : Integer;
   aValorParcela : double;
   QrAux : TSQLQuery;
   texto, aDescricaoMov : string;
begin
  texto  := 'Select * from MOVIMENTO_CAIXA Where (MCA_SEQUENCIA = :pSEQUENCIA)';
  aDescricaoMov := 'CP';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pSEQUENCIA').AsInteger := iSequencia;
       Open;
       //
       if not (IsEmpty) Then
        begin
             aValorParcela := FieldByName('MCA_VLMODALIDADE').AsFloat;
             aDataMov      := FieldByName('MCA_DTMOVIMENTO').AsString;
             M_SQCAIX      := FieldByName('MCA_SEQCAIXA').AsString;
        End;
   finally
        QrAux.Free;
   end;
  //
   try
       //
       aNomeDispositivo := GetNomeDispositivo();
       if not (cdsConfig.Active) Then
          uFuncoes.RefreshCDS(cdsConfig);
       aEmpresa := uFuncoes.Alltrim(Copy(cdsConfigCFG_NOMEEMPRESA.AsString,1,20));
       M_LINTOP := cdsConfigCFG_QTLINHA_TOP.AsInteger;
       M_LINBOT := cdsConfigCFG_QTLINHA_BOTTON.AsInteger;
       aEspaco  := uFuncoes.Replicate(' ',2);
       //
       {Relaciona a variável impressora com a
       lpt1: - Poderia ser LPT, COM1,// Servidor/impressora}
       AssignFile(IMPRESSORA, aNomeDispositivo);
       {abre a porta da impressão }
       Rewrite(IMPRESSORA);
       {envia caractere de controle para comprimir a impressão}
       Write(IMPRESSORA);
       If (M_LINTOP > 0) Then
         For I := 1 to M_LINTOP do
           Writeln(Impressora);
       { Imprime linha de autenticação}
       if (aTipo = 'B') Then
       begin
           If not uFuncoes.Empty(M_SQCAIX) Then
                Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(M_SQCAIX,10) + ' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),12)+ ' - '+ aDataMov + ' :: '+ aDescricaoMov]))
           Else
                Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iSequencia),10) + ' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),12)+ ' - '+ aDataMov+' :: '+ aDescricaoMov]));
       End
       Else
       begin
           If not uFuncoes.Empty(M_SQCAIX) Then
               Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(M_SQCAIX,10) + ' - ' + uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),9)+'>Estorno :: '+aDescricaoMov ]))
           Else
               Writeln(Impressora,Format('%-48s', ['RG:' + uFuncoes.StrZero(InttoStr(iSequencia),10) + ' - '+ uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),9)+'>Estorno :: '+aDescricaoMov]));
       End;
       // 11/11/2008
              { Imprime linha de autenticação}
      { Writeln(Impressora,Format('%-48s', ['RG'+uFuncoes.StrZero(InttoStr(iSequencia),7)
              + aEspaco + 'G:'+uFuncoes.StrZero(InttoStr(iGrupo),3)+'C:'+uFuncoes.StrZero(InttoStr(aCota),3)+ 'PC:'+ uFuncoes.StrZero(InttoStr(aParcela),3)
              +' - '+uFuncoes.StrAsterisco(FormatFloat('#,##0.#0', aValorParcela),8)+ '-'+ aDataMov]));}
       //
       If (M_LINBOT > 0) Then
          For I := 1 to M_LINBOT do
             Writeln(Impressora);
       //
   finally
       { Fecha a porta de impressão}
       System.Close(Impressora);
   end;
end;

procedure TdmAdmDados.ImprimiEtiquetaNovo(aCodigo: String);
begin
   uFuncoes.FilterCDS(cdsClientes, fsInteger, aCodigo);
   //
   try
       if not (cdsClientes.IsEmpty) Then
           With dmRelatorios.ppRepEnvCliente do
            begin
                dmRelatorios.txtEndereco.Clear;
                dmRelatorios.txtCidadeUF.Clear;
                //
                dmRelatorios.txtEndereco.Text := cdsClientesCLI_ENDERECO.AsString;
                if not uFuncoes.Empty(cdsClientesCLI_NUMERO.AsString) Then
                   dmRelatorios.txtEndereco.Text := dmRelatorios.txtEndereco.Text + ', Nº: '+ cdsClientesCLI_NUMERO.AsString;
                dmRelatorios.txtCidadeUF.Text := cdsClientesCLI_CIDADE.AsString + ' - '+ cdsClientesCLI_UFCLIE.AsString;
                //
                PrintReport;
            End;
   finally
         cdsClientes.close;
   end;
end;

function TdmAdmDados.SetAtualizarCodigoBancoParcelas(idVenda,
  idBanco: Integer): Boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  //
  texto  := 'Update PARCELAS set REC_CDBANC = :pCDBANC ';
  texto  := texto + ' Where (rec_nrvend = :pnrvend) and ((REC_TOTAL_PAGO = 0) or (REC_TOTAL_PAGO is null)) and ((rec_nossonumero = '+QuotedStr('')+') or (rec_nossonumero is null))';
  //
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
     dmAdmDados.Start;
     try
       SQLConnection := sqlConn;
       sql.Add(texto);
       Params.ParamByName('pnrvend').AsInteger := idVenda;
       Params.ParamByName('pCDBANC').AsInteger := idBanco;
       ExecSQL();
       //
       dmAdmDados.Comit(Transc);
       Result := True;
     Except
        dmAdmDados.Rollback;
     End;
   finally
      free;
   end;
end;

end.

