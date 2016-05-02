unit uFrmBaixaEstorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, ToolEdit,
  RXDBCtrl, CurrEdit;

type
  TfrmBaixaEstorno = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtSair: TBitBtn;
    btnSim: TBitBtn;
    Label1: TLabel;
    dsParcela: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    dbeMulta: TDBEdit;
    Label7: TLabel;
    dbeValorPago: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    cmbModa: TComboBox;
    Label9: TLabel;
    gbxCheque: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    edtAgencia: TEdit;
    Label12: TLabel;
    edtConta: TEdit;
    Label13: TLabel;
    edtCheque: TEdit;
    edtBanco: TEdit;
    dbeDTPAGA: TDBDateEdit;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    lblVencimento: TEdit;
    lblParcela: TEdit;
    lblDias: TEdit;
    cbxImpressora: TCheckBox;
    edtTotalDigitado: TCurrencyEdit;
    Label17: TLabel;
    edtVLCRED: TCurrencyEdit;
    Label18: TLabel;
    procedure BtSairClick(Sender: TObject);
    procedure btnSimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeDTPAGAExit(Sender: TObject);
    procedure dbeMultaExit(Sender: TObject);
    procedure edtAgenciaKeyPress(Sender: TObject; var Key: Char);
    procedure edtContaKeyPress(Sender: TObject; var Key: Char);
    procedure edtChequeKeyPress(Sender: TObject; var Key: Char);
    procedure edtContaExit(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure edtBancoExit(Sender: TObject);
    procedure cmbModaExit(Sender: TObject);
    procedure dbeMultaKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotalDigitadoExit(Sender: TObject);
    procedure dbeMultaEnter(Sender: TObject);
    procedure dbeDTPAGAKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotalDigitadoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbModaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Calcular;
    procedure Limpar;
    Function Validar_Valor() : Boolean;
  public
    { Public declarations }
  end;

var
  frmBaixaEstorno: TfrmBaixaEstorno;
  M_CDCAIX : Integer;
  M_NMCLIE : String;
  bFlMulta : Boolean;

implementation

uses udmAdmDados, uDmPesquisas, uFuncoes, uFrmAdmMain, udmRelatorios;

{$R *.dfm}

procedure TfrmBaixaEstorno.btnSimClick(Sender: TObject);
Var
    M_VLPAGA, M_TOPAGO, M_VLCRED, W_VLDIGI : double;
    M_HOATUA : String;
    W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDCLIE, M_NRSEQU, M_CDMODA, M_NRBANC : integer;
    M_DTMOVI : Tdate;
    M_NRAGEN, M_NRCONT, M_NRCHEQ, aDescricao : String;
    Cont, W_SQCAIX, M_MAXMCX : Integer;
    M_FLCRED : Boolean;
    fVlDigitado, fVlPagar, M_VLMULT : Real;
begin
     If not (Validar_Valor()) Then
        Exit;
     //
     M_FLCRED := False;
     M_VLCRED := 0;
     //
     M_VLPAGA := uFuncoes.Arredondar(dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat
                - dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat,2);
     //
     if (dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat < M_VLPAGA) then
      begin
           dbeValorPago.SetFocus;
           raise Exception.Create('Valor Pago Inferior ao Valor da Parcela.');
      end;
     //
     //  If (edtTotalDigitado.Text > dbeValorPago.Text) Then
     //  If (uFuncoes.StrToReal(edtTotalDigitado.Text) > uFuncoes.StrToReal(dbeValorPago.Text)) Then
     fVlDigitado := edtTotalDigitado.Value;
     fVlPagar    := dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
     M_VLMULT := dsParcela.DataSet.FieldByName('REC_VLMULT').AsFloat;
     //
    // If (edtTotalDigitado.Value > uFuncoes.StrToReal(dbeValorPago.Text)) Then
    If (fVlDigitado > fVlPagar) Then
      begin
           M_VLCRED := edtTotalDigitado.Value - dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
           M_FLCRED := true;
      End;
     //
     M_NRBANC := 0;
     M_TOPAGO := 0;
     //
     if (gbxCheque.Visible) Then
      begin
         // banco
         if uFuncoes.Empty(edtBanco.Text) then
          begin
               edtBanco.SetFocus;
               raise Exception.Create('Digite o número do banco.');
          end;
          // Agência
         if uFuncoes.Empty(edtAgencia.Text) then
          begin
               edtAgencia.SetFocus;
               raise Exception.Create('Digite a agência do banco.');
          end;
          // Conta
         if uFuncoes.Empty(edtConta.Text) then
          begin
               edtConta.SetFocus;
               raise Exception.Create('Digite o número da conta.');
          end;
          // Nº cheque
         if uFuncoes.Empty(edtCheque.Text) then
          begin
               edtCheque.SetFocus;
               raise Exception.Create('Digite o número do cheque.');
          end;
          //
          M_NRBANC := StrtoInt(edtBanco.Text);
          M_NRAGEN := edtAgencia.Text;
          M_NRCONT := edtConta.Text;
          M_NRCHEQ := edtCheque.Text;
      End;
     //
  btnSim.Enabled := False;
  try
     W_NRVEND :=  dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger;
     W_CDGRUP :=  dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger;
     W_NRCOTA :=  dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger;
     W_NRPARC :=  dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger;
     M_TOPAGO :=  dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
     W_VLDIGI :=  dmPesquisas.cdsConsultaCotaREC_VALOR_DIGITADO.AsFloat;
     W_CDCLIE :=  dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
     M_CDMODA :=  StrtoInt(Copy(cmbModa.Text,1,3));
     //
     M_VLPAGA := uFuncoes.Arredondar(dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat - dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat,2);
     M_HOATUA := Copy(TimetoStr(Time),1,5);
     M_DTMOVI := Date();
     //
     uFuncoes.RefreshCDS(dmAdmDados.CdsConfig);
     //
     dmAdmDados.Start;
     try
          M_MAXMCX := uFuncoes.mvcodigomax('mca_sequencia','MOVIMENTO_CAIXA') + 1;
          //
          dmAdmDados.CdsConfig.Edit;
          dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := dmAdmDados.CdsConfigCFG_MOV_CAIXA_SEQ.Value + 1;
          //
          If (dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger < M_MAXMCX) Then
             dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger := M_MAXMCX;
          dmAdmDados.CdsConfig.ApplyUpdates(0);
          //
          W_SQCAIX := dmAdmDados.GetSequenciaCaixa(M_CDCAIX);
          M_NRSEQU := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
          //
          dmAdmDados.Comit(Transc);
     Except
          dmAdmDados.Rollback;
     End;
     // Se erro na sequencia movimento do caixa
     If (dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger < M_MAXMCX) Then
        raise Exception.Create('Erro ao tentar incluir registro no movimento de caixa.');
     //
     if (dmAdmDados.Baixa_Parcela_Manual(
               dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger,
               dmPesquisas.cdsConsultaCotaREC_DTPAGA.AsDateTime,
               dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat,
               dmPesquisas.cdsConsultaCotaREC_VLMULT.AsFloat,
               dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat,
               W_VLDIGI, 'C', M_HOATUA, M_NRSEQU)) then
     begin
          // Incluir movimento de caixa
          // pSEQUENCIA, pVENDA, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
          //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
          // aBanco : Integer; aAgencia, aConta, aCheque
          if Not (dmAdmDados.Incluir_Movimento_Caixa(
                M_NRSEQU, W_SQCAIX, W_NRVEND, W_NRPARC, M_CDMODA, M_CDCAIX, 3, 0, 'P', M_HOATUA,'PAGAMENTO DE PARCELA', 'N', M_DTMOVI,
                M_TOPAGO, 0, M_NRBANC, M_NRAGEN, M_NRCONT, M_NRCHEQ)) Then
              Begin
                   if not (dmAdmDados.Estorno_Parcela_Manual(
                        W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC, M_DTMOVI, 'Erro ao estornar baixa de parcela')) Then
                        raise Exception.Create('Erro ao estornar baixa de parcela.');
                   //
                   raise Exception.Create('Erro ao incluir movimento de caixa.');
              End;
           //
           aDescricao := 'Baixa '+FormatFloat('###,##0.#0',M_TOPAGO) + ' | Em Caixa G '+ InttoStr(W_CDGRUP) + ' | C '+ InttoStr(W_NRCOTA) + ' | P '+InttoStr(W_NRPARC);
           dmAdmDados.SetTarefa_Usuario(aDescricao);
           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
          // novo 17/02/2009
          if not (dmAdmDados.SetSaldoCliente(W_NRVEND, W_CDGRUP, W_NRCOTA,W_CDCLIE,
                'A', M_TOPAGO)) then
                 Application.MessageBox(PChar('Erro ao tentar lança saldo de cliente.'),
                 'Saldo', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           If (bFlMulta) and (M_VLMULT > 0) Then
           begin
               aDescricao := 'Cobrou Multa: '+FormatFloat('###,##0.#0', M_VLMULT) + ' | Em Caixa G '+ InttoStr(W_CDGRUP) + ' | C '+ InttoStr(W_NRCOTA) + ' | P '+InttoStr(W_NRPARC);
               dmAdmDados.SetTarefa_Usuario(aDescricao);
               dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
           End;
           //
          Application.MessageBox(PChar(uFuncoes.MSG_OK),
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          bFlMulta := false;
          dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
             dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
          //
          if not (dmPesquisas.cdsConsultaCota.IsEmpty)  Then
            begin
             if not (uFrmAdmMain.admin) and (cbxImpressora.Checked) Then
              begin
               If Application.MessageBox('Imprimir Recibo de pagamento?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                       dmRelatorios.Gerar_Recibo(W_NRVEND, W_CDGRUP, W_NRCOTA,
                                W_NRPARC, M_NRSEQU, M_CDMODA, M_NMCLIE, M_TOPAGO);
               //
               If Application.MessageBox('Imprimir autenticação de recebimento?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                  Begin
                  // AutenticacaoBaixa(aVenda, aGrupo, aCota, aParcela,
                  // aCliente: integer; aDataMov: String; aValorParcela: Double);
                        Cont := 1;
                        While Cont <= 2 do
                          begin
                              dmAdmDados.AutenticacaoBaixa(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC,
                                    W_CDCLIE, M_NRSEQU, W_SQCAIX, DatetoStr(M_DTMOVI), M_TOPAGO);
                              //
                              Cont := Cont + 1;
                              //
                              If (Cont >= 1) Then
                                 Application.MessageBox(PChar('Imprimir '+InttoStr(Cont)+'ª autenticação.'),
                                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                                 //ShowMessage('Imprimir '+InttoStr(Cont)+'ª autenticação.');
                          End;  // fim-do-enquanto
                  End;
                  //
                  dmAdmDados.AutenticacaoBaixa(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC,
                        W_CDCLIE, M_NRSEQU,  W_SQCAIX, DatetoStr(M_DTMOVI), M_TOPAGO);
               {If Application.MessageBox('Impimir cupom de recebimento?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                     dmAdmDados.CupomBaixa(dmPesquisas.cdsConsultaCota,
                         W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDCLIE, '1');}
              End;
           End;
           // novo 13/11/2008
           If (M_FLCRED) Then
            begin
             If (M_VLCRED > 0) AND (dmAdmDados.VerificarProximoParcela(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC + 1)) Then
             begin
                     Application.MessageBox('Impressão de autenticação de crédito.',
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      // dmAdmDados.SetCreditoParcela(iVenda, iGrupo, iCota, iParcela,
                      // iCaixa: Integer; fValor: Double): Boolean;
                     If (dmAdmDados.SetCreditoParcela(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC + 1,
                         M_CDCAIX, M_CDMODA, M_VLCRED, M_NRBANC, M_NRAGEN, M_NRCONT, M_NRCHEQ, M_DTMOVI)) Then
                      begin
                         //
                         aDescricao := 'Credito '+FormatFloat('###,##0.#0',M_VLCRED) + ' | Em Caixa G '+ InttoStr(W_CDGRUP) + ' | C '+ InttoStr(W_NRCOTA) + ' | P '+InttoStr(W_NRPARC + 1);
                         dmAdmDados.SetTarefa_Usuario(aDescricao);
                         dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                         //
                         Application.MessageBox(PChar('Crédito lançando com sucesso.'),
                             'Crédito', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      End
                     Else
                       raise Exception.Create('Erro ao tentar lançar crédito para cliente.');
             End;
            End;
     End
     Else
          Application.MessageBox(PChar(MSG_ERRO),
                  'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
     //
  Finally
        btnSim.Enabled := True;
  End;
     Close;
end;

procedure TfrmBaixaEstorno.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmBaixaEstorno.Calcular;
begin
     dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat :=
                 dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat -
                 dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat +
                 dmPesquisas.cdsConsultaCotaREC_VLMULT.AsFloat;
     //
     edtTotalDigitado.Value := dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
end;

procedure TfrmBaixaEstorno.dbeMultaExit(Sender: TObject);
begin
     if not uFuncoes.Empty(dbeMulta.Text) then
     begin
          Calcular;
          //
          If (dsParcela.DataSet.FieldByName('REC_VLMULT').AsFloat > 0) Then
              bFlMulta := True
          Else
              bFlMulta := False; 
     End;
end;

procedure TfrmBaixaEstorno.dbeDTPAGAExit(Sender: TObject);
begin
 //     if (dmAdmDados.cdsVendaContas.State in [dsEdit]) Then
        if (dbeDTPAGA.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDTPAGA.text) Then
            begin
                 dbeDTPAGA.Text := DatetoStr(uFuncoes.FormatarData(dbeDTPAGA.text));
                 If (dbeDTPAGA.Date > Date()) Then
                    dmPesquisas.cdsConsultaCotaREC_DTPAGA.AsDateTime := Date();
                    //dbeDTPAGA.Date := Date();
            End
           Else
           begin
              dbeDTPAGA.clear;
              dbeDTPAGA.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmBaixaEstorno.FormShow(Sender: TObject);
Var
    M_QTDIAS : double;
begin
     M_CDCAIX := StrtoInt(uFrmAdmMain.M_CDUSUA);
     M_QTDIAS := 0;
     //
     If (uFrmAdmMain.admin) Then
        dbeDTPAGA.ReadOnly := False
     Else
        dbeDTPAGA.ReadOnly := True;
     //
     gbxCheque.Visible := False;
     //
     dmAdmDados.ListaModalidades(cmbModa);
     cmbModa.ItemIndex := 0;
     //
     dmPesquisas.cdsConsultaCota.Edit;
     dmPesquisas.cdsConsultaCotaREC_DTPAGA.AsDateTime := Date();
     dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat :=
                 dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat - dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat;
     //
     If (dmPesquisas.cdsConsultaCotaREC_DTVENC.AsDateTime >= Date()) Then
     begin
         lblVencimento.Font.Color := clBlue;
         lblDias.Font.Color       := lblVencimento.Font.Color;
     End
     Else
     Begin
         lblVencimento.Font.Color := clRed;
         lblDias.Font.Color       := lblVencimento.Font.Color;
         M_QTDIAS := Date() - dmPesquisas.cdsConsultaCotaREC_DTVENC.AsDateTime;
     End;
     //
     lblDias.Text := FloattoStr(M_QTDIAS);
     //
     lblVencimento.Text := dmPesquisas.cdsConsultaCotaREC_DTVENC.AsString;
     lblParcela.Text    := uFuncoes.StrZero(dmPesquisas.cdsConsultaCotaREC_NRPARC.AsString,2)
                               +'/'+dmPesquisas.cdsConsultaCotaCOT_PLANO.AsString;
     //
     cbxImpressora.Visible := False;
     //
     If (uFrmAdmMain.admin) Then
        cbxImpressora.Checked := False
     Else
     begin
        cbxImpressora.Checked := True;
        cbxImpressora.Visible := False;
     End;
     //
     Caption := Caption + '  -  '+M_NMCLIE;
     edtTotalDigitado.Value := dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat; 
end;

procedure TfrmBaixaEstorno.edtAgenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmBaixaEstorno.edtContaKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmBaixaEstorno.edtChequeKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmBaixaEstorno.edtContaExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtConta.Text) Then
        edtConta.Text := uFuncoes.StrZero(edtConta.Text,10);
end;

procedure TfrmBaixaEstorno.edtChequeExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtCheque.Text) Then
        edtCheque.Text := uFuncoes.StrZero(edtCheque.Text,10);
end;

procedure TfrmBaixaEstorno.Limpar;
begin
      edtAgencia.Clear;
      edtConta.Clear;
      edtCheque.Clear;
      edtBanco.Clear; 
      //
end;

procedure TfrmBaixaEstorno.edtBancoExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco.Text) Then
        edtBanco.Text := uFuncoes.StrZero(edtBanco.Text,3);
end;

procedure TfrmBaixaEstorno.cmbModaExit(Sender: TObject);
begin
     if (cmbModa.ItemIndex > 0) Then
      begin
        if (dmAdmDados.VerificarModa(StrtoInt(Copy(cmbModa.Text,1,3)),'C')) Then
         begin
            gbxCheque.Visible := True;
            edtBanco.SetFocus;
            Limpar;
         End;
      End
      Else
           gbxCheque.Visible := False;
end;

procedure TfrmBaixaEstorno.dbeMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
    { If not( key in['0'..'9',#8, #13] ) then
        key:=#0;}
     if (key = #13) Then
     begin
          key := #0;
          edtTotalDigitado.SetFocus;
     End;
end;

procedure TfrmBaixaEstorno.edtTotalDigitadoExit(Sender: TObject);
begin
     Validar_Valor;
end;

function TfrmBaixaEstorno.Validar_Valor: Boolean;
Var
   fValorEntrada, fValorPagar : double;
begin
     Result := True;
     fValorEntrada := edtTotalDigitado.Value;
     fValorPagar   := dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
     //uFuncoes.StrToReal(dbeValorPago.Text);
     //
     // if (dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat > edtTotalDigitado.Value) Then
     if not uFuncoes.Empty(edtTotalDigitado.Text) Then
       //If (uFuncoes.StrToReal(edtTotalDigitado.Text) < uFuncoes.StrToReal(dbeValorPago.Text)) Then
       // dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat
       If (fValorEntrada < fValorPagar) Then
         begin
               Application.MessageBox(PChar('Valor inválido.'),
                  'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
               edtTotalDigitado.Value := dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
               edtTotalDigitado.SetFocus;
               edtVLCRED.Value := 0;
               Result := False;
         End
         Else
          begin
              dmPesquisas.cdsConsultaCotaREC_VALOR_DIGITADO.AsFloat := edtTotalDigitado.Value;
              edtVLCRED.Value := edtTotalDigitado.Value - fValorPagar;
          End;
end;

procedure TfrmBaixaEstorno.dbeMultaEnter(Sender: TObject);
begin
    bFlMulta := false;
end;

procedure TfrmBaixaEstorno.dbeDTPAGAKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(dbeDTPAGA.Text)) Then
     begin
          key := #0;
          dbeMulta.SetFocus;
     End;
end;

procedure TfrmBaixaEstorno.edtTotalDigitadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(edtTotalDigitado.Text) Then
     begin
          key := #0;
          cmbModa.SetFocus;
     End;
end;

procedure TfrmBaixaEstorno.cmbModaKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(cmbModa.Text) Then
     begin
          key := #0;
          If (btnSim.Enabled) Then
             btnSim.SetFocus;
     End;
end;

end.

