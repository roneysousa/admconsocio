unit uFrmCadGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  RXDBCtrl, ToolEdit;

type
  TfrmCadGrupo = class(TfrmCadastro)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxMulti: TCheckBox;
    cbxCorrigido: TCheckBox;
    cbxTarifas: TCheckBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    dbGridCotasGrupo: TDBGrid;
    datasetConsultarGRU_CODIGO: TIntegerField;
    datasetConsultarGRU_DESCRICAO: TStringField;
    cdsConsultarGRU_CODIGO: TIntegerField;
    cdsConsultarGRU_DESCRICAO: TStringField;
    dsGrupos: TDataSource;
    DBText1: TDBText;
    dbeDescricao: TDBEdit;
    dbeNRMESES: TDBEdit;
    dbeDTInicio: TDBDateEdit;
    dbeDia: TDBEdit;
    DBEdit1: TDBEdit;
    btnIniciar: TBitBtn;
    dsCotasGrupo: TDataSource;
    GroupBox5: TGroupBox;
    cbxSortLimi: TCheckBox;
    dbeMinimo: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeMaximo: TDBEdit;
    Label7: TLabel;
    dbeNRPART: TDBEdit;
    cbxIniciou: TCheckBox;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    dsMult: TDataSource;
    pnlProg: TPanel;
    ProgressBar1: TProgressBar;
    lblStatus: TLabel;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeDTInicioExit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dsGruposStateChange(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
    procedure dbeMinimoExit(Sender: TObject);
    procedure dbeMaximoExit(Sender: TObject);
    procedure dbeDiaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
  private
    { Private declarations }
     novo, alterar, apagar : String;
     procedure Registro;
     procedure Buscar;
     procedure MOSTRAR;
     procedure Salvar_cbx;
     function Iniciar_Grupo(W_CDGRUP : integer; W_DTVENC : TDate) : boolean;
  public
    { Public declarations }
  end;

var
  frmCadGrupo: TfrmCadGrupo;

implementation

uses uFuncoes, udmAdmDados, uDmPesquisas, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadGrupo.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     //
     With dmAdmDados.cdsGrupos do
      begin
           Append;
           FieldByName('GRU_CODIGO').AsInteger  := dmAdmDados.cdsConfigCFG_GRUPO.AsInteger + 1;
           FieldByName('GRU_MULTCONT').AsString := 'N';
           FieldByName('GRU_LIMITADO').AsString := 'N';
           FieldByName('GRU_TARIFABANCO').AsString := 'N';
           FieldByName('GRU_LIMITEMININO').AsFloat := 0;
           FieldByName('GRU_LIMITEMAXIMO').AsFloat := 0;
           FieldByName('GRU_INICIOU').AsString := 'N';
           FieldByName('GRU_LANCE_MINIMO').AsFloat := dmAdmDados.cdsConfigCFG_PERC_MIN_LANCE.AsFloat;  
           cbxIniciou.Checked := False;
      End;
     //
     dmPesquisas.cdsCotasGrupo.Close;
     //
     cbxIniciou.Enabled := false;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadGrupo.BtEditarClick(Sender: TObject);
begin
  if  not (dmAdmDados.cdsGrupos.IsEmpty)
    and (dmAdmDados.cdsGrupos.RecordCount > 0) then
  Begin
       dmAdmDados.cdsGrupos.Edit;
       dbeDescricao.SetFocus;
  End;
  //
  inherited;
end;

procedure TfrmCadGrupo.Buscar;
begin
     //uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsString, cdsConsultarGRU_CODIGO.AsString);
     With dmAdmDados.cdsGrupos do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarGRU_CODIGO.AsInteger;
           Active := True;
      end;
     If not (dmAdmDados.cdsGrupos.IsEmpty) Then
     begin
          MOSTRAR;
          dmAdmDados.CotasGrupo(dmAdmDados.cdsGruposGRU_CODIGO.AsInteger);
     end;
end;

procedure TfrmCadGrupo.Registro;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmAdmDados.cdsGrupos do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_GRUPO.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('GRU_CODIGO','grupos')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
              If not (IsEmpty) Then
              begin
                  MOSTRAR;
                  //
                  dmAdmDados.CotasGrupo(dmAdmDados.cdsGruposGRU_CODIGO.AsInteger);
              end;
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadGrupo.BtExcluirClick(Sender: TObject);
Var
    aDescricao, aCodigo : String;
begin
  if not (dmAdmDados.cdsGrupos.IsEmpty) and
     (dmAdmDados.cdsGrupos.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsGruposGRU_CODIGO.AsString;
            //
            dmAdmDados.cdsGrupos.Delete;
            dmAdmDados.cdsGrupos.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu grupo : '+ aCodigo;
            dmAdmDados.SetTarefa_Usuario(aDescricao);
            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadGrupo.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmAdmDados.cdsGrupos.Cancel;
     //
     If (dmAdmDados.cdsGrupos.IsEmpty) Then
       Close;
end;

procedure TfrmCadGrupo.BtGravarClick(Sender: TObject);
Var
    aDescricao : string;
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição do grupo.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
      try
          //
          dmAdmDados.Start;
          //
          If (dmAdmDados.cdsGrupos.State in [dsInsert]) Then
            begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_GRUPO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_GRUPO.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsGruposGRU_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_GRUPO.AsInteger;
                 //
                 aDescricao := 'Incluiu grupo : '+dmAdmDados.cdsGruposGRU_CODIGO.AsString;
            End
            Else
                 aDescricao := 'Alterou grupo  : '+dmAdmDados.cdsGruposGRU_CODIGO.AsString;
          //
          Salvar_cbx;
          //
          dmAdmDados.cdsGrupos.Post;
          dmAdmDados.cdsGrupos.ApplyUpdates(0);
          //      Grava transação
          dmAdmDados.Comit(udmAdmDados.Transc);
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
          dmAdmDados.SetTarefa_Usuario(aDescricao);
          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
               //
               dmAdmDados.Rollback;
            End;
     End;
   //
  inherited;
end;

procedure TfrmCadGrupo.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (GRU_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(GRU_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by GRU_DESCRICAO';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadGrupo.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
       pnlProg.Visible := False;
       cbxMulti.Enabled     := False;
       cbxCorrigido.Enabled := False;
       cbxTarifas.Enabled   := False;
       cbxSortLimi.Enabled  := False;
       //
       btnIniciar.Enabled := False;
       //(dsGrupos.State in [dsBrowse]) and (cbxIniciou.Checked = False);
     //
     If (dmAdmDados.cdsGrupos.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadGrupo.dbeDTInicioExit(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsGrupos.State in [dsInsert, dsEdit]) Then
        if (dbeDTInicio.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDTInicio.Text) Then
              dbeDTInicio.Date := uFuncoes.FormatarData(dbeDTInicio.text)
           Else
              dbeDTInicio.SetFocus;
end;

procedure TfrmCadGrupo.MOSTRAR;
begin
     if (dmAdmDados.cdsGrupos.FieldByName('GRU_MULTCONT').AsString = 'N') Then
         cbxMulti.Checked := False
     Else
         cbxMulti.Checked := True;
     //
     if (dmAdmDados.cdsGrupos.FieldByName('GRU_CORRIGIDO').AsString = 'N') Then
         cbxCorrigido.Checked := False
     Else
         cbxCorrigido.Checked := True;
     //
     if (dmAdmDados.cdsGrupos.FieldByName('GRU_TARIFABANCO').AsString = 'N') Then
         cbxTarifas.Checked := False
     Else
         cbxTarifas.Checked := True;
     //
     if (dmAdmDados.cdsGrupos.FieldByName('GRU_INICIOU').AsString = 'N') Then
        cbxIniciou.Checked := False
     Else
        cbxIniciou.Checked := True;
     //
     if (dmAdmDados.cdsGruposGRU_INICIOU.AsString = 'S') then
         btnIniciar.Enabled := False
     Else
         btnIniciar.Enabled := True;
     //
     if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S') Then
         cbxSortLimi.Checked := True
     Else
         cbxSortLimi.Checked := False;
     //
     dmAdmDados.ListaMultContemplacao(dmAdmDados.cdsGruposGRU_CODIGO.AsInteger);  
end;

procedure TfrmCadGrupo.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadGrupo.btnIniciarClick(Sender: TObject);
Var
    W_DTVENC, W_DATA, W_DTINIC : TDate;
    W_MESREF : String;
    W_NRMES, W_NRANO : INTEGER;
begin
  inherited;
  if uFuncoes.Empty(dmAdmDados.cdsGruposGRU_MES1ASS.AsString) Then
    begin
         raise Exception.Create('Indique o mês da 1ª assembléia.');
    End;
 //
 If Application.MessageBox('Deseja iniciar grupo?',
    'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
 begin
   //uFuncoes.RefreshCDS(dmPesquisas.cdsCotasClientes);
   pnlProg.Visible := true;
   uFuncoes.FilterCDS(dmPesquisas.cdsIniciarGrupo, fsInteger, dmAdmDados.cdsGruposGRU_CODIGO.AsString);
   //
   W_NRMES := StrtoInt(Copy(dmAdmDados.cdsGruposGRU_MES1ASS.ASString,1,2)) + 1;
   W_NRANO := StrtoInt(Copy(dmAdmDados.cdsGruposGRU_MES1ASS.ASString,3,4));
   //
   if (W_NRMES > 12) Then
    begin
         W_NRMES := 1;
         W_NRANO := W_NRANO + 1;
    End;
   //
   W_MESREF := uFuncoes.StrZero(inttostr(W_NRMES),2) + inttostr(W_NRANO);
   W_DTINIC := StrtoDate('01/'+Copy(W_MESREF,1,2)+'/'+Copy(W_MESREF,3,4));
   W_DATA   := StrtoDate(dmAdmDados.cdsConfigCFG_DIAVENC.AsString+'/'+uFuncoes.FormatarMesReferencia(W_DTINIC));
   //
   if (W_DATA < Date()) then
       W_DTVENC := IncMonth(W_DATA,1)
   Else
       W_DTVENC := W_DATA;
   //
   btnIniciar.Enabled := false;
   //
   try
        if (Iniciar_Grupo(dmAdmDados.cdsGruposGRU_CODIGO.AsInteger, W_DTVENC)) Then
         Begin
              dmAdmDados.cdsGrupos.Edit;
              dmAdmDados.cdsGruposGRU_DTINICIO.AsDateTime := Date();
              dmAdmDados.cdsGruposGRU_INICIOU.AsString    := 'S';
              dmAdmDados.cdsGrupos.ApplyUpdates(0);
              //
              MOSTRAR;
              //
              Application.MessageBox(PChar(MSG_OK),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         End;
   finally
        dmPesquisas.cdsCotasClientes.Close;
        pnlProg.Visible := False;
        Screen.Cursor := crDefault;
   end;
 end;
end;

procedure TfrmCadGrupo.Salvar_cbx;
begin
     //
     if (cbxMulti.Checked) Then
        dmAdmDados.cdsGrupos.FieldByName('GRU_MULTCONT').AsString := 'S'
     Else
        dmAdmDados.cdsGrupos.FieldByName('GRU_MULTCONT').AsString := 'N';
     //
     if (cbxCorrigido.Checked) Then
        dmAdmDados.cdsGrupos.FieldByName('GRU_CORRIGIDO').AsString := 'S'
     Else
        dmAdmDados.cdsGrupos.FieldByName('GRU_CORRIGIDO').AsString := 'N';
     //
     if (cbxTarifas.Checked) Then
         dmAdmDados.cdsGrupos.FieldByName('GRU_TARIFABANCO').AsString := 'S'
     Else
         dmAdmDados.cdsGrupos.FieldByName('GRU_TARIFABANCO').AsString := 'N';
     //
     if (cbxIniciou.Checked) Then
        dmAdmDados.cdsGrupos.FieldByName('GRU_INICIOU').AsString := 'S'
     Else
        dmAdmDados.cdsGrupos.FieldByName('GRU_INICIOU').AsString := 'N';
     //
     if (cbxSortLimi.Checked) Then
        dmAdmDados.cdsGrupos.FieldByName('GRU_LIMITADO').AsString := 'S'
     Else
        dmAdmDados.cdsGrupos.FieldByName('GRU_LIMITADO').AsString := 'N';
     //
end;

procedure TfrmCadGrupo.dsGruposStateChange(Sender: TObject);
begin
  inherited;
       cbxMulti.Enabled     := dsGrupos.State in [dsInsert, dsEdit];
       cbxCorrigido.Enabled := dsGrupos.State in [dsInsert, dsEdit];
       cbxTarifas.Enabled   := dsGrupos.State in [dsInsert, dsEdit];
       cbxSortLimi.Enabled  := dsGrupos.State in [dsInsert, dsEdit];
       //
       btnIniciar.Enabled := (dsGrupos.State in [dsBrowse]) and (cbxIniciou.Checked = False);
end;

procedure TfrmCadGrupo.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    if (dmAdmDados.cdsGrupos.State in [dsInsert]) Then
      if not uFuncoes.Empty(dbeDescricao.Text) Then
        if dmAdmDados.Validar_Grupos(dbeDescricao.Text) Then
          begin
               dbeDescricao.Clear; 
               dbeDescricao.SetFocus;
               raise Exception.Create('Grupo já cadastrado.');
          End;
end;

procedure TfrmCadGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmAdmDados.cdsGrupos.Close;   
end;

procedure TfrmCadGrupo.dbeMinimoExit(Sender: TObject);
begin
  inherited;
     if (dmAdmDados.cdsGrupos.State in [dsInsert, dsEdit]) Then
      begin
          if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S') Then
            if (dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat > 100)
              or ((dmAdmDados.cdsGruposGRU_LIMITEMININO.AsFloat < 0)) Then
                begin
                    dbeMinimo.SetFocus;
                    dbeMinimo.Clear;
                    raise Exception.Create('Percentual inválidos.');
                End;
      End;
end;

procedure TfrmCadGrupo.dbeMaximoExit(Sender: TObject);
begin
  inherited;
     if (dmAdmDados.cdsGrupos.State in [dsInsert, dsEdit]) Then
      begin
          if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S') Then
            if (dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat > 100)
              or ((dmAdmDados.cdsGruposGRU_LIMITEMAXIMO.AsFloat < 0)) Then
                begin
                    dbeMaximo.SetFocus;
                    dbeMaximo.Clear;
                    raise Exception.Create('Percentual não permitido.');
                End;
      End;
end;

procedure TfrmCadGrupo.dbeDiaExit(Sender: TObject);
begin
  inherited;
     if (dsGrupos.State in [dsinsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeDia.Text)  Then
              if (dmAdmDados.cdsGruposGRU_DIAASS.AsInteger < 1)
                or  (dmAdmDados.cdsGruposGRU_DIAASS.AsInteger > 31) Then
                  begin
                       dbeDia.Clear;
                       dbeDia.SetFocus;
                       //
                       raise Exception.Create('Dia inválido. Tente outros.');    
                  End;
      End;
end;

procedure TfrmCadGrupo.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Grupos'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     BtAdicionar.Visible := (novo = 'S');
     BtEditar.Visible    := (alterar = 'S');
     btnIniciar.Visible  := BtEditar.Visible;
     BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

procedure TfrmCadGrupo.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  inherited;
  { Se for o primeiro painel... }
   if Panel.Index = 0 then
   begin
        { Ajusta a tamanho da ProgressBar de acordo com
        o tamanho do painel }
        ProgressBar1.Width := Rect.Right - Rect.Left +1;
        ProgressBar1.Height := Rect.Bottom - Rect.Top +1;
        { Pinta a ProgressBar no DC (device-context) da StatusBar }
        ProgressBar1.PaintTo(StatusBar.Canvas.Handle, Rect.Left, Rect.Top);
  end;
end;

function TfrmCadGrupo.Iniciar_Grupo(W_CDGRUP: integer;
  W_DTVENC: TDate): boolean;
Var
    M_NRPARC, M_QTPARC, M_QTCOTA, M_CTATUA : Integer;
    W_DTPARC : TDate;
    M_DIAVEN, x, w_dia : String;
    N_DTVENC : TDate;
begin
   //
   M_DIAVEN := Copy(DatetoStr(W_DTVENC),1,2);
   //
   dmAdmDados.Nova_Venda(W_CDGRUP, -1,-1) ;
   M_CTATUA := 1;
   lblStatus.Caption := '0 %';
   //
   dmAdmDados.Start;
   try
     Screen.Cursor := crHourGlass;
     { Atualiza a posição da ProgressBar }
     ProgressBar1.Position := 1;
     { Repinta a StatusBar para forçar a atualização visual }
     M_QTCOTA := dmPesquisas.cdsIniciarGrupo.RecordCount;
     ProgressBar1.Max := M_QTCOTA;
     //
     with dmPesquisas.cdsIniciarGrupo do
      begin
           First;
           while not (Eof) do
           begin
               M_NRPARC := 2;
               M_QTPARC := dmPesquisas.cdsIniciarGrupoCOT_PLANO.AsInteger;
               W_DTPARC := W_DTVENC;
               //
               lblStatus.Caption := 'Cota '+Inttostr(M_CTATUA)+' de '+Inttostr(M_qtcota);
               //
               while M_NRPARC <= M_QTPARC do
               begin
                    x := M_DIAVEN+Copy(DatetoStr(IncMonth(W_DTPARC, M_NRPARC)),3,8);
                    try
                         N_DTVENC := StrtoDate(DatetoStr(W_DTPARC));
                            //StrToDate(DatetoStr(N_DTVENC));
                    except
                         w_dia := InttoStr(uFuncoes.DiasPorMes(StrtoInt(Copy(X,7,4)),StrtoInt(Copy(X,4,2))));
                         N_DTVENC := StrtoDate(w_dia+'/'+Copy(X,4,2)+'/'+Copy(X,7,4));
                    end;
                    //
                    W_DTPARC := N_DTVENC;
                    //   02/05/2009
                    If not (dmAdmDados.GetParcelaExiste(dmPesquisas.cdsIniciarGrupoCOT_NRVENDA.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_CDGRUPO.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRCOTA.AsInteger,M_NRPARC) ) Then
                    Begin
                         dmAdmDados.Incluir_Parcela(dmPesquisas.cdsIniciarGrupoCOT_CDGRUPO.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRCOTA.AsInteger,
                                    dmPesquisas.cdsIniciarGrupoCOT_NRVENDA.AsInteger,
                                    M_NRPARC,
                                    dmPesquisas.cdsIniciarGrupoCOT_CDBANCO.AsInteger,
                                    W_DTPARC,
                                    dmPesquisas.cdsIniciarGrupo.FieldByName('COT_VALCOTA').AsFloat, 0);
                    End;
                    //
                    W_DTPARC  := IncMonth(W_DTPARC,1);
                    M_NRPARC := M_NRPARC + 1;
               end;
               //
               ProgressBar1.Position := (M_CTATUA * 100) div M_QTCOTA;
               lblStatus.Caption := InttoStr(ProgressBar1.Position)+'%';
               Application.ProcessMessages;
               //
               ProgressBar1.Repaint;
               M_CTATUA := M_CTATUA + 1;
               // Proxima cota
               Next;
           End;  // fim-enquanto  dmPesquisas.cdsCotasClientes
           //
      End;   // With  dmPesquisas.cdsCotasClientes
      dmAdmDados.Comit(Transc);
      //
      StatusBar1.Panels[1].Text := '';
      { Aguarde 500 milisegundos }
      Sleep(500);
      { Reseta (zera) a ProgressBar }
      ProgressBar1.Position := ProgressBar1.Min;
      { Repinta a StatusBar para forçar a atualização visual }
      StatusBar1.Repaint;
      //
      Result := True;
   except
      Result := False;
      dmAdmDados.Rollback;
   end;
end;

end.
