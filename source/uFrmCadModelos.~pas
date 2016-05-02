unit uFrmCadModelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TfrmCadModelos = class(TfrmCadastro)
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    dbeDescricao: TDBEdit;
    dsModelos: TDataSource;
    cdsConsultarMOD_CODIGO: TIntegerField;
    cdsConsultarMOD_DESCRICAO: TStringField;
    procedure BtAdicionarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     novo, alterar, apagar : String;
     procedure Registro;
     procedure Buscar;
  public
    { Public declarations }
  end;

var
  frmCadModelos: TfrmCadModelos;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadModelos.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     //
     With dmAdmDados.cdsModelos do
      begin
           Append;
           FieldByName('MOD_CODIGO').AsInteger  := dmAdmDados.cdsConfigCFG_MODELO.AsInteger + 1;
      End;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadModelos.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select MOD_CODIGO, MOD_DESCRICAO from modelos  ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (MOD_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(MOD_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by MOD_DESCRICAO';
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

procedure TfrmCadModelos.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmAdmDados.cdsModelos.Cancel;
     //
     If (dmAdmDados.cdsModelos.IsEmpty) Then
       Close;
end;

procedure TfrmCadModelos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmAdmDados.cdsModelos.Close; 
end;

procedure TfrmCadModelos.Buscar;
begin
     //uFuncoes.FilterCDS(dmAdmDados.cdsModelos, fsString, cdsConsultarMOD_CODIGO.AsString);
     With dmAdmDados.cdsModelos do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarMOD_CODIGO.AsInteger;
           Active := True;
      end;
end;

procedure TfrmCadModelos.Registro;
begin
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     With dmAdmDados.cdsModelos do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_MODELO.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('MOD_CODIGO','modelos')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadModelos.BtExcluirClick(Sender: TObject);
Var
    aDescricao, aCodigo : String;
begin
  inherited;
  if not (dmAdmDados.cdsModelos.IsEmpty) and
     (dmAdmDados.cdsModelos.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsModelosMOD_CODIGO.AsString;
            //
            dmAdmDados.cdsModelos.Delete;
            dmAdmDados.cdsModelos.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu modelo : '+ aCodigo;
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

procedure TfrmCadModelos.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmAdmDados.cdsModelos.IsEmpty)
    and (dmAdmDados.cdsModelos.RecordCount > 0) then
  Begin
       dmAdmDados.cdsModelos.Edit;
       dbeDescricao.SetFocus;
  End;

end;

procedure TfrmCadModelos.BtGravarClick(Sender: TObject);
Var
    aDescricao : string;
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição do modelo.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
      try
          dmAdmDados.Start;
          //
          If (dmAdmDados.cdsModelos.State in [dsInsert]) Then
            begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_MODELO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_MODELO.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsModelosMOD_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_MODELO.AsInteger;
                 //
                 aDescricao := 'Incluiu modelo : '+dmAdmDados.cdsModelosMOD_CODIGO.AsString;
            End
            Else
                 aDescricao := 'Alterou modelo : '+dmAdmDados.cdsModelosMOD_CODIGO.AsString;
          //
          dmAdmDados.cdsModelos.Post;
          dmAdmDados.cdsModelos.ApplyUpdates(0);
          //
          dmAdmDados.Comit(udmAdmDados.Transc);
          //
          dmAdmDados.SetTarefa_Usuario(aDescricao);
          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
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

procedure TfrmCadModelos.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmAdmDados.cdsModelos.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadModelos.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadModelos.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    if (dmAdmDados.cdsModelos.State in [dsInsert]) Then
      if not uFuncoes.Empty(dbeDescricao.Text) Then
        if dmAdmDados.Validar_Modelo(dbeDescricao.Text) Then
          begin
               dbeDescricao.SetFocus;
               raise Exception.Create('Descrição de modelo já cadastrado.');
          End;
end;

procedure TfrmCadModelos.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Modelos'));
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

end.
