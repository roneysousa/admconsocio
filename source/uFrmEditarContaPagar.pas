unit uFrmEditarContaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, ToolEdit, RXDBCtrl,
  Mask;

type
  TFrmEditarContaPagar = class(TfrmCadastro)
    pnlDados: TPanel;
    Label7: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    dbeSerie: TDBEdit;
    dbeNumNota: TDBEdit;
    Label13: TLabel;
    Label1: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    spLocalizar: TSpeedButton;
    edtDescricao: TEdit;
    Label3: TLabel;
    mmoObservacao: TDBMemo;
    Label4: TLabel;
    dbeDTVENC: TDBDateEdit;
    dbeValorPC: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbeBanco: TDBEdit;
    Label8: TLabel;
    dbeAgencia: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    pnlBaixa: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    dbeJuros: TDBEdit;
    dbeDesconto: TDBEdit;
    dbeValorPago: TDBEdit;
    cmbModalidade: TDBLookupComboBox;
    dbeDtPaga: TDBDateEdit;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    dbeNConta: TDBEdit;
    dbeNCheque: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure mmoObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeBancoExit(Sender: TObject);
    procedure dbeBancoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAgenciaExit(Sender: TObject);
    procedure dbeNContaExit(Sender: TObject);
    procedure dbeNChequeExit(Sender: TObject);
    procedure dbeNContaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNChequeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure HabilitarControle(aStatus : Boolean);
  public
    { Public declarations }
    iCodigo : Integer;
    aOpcao : String;
  end;

var
  FrmEditarContaPagar: TFrmEditarContaPagar;

implementation

uses udmAdmDados, uFuncoes, uFrmLocFornecedor, uFrmAdmMain, uDmPesquisas,
  uFrmAutenticarDocCP;

{$R *.dfm}

procedure TFrmEditarContaPagar.FormShow(Sender: TObject);
begin
  inherited;
     TabSheet2.TabVisible := false;
     //
     if (iCodigo > 0) Then
     begin
         uFuncoes.FilterCDS(dmAdmDados.cdsRegContaPagar, fsInteger, InttoStr(iCodigo));
         if not (dmAdmDados.cdsRegContaPagar.IsEmpty) Then
         begin
             dmAdmDados.cdsRegContaPagar.Edit;
             //
             edtDescricao.Text := dmAdmDados.GetNomeFornecedor(dmAdmDados.cdsRegContaPagarPAG_FORNECEDOR.AsInteger);
             //
             if (aOpcao = 'E') Then
             begin
                 HabilitarControle(true);
                 dbeCodigo.SetFocus;
             End;
             //
             if (aOpcao = 'B') Then
             begin
                 HabilitarControle(false);
                 ufuncoes.RefreshCDS(dmAdmDados.cdsListaModas);
                 //
                 dmAdmDados.cdsRegContaPagar.FieldByName('PAG_DATAPAGAMENTO').AsDateTime := Date();
                 dmAdmDados.cdsRegContaPagar.FieldByName('PAG_VALORJUROS').AsFloat       := 0;
                 dmAdmDados.cdsRegContaPagar.FieldByName('PAG_VALORDESCONTO').AsFloat    := 0;  // dsCadastro.DataSet
                 dbeValorPago.SetFocus;
                 //
             End;
             //
             if (aOpcao = 'C') Then
             begin
                 HabilitarControle(false);
                 ufuncoes.RefreshCDS(dmAdmDados.cdsListaModas);
                 //
                 BtGravar.Visible   := FALSE;
                 BtCancelar.Visible := FALSE;
                 //
                 pnlDados.Enabled := FALSE;
                 pnlBaixa.Enabled := FALSE;
                 BtSair.Left      := BtCancelar.Left;
                 BtSair.Visible   := True;
                 //
             End;
         End;
     End;
end;

procedure TFrmEditarContaPagar.BtCancelarClick(Sender: TObject);
begin
  inherited;
       dsCadastro.DataSet.Cancel;
       close;
end;

procedure TFrmEditarContaPagar.dbeCodigoExit(Sender: TObject);
Var
   iCod : Integer;
