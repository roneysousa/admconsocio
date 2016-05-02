unit uFrmCadModalidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TfrmCadModalidade = class(TfrmCadastro)
    Label1: TLabel;
    dbeDescricao: TDBEdit;
    dsModas: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    cdsConsultarMOD_CODIGO: TIntegerField;
    cdsConsultarMOD_NOME: TStringField;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmCadModalidade: TfrmCadModalidade;

implementation

uses uDmPesquisas, udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadModalidade.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsModas do
      begin
           Append;
           FieldByName('MOD_CODIGO').AsInteger  := dmAdmDados.cdsConfigCFG_MODALIDADE.AsInteger + 1;
      End;
     dbeDescricao.SetFocus;
end;

procedure TfrmCadModalidade.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmPesquisas.cdsModas.IsEmpty) then
  Begin
       dmPesquisas.cdsModas.Edit;
       dbeDescricao.SetFocus;
  End;

end;

procedure TfrmCadModalidade.BtExcluirClick(Sender: TObject);
begin
  if not (dmPesquisas.cdsModas.IsEmpty) and (dmPesquisas.cdsModasMOD_CODIGO.AsInteger > 1) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmPesquisas.cdsModas.Delete;
            dmPesquisas.cdsModas.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadModalidade.Buscar;
begin
     With dmPesquisas.cdsModas do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarMOD_CODIGO.AsInteger;
           Active := True;
      end;
end;

procedure TfrmCadModalidade.Registro;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsModas do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_MODALIDADE.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('MOD_CODIGO','MODALIDADE')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
              If (IsEmpty) Then
                 BtAdicionarClick(Self);
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadModalidade.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select MOD_CODIGO, MOD_DESCRICAO from MODALIDADE ';
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

procedure TfrmCadModalidade.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadModalidade.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descri��o da modalidade.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
           //
       End;
       //
       if dmPesquisas.GetModalidade(dbeDescricao.Text) Then
         begin
              Application.MessageBox('Descri��o ja cadastrada.','ATEN��O',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeDescricao.SetFocus;
              dbeDescricao.Clear;
              Exit;
         End;
     //
      try
          If (dmPesquisas.CDSMODAS.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_MODALIDADE.AsInteger :=
                   dmAdmDados.cdsConfigCFG_MODALIDADE.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmPesquisas.cdsModasMOD_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_MODALIDADE.AsInteger;
            End;
          //
          dmPesquisas.CDSMODAS.ApplyUpdates(0);
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
            End;
     End;
  inherited;
end;

procedure TfrmCadModalidade.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmPesquisas.cdsModas.Cancel;
     //
     If (dmPesquisas.cdsModas.IsEmpty) Then
       Close;
end;

procedure TfrmCadModalidade.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmPesquisas.cdsmodas.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadModalidade.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Modalidades...'));
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
