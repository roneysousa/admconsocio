unit uFrmCadCartaAviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmCadCartaAviso = class(TfrmCadastro)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    dsCartas: TDataSource;
    dbeDescricao: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    cdsConsultarCAR_CODIGO: TIntegerField;
    cdsConsultarCAR_DESCRICAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
     procedure Registro;
     procedure Buscar;
     //procedure MOSTRAR;
  public
    { Public declarations }
  end;

var
  frmCadCartaAviso: TfrmCadCartaAviso;

implementation

uses uDmPesquisas, uFuncoes, udmAdmDados;

{$R *.dfm}

procedure TfrmCadCartaAviso.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmPesquisas.cdsCartas.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadCartaAviso.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsCartas do
      begin
           Append;
           FieldByName('CAR_CODIGO').AsInteger    := dmAdmDados.cdsConfigCFG_CARTA.AsInteger + 1;
      End;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadCartaAviso.BtEditarClick(Sender: TObject);
begin
  inherited;
  if  not (dmPesquisas.cdsCartas.IsEmpty)
    and (dmPesquisas.cdsCartas.RecordCount > 0) then
  Begin
       dmPesquisas.cdsCartas.Edit;
       dbeDescricao.SetFocus;
  End;
end;

procedure TfrmCadCartaAviso.BtExcluirClick(Sender: TObject);
begin
  if not (dmPesquisas.cdsCartas.IsEmpty) and
     (dmPesquisas.cdsCartas.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmPesquisas.cdsCartas.Delete;
            dmPesquisas.cdsCartas.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadCartaAviso.Buscar;
begin
     With dmPesquisas.cdsCartas do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarCAR_CODIGO.AsInteger;
           Active := True;
      end;   
end;

procedure TfrmCadCartaAviso.Registro;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsCartas do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_CARTA.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('CAR_CODIGO','CARTAS')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCartaAviso.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmPesquisas.cdsCartas.Cancel;
     //
     If (dmPesquisas.cdsCartas.IsEmpty) Then
       Close;
end;

procedure TfrmCadCartaAviso.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição da carta.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
      try
          If (dmPesquisas.cdsCartas.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_CARTA.AsInteger :=
                   dmAdmDados.cdsConfigCFG_CARTA.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmPesquisas.cdsCartasCAR_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_CARTA.AsInteger;
            End;
          //
          dmPesquisas.cdsCartas.Post;
          dmPesquisas.cdsCartas.ApplyUpdates(0);
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

procedure TfrmCadCartaAviso.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CAR_CODIGO, CAR_DESCRICAO from CARTAS ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CAR_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CAR_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by CAR_DESCRICAO';
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

procedure TfrmCadCartaAviso.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadCartaAviso.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

end.
