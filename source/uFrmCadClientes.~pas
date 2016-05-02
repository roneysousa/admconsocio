unit uFrmCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls,
  RXDBCtrl, ToolEdit;

type
  TfrmCadClientes = class(TfrmCadastro)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbgCotas: TDBGrid;
    dbgridAvalistas: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    dsClientes: TDataSource;
    dbeNome: TDBEdit;
    dbeEndereco: TDBEdit;
    dbeBairro: TDBEdit;
    dbeCidade: TDBEdit;
    cmbUF: TDBComboBox;
    DBEdit1: TDBEdit;
    dbeFone: TDBEdit;
    dbeCelular: TDBEdit;
    dbeCPF: TDBEdit;
    dbeNRCNPJ: TDBEdit;
    Label14: TLabel;
    dbeIdentidade: TDBEdit;
    dbeDTNASC: TDBDateEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    cdsConsultarCLI_CPF: TStringField;
    cdsConsultarCLI_NRFONE: TStringField;
    dsAvalista: TDataSource;
    DBGrid1: TDBGrid;
    Label15: TLabel;
    dbeNRPLAC: TDBEdit;
    cdsConsultarCLI_NRPLACA: TStringField;
    edtBusca: TEdit;
    Label16: TLabel;
    DBNavigator2: TDBNavigator;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExcluirClick(Sender: TObject);
    procedure dbeDTNASCExit(Sender: TObject);
    procedure dbeCPFExit(Sender: TObject);
    procedure dbeNRCNPJExit(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure dbeIdentidadeExit(Sender: TObject);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure dbeIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaChange(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Botao;
    procedure Registro;
    procedure Buscar;
    procedure MOSTRAR(aCliente : integer);
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmCadClientes.Botao;
begin
     //btnCarta.Enabled := not btnCarta.Enabled;  
end;

procedure TfrmCadClientes.BtAdicionarClick(Sender: TObject);
Var
    aCodigo : integer;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     aCodigo := dmAdmDados.cdsConfigCFG_CLIENTE.AsInteger + 1;
     //
     if not (dmAdmDados.GetCodigoCliente(aCodigo)) Then
     begin
         //
         With dmAdmDados.cdsClientes do
          begin
               Append;
               FieldByName('CLI_CODIGO').AsInteger :=  aCodigo;
          End;
          //
          dmAdmDados.cdsCotasCliente.Close;
         //
         dbeNome.setfocus;
         Botao;
     End
     Else
     begin
           dmAdmDados.AjustaCodCliente();
           //
           raise Exception.Create('Código de cliente já cadastrado!!! Tente novamente.');
     End;
  inherited;     
end;

procedure TfrmCadClientes.BtEditarClick(Sender: TObject);
begin
  if  not (dmAdmDados.cdsClientes.IsEmpty)
    and (dmAdmDados.cdsClientes.RecordCount > 0) then
  Begin
     dmAdmDados.cdsClientes.Edit;
     dbeNome.setfocus;
     Botao;
  End;
  //
  inherited;
end;

procedure TfrmCadClientes.BtGravarClick(Sender: TObject);
Var
    aDescricao : string;
begin
     If uFuncoes.Empty(dbeNome.Text) Then
       Begin
           Application.MessageBox('Digite o nome do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNome.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeEndereco.Text) Then
       Begin
           Application.MessageBox('Digite o endereço.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeEndereco.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeBairro.Text) Then
       Begin
           Application.MessageBox('Digite o bairro do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeBairro.SetFocus;
           Exit;
       End;
     //
     if (dmAdmDados.cdsClientes.State in [dsinsert]) and
        (dbeNRPLAC.Text <> '   -    ') Then
      begin
           if (dmAdmDados.GetNumPlaca(dmAdmDados.cdsClientesCLI_NRPLACA.AsString)) Then
            begin
                dbeNRPLAC.Clear;
                dbeNRPLAC.SetFocus;
                Raise Exception.Create('Número de placa já cadastro.');
            End;
      End;
     {If uFuncoes.Empty(dbeFone.Text) Then
       Begin
           Application.MessageBox('Digite o número do telefone do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeFone.SetFocus;
           Exit;
       End;}
     //  
     Botao;
     //
      try
          //
          dmAdmDados.Start;
          //
          If (dmAdmDados.cdsClientes.State in [dsInsert]) Then
            begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_CLIENTE.AsInteger :=
                   dmAdmDados.cdsConfigCFG_CLIENTE.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsClientesCLI_CODIGO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_CLIENTE.AsInteger;
                 //
                 aDescricao := 'Incluiu cliente : '+dmAdmDados.cdsClientesCLI_CODIGO.AsString;
            End
            Else
                aDescricao := 'Alterou cliente : '+dmAdmDados.cdsClientesCLI_CODIGO.AsString;
          //
          dmAdmDados.cdsClientes.Post; 
          dmAdmDados.cdsClientes.ApplyUpdates(0);
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
   //
  inherited;
end;

procedure TfrmCadClientes.BtCancelarClick(Sender: TObject);
begin
  inherited;
     dmAdmDados.cdsClientes.Cancel;
     //
     If (dmAdmDados.cdsClientes.IsEmpty) Then
       Close;
     //
     Botao;
end;

procedure TfrmCadClientes.edtConsultarChange(Sender: TObject);
begin
  inherited;
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CL.CLI_CODIGO, CL.CLI_NOME, CL.CLI_CGC, CL.CLI_CPF, CL.CLI_NRFONE, CL.CLI_NRCELULAR, CL.CLI_NRPLACA from clientes CL';
            {CommandText := 'Select CL.CLI_CODIGO, CL.CLI_NOME, C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_POSICAO, CL.CLI_CGC, CL.CLI_CPF, CL.CLI_NRFONE from clientes CL ';
            CommandText := CommandText + 'inner join COTAS C ON CL.CLI_CODIGO = C.COT_CDCLIE ';}
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CL.CLI_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CL.CLI_NOME) like :pNOME)';
                2: CommandText := CommandText + ' Where (CL.CLI_CPF = :pCPF)';
                3: CommandText := CommandText + ' Where (CL.CLI_CGC = :pCGC)';
                4: CommandText := CommandText + ' Where (CL.CLI_NRFONE = :pFONE)';
                5: CommandText := CommandText + ' Where (CL.CLI_NRPLACA = :pNRPLACA)';
               // 6: CommandText := CommandText + ' Where (CL.CLI_NRCELULAR like :pCELULAR)';
            end;
            CommandText := CommandText + 'order by CL.CLI_NOME ';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := Copy(edtConsultar.Text,1,7);
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := Copy(edtConsultar.Text,1,59) + '%';
                2: datasetConsultar.Params.ParamByName('pCPF').AsString    := Copy(edtConsultar.Text,1,11);
                3: datasetConsultar.Params.ParamByName('pCGC').AsString    := Copy(edtConsultar.Text,1,14);
                4: datasetConsultar.Params.ParamByName('pFONE').AsString   := edtConsultar.Text;
                5: datasetConsultar.Params.ParamByName('pNRPLACA').AsString   := edtConsultar.Text;
                // 6: datasetConsultar.Params.ParamByName('pCELULAR').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
    End
    Else
    begin
         dmAdmDados.cdsCotasCliente.Close;
         //
         cdsConsultar.Close;
    End;
end;

procedure TfrmCadClientes.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadClientes.Buscar;
begin
     //uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsString, cdsConsultarCLI_CODIGO.AsString);
     With dmAdmDados.cdsClientes do
      begin
           Active := False;
           Params[0].AsInteger := cdsConsultarCLI_CODIGO.AsInteger;
           Active := True;
           //
           MOSTRAR(dmAdmDados.cdsClientesCLI_CODIGO.AsInteger);
           //dmAdmDados.Cotas_Cliente(dmAdmDados.cdsClientesCLI_CODIGO.AsInteger);
      end;
end;

procedure TfrmCadClientes.Registro;
begin
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     With dmAdmDados.cdsClientes do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_CLIENTE.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('CLI_CODIGO','clientes')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
              MOSTRAR(dmAdmDados.cdsClientesCLI_CODIGO.AsInteger);
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmAdmDados.cdsClientes.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
       dmAdmDados.cdsClientes.Close;
end;

procedure TfrmCadClientes.BtExcluirClick(Sender: TObject);
Var
    aDescricao, aCodigo : String;
begin
  inherited;
  if not (dmAdmDados.cdsClientes.IsEmpty) and
     (dmAdmDados.cdsClientes.RecordCount > 0) then
   begin
      If (dmAdmDados.Verificar_Venda_Cliente(dmAdmDados.cdsClientesCLI_CODIGO.AsInteger)) Then
       Begin
            Application.MessageBox(PChar('Existe cota vendida para este cliente.'+
                                     #13+'Você deve excluir a venda deste cliente.'),'ATENÇÃO',
                MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            Exit;
       End;
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            aCodigo := dmAdmDados.cdsClientesCLI_CODIGO.AsString;
            //
            dmAdmDados.cdsClientes.Delete;
            dmAdmDados.cdsClientes.ApplyUpdates(0);
            //
            aDescricao := 'Excluiu cliente : '+ aCodigo;
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

procedure TfrmCadClientes.dbeDTNASCExit(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsClientes.State in [dsInsert, dsEdit]) Then
        if (dbeDTNASC.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDTNASC.Text) Then
           begin
               dbeDTNASC.Date := uFuncoes.FormatarData(dbeDTNASC.text);
               //
               If (dbeDTNASC.Date > Date) Then
               begin
                    dbeDTNASC.Clear;
                    dbeDTNASC.SetFocus;
                    raise Exception.Create('Data de nascimento não deve ser maior que a atual.');
               End;
           End
           Else
           begin
              dbeDTNASC.Clear;
              dbeDTNASC.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmCadClientes.dbeCPFExit(Sender: TObject);
begin
  inherited;
    // inserção
    If (dmAdmDados.CdsClientes.State in [dsInsert])
     and not uFuncoes.Empty(dbeCPF.Text) Then
      begin
            if (dbeCPF.Text = '00000000000') Then
             begin
                  dbeCPF.SetFocus;
                  //dbeCPF.Clear;
                  MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
                  //raise Exception.Create('CPF inválido!!!');
             End;
            //
            Try
              If not (uFuncoes.CPF(uFuncoes.RemoveChar(dbeCPF.Text))) Then
              Begin
                  //dbeCPF.Clear;
                  dbeCPF.SetFocus;
                  MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
                  //raise Exception.Create('CPF inválido!!!');
              End;
              //
              If (dmAdmDados.GetCPFCliente(dbeCPF.Text)) Then
                begin
                    //dbeCPF.Clear;
                    dbeCPF.SetFocus;
                    MessageDlg('CPF já cadastro.', mtInformation, [mbOk], 0);
                    Exit;
                    //raise Exception.Create('CPF já cadastro.');
                End;
              //
            Except
              dbeCPF.SetFocus;
              Exit;
              //dbeCPF.Clear;
            End;
            //
      End;
      //
    // Edição
    If (dmAdmDados.CdsClientes.State in [dsEdit])
     and not uFuncoes.Empty(dbeCPF.Text) Then
      begin
            if (dbeCPF.Text = '00000000000') Then
             begin
                  dbeCPF.SetFocus;
                  //dbeCPF.Clear;
                  MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
                  //raise Exception.Create('CPF inválido!!!');
             End;
             //
            Try
              If not (uFuncoes.CPF(uFuncoes.RemoveChar(dbeCPF.Text))) Then
              Begin
                  //dbeCPF.Clear;
                  dbeCPF.SetFocus;
                  MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
                  //raise Exception.Create('CPF inválido!!!');
              End;
            Except
              dbeCPF.SetFocus;
              Exit;
              //dbeCPF.Clear;
            End;
            //
      End;
      //
     If (dmAdmDados.CdsClientes.State in [dsInsert]) and not uFuncoes.Empty(dbeCPF.Text) Then
            If (dmAdmDados.Validar_Cliente(dmAdmDados.cdsClientesCLI_NOME.AsString,
                      dmAdmDados.cdsClientesCLI_CPF.AsString,' ',' ')) Then
              begin
                   dbeCPF.SetFocus;
                   //dbeCPF.Clear;
                   //
                   raise Exception.Create('Cliente já cadastro com este CPF.');
              End;
end;

procedure TfrmCadClientes.dbeNRCNPJExit(Sender: TObject);
begin
  inherited;
    If (dmAdmDados.CdsClientes.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeNRCNPJ.Text) Then
      begin
            if (dbeNRCNPJ.Text = '00000000000000') Then
             begin
                  dbeNRCNPJ.SetFocus;
                  dbeNRCNPJ.Clear;
                  raise Exception.Create('CNPJ/CGC inválido!!!');
             End;
            //
            try
              If not (uFuncoes.CGC(dbeNRCNPJ.Text)) Then
              Begin
                  dbeNRCNPJ.SetFocus;
                  dbeNRCNPJ.Clear;
                  MessageDlg('CNPJ/CGC inválido!!!', mtInformation, [mbOk], 0);
                  Exit;
              End;
            Except
              dbeNRCNPJ.SetFocus;
              dbeNRCNPJ.Clear;
            End;
            //
      End;
      //
    If (dmAdmDados.CdsClientes.State in [dsInsert]) and not uFuncoes.Empty(dbeNRCNPJ.Text) Then
          If (dmAdmDados.Validar_Cliente(dmAdmDados.cdsClientesCLI_NOME.AsString,
                      ' ', dmAdmDados.cdsClientesCLI_CGC.AsString,' ')) Then
              begin
                   dbeNRCNPJ.SetFocus;
                   dbeNRCNPJ.Clear;
                   //
                   raise Exception.Create('Cliente já cadastro com este CGC.');
              End;

end;

procedure TfrmCadClientes.rgConsultarClick(Sender: TObject);
begin
  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código:';
      edtConsultar.MaxLength := 7;
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Nome cliente:';
      edtConsultar.MaxLength := 59;
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'C.P.F:';
      edtConsultar.MaxLength := 11;
      edtConsultar.Clear;
    end;
    3:
    begin
      lblConsultar.Caption := 'C.G.C:';
      edtConsultar.MaxLength := 14;
      edtConsultar.Clear;
    end;
    4:
    begin
      lblConsultar.Caption := 'Telefone:';
      edtConsultar.MaxLength := 10;
      edtConsultar.Clear;
    end;
    5:
    begin
      lblConsultar.Caption := 'Celular:';
      edtConsultar.MaxLength := 13;
      edtConsultar.Clear;
    end;

  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;

end;

procedure TfrmCadClientes.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {if (rgConsultar.ItemIndex <> 1) or (rgConsultar.ItemIndex <> 5) then
  begin
    if not( key in['0'..'9', #8] ) then
      key:=#0;
    end;
  end;}
  //
  {if (rgConsultar.ItemIndex = 0) or (rgConsultar.ItemIndex = 2)
   or (rgConsultar.ItemIndex = 3) or (rgConsultar.ItemIndex = 4) Then}
  if (rgConsultar.ItemIndex <> 1) Then
     if not( key in['0'..'9', #8, #13] ) then
         key:=#0;
end;

procedure TfrmCadClientes.dbeIdentidadeExit(Sender: TObject);
begin
  inherited;
     if (dmAdmDados.cdsClientes.State in [dsInsert]) and not uFuncoes.Empty(dbeIdentidade.Text) Then
      begin
            If (dmAdmDados.Validar_Cliente(dmAdmDados.cdsClientesCLI_NOME.AsString,
                      ' ', ' ', dmAdmDados.cdsClientesCLI_NRIDEN.AsString)) Then
              begin
                   dbeIdentidade.SetFocus;
                   dbeIdentidade.Clear;
                   //
                   raise Exception.Create('Cliente já cadastro com esta identidade.');
              End;
      End;
end;

procedure TfrmCadClientes.MOSTRAR(aCliente : Integer);
begin
     dmAdmDados.Cotas_Cliente(aCliente);
     dmAdmDados.ListaAvalistaCliente(aCliente) ;
end;

procedure TfrmCadClientes.sbPrimeiroClick(Sender: TObject);
begin
  inherited;
     MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.sbAnteriorClick(Sender: TObject);
begin
  inherited;
     MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.sbProximoClick(Sender: TObject);
begin
  inherited;
     MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.sbUltimoClick(Sender: TObject);
begin
  inherited;
     MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.TabSheet2Show(Sender: TObject);
begin
  inherited;
      dmAdmDados.dsCotasCliente.DataSet.Close;  
end;

procedure TfrmCadClientes.edtConsultarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
     if not (cdsConsultar.IsEmpty) Then
         MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     if not (cdsConsultar.IsEmpty) Then
         MOSTRAR(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmCadClientes.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Clientes'));
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

procedure TfrmCadClientes.dbeIdentidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   {  If not( key in['0'..'9',#8, #13] ) then
        key:=#0;}
end;

procedure TfrmCadClientes.edtBuscaChange(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtBusca.Text) Then
      begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CL.CLI_CODIGO, CL.CLI_NOME, CL.CLI_CGC, CL.CLI_CPF, CL.CLI_NRFONE, CL.CLI_NRPLACA from clientes CL';
            CommandText := CommandText + ' Where (UPPER(CL.CLI_NOME) like :pNOME)';
            CommandText := CommandText + 'order by CL.CLI_NOME ';
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtBusca.Text + '%';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
        //
        if not (cdsConsultar.IsEmpty) Then
         begin
              //cdsConsultar.First;
              Buscar;
         End;
      End
      Else
          cdsConsultar.Close;
end;

procedure TfrmCadClientes.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
          buscar;
end;

end.
