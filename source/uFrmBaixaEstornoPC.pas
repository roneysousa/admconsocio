unit uFrmBaixaEstornoPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids, DBGrids, Mask, DBCtrls,
  DB, FMTBcd, DBClient, Provider, SqlExpr, RXDBCtrl, Menus;

type
  TfrmBaixaEstornoParcelas = class(TForm)
    pnlProcurar: TPanel;
    lblConsultar: TLabel;
    Label27: TLabel;
    edtGrupo: TEdit;
    btnConsultar: TBitBtn;
    edtVenda: TEdit;
    Label1: TLabel;
    edtCota: TEdit;
    Label2: TLabel;
    edtParcela: TEdit;
    Label3: TLabel;
    edtNossoNumero: TEdit;
    pnlDadosCliente: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNmclie: TEdit;
    Label9: TLabel;
    StatusBar1: TStatusBar;
    grdConsultar: TDBGrid;
    dbeCOTA: TDBEdit;
    dbePLANO: TDBEdit;
    dsVendaContas: TDataSource;
    dbeNrVenda: TDBEdit;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    dbeSituacao: TDBEdit;
    dsParcelas: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    dsConsultar: TDataSource;
    Panel1: TPanel;
    Label11: TLabel;
    edtLocParcela: TEdit;
    btnBaixa: TBitBtn;
    btnEstorna: TBitBtn;
    btnRecibo: TBitBtn;
    BtSair: TBitBtn;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    Grupos1: TMenuItem;
    Cliente1: TMenuItem;
    Vendas1: TMenuItem;
    Parametro1: TMenuItem;
    DBEdit1: TDBEdit;
    dbeGrupo: TDBEdit;
    btnVia: TBitBtn;
    rbSituacao: TRadioGroup;
    Panel2: TPanel;
    Label12: TLabel;
    lblTot: TLabel;
    lblRegistros: TLabel;
    lblTotal: TLabel;
    DBNavigator1: TDBNavigator;
    btBanco: TBitBtn;
    Label13: TLabel;
    cmbBancos: TComboBox;
    Label14: TLabel;
    edtCont: TEdit;
    Label15: TLabel;
    edtSPC: TEdit;
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure dsParcelasDataChange(Sender: TObject; Field: TField);
    procedure edtLocParcelaChange(Sender: TObject);
    procedure edtLocParcelaKeyPress(Sender: TObject; var Key: Char);
    procedure btnBaixaClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure btnEstornaClick(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure edtVendaChange(Sender: TObject);
    procedure edtParcelaChange(Sender: TObject);
    procedure edtNossoNumeroChange(Sender: TObject);
    procedure dsParcelasStateChange(Sender: TObject);
    procedure edtCotaExit(Sender: TObject);
    procedure edtVendaExit(Sender: TObject);
    procedure edtCotaKeyPress(Sender: TObject; var Key: Char);
    procedure btnViaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edtNossoNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edtNossoNumeroEnter(Sender: TObject);
    procedure edtVendaEnter(Sender: TObject);
    procedure edtCotaEnter(Sender: TObject);
    procedure edtVendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtGrupoEnter(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtParcelaExit(Sender: TObject);
    procedure edtNossoNumeroExit(Sender: TObject);
    procedure edtParcelaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Registro;
    procedure MOSTRAR;
    function LocGrupoCota(M_CDGRUP, M_NRCOTA : integer) : Boolean;
    function Localiza_NossoNumero(aBanco, aNossoNumero : String) : Boolean;    
    Procedure Limpar;
  public
    { Public declarations }
    procedure busca(M_NRVEND : Integer);
    procedure MostraParcela(aVenda, aGrupo, aCota : Integer; aSituacao : String);
    function Situacao(aTipo : Integer) : String;
  end;

var
  frmBaixaEstornoParcelas: TfrmBaixaEstornoParcelas;
  novo, alterar, apagar : String;
  M_NRFROM, M_NRPARC : Integer;

implementation

uses udmAdmDados, uFuncoes, uDmPesquisas, uFrmAdmMain, uFrmBaixaEstorno,
  udmRelatorios, uFrmCadGrupos, uFrmCadClientes, uFrmVendas,
  uFrmBaixaEstBanco, uFrmAutenticarUsuario, frmSelecionaCliente,
  uFrmSelClientes;

{$R *.dfm}

procedure TfrmBaixaEstornoParcelas.btnBaixaClick(Sender: TObject);
begin
   if uFuncoes.Empty(edtGrupo.Text) Then
    begin
         edtGrupo.SetFocus;
         raise Exception.Create('Digite o c�digo do grupo.');
    End;
   //
   if uFuncoes.Empty(edtCota.Text) Then
    begin
         edtCota.SetFocus;
         raise Exception.Create('Digite o n�mero da cota.');
    End;
   //
   If (dmAdmDados.Verificar_PC_Paga(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger)) Then
      begin
           Application.MessageBox(PChar('Parcela j� baixada.'),
                       'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           busca(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger);
           Exit;
      End;
   //
  //if not (dmPesquisas.cdsConsultaCota.IsEmpty) and (cdsConsultarCOT_POSICAO.AsString = 'A') Then
   if not (dmPesquisas.cdsConsultaCota.IsEmpty) and (dbeSituacao.Text = 'A') Then
   begin
     //frmMain.AbreForm(TfrmBaixaEstorno,frmBaixaEstorno);
     Application.CreateForm(TfrmBaixaEstorno, frmBaixaEstorno);{Carrega form na mem�ria}
     Try
          uFrmBaixaEstorno.M_NMCLIE := edtNmclie.Text;
          frmBaixaEstorno.ShowModal;{Mostra form em modo exclusivo}
     Finally
          frmBaixaEstorno.Free; {Libera Mem�ria}
          //
          If (edtSPC.Text = 'SIM') Then
            begin
                 If not (dmAdmDados.Verificar_PC_Abertas(StrtoInt(dbeNrVenda.Text))) Then
                    if not (dmAdmDados.SetClienteSPC(StrtoInt(dbeNrVenda.Text),'N')) Then
                         Raise Exception.Create('Erro ao tentar retirar cliente do SPC.');
            End;
     End;
     //
     busca(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger);
   End
   Else
       Application.MessageBox(PChar('N�o � possivel baixar '+#13+'parcelas deste cliente.'
                          +#13'Situa��o : '+ dmAdmDados.cdsVendaContasCOT_POSICAO.AsString),
                       'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmBaixaEstornoParcelas.btnConsultarClick(Sender: TObject);
Var
   W_NRVEND, W_NRPARC : Integer;
begin
     if not uFuncoes.Empty(cmbBancos.Text) and not uFuncoes.Empty(edtNossoNumero.Text) then
     begin
          If (dmPesquisas.ConsultaNossoNumero(StrtoInt(Copy(cmbBancos.Text,1,3)), edtNossoNumero.Text)) Then
           begin
               frmSelCliente := TfrmSelCliente.create ( application );
               try
                   frmSelCliente.ShowModal;
               finally
                   If not (dmPesquisas.cdsNossoNumero.IsEmpty) Then
                    begin
                         W_NRVEND := dmPesquisas.cdsNossoNumeroREC_NRVEND.AsInteger;
                         W_NRPARC := dmPesquisas.cdsNossoNumeroREC_NRPARC.AsInteger;
                         busca(W_NRVEND);
                         dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC', W_NRPARC, []);
                    End;
                   frmSelCliente.Release;
                   frmSelCliente := nil;
                   //
               end;
               //
               grdConsultar.SetFocus; 
               Exit;
           End;
     End;
     // grupo e cota
     if not uFuncoes.Empty(edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text) then
        if (LocGrupoCota(Strtoint(edtGrupo.Text),Strtoint(edtCota.Text))) Then
            W_NRVEND := cdsConsultarCOT_NRVENDA.AsInteger;
     //
     if not uFuncoes.Empty(edtVenda.Text) then
            W_NRVEND := StrtoInt(edtVenda.Text);
     //
     if not uFuncoes.Empty(edtVenda.Text)
      and not uFuncoes.Empty (edtParcela.Text) then
            W_NRVEND := StrtoInt(edtVenda.Text);
     //
     if uFuncoes.Empty(edtGrupo.Text) and uFuncoes.Empty(edtCota.Text)
         and not uFuncoes.Empty(edtNossoNumero.Text) then
            if (Localiza_NossoNumero(Copy(cmbBancos.Text,1,3) ,edtNossoNumero.Text)) Then
             Begin
                  edtGrupo.Text := cdsConsultarCOT_CDGRUPO.AsString;
                  edtCota.Text  := cdsConsultarCOT_NRCOTA.AsString;
                  W_NRVEND := cdsConsultarCOT_NRVENDA.AsInteger;
             End
            Else
            begin
                W_NRVEND := 0;
                {Application.MessageBox(PChar('Banco ou Nosso N�mero inv�lido.'),
                          'Aten��o', MB_OK+MB_ICONWARNING+MB_APPLMODAL);}
                //  ou Titulo j� baixado.
                rbSituacao.ItemIndex := 2;
                //
                if not uFuncoes.Empty(cmbBancos.Text) and not uFuncoes.Empty(edtNossoNumero.Text) then
                begin
                     If (dmPesquisas.ConsultaNossoNumeroBaixado(StrtoInt(Copy(cmbBancos.Text,1,3)), edtNossoNumero.Text)) Then
                      begin
                          frmSelClientes2 := TfrmSelClientes2.create ( application );
                          try
                              frmSelClientes2.ShowModal;
                          finally
                              If not (dmPesquisas.cdsBaixaNosso.IsEmpty) Then
                               begin
                                    W_NRVEND := dmPesquisas.cdsBaixaNossoREC_NRVEND.AsInteger;
                                    W_NRPARC := dmPesquisas.cdsBaixaNossoREC_NRPARC.AsInteger;
                                    busca(W_NRVEND);
                                    dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC', W_NRPARC, []);
                               End;
                              frmSelClientes2.Release;
                              frmSelClientes2 := nil;
                              //
                          end;
                          //
                          grdConsultar.SetFocus;
                          Exit;
                      End;
                End;
                //raise Exception.Create('Banco ou Nosso N�mero inv�lido ou Titulo j� baixado.')
            End;
     //
     if (W_NRVEND > 0) Then
      begin
         busca(W_NRVEND);
         if not uFuncoes.Empty(edtParcela.Text) Then
          begin
               grdConsultar.SetFocus;  
               dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC',edtParcela.Text,[]);
          End;
      End
     Else
         raise Exception.Create('Registro n�o encontrado.')
end;

procedure TfrmBaixaEstornoParcelas.btnEstornaClick(Sender: TObject);
Var
   aVenda, aCaixa, M_NRSEQU, W_NRVEND, W_NRPARC, W_CDGRUP, W_NRCOTA, W_SQCAIX, W_CDCLIE : Integer;
   M_HOMOVI, aDescricao, aDescEstorno, aDataHora : String;
   M_DTMOVI : TDate;
   iUsuarioAuto : Integer;
begin
   if uFuncoes.Empty(edtGrupo.Text) Then
    begin
         edtGrupo.SetFocus;
         Exit;
    End;
    //
   if uFuncoes.Empty(edtCota.Text) Then
    begin
         edtCota.SetFocus;
         Exit;
    End;
   //
   if not (dmPesquisas.cdsConsultaCota.IsEmpty) and (cdsConsultarCOT_POSICAO.AsString = 'A') Then
   begin
     aCaixa   := StrtoInt(uFrmAdmMain.M_CDUSUA);
     uFrmAdmMain.autenticacao := False;
     //
     If Application.MessageBox('Confirma o estornou da parcela?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
       begin
          //
          if not (uFrmAdmMain.admin) Then
            begin
                  Application.CreateForm(TfrmAutenticarAdm, frmAutenticarAdm);
                  try
                      frmAutenticarAdm.ShowModal;
                  Finally
                      iUsuarioAuto := uFrmAutenticarUsuario.iUserAutorizou;
                      frmAutenticarAdm.Free;
                  End;
            End
            Else
            begin
                 uFrmAdmMain.autenticacao := True;
                 iUsuarioAuto := aCaixa;
            End;
          //
        if not (uFrmAdmMain.autenticacao) Then
              raise Exception.Create('Premiss�o negada.')
        Else
        begin
          //
          aDataHora := DatetoStr(Date)+' - '+TimetoStr(Time) + ' - ';
          aDescEstorno := inputbox('Informe o motivo do estorno?','Justificativa:','');
          //
          if uFuncoes.Empty(aDescEstorno) Then
              aDescEstorno := 'N�o informou a justificativa do estorno.';
          //
          If (iUsuarioAuto > 0) Then
          begin
              aDescEstorno := aDescEstorno + #13 + 'Usu�rio Autorizou : '
                            +dmAdmDados.GetNomeCaixa(iUsuarioAuto);
          End;
          //
          if not (dmAdmDados.cdsConfig.Active) Then
             uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
          //
          M_NRSEQU := dmAdmDados.GetRegMovCaixa();
          W_NRVEND := dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger;
          W_CDGRUP := dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger;
          W_NRCOTA := dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger;
          W_NRPARC := dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger;
          W_CDCLIE := dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
          M_HOMOVI := Copy(TimetoStr(Time),1,5);
          M_DTMOVI := Date();
          //
          if (dmAdmDados.Estorno_Parcela_Manual(
               dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger, Date(), aDataHora + aDescEstorno)) Then
          begin
               W_SQCAIX := dmAdmDados.GetSequenciaCaixa(aCaixa);
               // Incluir movimento de caixa
               // pSEQUENCIA, pVENDA, pNRPARC, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
               //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
               // aBanco : Integer; aAgencia, aConta, aCheque
               if Not (dmAdmDados.Incluir_Movimento_Caixa(
                    M_NRSEQU, W_SQCAIX, W_NRVEND, W_NRPARC, 1, aCaixa, 6, 0, 'T', M_HOMOVI,'ESTORNO DE PAGAMENTO DE PARCELA', 'N', M_DTMOVI,
                        dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat,0, 0, '', '', '')) Then
                      raise Exception.Create('Erro ao inclui movimento de caixa.');
                    //
                    //dmAdmDados.GetSequenciaCaixa(aCaixa);
                    aDescricao := 'Estorno '+FormatFloat('###,##0.#0',dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat) + ' | Em Caixa G '+ InttoStr(W_CDGRUP) + ' | C '+ InttoStr(W_NRCOTA) + ' | P '+InttoStr(W_NRPARC);
                    dmAdmDados.SetTarefa_Usuario(aDescricao);
                    dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                    // novo 17/02/2009
                    if not (dmAdmDados.SetSaldoCliente(W_NRVEND, W_CDGRUP, W_NRCOTA,W_CDCLIE,
                        'E', dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat)) then
                       Application.MessageBox(PChar('Erro ao tentar lan�a saldo de cliente.'),
                            'Saldo', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    //
                    if not (uFrmAdmMain.admin) Then
                        dmAdmDados.AutenticacaoEstorno(M_NRSEQU)
                    Else
                        If Application.MessageBox('Imprimir autentica��o de estorno?',
                            'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                              dmAdmDados.AutenticacaoEstorno(M_NRSEQU);
                    //
                    If (dmAdmDados.Estorno_Credito_Parcela_Manual(W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC + 1, 0)) Then
                      begin
                           M_NRSEQU := dmAdmDados.GetRegMovCaixa();
                           W_SQCAIX := dmAdmDados.GetSequenciaCaixa(aCaixa);
                           //
                           if Not (dmAdmDados.Incluir_Movimento_Caixa(
                                M_NRSEQU, W_SQCAIX, W_NRVEND, W_NRPARC + 1, 1, aCaixa, 6, 0, 'T', M_HOMOVI,'ESTORNO DE CR�DITO DE PARCELA', 'N', M_DTMOVI,
                                    udmAdmDados.M_VALOR_CRED ,0, 0, '', '', '')) Then
                                  raise Exception.Create('Erro ao inclui movimento de caixa.');
                           //
                           dmAdmDados.Impressao_Estorno_Credito(M_NRSEQU, W_SQCAIX, W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC + 1);
                           //
                           udmAdmDados.M_VALOR_CRED := 0;
                      End;
                    //
                    Application.MessageBox(PChar(MSG_OK),
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          End
          else
               raise Exception.Create('Erro ao estornar parcela.');
          //
          busca(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger);
         End;
       End;
   End
   Else
       Application.MessageBox(PChar('N�o � possivel estornar '+#13+'parcelas deste cliente.'),
                       'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   //
end;

procedure TfrmBaixaEstornoParcelas.btnReciboClick(Sender: TObject);
Var
     M_CIDADE, M_UFEMPR, M_NRRECI : String;
begin
   if not (dmPesquisas.cdsConsultaCota.IsEmpty)  Then
   begin
      // Recebemos de
      //dmRelatorios := TdmRelatorios.create ( application );
      uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
      //
      dmAdmDados.cdsConfig.edit;
      dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger :=
          dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger + 1;
      dmAdmDados.cdsConfig.ApplyUpdates(0);
      //
      M_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
      M_UFEMPR := dmAdmDados.cdsConfigCFG_UF.AsString;
      M_NRRECI := uFuncoes.StrZero(dmAdmDados.cdsConfigCFG_NRRECIBO.AsString,8);
      //
      btnRecibo.Enabled := False;
      try
           With dmRelatorios do
            begin
                 Recibo_Cliente(dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger);
            end;
          //
           with dmRelatorios.ppRepRecibo do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    dmRelatorios.ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 dmRelatorios.lblRecibo.Caption := M_NRRECI;
                 dmRelatorios.lblLinha1.Caption := 'Recebemos de '+ edtNmclie.Text;
                 dmRelatorios.lblLinha2.Caption := 'A import�ncia R$ '+ FormatFloat('###,##0.#0',dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat)
                                                   +' ( '+uFuncoes.extenso(dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat)+' )';
                 dmRelatorios.lblLinha3.Caption := 'Referente a pagamento de parcela do Grupo ' + dbeGrupo.Text+'/'+ dmAdmDados.GetNomeGrupo(StrtoInt(dbeGrupo.Text)) + '  Cota ' + dbeCOTA.Text + '  relacionada abaixo:';
                 dmRelatorios.lblData.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(Date());
                 //29 de Maio de 2008';
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
                     If not uFuncoes.Empty(dmPesquisas.cdsConsultaCotaREC_MOV_CAIXA.AsString) Then
                     begin
                       uFuncoes.FilterCDS(dmPesquisas.cdsMovCaixa, fsInteger, dmPesquisas.cdsConsultaCotaREC_MOV_CAIXA.AsString);
                       //
                       If not (dmPesquisas.cdsMovCaixa.IsEmpty) Then
                          Begin
                               uFuncoes.FilterCDS(dmPesquisas.cdsModas, fsInteger, dmPesquisas.cdsMovCaixaMCA_MODALIDADE.AsString);
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
           btnRecibo.Enabled := True;
      end;
      Application.ProcessMessages;
   End;
end;

procedure TfrmBaixaEstornoParcelas.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmBaixaEstornoParcelas.busca(M_NRVEND: Integer);
begin
   try
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := M_NRVEND;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             MOSTRAR;
             //Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
             If (M_NRPARC > 0) Then
              begin
                   grdConsultar.SetFocus;
                   dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC',M_NRPARC,[]);
              End;
              //
              edtGrupo.Text := dmPesquisas.cdsConsultaCotaCOT_CDGRUPO.AsString;
              edtCota.Text  := dmPesquisas.cdsConsultaCotaCOT_NRCOTA.AsString;
           end
           Else
           begin
                edtNmclie.Clear;
                dmPesquisas.cdsConsultaCota.Close;
                raise Exception.Create('Cota n�o cadastrada ou n�o ATIVA.');
           end;
     end;
   except
        edtCota.SetFocus;
        Application.MessageBox(PChar('Registro n�o encontrado, refa�a a busca.'),
                         'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
        Exit;                 
        //raise Exception.Create('');
   End;
end;

procedure TfrmBaixaEstornoParcelas.dsParcelasDataChange(Sender: TObject;
  Field: TField);
begin
      btnRecibo.Enabled := not (dmPesquisas.cdsConsultaCotaREC_DTPAGA.IsNull);
      btnBaixa.Enabled  := (dmPesquisas.cdsConsultaCotaREC_DTPAGA.IsNull);
      btBanco.Enabled   := btnBaixa.Enabled;
      btnEstorna.Enabled  := not (dmPesquisas.cdsConsultaCotaREC_DTPAGA.IsNull);
      btnVia.Enabled    := not (dmPesquisas.cdsConsultaCota.IsEmpty) and not (dmPesquisas.cdsConsultaCotaREC_DTPAGA.IsNull);
end;

procedure TfrmBaixaEstornoParcelas.edtGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    If (key = #13) and not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           key:=#0;
           edtCota.SetFocus;
      End;
end;

procedure TfrmBaixaEstornoParcelas.edtLocParcelaChange(Sender: TObject);
begin
     if not uFuncoes.Empty(edtLocParcela.Text) then
          dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC',edtLocParcela.Text,[]);
end;

procedure TfrmBaixaEstornoParcelas.edtLocParcelaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmBaixaEstornoParcelas.FormShow(Sender: TObject);
begin
    // REGISTRO;
    if (dmPesquisas.cdsConsultaCota.Active) Then
        dmPesquisas.cdsConsultaCota.Close;
     //
     if (M_NRFROM = 1) then
        btnRecibo.Visible := False
     Else
        btnRecibo.Visible := True;
     //
      edtLocParcela.Enabled := False;
    btnVia.Enabled    := False;
    //
    dmAdmDados.ListaBancos(cmbBancos);   
end;

function TfrmBaixaEstornoParcelas.LocGrupoCota(M_CDGRUP,
  M_NRCOTA: integer): Boolean;
begin
     Result := False;
     //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA) and (CT.COT_POSICAO = '+QuotedStr('A')+') ';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsInteger := M_CDGRUP;
            datasetConsultar.Params.ParamByName('pNRCOTA').AsInteger := M_NRCOTA;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
        //
        if not (cdsConsultar.IsEmpty) then
            Result := True;
end;

procedure TfrmBaixaEstornoParcelas.MOSTRAR;
begin
     //
     edtNmclie.text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     //
     if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
      begin
         edtCont.Font.Color := clBlue;
         edtCont.Text := 'SIM';
      End
     Else
      Begin
         edtCont.Font.Color := clRed;
         edtCont.Text := 'N�O';
      End;
     //
     if (dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString = 'S') Then
      begin
         edtSPC.Font.Color := clRed;
         edtSPC.Text := 'SIM';
      End
     Else
      Begin
         edtSPC.Font.Color := clBlue;
         edtSPC.Text := 'N�O';
      End;
     //
     MostraParcela(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, 'T');
     {dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);}
     //
     {edtParcPagas.Text := InttoStr(dmPesquisas.Parcelas_Pagas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcAtras.Text := InttoStr(dmPesquisas.Parcelas_Atrasadas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcVinc.Text  := InttoStr(dmPesquisas.Parcelas_Vincendas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));}
     //

end;

procedure TfrmBaixaEstornoParcelas.Registro;
begin
     dmAdmDados.Parametros;
     With dmAdmDados.cdsVendaContas do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_VENDA.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('COT_NRVENDA','cotas')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
              MOSTRAR;
              //Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
         End;
end;

procedure TfrmBaixaEstornoParcelas.Grupos1Click(Sender: TObject);
begin
     frmMain.AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TfrmBaixaEstornoParcelas.Cliente1Click(Sender: TObject);
begin
    frmMain.AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TfrmBaixaEstornoParcelas.Vendas1Click(Sender: TObject);
begin
     frmMain.AbreForm(TfrmVendas, frmVendas);
end;

procedure TfrmBaixaEstornoParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmPesquisas.cdsConsultaCota.Close;
     dmAdmDados.cdsVendaContas.Close;
     //
     Action := caFree; 
end;

procedure TfrmBaixaEstornoParcelas.Limpar;
begin
     edtNmclie.Clear;
     dmPesquisas.cdsConsultaCota.Close;
     dmAdmDados.cdsVendaContas.Close;
     //
     lblRegistros.Caption := '';
     lblTotal.Caption     := '';
     //
     edtSPC.Clear;
     edtCont.Clear;
end;

procedure TfrmBaixaEstornoParcelas.edtGrupoChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtGrupo.Text) Then
      begin
         Limpar;
         //
         edtCota.Clear;
      End;
end;

procedure TfrmBaixaEstornoParcelas.edtCotaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCota.Text) Then
         Limpar;
end;

procedure TfrmBaixaEstornoParcelas.edtVendaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtVenda.Text) Then
         Limpar;
end;

procedure TfrmBaixaEstornoParcelas.edtParcelaChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtParcela.Text) Then
         Limpar;
end;

procedure TfrmBaixaEstornoParcelas.edtNossoNumeroChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtNossoNumero.Text) Then
         Limpar;
     //

end;

procedure TfrmBaixaEstornoParcelas.dsParcelasStateChange(Sender: TObject);
begin
     edtLocParcela.Enabled := not dsParcelas.DataSet.IsEmpty; 
end;

procedure TfrmBaixaEstornoParcelas.edtCotaExit(Sender: TObject);
begin
      If not uFuncoes.Empty (edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text) Then
           btnConsultar.SetFocus;
end;

procedure TfrmBaixaEstornoParcelas.edtVendaExit(Sender: TObject);
begin
      If not uFuncoes.Empty (edtVenda.Text) Then
        if uFuncoes.Empty(edtParcela.Text) Then
            edtParcela.SetFocus
        Else
            btnConsultar.SetFocus;
end;

procedure TfrmBaixaEstornoParcelas.edtCotaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    If (key = #13) and not uFuncoes.Empty(edtCota.Text) Then
      begin
           key:=#0;
           btnConsultar.SetFocus;
      End;
end;

procedure TfrmBaixaEstornoParcelas.btnViaClick(Sender: TObject);
begin
   if not (dmPesquisas.cdsConsultaCota.IsEmpty)  Then
   begin
     If Application.MessageBox('Imprimir 2� via de cupom de recebimento?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         dmAdmDados.CupomBaixa(dmPesquisas.cdsConsultaCota,
                         dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                         dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                         dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                         dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger,
                         dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger, '2');
    End;
end;

procedure TfrmBaixaEstornoParcelas.MostraParcela(aVenda, aGrupo,
  aCota: Integer; aSituacao: String);
Var
   M_FLSITU : String;
   M_VLTOTA, M_VLCRED : Double;
begin
      M_FLSITU := Situacao(rbSituacao.ItemIndex);
      M_VLTOTA := 0;
      M_VLCRED := 0;
      //
      With dmPesquisas.cdsConsultaCota do
        begin
             DisableControls;
             Active := False;
             CommandText := 'Select R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_CDBANC, R.REC_NRPARC, R.REC_DTVENC, ';
             CommandText := CommandText + ' R.REC_MOV_CAIXA, R.REC_VLPARC, R.REC_DTPAGA, R.REC_HOPAGA, R.REC_VLMULT, R.REC_CREDITO, ';
             CommandText := CommandText + ' R.REC_NOSSONUMERO, R.REC_TPCREDITO, R.REC_TPSLIP, R.REC_PRINTSLIP, R.REC_VALORTITULOTITULO, ';
             CommandText := CommandText + ' R.REC_VALORTARIFABANCO, R.REC_DTCREDITO, R.REC_NATUREZA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_FUNDORES, ';
             CommandText := CommandText + ' CT.COT_TAXA_ADM, R.REC_TOTAL_PAGO, R.REC_FORMABAIXA, R.REC_VALOR_DIGITADO, CT.COT_PLANO from PARCELAS R ';
             CommandText := CommandText + ' INNER join COTAS CT ON CT.COT_NRVENDA = R.REC_NRVEND Where (R.REC_NRVEND = :pNRVEND) and (R.REC_CDGRUP = :pCDGRUP) AND (R.REC_NRCOTA = :pNRCOTA) ';
             if (M_FLSITU = 'A') Then
                  CommandText := CommandText + ' and (R.REC_DTPAGA is null) ';
             if (M_FLSITU = 'P') Then
                  CommandText := CommandText + ' and NOT (R.REC_DTPAGA is null) ';
             CommandText := CommandText + '  order by R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_NRPARC ';
             Params.ParamByName('pNRVEND').AsInteger := aVenda;
             Params.ParamByName('pCDGRUP').AsInteger := aGrupo;
             Params.ParamByName('pNRCOTA').AsInteger := aCota;
             Active := True;
             //
             If not (IsEmpty) Then
              begin
                   First;
                   While not (EoF) do
                    begin
                         if (M_FLSITU = 'A') Then
                            M_VLTOTA := M_VLTOTA + FieldByName('REC_TOTAL_CALC').AsFloat
                         Else
                            M_VLTOTA := M_VLTOTA + FieldByName('REC_TOTAL_PAGO').AsFloat;
                         //
                         M_VLCRED :=  M_VLCRED + FieldByName('REC_CREDITO').AsFloat;
                         //
                         Next;
                    End;
              End;
             //
             lblRegistros.Caption :=  InttoStr(dmPesquisas.cdsConsultaCota.RecordCount);
             lblTotal.Caption     :=  FormatFloat('###,##0.#0',M_VLTOTA - M_VLCRED);
             //
             First;
             EnableControls;
             //
        End;
end;

function TfrmBaixaEstornoParcelas.Situacao(aTipo: Integer): String;
begin
      if (aTipo = 0) Then
         Result := 'A';
      if (aTipo = 1) Then
         Result := 'P';
      if (aTipo = 2) Then
         Result := 'T';
end;

procedure TfrmBaixaEstornoParcelas.FormCreate(Sender: TObject);
begin
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
            dmAdmDados.Verificar_Direito_Acesso(
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Baixa/Estorno ...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     //btnBaixa.Visible     := (novo = 'S');
     btnVia.Visible       := (alterar = 'S');
     btBanco.Visible      := btnVia.Visible;
     btnEstorna.Visible   := (apagar = 'S');
     //
   End;
   //
   btnRecibo.Enabled := False;
   edtSPC.Clear; 
   edtCont.Clear;
end;

procedure TfrmBaixaEstornoParcelas.btBancoClick(Sender: TObject);
Var
   aCaixa : Integer;
begin
   if uFuncoes.Empty(edtGrupo.Text) Then
    begin
         edtGrupo.SetFocus;
         raise Exception.Create('Digite o c�digo do grupo.');
    End;
   //
   if uFuncoes.Empty(edtCota.Text) Then
    begin
         edtCota.SetFocus;
         raise Exception.Create('Digite o n�mero da cota.');
    End;
   //
   {if uFuncoes.Empty(dmPesquisas.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
    begin
         edtCota.SetFocus;
         raise Exception.Create('Parcela n�o pode ser baixada por esta op��o.');
    End;}
    //
   If (dmAdmDados.Verificar_PC_Paga(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
                                    dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger)) Then
      begin
           Application.MessageBox(PChar('Parcela j� baixada.'),
                       'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           busca(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger);
           Exit;
      End;
    //
     aCaixa   := StrtoInt(uFrmAdmMain.M_CDUSUA);
     uFrmAdmMain.autenticacao := False;
     //
     if not (uFrmAdmMain.admin) Then
       begin
            If (dmAdmDados.GetDispositivoImpUsuario(aCaixa) <> 'NN.TXT' ) Then
            begin
                  Application.CreateForm(TfrmAutenticarAdm, frmAutenticarAdm);
                  try
                      frmAutenticarAdm.ShowModal;
                  Finally
                      frmAutenticarAdm.Free;
                  End;
            End
            Else
                uFrmAdmMain.autenticacao := True;
       End
       Else
           uFrmAdmMain.autenticacao := True;
       //
     if not (uFrmAdmMain.autenticacao) Then
         raise Exception.Create('Premiss�o negada.');
      //
      //nd  not uFuncoes.Empty(dmPesquisas.cdsConsultaCotaREC_NOSSONUMERO.AsString)
      // cdsConsultarCOT_POSICAO.AsString
   if not (dmPesquisas.cdsConsultaCota.IsEmpty) and (dbeSituacao.Text = 'A') Then
   begin
     frmMain.AbreForm(TfrmBaixaEstBanco, frmBaixaEstBanco);
     //
     busca(dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger);
     //
   End
   Else
       Application.MessageBox(PChar('N�o � possivel baixar '+#13+'parcelas deste cliente.'
                       +#13'Situa��o : '+ dmAdmDados.cdsVendaContasCOT_POSICAO.AsString),
                       'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmBaixaEstornoParcelas.edtNossoNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    If (key = #13) and not uFuncoes.Empty(edtNossoNumero.Text) Then
      begin
           key:=#0;
           btnConsultar.SetFocus;
      End;
end;

function TfrmBaixaEstornoParcelas.Localiza_NossoNumero(aBanco,
  aNossoNumero: String): Boolean;
var qraux : TSQLquery;
    texto : string;
    aGrupo, aCota : integer;
begin
     Result := False;
     M_NRPARC := 0;
     //
     texto  := 'Select R.REC_NRVEND, R.REC_CDGRUP, R.REC_NRCOTA, R.REC_NRPARC ';
     texto  := texto + ' from PARCELAS R inner join COTAS C ON C.COT_NRVENDA = R.REC_NRVEND Where (REC_NOSSONUMERO = '+QuotedStr(aNossoNumero)+')  ';
     texto  := texto + ' and (R.REC_CDBANC ='+QuotedStr(aBanco) +') and (R.REC_DTPAGA is null)  AND (C.COT_POSICAO = '+QuotedStr('A')+')  ';
     //
     QrAux := TSqlquery.Create(nil);
     with QrAux do
      try
          SQLConnection := dmAdmDados.sqlConn;
          sql.Add(texto);
          Open;
          if not (IsEmpty) Then
            begin
                 aGrupo := fieldByName('REC_CDGRUP').AsInteger;
                 aCota  := fieldByName('REC_NRCOTA').AsInteger;
                 M_NRPARC := fieldByName('REC_NRPARC').AsInteger;
                 //
                 cdsConsultar.Close;
                 with datasetConsultar do
                 begin
                     Active := False;
                     CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
                     CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
                     CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA) and (CT.COT_POSICAO = '+QuotedStr('A')+') ';
                     //
                     datasetConsultar.Params.ParamByName('pCODIGO').AsInteger := aGrupo;
                     datasetConsultar.Params.ParamByName('pNRCOTA').AsInteger := aCota;
                     //
                     Active := True;
                 end;
                 cdsConsultar.FetchParams;
                 cdsConsultar.Open;
                 //
                 if not (cdsConsultar.IsEmpty) then
                     Result := True;
            End;
      finally
         free;
      end;
     //
end;

procedure TfrmBaixaEstornoParcelas.edtNossoNumeroEnter(Sender: TObject);
begin
     If ufuncoes.Empty(edtNossoNumero.Text) Then
      begin
         edtGrupo.Clear;
         edtCota.Clear;
         edtVenda.Clear;
      End;
end;

procedure TfrmBaixaEstornoParcelas.edtVendaEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtVenda.Text) Then
     begin
         edtCota.Clear;
         edtGrupo.Clear;
         edtNossoNumero.Clear;
     End;
end;

procedure TfrmBaixaEstornoParcelas.edtCotaEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtCota.Text) Then
     begin
       edtVenda.Clear;
       edtNossoNumero.Clear;
     End;
end;

procedure TfrmBaixaEstornoParcelas.edtVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;

    If (key = #13) and not uFuncoes.Empty(edtVenda.Text) Then
      begin
           key:=#0;
           btnConsultar.SetFocus;
      End;
end;

procedure TfrmBaixaEstornoParcelas.edtGrupoEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtGrupo.Text) Then
     begin
         edtCota.Clear;
         edtVenda.Clear;
         edtNossoNumero.Clear;
     End;
end;

procedure TfrmBaixaEstornoParcelas.edtGrupoExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtGrupo.text) Then
        if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.text))) Then
         begin
              edtGrupo.Clear;
              edtGrupo.SetFocus;
              raise Exception.Create('Grupo n�o cadastro.');
         End;
end;

procedure TfrmBaixaEstornoParcelas.edtParcelaExit(Sender: TObject);
begin
      If not uFuncoes.Empty (edtVenda.Text) and not uFuncoes.Empty(edtParcela.Text) Then
           btnConsultar.SetFocus;
end;

procedure TfrmBaixaEstornoParcelas.edtNossoNumeroExit(Sender: TObject);
begin
    if not uFuncoes.Empty(edtNossoNumero.Text) Then
    begin
       If not uFuncoes.Empty(edtGrupo.Text) Then
         edtGrupo.Clear;
       If not uFuncoes.Empty(edtCota.Text) Then
         edtCota.Clear;
    End;     
end;

procedure TfrmBaixaEstornoParcelas.edtParcelaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
        beep;
        key:=#0;
    end;
end;

end.

