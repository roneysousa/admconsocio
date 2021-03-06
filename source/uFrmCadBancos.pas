unit uFrmCadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask,  ExtDlgs,
  DBCtrls, RXDBCtrl, ToolEdit;

type
  TfrmCadBancos = class(TfrmCadastro)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btOpenImagem: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Label17: TLabel;
    dsBancos: TDataSource;
    DBText1: TDBText;
    dbeDescricao: TDBEdit;
    dbeCidade: TDBEdit;
    dbeNRBANC: TDBEdit;
    dbeDVBANC: TDBEdit;
    dbeNRAGEN: TDBEdit;
    dbeDVAGEN: TDBEdit;
    dbeCONTA: TDBEdit;
    dbeDVCONTA: TDBEdit;
    dbeMascara: TDBEdit;
    dbeConvenio: TDBEdit;
    dbeCarteira: TDBEdit;
    dbeVariacao: TDBEdit;
    dbeForma: TDBEdit;
    dbeEspecie: TDBEdit;
    dbeTarifa: TDBEdit;
    foto: TDBImage;
    cdsConsultarBAN_CODIGO: TIntegerField;
    cdsConsultarBAN_NOME: TStringField;
    FOTO2: TImage;
    Label18: TLabel;
    dbeDTFator: TDBDateEdit;
    Label19: TLabel;
    dbeInicioNossoNum: TDBEdit;
    procedure btOpenImagemClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeCONTAExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure dbeDTFatorExit(Sender: TObject);
    procedure dbeDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbeInicioNossoNumKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     novo, alterar, apagar : String;
     Procedure CarregaFotoParaBanco(FileName: String);
     procedure TrataBotaoAbrir;
     procedure Registro;
     procedure Buscar;
  public
    { Public declarations }
  end;

var
  frmCadBancos: TfrmCadBancos;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadBancos.btOpenImagemClick(Sender: TObject);
begin
  inherited;
  If (dmAdmDados.cdsbancos.State in [dsInsert, dsEdit]) Then
  Begin
     Try
          If (OpenPictureDialog1.Execute) Then
             foto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
     Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Error ao tentar abrir imagem!!!'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
        End;
     End;
  End;
     {If OpenPictureDialog1.Execute Then
        FOTO.Picture.LoadFromFile(OpenPictureDialog1.FileName);}
     //  CarregaFotoParaBanco(OpenPictureDialog1.FileName);
end;

procedure TfrmCadBancos.CarregaFotoParaBanco(FileName: String);
Var
  stImagem: TFileStream;
begin
  stImagem := TFileStream.Create( FileName, fmOpenRead or fmShareDenyWrite );
  Try
     // ibdsCredenciadosFOTO � um campo BLOB SUB_TYPE 0
     dmAdmDados.cdsbancosBAN_LOGOMARCA.LoadFromStream( stImagem );
  Finally
     stImagem.Free;
  End;
end;

procedure TfrmCadBancos.TrataBotaoAbrir;
begin
      btOpenImagem.Enabled := not btOpenImagem.Enabled;
end;

procedure TfrmCadBancos.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     TrataBotaoAbrir;
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;  
     //
     With dmAdmDados.cdsbancos do
      begin
           Append;
           FieldByName('BAN_CODIGO').AsInteger    := dmAdmDados.cdsConfigCFG_BANCO.AsInteger + 1;
           FieldByName('BAN_TARIFABANCO').AsFloat := 0;
           FieldByName('BAN_NOSSONUMERO').AsInteger := 0;
      End;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadBancos.BtEditarClick(Sender: TObject);
begin
  TrataBotaoAbrir;
  if  not (dmAdmDados.cdsbancos.IsEmpty)
    and (dmAdmDados.cdsbancos.RecordCount > 0) then
  Begin
       dmAdmDados.cdsbancos.Edit;
       dbeDescricao.SetFocus;
  End;
  inherited;
end;

