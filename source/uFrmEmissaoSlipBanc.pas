unit uFrmEmissaoSlipBanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask,
  Grids, DBGrids, DBCtrls, DB, CurrEdit, ToolEdit, RpBase, RpSystem,
  RpDefine, RpRave, FMTBcd, DBClient, Provider, SqlExpr;

type
  TFrmEmissaoSlipBanc = class(TfrmCad)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    grdConsultar: TDBGrid;
    rbSelecao: TRadioGroup;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Label11: TLabel;
    edtDTASSE: TDateEdit;
    Label13: TLabel;
    edtSorteio: TEdit;
    Label14: TLabel;
    edtLance: TEdit;
    RadioGroup2: TRadioGroup;
    rbTipoBoleto: TRadioGroup;
    btnVisualizar: TBitBtn;
    BtSair: TBitBtn;
    dsVendaContas: TDataSource;
    dsParcelas: TDataSource;
    Panel6: TPanel;
    Label2: TLabel;
    cmbGrupos: TDBLookupComboBox;
    Label4: TLabel;
    dbeCOTA: TDBEdit;
    Label5: TLabel;
    dbePLANO: TDBEdit;
    Label8: TLabel;
    txtNMCLIE: TEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    rgSituacao: TRadioGroup;
    Label7: TLabel;
    edtBanco: TEdit;
    DateEdit1: TDateEdit;
    Label12: TLabel;
    btnTodos: TBitBtn;
    dsBancos: TDataSource;
    Panel7: TPanel;
    Label9: TLabel;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    CheckBox1: TCheckBox;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    dstBoletos: TSQLDataSet;
    dspBoletos: TDataSetProvider;
    cdsBoletosClientes: TClientDataSet;
    dsBoletosClientes: TDataSource;
    cdsBoletosClientesCOT_NRVENDA: TIntegerField;
    cdsBoletosClientesCOT_CDGRUPO: TIntegerField;
    cdsBoletosClientesCOT_NRCOTA: TIntegerField;
    cdsBoletosClientesCOT_CDCLIE: TIntegerField;
    cdsBoletosClientesCOT_POSICAO: TStringField;
    cdsBoletosClientesCOUNT: TIntegerField;
    cbxNossoNumero: TCheckBox;
    DataSource1: TDataSource;
    cbxGrupo: TCheckBox;
    btnLimpar: TBitBtn;
    edtNumAsse: TEdit;
    Label15: TLabel;
    rbgTipoBoleto: TRadioGroup;
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure spLocCotaClick(Sender: TObject);
    procedure edtCotaEnter(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsBoletosClientesDataChange(Sender: TObject; Field: TField);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure edtCodGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumAsseKeyPress(Sender: TObject; var Key: Char);
    procedure edtSorteioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTASSEExit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar;
    procedure MOSTRAR;
    procedure IMPRIMIR_BOLETO(M_NRVEND, M_CDGRUP, M_NRCOTA, M_NRPARC, M_TPIMPR : Integer);
    procedure IMPRIMIR_BOLETO_CARNE(M_NRVEND, M_CDGRUP, M_NRCOTA, M_NRPARC, M_TPIMPR : Integer);
    procedure IMPRIMIR_BOLETO_ATUAL;
    procedure IMPRIMIR_BOLETO_ATUAL_CARNE;
  public
    { Public declarations }
    Procedure Parcelas_Abertas(aVenda, aGrupo, aCota : integer; aDataInicio, aDataFinal : TDate);
  end;

var
  FrmEmissaoSlipBanc: TFrmEmissaoSlipBanc;
  VENDA : Integer;
  M_FLIMPR : Boolean;
  dtvenc : string;

implementation

uses udmAdmDados, uFuncoes, udmRelatorios, uDmPesquisas, uFrmConsultaCota,
  uCodBarras, uFrmAdmMain, uFrmBoletosClientes, uFrmSelecionarBanco;

{$R *.dfm}

procedure TFrmEmissaoSlipBanc.btnVisualizarClick(Sender: TObject);
begin
  inherited;
 //
 // If (edtGrupo.Text) Then
 //
 if not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
  begin
   M_FLIMPR := False;
   //
   if uFuncoes.Empty(edtGrupo.Text) Then
    begin
         edtGrupo.SetFocus;
         raise Exception.Create('Selecione o grupo.');
    End;
    //
    if not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
      begin
           If (rbTipoBoleto.ItemIndex = 0 ) Then
               IMPRIMIR_BOLETO_ATUAL;
           //
           If (rbTipoBoleto.ItemIndex = 1) Then
               IMPRIMIR_BOLETO_ATUAL_CARNE;
      End
      Else
           raise Exception.Create('N�o h� dados para impress�o.');
  End;
End;

procedure TFrmEmissaoSlipBanc.IMPRIMIR_BOLETO_ATUAL_CARNE;
Var
   W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC : Integer;
begin
   If not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
   begin
    W_NRVEND := dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger;
    W_CDGRUP := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger;
    W_NRCOTA := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger;
    W_NRPARC := dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger;
    //
      If uFuncoes.Empty(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
          dmAdmDados.Gerar_Nosso_Numero(
           dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger,
           dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger);
       //
       MOSTRAR;
       //
       if dmRelatorios.cdsConsultaCota.Locate('REC_NRVEND;REC_CDGRUP;REC_NRCOTA;REC_NRPARC',
               VarArrayOf([W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC]),[]) Then
           IMPRIMIR_BOLETO_CARNE(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, 1)
       Else
            raise Exception.Create('Erro na gera��o de boleto.');
   End;

end;

procedure TFrmEmissaoSlipBanc.BtSairClick(Sender: TObject);
begin
  inherited;
        Close;
end;

procedure TFrmEmissaoSlipBanc.Buscar;
begin

end;

procedure TFrmEmissaoSlipBanc.FormShow(Sender: TObject);
begin
  inherited;
       //
       If not (dmPesquisas.cdsListaBancos.Active) Then
          dmPesquisas.cdsListaBancos.Open;
       //
       Registro;
       //
       edtDTINIC.Date := Date();
       edtDTFINA.Date := IncMonth(Date());
end;

procedure TFrmEmissaoSlipBanc.Registro;
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
              //MOSTRAR;
              dmAdmDados.MOSTRA_SITUACAO_COTA2(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                 dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, 'A','1');
              //Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
         End;
end;

procedure TFrmEmissaoSlipBanc.spLocCotaClick(Sender: TObject);
begin
  inherited;
{    if not uFuncoes.Empty(edtGrupo.Text) Then
    begin
      edtCota.SetFocus;
      Application.CreateForm(TfrmConsCotas, frmConsCotas);
      try
          ufrmConsultaCota.M_CDGRUP := Strtoint(edtGrupo.Text);
          frmConsCotas.ShowModal;
      Finally
          if not (frmConsCotas.cdsConsultar.IsEmpty)   then
          begin
             edtCota.Text := frmConsCotas.cdsConsultarCOT_NRCOTA.AsString;
             W_NRVEND     := frmConsCotas.cdsConsultarCOT_NRVENDA.AsInteger;
             VENDA := W_NRVEND;
             //lblNomeGrupo.Caption := frmConsGrupos.cdsConsultarGRU_DESCRICAO.AsString;
             btnConsultar.SetFocus;
          end;
          //
          frmConsCotas.Free;
      End;
    End
    Else
        edtGrupo.SetFocus;
    //
               }
    VENDA :=  uFrmCadastro2.W_NRVEND;
    //VENDA := W_NRVEND;           
end;

procedure TFrmEmissaoSlipBanc.edtCotaEnter(Sender: TObject);
begin
  inherited;
     Venda := 0;
end;

procedure TFrmEmissaoSlipBanc.btnConsultarClick(Sender: TObject);
Var
   opcao : boolean;
   iCodbanco : Integer;
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text)
       and not uFuncoes.Empty(edtCota.Text ) then
        if not (dmPesquisas.cdsConsultar.IsEmpty) then
        Begin
             Venda := dmAdmDados.Verificar_Cota_Grupo_Aberta(StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
             If (Venda > 0) Then
                opcao := dmPesquisas.Buscar(Venda)
             Else
                 raise Exception.Create('Cota n�o cadastrada ou n�o ATIVA.');
                //opcao := dmPesquisas.Buscar(dmPesquisas.cdsConsultarCOT_NRVENDA.AsInteger);
             //
             if (opcao) Then
              begin
                   //
                   MOSTRAR;
                   //
                   With dsParcelas.DataSet do
                   begin
                        First;
                        While not (Eof) do
                        begin
                              If uFuncoes.Empty(dsParcelas.DataSet.FieldByName('rec_nossonumero').AsString) Then
                               begin
                                   if not (dmAdmDados.GetVerificarBancoAtivo(dsParcelas.DataSet.FieldByName('REC_CDBANC').AsInteger)) Then
                                    begin
                                          If Application.MessageBox(PChar('Codigo banco das Parcelas est� inativo!!!'+#13+
                                                                          'Deseja atualizar?'),
                                                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = idYes then
                                             begin

                                                   Application.CreateForm(TFrmSelecionarBanco, FrmSelecionarBanco);
                                                   Try
                                                       if (FrmSelecionarBanco.ShowModal = mrOk) Then
                                                        begin
                                                             iCodbanco := dmAdmDados.cdsListaCedenteBancosBAN_CODIGO.AsInteger;
                                                             //
                                                             If dmAdmDados.SetAtualizarCodigoBancoParcelas(dsVendaContas.DataSet.FieldByName('COT_NRVENDA').AsInteger, iCodbanco) Then
                                                              begin
                                                                   ShowMessage('Atualiza��o conclu�da.');
                                                                   btnConsultarClick(Sender);
                                                               End;
                                                             dsParcelas.DataSet.First;  
                                                             Break;
                                                        End
                                                        Else
                                                             ShowMessage('Atualiza��o de Banco das Parcelas '+#13+
                                                                         'cancelada pelo usu�rio.');
                                                   Finally
                                                       FrmSelecionarBanco.Free;
                                                   End;
                                             End;
                                             Break;  
                                    End;
                                   {if (dsVendaContas.DataSet.FieldByName('COT_CDBANCO').AsString <> dsParcelas.DataSet.FieldByName('REC_CDBANC').AsString) Then
                                      ShowMessage('C�digo do banco das parcelas est� diferente da venda!!!'+#13+
                                          'VENDA : '+dsVendaContas.DataSet.FieldByName('COT_CDBANCO').AsString+#13+
                                          'PARCELAS: '+dsParcelas.DataSet.FieldByName('REC_CDBANC').AsString);}
                               End;
                             //
                             Next;
                        End;
                         dsParcelas.DataSet.First;
                   End;
              End;
        End
        else
        begin
           edtCota.SetFocus;
           raise Exception.Create('Cota n�o cadastrada.');
        end;
     //
     if uFuncoes.Empty(edtGrupo.Text) then
      begin
           edtGrupo.SetFocus;
           Exit;
      end;
     //
     if uFuncoes.Empty(edtCota.Text) then
      begin
           edtCota.SetFocus;
           Exit;
      end;
end;

procedure TFrmEmissaoSlipBanc.MOSTRAR;
Var
   iBanco : integer;
begin
     txtNMCLIE.Text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     edtBanco.Text  := dmAdmDados.GetNomeBanco(dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger);
     //
     if (dsVendaContas.DataSet.FieldByName('COT_POSICAO').AsString = 'A') Then
         rgSituacao.ItemIndex := 0;
     if (dsVendaContas.DataSet.FieldByName('COT_POSICAO').AsString = 'I') Then
         rgSituacao.ItemIndex := 1;
     //
     {If (dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger = 1) then
      begin
           dmAdmDados.SetBancodoCliente(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, 1, 5);
      End; }
     dmAdmDados.MOSTRA_SITUACAO_COTA2(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, 'A','1');
     //
     iBanco := dmAdmDados.Banco_Venda(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
     //
     With dmRelatorios.cdsConsultaCota do
        begin
             DisableControls;
             While not (Eof) do
             begin
                  If uFuncoes.Empty(FieldByName('REC_CDBANC').AsString)
                     or (FieldByName('REC_CDBANC').AsInteger < 1) Then
                          If not (dmAdmDados.Atualizar_Banco_Cota_Vazio(
                                 FieldByName('REC_NRVEND').AsInteger,
                                 FieldByName('REC_CDGRUP').AsInteger,
                                 FieldByName('REC_NRCOTA').AsInteger,
                                 iBanco,
                                 FieldByName('REC_NRPARC').AsInteger)) Then
                                    raise Exception.Create('Erro');
                   //
                   next;
             End;
             EnableControls;
       End;
       //
      dmAdmDados.MOSTRA_SITUACAO_COTA2(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
        dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, 'A','1');
end;

procedure TFrmEmissaoSlipBanc.edtGrupoChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtGrupo.Text) Then
   begin
       dmPesquisas.cdsConsultar.Close;
       edtCota.Clear;
       dmRelatorios.cdsConsultaCota.close;
       dmRelatorios.cdsBoletosClientes.Close;
       // btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        dmPesquisas.cdsConsultar.Close;
        with dmPesquisas.datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO)';
            //
            Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            //
            Active := True;
        end;
        dmPesquisas.cdsConsultar.FetchParams;
        dmPesquisas.cdsConsultar.Open;
   end;

end;

procedure TFrmEmissaoSlipBanc.edtCotaChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtCota.Text) Then
   begin
        if not ufuncoes.Empty(edtGrupo.Text) then
            edtGrupoChange(Sender)
        Else
           dmPesquisas.cdsConsultar.Close;
   end
   Else
   begin
        dmPesquisas.cdsConsultar.Close;
        with dmPesquisas.datasetConsultar do
        begin
            Active := False;
            //CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA)';
            //
            Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            Params.ParamByName('pNRCOTA').AsString := edtCota.Text;
            //
            Active := True;
        end;
        dmPesquisas.cdsConsultar.FetchParams;
        dmPesquisas.cdsConsultar.Open;
   end;
end;

procedure TFrmEmissaoSlipBanc.IMPRIMIR_BOLETO(M_NRVEND, M_CDGRUP, M_NRCOTA,
  M_NRPARC, M_TPIMPR : Integer);
Var
   W_CDGRUP, W_NRCOTA, W_NMGRUP, X : String;
   W_DATA : TDate;
   W_NRDOCU, W_DIGITO, W_DIGIT2 : String;
   M_VLMULT, M_PEJURO ,M_VLJURO, M_VLTARI : Double;
begin
       with dmRelatorios do
        begin
             With cdsBoleto do
              begin
                   Active := False;
                   Params[0].AsInteger := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger;
                   Params[1].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger;
                   Params[2].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger;
                   Params[3].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger;
                   Active := True;
              end;
             //
             dmRelatorios.SELECIONA_CLIENTE(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
             //
             //dmRelatorios.PrepararTitulo(1);
             dmRelatorios.PrepararTitulo(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger);
             //
             dmRelatorios.IMPRIMIR_BOLETO(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger, 1,
                                          dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString, 'N');
             //
             W_CDGRUP := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsString;
             W_NRCOTA := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsString;
             W_NMGRUP := dmAdmDados.GetNomeGrupo(M_CDGRUP);
             W_NRDOCU := uFuncoes.StrZero(InttoStr(M_NRVEND),6) + '.'+uFuncoes.StrZero(InttoStr(M_NRPARC),3);
             M_VLTARI := dmRelatorios.cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat;
             //
             //RPDev.Orientation := poPortrait;
             RVSystem1.SystemPrinter.Orientation   := poPortrait;
             {RPDev.SetPaperSize(DMPAPER_A4,0,0);
             RPDev.SelectPaper('A4 small sheet, 210- by 297-millimeters',false);}
             //
             With RvBoleto do
             begin
                  uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                  M_VLMULT := dmAdmDados.cdsConfigCFG_MULTA.AsFloat;
                  M_PEJURO := dmAdmDados.cdsConfigCFG_JUROS.AsFloat;
                  // valorparcela, juros, multa, dias, parcelas
                  M_VLJURO := uFuncoes.Arredondar((uFuncoes.Gerapercentual(dmRelatorios.cdsConsultaCotaREC_TOTAL_CALC.AsFloat + M_VLMULT, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2);
                  {uFuncoes.CalcularJuros(dmRelatorios.cdsConsultaCotaREC_TOTAL_CALC.AsFloat,
                             dmAdmDados.cdsConfigCFG_JUROS.AsFloat,M_VLMULT);}
                  //
                  X := dmRelatorios.cdsConsultaCotaREC_DTVENC.AsString;
                  W_DATA := uFuncoes.Acrescentar_Dias_Data(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime);
                  //uFuncoes.Datafinal(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime, 10);
                  //
                  If (dmRelatorios.cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
                  begin
                    If (dmAdmDados.GetExisteDiaPagamento(M_NRVEND)) Then
                        SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO')
                    Else
                        SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(W_DATA)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO');
                  End
                  Else
                     SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO');
                  SetParam('INSTRUCOES2','Pague somente na Rede Banc�ria ou na Administradora');
                  SetParam('ESPECIE','R$');
                  //
                  SetParam('pAssembleia','');
                  SetParam('pCliente','');
                  //
                  If not uFuncoes.Empty(edtNumAsse.Text) and not uFuncoes.Empty(edtDTASSE.Text)
                    and not uFuncoes.Empty(edtSorteio.Text) and not uFuncoes.Empty(edtLance.Text) Then
                    begin
                        SetParam('pAssembleia','Assembl�ia  : '+edtNumAsse.Text + ' Realizada em : '+edtDTASSE.Text);
                        SetParam('pCliente',   'Por Sorteio : '+edtSorteio.Text + '  / Por Lance : '+edtLance.Text);
                    End;
                  //
                  SetParam('NUM_BANCO', uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_NRBANC.AsString,3)+ '-'+dmRelatorios.gbTitulo1.Cedente.ContaBancaria.Banco.Digito);
                  SetParam('NOME_BANCO', dmAdmDados.cdsbancosBAN_NOME.AsString);
                  SetParam('LINDIG',uCodBarras.TgbCobCodBar.Create.GetLinhaDigitavel(udmRelatorios.M_CODIGOBARRAS));
                  SetParam('CODIGO',udmRelatorios.M_CODIGOBARRAS);
                  SetParam('DTPROC', DatetoStr(Date()));
                  SetParam('LOCAL_PAG', dmAdmDados.cdsConfigCFG_LOCAL_PAGAMENTO.AsString);
                  SetParam('NMCEDE', dmAdmDados.cdsConfigCFG_NOMEEMPRESA.AsString + '      -   CNPJ: ' + uFuncoes.FormataCNPJ(dmAdmDados.cdsConfigCFG_CGC.AsString));
                  //SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira);
                  //SetParam('VLDOCU', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_TOTAL_CALC.AsFloat));
                  SetParam('VLDOCU', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat));
                  SetParam('TARIFA', FormatFloat('##0.#0',M_VLTARI));
                  SetParam('VLDOCU1', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat));
                  //SetParam('IMGBANCO', (dmAdmDados.cdsbancosBAN_LOGOMARCA. ));
                  //SetParam('GRUPO_COTA','Grupo');
                  // Dados cliente
                  SetParam('NMSACA', dmAdmDados.cdsClientesCLI_NOME.AsString);
                  SetParam('ENDCLIE', dmAdmDados.cdsClientesCLI_ENDERECO.AsString+' - '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString);
                  SetParam('CEPCIDUF', uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString) + ' - ' + dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' - '+dmAdmDados.cdsClientesCLI_UFCLIE.AsString);
                  if not uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CPF.AsString) Then
                      SetParam('CPFCNPJ', uFuncoes.FormataCPF(dmAdmDados.cdsClientesCLI_CPF.AsString));
                  if not uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CGC.AsString)
                      and uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CPF.AsString) Then
                      SetParam('CPFCNPJ', dmAdmDados.cdsClientesCLI_CGC.AsString);
                  SetParam('CODBAIXA', '');
                  SetParam('GRUPO_COTA', 'Grupo :   '+ W_CDGRUP+'  -  '+ W_NMGRUP +'     Cota :   '+W_NRCOTA);
                  SetParam('COTA','Cota :'+ W_NRCOTA);
                  SetParam('GRUPO', 'Grupo :   '+ W_CDGRUP+'  -  '+ W_NMGRUP);
                  if (dmRelatorios.cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
                     SetParam('PARC', 'PARCELA : '+ dmRelatorios.cdsConsultaCotaREC_NRPARC.AsString +'/'+dmRelatorios.cdsConsultaCotaCOT_PLANO.AsString)
                  Else
                     SetParam('PARC', dmRelatorios.cdsConsultaCotaREC_HISTORICO.AsString);
                  //
                  SetParam('COOPERCARRO','COOPERCARRO');
                  
                  SetParam('TEXTO', dmAdmDados.cdsConfigCFG_ENDERECO.AsString + 'Bairro '+dmAdmDados.cdsConfigCFG_BAIRRO.AsString+
                                    dmAdmDados.cdsConfigCFG_CIDADE.AsString +' - '+dmAdmDados.cdsConfigCFG_UF.AsString+' - '+'Cep.: '+ dmAdmDados.cdsConfigCFG_CEP_EMPRESA.AsString
                                    +'C.G.C. : '+uFuncoes.FormataCNPJ(dmAdmDados.cdsConfigCFG_CGC.AsString)+
                                    uFuncoes.FormataFONE(dmAdmDados.cdsConfigCFG_NRFONE1.AsString)+
                                    uFuncoes.FormataFONE(dmAdmDados.cdsConfigCFG_NRFONE2.AsString));
                  SetParam('TEXTO_BOL', dmAdmDados.cdsConfigCFG_MENSAGEM_BOLETO.AsString);
                  //SetParam('TEXTO','Av. Miguel Rosa, 6469/Sul Bairro vermelha Teresina - Piau� - Cep.: 64.018-860 C.G.C. : 01.193.126/0001-92 (086) 218-3316 - (086) 218-4652 - (086) 218-1919');
                  //
                  With dmRelatorios.gbTitulo1 do
                  begin
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 2) Then
                      Begin
                          dtvenc := dmRelatorios.cdsConsultaCotaREC_DTVENC.AsString;
                          dtvenc := Copy(dtvenc,1,2)+Copy(dtvenc,4,2)+Copy(dtvenc,9,2);
                          W_DIGITO := uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
                          W_DIGIT2 := uFuncoes.DigitoNossoNumero(StrtoFloat(NossoNumero+W_DIGITO+'4'),StrtoInt(dmAdmDados.cdsbancosBAN_CONVENIO.AsString) ,StrtoInt(dtvenc)) ;
                          W_DIGIT2 := uCodBarras.Modulo11(W_DIGIT2);
                          SetParam('NOSSONUM', NossoNumero + '-'+W_DIGITO+'4'+W_DIGIT2);
                      End
                      Else
                      begin
                           If (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 3) Then
                               SetParam('NOSSONUM',  NossoNumero)
                           Else
                               SetParam('NOSSONUM', NossoNumero + '-'+uCodBarras.Modulo11(gbTitulo1.NossoNumero,9));
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 1) Then
                          SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_NRCONT.AsString,8)+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString)
                      Else
                          if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 3) Then
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_CONVENIO.AsString,6)+ '/'
                                +uCodBarras.Modulo10(NossoNumero
                                               +uFuncoes.StrZero(gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia,4)
                                               +gbTitulo1.Cedente.ContaBancaria.fNumeroConta))
                          Else
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_CONVENIO.AsString,6));
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 1) Then
                      begin
                          //SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+Cedente.CodigoCedente+Cedente.DigitoCodigoCedente);
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira+'-'+dmAdmDados.cdsbancosBAN_VARIACAO.AsString);
                          SetParam('NRDOCU', W_NRDOCU);  // NumeroDocumento
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 2) Then
                      begin
                          //SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+Cedente.CodigoCedente+Cedente.DigitoCodigoCedente);
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira);
                          SetParam('NRDOCU', W_NRDOCU);  // NumeroDocumento
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 3) Then
                      begin
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira);
                          SetParam('NRDOCU', W_NRDOCU);  // NumeroDocumento
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 4) Then
                      begin
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira);
                          SetParam('NRDOCU', W_NRDOCU);   //  uFuncoes.Numero_Doc_Caixa(NossoNumero)
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 5) Then
                      begin
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira + '-'+ dmAdmDados.GetVariacaoBanco(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger));
                          SetParam('NRDOCU', Copy(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString,8,10));   //  uFuncoes.Numero_Doc_Caixa(NossoNumero)
                          SetParam('ESPECIEDOC','DM');
                          SetParam('pACEITE','N');
                          if not uFuncoes.Empty(dmAdmDados.cdsbancosBAN_DVCONT.AsString) Then
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                  +dmAdmDados.cdsbancosBAN_NRCONT.AsString+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString)
                          Else
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                  +dmAdmDados.cdsbancosBAN_NRCONT.AsString)
                          //
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 6) Then
                      begin
                          SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'/'
                             +dmAdmDados.cdsbancosBAN_NRCONT.AsString+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString);
                          SetParam('ESPECIEDOC','DM');
                          SetParam('pACEITE','N');
                          SetParam('Carteira', 'SR');
                          SetParam('NRDOCU', W_NRDOCU);   //  uFuncoes.Numero_Doc_Caixa(NossoNumero)
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 7) Then
                      begin
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira + '-'+ dmAdmDados.GetVariacaoBanco(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger));
                          SetParam('NRDOCU', Copy(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString,8,10));   //  uFuncoes.Numero_Doc_Caixa(NossoNumero)
                          SetParam('ESPECIEDOC','DM');
                          SetParam('pACEITE','N');
                          if not uFuncoes.Empty(dmAdmDados.cdsbancosBAN_DVCONT.AsString) Then
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                  +dmAdmDados.cdsbancosBAN_NRCONT.AsString+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString)
                          Else
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                  +dmAdmDados.cdsbancosBAN_NRCONT.AsString);
                             //
                      End;
                      //
                      If (Date() > dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime) Then
                          Parcelas_Abertas(M_NRVEND, M_CDGRUP, M_NRCOTA, edtDTINIC.Date, dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime);
                  End;
                  //
                  If not (M_FLIMPR) Then
                  begin
                       dmRelatorios.RvSystem1.DefaultDest := rdPreview;
                       Execute;
                  End
                  Else
                  begin
                       dmRelatorios.RvSystem1.DefaultDest := rdPrinter;
                       Execute;
                   End;
             end;
   End;
