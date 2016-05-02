unit uFrmCadFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmCadFornecedores = class(TfrmCadastro)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    dbeRazao: TDBEdit;
    Label3: TLabel;
    dbeNome: TDBEdit;
    Label4: TLabel;
    dbeCNPJ: TDBEdit;
    Label5: TLabel;
    dbeInscricao: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    cmbUF: TDBComboBox;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    cdsConsultarFOR_CODIGO: TIntegerField;
    cdsConsultarFOR_FANTASIA: TStringField;
    cdsConsultarFOR_RAZAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeRazaoExit(Sender: TObject);
    procedure dbeCNPJExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dbeInscricaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Busca(aCodigo : String);
    procedure Registro();
  public
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

{ TfrmCadFornecedores }

procedure TfrmCadFornecedores.Busca(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmAdmDados.cdsFornecedor, fsInteger, aCodigo);
end;

procedure TfrmCadFornecedores.Registro;
Var
   iCodigo : Integer;
begin
     iCodigo := uFuncoes.mvcodigomin('FOR_CODIGO','FORNECEDORES');
     //
     if (iCodigo > 0) Then
         uFuncoes.FilterCDS(dmAdmDados.cdsFornecedor, fsInteger, InttoStr(iCodigo))
     Else
         uFuncoes.FilterCDS(dmAdmDados.cdsFornecedor, fsInteger, '-1');
end;

procedure TfrmCadFornecedores.FormShow(Sender: TObject);
begin
  inherited;
     Registro;
     //
     if (dmAdmDados.cdsFornecedor.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadFornecedores.BtAdicionarClick(Sender: TObject);
Var
    aCodigo : integer;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     aCodigo := dmAdmDados.cdsConfigCFG_FORNECEDOR.AsInteger + 1;
     //
     With dmAdmDados.cdsFornecedor do
      begin
           Append;
           FieldByName('FOR_CODIGO').AsInteger      := aCodigo;
           FieldByName('FOR_USUARIO_CAD').AsInteger := StrtoInt(uFrmAdmMain.M_CDUSUA);
           FieldByName('FOR_DTCADA').AsDateTime     := Date();
           FieldByName('FOR_HOCADA').AsString       := Copy(TimetoStr(Time),1,5);
      End;
      //
      dbeRazao.setfocus;
  inherited;
end;

procedure TfrmCadFornecedores.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     {  BtAdicionar.Enabled := dsCadastro.DataSet.State IN [dsBrowse];
       BtEditar.Enabled    := dsCadastro.DataSet.State IN [dsBrowse];
       BtExcluir.Enabled   := dsCadastro.DataSet.State IN [dsBrowse];
       //
       BtSair.Enabled      := dsCadastro.DataSet.State IN [dsBrowse];
       BtGravar.Enabled    := dsCadastro.DataSet.State in [dsInsert, dsEdit];
       BtCancelar.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];}
end;

procedure TfrmCadFornecedores.BtEditarClick(Sender: TObject);
begin
  if  not (dsCadastro.DataSet.IsEmpty)
    and (dsCadastro.DataSet.RecordCount > 0) then
  Begin
     dsCadastro.DataSet.Edit;
     dmAdmDados.cdsFornecedorFOR_DTALTE.AsDateTime := Date();
     dmAdmDados.cdsFornecedorFOR_HOALTE.AsString   := Copy(TimetoStr(Time),1,5);
     dmAdmDados.cdsFornecedorFOR_USUARIO_ALT.AsInteger := StrtoInt(uFrmAdmMain.M_CDUSUA);
     dbeRazao.setfocus;
  End;
  inherited;
end;

procedure TfrmCadFornecedores.BtExcluirClick(Sender: TObject);
Var
    aDescricao, aCodigo : String;
