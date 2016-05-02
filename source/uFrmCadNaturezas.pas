unit uFrmCadNaturezas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TfrmCadaNaturezas = class(TfrmCadastro)
    Label1: TLabel;
    dbeDescricao: TDBEdit;
    dsNatureza: TDataSource;
    cdsConsultarNAT_CODIGO: TIntegerField;
    cdsConsultarNAT_NOME: TStringField;
    Label3: TLabel;
    DBText1: TDBText;
    rbTipo: TDBRadioGroup;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     novo, alterar, apagar : String;
     procedure Registro;
     procedure Buscar;
     procedure Incluir_Natureza_Padrao;
  public
    { Public declarations }
  end;

var
  frmCadaNaturezas: TfrmCadaNaturezas;

implementation

uses udmAdmDados, uFuncoes, uDmPesquisas, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadaNaturezas.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsNaturezas do
      begin
           Append;
           FieldByName('NAT_CODIGO').AsInteger  := dmAdmDados.cdsConfigCFG_NATUREZA.AsInteger + 1;
      End;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadaNaturezas.BtEditarClick(Sender: TObject);
begin
  if  not (dmPesquisas.cdsNaturezas.IsEmpty) then
   Begin
       dmPesquisas.cdsNaturezas.Edit;
       dbeDescricao.SetFocus;
   End;
  inherited;
end;

procedure TfrmCadaNaturezas.BtExcluirClick(Sender: TObject);
begin
  if not (dmPesquisas.cdsNaturezas.IsEmpty) Then
   if (dmPesquisas.cdsNaturezasNAT_CODIGO.AsInteger > 6) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            dmPesquisas.cdsNaturezas.Delete;
            dmPesquisas.cdsNaturezas.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End
   Else
       raise Exception.Create('Registro não pode ser excluido.');
   //
  inherited;
end;

procedure TfrmCadaNaturezas.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmPesquisas.cdsNaturezas.Cancel;
     //
     If (dmPesquisas.cdsNaturezas.IsEmpty) Then
       Close;
end;

procedure TfrmCadaNaturezas.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descrição da natureza.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dmPesquisas.cdsNaturezasNAT_TIPO.AsString) Then
       Begin
           Application.MessageBox('Selecione o tipo de natureza.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           rbTipo.SetFocus;
           Exit;
       End;
      // 
      if (dmPesquisas.cdsNaturezas.State in [dsInsert])
         and not uFuncoes.Empty(dbeDescricao.Text) Then
          if (dmAdmDados.GetNomeNatureza(dmPesquisas.cdsNaturezasNAT_NOME.AsString)) Then
            begin
                 dbeDescricao.SetFocus;
                 dbeDescricao.Clear;   
                 raise Exception.Create('Descrição já cadastrada.');
            End;
     //
      try
          If (dmPesquisas.cdsNaturezas.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_NATUREZA.AsInteger :=
                   dmAdmDados.cdsConfigCFG_NATUREZA.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmPesquisas.cdsNaturezasNAT_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_NATUREZA.AsInteger;
            End;
          //
          dmPesquisas.cdsNaturezas.post;
          dmPesquisas.cdsNaturezas.ApplyUpdates(0);
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

procedure TfrmCadaNaturezas.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select NAT_CODIGO, NAT_NOME from NATUREZA ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (NAT_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(NAT_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by NAT_NOME';
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

procedure TfrmCadaNaturezas.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadaNaturezas.Buscar;
begin
     With dmPesquisas.cdsNaturezas  do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarNAT_CODIGO.AsInteger;
           Active := True;
      end;
end;

procedure TfrmCadaNaturezas.Registro;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     With dmPesquisas.cdsNaturezas  do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_NATUREZA.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('NAT_CODIGO','NATUREZA')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadaNaturezas.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmPesquisas.cdsNaturezas.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadaNaturezas.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
         btnConsultarClick(Sender);
end;

procedure TfrmCadaNaturezas.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
      if (dmPesquisas.cdsNaturezas.State in [dsInsert])
         and not uFuncoes.Empty(dbeDescricao.Text) Then
          if (dmAdmDados.GetNomeNatureza(dmPesquisas.cdsNaturezasNAT_NOME.AsString)) Then
            begin
                 dbeDescricao.SetFocus;
                 dbeDescricao.Clear;
                 raise Exception.Create('Descrição já cadastrada.');
           End;      
end;

procedure TfrmCadaNaturezas.Incluir_Natureza_Padrao;
begin
    If not (dmAdmDados.GetNomeNatureza('ABERTURA DE CAIXA')) Then
      dmAdmDados.Incluir_Natureza(1,'ABERTURA DE CAIXA','E');
    //
    If not (dmAdmDados.GetNomeNatureza('FECHAMENTO DE CAIXA')) Then
      dmAdmDados.Incluir_Natureza(2,'FECHAMENTO DE CAIXA','S');
    //
    If not (dmAdmDados.GetNomeNatureza('PAGAMENTO DE PARCELA')) Then
      dmAdmDados.Incluir_Natureza(3,'PAGAMENTO DE PARCELA','E');
    //
    If not (dmAdmDados.GetNomeNatureza('BAIXA DE LANCE')) Then
      dmAdmDados.Incluir_Natureza(4,'BAIXA DE LANCE','E');
    //
    If not (dmAdmDados.GetNomeNatureza('ESTORNO DE BAIXA DE LANCE')) Then
      dmAdmDados.Incluir_Natureza(5,'ESTORNO DE BAIXA DE LANCE','S');
    //
    If not (dmAdmDados.GetNomeNatureza('ESTORNO PAGAMENTO DE PARCELA')) Then
      dmAdmDados.Incluir_Natureza(6,'ESTORNO PAGAMENTO DE PARCELA','S');
    //
end;

procedure TfrmCadaNaturezas.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Naturezas'));
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