end;

procedure TFrmEmissaoSlipBanc.IMPRIMIR_BOLETO_ATUAL;
Var
   W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, W_CDBANC : Integer;
begin
   If not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
   begin
    W_NRVEND := dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger;
    W_CDGRUP := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger;
    W_NRCOTA := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger;
    W_NRPARC := dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger;
    W_CDBANC := dmAdmDados.Banco_Venda(W_NRVEND);
    //
    if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger < 1) Then
     begin
          raise Exception.Create('C�digo de banco inv�lido.');
     End;
      //
      If uFuncoes.Empty(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
          dmAdmDados.Gerar_Nosso_Numero(
           dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger,
           dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger,
           dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger);
       //
       dmPesquisas.Buscar(W_NRVEND);
       //
       MOSTRAR;
       //
       if dmRelatorios.cdsConsultaCota.Locate('REC_NRVEND;REC_CDGRUP;REC_NRCOTA;REC_NRPARC',
               VarArrayOf([W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC]),[]) Then
           IMPRIMIR_BOLETO(W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC, 1)
       Else
            raise Exception.Create('Erro na gera��o de boleto.');
   End;
end;

procedure TFrmEmissaoSlipBanc.IMPRIMIR_BOLETO_CARNE(M_NRVEND, M_CDGRUP,
  M_NRCOTA, M_NRPARC, M_TPIMPR: Integer);
Var
   W_CDGRUP, W_NRCOTA, W_NMGRUP, W_NRDOCU, W_DIGITO, W_DIGIT2 : String;
   W_DATA : TDate;
   M_VLMULT, M_PEJURO ,M_VLJURO, M_VLTARI : double;
begin
       //
       with dmRelatorios do
        begin
             With cdsBoleto do
              begin
                   Active := False;
                   Params[0].AsInteger := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsInteger;
                   Params[1].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsInteger;
                   Params[2].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRVEND .AsInteger;
                   Params[3].AsInteger := dmRelatorios.cdsConsultaCotaREC_NRPARC.AsInteger;
                   Active := True;
              end;
             //
             dmRelatorios.SELECIONA_CLIENTE(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
             //
             dmRelatorios.PrepararTitulo(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger);
             //
             dmRelatorios.IMPRIMIR_BOLETO(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger, 1,
                                          dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString, 'N');
             //
             uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
             M_VLMULT := dmAdmDados.cdsConfigCFG_MULTA.AsFloat;
             W_CDGRUP := dmRelatorios.cdsConsultaCotaREC_CDGRUP.AsString;
             W_NRCOTA := dmRelatorios.cdsConsultaCotaREC_NRCOTA.AsString;
             W_NMGRUP := dmAdmDados.GetNomeGrupo(M_CDGRUP);
             W_NRDOCU := uFuncoes.StrZero(InttoStr(M_NRVEND),6) + '.'+uFuncoes.StrZero(InttoStr(M_NRPARC),3);
             M_VLTARI := dmRelatorios.cdsConsultaCotaREC_VALORTARIFABANCO.AsFloat;
             M_VLJURO := uFuncoes.Arredondar((uFuncoes.Gerapercentual(dmRelatorios.cdsConsultaCotaREC_TOTAL_CALC.AsFloat + M_VLMULT, dmAdmDados.cdsConfigCFG_JUROS.AsFloat)/30),2);
             //
             dmRelatorios.RvSystem2.SystemPrinter.Orientation := poLandScape;
             //
             With RvBoletoCarne do
             begin
                  W_DATA := uFuncoes.Acrescentar_Dias_Data(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime);
                  If (dmRelatorios.cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
                  begin
                      If (dmAdmDados.GetExisteDiaPagamento(M_NRVEND)) Then
                          SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO')
                      Else
                        SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(W_DATA)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO');
                  End
                  Else
                      SetParam('INSTRUCOES1','SOMENTE AP�S '+DatetoStr(dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime)+' COBRAR MULTA DE '+FormatFloat('##0.#0',M_VLMULT)+'% E JUROS R$ '+FormatFloat('##0.#0',M_VLJURO)+' POR DIA DE ATRASO');
                  {'Pague somente na Rede Banc�ria ou na Administradora'}
                  SetParam('ESPECIE','R$');
                  SetParam('TARIFA', FormatFloat('##0.#0',M_VLTARI));
                  //
                  SetParam('NUM_BANCO', uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_NRBANC.AsString,3)+ '-'+dmRelatorios.gbTitulo1.Cedente.ContaBancaria.Banco.Digito);
                  SetParam('NOME_BANCO', '');
                  // SetParam('NOME_BANCO', dmAdmDados.cdsbancosBAN_NOME.AsString);
                  SetParam('LINDIG',uCodBarras.TgbCobCodBar.Create.GetLinhaDigitavel(udmRelatorios.M_CODIGOBARRAS));
                  SetParam('CODIGO',udmRelatorios.M_CODIGOBARRAS);
                  SetParam('DTPROC', DatetoStr(Date()));
                  SetParam('LOCAL_PAG', dmAdmDados.cdsConfigCFG_LOCAL_PAGAMENTO.AsString);
                  SetParam('NMCEDE', dmAdmDados.cdsConfigCFG_NOMEEMPRESA.AsString + ' - CNPJ: '+uFuncoes.FormataCNPJ(dmAdmDados.cdsConfigCFG_CGC.AsString));
                  //SetParam('VLDOCU', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_TOTAL_CALC.AsFloat));
                  SetParam('VLDOCU', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat));
                  SetParam('TARIFA', FormatFloat('##0.#0',M_VLTARI));
                  SetParam('VLDOCU1', FormatFloat('###,##0.#0',dmRelatorios.cdsConsultaCotaREC_VALORTITULOTITULO_CALC.AsFloat));
                  //SetParam('GRUPO_COTA','Grupo');
                  // Dados cliente
                  SetParam('NMSACA', dmAdmDados.cdsClientesCLI_NOME.AsString);
                  SetParam('ENDCLIE', dmAdmDados.cdsClientesCLI_ENDERECO.AsString+' - '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString);
                  SetParam('CEPCIDUF', uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString) + ' - ' + dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' - '+dmAdmDados.cdsClientesCLI_UFCLIE.AsString);
                  if not uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CPF.AsString) Then
                      SetParam('CPFCNPJ', uFuncoes.FormataCPF(dmAdmDados.cdsClientesCLI_CPF.AsString));
                  if not uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CGC.AsString)
                      and uFuncoes.Empty (dmAdmDados.cdsClientesCLI_CPF.AsString) Then
                      SetParam('CPFCNPJ', dmAdmDados.cdsClientesCLI_CGC.AsString);
                  SetParam('CODBAIXA', '');
                  SetParam('GRUPO_COTA', 'Grupo :   '+ W_CDGRUP+'  -  '+ W_NMGRUP +'     Cota :   '+W_NRCOTA);
                  SetParam('COTA','Cota :'+ W_NRCOTA);
                  SetParam('GRUPO', 'Grupo :   '+ W_CDGRUP+'  -  '+ W_NMGRUP);
                  If (dmRelatorios.cdsConsultaCotaREC_NATUREZA.AsInteger = 1) Then
                      SetParam('PARC', 'Parcela : '+ dmRelatorios.cdsConsultaCotaREC_NRPARC.AsString +'/'+dmRelatorios.cdsConsultaCotaCOT_PLANO.AsString)
                  Else
                      SetParam('PARC', dmRelatorios.cdsConsultaCotaREC_HISTORICO.AsString);
                  SetParam('COOPERCARRO','COOPERCARRO');
                  SetParam('TEXTO', dmAdmDados.cdsConfigCFG_ENDERECO.AsString + 'Bairro '+dmAdmDados.cdsConfigCFG_BAIRRO.AsString+
                                    dmAdmDados.cdsConfigCFG_CIDADE.AsString +' - '+dmAdmDados.cdsConfigCFG_UF.AsString+' - '+'Cep.: '+ dmAdmDados.cdsConfigCFG_CEP_EMPRESA.AsString
                                    +'CNPJ: '+uFuncoes.FormataCNPJ(dmAdmDados.cdsConfigCFG_CGC.AsString)+
                                    uFuncoes.FormataFONE(dmAdmDados.cdsConfigCFG_NRFONE1.AsString)+
                                    uFuncoes.FormataFONE(dmAdmDados.cdsConfigCFG_NRFONE2.AsString));
                  //SetParam('TEXTO','Av. Miguel Rosa, 6469/Sul Bairro verrmelha Teresina - Piau� - Cep.: 64.018-860 C.G.C. : 01.193.126/0001-92 (086) 218-3316 - (086) 218-4652 - (086) 218-1919');
                  SetParam('TEXTO_BOL', dmAdmDados.cdsConfigCFG_MENSAGEM_BOLETO.AsString);
                  SetParam('ASSEMBLEIAS', dmAdmDados.cdsConfigCFG_DTASSEMBLEIAS.AsString);
                  //
                  If (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 1) Then
                      SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira +'-019')
                  Else
                      SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira);
                  //
                  With dmRelatorios.gbTitulo1 do
                  begin
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 2) Then
                      Begin
                          dtvenc := dmRelatorios.cdsConsultaCotaREC_DTVENC.AsString;
                          dtvenc := Copy(dtvenc,1,2)+Copy(dtvenc,4,2)+Copy(dtvenc,9,2);
                          W_DIGITO := uCodBarras.Modulo11(gbTitulo1.NossoNumero,9);
                          W_DIGIT2 := uFuncoes.DigitoNossoNumero(StrtoFloat(NossoNumero+W_DIGITO+'4'),StrtoInt(dmAdmDados.cdsbancosBAN_CONVENIO.AsString) ,StrtoInt(dtvenc)) ;
                          W_DIGIT2 := uCodBarras.Modulo11(W_DIGIT2);
                          SetParam('NOSSONUM', NossoNumero + '-'+W_DIGITO+'4'+W_DIGIT2);
                      End
                      Else
                      begin
                           If (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 3) Then
                               SetParam('NOSSONUM', NossoNumero)
                               {+ '-'+uCodBarras.Modulo10(NossoNumero
                                               +uFuncoes.StrZero(gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia,4)
                                               +gbTitulo1.Cedente.ContaBancaria.fNumeroConta))}
                           Else
                               SetParam('NOSSONUM', NossoNumero + '-'+uCodBarras.Modulo11(gbTitulo1.NossoNumero,9));  // +uCodBarras.Modulo11(NossoNumero,9)
                      End;
                      //SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+Cedente.CodigoCedente+Cedente.DigitoCodigoCedente);
                      //SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_CONVENIO.AsString,6));
                      // Modifica��o
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 3) Then
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_CONVENIO.AsString,6)+ '/'
                                +uCodBarras.Modulo10(NossoNumero
                                               +uFuncoes.StrZero(gbTitulo1.Cedente.ContaBancaria.fCodigoAgencia,4)
                                               +gbTitulo1.Cedente.ContaBancaria.fNumeroConta))
                      Else
                          SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia +'/'+uFuncoes.StrZero(dmAdmDados.cdsbancosBAN_CONVENIO.AsString,6));
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 4) Then
                          SetParam('NRDOCU', W_NRDOCU)
                      Else
                          SetParam('NRDOCU', W_NRDOCU);
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 5) or (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 7) Then
                      begin
                          SetParam('Carteira', dmRelatorios.gbTitulo1.Carteira + '-'+ dmAdmDados.GetVariacaoBanco(dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger));
                          SetParam('NRDOCU',  Copy(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString, 8, 10));   //  uFuncoes.Numero_Doc_Caixa(NossoNumero)
                          SetParam('ESPECIEDOC','DM');
                          SetParam('pACEITE','N');
                          if not uFuncoes.Empty(dmAdmDados.cdsbancosBAN_DVCONT.AsString) Then
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                 +dmAdmDados.cdsbancosBAN_NRCONT.AsString+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString)
                          Else
                              SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'-'+Cedente.ContaBancaria.fDigitoAgencia+'/'
                                 +dmAdmDados.cdsbancosBAN_NRCONT.AsString);
                      End;
                      //
                      if (dmRelatorios.cdsConsultaCotaREC_CDBANC.AsInteger = 6) Then
                      begin
                          SetParam('Carteira', 'SR');
                          SetParam('NRDOCU', W_NRDOCU);
                          SetParam('ESPECIEDOC','DM');
                          SetParam('pACEITE','N');
                          SetParam('AGE_CEDENTE', Cedente.ContaBancaria.fCodigoAgencia+'/'
                             +dmAdmDados.cdsbancosBAN_NRCONT.AsString+'-'+dmAdmDados.cdsbancosBAN_DVCONT.AsString);
                      End;

                  End;
                  //
                  If not (M_FLIMPR) Then
                  begin
                       dmRelatorios.RvSystem2.DefaultDest := rdPreview;
                       Execute;
                  End
                  Else
                  begin
                       dmRelatorios.RvSystem2.DefaultDest := rdPrinter;
                       Execute;
                   End;
             end;
   End;
