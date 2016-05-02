unit uFrmFecharCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmFecharCaixa = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    sbLocCaixa: TSpeedButton;
    dbeCAIXA: TEdit;
    edtSENHA: TLabeledEdit;
    Panel2: TPanel;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    lbl_NMUSUA: TEdit;
    procedure BtCancelarClick(Sender: TObject);
    procedure sbLocCaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSENHAChange(Sender: TObject);
    procedure edtSENHAExit(Sender: TObject);
    procedure edtSENHAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCAIXAExit(Sender: TObject);
    procedure dbeCAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCAIXAChange(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmFecharCaixa: TfrmFecharCaixa;
  M_QTTENT : Integer;

implementation

uses uFrmConsUsuarios, udmAdmDados, uFuncoes, udmRelatorios, uDmPesquisas,
  uFrmAdmMain;

{$R *.dfm}

procedure TfrmFecharCaixa.BtCancelarClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmFecharCaixa.sbLocCaixaClick(Sender: TObject);
begin
      dbeCAIXA.SetFocus;
      Application.CreateForm(TfrmConsUsuarios, frmConsUsuarios);
      try
          frmConsUsuarios.ShowModal;
      Finally
          if not (frmConsUsuarios.cdsConsultar.IsEmpty)   then
          begin
             dbeCAIXA.Text     := frmConsUsuarios.cdsConsultarSEN_CODIGO.AsString;
             lbl_NMUSUA.Text   := frmConsUsuarios.cdsConsultarSEN_NOME.AsString;
             edtSENHA.SetFocus;  
             //
          end
          Else
              lbl_NMUSUA.Clear;
          //
          frmConsUsuarios.Free;
      End;
end;

procedure TfrmFecharCaixa.FormShow(Sender: TObject);
begin
    lbl_NMUSUA.Clear;
    M_QTTENT := 2;
end;

procedure TfrmFecharCaixa.edtSENHAChange(Sender: TObject);
begin
      If uFuncoes.Empty(edtSENHA.Text) Then
          BtGravar.Enabled   := False
      Else
          BtGravar.Enabled   := True;
end;

procedure TfrmFecharCaixa.edtSENHAExit(Sender: TObject);
Var
    W_SNATUA : String;
begin
     If not uFuncoes.Empty(edtSenha.text) Then
      begin
          edtSenha.text := edtSenha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edtSenha.text));
          //
          If (M_QTTENT >= 0) Then
          Begin
               //W_SNATUA := edtSENHA.Text;
               W_SNATUA := edtSenha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edtSenha.text));
               //edt_Senha.text := edt_Senha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Senha.text));
               //
               W_SNATUA := uFuncoes.Codifica(W_SNATUA);
               //
               uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsInteger, dbeCAIXA.Text);
               //
               If (W_SNATUA = dmAdmDados.cdsUsuarios.FieldByName('SEN_SNATUA').AsString) Then
               Begin
                   BtCancelar.Enabled := True;
                   BtGravar.Enabled   := True;
                   //
                   If (BtGravar.CanFocus) Then
                   begin
                       edtSENHA.Text := edtSENHA.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edtSENHA.text));
                       edtSENHA.Text := uFuncoes.Codifica(edtSENHA.Text);
                       BtGravar.SetFocus;
                   End;
               End
               Else
               Begin
                   //BtCancelar.Enabled := False;
                   BtGravar.Enabled   := False;
                   //
                   Application.MessageBox('Senha não confere!!!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   M_QTTENT := M_QTTENT - 1;
                   edtSENHA.SetFocus;
                   edtSENHA.Clear;
                   Exit;
               End;
          End
          Else
              Close;
       End;
end;

procedure TfrmFecharCaixa.edtSENHAKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edtSENHA.Text) Then
     Begin
          Key := #0;
          //
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TfrmFecharCaixa.dbeCAIXAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeCAIXA.Text) Then
      begin
       lbl_NMUSUA.Clear;
       //
       if not (dmAdmDados.Testa_Caixa(StrtoInt(dbeCAIXA.Text), 'A')) Then
        Begin
             dbeCAIXA.SetFocus;
             dbeCAIXA.Clear;
             raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
        End;
        //
         If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'N')
              OR uFuncoes.Empty(dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString) Then
               begin
                    dbeCAIXA.SetFocus;
                    dbeCAIXA.Clear;
                    raise Exception.Create('Usuário não é caixa!!!');
               End;
       //
       if not (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(dbeCAIXA.Text))) Then
        begin
             dbeCAIXA.Clear;
             dbeCAIXA.SetFocus;
             raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
        End;
        //
        lbl_NMUSUA.Text  := dmAdmDados.cdsUsuariosSEN_NOME.AsString;
        dbeCAIXA.Text    := uFuncoes.StrZero(dbeCAIXA.Text,3);
      End;