begin
  inherited;
  if  not (dsCadastro.DataSet.IsEmpty)
    and (dsCadastro.DataSet.RecordCount > 0) then
   begin
      {If (dmAdmDados.Verificar_Venda_Cliente(dmAdmDados.cdsClientesCLI_CODIGO.AsInteger)) Then
       Begin
            Application.MessageBox(PChar('Existe cota vendida para este cliente.'+
                                     #13+'Você deve excluir a venda deste cliente.'),'ATENÇÃO',
                MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            Exit;
       End;  }
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsFornecedorFOR_CODIGO.AsString;
            //
            dmAdmDados.cdsFornecedor.Delete;
            dmAdmDados.cdsFornecedor.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu Fornecedor : '+ aCodigo;
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

procedure TfrmCadFornecedores.BtCancelarClick(Sender: TObject);
begin
     dsCadastro.DataSet.Cancel;
     //
     If (dsCadastro.DataSet.IsEmpty) Then
       Close;
     //
  inherited;
end;

procedure TfrmCadFornecedores.BtGravarClick(Sender: TObject);
Var
    aDescricao : string;
begin
     If uFuncoes.Empty(dbeRazao.Text) Then
       Begin
           Application.MessageBox('Digite a Razão Social.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeRazao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeNome.Text) Then
       Begin
           Application.MessageBox('Digite o nome fantasia.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNome.SetFocus;
           Exit;
       End;
     //
      try
          //
          dmAdmDados.Start;
          //
          If (dsCadastro.DataSet.State in [dsInsert]) Then
            begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_FORNECEDOR.AsInteger :=
                   dmAdmDados.cdsConfigCFG_FORNECEDOR.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsFornecedorFOR_CODIGO.AsInteger :=
                     dmAdmDados.cdsConfigCFG_FORNECEDOR.AsInteger;
                 //
                 aDescricao := 'Incluiu Fornecedor : '+dmAdmDados.cdsFornecedorFOR_CODIGO.AsString;
            End
            Else
                aDescricao := 'Alterou Fornecedor : '+dmAdmDados.cdsFornecedorFOR_CODIGO.AsString;
          //
          dmAdmDados.cdsFornecedor.Post;
          dmAdmDados.cdsFornecedor.ApplyUpdates(0);
          //
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
  inherited;
end;

procedure TfrmCadFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dsCadastro.DataSet.Close;
end;

procedure TfrmCadFornecedores.dbeRazaoExit(Sender: TObject);
begin
  inherited;
     if (dsCadastro.DataSet.State in [dsInsert])
      and not uFuncoes.Empty(dbeRazao.Text) Then
     begin
          if dmAdmDados.ProcurarValor(dbeRazao.Text, 'FOR_RAZAO','FORNECEDORES') Then
          begin
               Application.MessageBox(PChar('Razão social já cadastrada.'),
              'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
              dbeRazao.SetFocus;
              Exit;
          End;
     End;
end;

procedure TfrmCadFornecedores.dbeCNPJExit(Sender: TObject);
begin
  inherited;
   If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeCNPJ.Text) Then
      begin
            if (dbeCNPJ.Text = '00000000000000') Then
             begin
                  dbeCNPJ.SetFocus;
                  dbeCNPJ.Clear;
                  raise Exception.Create('CNPJ/CGC inválido!!!');
             End;
            //
            try
              If not (uFuncoes.CGC(dbeCNPJ.Text)) Then
              Begin
                  dbeCNPJ.SetFocus;
                  dbeCNPJ.Clear;
                  MessageDlg('CNPJ/CGC inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
              End;
            Except
              dbeCNPJ.SetFocus;
              dbeCNPJ.Clear;
            End;
      End;
end;

procedure TfrmCadFornecedores.edtConsultarChange(Sender: TObject);
begin
     if not uFuncoes.Empty(edtConsultar.Text) Then
      begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'select FOR_CODIGO, FOR_FANTASIA, FOR_RAZAO from FORNECEDORES ';
            Case rgConsultar.ItemIndex of
               0 : CommandText := CommandText + ' Where FOR_CODIGO = '+QuotedStr(edtConsultar.Text);
               1 : CommandText := CommandText + ' Where (UPPER(FOR_RAZAO) like '+QuotedStr(edtConsultar.Text + '%') +')';
            End;
            CommandText := CommandText + 'order by FOR_RAZAO ';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
      End
      Else
          cdsConsultar.Close;
  inherited;
end;

procedure TfrmCadFornecedores.btnConsultarClick(Sender: TObject);
begin
  inherited;
     if not (cdsConsultar.IsEmpty) Then
     begin
          Busca(cdsConsultarFOR_CODIGO.AsString);
          PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadFornecedores.dbeInscricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

end.
