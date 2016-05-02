unit uDmPesquisas;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, DBClient, DBTables, Controls,
  gbCobranca, Forms, Windows, Dialogs;

type
  TdmPesquisas = class(TDataModule)
    dstPadrao: TSQLDataSet;
    dspPadrao: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsModelos: TClientDataSet;
    cdsGrupo: TClientDataSet;
    cdsUsuario: TClientDataSet;
    cdsListaBancos: TClientDataSet;
    cdsListaModelos: TClientDataSet;
    cdsListaModelosMOD_CODIGO: TIntegerField;
    cdsListaModelosMOD_DESCRICAO: TStringField;
    dsLisBancos: TDataSource;
    dsLisModelo: TDataSource;
    cdsConsultaCota: TClientDataSet;
    cdsConsulta: TClientDataSet;
    cdsListaGrupos: TClientDataSet;
    cdsListaGruposGRU_CODIGO: TIntegerField;
    cdsListaGruposGRU_DESCRICAO: TStringField;
    qryConsulta: TQuery;
    cdsSituacaoCota: TClientDataSet;
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
    cdsCotasClientes: TClientDataSet;
    dstCotasClientes: TSQLDataSet;
    dspCotasClientes: TDataSetProvider;
    cdsCotasClientesCOT_NRVENDA: TIntegerField;
    cdsCotasClientesCOT_CDGRUPO: TIntegerField;
    cdsCotasClientesCOT_NRCOTA: TIntegerField;
    cdsCotasClientesCOT_CDCLIE: TIntegerField;
    cdsCotasClientesCOT_PLANO: TIntegerField;
    cdsCotasClientesCOT_POSICAO: TStringField;
    dstCotasClientesCOT_NRVENDA: TIntegerField;
    dstCotasClientesCOT_CDGRUPO: TIntegerField;
    dstCotasClientesCOT_NRCOTA: TIntegerField;
    dstCotasClientesCOT_CDCLIE: TIntegerField;
    dstCotasClientesCOT_PLANO: TIntegerField;
    dstCotasClientesCOT_POSICAO: TStringField;
    cdsCotasGrupo: TClientDataSet;
    dstPadrao2: TSQLDataSet;
    dspPadrao2: TDataSetProvider;
    cdsCotasGrupoCOT_NRCOTA: TIntegerField;
    cdsCotasGrupoCOT_POSICAO: TStringField;
    cdsCotasGrupoCOT_CDCLIE: TIntegerField;
    cdsCotasGrupoCLI_NOME: TStringField;
    cdsAux: TClientDataSet;
    dstAux: TSQLDataSet;
    dspAux: TDataSetProvider;
    cdsConsultaCotaREC_FORMABAIXA: TStringField;
    cdsConsultaCotaREC_VLPARC: TFMTBCDField;
    cdsConsultaCotaREC_VLMULT: TFMTBCDField;
    cdsConsultaCotaREC_CREDITO: TFMTBCDField;
    cdsConsultaCotaCOT_FUNDORES: TFMTBCDField;
    cdsConsultaCotaCOT_TAXA_ADM: TFMTBCDField;
    cdsConsultaCotaREC_TOTAL_PAGO: TFMTBCDField;
    dstCotasClientesCOT_VALCOTA: TFMTBCDField;
    cdsCotasClientesCOT_VALCOTA: TFMTBCDField;
    cdsIniciarGrupo: TClientDataSet;
    cdsIniciarGrupoCOT_NRVENDA: TIntegerField;
    cdsIniciarGrupoCOT_CDGRUPO: TIntegerField;
    cdsIniciarGrupoCOT_NRCOTA: TIntegerField;
    cdsIniciarGrupoCOT_CDCLIE: TIntegerField;
    cdsIniciarGrupoCOT_PLANO: TIntegerField;
    cdsIniciarGrupoCOT_POSICAO: TStringField;
    cdsIniciarGrupoCOT_VALCOTA: TFMTBCDField;
    qryUsuarios: TSQLQuery;
    qryUsuariosSEN_CODIGO: TIntegerField;
    qryUsuariosSEN_NOME: TStringField;
    qryUsuariosSEN_SNATUA: TStringField;
    qryUsuariosSEN_SNANTE: TStringField;
    qryUsuariosSEN_CARGO: TStringField;
    qryUsuariosSEN_DTATUAL: TDateField;
    qryUsuariosSEN_TERMINAL: TStringField;
    qryUsuariosSEN_ADMIN: TStringField;
    qryUsuariosSEN_FLCAIXA: TStringField;
    qryUsuariosSEN_FLSUPER: TStringField;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultaCotaREC_CDBANC: TIntegerField;
    cdsConsultaCotaREC_NOSSONUMERO: TStringField;
    cdsConsultaCotaCOT_PLANO: TIntegerField;
    cdsConsultaCotaREC_VALORTITULOTITULO: TFMTBCDField;
    cdsConsultaCotaREC_VALORTARIFABANCO: TFMTBCDField;
    cdsConsultaCotaREC_VALORTITULOTITULO_CALC: TFloatField;
    cdsConsultaCotaREC_DTCREDITO: TDateField;
    cdsContratoCliente: TClientDataSet;
    cdsContratoClienteCOT_NRVENDA: TIntegerField;
    cdsContratoClienteCOT_CDGRUPO: TIntegerField;
    cdsContratoClienteCOT_NRCOTA: TIntegerField;
    cdsContratoClienteCOT_CDCLIE: TIntegerField;
    cdsContratoClienteCOT_PLANO: TIntegerField;
    cdsContratoClienteCOT_POSICAO: TStringField;
    cdsContratoClienteCOT_VALCRE: TFMTBCDField;
    cdsContratoClienteCOT_VALACERTO: TFMTBCDField;
    cdsContratoClienteCOT_FLCONTEMPLADO: TStringField;
    cdsContratoClienteCOT_VALCOTA: TFMTBCDField;
    cdsContratoClienteCOT_FUNDORES: TFMTBCDField;
    cdsContratoClienteCOT_TAXA_ADM: TFMTBCDField;
    cdsContratoClienteCOT_DTCONTEMPLACAO: TDateField;
    cdsContratoClienteCOT_ASSEB_CONTEMP: TIntegerField;
    cdsContratoClienteCLI_NOME: TStringField;
    cdsContratoClienteCLI_NRFONE: TStringField;
    cdsContratoClienteCLI_ENDERECO: TStringField;
    cdsContratoClienteCLI_NUMERO: TIntegerField;
    cdsContratoClienteCLI_ESTADO_CIVIL: TStringField;
    cdsContratoClienteCLI_PROFISSAO: TStringField;
    cdsContratoClienteCLI_SEXO: TStringField;
    cdsContratoClienteCLI_NUMCEP: TStringField;
    cdsContratoClienteCLI_CIDADE: TStringField;
    cdsContratoClienteCLI_UFCLIE: TStringField;
    cdsContratoClienteCLI_ENDEMPRESA: TStringField;
    cdsContratoClienteCLI_FONEEMPRESA: TStringField;
    cdsContratoClienteCLI_BAIEMPRESA: TStringField;
    cdsContratoClienteCLI_CEPEMPRESA: TStringField;
    cdsContratoClienteCLI_UFEMPRESA: TStringField;
    cdsContratoClienteCLI_CGC: TStringField;
    cdsContratoClienteCLI_CPF: TStringField;
    cdsContratoClienteCLI_NRIDEN: TStringField;
    cdsContratoClienteCLI_DTNASCIMENTO: TDateField;
    cdsConsultaCotaREC_HOPAGA: TStringField;
    dstAvalista: TSQLDataSet;
    dstAvalistaAVA_NRVEND: TIntegerField;
    dstAvalistaAVA_CDCLIE: TIntegerField;
    dspAvalista: TDataSetProvider;
    cdsAvalista: TClientDataSet;
    cdsAvalistaAVA_NRVEND: TIntegerField;
    cdsAvalistaAVA_CDCLIE: TIntegerField;
    cdsContratoClienteCLI_NACIONALIDADE: TStringField;
    cdsContratoClienteCLI_BAIRRO: TStringField;
    cdsContratoClienteFONE1: TStringField;
    cdsContratoClienteFONE_EMP: TStringField;
    cdsContratoClienteEST_CIVIL: TStringField;
    cdsContratoClienteCEP: TStringField;
    cdsContratoClienteCOT_CONTRATO: TStringField;
    cdsListaBancosBAN_CODIGO: TIntegerField;
    cdsListaBancosBAN_NOME: TStringField;
    cdsListaBancosBAN_NRAGEN: TIntegerField;
    dstCartas: TSQLDataSet;
    dspCartas: TDataSetProvider;
    cdsCartas: TClientDataSet;
    cdsCartasCAR_CODIGO: TIntegerField;
    cdsCartasCAR_DESCRICAO: TStringField;
    cdsCartasCAR_HISTORICO: TMemoField;
    cdsCartasCAR_COMPLEMENTO: TMemoField;
    cdsCartasCAR_MENSAVAL: TMemoField;
    cdsModeloCartas: TClientDataSet;
    dstModalidades: TSQLDataSet;
    dstModalidadesMOD_CODIGO: TIntegerField;
    dstModalidadesMOD_NOME: TStringField;
    dstModalidadesMOD_PECOMISSAO: TBCDField;
    dstModalidadesMOD_ABREVIACAO: TStringField;
    dstModalidadesMOD_NRPARCELA: TIntegerField;
    dstModalidadesMOD_FLFIXA: TStringField;
    dstModalidadesMOD_CAIXA_GERAL: TIntegerField;
    dstModalidadesMOD_AVISTA: TStringField;
    dspModas: TDataSetProvider;
    cdsModas: TClientDataSet;
    cdsModasMOD_CODIGO: TIntegerField;
    cdsModasMOD_NOME: TStringField;
    cdsModasMOD_PECOMISSAO: TBCDField;
    cdsModasMOD_ABREVIACAO: TStringField;
    cdsModasMOD_NRPARCELA: TIntegerField;
    cdsModasMOD_FLFIXA: TStringField;
    cdsModasMOD_CAIXA_GERAL: TIntegerField;
    cdsModasMOD_AVISTA: TStringField;
    cdsConsultaCotaREC_MOV_CAIXA: TIntegerField;
    dstNaturezas: TSQLDataSet;
    dstNaturezasNAT_CODIGO: TIntegerField;
    dstNaturezasNAT_NOME: TStringField;
    dstNaturezasNAT_TIPO: TStringField;
    dstNaturezasNAT_FLDESC: TStringField;
    dspNaturezas: TDataSetProvider;
    cdsNaturezas: TClientDataSet;
    cdsNaturezasNAT_CODIGO: TIntegerField;
    cdsNaturezasNAT_NOME: TStringField;
    cdsNaturezasNAT_TIPO: TStringField;
    cdsNaturezasNAT_FLDESC: TStringField;
    dstPermissoes: TSQLDataSet;
    dstPermissoesUSU_CODIGO: TIntegerField;
    dstPermissoesMEN_CODIGO: TIntegerField;
    dstPermissoesPG_NOVO: TStringField;
    dstPermissoesPU_ALTERAR: TStringField;
    dstPermissoesPU_APAGAR: TStringField;
    dstPermissoesPU_CONSULTAR: TStringField;
    dspPermissoes: TDataSetProvider;
    cdsPermissoes: TClientDataSet;
    cdsPermissoesUSU_CODIGO: TIntegerField;
    cdsPermissoesMEN_CODIGO: TIntegerField;
    cdsPermissoesPG_NOVO: TStringField;
    cdsPermissoesPU_ALTERAR: TStringField;
    cdsPermissoesPU_APAGAR: TStringField;
    cdsPermissoesPU_CONSULTAR: TStringField;
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
    dstMovCaixaMCA_NRCHEQ: TStringField;
    dstMovCaixaMCA_NRAGEN: TStringField;
    dstMovCaixaMCA_NRBANC: TIntegerField;
    dstMovCaixaMCA_NRCONTA: TStringField;
    dstMovCaixaMCA_NRPARC: TIntegerField;
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
    cdsMovCaixaMCA_NRCHEQ: TStringField;
    cdsMovCaixaMCA_NRAGEN: TStringField;
    cdsMovCaixaMCA_NRBANC: TIntegerField;
    cdsMovCaixaMCA_NRCONTA: TStringField;
    cdsMovCaixaMCA_NRPARC: TIntegerField;
    cdsListaNaturezas: TClientDataSet;
    cdsListaModalidades: TClientDataSet;
    dstListas: TSQLDataSet;
    dspListas: TDataSetProvider;
    cdsListaNaturezasNAT_CODIGO: TIntegerField;
    cdsListaNaturezasNAT_NOME: TStringField;
    cdsListaModalidadesMOD_CODIGO: TIntegerField;
    cdsListaModalidadesMOD_NOME: TStringField;
    cdsMovCaixaNATUREZA: TStringField;
    cdsMovCaixaMODALIDADE: TStringField;
    cdsListaNaturezasNAT_TIPO: TStringField;
    dstRelMovCaixa: TSQLDataSet;
    dspRelMovCaixa: TDataSetProvider;
    cdsRelMovCaixa: TClientDataSet;
    cdsRelMovCaixaCAI_NUMERO: TIntegerField;
    cdsRelMovCaixaCAI_DTABERTURA: TDateField;
    cdsRelMovCaixaCAI_DTFECHAMENTO: TDateField;
    cdsRelMovCaixaCAI_HOABERTURA: TStringField;
    cdsRelMovCaixaCAI_HOFECHAMENTO: TStringField;
    cdsRelMovCaixaCAI_RGINICIAL: TIntegerField;
    cdsRelMovCaixaCAI_RGFINAL: TIntegerField;
    cdsRelMovCaixaCAI_CAIXA: TIntegerField;
    cdsRelMovCaixaCAI_SITUACAO: TStringField;
    cdsDetalheMovCaixa: TClientDataSet;
    cdsDetalheMovCaixaMCA_TIPOMOV: TStringField;
    cdsDetalheMovCaixaMCA_NATUREZA: TIntegerField;
    cdsDetalheMovCaixaNAT_NOME: TStringField;
    cdsDetalheMovCaixaVALOR: TFMTBCDField;
    cdsClienteAlienado: TClientDataSet;
    cdsClienteAlienadoCOT_NRVENDA: TIntegerField;
    cdsClienteAlienadoCOT_CDGRUPO: TIntegerField;
    cdsClienteAlienadoCOT_NRCOTA: TIntegerField;
    cdsClienteAlienadoCOT_CDCLIE: TIntegerField;
    cdsClienteAlienadoCOT_CONTRATO: TStringField;
    cdsClienteAlienadoCOT_PLANO: TIntegerField;
    cdsClienteAlienadoCOT_POSICAO: TStringField;
    cdsClienteAlienadoCOT_DIAASS: TStringField;
    cdsClienteAlienadoCOT_DTCONT: TDateField;
    cdsClienteAlienadoCOT_CODBEM: TStringField;
    cdsClienteAlienadoCOT_VALCRE: TFMTBCDField;
    cdsClienteAlienadoCOT_VALACERTO: TFMTBCDField;
    cdsClienteAlienadoCOT_FLCONTEMPLADO: TStringField;
    cdsClienteAlienadoCOT_TIPO: TStringField;
    cdsClienteAlienadoCOT_VALCOTA: TFMTBCDField;
    cdsClienteAlienadoCOT_DTVENCIMENTO: TDateField;
    cdsClienteAlienadoCOT_FUNDORES: TFMTBCDField;
    cdsClienteAlienadoCOT_TAXA_ADESAO: TFMTBCDField;
    cdsClienteAlienadoCOT_TAXA_ADM: TFMTBCDField;
    cdsClienteAlienadoCOT_CDBANCO: TIntegerField;
    cdsClienteAlienadoCOT_NMBANCO: TStringField;
    cdsClienteAlienadoCOT_CIDADE_BANCO: TStringField;
    cdsClienteAlienadoCOT_ESPECIE: TStringField;
    cdsClienteAlienadoCOT_MARCA: TStringField;
    cdsClienteAlienadoCOT_ASSEMBLEIAFILTRO: TIntegerField;
    cdsClienteAlienadoCOT_VALORLANCE: TFMTBCDField;
    cdsClienteAlienadoCOT_DTCONTEMPLACAO: TDateField;
    cdsClienteAlienadoCOT_ASSEB_CONTEMP: TIntegerField;
    cdsClienteAlienadoCOT_DTALIENACAO: TDateField;
    cdsClienteAlienadoCOT_MARCA_VEIC: TStringField;
    cdsClienteAlienadoCOT_MODELO_VEIC: TStringField;
    cdsClienteAlienadoCOT_ANO_FAB: TIntegerField;
    cdsClienteAlienadoCOT_ANO_MOD: TIntegerField;
    cdsClienteAlienadoCOT_CHASSI: TStringField;
    cdsClienteAlienadoCOT_DATA_LIB: TDateField;
    cdsClienteAlienadoCOT_ALIENADO: TStringField;
    cdsClienteAlienadoCOT_DESALIENADO: TStringField;
    cdsClienteAlienadoCOT_AVAL1: TIntegerField;
    cdsClienteAlienadoCOT_AVAL2: TIntegerField;
    cdsClienteAlienadoCOT_NRSERIE: TStringField;
    cdsClienteAlienadoCOT_TIPOVEIC: TStringField;
    cdsClienteAlienadoCOT_COR: TStringField;
    cdsClienteAlienadoCOT_CDMODELO: TIntegerField;
    cdsClienteAlienadoCOT_VALOR_TAXACAD: TFMTBCDField;
    cdsClienteAlienadoCOT_VALORENTRADA: TFMTBCDField;
    cdsClienteAlienadoCOT_DATAPRIMPRES: TDateField;
    cdsClienteAlienadoCOT_TPLANCE: TStringField;
    cdsClienteAlienadoCOT_DTRECEBIMENTO: TDateField;
    cdsClienteAlienadoCOT_VALOR_RECEBER: TFMTBCDField;
    cdsClienteAlienadoCOT_FLXSPC: TStringField;
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
    cdsMovModalidade: TClientDataSet;
    cdsMovModalidadeMCA_MODALIDADE: TIntegerField;
    cdsMovModalidadeMOD_NOME: TStringField;
    cdsMovModalidadeVALOR: TFMTBCDField;
    cdsVerificaBanco: TClientDataSet;
    cdsVerificaBancoREC_CDBANC: TIntegerField;
    cdsTitulos: TClientDataSet;
    cdsTitulosCDS_NOSSONUMERO: TStringField;
    cdsTitulosCDS_DTVENC: TStringField;
    cdsTitulosCDS_DTPAGA: TStringField;
    cdsTitulosCDS_DTCRED: TStringField;
    cdsTitulosCDS_VLTARIFA: TFloatField;
    cdsTitulosCDS_OUTRAS_DESPESAS: TFloatField;
    cdsTitulosCDS_JUROS_DESCONTO: TFloatField;
    cdsTitulosCDS_IOF_DESCONTO: TFloatField;
    cdsTitulosCDS_VLABATIMENTO: TFloatField;
    cdsTitulosCDS_VLDESC: TFloatField;
    cdsTitulosCDS_VLRECEBIDO: TFloatField;
    cdsTitulosCDS_JUROS_MORA: TFloatField;
    cdsTitulosCDS_OUTROS_RECEBIMENTOS: TFloatField;
    cdsTitulosCDS_VALOR_LANCAMENTO: TFloatField;
    cdsTitulosCDS_VALOR_DOCUMENTO: TFloatField;
    gbTitulo1: TgbTitulo;
    gbCobranca1: TgbCobranca;
    dstGrupoUsuarios: TSQLDataSet;
    dspGrupoUsuarios: TDataSetProvider;
    cdsGruposUsuarios: TClientDataSet;
    dstGrupoUsuariosGPU_CODIGO: TIntegerField;
    dstGrupoUsuariosGPU_GRUPO: TStringField;
    dstGrupoUsuariosGPU_DESCRICAO: TStringField;
    cdsGruposUsuariosGPU_CODIGO: TIntegerField;
    cdsGruposUsuariosGPU_GRUPO: TStringField;
    cdsGruposUsuariosGPU_DESCRICAO: TStringField;
    cdsConsultaCotaREC_NMBANCO: TStringField;
    cdsListaBanco: TClientDataSet;
    dstListaBancos: TSQLDataSet;
    dspListaBancos: TDataSetProvider;
    cdsListaBancoBAN_CODIGO: TIntegerField;
    cdsListaBancoBAN_NOME: TStringField;
    cdsContratoClienteCPF: TStringField;
    cdsContratoClienteCGC: TStringField;
    dstAutenticaUsuario: TSQLDataSet;
    dspAuteUsuario: TDataSetProvider;
    cdsAuteUsuario: TClientDataSet;
    cdsAuteUsuarioSEN_CODIGO: TIntegerField;
    cdsAuteUsuarioSEN_NOME: TStringField;
    cdsAuteUsuarioSEN_SNATUA: TStringField;
    cdsAuteUsuarioSEN_SNANTE: TStringField;
    cdsAuteUsuarioSEN_CARGO: TStringField;
    cdsAuteUsuarioSEN_DTATUAL: TDateField;
    cdsAuteUsuarioSEN_TERMINAL: TStringField;
    cdsAuteUsuarioSEN_ADMIN: TStringField;
    cdsAuteUsuarioSEN_FLCAIXA: TStringField;
    cdsAuteUsuarioSEN_FLSUPER: TStringField;
    cdsAuteUsuarioUSU_ADMIN: TStringField;
    cdsAuteUsuarioSEN_CDGRUP: TIntegerField;
    cdsMovModalidade2: TClientDataSet;
    cdsMovModalidade2MCA_MODALIDADE: TIntegerField;
    cdsMovModalidade2MOD_NOME: TStringField;
    cdsMovModalidade2MCA_TIPOMOV: TStringField;
    cdsMovModalidade2VALOR: TFMTBCDField;
    cdsListaModalidadesMOD_FLFIXA: TStringField;
    cdsListaCotas: TClientDataSet;
    cdsListaCotasCOT_NRVENDA: TIntegerField;
    cdsListaCotasCOT_CDGRUPO: TIntegerField;
    cdsListaCotasCOT_NRCOTA: TIntegerField;
    cdsListaCotasCOT_POSICAO: TStringField;
    cdsCaixaCAI_SQINICIAL: TIntegerField;
    cdsCaixaCAI_SQFINAL: TIntegerField;
    cdsMovModaCredito: TClientDataSet;
    cdsMovModaCreditoMCA_MODALIDADE: TIntegerField;
    cdsMovModaCreditoMOD_NOME: TStringField;
    cdsMovModaCreditoMCA_TIPOMOV: TStringField;
    cdsMovModaCreditoVALOR: TFMTBCDField;
    cdsNossoNumero: TClientDataSet;
    dstNossoNumero: TSQLDataSet;
    dspNossoNumero: TDataSetProvider;
    cdsNossoNumeroREC_NRVEND: TIntegerField;
    cdsNossoNumeroCOT_CDGRUPO: TIntegerField;
    cdsNossoNumeroCOT_NRCOTA: TIntegerField;
    cdsNossoNumeroCOT_POSICAO: TStringField;
    cdsNossoNumeroCLI_NOME: TStringField;
    cdsNossoNumeroREC_NRPARC: TIntegerField;
    cdsNossoNumeroREC_DTVENC: TDateField;
    cdsNossoNumeroREC_VLPARC: TFMTBCDField;
    cdsNossoNumeroCOT_TAXA_ADM: TFMTBCDField;
    cdsNossoNumeroCOT_FUNDORES: TFMTBCDField;
    cdsNossoNumeroREC_NOSSONUMERO: TStringField;
    cdsNossoNumeroTXADM: TFloatField;
    cdsNossoNumeroTXFUND: TFloatField;
    cdsNossoNumeroVLPAGAR: TFloatField;
    cdsBaixaNosso: TClientDataSet;
    cdsBaixaNossoREC_NRVEND: TIntegerField;
    cdsBaixaNossoREC_NRPARC: TIntegerField;
    cdsBaixaNossoREC_DTVENC: TDateField;
    cdsBaixaNossoREC_DTPAGA: TDateField;
    cdsBaixaNossoREC_VLPARC: TFMTBCDField;
    cdsBaixaNossoREC_NOSSONUMERO: TStringField;
    cdsBaixaNossoCOT_TAXA_ADM: TFMTBCDField;
    cdsBaixaNossoCOT_FUNDORES: TFMTBCDField;
    cdsBaixaNossoCOT_CDGRUPO: TIntegerField;
    cdsBaixaNossoCOT_NRCOTA: TIntegerField;
    cdsBaixaNossoCOT_POSICAO: TStringField;
    cdsBaixaNossoCLI_NOME: TStringField;
    cdsBaixaNossoTXADM: TFloatField;
    cdsBaixaNossoTXFUND: TFloatField;
    cdsBaixaNossoVLPAGAR: TFloatField;
    cdsConsultaCotaREC_VALOR_DIGITADO: TFMTBCDField;
    cdsIniciarGrupoCOT_CDBANCO: TIntegerField;
    cdsListaParcelasVenda: TClientDataSet;
    cdsListaParcelasVendaREC_NRVEND: TIntegerField;
    cdsListaParcelasVendaREC_CDGRUP: TIntegerField;
    cdsListaParcelasVendaREC_NRCOTA: TIntegerField;
    cdsListaParcelasVendaREC_NRPARC: TIntegerField;
    cdsListaParcelasVendaREC_DTVENC: TDateField;
    cdsListaParcelasVendaREC_DTPAGA: TDateField;
    cdsListaParcelasVendaREC_TOTAL_PAGO: TFMTBCDField;
    cdsContratoClienteCLI_NRCELULAR: TStringField;
    cdsContratoClienteCELULAR: TStringField;
    cdsConsultaCotaREC_NATUREZA: TIntegerField;
    dstAtualizaSaldo: TSQLDataSet;
    dspAtualizaSaldo: TDataSetProvider;
    cdsAtualizaSaldo: TClientDataSet;
    procedure cdsConsultaCotaCalcFields(DataSet: TDataSet);
    procedure cdsContratoClienteCalcFields(DataSet: TDataSet);
    procedure dspNaturezasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspGrupoUsuariosGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsNossoNumeroCalcFields(DataSet: TDataSet);
    procedure cdsBaixaNossoCalcFields(DataSet: TDataSet);
    procedure dspAtualizaSaldoGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
    function Parcelas_Pagas(M_CDGRUP, M_NRCOTA, M_NRVEND : Integer) : integer;
    function Parcelas_Atrasadas(M_CDGRUP, M_NRCOTA, M_NRVEND : Integer) : integer;
    function Parcelas_Vincendas(M_CDGRUP, M_NRCOTA, M_NRVEND : Integer) : integer;
    function Buscar(W_NRVEND : integer) : boolean;
    Procedure Abrir_Avalista(aVenda : integer);
    function GetModalidade(W_NMMODA : String) : boolean;
    Procedure ListaNatureza(aTipo : String);
    function GetMovCaixa(aCaixa : integer; aData : TDate; aSituacao : String) : boolean;
    function GetDetalhesMovCaixa(iCaixa, iInicial, iFinal : integer; aTipoMov : String) : boolean;
    Function GetClienteAlienado(iGrupo, iCota : integer) : Boolean;
    Function GetMovCaixaModalidades(aCaixa, aRegInicial, aRegFinal : Integer; aTipoMov : String): boolean;
    Function GetMovCaixaModalidades2(aCaixa, aModalidade, aRegInicial, aRegFinal : Integer; aTipoMov1, aTipoMov2, aEntSai: String): double;
    Function GetMovCaixaModalidades2ContaPagar(aCaixa, aModalidade, aRegInicial, aRegFinal : Integer; aTipoMov1, aEntSai: String): double;    
    Function Carregar_Titulos(aArquivo : string) : boolean;
    Function Carregar_Titulos_CNAB240(aArquivo : string) : boolean;
    Function ConsultaNossoNumero(iBanco : Integer; aNumero : String) : boolean;
    Function ConsultaNossoNumeroBaixado(iBanco : Integer; aNumero : String) : boolean;
    Function AtualizarSaldoCliente(aCDS:  TClientDataSet; fValorSaldo : Double): Boolean;
    Function GetVerificaSaldoDevedorCliente(aCDS:  TClientDataSet; fValorSaldo : Double): Boolean;
    Function ZerarSaldoCliente(aCDS:  TClientDataSet; iVenda : Integer): Boolean;
  end;