procedure TfrmCadBancos.BtGravarClick(Sender: TObject);
Var
    opc, aDescricao : string;
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a descri��o do banco.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeNRBANC.Text) Then
       Begin
           Application.MessageBox('Digite o n�mero do Banco.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRBANC.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeDVBANC.Text) Then
       Begin
           Application.MessageBox('Digite o DV do Banco.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDVBANC.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeNRAGEN.Text) Then
       Begin
           Application.MessageBox('Digite o n�mero da ag�ncia.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRAGEN.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCONTA.Text) Then
       Begin
           Application.MessageBox('Digite o n�mero da conta corrente.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCONTA.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCarteira.Text) Then
       Begin
           Application.MessageBox('Digite a carteira.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCarteira.SetFocus;
           Exit;
       End;
     //
      try
          If (dmAdmDados.cdsbancos.State in [dsInsert]) Then
            begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_BANCO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_BANCO.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsbancosBAN_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_BANCO.AsInteger;
                 //
                 opc := 'I';
                 aDescricao := 'Incluiu banco : '+dmAdmDados.cdsbancosBAN_CODIGO.AsString;
            End
            Else
            Begin
                 opc := 'A';
                 aDescricao := 'Alterou banco : '+dmAdmDados.cdsbancosBAN_CODIGO.AsString;
            End;
          //
          dmAdmDados.cdsbancos.FieldByName('BAN_LOGOMARCA').Assign(FOTO.Picture);
          //
          dmAdmDados.cdsbancos.Post;
          dmAdmDados.cdsbancos.ApplyUpdates(0);
          //
          dmAdmDados.SetTarefa_Usuario(aDescricao);
          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario); 
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
     //
     TrataBotaoAbrir;
  inherited;
end;

procedure TfrmCadBancos.BtCancelarClick(Sender: TObject);
begin
  inherited;
     TrataBotaoAbrir;  
     dmAdmDados.cdsbancos.Cancel;
     //
     If (dmAdmDados.cdsbancos.IsEmpty) Then
       Close;
end;

procedure TfrmCadBancos.Buscar;
begin
     //uFuncoes.FilterCDS(dmAdmDados.cdsbancos, fsString, cdsConsultarBAN_CODIGO.AsString);
     With dmAdmDados.cdsbancos do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarBAN_CODIGO.AsInteger;
           Active := True;
      end;
end;

procedure TfrmCadBancos.Registro;
begin
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     With dmAdmDados.cdsbancos  do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_BANCO.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('BAN_CODIGO','bancos')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadBancos.BtExcluirClick(Sender: TObject);
Var
    aDescricao, aCodigo : String;
begin
  inherited;
  if not (dmAdmDados.cdsbancos.IsEmpty) and
     (dmAdmDados.cdsbancos.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsbancosBAN_CODIGO.AsString;
            //
            dmAdmDados.cdsbancos.Delete;
            dmAdmDados.cdsbancos.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu banco : '+ aCodigo;
            dmAdmDados.SetTarefa_Usuario(aDescricao);
            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadBancos.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmAdmDados.cdsbancos.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadBancos.dbeCONTAExit(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsbancos.State in [dsInsert, dsEdit]) Then
        if not uFuncoes.Empty(dbeCONTA.Text) Then
           //dbeCONTA.Text := uFuncoes.StrZero(dbeCONTA.Text,10);
end;

procedure TfrmCadBancos.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select BAN_CODIGO, BAN_NOME from bancos ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (BAN_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(BAN_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by BAN_NOME';
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

procedure TfrmCadBancos.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmAdmDados.cdsbancos.Close; 
end;

procedure TfrmCadBancos.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
    if (dmAdmDados.cdsbancos.State in [dsInsert]) Then
      if not uFuncoes.Empty(dbeDescricao.Text) Then
        if dmAdmDados.Validar_Banco(dbeDescricao.Text) Then
          begin
               dbeDescricao.SetFocus;
               raise Exception.Create('Banco j� cadastrado.');
          End;
end;

procedure TfrmCadBancos.dbeDTFatorExit(Sender: TObject);
begin
  inherited;
    if (dmAdmDados.cdsbancos.State in [dsInsert, dsEdit]) Then
        if (dbeDTFator.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDTFator.Text) Then
              dbeDTFator.Date := uFuncoes.FormatarData(dbeDTFator.text)
           Else
           begin
              dbeDTFator.Clear;
              dbeDTFator.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;
end;

procedure TfrmCadBancos.dbeDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If (key = #27) and (dmAdmDados.cdsbancos.State in [dsInsert, dsEdit]) Then
        begin
             Key := #0;
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmCadBancos.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Bancos'));
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

procedure TfrmCadBancos.dbeInicioNossoNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

End.
