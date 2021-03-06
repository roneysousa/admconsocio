unit uFrmEntradasSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB;

type
  TfrmEntradasSaidaCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtAdicionar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    Label6: TLabel;
    cmbTipo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dbeObservacao: TDBEdit;
    Label4: TLabel;
    dbeValor: TDBEdit;
    Label5: TLabel;
    cmbNatureza: TDBLookupComboBox;
    dsModalidade: TDataSource;
    cmbModalidades: TDBLookupComboBox;
    gbxCheque: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtAgencia: TEdit;
    edtConta: TEdit;
    edtCheque: TEdit;
    edtBanco: TEdit;
    procedure BtSairClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure cmbTipoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbModalidadesExit(Sender: TObject);
    procedure edtBancoExit(Sender: TObject);
    procedure edtBancoKeyPress(Sender: TObject; var Key: Char);
    procedure edtAgenciaKeyPress(Sender: TObject; var Key: Char);
    procedure edtContaKeyPress(Sender: TObject; var Key: Char);
    procedure edtChequeKeyPress(Sender: TObject; var Key: Char);
    procedure edtContaExit(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure gbxChequeExit(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure tratabotoes;
    procedure Limpar;
    procedure LimparCheque;
  public
    { Public declarations }
  end;

var
  frmEntradasSaidaCaixa: TfrmEntradasSaidaCaixa;
  M_CDCAIX : INTEGER;

implementation

uses uDmPesquisas, DBClient, udmAdmDados, uFuncoes, uFrmAdmMain,
  uFrmAutenticarDoc;

{$R *.dfm}

procedure TfrmEntradasSaidaCaixa.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmEntradasSaidaCaixa.tratabotoes;
begin
     BtAdicionar.Enabled := not BtAdicionar.Enabled;
     BtSair.Enabled      := not BtSair.Enabled;
     //
     BtCancelar.Enabled  := not BtCancelar.Enabled;
     BtGravar.Enabled    := not BtGravar.Enabled;
     cmbTipo.Enabled     := not cmbTipo.Enabled; 
end;

procedure TfrmEntradasSaidaCaixa.BtAdicionarClick(Sender: TObject);
begin
     tratabotoes;
     //
     With dmPesquisas.cdsMovCaixa do
      begin
           Close;
           Params[0].AsInteger := -1;
           Open;   
      End;
      //
      cmbTipo.SetFocus; 
end;

procedure TfrmEntradasSaidaCaixa.BtCancelarClick(Sender: TObject);
begin
     Limpar;
     LimparCheque;
     //
     if (gbxCheque.Visible) Then
       gbxCheque.Visible := False;
     //
     tratabotoes;
     //
     dmPesquisas.cdsMovCaixa.Cancel;
     dmPesquisas.cdsMovCaixa.Close;
end;

procedure TfrmEntradasSaidaCaixa.BtGravarClick(Sender: TObject);
Var
    M_VLPAGA, M_TOPAGO : double;
    M_HOATUA, aDescricao, aTipoNatureza : String;
    W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDCLIE, M_NRSEQU, M_CDMODA, M_NRBANC, W_CDNATU, W_SQCAIX : integer;
    M_DTMOVI : Tdate;
    M_NRAGEN, M_NRCONT, M_NRCHEQ : String;
    aDescr  : string;
begin
     //
     if uFuncoes.Empty(cmbTipo.Text) Then
     begin
          cmbTipo.SetFocus;
          Exit;
     End;
     //
     if uFuncoes.Empty(cmbNatureza.Text) Then
     Begin
          cmbNatureza.SetFocus;
          Exit;
     End;
     //
     if uFuncoes.Empty(dbeObservacao.Text) Then
      begin
           dbeObservacao.SetFocus;
           Raise Exception.Create('Digite uma descri��o.');
      End;
     //
     if uFuncoes.Empty(cmbModalidades.Text) Then
     begin
          cmbModalidades.SetFocus;
          Exit;
     End;
     //
     if (dmPesquisas.cdsMovCaixaMCA_VLMODALIDADE.AsFloat <= 0) Then
      begin
           dbeValor.SetFocus;
           Raise Exception.Create('Valor inv�lido.');
      End;
     //
     M_NRBANC := 0;
     M_TOPAGO := 0;
     //
     W_NRVEND :=  0;
     W_CDGRUP :=  0;
     W_NRCOTA :=  0;
     W_NRPARC :=  0;
     W_CDCLIE :=  0;
     M_CDMODA :=  dmAdmDados.GetCodModalidade(cmbModalidades.Text);
     //
     M_NRBANC := 0;
     M_NRAGEN := '';
     M_NRCONT := '';
     M_NRCHEQ := '';
     //
     if (cmbModalidades.Text = 'CHEQUE') Then
      begin
         // banco
         if uFuncoes.Empty(edtBanco.Text) then
          begin
               edtBanco.SetFocus;
               raise Exception.Create('Digite o n�mero do banco.');
          end;
          // Ag�ncia
         if uFuncoes.Empty(edtAgencia.Text) then
          begin
               edtAgencia.SetFocus;
               raise Exception.Create('Digite a ag�ncia do banco.');
          end;
          // Conta
         if uFuncoes.Empty(edtConta.Text) then
          begin
               edtConta.SetFocus;
               raise Exception.Create('Digite o n�mero da conta.');
          end;
          // N� cheque
         if uFuncoes.Empty(edtCheque.Text) then
          begin
               edtCheque.SetFocus;
               raise Exception.Create('Digite o n�mero do cheque.');
          end;
          //
          M_NRBANC := StrtoInt(edtBanco.Text);
          M_NRAGEN := edtAgencia.Text;
          M_NRCONT := edtConta.Text;
          M_NRCHEQ := edtCheque.Text;
      End;
     //
     M_VLPAGA := dmPesquisas.cdsMovCaixaMCA_VLMODALIDADE.AsFloat;
     M_TOPAGO := M_VLPAGA ;
     M_HOATUA := Copy(TimetoStr(Time),1,5);
     M_DTMOVI := Date();
     W_CDNATU := dmAdmDados.GetCodNatureza(cmbNatureza.Text);
     aDescricao := dmPesquisas.cdsMovCaixaMCA_OBSEVACAO.AsString;
     //cmbNatureza.Text;
     aTipoNatureza := dmAdmDados.GetTipoNatureza(cmbNatureza.Text);
     //
    uFuncoes.RefreshCDS(dmAdmDados.CdsConfig);
    //
    dmAdmDados.Start;
     try
          dmAdmDados.CdsConfig.Edit;
          dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
          dmAdmDados.CdsConfig.ApplyUpdates(0);
          //
          dmAdmDados.Comit(Transc);
     Except
          dmAdmDados.Rollback;
     End;
     //
     M_NRSEQU := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
     dmPesquisas.cdsMovCaixaMCA_SEQUENCIA.AsInteger := M_NRSEQU;
     //
    dmAdmDados.Start;
    try
          tratabotoes;
          W_SQCAIX := dmAdmDados.GetSequenciaCaixa(M_CDCAIX);
          // Incluir movimento de caixa
          // pSEQUENCIA, pVENDA, pNRPARC, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
          // pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
          // aBanco : Integer; aAgencia, aConta, aCheque
          if Not (dmAdmDados.Incluir_Movimento_Caixa(
                M_NRSEQU, W_SQCAIX, W_NRVEND, W_NRPARC, M_CDMODA, M_CDCAIX, W_CDNATU, 0, aTipoNatureza, M_HOATUA, aDescricao, 'N', M_DTMOVI,
                M_TOPAGO, 0, M_NRBANC, M_NRAGEN, M_NRCONT, M_NRCHEQ)) Then
                    raise Exception.Create('Erro ao incluir movimento de caixa.');
           // Grava trasa��o
          dmPesquisas.cdsMovCaixa.Post;
          dmAdmDados.Comit(udmAdmDados.Transc);
          //
          aDescr := 'Movimento Caixa : ' + aTipoNatureza + ' | Valor : '+FormatFloat('###,##0.#0',M_TOPAGO);
          dmAdmDados.SetTarefa_Usuario(aDescr);
          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
          //
          Application.MessageBox(PChar(uFuncoes.MSG_OK),
                  'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          dmAdmDados.CupomEntradaSaida(M_NRSEQU, W_SQCAIX, M_CDCAIX, '1');
          //
          Application.CreateForm(TfrmAutenticar, frmAutenticar); //Carrega form na mem�ria
          try
               uFrmAutenticarDoc.M_NRSEQU := M_NRSEQU;
               frmAutenticar.ShowModal;  // Mostra form em modo exclusivo
          Finally
               frmAutenticar.Free;  // Libera Mem�ria
          end;
          //
          Limpar;
          LimparCheque;
          if (gbxCheque.Visible) Then
              gbxCheque.Visible := False;
          //
          dmPesquisas.cdsMovCaixa.Close;
    Except
          on e: exception do
          begin
               Application.MessageBox(PChar('Erro na inclus�o de movimento de caixa!!! Erro:'+#13
                       + E.Message),
                       'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               Limpar;
               //
               dmAdmDados.Rollback;
               //
               dmPesquisas.cdsMovCaixa.Close;
          End;
    End;
end;

procedure TfrmEntradasSaidaCaixa.Limpar;
begin
     cmbTipo.ItemIndex     := -1;
     dbeObservacao.Clear;
     dbeValor.Clear;
     //
     if (BtAdicionar.Enabled) Then
         BtAdicionar.SetFocus;
end;

procedure TfrmEntradasSaidaCaixa.cmbTipoExit(Sender: TObject);
begin
     if (cmbTipo.ItemIndex = 0) Then
        dmPesquisas.ListaNatureza('S');
     if (cmbTipo.ItemIndex = 1) Then
        dmPesquisas.ListaNatureza('E');
end;

procedure TfrmEntradasSaidaCaixa.FormShow(Sender: TObject);
begin
     dmPesquisas.cdsMovCaixa.Close;
     // 
     if (BtAdicionar.Enabled) Then
         BtAdicionar.SetFocus;
end;

procedure TfrmEntradasSaidaCaixa.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Entradas e Saidas...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     {BtAdicionar.Visible := (novo = 'S');
     BtEditar.Visible    := (alterar = 'S');
     BtExcluir.Visible   := (apagar = 'S');}
     //
   End;
end;

procedure TfrmEntradasSaidaCaixa.cmbModalidadesExit(Sender: TObject);
begin
     if (cmbModalidades.Text = 'CHEQUE') Then
      begin
            gbxCheque.Visible := True;
            edtBanco.SetFocus;
            LimparCheque;
      End
      Else
           gbxCheque.Visible := False;
end;

procedure TfrmEntradasSaidaCaixa.LimparCheque;
begin
     //
     edtAgencia.Clear;
     edtConta.Clear;
     edtCheque.Clear;
     edtBanco.Clear;
end;

procedure TfrmEntradasSaidaCaixa.edtBancoExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco.Text) Then
        edtBanco.Text := uFuncoes.StrZero(edtBanco.Text,3);
end;

procedure TfrmEntradasSaidaCaixa.edtBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

end;

procedure TfrmEntradasSaidaCaixa.edtAgenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

end;

procedure TfrmEntradasSaidaCaixa.edtContaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

end;

procedure TfrmEntradasSaidaCaixa.edtChequeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;

end;

procedure TfrmEntradasSaidaCaixa.edtContaExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtConta.Text) Then
        edtConta.Text := uFuncoes.StrZero(edtConta.Text,10);
end;

procedure TfrmEntradasSaidaCaixa.edtChequeExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtCheque.Text) Then
        edtCheque.Text := uFuncoes.StrZero(edtCheque.Text,10);
end;

procedure TfrmEntradasSaidaCaixa.gbxChequeExit(Sender: TObject);
begin
     if uFuncoes.Empty(dbeValor.Text) Then
         dbeValor.SetFocus;
end;

end.