var
  dmPesquisas: TdmPesquisas;

implementation

uses udmAdmDados, uFuncoes, Math;

{$R *.dfm}


procedure TdmPesquisas.Abrir_Avalista(aVenda: integer);
begin
     With cdsAvalista do
      begin
           Active := False;
           Params[0].AsInteger := aVenda;
           Active := True;  
      End;
end;

function TdmPesquisas.Buscar(W_NRVEND: integer): boolean;
begin
     Result :=  false;
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := W_NRVEND;
          //
          Active := True;
          //
          if not (IsEmpty) then
             Result := True;
     end;
end;

procedure TdmPesquisas.cdsConsultaCotaCalcFields(DataSet: TDataSet);
begin
    if (cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
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
        cdsConsultaCotaREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar((
             cdsConsultaCotaREC_VLPARC.AsFloat +
             cdsConsultaCotaREC_TAXADM_CALC.AsFloat +
             cdsConsultaCotaREC_TXFUND_CALC.AsFloat),2)  // - cdsConsultaCotaREC_CREDITO.AsFloat
      Else
          cdsConsultaCotaREC_TOTAL_CALC.AsFloat :=
             cdsConsultaCotaREC_VLPARC.AsFloat;
     //
     If (cdsConsultaCotaREC_CDBANC.AsInteger > 0) Then
       cdsConsultaCotaREC_NMBANCO.AsString := dmAdmDados.GetNomeBanco(cdsConsultaCotaREC_CDBANC.AsInteger);
   End
   Else
       cdsConsultaCotaREC_TOTAL_CALC.AsFloat := cdsConsultaCotaREC_VLPARC.AsFloat;
      // Valor do titulo
     { If (cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat > 0) Then
           cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat :=
               cdsConsultaCotaREC_TOTAL_CALC.AsFloat +
               cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat
      Else
          cdsConsultaCotaREC_VALORTITULOTITULO.AsFloat :=
              cdsConsultaCotaREC_TOTAL_CALC.AsFloat;}
end;

function TdmPesquisas.Parcelas_Atrasadas(M_CDGRUP, M_NRCOTA,
  M_NRVEND: Integer): integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto :=
     'SELECT COUNT(*) as QUANT FROM parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) AND (REC_DTPAGA IS NULL) AND (REC_DTVENC < :pDTVENC)';
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmAdmDados.sqlConn;
      sql.Add(texto);
      Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
      Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
      Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
      Params.ParamByName('pDTVENC').AsDate    := Date();
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
end;

function TdmPesquisas.Parcelas_Pagas(M_CDGRUP, M_NRCOTA,
  M_NRVEND: Integer): integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto :=
     'SELECT COUNT(*) as QUANT FROM parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) and (REC_TOTAL_PAGO > :pVALOR)';
     //'SELECT COUNT(*) as QUANT FROM parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) AND (REC_FORMABAIXA = :pFLSITU)';
     //'SELECT COUNT(*) as QUANT FROM parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) AND (REC_DTPAGA <> :pDTPAGA) and (REC_SITUACAO = :pSITUACAO) ';
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmAdmDados.sqlConn;
      sql.Add(texto);
      Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
      Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
      Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
      Params.ParamByName('pVALOR').AsFloat    := 0;
      //Params.ParamByName('pDTPAGA').AsString  := ' ';
      //Params.ParamByName('pFLSITU').AsString := 'C';
      open;
      //
      If not (IsEmpty) Then
         result := fields[0].AsInteger;
    finally
      free;
    end;
end;

function TdmPesquisas.Parcelas_Vincendas(M_CDGRUP, M_NRCOTA,
  M_NRVEND: Integer): integer;
var qraux : TSQLquery;
    texto : string;
begin
  texto :=
     'SELECT COUNT(*) as QUANT FROM parcelas Where (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRVEND = :pNRVEND) and (REC_DTVENC >= :pDTATUA) and ((REC_FORMABAIXA IS NULL) or (REC_FORMABAIXA = :pFORMABAIXA))';
     // REC_DTPAGA = :pDTPAGA AND (REC_SITUACAO = :pSITUACAO)
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmAdmDados.sqlConn;
      sql.Add(texto);
      Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
      Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
      Params.ParamByName('pNRVEND').AsInteger := M_NRVEND;
      Params.ParamByName('pDTATUA').AsDate    := Date();
      Params.ParamByName('pFORMABAIXA').AsString := ' ';
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
end;


procedure TdmPesquisas.cdsContratoClienteCalcFields(DataSet: TDataSet);
begin
     IF not uFuncoes.Empty(cdsContratoClienteCLI_NRFONE.AsString) then
       cdsContratoClienteFONE1.AsString := uFuncoes.FormataFONE(cdsContratoClienteCLI_NRFONE.AsString);
     //
     IF not uFuncoes.Empty(cdsContratoClienteCLI_FONEEMPRESA.AsString) then
       cdsContratoClienteFONE_EMP.AsString := uFuncoes.FormataFONE(cdsContratoClienteCLI_FONEEMPRESA.AsString);
     //
     If not uFuncoes.Empty(cdsContratoClienteCLI_NRCELULAR.AsString) Then
         cdsContratoClienteCELULAR.AsString := uFuncoes.FormataFONE(cdsContratoClienteCLI_NRCELULAR.AsString);
     //
     IF not uFuncoes.Empty(cdsContratoClienteCLI_ESTADO_CIVIL.AsString) Then
     Begin
        if (cdsContratoClienteCLI_ESTADO_CIVIL.AsString = 'C') Then
           cdsContratoClienteEST_CIVIL.AsString := 'CASADO(A)';
        if (cdsContratoClienteCLI_ESTADO_CIVIL.AsString = 'S') Then
           cdsContratoClienteEST_CIVIL.AsString := 'SOLTEIRO(A)';
        if (cdsContratoClienteCLI_ESTADO_CIVIL.AsString = 'D') Then
           cdsContratoClienteEST_CIVIL.AsString := 'DIVORCIADO(A)';
        if (cdsContratoClienteCLI_ESTADO_CIVIL.AsString = 'V') Then
           cdsContratoClienteEST_CIVIL.AsString := 'VIÚVO(A)';
     End;
     //
     IF not uFuncoes.Empty(cdsContratoClienteCLI_NUMCEP.AsString) Then
         cdsContratoClienteCEP.AsString := uFuncoes.FormataCep(cdsContratoClienteCLI_NUMCEP.AsString);
     //
     If not uFuncoes.Empty(cdsContratoClienteCLI_CPF.AsString) Then
         cdsContratoClienteCPF.AsString := uFuncoes.FormataCPF(cdsContratoClienteCLI_CPF.AsString);
end;

function TdmPesquisas.GetModalidade(W_NMMODA: String): boolean;
var qraux : TSQLquery;
    texto : string;
begin
  Result := False;
  texto  := 'Select MOD_CODIGO, MOD_NOME from MODALIDADE where (MOD_NOME = :pNOME)';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params[0].AsString := W_NMMODA;
       Open;
       //
       if not (IsEmpty) Then
         result := true;
   finally
      free;
   end;
end;

procedure TdmPesquisas.dspNaturezasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'NATUREZA';
end;

procedure TdmPesquisas.ListaNatureza(aTipo: String);
begin
     With cdsListaNaturezas do
      begin
           Close;
           CommandText := 'Select NAT_CODIGO, NAT_NOME, NAT_TIPO from NATUREZA Where (NAT_CODIGO > :pCODIGO) AND (NAT_TIPO = :pTIPO) order by NAT_NOME';
           Params.ParamByName('pCODIGO').AsInteger := 2;
           Params.ParamByName('pTIPO').AsString    := aTipo;
           Open;
      End;
end;

function TdmPesquisas.GetDetalhesMovCaixa(iCaixa, iInicial,
  iFinal: integer; aTipoMov: String): boolean;
begin
     Result := False;
     With cdsDetalheMovCaixa do
      begin
           close;
           Params.ParamByName('pRGINICIAL').AsInteger := iInicial;
           Params.ParamByName('pRGFINAL').AsInteger   := iFinal;
           Params.ParamByName('pCAIXA').AsInteger     := iCaixa;
           Params.ParamByName('pTIPOMOV').AsString    := aTipoMov;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
      End;
end;

function TdmPesquisas.GetMovCaixa(aCaixa: integer; aData: TDate;
  aSituacao: String): boolean;
begin
     Result := False;
     With cdsRelMovCaixa do
      begin
           close;
           //Params.ParamByName('pCAIXA').AsInteger   := aCaixa;
           Params.ParamByName('pDTABERTURA').AsDate := aData;
           Params.ParamByName('pSITUACAO').AsString := aSituacao;
           Open;
           //
           if not (IsEmpty) Then
              Result := True;
      End;
end;

function TdmPesquisas.GetClienteAlienado(iGrupo, iCota: integer): Boolean;
begin
     Result := False;
     //
     With cdsClienteAlienado do
      begin
           DisableControls;
           close;
           Params.ParamByName('pCDGRUPO').AsInteger := iGrupo;
           Params.ParamByName('pNRCOTA').AsInteger  := iCota;
           Params.ParamByName('pPOSICAO').AsString  := 'A';
           Params.ParamByName('pFLCONTEMPLADO').AsString := 'S';
           Params.ParamByName('pALIENADO').AsString := 'S';
           open;
           EnableControls;
           //
           If not (IsEmpty) Then
             Result := True;
      End;
end;

function TdmPesquisas.GetMovCaixaModalidades(aCaixa, aRegInicial,
  aRegFinal: Integer; aTipoMov: String): boolean;
begin
      result := false;
      With cdsMovModalidade do
        begin
             Close;
             CommandText := 'Select MC.MCA_MODALIDADE, M.MOD_NOME, Sum(MC.MCA_VLMODALIDADE) AS VALOR ';
             CommandText := CommandText + ' from MOVIMENTO_CAIXA MC INNER JOIN MODALIDADE M ON MC.MCA_MODALIDADE = M.MOD_CODIGO ';
             CommandText := CommandText + ' Where (MC.MCA_SEQUENCIA >= :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND ';
             CommandText := CommandText + ' (MC.MCA_CAIXA = :pCAIXA) AND ((MC.MCA_TIPOMOV = :pTIPOMOV) or (MC.MCA_TIPOMOV = :pTIPOMOV2)) Group by MC.MCA_MODALIDADE, M.MOD_NOME ';
             //
             Params.ParamByName('pRGINICIAL').AsInteger := aRegInicial;
             Params.ParamByName('pRGFINAL').AsInteger   := aRegFinal;
             Params.ParamByName('pCAIXA').AsInteger     := aCaixa;
             Params.ParamByName('pTIPOMOV').AsString    := aTipoMov;
             Params.ParamByName('pTIPOMOV2').AsString   := 'E';
             //
             Open;
             //
             If not (IsEmpty) Then
                result := True;
        End;
end;

function TdmPesquisas.Carregar_Titulos(aArquivo: string): boolean;
var
     arq: TextFile;
     linha, M_TEXTO1, M_TEXTO2 : String;
     //
     aNossoNumero : String;
     aDataPagamento, aDataVenc, aDataCredito : TDate;
     ValorIOF, ValorAbatimento, ValorDesconto : double;
     ValorDocumento, ValorMoraJuros, ValorOutrosCreditos, ValorRecebido : double;
begin
     result := False;
     //
     if not (cdsTitulos.Active) Then
        cdsTitulos.Open;
     cdsTitulos.EmptyDataSet;     
     //
     try
        AssignFile ( arq, aArquivo );
        Reset ( arq );
        //  1ª linha
        ReadLn ( arq, linha );
        M_TEXTO1 := Copy(linha,2,18);
        M_TEXTO2 := Copy(linha,77,18);
        //
        if (M_TEXTO1 = '2RETORNO01COBRANCA')
            and (M_TEXTO2 = '001BANCO DO BRASIL') Then
         begin
            While not Eof ( arq ) do
              begin
                  ReadLn ( arq, linha );
                  //
                  if (linha[1] = '1') Then
                  begin
                   aNossoNumero   := Copy(linha,63,11);
                   //aDataPagamento := Copy(linha,111,6);
                   aDataPagamento := EncodeDate(StrToInt('20'+Copy(linha,115,2)),
                                     StrToInt(Copy(linha,113,2)),
                                     StrToInt(Copy(linha,111,2)));
                   //aDataVenc      := Copy(linha,147,6);
                   aDataCredito   := EncodeDate(StrToInt('20'+Copy(linha,180,2)),
                                 StrToInt(Copy(linha,178,2)),
                                 StrToInt(Copy(linha,176,2)));  // Copy(linha,176,6);
                   //
                   ValorDocumento  := StrtoFloat(Copy(linha,153,13))/100;
                   ValorIOF        := StrtoFloat(Copy(linha,215,13))/100;
                   ValorAbatimento := StrtoFloat(Copy(linha,228,13))/100;
                   ValorDesconto   := StrtoFloat(Copy(linha,241,13))/100;
                   ValorMoraJuros  := StrtoFloat(Copy(linha,267,13))/100;
                   ValorOutrosCreditos  := StrtoFloat(Copy(linha,280,12))/100;
                   ValorRecebido   := StrtoFloat(Copy(linha,254,13))/100;
                   //
                   With cdsTitulos do
                    begin
                         DisableControls;
                         Append;
                         FieldByName('CDS_NOSSONUMERO').AsString := aNossoNumero;
                         //FieldByName('CDS_DTVENC').AsString      := DatetoStr();
                         FieldByName('CDS_DTPAGA').AsString      := DatetoStr(aDataPagamento);
                         FieldByName('CDS_DTCRED').AsString      := DatetoStr(aDataCredito);
                         // FieldByName('CDS_VLTARIFA').AsString    := FloatToStrf(valor, fffixed, 16, 2));
                         //FieldByName('CDS_OUTRAS_DESPESAS').AsFloat := FloatToStrf(valor, fffixed, 11, 2));
                         //FieldByName('CDS_JUROS_DESCONTO').AsFloat := StrtoFloat(FormatFloat('###,##0.#0',StrtoFloat(ValorDesconto)));
                         FieldByName('CDS_IOF_DESCONTO').AsString  := floattostrf(ValorIOF,ffFixed,13,2);
                         FieldByName('CDS_VLABATIMENTO').AsString  := floattostrf(ValorAbatimento,ffFixed,13,2);
                         FieldByName('CDS_VLDESC').AsString        := floattostrf(ValorDesconto,ffFixed,13,2);
                         FieldByName('CDS_VALOR_DOCUMENTO').AsString := floattostrf(ValorDocumento,ffFixed,13,2);
                         FieldByName('CDS_VLRECEBIDO').AsString := floattostrf(ValorRecebido,ffFixed,13,2);
                         FieldByName('CDS_JUROS_MORA').AsString := floattostrf(ValorMoraJuros,ffFixed,13,2);
                         FieldByName('CDS_OUTROS_RECEBIMENTOS').AsString  := floattostrf(ValorOutrosCreditos,ffFixed,13,2);
                         //FieldByName('CDS_VALOR_LANCAMENTO').AsFloat    := StrtoFloat(FormatFloat('###,##0.#0',StrtoFloat()));
                         //
                         Post;
                         EnableControls;
                    End;
                  End;  
              end;
             //
             result := True;
         End;
     Finally
         CloseFile ( arq );
     End;
end;

function TdmPesquisas.Carregar_Titulos_CNAB240(aArquivo: string): boolean;
var
     linha, M_TEXTO1, M_TEXTO2 : String;
     //
     ANossoNumero : string;
     ACedenteCodigo, i : integer;
begin
     result := False;
     //
     if not (cdsTitulos.Active) Then
        cdsTitulos.Open;
     cdsTitulos.EmptyDataSet;
     //
     try
       With gbCobranca1 do
       begin
           Titulos.Clear;

           NomeArquivo := aArquivo;
           LerRetorno;

         //
         {Dar baixa nos títulos automaticamente}
         for i := 0 to (Titulos.Count - 1) do
         begin
            with Titulos[i] do
            begin

               //ACedenteCodigo := dmFinancas.qryCedentesCodigo.Value;
               ANossoNumero   := NossoNumero;
               //Formatar(NossoNumero,dmFinancas.qryTitulosNossoNumero.Size,false,'0');

                   With cdsTitulos do
                    begin
                         DisableControls;
                         Append;
                         FieldByName('CDS_NOSSONUMERO').AsString := aNossoNumero;
                         FieldByName('CDS_DTVENC').AsDateTime    := DataVencimento;
                         FieldByName('CDS_DTPAGA').AsDateTime    := DataOcorrencia;
                         FieldByName('CDS_DTCRED').AsDateTime    := DataCredito;
                         FieldByName('CDS_OUTRAS_DESPESAS').AsFloat := ValorOutrasDespesas;
                         FieldByName('CDS_IOF_DESCONTO').AsFloat    := ValorIOF;
                         FieldByName('CDS_VLABATIMENTO').AsFloat    := ValorAbatimento;
                         FieldByName('CDS_VLDESC').AsFloat          := ValorDesconto;
                         FieldByName('CDS_VALOR_DOCUMENTO').AsFloat := ValorDocumento;
                         FieldByName('CDS_VLRECEBIDO').AsFloat      := ValorDocumento;
                         FieldByName('CDS_JUROS_MORA').AsFloat      := ValorMoraJuros;
                         FieldByName('CDS_OUTROS_RECEBIMENTOS').AsFloat := ValorOutrosCreditos;
                         //
                         Post;
                         EnableControls;
                    End;
            end; {with Titulos[i]}
         end; {for I := 0 to (Count - 1)}

      end; {with Retorno}
      result := True;
   EXCEPT
      Raise;
   END;

end;

procedure TdmPesquisas.dspGrupoUsuariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'GRUPOS_USUARIOS';
end;

function TdmPesquisas.GetMovCaixaModalidades2(aCaixa, aModalidade,
  aRegInicial, aRegFinal: Integer; aTipoMov1, aTipoMov2, aEntSai: String): double;
Var
    M_TOENTR, M_TOSAID, M_TOCRED : Double;
begin
     Result := 0;
     M_TOENTR := 0;
     M_TOSAID := 0;
     M_TOCRED := 0;
     //
     With cdsMovModalidade2 do
      begin
           Active := False;
           Params.ParamByName('pRGINICIAL').AsInteger := aRegInicial;
           Params.ParamByName('pRGFINAL').AsInteger   := aRegFinal;
           Params.ParamByName('pCAIXA').AsInteger     := aCaixa;
           Params.ParamByName('pMODALIDADE').AsInteger := aModalidade;
           Params.ParamByName('pTIPOMOV1').AsString   := aTipoMov1;
           Params.ParamByName('pTIPOMOV2').AsString   := aTipoMov2;
           Active := True;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 While not (Eof) do
                  begin
                       If (aEntSai = 'E') Then
                        begin
                             If (FieldByName('MCA_TIPOMOV').AsString = 'P')
                               or (FieldByName('MCA_TIPOMOV').AsString = 'E') Then
                                   M_TOENTR := M_TOENTR + fieldByName('VALOR').AsFloat;
                        End;
                        //
                       If (aEntSai = 'S') Then
                        begin
                             If (FieldByName('MCA_TIPOMOV').AsString = 'S')
                                 or (FieldByName('MCA_TIPOMOV').AsString = 'T') Then
                                 M_TOSAID := M_TOSAID + fieldByName('VALOR').AsFloat;
                        End;
                       //
                       next;
                  End;
                  //
                  With cdsMovModaCredito do
                    begin
                         Active := False;
                         CommandText := 'Select MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV, Sum(MC.MCA_VLMODALIDADE) AS VALOR ';
                         CommandText := CommandText +'from MOVIMENTO_CAIXA MC INNER JOIN MODALIDADE M ON MC.MCA_MODALIDADE = M.MOD_CODIGO ';
                         CommandText := CommandText +'Where (MC.MCA_SEQUENCIA >= :pRGINICIAL) and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND ';
                         CommandText := CommandText +'(MC.MCA_CAIXA = :pCAIXA) and (MC.MCA_MODALIDADE = :pMODALIDADE) and ';
                         CommandText := CommandText +'(MC.MCA_TIPOMOV = :pTIPOMOV1) Group by MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV ';
                         Params.ParamByName('pRGINICIAL').AsInteger := aRegInicial;
                         Params.ParamByName('pRGFINAL').AsInteger   := aRegFinal;
                         Params.ParamByName('pCAIXA').AsInteger     := aCaixa;
                         Params.ParamByName('pMODALIDADE').AsInteger := aModalidade;
                         Params.ParamByName('pTIPOMOV1').AsString   := 'C';
                         Active := True;
                         //
                         If not (IsEmpty) Then
                          begin
                               First;
                               While not (Eof) do
                                begin
                                     M_TOCRED := M_TOCRED + fieldByName('VALOR').AsFloat;
                                     //
                                     Next;
                                End;
                          End;
                    End;
                 //
                 If (aEntSai = 'E') Then
                    Result := M_TOENTR + M_TOCRED;
                 If (aEntSai = 'S') Then
                    Result := M_TOSAID;
            End;

      End;
end;

function TdmPesquisas.ConsultaNossoNumero(iBanco : Integer; aNumero : String): boolean;
begin
     Result := False;
     With cdsNossoNumero do
      begin
           Active := False;
           Params.ParamByName('pNosso').AsString   := aNumero;
           Params.ParamByName('pcdbanc').AsInteger := iBanco;
           Params.ParamByName('pPosicao').AsString  := 'A' ;
           Active := True;
           //
           If not (IsEmpty) and (RecordCount > 1) Then
              Result := True;
      End;
end;

procedure TdmPesquisas.cdsNossoNumeroCalcFields(DataSet: TDataSet);
begin
     // Taxa adm
     If (cdsNossoNumeroCOT_TAXA_ADM.AsFloat > 0) Then
         cdsNossoNumeroTXADM.AsFloat :=
              uFuncoes.Gerapercentual(cdsNossoNumeroREC_VLPARC.AsFloat, cdsNossoNumeroCOT_TAXA_ADM.AsFloat)
     Else
         cdsNossoNumeroTXADM.AsFloat := 0;
     // Taxa fundo
     If (cdsNossoNumeroCOT_FUNDORES.AsFloat > 0) Then
        cdsNossoNumeroCOT_FUNDORES.AsFloat :=
              uFuncoes.Gerapercentual(cdsNossoNumeroREC_VLPARC.AsFloat, cdsNossoNumeroCOT_FUNDORES.AsFloat)
     Else
        cdsNossoNumeroCOT_FUNDORES.AsFloat := 0;
     //    Tota a Pagar
     if (cdsNossoNumeroREC_VLPARC.AsFloat > 0) Then
        cdsNossoNumeroVLPAGAR.AsFloat :=  uFuncoes.Arredondar((
             cdsNossoNumeroREC_VLPARC.AsFloat +
             cdsNossoNumeroTXADM.AsFloat +
             cdsNossoNumeroCOT_FUNDORES.AsFloat),2)  // - cdsConsultaCotaREC_CREDITO.AsFloat
      Else
          cdsNossoNumeroVLPAGAR.AsFloat :=
             cdsNossoNumeroREC_VLPARC.AsFloat;

end;

function TdmPesquisas.ConsultaNossoNumeroBaixado(iBanco: Integer;
  aNumero: String): boolean;
begin
     Result := False;
     With cdsBaixaNosso do
      begin
           Active := False;
           Params.ParamByName('pNosso').AsString   := aNumero;
           Params.ParamByName('pcdbanc').AsInteger := iBanco;
           Active := True;
           //
           If not (IsEmpty) and (RecordCount > 1) Then
              Result := True;
      End;
end;

procedure TdmPesquisas.cdsBaixaNossoCalcFields(DataSet: TDataSet);
begin
     If (cdsBaixaNosso.State = dsinternalcalc) then
     begin
       // Taxa adm
       If (cdsBaixaNossoCOT_TAXA_ADM.AsFloat > 0) Then
         cdsBaixaNossoTXADM.AsFloat :=
              uFuncoes.Gerapercentual(cdsBaixaNossoREC_VLPARC.AsFloat, cdsBaixaNossoCOT_TAXA_ADM.AsFloat)
       Else
         cdsBaixaNossoTXADM.AsFloat := 0;
     // Taxa fundo
     If (cdsBaixaNossoCOT_FUNDORES.AsFloat > 0) Then
        cdsBaixaNossoCOT_FUNDORES.AsFloat :=
              uFuncoes.Gerapercentual(cdsBaixaNossoREC_VLPARC.AsFloat, cdsBaixaNossoCOT_FUNDORES.AsFloat)
     Else
        cdsBaixaNossoCOT_FUNDORES.AsFloat := 0;
     //    Tota a Pagar
     if (cdsBaixaNossoREC_VLPARC.AsFloat > 0) Then
        cdsBaixaNossoVLPAGAR.AsFloat :=  uFuncoes.Arredondar((
             cdsBaixaNossoREC_VLPARC.AsFloat +
             cdsBaixaNossoTXADM.AsFloat +
             cdsBaixaNossoCOT_FUNDORES.AsFloat),2)  // - cdsConsultaCotaREC_CREDITO.AsFloat
      Else
          cdsBaixaNossoVLPAGAR.AsFloat :=
             cdsNossoNumeroREC_VLPARC.AsFloat;
     End;
end;

procedure TdmPesquisas.dspAtualizaSaldoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'PARCELAS';
end;

function TdmPesquisas.AtualizarSaldoCliente(aCDS:  TClientDataSet;
     fValorSaldo: Double): Boolean;
Var
   fTotal, fValorPago : Double;
   aTexto : String;
   idVenda, idGrupo, idCota, iNRPARC : Integer;
   aHoraMov : String;
   aDataMov : TDatetime;
begin
    result := False;
    try
        fTotal := fValorSaldo;
        aTexto := 'Select * from PARCELAS where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC)';
        aHoraMov := Copy(TimetoStr(time),1,5);
        aDataMov := Date();
        //
        With aCDS do
        begin
             DisableControls;
             Last;  // vai para ultimo registro
             While (fTotal > 0) or not (Bof) do
             begin
                  idVenda := FieldByName('REC_NRVEND').AsInteger;
                  idGrupo := FieldByName('REC_CDGRUP').AsInteger;
                  idCota  := FieldByName('REC_NRCOTA').AsInteger;
                  iNRPARC := FieldByName('REC_NRPARC').AsInteger;
                  //
                  With cdsAtualizaSaldo do
                   begin
                        Close;
                        CommandText := aTexto;
                        Params.ParamByName('pNRVEND').AsInteger := idVenda;
                        Params.ParamByName('pCDGRUP').AsInteger := idGrupo;
                        Params.ParamByName('pNRCOTA').AsInteger := idCota;
                        Params.ParamByName('pNRPARC').AsInteger := iNRPARC;
                        Open;
                        //
                        if not (IsEmpty) Then
                        begin
                             if (fTotal > 0) Then
                             begin
                                  {If (FieldByName('REC_TOTAL_PAGO').AsFloat = 0)
                                   or uFuncoes.Empty(FieldByName('REC_TOTAL_PAGO').AsString) Then
                                  begin}
                                    Edit;
                                    if (fTotal > aCDS.FieldByName('REC_TOTAL_CALC').AsFloat) Then
                                      begin
                                          fValorPago := aCDS.FieldByName('REC_TOTAL_CALC').AsFloat;
                                          FieldByName('REC_TOTAL_PAGO').AsFloat  := fValorPago;
                                          if (FieldByName('REC_CREDITO').AsFloat > 0) Then
                                              FieldByName('REC_CREDITO').Clear;
                                          FieldByName('REC_FORMABAIXA').AsString := 'S';
                                          FieldByName('REC_TPCREDITO').Clear;
                                          FieldByName('REC_DTCREDITO').Clear;
                                          FieldByName('REC_HOPAGA').AsString     := aHoraMov;
                                          FieldByName('REC_DTPAGA').AsDateTime   := aDataMov;
                                      End
                                     Else
                                      begin
                                          fValorPago := fTotal;
                                          FieldByName('REC_DTCREDITO').AsDateTime := aDataMov;
                                          FieldByName('REC_CREDITO').AsFloat      := fValorPago;
                                          FieldByName('REC_TPCREDITO').AsString   := 'S';
                                          FieldByName('REC_FORMABAIXA').Clear;
                                          FieldByName('REC_TOTAL_PAGO').Clear;
                                          FieldByName('REC_HOPAGA').Clear;
                                          FieldByName('REC_DTPAGA').Clear;
                                      End;
                                     //
                                     ApplyUpdates(0);
                                     //
                                     fTotal := fTotal - fValorPago;
                                  //End;
                             End
                             Else
                             begin
                                  if ((FieldByName('REC_TOTAL_PAGO').asFloat > 0) and (FieldByName('REC_FORMABAIXA').AsString  = 'S'))
                                     or ((FieldByName('REC_CREDITO').AsFloat > 0) and (FieldByName('REC_TPCREDITO').AsString = 'S')) Then
                                   begin
                                        Edit;
                                        FieldByName('REC_TPCREDITO').Clear;
                                        FieldByName('REC_FORMABAIXA').Clear;
                                        FieldByName('REC_TOTAL_PAGO').Clear;
                                        FieldByName('REC_CREDITO').Clear;
                                        FieldByName('REC_HOPAGA').Clear;
                                        FieldByName('REC_DTPAGA').Clear;
                                        //
                                        ApplyUpdates(0);
                                   End;
                             End;
                        End;
                        //
                        Close;
                   End;
                  //
                  Prior;
             End;
             //
             EnableControls;
        End;
        //
    Except
         on e: exception do
          begin
              Application.MessageBox(PChar('Erro ao tentar atualizar saldo do cliente!!! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          End;
    End;
end;

function TdmPesquisas.ZerarSaldoCliente(aCDS: TClientDataSet;
  iVenda: Integer): Boolean;
Var
   fTotal, fValorPago : Double;
   aTexto : String;
   idGrupo, idCota, iNRPARC : Integer;
   aHoraMov : String;
   aDataMov : TDatetime;
begin
    result := False;
    try
        aTexto := 'Select * from PARCELAS where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC)';
        aHoraMov := Copy(TimetoStr(time),1,5);
        aDataMov := Date();
        //
        With aCDS do
        begin
             DisableControls;
             Last;  // vai para ultimo registro
             While not (Bof) do
             begin
                  //idVenda := FieldByName('REC_NRVEND').AsInteger;
                  idGrupo := FieldByName('REC_CDGRUP').AsInteger;
                  idCota  := FieldByName('REC_NRCOTA').AsInteger;
                  iNRPARC := FieldByName('REC_NRPARC').AsInteger;
                  //
                  With cdsAtualizaSaldo do
                   begin
                        Close;
                        CommandText := aTexto;
                        Params.ParamByName('pNRVEND').AsInteger := iVenda;
                        Params.ParamByName('pCDGRUP').AsInteger := idGrupo;
                        Params.ParamByName('pNRCOTA').AsInteger := idCota;
                        Params.ParamByName('pNRPARC').AsInteger := iNRPARC;
                        Open;
                        //
                        if not (IsEmpty) Then
                        begin
                             If ((FieldByName('REC_TOTAL_PAGO').asFloat > 0) and (FieldByName('REC_FORMABAIXA').AsString  = 'S'))
                                     or ((FieldByName('REC_CREDITO').AsFloat > 0) and (FieldByName('REC_TPCREDITO').AsString = 'S')) Then
                              begin
                                   Edit;
                                   FieldByName('REC_TPCREDITO').Clear;
                                   FieldByName('REC_FORMABAIXA').Clear;
                                   FieldByName('REC_TOTAL_PAGO').Clear;
                                   FieldByName('REC_CREDITO').Clear;
                                   FieldByName('REC_HOPAGA').Clear;
                                   FieldByName('REC_DTPAGA').Clear;
                                   //
                                   ApplyUpdates(0);
                              End;
                        End;
                        //
                        Close;
                   End;
                  //
                  Prior;
             End;
             //
             EnableControls;
        End;
        //
    Except
         on e: exception do
          begin
              Application.MessageBox(PChar('Erro ao tentar atualizar saldo do cliente!!! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          End;
    End;
end;

function TdmPesquisas.GetVerificaSaldoDevedorCliente(aCDS: TClientDataSet;
  fValorSaldo: Double): Boolean;
Var
   M_TOSALDO : Double;
begin
      Result := false;
      M_TOSALDO := 0;
      //
      With aCDS do
        begin
             DisableControls;
             First;
             While not (Eof) do
             begin
                 if (aCDS.FieldByName('REC_TOTAL_CALC').AsFloat = 0) or
                     (aCDS.FieldByName('REC_DTPAGA').IsNull) Then
                       M_TOSALDO := M_TOSALDO + aCDS.FieldByName('REC_TOTAL_CALC').AsFloat;
                 //
                 next;
             End;
             //
             EnableControls;
        End;
        //
        If (fValorSaldo < M_TOSALDO) Then
            Result := true
        Else
            Application.MessageBox(PChar('Saldo devedor: ' + FormatFloat('###,##0.#0', M_TOSALDO)+#13+
                                  'Saldo digitado: ' + FormatFloat('###,##0.#0', fValorSaldo)),
                                  'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
end;

function TdmPesquisas.GetMovCaixaModalidades2ContaPagar(aCaixa,
  aModalidade, aRegInicial, aRegFinal: Integer; aTipoMov1,
  aEntSai: String): double;
Var
    M_TOENTR, M_TOSAID, M_TOCRED : Double;
    qraux : TSQLquery;
    texto : string;
begin
     Result := 0;
     M_TOENTR := 0;
     M_TOSAID := 0;
     M_TOCRED := 0;
     //
     texto  := 'Select MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV, Sum(MC.MCA_VLMODALIDADE) AS VALOR from MOVIMENTO_CAIXA ';
     texto  := texto  +  ' MC INNER JOIN MODALIDADE M ON MC.MCA_MODALIDADE = M.MOD_CODIGO Where (MC.MCA_SEQUENCIA >= :pRGINICIAL) ';
     texto  := texto  +  ' and (MC.MCA_SEQUENCIA <= :pRGFINAL) AND  (MC.MCA_CAIXA = :pCAIXA) and (MC.MCA_MODALIDADE = :pMODALIDADE) ';
     texto  := texto  +  ' and (MC.MCA_TIPOMOV = :pTIPOMOV1) Group by MC.MCA_MODALIDADE, M.MOD_NOME, MC.MCA_TIPOMOV ';
     //
     QrAux := TSqlquery.Create(nil);
     with QrAux do
      try
           SQLConnection := dmAdmDados.sqlConn;
           sql.Add(texto);
           Params.ParamByName('pRGINICIAL').AsInteger := aRegInicial;
           Params.ParamByName('pRGFINAL').AsInteger   := aRegFinal;
           Params.ParamByName('pCAIXA').AsInteger     := aCaixa;
           Params.ParamByName('pMODALIDADE').AsInteger := aModalidade;
           Params.ParamByName('pTIPOMOV1').AsString   := aTipoMov1;
           Active := True;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 While not (Eof) do
                  begin
                       If (aEntSai = 'E') Then
                          If (FieldByName('MCA_TIPOMOV').AsString = 'N') Then
                                 M_TOENTR := M_TOENTR + fieldByName('VALOR').AsFloat;
                        //
                       If (aEntSai = 'S') Then
                             If (FieldByName('MCA_TIPOMOV').AsString = 'G') Then
                                 M_TOSAID := M_TOSAID + fieldByName('VALOR').AsFloat;
                       //
                       next;
                  End;
                  //
                 //
                 If (aEntSai = 'E') Then
                    Result := M_TOENTR;
                 If (aEntSai = 'S') Then
                    Result := M_TOSAID;
            End;
      finally
          free;
      end;
end;

end.
