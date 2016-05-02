unit uFrmCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons,
  Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TfrmCadUsuarios = class(TfrmCadastro)
    Label1: TLabel;
    dsUsuarios: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    dbeCargo: TDBEdit;
    lbl_senha: TLabel;
    dbeSNATUA: TEdit;
    lbl_confirma: TLabel;
    edt_Confirma: TEdit;
    cdsConsultarSEN_CODIGO: TIntegerField;
    cdsConsultarSEN_NOME: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    btnAcesso: TBitBtn;
    bntTarefas: TBitBtn;
    Label4: TLabel;
    dbeDispImp: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeSNATUAExit(Sender: TObject);
    procedure edt_ConfirmaExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure btnAcessoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bntTarefasClick(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar;
    procedure Exibir_edites;
    procedure Ocultar_edites;
    procedure Botoes;
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

uses uFuncoes, uFrmAdmMain, udmAdmDados, uFrmCadPermissoes,
  uFrmTarefaUsuario, uFrmCadGruposUsuarios;

{$R *.dfm}

{ TfrmCadUsuarios }

procedure TfrmCadUsuarios.Buscar;
begin
     uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsString, cdsConsultarSEN_CODIGO.AsString);
     //
     Botoes;
end;

procedure TfrmCadUsuarios.Exibir_edites;
begin
     lbl_senha.Visible    := True;
     lbl_confirma.Visible := True;
     edt_Confirma.Visible := True;
     dbeSNATUA.Visible    := True;
     //
     edt_Confirma.Clear;
     dbeSNATUA.Clear;
end;

procedure TfrmCadUsuarios.Ocultar_edites;
begin
     lbl_senha.Visible    := False;
     lbl_confirma.Visible := False;
     //
     edt_Confirma.Visible := False;
     dbeSNATUA.Visible    := False;
end;

procedure TfrmCadUsuarios.Registro;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     With dmAdmDados.cdsUsuarios do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_USUARIO.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('SEN_CODIGO','usuarios')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
         End;
     //
     Botoes;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     Ocultar_edites;
     //
     If ( dmAdmDados.cdsUsuarios.IsEmpty) Then
          BtAdicionarClick(Sender)
     Else
     Begin
          If (dmAdmDados.cdsUsuariosUSU_ADMIN.AsString = 'T') Then
              btnAcesso.Visible := True
          Else
              btnAcesso.Visible := False;
     End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadUsuarios.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadUsuarios.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
  //
  With dmAdmDados.cdsUsuarios  do
  begin
       Append;
       FieldByName('SEN_CODIGO').AsInteger :=
           dmAdmDados.cdsConfigCFG_USUARIO.AsInteger + 1;
       FieldByName('SEN_FLCAIXA').AsString := 'N';
       FieldByName('SEN_IMPRESSAO').AsString := 'NN.TXT';
  End;
  Exibir_edites;
  dbeDescricao.SetFocus;
end;

