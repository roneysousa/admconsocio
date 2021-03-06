unit uFrmLancamentoLance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask,
    Grids, DBGrids, DB, DBCtrls, FMTBcd, DBClient,
  Provider, SqlExpr, ToolEdit, CurrEdit, Menus;

type
  TfrmLancamentoLance = class(TfrmCad)
    pnlDadosCliente: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtNMCLIE: TEdit;
    Label2: TLabel;
    edtCreditoTotal: TCurrencyEdit;
    pnlGrid: TPanel;
    grdConsultar: TDBGrid;
    GroupBox2: TGroupBox;
    rgSituacao: TRadioGroup;
    cbxContemplacao: TCheckBox;
    Label13: TLabel;
    edtParcPagas: TCurrencyEdit;
    Label14: TLabel;
    edtParcAtras: TCurrencyEdit;
    Label15: TLabel;
    edtParcVinc: TCurrencyEdit;
    Label16: TLabel;
    edtPCAtrasadas: TCurrencyEdit;
    Label17: TLabel;
    edtValorPCVincendas: TCurrencyEdit;
    dsParcelas: TDataSource;
    dbePLANO: TDBEdit;
    dsVendaContas: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
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
    btnImpressao: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtCDGrupo: TEdit;
    edtNumCota: TEdit;
    edtNRASSE: TEdit;
    edtValor: TCurrencyEdit;
    edtPerc: TCurrencyEdit;
    edtNrCota: TEdit;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    DBGrid1: TDBGrid;
    dsLanceCota: TDataSource;
    lbl_situacao: TLabel;
    rbLanceValor: TRadioGroup;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    mnuGruposItem: TMenuItem;
    mnuClienteItem: TMenuItem;
    mnuVendasItem: TMenuItem;
    BaixaParcelas1: TMenuItem;
    mnuCaixaItem: TMenuItem;
    Parametro1: TMenuItem;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    rbTipoLance: TRadioGroup;
    btnLocNome: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtNumCotaExit(Sender: TObject);
    procedure edtCDGrupoExit(Sender: TObject);
    procedure btnImpressaoClick(Sender: TObject);
    procedure edtNumCotaEnter(Sender: TObject);
    procedure edtPercExit(Sender: TObject);
    procedure spLocCotaClick(Sender: TObject);
    procedure edtCotaEnter(Sender: TObject);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorEnter(Sender: TObject);
    procedure edtCDGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRASSEKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumCotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPercKeyPress(Sender: TObject; var Key: Char);
    procedure edtNrCotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDGrupoChange(Sender: TObject);
    procedure edtValorChange(Sender: TObject);
    procedure edtPercChange(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure rbLanceValorClick(Sender: TObject);
    procedure mnuGruposItemClick(Sender: TObject);
    procedure mnuClienteItemClick(Sender: TObject);
    procedure mnuCaixaItemClick(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
    procedure mnuVendasItemClick(Sender: TObject);
    procedure edtPercEnter(Sender: TObject);
    procedure edtNRASSEChange(Sender: TObject);
    procedure rbTipoLanceClick(Sender: TObject);
    procedure edtCotaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnLocNomeClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar(W_NRVEND : integer);
    procedure MOSTRAR;
    procedure Limpar;
    procedure Calcular;
    procedure Calcular_Percentual(W_VLPERC : double);
    procedure TravaBotoes;
    procedure Testa_Percentual;
    procedure Testa_Campos;
    procedure Verificar_Existe_Lance;
  public
    { Public declarations }
  end;

var
  frmLancamentoLance: TfrmLancamentoLance;
  N_NRVEND, VENDA : Integer;
  M_FLPERC, M_FLCANC : Boolean;
  W_VLPERC : Double;

implementation

uses udmAdmDados, uDmPesquisas, uFuncoes, uFrmAdmMain, uFrmRelLances,
  uFrmCadGrupos, uFrmCadClientes, uFrmBaixaEstornoPC, uFrmVendas, Math,
  uFrmPesquisaCliente;

{$R *.dfm}

{ TfrmLancamentoLance }

procedure TfrmLancamentoLance.btnCancelarClick(Sender: TObject);
begin
  inherited;
       Limpar;
end;

procedure TfrmLancamentoLance.btnConsultarClick(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text)
       and not uFuncoes.Empty(edtCota.Text ) then
        if not (cdsConsultar.IsEmpty) then
        Begin
             Venda := dmAdmDados.Verificar_Cota_Grupo_Aberta(StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
             //
             If (Venda > 0) Then
                Buscar(Venda)
             Else
                Buscar(cdsConsultarCOT_NRVENDA.AsInteger);
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

procedure TfrmLancamentoLance.btnExcluirClick(Sender: TObject);
Var
    aDescricao, aGrupo, aCota, aAssembleia : String;
    iSequencia : integer;
begin
  inherited;
     If Application.MessageBox('Confirma a exclus�o de lance?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
        if (udmAdmDados.W_NRSEQU > 0) Then
          Begin
               //
               iSequencia := dmAdmDados.cdsLancesCotasLAN_SEQUENCIA.AsInteger;
               aAssembleia := dmAdmDados.cdsLancesCotasLAN_NRASSEMBLEIA.AsString ;
               aGrupo     := dmAdmDados.cdsLancesCotasLAN_CDGRUP.AsString;
               aCota      := dmAdmDados.cdsLancesCotasLAN_NRCOTA.AsString;
               //
               aAssembleia := edtNRASSE.Text;
               aDescricao := 'Excluiu Assembleia : '+ aAssembleia + ' | G ' + aGrupo + ' | C ' + edtNumCota.Text + ' | Valor : ' +aCota;
               dmAdmDados.SetTarefa_Usuario(aDescricao);
               dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
               //
               dmAdmDados.Excluir_Lance(iSequencia);
               //udmAdmDados.W_NRSEQU
               //
               btnCancelarClick(Sender);
          End;
end;

procedure TfrmLancamentoLance.btnGravarClick(Sender: TObject);
Var
   W_NRVEND : Integer;
   M_TPLANC, M_NMMENS : string;
   aDescricao, aAssembleia : String;
begin
  inherited;
      //
      M_NMMENS := 'Confirma lance?';
      //
      If uFuncoes.Empty(edtPerc.Text) Then
        begin
             If (edtValor.Enabled) Then
                 edtValor.SetFocus
             Else
                 edtPerc.SetFocus;
             //
             raise Exception.Create('Valor inv�lido.');
        End;
       //
      Testa_Percentual;
      //W_NRVEND := dmAdmDados.GetNumeroVenda(StrToInt(edtCDGrupo.Text),StrToInt(edtNumCota.Text));
      //
    If Application.MessageBox(PChar(M_NMMENS),
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
    begin
      //
      If (dmAdmDados.VerificarProximoLance()) Then
        if not (dmAdmDados.AjustaProximoLance()) Then
         Raise exception.Create('Erro ao tentar atualizar sequencia de lance.');
      // M_FLLIMI
      if (rbTipoLance.Enabled) Then
      begin
        if (rbTipoLance.ItemIndex = 0) Then
            M_TPLANC := 'L';
        //
        if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S') Then
           if (edtPerc.Value >= dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat)
               and (edtPerc.Value <= dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat) Then
                //if (rbTipoLance.ItemIndex = 1) or (M_FLLIMI) Then
                 M_TPLANC := 'T';
      End
      Else
          M_TPLANC := '';
      //
      if (dmAdmDados.Incluir_Lance(StrToInt(edtCDGrupo.Text),
                                   StrToInt(edtNumCota.Text),
                                   N_NRVEND,
                                   StrToInt(edtNRASSE.Text),
                                   M_TPLANC,
                                   edtValor.Value,
                                   edtPerc.Value,
                                   Date())) then
       Begin
         //
         aAssembleia := edtNRASSE.Text;
         aDescricao := 'Lan�ou na Assembleia : '+ aAssembleia + ' | G ' + edtCDGrupo.Text + ' | C ' + edtNumCota.Text + ' | Valor : ' +edtValor.Text;
         dmAdmDados.SetTarefa_Usuario(aDescricao);
         dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
         //
         Application.MessageBox(PChar(MSG_OK),
            'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         Limpar;
       End
      Else
      begin
          Application.MessageBox(PChar(MSG_ERRO),
             'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          btnCancelarClick(Sender);
      end;
    End;
end;

procedure TfrmLancamentoLance.btnImpressaoClick(Sender: TObject);
begin
  inherited;
      FrmMain.AbreForm(TfrmModRelLance, frmModRelLance); 
end;

procedure TfrmLancamentoLance.Buscar(W_NRVEND : integer);
begin
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := W_NRVEND;
          //cdsConsultarCOT_NRVENDA.AsInteger;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             MOSTRAR;
             //Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
           end;
     end;
end;

procedure TfrmLancamentoLance.Calcular;
begin
     edtPerc.Value  := uFuncoes.Calcula_Percentual(edtValor.Value, dmAdmDados.cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat);
     edtNrCota.Text := FormatFloat('###,##0.#0',uFuncoes.Calcula_Quantidade_Parcela(edtValor.Value, dmAdmDados.cdsVendaContasCOT_VLCOTA_CALC.AsFloat));
end;

procedure TfrmLancamentoLance.edtCDGrupoExit(Sender: TObject);
begin
  inherited;
      if not uFuncoes.Empty(edtCDGrupo.Text) then
        if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtCDGrupo.Text))) then
           begin
                edtCDGrupo.SetFocus;
                raise exception.Create('Grupo n�o cadastro.');
           end
           Else
           begin
                uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsInteger, edtCDGrupo.Text);
                //
                if not (dmAdmDados.cdsGrupos.IsEmpty) Then
                 begin
                      if (dmAdmDados.cdsGrupos.FieldByName('GRU_LIMITADO').AsString = 'S') Then
                          rbTipoLance.Enabled := True
                      Else
                          rbTipoLance.Enabled := False;
                 End;
           End;
end;

procedure TfrmLancamentoLance.edtCotaChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtCota.Text) Then
   begin
        if not ufuncoes.Empty(edtGrupo.Text) then
            edtGrupoChange(Sender)
        Else
           cdsConsultar.Close;
   end
   Else
   begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            //CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            datasetConsultar.Params.ParamByName('pNRCOTA').AsString := edtCota.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;

end;

procedure TfrmLancamentoLance.edtGrupoChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtGrupo.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
      // btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmLancamentoLance.edtNumCotaEnter(Sender: TObject);
begin
  inherited;
       TravaBotoes;
end;

procedure TfrmLancamentoLance.edtNumCotaExit(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtCDGrupo.Text) and not uFuncoes.Empty(edtNumCota.Text) then
     begin
      if not (dmAdmDados.GetCotaCliente(StrtoInt(edtCDGrupo.Text),StrtoInt(edtNumCota.Text))) Then
        begin
            //lblVenda.Caption := '';
            edtNumCota.SetFocus;
            edtNumCota.Clear;
            Application.MessageBox(PChar('Cota n�o cadastrado ou '+#13+'situa��o n�o � Ativa.'),
                  'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
            Exit;
        end
        else
        begin
           { If not (dmAdmDados.GetExistePCPaga(StrtoInt(edtCDGrupo.Text),StrtoInt(edtNumCota.Text))) Then
            begin
               Application.MessageBox(PChar('N�o h� parcela(s) paga(s) pelo cliente da cota.'),
                  'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               edtNumCota.clear;
               edtNumCota.SetFocus;
               Exit;
            End; }
            //
            if (dmAdmDados.VerificarCotaContemplada(StrtoInt(edtCDGrupo.Text),StrtoInt(edtNumCota.Text))) Then
              begin
                   //lblVenda.Caption := '';
                   edtNumCota.SetFocus;
                   edtNumCota.Clear;
                   Application.MessageBox(PChar('Cota j� contemplada.'),
                     'ATEN��O', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                   Exit;
                   //raise Exception.Create('');
              End;
            //
            N_NRVEND := dmAdmDados.GetNumeroVenda(StrtoInt(edtCDGrupo.Text),StrtoInt(edtNumCota.Text));
            //
            Buscar(N_NRVEND);
            uFuncoes.FilterCDS(dmAdmDados.cdsVendaContas, fsInteger, InttoStr(N_NRVEND));
            //
            if not (dmAdmDados.cdsVendaContas.IsEmpty) and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
              begin
                   N_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
                   btnGravar.Enabled  := True;
                   btnExcluir.Enabled := True;
                   //
                   edtValor.Enabled := True;
                   edtPerc.Enabled  := True;
                   //
                   edtValor.SetFocus;
              End;
              //
              Verificar_Existe_Lance;
        end;
     End;
end;

procedure TfrmLancamentoLance.edtValorExit(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtCDGrupo.Text) and
      not uFuncoes.Empty(edtNumCota.Text) and
      not uFuncoes.Empty(edtNRASSE.Text) Then
        begin
             if (edtValor.Value > edtValorPCVincendas.Value) Then
              begin
                  edtValor.SetFocus;
                  edtValor.Clear;
                  raise Exception.Create('Valor superior ao d�bito.');
              End;
             //
             If not (M_FLPERC) and not uFuncoes.Empty(edtValor.Text) Then
             begin
                  Calcular;
                  //
                  btnGravar.Enabled  := True;
                  btnExcluir.Enabled := True;
                  //
                  If (btnGravar.Enabled) Then
                      btnGravar.SetFocus;
              End;
             //
        end
        Else
        begin
            // btnGravar.Enabled  := False;
            // btnExcluir.Enabled := False;
        end;
end;

Procedure TfrmLancamentoLance.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     Limpar;
     //
     mnuGruposItem.Enabled  := frmMain.mnuGruposItem.Enabled;
     mnuClienteItem.Enabled := frmMain.mnuClienteItem.Enabled;
     mnuVendasItem.Enabled  := frmMain.mnuVendasItem.Enabled;  
     mnuCaixaItem.Enabled   := frmMain.mnuBancoItem.Enabled;
end;

procedure TfrmLancamentoLance.Limpar;
begin
    edtCDGrupo.Clear;
    edtNumCota.Clear;
    edtNRASSE.Clear;
    edtValor.Clear;
    edtNrCota.Clear;
    edtPerc.Clear;
    //lblVenda.Caption := '';
    lbl_situacao.Caption := '';
    //
     btnGravar.Enabled := False;
     btnExcluir.Enabled := False;
    //
    dmAdmDados.cdsLancesCotas.Close;
    //
    edtValor.Enabled := False;
    edtPerc.Enabled  := False;
    rbTipoLance.Enabled := False;
    M_FLLIMI := False;
    //
    If (GroupBox1.Enabled) Then
       edtNRASSE.SetFocus;
end;

procedure TfrmLancamentoLance.MOSTRAR;
Var
    M_PCVINC, M_PCATRA : Double;
begin
     M_PCVINC := 0 ;
     //
     txtNMCLIE.Text        := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     edtCreditoTotal.Value := dmAdmDados.cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat;
     // rgSituacao
     if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') then
        rgSituacao.ItemIndex := 0;
     if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') then
        rgSituacao.ItemIndex := 1;
     if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'V') then
        rgSituacao.ItemIndex := 2;
     //
     if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
         cbxContemplacao.Checked := True
     Else
         cbxContemplacao.Checked := False;
     //
     dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
     //
     edtParcPagas.Text := InttoStr(dmPesquisas.Parcelas_Pagas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcAtras.Text := InttoStr(dmPesquisas.Parcelas_Atrasadas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcVinc.Text  := InttoStr(dmPesquisas.Parcelas_Vincendas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     //
     M_PCVINC := dmAdmDados.Valor_Parcelas_Vincendas(dmPesquisas.cdsConsultaCota);
     edtValorPCVincendas.Text := FormatFloat('###,##0.#0',M_PCVINC );
     //
     M_PCATRA := dmAdmDados.Total_Parcelas_Atrasadas(dmPesquisas.cdsConsultaCota);
     edtPCAtrasadas.Text := FormatFloat('###,##0.#0',M_PCATRA );
     //
     if (M_PCATRA > 0) Then
        lbl_situacao.Caption := 'INADIPLENTE';
     //
     if (M_PCATRA = 0) Then
        lbl_situacao.Caption := 'OK';
     //
        
end;

procedure TfrmLancamentoLance.Registro;
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

procedure TfrmLancamentoLance.TravaBotoes;
begin
    edtValor.Clear;
    edtNrCota.Clear;
    edtPerc.Clear;
    //
    btnGravar.Enabled := False;
    btnExcluir.Enabled := False;
end;

procedure TfrmLancamentoLance.edtPercExit(Sender: TObject);
begin
  inherited;
      Calcular_Percentual(edtPerc.Value);
       //
      Testa_Percentual;
      //
      If (btnGravar.Enabled) Then
        btnGravar.SetFocus;
end;

procedure TfrmLancamentoLance.Testa_Percentual;
begin
    if not uFuncoes.Empty(edtCDGrupo.Text) Then
     begin
         uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsInteger, edtCDGrupo.Text);
         if not (dmAdmDados.cdsGrupos.IsEmpty) Then
          begin
                 if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S') Then
                Begin
                   if not uFuncoes.Empty(edtPerc.Text) and (M_FLLIMI) and (rbTipoLance.ItemIndex = 1) Then
                   begin
                     if (dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat > 0) Then
                       if (edtPerc.Value < dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat) Then
                          begin
                                edtPerc.SetFocus;
                                //
                                raise Exception.Create('Percentual inferior ao permitido.');
                          End;
                       //
                     if (dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat > 0) Then
                       if (edtPerc.Value > dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat) then
                          begin
                               edtPerc.SetFocus;
                               raise Exception.Create('Percentual superior ao permitido.');
                          End;
                      //
                   End;
                   //
                   if not uFuncoes.Empty(edtPerc.Text) and (rbTipoLance.Enabled) Then
                   begin
                      if (edtPerc.Value >= dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat)
                         and (edtPerc.Value <= dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat) Then
                      begin
                           M_FLLIMI := True;
                           //rbTipoLance.ItemIndex := 1;
                      End;
                   End;   
                End;
          End;
         //
         if not uFuncoes.Empty(edtPerc.Text)
          and (edtPerc.Value > 0) and not (M_FLLIMI) then
           begin
             If (edtPerc.Value < dmAdmDados.cdsGruposGRU_LANCE_MINIMO.AsFloat) Then
              begin
                   edtPerc.SetFocus;
                   //
                   raise Exception.Create('Valor inferior ao permitido.');
              End;
              //
              btnGravar.Enabled  := True;
              btnExcluir.Enabled := True;
           End;
     End;
end;

procedure TfrmLancamentoLance.spLocCotaClick(Sender: TObject);
begin
  inherited;
       VENDA :=  uFrmCadastro2.W_NRVEND;
       //
end;

procedure TfrmLancamentoLance.edtCotaEnter(Sender: TObject);
begin
  inherited;
      Venda := 0;
end;

procedure TfrmLancamentoLance.edtValorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if uFuncoes.Empty(edtCDGrupo.Text) Then
      begin
           edtCDGrupo.SetFocus;
           Exit;
      End;
    //
    if uFuncoes.Empty(edtNumCota.Text) Then
      begin
           edtNumCota.SetFocus;
           Exit;
      End;
    //
    if uFuncoes.Empty(edtNRASSE.Text) Then
      begin
           edtNRASSE.SetFocus;
           Exit;
      End;
    //
   { if not uFuncoes.Empty(edtCDGrupo.Text) and not uFuncoes.Empty(edtNumCota.Text)
      and not uFuncoes.Empty(edtNRASSE.Text) Then
       if (key = Vk_F3) Then
         begin
               W_VLPERC := 0;
               //
               try
                   W_VLPERC := StrtoFloat(inputBox('','Informe Percentual',''));
                   //edtValor.Value := ;
                   edtPerc.Value := W_VLPERC;
                   Calcular_Percentual(W_VLPERC);
                   //
                   M_FLPERC := True;
               except
                     on e: exception do
                      begin
                           Application.MessageBox(PChar('Valor inv�lido!!! Erro:'+#13
                                   + E.Message),
                                   'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                           edtValor.SetFocus;
                      End;
               End;
         End;}
end;

procedure TfrmLancamentoLance.Calcular_Percentual(W_VLPERC : double);
begin
     //edtPerc.Value  := uFuncoes.Calcula_Percentual(edtValor.Value, dmAdmDados.cdsVendaContasCOT_TOTAL_CREDITO_CALC.AsFloat);
     edtValor.Text :=
         FormatFloat('###,##0.#0',
         uFuncoes.Gerapercentual(edtCreditoTotal.Value, W_VLPERC));
     edtNrCota.Text := FormatFloat('###,##0.#0',uFuncoes.Calcula_Quantidade_Parcela(edtValor.Value, dmAdmDados.cdsVendaContasCOT_VLCOTA_CALC.AsFloat));
     //
     If (btnGravar.Enabled) Then
         btnGravar.SetFocus;
end;

procedure TfrmLancamentoLance.edtValorEnter(Sender: TObject);
begin
  inherited;
       M_FLPERC := False;
       //
       Testa_Campos;
       //
       edtPerc.Value := 0; 
end;

procedure TfrmLancamentoLance.edtCDGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
      key:=#0;
end;

procedure TfrmLancamentoLance.edtNRASSEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
      key:=#0;
end;

procedure TfrmLancamentoLance.edtNumCotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
      key:=#0;
end;

procedure TfrmLancamentoLance.edtPercKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     {If not( key in['0'..'9',#8, #13, #27, ','] ) then
        key:=#0;}
     //
     if (key = #27) Then
     begin
          key := #0;
          M_FLCANC := True;
          btnCancelarClick(Sender);
          //
          edtNRASSE.SetFocus;
     End;
end;

procedure TfrmLancamentoLance.edtNrCotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
      key:=#0;
end;

procedure TfrmLancamentoLance.edtCDGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtCDGrupo.Text) Then
       begin
            edtNumCota.Clear;
            //edtNRASSE.Clear;
            edtValor.Clear;
            edtNrCota.Clear;
            edtPerc.Clear;
            //lblVenda.Caption := '';
            //
             btnGravar.Enabled := False;
             btnExcluir.Enabled := False;
            //
            dmAdmDados.cdsLancesCotas.Close;
       End;
end;

procedure TfrmLancamentoLance.edtValorChange(Sender: TObject);
begin
  inherited;
     if uFuncoes.Empty(edtValor.Text) Then
      begin
           edtPerc.Clear;
           edtNrCota.Clear;
      End;
end;

procedure TfrmLancamentoLance.edtPercChange(Sender: TObject);
begin
  inherited;
     if uFuncoes.Empty(edtPerc.Text) Then
      begin
           edtValor.Clear;
           edtNrCota.Clear;
      End;
end;

procedure TfrmLancamentoLance.edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     //if (key = #27) and not uFuncoes.Empty(edtValor.Text) Then
     if (key = #27) Then
     begin
          key:=#0;
          btnCancelarClick(Sender);
          edtNRASSE.SetFocus;
     End;
end;

procedure TfrmLancamentoLance.rbLanceValorClick(Sender: TObject);
begin
  inherited;
     Testa_Campos;
     if (rbLanceValor.ItemIndex = 0) Then
       begin
            edtValor.Enabled := True;
            edtPerc.Enabled  := False;
            //
            edtValor.SetFocus;
       End
     Else
       begin
           edtValor.Enabled := False;
           edtPerc.Enabled  := True;
           //
           edtPerc.SetFocus;
       End;
end;

procedure TfrmLancamentoLance.mnuGruposItemClick(Sender: TObject);
begin
  inherited;
     frmMain.AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TfrmLancamentoLance.mnuClienteItemClick(Sender: TObject);
begin
  inherited;
    frmMain.AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TfrmLancamentoLance.mnuCaixaItemClick(Sender: TObject);
begin
  inherited;
     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 2;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TfrmLancamentoLance.Banco1Click(Sender: TObject);
begin
  inherited;
     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 1;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TfrmLancamentoLance.mnuVendasItemClick(Sender: TObject);
begin
  inherited;
     frmMain.AbreForm(TfrmVendas, frmVendas);
end;

procedure TfrmLancamentoLance.edtPercEnter(Sender: TObject);
begin
  inherited;
        M_FLPERC := True;
        //
        Testa_Campos;
        //
        edtValor.Value := 0; 
end;

procedure TfrmLancamentoLance.Testa_Campos;
begin
     if uFuncoes.Empty(edtCDGrupo.Text) Then
      begin
           edtCDGrupo.SetFocus;
           Exit;
      End;
      //
     if uFuncoes.Empty(edtNumCota.Text) Then
      begin
           edtNumCota.SetFocus;
           Exit;
      End;
      //
     if uFuncoes.Empty(edtNRASSE.Text) Then
      begin
           edtNRASSE.SetFocus;
           Exit;
      End;
end;

procedure TfrmLancamentoLance.edtNRASSEChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtNRASSE.Text) Then
        begin
             edtCDGrupo.Clear;
             edtNrCota.Clear;    
        End;
end;

procedure TfrmLancamentoLance.Verificar_Existe_Lance;
Var
    aValor : Double;
begin
  inherited;
    if not uFuncoes.Empty(edtCDGrupo.Text) and not uFuncoes.Empty(edtNumCota.Text)
      and not uFuncoes.Empty(edtNRASSE.Text) Then
      begin
         aValor := dmAdmDados.GetLance(StrToInt(edtCDGrupo.Text),StrToInt(edtNumCota.Text),StrToInt(edtNRASSE.Text));
         dmAdmDados.GetLanceCota(StrtoInt(edtCDGrupo.Text),StrtoInt(edtNumCota.Text), StrtoInt(edtNRASSE.Text));
         if (aValor > 0) Then
            edtValor.Value := aValor;
         //
         if not (dmAdmDados.cdsLancesCotas.IsEmpty) Then
          begin
              edtPerc.Value := dmAdmDados.cdsLancesCotasLAN_PELANC.AsFloat;
              edtNrCota.Text := FormatFloat('###,##0.#0',uFuncoes.Calcula_Quantidade_Parcela(edtValor.Value, dmAdmDados.cdsVendaContasCOT_VLCOTA_CALC.AsFloat));
          End;
          //
      End;
end;

procedure TfrmLancamentoLance.rbTipoLanceClick(Sender: TObject);
begin
  inherited;
     M_FLLIMI := True;
     edtValor.Clear;
     edtPerc.Clear;
     edtValor.SetFocus;
end;

procedure TfrmLancamentoLance.edtCotaExit(Sender: TObject);
begin
  inherited;
      If (uFrmCadastro2.W_NRVEND > 0) Then
         VENDA :=  uFrmCadastro2.W_NRVEND;
end;

procedure TfrmLancamentoLance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
       dmPesquisas.cdsConsultaCota.Close; 
end;

procedure TfrmLancamentoLance.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Lances'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     GroupBox1.Enabled   := (novo = 'S');
     btnCancelar.Visible := (alterar = 'S');
     btnImpressao.Visible := (alterar = 'S');
     //
     BtnExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

procedure TfrmLancamentoLance.btnLocNomeClick(Sender: TObject);
begin
  inherited;
       frmMain.AbreForm(TfrmPesClientes, frmPesClientes); 
end;

End.
