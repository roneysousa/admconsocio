program AdmConsocio;

uses
  Forms,
  Windows,
  Messages,
  Dialogs,
  SysUtils,
  Variants,
  Classes,
  Controls,
  udmAdmDados in 'udmAdmDados.pas' {dmAdmDados: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  uDmPesquisas in 'uDmPesquisas.pas' {dmPesquisas: TDataModule},
  uFrmAdmMain in 'uFrmAdmMain.pas' {frmMain},
  udmRelatorios in 'udmRelatorios.pas' {dmRelatorios: TDataModule},
  uFrmCadastro in 'uFrmCadastro.pas' {frmCadastro},
  uFrmCadBancos in 'uFrmCadBancos.pas' {frmCadBancos},
  uFrmCadClientes in 'uFrmCadClientes.pas' {frmCadClientes},
  uFrmCadGrupos in 'uFrmCadGrupos.pas' {frmCadGrupo},
  uFrmCadModelos in 'uFrmCadModelos.pas' {frmCadModelos},
  uFrmConfiguracoes in 'uFrmConfiguracoes.pas' {frmConfig},
  uFrmVendas in 'uFrmVendas.pas' {frmVendas},
  uFrmLocPadrao in 'uFrmLocPadrao.pas' {frmLocalizaPadrao},
  uFrmLocClientes in 'uFrmLocClientes.pas' {frmLocCliente},
  uFrmLocGrupos in 'uFrmLocGrupos.pas' {frmLocGrupos},
  uFrmBaixaEstornoPC in 'uFrmBaixaEstornoPC.pas' {frmBaixaEstornoParcelas},
  uFrmBaixaEstorno in 'uFrmBaixaEstorno.pas' {frmBaixaEstorno},
  uFrmCadastro2 in 'uFrmCadastro2.pas' {frmCad},
  uFrmConsulta in 'uFrmConsulta.pas' {frmConsulta},
  uFrmConsGrupos in 'uFrmConsGrupos.pas' {frmConsGrupos},
  uFrmModRelatorio in 'uFrmModRelatorio.pas' {frmModRelatorio},
  uFrmLancamentoLance in 'uFrmLancamentoLance.pas' {frmLancamentoLance},
  uFrmRelLances in 'uFrmRelLances.pas' {frmModRelLance},
  uFrmMovCadContemplacao in 'uFrmMovCadContemplacao.pas' {frmCadContemplacao},
  uFrmRelClientes in 'uFrmRelClientes.pas' {frmRelClientes},
  uFrmEmissaoSlipBanc in 'uFrmEmissaoSlipBanc.pas' {FrmEmissaoSlipBanc},
  uFrmMovAlienacao in 'uFrmMovAlienacao.pas' {frmMovAlienacao},
  uFrmCorrecaoParcelas in 'uFrmCorrecaoParcelas.pas' {frmCorrecaoParcela},
  uFrmSobre in 'uFrmSobre.pas' {frmSobre},
  uFrmCadUsuario in 'uFrmCadUsuario.pas' {frmCadUsuarios},
  uFrmMovCorrecaoParcelas in 'uFrmMovCorrecaoParcelas.pas' {frmCorrecaoParcelas},
  uFrmParametros in 'uFrmParametros.pas' {frmParametros},
  uLogon in 'uLogon.pas' {frmLogon},
  uFrmImporta in 'uFrmImporta.pas' {frmImporta},
  uFrmConsultaCota in 'uFrmConsultaCota.pas' {frmConsCotas},
  uFrmRelAtrasadasGruposCotas2 in 'uFrmRelAtrasadasGruposCotas2.pas' {frmRelAtrasadasGruposCotas2},
  uCodBarras in 'uCodBarras.pas',
  uFrmCaixaBaixaEstornarLances in 'uFrmCaixaBaixaEstornarLances.pas' {FrmCaixaBaixaEstornarLances},
  uFrmRelCotaGrupo in 'uFrmRelCotaGrupo.pas' {frmRelCotaGrupo},
  uFrmRelCorrespondenciasDiversas in 'uFrmRelCorrespondenciasDiversas.pas' {frmRelCorresDiversas},
  uFrmCadCartaAviso in 'uFrmCadCartaAviso.pas' {frmCadCartaAviso},
  uFrmCadModalidades in 'uFrmCadModalidades.pas' {frmCadModalidade},
  uFrmAbrirCaixa in 'uFrmAbrirCaixa.pas' {frmOpenCaixa},
  uFrmConsUsuarios in 'uFrmConsUsuarios.pas' {frmConsUsuarios},
  uFrmFecharCaixa in 'uFrmFecharCaixa.pas' {frmFecharCaixa},
  uFrmCadNaturezas in 'uFrmCadNaturezas.pas' {frmCadaNaturezas},
  uFrmCadPermissoes in 'uFrmCadPermissoes.pas' {frmCadPermissoes},
  uFrmEntradasSaidas in 'uFrmEntradasSaidas.pas' {frmEntradasSaidaCaixa},
  uFrmRelMovCaixa in 'uFrmRelMovCaixa.pas' {frmRelMovCaixa},
  uFrmMovDesalienacao in 'uFrmMovDesalienacao.pas' {frmMovDesalienacao},
  uFrmRel2ViaEntSaida in 'uFrmRel2ViaEntSaida.pas' {frmRelMovEntradaSaida},
  uFrmBaixaBanco in 'uFrmBaixaBanco.pas' {frmBaixaBanco},
  uFrmConsBancos in 'uFrmConsBancos.pas' {frmConsBancos},
  uFrmTarefaUsuario in 'uFrmTarefaUsuario.pas' {frmTarefaUsuarios},
  uFrmSituacaoCaixa in 'uFrmSituacaoCaixa.pas' {frmSituacaoCaixa},
  uFrmContasRecebidas in 'uFrmContasRecebidas.pas' {frmRelContasRecebidas},
  uFrmRelAtrasadas in 'uFrmRelAtrasadas.pas' {frmRelAtrasadas},
  uFrmRelAvencer in 'uFrmRelAvencer.pas' {frmRelPCVencer},
  uFrmCadGruposUsuarios in 'uFrmCadGruposUsuarios.pas' {frmCadGruposUsuarios},
  uFrmBaixaEstBanco in 'uFrmBaixaEstBanco.pas' {frmBaixaEstBanco},
  uFrmAutenticarUsuario in 'uFrmAutenticarUsuario.pas' {frmAutenticarAdm},
  uFrmRecibo in 'uFrmRecibo.pas' {frmRecibos},
  uFrmBoletosClientes in 'uFrmBoletosClientes.pas' {frmBoletosClientes},
  uFrmAutenticarDoc in 'uFrmAutenticarDoc.pas' {frmAutenticar},
  untFrmPreview in 'untFrmPreview.pas' {FrmPreview},
  untFrmPrint in 'untFrmPrint.pas' {FrmPrint},
  frmSelecionaCliente in 'frmSelecionaCliente.pas' {frmSelCliente},
  uFrmSelClientes in 'uFrmSelClientes.pas' {frmSelClientes2},
  uFrmTransferencia in 'uFrmTransferencia.pas' {frmTransferencia},
  uFrmHistoricoSaldo in 'uFrmHistoricoSaldo.pas' {frmHisSaldo},
  uFrmBackup in 'uFrmBackup.pas' {frmBackup},
  uFrmDados in 'uFrmDados.pas' {frmDados},
  uFrmPesquisaCliente in 'uFrmPesquisaCliente.pas' {frmPesClientes},
  uFrmRelMovCaixaDiario in 'uFrmRelMovCaixaDiario.pas' {frmRelMovCaixaDiario},
  uFrmAlterarDataPagamento in 'uFrmAlterarDataPagamento.pas' {frmAlterarData},
  uFrmGeraBoletoAvulso in 'uFrmGeraBoletoAvulso.pas' {frmBoletoAvulso},
  uFrmEditaSaldo in 'uFrmEditaSaldo.pas' {frmEditaSaldo},
  uFrmRelParcelasEstornadas in 'uFrmRelParcelasEstornadas.pas' {FrmRelParcelaEstornadas},
  uFrmAtualizaBanco in 'uFrmAtualizaBanco.pas' {frmAtualizarBanco},
  uFrmRelTotalRecGrupo in 'uFrmRelTotalRecGrupo.pas' {FrmRelTotalRecGrupo},
  uFrmCadFornecedores in 'uFrmCadFornecedores.pas' {frmCadFornecedores},
  uFrmPadraoIncContas in 'uFrmPadraoIncContas.pas' {FrmPadraoIncContas},
  uFrmIncContasPagar in 'uFrmIncContasPagar.pas' {FrmIncContasPagar},
  uFrmLocFornecedor in 'uFrmLocFornecedor.pas',
  uFrmLocalizar in 'uFrmLocalizar.pas' {frmConsultas},
  uFrmManutencaoContasPadrao in 'uFrmManutencaoContasPadrao.pas' {FrmManutencaoContasPadrao},
  uFrmEditarContaPagar in 'uFrmEditarContaPagar.pas' {FrmEditarContaPagar},
  uFrmManutContasPagarNovo in 'uFrmManutContasPagarNovo.pas' {FrmManutContasPagarNovo},
  uFrmAutenticarDocCP in 'uFrmAutenticarDocCP.pas' {FrmAutenticarDocCP},
  uFrmSelecionarBanco in 'uFrmSelecionarBanco.pas' {FrmSelecionarBanco};

{$R *.res}

Var
   hMutex : LongWord;

begin
    hMutex := CreateMutex(nil,False,'OneInstance');

   { if WaitForSingleObject(hMutex,0) <> WAIT_TIMEOUT then
    begin}
         Application.Initialize;
         Application.Title := 'InfoG2 AdmConsocio';
         Application.CreateForm(TdmAdmDados, dmAdmDados);
  Application.CreateForm(TdmPesquisas, dmPesquisas);
  Application.CreateForm(TdmRelatorios, dmRelatorios);
  //
         frmLogon := TfrmLogon.Create(nil);
         if frmLogon.ShowModal = mrOk then
         begin
              Application.CreateForm(TfrmMain, frmMain);
              uFrmAdmMain.M_CDUSUA := uFuncoes.StrZero(InttoStr(uLogon.codigoUsuario),3);
              uFrmAdmMain.M_NMUSUA := uLogon.nomeUsuario;
              uFrmAdmMain.admin    := uLogon.administrador;
              FreeAndNil(frmLogon);
              Application.Run;
         end
         else
         begin
              FreeAndNil(dmRelatorios);
              FreeAndNil(dmPesquisas);
              FreeAndNil(dmAdmDados);
              //
              Application.Terminate;
         End;
  {  End
    else
        MessageDlg('Aplicativo já está sendo executado!!!', mtInformation, [mbOK], 0);}
end.
