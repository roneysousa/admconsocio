unit uFrmMovCadContemplacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask,
  Grids, DBGrids, DBCtrls, FMTBcd, DB, DBClient,
  Provider, SqlExpr, ToolEdit, CurrEdit, Menus, RXDBCtrl;

type
  TfrmCadContemplacao = class(TfrmCad)
    pnlDadosCliente: TPanel;
    GroupBox2: TGroupBox;
    edtNRASSE: TCurrencyEdit;
    Label13: TLabel;
    Label2: TLabel;
    edtDTCONT: TDateEdit;
    grdConsultar: TDBGrid;
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
    dsVendaContas: TDataSource;
    dsParcelas: TDataSource;
    Panel1: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    cmbGrupos: TDBLookupComboBox;
    dbeCOTA: TDBEdit;
    dbePLANO: TDBEdit;
    DBEdit2: TDBEdit;
    cbxIniciou: TCheckBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    txtNMCLIE: TEdit;
    rbSituacao: TDBRadioGroup;
    cbxFLCONT: TCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    Grupos1: TMenuItem;
    Cliente1: TMenuItem;
    Vendas1: TMenuItem;
    BaixaParcelas1: TMenuItem;
    Caixa1: TMenuItem;
    Crdito1: TMenuItem;
    Parametro1: TMenuItem;
    Panel2: TPanel;
    btnBaixa: TBitBtn;
    btnEstornar: TBitBtn;
    bntSim: TBitBtn;
    btnNao: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bntSimClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure edtDTCONTExit(Sender: TObject);
    procedure edtNRASSEExit(Sender: TObject);
    procedure edtNRASSEKeyPress(Sender: TObject; var Key: Char);
    procedure edtCotaEnter(Sender: TObject);
    procedure spLocCotaClick(Sender: TObject);
    procedure dsVendaContasStateChange(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    //procedure Buscar(W_NRVEND : integer);
    procedure Buscar(iVenda, aGrupo, aCota : integer);
    procedure MOSTRAR;
    procedure Controles(M_FLSITU : Boolean);
    procedure Botoes(M_FLSITU : Boolean);
    procedure Registro;
    procedure FecharBancos;
  public
    { Public declarations }
  end;

var
  frmCadContemplacao: TfrmCadContemplacao;
  Venda : integer;

implementation

uses uFuncoes, udmAdmDados, uDmPesquisas, uFrmAdmMain, uFrmCadGrupos,
  uFrmCadClientes, uFrmVendas, uFrmBaixaEstornoPC;

{$R *.dfm}

procedure TfrmCadContemplacao.bntSimClick(Sender: TObject);
Var
    N_NRVEND : Integer;
    aDescricao, aGrupo, aCota : String;
begin
  inherited;
     if (edtNRASSE.Value <= 0) or uFuncoes.Empty(edtNRASSE.Text) then
      begin
           edtNRASSE.setfocus;
           raise Exception.Create('Digite o número da assembléia.');
      end;
      //
      if (edtDTCONT.Text = '  /  /    ' ) then
        begin
             edtDTCONT.SetFocus;
             raise Exception.Create('Digite a data a assembléia.');
        end;
     //
     N_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
    if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'N') then
        If Application.MessageBox('Confirma contemplação?',
          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
            if (dmAdmDados.Contemplacao_Cota(
                                 dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                 dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                 dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                 StrtoInt(edtNRASSE.Text),
                                 edtDTCONT.Date, 0,'S')) Then
            begin
                 Application.MessageBox(PChar(MSG_OK),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                aGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
                aCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
                aDescricao := 'Baixou Contemp. Sorteio: G '+ aGrupo + ' | C ' + aCota;
                dmAdmDados.SetTarefa_Usuario(aDescricao);
                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
            End
            Else
                 Application.MessageBox(PChar(MSG_ERRO),
                       'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
     //
     Buscar(N_NRVEND, 0,0);
     //
     Botoes(False);
     //
     dsVendaContasStateChange(Sender);                
end;

procedure TfrmCadContemplacao.Botoes(M_FLSITU: Boolean);
begin
     bntSim.Enabled := M_FLSITU;
     btnNao.Enabled := M_FLSITU;
     //
     btnBaixa.Enabled    := not M_FLSITU;
     btnEstornar.Enabled := not M_FLSITU;
end;

procedure TfrmCadContemplacao.btnBaixaClick(Sender: TObject);
begin
  inherited;
            Controles(True);
            Botoes(True);
            //
            edtNRASSE.SetFocus;  
end;

procedure TfrmCadContemplacao.btnConsultarClick(Sender: TObject);
begin
  inherited;
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
    //
    If (uFrmCadastro2.W_NRVEND > 0) Then
           Venda :=  uFrmCadastro2.W_NRVEND;
    //
    if not uFuncoes.Empty(edtGrupo.Text)
       and not uFuncoes.Empty(edtCota.Text ) then
        //if not (cdsConsultar.IsEmpty) then
        Begin
             //If (Venda > 0) Then
                Buscar(0, StrtoInt(edtGrupo.Text),StrtoInt(edtCota.Text));
             {Else
                Buscar(cdsConsultarCOT_NRVENDA.AsInteger);}
        End
        else
        begin
           edtCota.SetFocus;
           raise Exception.Create('Cota não cadastrada.');
        end;
end;

procedure TfrmCadContemplacao.btnEstornarClick(Sender: TObject);
Var
    aDescricao, aGrupo, aCota : String;
begin
  inherited;
     //
     aGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
     aCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
     //
    if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') then
      If Application.MessageBox('Confirma o estorno de contemplação?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          If (dmAdmDados.Estorno_Contemplacao_Cota(
                                 dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                 dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                 dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger)) Then
            begin
                 Application.MessageBox(PChar(MSG_OK),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                //
                aDescricao := 'Estornou Contemp. Sorteio: G '+ aGrupo + ' | C ' + aCota;
                dmAdmDados.SetTarefa_Usuario(aDescricao);
                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
            End
            Else
                 Application.MessageBox(PChar(MSG_ERRO),
                       'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
     //
     Buscar(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, 0,0);
end;

procedure TfrmCadContemplacao.btnNaoClick(Sender: TObject);
begin
  inherited;
         Botoes(False);
         Controles(False);
         //
         dsVendaContasStateChange(Sender);
end;

procedure TfrmCadContemplacao.Buscar(iVenda, aGrupo, aCota: integer);
var qraux : TSQLquery;
    texto : string;
    aVenda : Integer;
begin
 if (iVenda = 0) Then
 begin
  texto  := 'Select COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_POSICAO from COTAS Where (COT_CDGRUPO = :pCDGRUPO) and (COT_NRCOTA = :pCOTA) and (COT_POSICAO = :pPOSICAO) ';
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pCDGRUPO').AsInteger := aGrupo;
       Params.ParamByName('pCOTA').AsInteger    := aCota;
       Params.ParamByName('pPOSICAO').AsString  := 'A';
       Open;
       //
       If not (IsEmpty) Then
          aVenda := fieldByName('COT_NRVENDA').AsInteger
       Else
          aVenda := 0;
   finally
      free;
   end;
 End
 Else
    aVenda := iVenda;
   //
   If (aVenda > 0) Then
   begin
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := aVenda;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             txtNMCLIE.Text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
             //
             MOSTRAR;
             //Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
           end;
           //
           Controles(False);
     end;
   End
   Else
   begin
        FecharBancos;
        //
        edtCota.Clear;
        edtCota.SetFocus;
        //
        raise Exception.Create('Cliente não está ativo.');
   End;
end;

procedure TfrmCadContemplacao.Controles(M_FLSITU: Boolean);
begin
       edtNRASSE.Enabled := M_FLSITU;
       edtDTCONT.Enabled := M_FLSITU;
       //
       if (M_FLSITU = False) then
        begin
           edtNRASSE.Clear;
           edtDTCONT.Clear;
        end;
end;

procedure TfrmCadContemplacao.edtCotaChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtCota.Text) Then
   begin
        {if not ufuncoes.Empty(edtGrupo.Text) then
            edtGrupoChange(Sender)
        Else}
           cdsConsultar.Close;
           //
           FecharBancos; 
   end
   Else
   begin
        {cdsConsultar.Close;
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
        cdsConsultar.Open;}
   end;
end;

procedure TfrmCadContemplacao.edtDTCONTExit(Sender: TObject);
begin
  inherited;
        if (edtDTCONT.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTCONT.text) Then
              edtDTCONT.Text := DatetoStr(uFuncoes.FormatarData(edtDTCONT.text))
           Else
              edtDTCONT.SetFocus;
end;

procedure TfrmCadContemplacao.edtGrupoChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtGrupo.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
       FecharBancos;
      // btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        {cdsConsultar.Close;
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
        cdsConsultar.Open; }
   end;
end;

procedure TfrmCadContemplacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      //
      dmPesquisas.cdsConsultaCota.Close;
      dmAdmDados.cdsVendaContas.Close;
end;

procedure TfrmCadContemplacao.FormShow(Sender: TObject);
begin
  inherited;
     Controles(False);
     Botoes(False);
     Panel1.Enabled := False;
     //
     btnBaixa.Enabled    := False;
     btnEstornar.Enabled := False;
     //
     FecharBancos; 
    // Registro;
end;

procedure TfrmCadContemplacao.MOSTRAR;
begin
     dmAdmDados.STATUS_GRUPO(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
     //
     dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
     //
     txtNMCLIE.Text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     //
     if not (dmAdmDados.cdsGrupos.IsEmpty) then
       if (dmAdmDados.cdsGruposGRU_INICIOU.AsString = 'S') then
           cbxIniciou.Checked := True
       Else
           cbxIniciou.Checked := False;
    //
    if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') then
        cbxFLCONT.Checked := True
    Else
        cbxFLCONT.Checked := False;
    //
    if (cbxFLCONT.Checked) then
     begin
          btnBaixa.Enabled    := False;
          btnEstornar.Enabled := True;
     end
     else
     begin
          If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
             btnBaixa.Enabled    := True
          Else
             btnBaixa.Enabled    := False;
          //
          btnEstornar.Enabled := False;
     end;

end;

procedure TfrmCadContemplacao.Registro;
begin
     dmAdmDados.Parametros;
     //
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

procedure TfrmCadContemplacao.edtNRASSEExit(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtNRASSE.Text) Then
      begin
           If (edtNRASSE.Value <= 0) Then
           begin
                edtNRASSE.SetFocus;
                edtNRASSE.Clear;
                raise Exception.Create('Valor inválido.');
           End;
           //
           if dmAdmDados.GetAssembleiaGrupo(dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
                     StrtoInt(edtNRASSE.text)) Then
             begin
                  if not (dmAdmDados.Grupo_Mult(dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger)) Then
                  begin
                      edtNRASSE.SetFocus;
                      edtNRASSE.Clear;
                      raise Exception.Create('Grupo não é de Multi-Contemplações.');
                  End;
             End;
      End;



end;

procedure TfrmCadContemplacao.edtNRASSEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      if (Key = #27) Then
        begin
            key := #0;
            btnNaoClick(Sender);
        End;
end;

procedure TfrmCadContemplacao.edtCotaEnter(Sender: TObject);
begin
  inherited;
      Venda := 0;
end;

procedure TfrmCadContemplacao.spLocCotaClick(Sender: TObject);
begin
  inherited;
     VENDA :=  uFrmCadastro2.W_NRVEND;
end;

procedure TfrmCadContemplacao.dsVendaContasStateChange(Sender: TObject);
begin
  inherited;
      btnBaixa.Enabled    := (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'N');
      btnEstornar.Enabled := (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S');
end;

procedure TfrmCadContemplacao.Grupos1Click(Sender: TObject);
begin
  inherited;
     frmMain.AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TfrmCadContemplacao.Cliente1Click(Sender: TObject);
begin
  inherited;
    frmMain.AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TfrmCadContemplacao.Vendas1Click(Sender: TObject);
begin
  inherited;
     frmMain.AbreForm(TfrmVendas, frmVendas);
end;

procedure TfrmCadContemplacao.Caixa1Click(Sender: TObject);
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

procedure TfrmCadContemplacao.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Contemplação p/ Sorteio - Baixa/Estorno'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnBaixa.Visible     := (novo = 'S');
     btnEstornar.Visible  := (alterar = 'S');
     //BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

procedure TfrmCadContemplacao.FecharBancos;
begin
        dmPesquisas.cdsConsultaCota.close;
        dmAdmDados.cdsVendaContas.Close;
        //
        txtNMCLIE.Clear;
        cbxFLCONT.Checked := False;
end;

end.
