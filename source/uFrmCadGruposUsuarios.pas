unit uFrmCadGruposUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmCadGruposUsuarios = class(TfrmCadastro)
    Label1: TLabel;
    dbeDescricao: TDBEdit;
    dsGruposUsuarios: TDataSource;
    Label2: TLabel;
    DBText1: TDBText;
    cdsConsultarGPU_CODIGO: TIntegerField;
    cdsConsultarGPU_GRUPO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar;
  public
    { Public declarations }
  end;

var
  frmCadGruposUsuarios: TfrmCadGruposUsuarios;

implementation

uses uDmPesquisas, uFuncoes, udmAdmDados, uFrmAdmMain;

{$R *.dfm}

{ TfrmCadastro1 }

procedure TfrmCadGruposUsuarios.Buscar;
begin
     uFuncoes.FilterCDS(dmPesquisas.cdsGruposUsuarios, fsInteger, cdsConsultarGPU_CODIGO.AsString);
end;

procedure TfrmCadGruposUsuarios.Registro;
begin
     With dmPesquisas.cdsGruposUsuarios do
      begin
           Close;
           Params.ParamByName('pCODIGO').AsInteger := uFuncoes.mvcodigo('GPU_CODIGO','GRUPOS_USUARIOS'); 
           open;
      End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadGruposUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmPesquisas.cdsGruposUsuarios.Close;
end;

procedure TfrmCadGruposUsuarios.edtConsultarChange(Sender: TObject);
begin
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select GPU_CODIGO, GPU_GRUPO from GRUPOS_USUARIOS  ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (GPU_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(GPU_GRUPO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by GPU_GRUPO';
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

procedure TfrmCadGruposUsuarios.btnConsultarClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
  inherited;
end;

procedure TfrmCadGruposUsuarios.FormCreate(Sender: TObject);
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

procedure TfrmCadGruposUsuarios.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmPesquisas.cdsGruposUsuarios.IsEmpty) Then
          BtAdicionarClick(Sender)
     Else
     Begin
          {If (dmAdmDados.cdsUsuariosUSU_ADMIN.AsString = 'T') Then
              btnAcesso.Visible := True
          Else
              btnAcesso.Visible := False;}
     End;
     //
     PageControl1.ActivePageIndex := 0;

end;

procedure TfrmCadGruposUsuarios.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
  //
  With dmPesquisas.cdsGruposUsuarios  do
  begin
       Append;
       FieldByName('GPU_CODIGO').AsInteger :=
          dmAdmDados.cdsConfig.FieldByName('CFG_GRUPO_USUARIO').AsInteger + 1;
  End;
  //
  dbeDescricao.SetFocus;
end;

procedure TfrmCadGruposUsuarios.BtEditarClick(Sender: TObject);
begin
  if  not (dmPesquisas.cdsGruposUsuarios.IsEmpty)
    and (dmPesquisas.cdsGruposUsuarios.RecordCount > 0) then
  Begin
       dmPesquisas.cdsGruposUsuarios.Edit;
       dbeDescricao.SetFocus;
  End;
  inherited;
end;

procedure TfrmCadGruposUsuarios.BtCancelarClick(Sender: TObject);
begin
      dmPesquisas.cdsGruposUsuarios.Cancel;
      If (dmPesquisas.cdsGruposUsuarios.IsEmpty) Then
        Close;
  inherited;
end;

procedure TfrmCadGruposUsuarios.BtGravarClick(Sender: TObject);
Var
    aDescricao : String;
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição grupo.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
      try
          //
          if (dmPesquisas.cdsGruposUsuarios.State in [dsinsert]) then
            begin
                 uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.CdsConfig.Edit;
                 dmAdmDados.cdsConfig.FieldByName('CFG_GRUPO_USUARIO').AsInteger :=
                      dmAdmDados.cdsConfig.FieldByName('CFG_GRUPO_USUARIO').AsInteger + 1;
                 dmAdmDados.cdsUsuarios.FieldByName('GPU_CODIGO').AsInteger :=
                      dmAdmDados.cdsConfig.FieldByName('CFG_GRUPO_USUARIO').AsInteger;
                 dmAdmDados.CdsConfig.ApplyUpdates(0);
                 //
                 aDescricao := 'Incluiu grupo usuário : ' +dmPesquisas.cdsGruposUsuarios.FieldByName('GPU_CODIGO').AsString;
             end
             Else
                 aDescricao := 'Alterou grupo usuário : '+dmPesquisas.cdsGruposUsuarios.FieldByName('GPU_CODIGO').AsString;
          //
          dmPesquisas.cdsGruposUsuarios.ApplyUpdates(0);
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

end.