procedure TfrmCadUsuarios.BtEditarClick(Sender: TObject);
begin
  if  not (dmAdmDados.cdsUsuarios.IsEmpty)
    and (dmAdmDados.cdsUsuarios.RecordCount > 0) then
  Begin
       //
       dmAdmDados.cdsUsuarios.Edit;
       //
       If NOT (uFrmAdmMain.admin) Then
       begin
           If (dmAdmDados.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger <> StrtoInt(uFrmAdmMain.M_CDUSUA)) Then
           begin
                Application.MessageBox(Pchar(uFrmAdmMain.M_NMUSUA+  ' você não pode editar este usuário!!!'),'ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dmAdmDados.cdsUsuarios.Cancel;
                //tratabotoes;
                Exit;
           End;
       End;
       //
       Exibir_edites;
       dbeDescricao.SetFocus;
  End;
  inherited;
end;

procedure TfrmCadUsuarios.BtExcluirClick(Sender: TObject);
Var
   aDescricao, aCodigo : String;
begin
  inherited;
  if not (dmAdmDados.cdsUsuarios.IsEmpty) and
     (dmAdmDados.cdsUsuarios.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsUsuariosSEN_CODIGO.AsString;
            //
            dmAdmDados.cdsUsuarios.Delete;
            dmAdmDados.cdsUsuarios.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu usuário : '+ aCodigo;
            dmAdmDados.SetTarefa_Usuario(aDescricao);
            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadUsuarios.BtCancelarClick(Sender: TObject);
begin
  inherited;
      dmAdmDados.cdsUsuarios.Cancel;
      Ocultar_edites; 
     //
     If (dmAdmDados.cdsUsuarios.IsEmpty) Then
       Close;
end;

procedure TfrmCadUsuarios.BtGravarClick(Sender: TObject);
Var
    aDescricao : String;
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite o nome do usuário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If (dmAdmDados.cdsUsuarios.State in [dsInsert] ) Then
     begin
         If uFuncoes.Empty(dbeSNATUA.Text)  Then
           Begin
             Application.MessageBox('Digite sua senha.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeSNATUA.SetFocus;
             Exit;
         End;
         //
       If uFuncoes.Empty(edt_Confirma.Text) Then
         Begin
             Application.MessageBox('Digite novamento sua senha.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edt_Confirma.SetFocus;
             Exit;
         End;
       End;
     //
      try
          //
          if (dmAdmDados.cdsUsuarios.State in [dsinsert]) then
            begin
                 uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.CdsConfig.Edit;
                 dmAdmDados.cdsConfig.FieldByName('CFG_USUARIO').AsInteger :=
                      dmAdmDados.cdsConfig.FieldByName('CFG_USUARIO').AsInteger + 1;
                 dmAdmDados.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger :=
                      dmAdmDados.cdsConfig.FieldByName('CFG_USUARIO').AsInteger;
                 dmAdmDados.CdsConfig.ApplyUpdates(0);
                 //
                 aDescricao := 'Incluiu usuário : '+uFuncoes.StrZero(dmAdmDados.cdsUsuarios.FieldByName('SEN_CODIGO').AsString,3);
             end
             Else
                 aDescricao := 'Alterou usuário : '+uFuncoes.StrZero(dmAdmDados.cdsUsuarios.FieldByName('SEN_CODIGO').AsString,3);
          //
          dmAdmDados.cdsUsuarios.ApplyUpdates(0);
          Ocultar_edites;
          //
          dmAdmDados.SetTarefa_Usuario(aDescricao);
          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
          //
          Application.MessageBox(PChar(MSG_OK),
            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
            End;
     End;
     //
  inherited;
end;

procedure TfrmCadUsuarios.dbeSNATUAExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeSNATUA.Text) Then
        dbeSNATUA.Text := dbeSNATUA.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(dbeSNATUA.Text));
end;

procedure TfrmCadUsuarios.edt_ConfirmaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(edt_Confirma.Text) Then
     Begin
       edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
       //
       If ( edt_Confirma.Text = dbeSNATUA.Text) Then
            dmAdmDados.cdsUsuariosSEN_SNATUA.AsString := uFuncoes.Codifica(edt_Confirma.Text)
       Else
       begin
            Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                          MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            edt_Confirma.Clear;
            edt_Confirma.SetFocus;
            Exit;
       End;
  End;
end;

procedure TfrmCadUsuarios.edtConsultarChange(Sender: TObject);
begin
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select SEN_CODIGO, SEN_NOME from USUARIOS ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (SEN_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(SEN_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by SEN_NOME';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
  inherited;
end;

procedure TfrmCadUsuarios.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
         btnConsultarClick(Sender);
end;

procedure TfrmCadUsuarios.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    if (dmAdmDados.cdsUsuarios.State in [dsInsert]) Then
      if not uFuncoes.Empty(dbeDescricao.Text) Then
        if dmAdmDados.Validar_Usuario(dbeDescricao.Text) Then
          begin
               dbeDescricao.SetFocus;
               raise Exception.Create('Nome de usuário já cadastrado.');
          End;
end;

procedure TfrmCadUsuarios.btnAcessoClick(Sender: TObject);
begin
  inherited;
  if (dmAdmDados.cdsUsuarios.Active)
    and (dmAdmDados.cdsUsuarios.RecordCount > 0) then
  Begin
       //
       IF (StrtoInt(UFrmAdmMain.M_CDUSUA) <= 1) tHEN
        Begin
            FrmMain.AbreForm(TfrmCadPermissoes, frmCadPermissoes);
            Exit;
        End;
       //
       If  NOT (UFrmAdmMain.admin) Then
       begin
           //
           Application.MessageBox(Pchar(UFrmAdmMain.M_NMUSUA+  ', você não tem permissão de administrador. '),'ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           Exit;
           //
       End
       else
           FrmMain.AbreForm(TfrmCadPermissoes, frmCadPermissoes);
  End;

end;

procedure TfrmCadUsuarios.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Usuários'));
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
     BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

procedure TfrmCadUsuarios.bntTarefasClick(Sender: TObject);
begin
  inherited;
      frmMain.AbreForm(TfrmTarefaUsuarios, frmTarefaUsuarios);
     //frmMain.AbreForm(TfrmCadGruposUsuarios, frmCadGruposUsuarios);
end;

procedure TfrmCadUsuarios.dsUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      //bntTarefas.Visible := (dmAdmDados.cdsUsuariosUSU_ADMIN.AsString = 'T');
      //
      If (btnAcesso.Visible) Then
         btnAcesso.Enabled := dsUsuarios.State in [dsBrowse];
      if (bntTarefas.Visible) Then
         bntTarefas.Enabled := dsUsuarios.State in [dsBrowse];
end;

procedure TfrmCadUsuarios.Botoes;
begin
     If (uFrmAdmMain.admin) Then
      begin
           btnAcesso.Visible := true;
           bntTarefas.Visible := true;
           DBRadioGroup1.Enabled := True
      End
      Else
      begin
           btnAcesso.Visible := False;
           bntTarefas.Visible := False;
           DBRadioGroup1.Enabled := False;
      End;
end;

End.
