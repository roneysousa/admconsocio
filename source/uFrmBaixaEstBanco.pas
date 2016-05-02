unit uFrmBaixaEstBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolEdit, RXDBCtrl, Mask, DBCtrls, ExtCtrls,
  DB;

type
  TfrmBaixaEstBanco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dbeMulta: TDBEdit;
    dbeValorPago: TDBEdit;
    DBEdit1: TDBEdit;
    dbeDTPAGA: TDBDateEdit;
    Panel2: TPanel;
    BtSair: TBitBtn;
    btnSim: TBitBtn;
    edtModalidade: TEdit;
    dsParcela: TDataSource;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    lblVencimento: TEdit;
    lblParcela: TEdit;
    lblDias: TEdit;
    procedure BtSairClick(Sender: TObject);
    procedure btnSimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeMultaExit(Sender: TObject);
    procedure dbeMultaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeValorPagoExit(Sender: TObject);
    procedure dbeDTPAGAExit(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular;    
  public
    { Public declarations }
  end;

var
  frmBaixaEstBanco: TfrmBaixaEstBanco;
  M_CDCAIX : Integer;

implementation

uses uDmPesquisas, udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmBaixaEstBanco.BtSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmBaixaEstBanco.btnSimClick(Sender: TObject);
Var
    M_VLPAGA, M_TOPAGO, W_TOPAGA, W_VLDIGI : double;
    M_HOATUA : String;
    W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDCLIE, M_NRSEQU, M_CDMODA, M_NRBANC, W_SQCAIX : integer;
    M_DTMOVI : Tdate;
    M_NRAGEN, M_NRCONT, M_NRCHEQ, aDescricao, aNossoNum : String;
begin
     //
     W_TOPAGA := uFuncoes.Arredondar(dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat
           - dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat,2);
     //
     if (dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat < W_TOPAGA ) then
      begin
           dbeValorPago.SetFocus;
           raise Exception.Create('Valor Pago Inferior ao Valor da Parcela.');
      end;
     //
     M_NRBANC := 0;
     M_TOPAGO := 0;
     //
     W_NRVEND :=  dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger;
     W_CDGRUP :=  dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger;
     W_NRCOTA :=  dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger;
     W_NRPARC :=  dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger;
     M_TOPAGO :=  dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat;
     W_VLDIGI :=  dmPesquisas.cdsConsultaCotaREC_VALOR_DIGITADO.AsFloat;
     W_CDCLIE :=  dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
     aNossoNum := dmPesquisas.cdsConsultaCotaREC_NOSSONUMERO.AsString;
     // modalidade CONTA BANCO
     M_CDMODA :=  3;
     M_NRBANC := 0;
     M_NRAGEN := '';
     M_NRCONT := '';
     M_NRCHEQ := '';
     //
     M_VLPAGA := uFuncoes.Arredondar(dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat - dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat,2);
     M_HOATUA := Copy(TimetoStr(Time),1,5);
     M_DTMOVI := Date();
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
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     M_NRSEQU := dmAdmDados.cdsConfigCFG_MOV_CAIXA_SEQ.AsInteger;
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
               W_VLDIGI, 'B', M_HOATUA, M_NRSEQU)) then
     begin
          W_SQCAIX := dmAdmDados.GetSequenciaCaixa(M_CDCAIX);
          // Incluir movimento de caixa
          // pSEQUENCIA, pVENDA, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
          //pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
          // aBanco : Integer; aAgencia, aConta, aCheque
          if Not (dmAdmDados.Incluir_Movimento_Caixa(
                M_NRSEQU, W_SQCAIX, W_NRVEND, W_NRPARC, M_CDMODA, M_CDCAIX, 3, 0, 'P', M_HOATUA,'PAGAMENTO DE PARCELA', 'N', M_DTMOVI,
                M_TOPAGO, 0, M_NRBANC, M_NRAGEN, M_NRCONT, M_NRCHEQ)) Then
              Begin
                   if not (dmAdmDados.Estorno_Parcela_Manual(
                        W_CDGRUP, W_NRCOTA, W_NRVEND, W_NRPARC, M_DTMOVI,'')) Then
                        raise Exception.Create('Erro ao estornar baixa de parcela.');
                   //
                   raise Exception.Create('Erro ao incluir movimento de caixa.');
              End;
           //
           aDescricao := 'Baixa Banco : '+FormatFloat('###,##0.#0',M_TOPAGO) +  '  | Titulo :'+aNossoNum + ' | Hora : '+M_HOATUA;
           dmAdmDados.SetTarefa_Usuario(aDescricao);
           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
           // novo 17/02/2009
           if not (dmAdmDados.SetSaldoCliente(W_NRVEND, W_CDGRUP, W_NRCOTA,W_CDCLIE,
                        'A', M_TOPAGO)) then
              Application.MessageBox(PChar('Erro ao tentar lança saldo de cliente.'),
                   'Saldo', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
          Application.MessageBox(PChar(uFuncoes.MSG_OK),
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
             dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
          //
          if not (dmPesquisas.cdsConsultaCota.IsEmpty)  Then
            begin
               {If Application.MessageBox('Impimir cupom de recebimento?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                     dmAdmDados.CupomBaixa(dmPesquisas.cdsConsultaCota,
                         W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDCLIE, '1'); }
           End;
     End
     Else
          Application.MessageBox(PChar(MSG_ERRO),
                  'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
     //
     Close;
end;

procedure TfrmBaixaEstBanco.FormShow(Sender: TObject);
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
end;

procedure TfrmBaixaEstBanco.dbeMultaExit(Sender: TObject);
begin
     if not uFuncoes.Empty(dbeMulta.Text) then
        Calcular;
end;

procedure TfrmBaixaEstBanco.Calcular;
begin
     dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat :=
                 dmPesquisas.cdsConsultaCotaREC_TOTAL_CALC.AsFloat -
                 dmPesquisas.cdsConsultaCotaREC_CREDITO.AsFloat +
                 dmPesquisas.cdsConsultaCotaREC_VLMULT.AsFloat;
end;

procedure TfrmBaixaEstBanco.dbeMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
    { If not( key in['0'..'9',#8, #13] ) then
        key:=#0;}
end;

procedure TfrmBaixaEstBanco.dbeValorPagoExit(Sender: TObject);
begin
     If (dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat > 0) Then
       dmPesquisas.cdsConsultaCotaREC_VALOR_DIGITADO.AsFloat :=
          dmPesquisas.cdsConsultaCotaREC_TOTAL_PAGO.AsFloat
end;

procedure TfrmBaixaEstBanco.dbeDTPAGAExit(Sender: TObject);
begin
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

end.