end;

procedure TfrmFecharCaixa.dbeCAIXAKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13]) then
        key:=#0;
     //
     If (key = #13) and uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Key := #0;
          sbLocCaixaClick(Sender);
     End;
     //
     If (key = #13) and not uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Key := #0;
          edtSENHA.SetFocus;   

     End;

end;

procedure TfrmFecharCaixa.dbeCAIXAChange(Sender: TObject);
begin
      if uFuncoes.Empty(dbeCAIXA.Text) Then
         lbl_NMUSUA.Clear;
end;

procedure TfrmFecharCaixa.BtGravarClick(Sender: TObject);
Var
   M_CDCAIX, M_RGINIC, M_RGFINA, aNumero, W_SQCAIX, W_SQINIC, M_MAXMCX  : Integer;
   M_DTMOVI : TDate;
   M_HOMOVI, aDescricao, aResp  : string;
begin
     If uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o código do caixa.'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeCAIXA.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(edtSENHA.Text) Then
     Begin
          Application.MessageBox(PChar('Digite a senha do caixa.'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          edtSENHA.SetFocus;
          Exit;
     End;
     // Fechamento de caixa
     If Application.MessageBox(PChar('Confirma fechamento de caixa?'),
          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
     Begin
        uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);  
        // inicia
        dmAdmDados.Start;
        //
        M_CDCAIX := StrtoInt(dbeCAIXA.Text);
        //
        Try
          M_MAXMCX := uFuncoes.mvcodigomax('mca_sequencia','MOVIMENTO_CAIXA') + 1;
          //
          dmAdmDados.CdsConfig.Edit;
          dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
          //
          If (dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger < M_MAXMCX) Then
            dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := M_MAXMCX;
          //
          dmAdmDados.CdsConfig.ApplyUpdates(0);
          //
          M_RGFINA := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
          M_DTMOVI := Date();
          M_HOMOVI := Copy(TimetoStr(Time),1,5);
          W_SQCAIX := dmAdmDados.GetSequenciaCaixa(M_CDCAIX);
          // aCaixa, aRegFinal, aData, aHora,
          if (dmAdmDados.Fechar_Caixa(M_CDCAIX, M_RGFINA, W_SQCAIX, M_DTMOVI, M_HOMOVI)) Then
           begin                                                   
                // Incluir movimento de caixa
                // pSEQUENCIA, pVENDA, pNRPARC, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                // aBanco : Integer; aAgencia, aConta, aCheque
                if Not (dmAdmDados.Incluir_Movimento_Caixa(
                    M_RGFINA, W_SQCAIX, 0, 0, 0, M_CDCAIX, 2, 0, 'F', M_HOMOVI,'FECHAMENTO DE CAIXA', ' ', M_DTMOVI, 0,0, 0, '', '', '')) Then
                       raise Exception.Create('Erro ao inclui movimento de caixa.');
           End;
           //
           dmAdmDados.Comit(Transc);
           //
           Application.MessageBox(PChar('Registro de caixa fechado.'),
                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           // Imprimir relatorio
           aNumero   := dmAdmDados.GetRegInicialCaixa(M_CDCAIX, M_RGFINA);
           //
           aResp := 'S';
           //
           if (uFrmAdmMain.admin) Then
             begin
                  If Application.MessageBox('Imprimir cupom de fechamento de caixa?',
                      'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
                       aResp := 'N';
             End;
           //
           if (aResp = 'S') Then
           begin
                uFuncoes.FilterCDS(dmPesquisas.cdsCaixa, fsInteger, InttoStr(aNumero));
                //
                If not (dmPesquisas.cdsCaixa.IsEmpty) Then
                begin
                      M_RGINIC := dmPesquisas.cdsCaixaCAI_RGINICIAL.AsInteger;
                      W_SQINIC := dmPesquisas.cdsCaixaCAI_SQINICIAL.AsInteger;
                      //
                      If (M_RGINIC > 0) Then
                          dmRelatorios.Imprime_Caixa2(M_CDCAIX, M_RGINIC, M_RGFINA, W_SQINIC, W_SQCAIX,'1');
                          //dmRelatorios.Imprime_Caixa2(M_CDCAIX, M_RGINIC, M_RGFINA, '1');
                End;
           End;
           //
           aDescricao := 'Fechou caixa : ' + InttoStr(aNumero);
           dmAdmDados.SetTarefa_Usuario(aDescricao);
           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
           //
           Close;
        except
           dmAdmDados.Rollback;
        End;
     End;  //fim-se
end;

procedure TfrmFecharCaixa.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Fechamento de Caixa...'));
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

end.
