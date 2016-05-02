unit uFrmAbrirCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, DBCtrls,
  DB;

type
  TfrmOpenCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    dbeCAIXA: TEdit;
    sbLocCaixa: TSpeedButton;
    Label3: TLabel;
    edtVLINIC: TCurrencyEdit;
    edtSENHA: TLabeledEdit;
    dsCaixa: TDataSource;
    lbl_NMUSUA: TEdit;
    procedure BtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbLocCaixaClick(Sender: TObject);
    procedure dbeCAIXAChange(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtSENHAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCAIXAExit(Sender: TObject);
    procedure edtSENHAChange(Sender: TObject);
    procedure edtSENHAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtVLINICKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmOpenCaixa: TfrmOpenCaixa;
   M_NRSEQU, M_QTTENT, M_NRCAIX, W_CDLOJA : Integer;
   M_FLENTR : String;
   M_TPFORM : Integer;

implementation

uses udmAdmDados, uFuncoes, uFrmConsultaCota, uFrmConsUsuarios,
  uFrmAdmMain;

{$R *.dfm}

procedure TfrmOpenCaixa.BtCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmOpenCaixa.FormShow(Sender: TObject);
begin
     lbl_NMUSUA.Clear;
     //
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     M_NRCAIX := dmAdmDados.CdsConfigCFG_CAIXA.Value + 1;
     //
     With dmAdmDados.cdsCaixa do
     Begin
          Active := False;
          //CommandText := 'Select * from CAIXA Where (CAI_NUMERO = :pNUMERO)';
          Params[0].AsInteger := M_NRCAIX;
          Active := True;
     End;
     //
     M_QTTENT := 2;
     M_FLENTR := 'N';
     //
     dmAdmDados.cdsCaixa.Append;
     dmAdmDados.cdsCaixa.FieldByName('CAI_NUMERO').AsInteger := M_NRCAIX;
     //
     BtGravar.Enabled   := False;
end;

procedure TfrmOpenCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmAdmDados.cdsCaixa.Close;
     //
     Action := caFree;
end;

procedure TfrmOpenCaixa.sbLocCaixaClick(Sender: TObject);
begin
      dbeCAIXA.SetFocus;
      Application.CreateForm(TfrmConsUsuarios, frmConsUsuarios);
      try
          frmConsUsuarios.ShowModal;
      Finally
          if not (frmConsUsuarios.cdsConsultar.IsEmpty)   then
          begin
             dbeCAIXA.Text      := frmConsUsuarios.cdsConsultarSEN_CODIGO.AsString;
             lbl_NMUSUA.Text := frmConsUsuarios.cdsConsultarSEN_NOME.AsString;
             //
             edtVLINIC.SetFocus;
          end
          Else
              lbl_NMUSUA.Clear;
          //
          frmConsUsuarios.Free;
      End;
end;

procedure TfrmOpenCaixa.dbeCAIXAChange(Sender: TObject);
begin
      if uFuncoes.Empty(dbeCAIXA.Text) Then
         lbl_NMUSUA.Clear;
end;

procedure TfrmOpenCaixa.BtGravarClick(Sender: TObject);
Var
   M_DTABER : TDate;
   M_NRVEND, M_RGINIC, W_CDCAIX : Integer;
   M_HOABER : String;
   M_VLANTE, M_VLMOVI, M_VLATUA : Double;
   M_CDMODA, W_CDNATU, W_SQCAIX : integer;
   aDescricao, aCodigo : String;   
begin
     if uFuncoes.Empty(dbeCAIXA.Text) Then
      begin
           dbeCAIXA.SetFocus;
           raise Exception.Create('Digite o código do caixa.');
      End;
      //
     if uFuncoes.Empty(edtSENHA.Text) Then
      begin
           edtSENHA.SetFocus;
           raise Exception.Create('Digite a senha do caixa.');
      End;
      //
      if not (dmAdmDados.GetVerificarSenha(StrtoInt(dbeCAIXA.Text), edtSENHA.Text)) Then
        begin
            edtSENHA.SetFocus;
            edtSENHA.Clear;
            raise Exception.Create('Senha inválida!!!');
        End;
       //
       If Application.MessageBox(PChar('Confirma abertura do caixa?'),
          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
          Begin
               //
               M_DTABER := Date();
               M_HOABER := Copy(TimetoStr(Time),1,5);
               W_CDCAIX := Strtoint(dbeCAIXA.Text);
               // inicia
               dmAdmDados.Start;
               //
               try
                      //
                      dmAdmDados.CdsConfig.Edit;
                      dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
                      dmAdmDados.CdsConfigCFG_CAIXA.AsInteger         := dmAdmDados.CdsConfigCFG_CAIXA.AsInteger + 1;
                      dmAdmDados.cdsConfigCFG_REGISTRO.AsInteger      := dmAdmDados.cdsConfigCFG_REGISTRO.AsInteger + 1;
                      dmAdmDados.CdsConfig.ApplyUpdates(0);
                      //
                      M_NRSEQU := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
                      M_NRCAIX := dmAdmDados.CdsConfigCFG_CAIXA.AsInteger;
                      M_RGINIC := dmAdmDados.cdsConfigCFG_REGISTRO.AsInteger;
                      aCodigo  := dmAdmDados.CdsConfigCFG_CAIXA.AsString;
                      W_SQCAIX := dmAdmDados.GetSequenciaCaixa(W_CDCAIX);
                      //  Incluir registro de caixa
                      if (dmAdmDados.Incluir_Dados_Caixa(
                                 M_NRCAIX, W_CDCAIX, M_NRSEQU, W_SQCAIX, M_DTABER, M_HOABER, 'A' )) Then
                        Begin
                             // Incluir movimento de caixa
                             // pSEQUENCIA, pVENDA, pNRPARC, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                             //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                             // aBanco : Integer; aAgencia, aConta, aCheque
                             if NOT (dmAdmDados.Incluir_Movimento_Caixa(
                                  M_NRSEQU, W_SQCAIX, 0, 0, 1, W_CDCAIX, 1, 0, 'A', M_HOABER,'ABERTURA DE CAIXA', ' ', M_DTABER, edtVLINIC.Value,0, 0, '', '','')) Then
                                 raise Exception.Create('Erro ao inclui movimento de caixa.');
                        End;
                      // Grava transação
                      dmAdmDados.Comit(Transc);
                      //
                      aDescricao := 'Abriu Caixa :'+ aCodigo + ' | Valor inicial : '+edtVLINIC.Text;
                      dmAdmDados.SetTarefa_Usuario(aDescricao);
                      dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                      //
                      Application.MessageBox(PChar('Registro de caixa aberto...'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      //
                      if (uFrmAdmMain.admin) Then
                      begin
                         If Application.MessageBox('Imprimir cupom de abertura?',
                              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                               dmAdmDados.CumpoAbrirCaixa(W_CDCAIX, M_NRCAIX, W_SQCAIX, edtVLINIC.Value);
                      End
                      Else
                          dmAdmDados.CumpoAbrirCaixa(W_CDCAIX, M_NRCAIX, W_SQCAIX, edtVLINIC.Value);
                      //
                      Close;
               Except
                      // Cancela
                      dmAdmDados.Rollback;
               End;
           End;  // sim
      //
end;

procedure TfrmOpenCaixa.edtSENHAKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edtSENHA.Text) Then
     Begin
          Key := #0;
          //
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TfrmOpenCaixa.dbeCAIXAKeyPress(Sender: TObject; var Key: Char);
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
          edtVLINIC.SetFocus;
     End;
end;

procedure TfrmOpenCaixa.dbeCAIXAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeCAIXA.Text) Then
      begin
       lbl_NMUSUA.Clear;
       //
       if (dmAdmDados.Testa_Caixa(StrtoInt(dbeCAIXA.Text), 'A')) Then
        Begin
             dbeCAIXA.SetFocus;
             dbeCAIXA.Clear;
             raise Exception.Create('Registro de caixa aberto para '+#13+'este operador.');
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
       if (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(dbeCAIXA.Text))) Then
        begin
             dbeCAIXA.Clear;
             dbeCAIXA.SetFocus;
             raise Exception.Create('Registro de caixa aberto para '+#13+'este operador.');
        End;
        //
        lbl_NMUSUA.Text   := dmAdmDados.cdsUsuariosSEN_NOME.AsString;
        dbeCAIXA.Text     := uFuncoes.StrZero(dbeCAIXA.Text,3);
      End;
end;

procedure TfrmOpenCaixa.edtSENHAChange(Sender: TObject);
begin
      If uFuncoes.Empty(edtSENHA.Text) Then
          BtGravar.Enabled   := False
      Else
          BtGravar.Enabled   := True;
end;

procedure TfrmOpenCaixa.edtSENHAExit(Sender: TObject);
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
                   M_FLENTR := 'S';
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

procedure TfrmOpenCaixa.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Abertura de Caixa...'));
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

procedure TfrmOpenCaixa.edtVLINICKeyPress(Sender: TObject; var Key: Char);
begin
     If (key = #13) and not uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Key := #0;
          edtSENHA.SetFocus;
     End;
end;

end.