begin
  inherited;
      if (not uFuncoes.Empty(dbeCodigo.Text)) Then
         begin
              ICod := StrtoInt(dbeCodigo.Text);
              If not dmAdmDados.ProcurarValor(Inttostr(iCod),'FOR_CODIGO','FORNECEDORES') Then
                begin
                     Application.MessageBox(PChar('Código de cliente não cadastro.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeCodigo.SetFocus;
                     dbeCodigo.Clear;
                     edtDescricao.Clear;
                     Exit;
                End
                Else
                begin
                     dbeCodigo.Text    := uFuncoes.StrZero(dbeCodigo.Text,7);
                     edtDescricao.Text := dmAdmDados.GetNomeFornecedor(StrtoInt(dbeCodigo.Text));
                End;

         End;
end;

procedure TFrmEditarContaPagar.spLocalizarClick(Sender: TObject);
begin
  inherited;
       dbeCodigo.SetFocus;
       Application.CreateForm(TFrmConsFornecedores, FrmConsFornecedores);
       try
           If (FrmConsFornecedores.ShowModal = mrOk) Then
             if not (FrmConsFornecedores.cdsConsultar.IsEmpty) Then
              begin
                  dbeCodigo.Text := uFuncoes.StrZero(FrmConsFornecedores.cdsConsultarFOR_CODIGO.AsString,7);
                  mmoObservacao.SetFocus;
              End;
       Finally
           FrmConsFornecedores.Free;
       End;
end;

procedure TFrmEditarContaPagar.BtGravarClick(Sender: TObject);
Var
   iSeq, iSequencia, iNumCaixa, iLoja, iUsuario, iFornecedor, iModalidade, iNatureza : Integer;
   aDtMovi  : Tdatetime;
   aHoraMovi, aDescricao, aTipoNatureza, M_HOATUA : String;
   fValorPC, fValorPago, fValorRestante, M_TOPAGO : Double;
   M_NRSEQU, W_SQCAIX, W_NRPARC, M_CDMODA, M_CDCAIX, W_CDNATU, M_NRBANC, M_NRCOMP  : integer;
   M_NRAGEN, M_NRCONT, M_NRCHEQ, aDescricaoMov : String;
begin
 if (aopcao = 'E') Then
  begin
    if uFuncoes.Empty(dbeCodigo.Text) Then
    begin
         Application.MessageBox('Digite o código do fornecedor.','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         dbeCodigo.SetFocus;
         Exit;
    End;
    //
    if uFuncoes.Empty(mmoObservacao.Text) Then
    begin
         Application.MessageBox('Digite uma descrição.','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         mmoObservacao.SetFocus;
         Exit;
    End;
    //
    if uFuncoes.Empty(ufuncoes.RemoveChar(dbeDTVENC.Text)) Then
    begin
         Application.MessageBox('Digite a data de vencimento.','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         dbeDTVENC.SetFocus;
         Exit;
    End;
    //
    if uFuncoes.Empty(dbeValorPC.Text) or
       (dsCadastro.DataSet.FieldByName('PAG_VALORPARCELA').AsFloat <= 0) Then
    begin
         Application.MessageBox('Digite o valor da parcela.','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         dbeValorPC.SetFocus;
         Exit;
    End;
    //
    if (dsCadastro.DataSet.State in [dsEdit]) then
    begin
         //
         W_NRPARC := dmAdmDados.cdsRegContaPagarPAG_PARCELA.AsInteger;
         M_CDMODA := dmAdmDados.cdsRegContaPagarPAG_MODALIDADE.AsInteger;
         M_CDCAIX := StrtoInt(uFrmAdmMain.M_CDUSUA);
         W_CDNATU := dmAdmDados.cdsRegContaPagarPAG_NATUREZADESPESA.AsInteger;
         //
         dmAdmDados.Start;
         try
              //
              If not ufuncoes.Empty(ufuncoes.RemoveChar(dbeBanco.Text)) Then
                   dmAdmDados.cdsRegContaPagarPAG_BANCO.AsString := ufuncoes.StrZero(dbeBanco.Text,3);
              If not ufuncoes.Empty(ufuncoes.RemoveChar(dbeAgencia.Text)) Then
                   dmAdmDados.cdsRegContaPagarPAG_AGENCIA.AsString := ufuncoes.StrZero(dbeAgencia.Text,6);
              If not ufuncoes.Empty(ufuncoes.RemoveChar(dbeNConta.Text)) Then
                   dmAdmDados.cdsRegContaPagarPAG_NRCONTA.AsString := ufuncoes.StrZero(dbeNConta.Text,10);
              If not ufuncoes.Empty(ufuncoes.RemoveChar(dbeNCheque.Text)) Then
                   dmAdmDados.cdsRegContaPagarPAG_NRCHEQUE.AsString := ufuncoes.StrZero(dbeNCheque.Text,10);
              //
              dmAdmDados.cdsRegContaPagar.ApplyUpdates(0);
              dmAdmDados.Comit(Transc);
              //
              aDescricao := 'Editou Conta a Pagar : ' + uFuncoes.StrZero(dmAdmDados.cdsRegContaPagarPAG_NRENTRADA.AsString,7)+'/'
                                             + uFuncoes.StrZero(dmAdmDados.cdsRegContaPagarPAG_PARCELA.AsString,2);
              dmAdmDados.SetTarefa_Usuario(aDescricao);
              dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
              //
              close;
         Except
              on e: exception do
               begin
                    Application.MessageBox(PChar('Erro ao tentar alterar parcela!!! Erro:'+#13
                      + E.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                    dmAdmDados.Rollback;
               End;
         End;
    End;
  End;
  //
  if (aOpcao = 'B') then
  begin
       if uFuncoes.Empty(dbeValorPago.Text) or
          (dsCadastro.DataSet.FieldByName('PAG_VALORPAGO').AsFloat <= 0) Then
       begin
            Application.MessageBox('Digite o valor pago.','ATENÇÃO',
                MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            dbeValorPago.SetFocus;
            Exit;
       End;
       //
       if (dsCadastro.DataSet.FieldByName('PAG_VALORPAGO').AsFloat <  dsCadastro.DataSet.FieldByName('PAG_TOTAL_CALC').AsFloat) Then
       begin
           Application.MessageBox('Valor pago digitado está menor que valor a pagar.','ATENÇÃO',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           dbeValorPago.SetFocus;
           Exit;
       End;
       //
       if uFuncoes.Empty(cmbModalidade.Text) Then
       begin
           Application.MessageBox('Selecione a modalidade.','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbModalidade.SetFocus;
           Exit;
       End;
       //
      if (cmbModalidade.Text = 'CHEQUE') Then
      begin
         // banco
         if uFuncoes.Empty(dbeBanco.Text) then
          begin
               if (pnlDados.Enabled) Then
                  dbeBanco.SetFocus;
               raise Exception.Create('Digite o número do banco.');
          end;
          // Agência
         if uFuncoes.Empty(dbeAgencia.Text) then
          begin
               if (pnlDados.Enabled) Then
                  dbeAgencia.SetFocus;
               raise Exception.Create('Digite a agência do banco.');
          end;
          // Conta
         if uFuncoes.Empty(dbeNConta.Text) then
          begin
               if (pnlDados.Enabled) Then
                  dbeNConta.SetFocus;
               raise Exception.Create('Digite o número da conta.');
          end;
          // Nº cheque
         if uFuncoes.Empty(dbeNCheque.Text) then
          begin
               if (pnlDados.Enabled) Then
                   dbeNCheque.SetFocus;
               raise Exception.Create('Digite o número do cheque.');
          end;
          //
          M_NRBANC := StrtoInt(uFuncoes.Alltrim(dbeBanco.Text));
          M_NRAGEN := dbeAgencia.Text;
          M_NRCONT := dbeNConta.Text;
          M_NRCHEQ := dbeNCheque.Text;
      End;
      //
      If Application.MessageBox('Confirma Baixa de parcela?',
          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idYes then
       begin
            uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
            aTipoNatureza := 'G';
            M_HOATUA := Copy(TimetoStr(Time),1,5);
            M_DTMOVI := Date();
            M_TOPAGO := dmAdmDados.cdsRegContaPagarPAG_VALORPAGO.AsFloat;
            //
            iLoja     := 1;
            iUsuario  := StrtoInt(uFrmAdmMain.M_CDUSUA);
            iNumCaixa := iUsuario;
            M_NRCOMP  := dsCadastro.DataSet.FieldByName('PAG_NRENTRADA').AsInteger;
            W_NRPARC  := dsCadastro.DataSet.FieldByName('PAG_PARCELA').AsInteger;
            iNatureza := dsCadastro.DataSet.FieldByName('PAG_NATUREZADESPESA').AsInteger;
            aDtMovi   := dsCadastro.DataSet.FieldByName('PAG_DATAPAGAMENTO').AsDateTime;
            fValorPC  := dsCadastro.DataSet.FieldByName('PAG_VALORPARCELA').AsFloat;
            fValorPago:= dsCadastro.DataSet.FieldByName('PAG_VALORPAGO').AsFloat;
            iModalidade := dsCadastro.DataSet.FieldByName('PAG_MODALIDADE').AsInteger;
            //
            iFornecedor   := dsCadastro.DataSet.FieldByName('PAG_FORNECEDOR').AsInteger;
            {if not uFuncoes.Empty(dsCadastro.DataSet.FieldByName('REC_BANCO').AsString) Then
               iBanco     := dsCadastro.DataSet.FieldByName('REC_BANCO').AsInteger;
            aAgencia      := dsCadastro.DataSet.FieldByName('REC_AGENCIA').AsString;
            aConta        := dsCadastro.DataSet.FieldByName('REC_NRCONTA').AsString;
            aNumCheque    := dsCadastro.DataSet.FieldByName('REC_NRCHEQUE').AsString;}
            //
            aHoraMovi := Copy(TimetoStr(time),1,5);
            //
            fValorRestante := fValorPC - fValorPago;
            //
            {dmAdmDados.Start;
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
            M_NRSEQU := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger; }
            //dmPesquisas.cdsMovCaixaMCA_SEQUENCIA.AsInteger := M_NRSEQU;
            aDescricaoMov := 'BAIXA CONTA PAGAR FORNEC.: '+ dbeCodigo.Text ;
            //
            dmAdmDados.Start;
            try
                // W_SQCAIX := dmAdmDados.GetSequenciaCaixa(iUsuario);
                // Incluir movimento de caixa
                {pSEQUENCIA, pSeqCaixa, pVENDA, pNRPARC,
                pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO: integer; pTIPOMOV,
                pHRMOVIMENTO, pOBSEVACAO, pSITUACAO: String; pDTMOVIMENTO: TDate;
                pVLMODALIDADE, pVLTROCO: Double; aBanco : Integer; aAgencia, aConta, aCheque : String}
                {if Not (dmAdmDados.Incluir_Movimento_Caixa(
                    M_NRSEQU, W_SQCAIX, M_NRCOMP, W_NRPARC, iModalidade, iUsuario, iNatureza, 0,
                    aTipoNatureza, M_HOATUA, aDescricaoMov, 'N', M_DTMOVI,
                    fValorPago, 0, M_NRBANC, M_NRAGEN, M_NRCONT, M_NRCHEQ)) Then
                        raise Exception.Create('Erro ao incluir movimento de caixa.');}
                //
                dmAdmDados.cdsRegContaPagarPAG_SITUACAO.AsString := 'P';
                dmAdmDados.cdsRegContaPagar.ApplyUpdates(0);
                //
                dmAdmDados.Comit(Transc);
                //
                aDescricao := 'Baixou CP : ' + uFuncoes.StrZero(dmAdmDados.cdsRegContaPagarPAG_NRENTRADA.AsString,7)+'/'
                                             + uFuncoes.StrZero(dmAdmDados.cdsRegContaPagarPAG_PARCELA.AsString,2)
                                             + ' | Valor : ' + FormatFloat('###,##0.#0', dmAdmDados.cdsRegContaPagarPAG_VALORPAGO.AsFloat) ;
                dmAdmDados.SetTarefa_Usuario(aDescricao);
                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                //
                {Application.CreateForm(TFrmAutenticarDocCP, FrmAutenticarDocCP); //Carrega form na memória
                try
                    uFrmAutenticarDocCP.M_NRSEQU := M_NRSEQU;
                    uFrmAutenticarDocCP.aTipo    := 'B';
                    FrmAutenticarDocCP.ShowModal;  // Mostra form em modo exclusivo
                Finally
                    FrmAutenticarDocCP.Free;  // Libera Memória
                end;}
                //
                Application.MessageBox(PChar(MSG_OK),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dmAdmDados.cdsRegContaPagar.Close;
                //
                Close;
            Except
                dmAdmDados.Rollback;
            End;
       End
       Else
           Exit;
  End;
  //
  inherited;
end;

procedure TFrmEditarContaPagar.mmoObservacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
       key := UpCase(key);
end;

procedure TFrmEditarContaPagar.HabilitarControle(aStatus: Boolean);
begin
     pnlDados.Enabled := aStatus;
     pnlBaixa.Visible := not aStatus;
end;

procedure TFrmEditarContaPagar.dbeBancoExit(Sender: TObject);
begin
  inherited;
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not ufuncoes.Empty(dbeBanco.Text) Then
           begin
                if not dmAdmDados.ProcurarValor(uFuncoes.Alltrim(dbeBanco.Text), 'BAN_NRBANC', 'BANCOS') Then
                begin
                     Application.MessageBox(PChar('Código de banco não cadastrado.'),
                        'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeBanco.SetFocus;
                    Exit;
                End;
                dbeBanco.Text := ufuncoes.StrZero(uFuncoes.Alltrim(dbeBanco.Text),3);
           End;
           //

      End;
end;

procedure TFrmEditarContaPagar.dbeBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEditarContaPagar.dbeAgenciaExit(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not ufuncoes.Empty(dbeAgencia.Text) Then
              dbeAgencia.Text := ufuncoes.StrZero(ufuncoes.Alltrim(dbeAgencia.Text),6);
      End;
end;

procedure TFrmEditarContaPagar.dbeNContaExit(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not ufuncoes.Empty(dbeNConta.Text) Then
                dbeNConta.Text := ufuncoes.StrZero(ufuncoes.Alltrim(dbeNConta.Text),10);
      End;
end;

procedure TFrmEditarContaPagar.dbeNChequeExit(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not ufuncoes.Empty(dbeNCheque.Text) Then
               dbeNCheque.Text := ufuncoes.StrZero(ufuncoes.Alltrim(dbeNCheque.Text),10);
      End;
end;

procedure TFrmEditarContaPagar.dbeNContaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEditarContaPagar.dbeNChequeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

end.