end;

procedure TFrmEmissaoSlipBanc.btnTodosClick(Sender: TObject);
Var
    iCotaInicial : integer;
    aTexto : String;
begin
  inherited;
   if uFuncoes.Empty(edtGrupo.Text) Then
    begin
         edtGrupo.SetFocus;
         raise Exception.Create('Digite o c�digo do grupo.');
    End;
    //
    If (cbxGrupo.Checked) Then
    begin
         //
         If (rbSelecao.ItemIndex = 1) and not uFuncoes.Empty(edtCota.Text) Then
             iCotaInicial := StrToInt(edtCota.Text)
         Else
             iCotaInicial := 1;
         //
         aTexto := 'Select C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, ';
         aTexto := aTexto + 'C.cot_posicao, COUNT(PC.rec_nrvend) FROM cotas C ';
         aTexto := aTexto + 'inner join PARCELAS PC on C.cot_nrvenda = PC.rec_nrvend ';
         aTexto := aTexto + 'Where (C.cot_cdgrupo = :pGRUPO) And (C.cot_posicao = :pposicao) ';
         aTexto := aTexto + ' and (C.COT_NRCOTA >= '+ QuotedStr(InttoStr(iCotaInicial))+') ';
         aTexto := aTexto + 'And (PC.REC_DTPAGA IS NULL) AND (PC.rec_dtvenc >= :pDTINIC) ';
         aTexto := aTexto + 'AND (PC.rec_dtvenc <= :pDTFINA) ';
         aTexto := aTexto + 'Group by C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, ';
         aTexto := aTexto + 'C.cot_posicao ';
         aTexto := aTexto + 'order by C.cot_cdgrupo, C.cot_nrcota ';
         //
         With  dmRelatorios.cdsBoletosClientes do
          begin
              Active := False;
              CommandText := aTexto; 
              Params.ParamByName('pGRUPO').AsInteger  := StrtoInt(edtGrupo.Text);
              Params.ParamByName('pposicao').AsString := 'A';
              Params.ParamByName('pDTINIC').AsDate    := edtDTINIC.Date;
              Params.ParamByName('pDTFINA').AsDate    := edtDTFINA.Date;
              Active := True;
          End;
          //
          If not (dmRelatorios.cdsBoletosClientes.IsEmpty) Then
           begin
             M_FLIMPR := False;
             //
             If Application.MessageBox('Imprimir todos os boletos do grupo?',
               'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
              begin
                 M_FLIMPR := True;
                 //
                 With dmRelatorios.cdsBoletosClientes do
                  begin
                       DisableControls;
                       First;
                       While not (Eof) do
                        begin
                             // aqui
                             dmAdmDados.MOSTRA_SITUACAO_COTA2(dmRelatorios.cdsBoletosClientesCOT_NRVENDA.AsInteger, dmRelatorios.cdsBoletosClientesCOT_CDGRUPO.AsInteger,
                             dmRelatorios.cdsBoletosClientesCOT_NRCOTA.AsInteger, 'A','1');
                             //
                             dmPesquisas.Buscar(dmRelatorios.cdsBoletosClientesCOT_NRVENDA.AsInteger);
                             MOSTRAR;
                             //
                             //ShowMessage('Cota atual : ' + dmRelatorios.cdsBoletosClientesCOT_NRCOTA.asstring);
                             //
                             With dmRelatorios.cdsConsultaCota do
                             begin
                                  First;
                                  //
                                  While not (Eof) do
                                   begin
                                      If (edtDTINIC.Text <> '  /  /    ') and (edtDTFINA.Text <> '  /  /    ')
                                         AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime >= edtDTINIC.Date)
                                         AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime <= edtDTFINA.Date)  Then
                                           if (cbxNossoNumero.Checked) Then
                                            begin
                                                If uFuncoes.Empty(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
                                                  if (rbTipoBoleto.ItemIndex = 0) Then
                                                       IMPRIMIR_BOLETO_ATUAL
                                                   Else
                                                       IMPRIMIR_BOLETO_ATUAL_CARNE;
                                            End
                                           Else
                                            begin
                                                  if (rbTipoBoleto.ItemIndex = 0) Then
                                                       IMPRIMIR_BOLETO_ATUAL
                                                   Else
                                                       IMPRIMIR_BOLETO_ATUAL_CARNE;
                                            End;
                                      //  proximo dmRelatorios.cdsConsultaCota
                                      Next;
                                   End;    // fim-do-enquanto  dmRelatorios.cdsConsultaCota
                             End;   // fim-with dmRelatorios.cdsConsultaCota
                             // Proximo   dmRelatorios.cdsBoletosClientes
                             Next;
                             //
                             If Application.MessageBox(PChar('SIM : Imprime boletos da cota '+dmRelatorios.cdsBoletosClientesCOT_NRCOTA.asstring+#13+
                                                             'N�O : Para impress�o.'),
                                   'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
                                   Break;
                        End;    // fim-do-enquanto  dmRelatorios.cdsBoletosClientes
                        EnableControls;
                  End;   // with dmRelatorios.cdsBoletosClientes
                  //
              End;
           End;  // fim-se dmRelatorios.cdsBoletosClientes n�o vazio
          //
          Exit;
    End;
   //
 //
 if not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
  begin
   M_FLIMPR := False;
   //
 if not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
 begin
  If (rbTipoBoleto.ItemIndex = 0 ) Then
  begin
       If Application.MessageBox('Imprimir todos os boletos da cota?',
           'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
        begin
            M_FLIMPR := True;
            With dmRelatorios.cdsConsultaCota do
            begin
                 First;
                 //
                 While not (Eof) do
                  begin
                     If (edtDTINIC.Text <> '  /  /    ') and (edtDTFINA.Text <> '  /  /    ')
                        AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime >= edtDTINIC.Date)
                        AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime <= edtDTFINA.Date)  Then
                          if (cbxNossoNumero.Checked) Then
                           begin
                               If uFuncoes.Empty(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
                                   IMPRIMIR_BOLETO_ATUAL;
                           End
                          Else
                              IMPRIMIR_BOLETO_ATUAL;
                     //
                     If (edtDTINIC.Text = '  /  /    ') and (edtDTFINA.Text = '  /  /    ') Then
                           IMPRIMIR_BOLETO_ATUAL;
                     //
                     Next;
                  End;
            End;
        End;
        //
  End;
  //
  If (rbTipoBoleto.ItemIndex = 1) Then
  begin
    If Application.MessageBox('Imprimir todos os boletos da cota?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
    begin
      M_FLIMPR := True;
      With dmRelatorios.cdsConsultaCota do
        begin
             First;
             //
             While not(Eof) do
              begin
                   If (edtDTINIC.Text <> '  /  /    ') and (edtDTFINA.Text <> '  /  /    ')
                      AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime >= edtDTINIC.Date)
                      AND (dmRelatorios.cdsConsultaCotaREC_DTVENC.AsDateTime <= edtDTFINA.Date)  Then
                        if (cbxNossoNumero.Checked) Then
                         begin
                             If uFuncoes.Empty(dmRelatorios.cdsConsultaCotaREC_NOSSONUMERO.AsString) Then
                                 IMPRIMIR_BOLETO_ATUAL_CARNE;
                         End
                        Else
                            IMPRIMIR_BOLETO_ATUAL_CARNE;
                   //
                   If (edtDTINIC.Text = '  /  /    ') and (edtDTFINA.Text = '  /  /    ') Then
                        IMPRIMIR_BOLETO_ATUAL_CARNE;
                   //
                   Next;
              End;
        End;
    End;
  End;
 End
 Else
     raise Exception.Create('N�o h� dados para impress�o.');
 End;    
end;

procedure TFrmEmissaoSlipBanc.edtDTINICExit(Sender: TObject);
begin
  inherited;
        if (edtDTINIC.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTINIC.Text) Then
              edtDTINIC.Date := uFuncoes.FormatarData(edtDTINIC.text)
           Else
           begin
              edtDTINIC.Clear;
              edtDTINIC.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;
end;

procedure TFrmEmissaoSlipBanc.edtDTFINAExit(Sender: TObject);
begin
  inherited;
        if (edtDTFINA.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTFINA.Text) Then
           begin
               edtDTFINA.Date := uFuncoes.FormatarData(edtDTFINA.text);
               //
               if (edtDTFINA.Date < edtDTINIC.Date) Then
                begin
                     edtDTFINA.SetFocus;
                     edtDTFINA.Date := edtDTINIC.Date;
                     raise Exception.Create('Data final deve ser maior ou igual a incial.');
                End;
           End
           Else
           begin
              edtDTFINA.Clear;
              edtDTFINA.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;
end;

procedure TFrmEmissaoSlipBanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmPesquisas.cdsListaBancos.Close;
end;

procedure TFrmEmissaoSlipBanc.Parcelas_Abertas(aVenda, aGrupo,
  aCota: integer; aDataInicio, aDataFinal: TDate);
VAR
   M_TEXTO : String;
begin
     dmAdmDados.MOSTRA_SITUACAO_COTA(aVenda, aGrupo, aCota);
     //
     M_TEXTO := '';
     if not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
     begin
       With dmPesquisas.cdsConsultaCota do
        begin
             //
             With dmRelatorios.RvBoleto do
             begin
                  SetParam('MENS_PARC',' ');
                  SetParam('PARC_ABERTAS', ' ');
             end;
             //
             First;
             While not (Eof) do
              begin
                  // (FieldByName('REC_DTVENC').AsDateTime >= aDataInicio) and
                  //If  Then
                     if  (FieldByName('REC_DTPAGA').IsNull) and (FieldByName('REC_DTVENC').AsDateTime < aDataFinal) Then
                      begin
                           M_TEXTO := M_TEXTO + uFuncoes.StrZero(FieldByName('REC_NRPARC').AsString,3)+' de: '+
                                                FieldByName('REC_DTVENC').AsString+' '+FormatFloat('###,##0.#0',FieldByName('REC_TOTAL_CALC').AsFloat)+' - ';
                      End;
                   //
                   If (FieldByName('REC_DTVENC').AsDateTime > aDataFinal) Then
                      Break;
                    //
                    Next;
              End;
              //
              if not uFuncoes.Empty(M_TEXTO) Then
                With dmRelatorios.RvBoleto do
                begin
                   SetParam('MENS_PARC', 'Encontra(m)-se aberta(s) a(s) seguinte(s) parcelas em atraso, favor desconsiderar aviso se as mesma j� tiverem sido pagas.');
                   SetParam('PARC_ABERTAS', M_TEXTO);
                end;
        End;
     End;
end;

procedure TFrmEmissaoSlipBanc.FormCreate(Sender: TObject);
begin
  inherited;
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
            dmAdmDados.Verificar_Direito_Acesso(
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Emiss�o de Boletos Bancarios...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnVisualizar.Visible  := (novo = 'S');
     btnTodos.Visible       := (alterar = 'S');
   End;
end;

procedure TFrmEmissaoSlipBanc.BitBtn1Click(Sender: TObject);
begin
  inherited;
     With cdsBoletosClientes do
      begin
          Active := False;
          Params.ParamByName('pGRUPO').AsInteger  := StrtoInt(edtGrupo.Text);
          Params.ParamByName('pposicao').AsString := 'A';
          Params.ParamByName('pDTINIC').AsDate    := edtDTINIC.Date;
          Params.ParamByName('pDTFINA').AsDate    := edtDTFINA.Date;
          Active := True;
      End;
     //
     frmMain.AbreForm(TfrmBoletosClientes, frmBoletosClientes);
end;

procedure TFrmEmissaoSlipBanc.dsBoletosClientesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      dmAdmDados.MOSTRA_SITUACAO_COTA2(cdsBoletosClientesCOT_NRVENDA.AsInteger, cdsBoletosClientesCOT_CDGRUPO.AsInteger,
         cdsBoletosClientesCOT_NRCOTA.AsInteger, 'A','1');
end;

procedure TFrmEmissaoSlipBanc.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
       If not (dmRelatorios.cdsConsultaCota.IsEmpty) Then
           btnVisualizarClick(Sender);
end;

procedure TFrmEmissaoSlipBanc.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      dmAdmDados.MOSTRA_SITUACAO_COTA2(dmRelatorios.cdsBoletosClientesCOT_NRVENDA.AsInteger, dmRelatorios.cdsBoletosClientesCOT_CDGRUPO.AsInteger,
         dmRelatorios.cdsBoletosClientesCOT_NRCOTA.AsInteger, 'A','1');
      //
      dmPesquisas.Buscar(dmRelatorios.cdsBoletosClientesCOT_NRVENDA.AsInteger);
      MOSTRAR;
end;

procedure TFrmEmissaoSlipBanc.edtCodGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEmissaoSlipBanc.edtNumAsseKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEmissaoSlipBanc.edtSorteioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmEmissaoSlipBanc.edtDTASSEExit(Sender: TObject);
begin
  inherited;
        if (edtDTASSE.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTASSE.Text) Then
              edtDTASSE.Date := uFuncoes.FormatarData(edtDTASSE.text)
           Else
           begin
              edtDTASSE.Clear;
              edtDTASSE.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;
end;

procedure TFrmEmissaoSlipBanc.btnLimparClick(Sender: TObject);
begin
  inherited;
      edtNumAsse.Clear;
      edtDTASSE.Clear;
      edtSorteio.Clear;
      edtLance.Clear;        
end;

End.
