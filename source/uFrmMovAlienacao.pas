unit uFrmMovAlienacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls,
    Mask, Grids, DBGrids, DB, DBCtrls, FMTBcd, DBClient,
  Provider, SqlExpr, ToolEdit, CurrEdit, RXDBCtrl, ToolWin, ImgList, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppPrnabl, ppCtrls;

type
  TfrmMovAlienacao = class(TfrmCad)
    pnlDadosCliente: TPanel;
    ckbContemplado: TCheckBox;
    Label13: TLabel;
    Label2: TLabel;
    cbkAlienado: TCheckBox;
    cbkDesalienado: TCheckBox;
    pnlAlienacao: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnConfirma: TBitBtn;
    btnCancelar: TBitBtn;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    rbDados: TRadioGroup;
    btnImprimir: TBitBtn;
    Label18: TLabel;
    cmbGrupos: TDBLookupComboBox;
    Label19: TLabel;
    dbeCOTA: TDBEdit;
    Label5: TLabel;
    dbePLANO: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    txtNMCLIE: TEdit;
    dsVendaContas: TDataSource;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    rbSituacao: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    pnlBotoes: TPanel;
    ImageList1: TImageList;
    dsAvalista: TDataSource;
    dsCadAvalista: TDataSource;
    Label17: TLabel;
    spCliente: TSpeedButton;
    dbeDataAlienacao: TDBDateEdit;
    dbeMarca: TDBEdit;
    DBEdit4: TDBEdit;
    dbeAnoFabri: TDBEdit;
    dbeAnoModelo: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    spAvalista2: TSpeedButton;
    dbeCDCLIE: TDBEdit;
    dbeCDCLIE2: TDBEdit;
    lblAvalista1: TLabel;
    lblAvalista2: TLabel;
    ppRepContratoAlienacao: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dsContAliencao: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    txtDevedor: TppDBText;
    txtProfissao: TppDBText;
    txtEndereco: TppDBText;
    txtCidade: TppDBText;
    txtCep: TppDBText;
    txtUF: TppDBText;
    txtEstCivil: TppDBText;
    txtRG: TppDBText;
    txtNacionalidade: TppDBText;
    txtBairro: TppDBText;
    txtGrupo: TppDBText;
    txtCota: TppDBText;
    txtContrato: TppDBText;
    lblDescGrupo: TppLabel;
    ppRepVerso: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    lblCPF1: TppLabel;
    lblFiador1: TppLabel;
    lblProfissao: TppLabel;
    lblEndereco: TppLabel;
    lblCidade: TppLabel;
    lblNacionalidade: TppLabel;
    lblEstCivil: TppLabel;
    lblRG1: TppLabel;
    lblCep1: TppLabel;
    lblEstado: TppLabel;
    lblFiador2: TppLabel;
    lblCPF2: TppLabel;
    lblProfissao2: TppLabel;
    lblEndereco2: TppLabel;
    lblCidade2: TppLabel;
    lblEstCivil2: TppLabel;
    lblNacionalidade2: TppLabel;
    lblRG2: TppLabel;
    lblCep2: TppLabel;
    lblEstado2: TppLabel;
    ppRepContratoVeiculo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    txtTipoVeic: TppDBText;
    txtChassi: TppDBText;
    txtCor: TppDBText;
    txtSerie: TppDBText;
    ppDBPipeline2: TppDBPipeline;
    txtDataAlie: TppDBText;
    txtAnoMod: TppDBText;
    txtAnoF: TppDBText;
    lblBarra: TppLabel;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    BtEditar: TBitBtn;
    spExcluirAva1: TSpeedButton;
    spExcluirAva2: TSpeedButton;
    Label21: TLabel;
    dbeRenavan: TDBEdit;
    Label22: TLabel;
    dbeLocalPg: TDBEdit;
    txtRenavan: TppDBText;
    txtLocal: TppDBText;
    txtCelular: TppDBText;
    txtTelefone: TppDBText;
    txtBarra: TppLabel;
    lblFoneFiador1: TppLabel;
    lblFoneFiador2: TppLabel;
    txtCPF2: TppLabel;
    txtMarca: TppLabel;
    Label23: TLabel;
    dbeNrNota: TDBEdit;
    Label24: TLabel;
    dbeValor: TDBEdit;
    Label25: TLabel;
    dbeSaldo: TDBEdit;
    Label26: TLabel;
    dbePrestacao: TDBEdit;
    txtNotaFiscal: TppDBText;
    txtValorCredito: TppDBText;
    txtSaldo: TppDBText;
    txtNRPREST: TppDBText;
    procedure btnConsultarClick(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure dsAvalistaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure spNovoClick(Sender: TObject);
    procedure spEditarClick(Sender: TObject);
    procedure spExcluirClick(Sender: TObject);
    procedure spGravarClick(Sender: TObject);
    procedure spCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCDCLIEExit(Sender: TObject);
    procedure spClienteClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeDataAlienacaoExit(Sender: TObject);
    procedure edtCotaEnter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbeAnoFabriExit(Sender: TObject);
    procedure dbeAnoModeloExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure spAvalista2Click(Sender: TObject);
    procedure dsVendaContasDataChange(Sender: TObject; Field: TField);
    procedure dbeCDCLIEChange(Sender: TObject);
    procedure dbeCDCLIE2Change(Sender: TObject);
    procedure dsVendaContasStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure spExcluirAva1Click(Sender: TObject);
    procedure dbeCDCLIEKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCDCLIE2KeyPress(Sender: TObject; var Key: Char);
    procedure spExcluirAva2Click(Sender: TObject);
    procedure dbeCDCLIE2Exit(Sender: TObject);
    procedure dbeRenavanKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNrNotaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Buscar(W_NRVEND : integer);
    procedure MOSTRA;
    procedure Avalistas(W_NRVEND : integer);
    procedure Verificar_cliente;
    procedure Tratabotoes;    
  public
    { Public declarations }
  end;

var
  frmMovAlienacao: TfrmMovAlienacao;

implementation

uses uFuncoes, udmAdmDados, uFrmLocClientes, uFrmLocGrupos, uDmPesquisas,
  uFrmAdmMain;

{$R *.dfm}

procedure TfrmMovAlienacao.btnConsultarClick(Sender: TObject);
Var
   M_NRVEND : integer;
begin
  inherited;
     //
     if uFuncoes.Empty(edtGrupo.Text) then
      begin
           edtGrupo.SetFocus;
           Exit;
      end;
     //
     if uFuncoes.Empty(edtCota.Text) then
      begin
           edtCota.SetFocus;
           Exit;
      end;
    //
    if not uFuncoes.Empty(edtGrupo.Text)
       and not uFuncoes.Empty(edtCota.Text ) then
       begin
        M_NRVEND := dmAdmDados.Verificar_Cota_Grupo_Aberta(StrtoInt(edtGrupo.Text),StrtoInt(edtCota.Text));
        //
        if (M_NRVEND > 0) then
            Buscar(M_NRVEND)
        else
        begin
           edtCota.SetFocus;
           raise Exception.Create('Cota não cadastrada ou Não ATIVA.');
        end;
       End;
end;

procedure TfrmMovAlienacao.Buscar(W_NRVEND: integer);
begin
     dmAdmDados.cdsAvalista.Close;
     //
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := W_NRVEND;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             txtNMCLIE.Text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
             //
             dmPesquisas.Abrir_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
             if not (dmPesquisas.cdsAvalista.IsEmpty) Then
              begin
                   dmPesquisas.cdsAvalista.First;
                   //
                   dmAdmDados.cdsVendaContas.Edit;
                   dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger := dmPesquisas.cdsAvalistaAVA_CDCLIE.AsInteger;
                   //
                   dmPesquisas.cdsAvalista.Next;
                   if not (dmPesquisas.cdsAvalista.Eof) Then
                       dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger := dmPesquisas.cdsAvalistaAVA_CDCLIE.AsInteger;
                   //
                   dmAdmDados.cdsVendaContas.ApplyUpdates(0);
              End;
             //
             MOSTRA;
             //
            // Avalistas(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
           end;
     end;
end;

procedure TfrmMovAlienacao.edtGrupoChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtGrupo.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
      // btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmMovAlienacao.edtCotaChange(Sender: TObject);
begin
  inherited;
   If uFuncoes.Empty(edtCota.Text) Then
   begin
        if not ufuncoes.Empty(edtGrupo.Text) then
            edtGrupoChange(Sender)
        Else
           cdsConsultar.Close;
   end
   Else
   begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            //CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_CDCLIE, CL.CLI_NOME, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtGrupo.Text;
            datasetConsultar.Params.ParamByName('pNRCOTA').AsString := edtCota.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmMovAlienacao.MOSTRA;
begin
      if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
      begin
          ckbContemplado.Checked := True;
          pnlAlienacao.Enabled   := True;
          btnConfirma.Enabled    := True;
      End
      Else
      begin
          ckbContemplado.Checked := False;
          pnlAlienacao.Enabled   := False;
          btnConfirma.Enabled    := False;
      End;
      //
      if (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
          cbkAlienado.Checked := True
      Else
          cbkAlienado.Checked := False;
      //
      if (dmAdmDados.cdsVendaContasCOT_DESALIENADO.AsString = 'S') Then
          cbkDesalienado.Checked := True
      Else
          cbkDesalienado.Checked := False;
      //
      If (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
       Begin
            btnConfirma.Enabled := False;
            btnCancelar.Enabled := True;
       End
       Else
       begin
            btnConfirma.Enabled := True;
            btnCancelar.Enabled := False;
       End;
       //
       If (dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger > 0) Then
          lblAvalista1.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger);
       If (dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger > 0) Then
          lblAvalista2.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger);
end;

procedure TfrmMovAlienacao.dsAvalistaStateChange(Sender: TObject);
begin
  inherited;
    {  spNovo.Enabled    := dsAvalista.DataSet.State in [dsBrowse];
      spEditar.Enabled  := dsAvalista.DataSet.State in [dsBrowse];
      spExcluir.Enabled := dsAvalista.DataSet.State in [dsBrowse];
      //
      spGravar.Enabled   := dsAvalista.DataSet.State in [dsInsert, dsEdit];
      spCancelar.Enabled := dsAvalista.DataSet.State in [dsInsert, dsEdit];}
      spCliente.Enabled  := dsAvalista.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmMovAlienacao.FormShow(Sender: TObject);
begin
  inherited;
     //ToolBar1.Enabled := False;
     btnConfirma.Enabled := False;
     lblAvalista1.Caption := '';
     lblAvalista2.Caption := '';
     //
     btnImprimir.Enabled := fALSE;
     BtEditar.Enabled    := False;
end;

procedure TfrmMovAlienacao.btnConfirmaClick(Sender: TObject);
begin
  inherited;
   //  ToolBar1.Enabled :=   True;
     //
     //pnlAlienacao.Enabled := False;
     //
     With dmAdmDados.cdsVendaContas do
     begin
          Tratabotoes;
          //
          btnConfirma.Enabled := False;
          btnCancelar.Enabled := False;
          //
          Edit;
          //
          dbeDataAlienacao.SetFocus; 
     End;
end;

procedure TfrmMovAlienacao.spNovoClick(Sender: TObject);
begin
  inherited;
      {if not (dmAdmDados.cdsAvalista.Active) Then
          uFuncoes.FilterCDS(dmAdmDados.cdsAvalista, fsInteger, dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString);}
      //
      With dmAdmDados.cdsAvalista do
        begin
             Append;
             FieldByName('AVA_NRVEND').AsInteger := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
             dbeCDCLIE.SetFocus;
        End;
end;

procedure TfrmMovAlienacao.spEditarClick(Sender: TObject);
begin
  inherited;
    if not (dmAdmDados.cdsAvalista.IsEmpty) Then
      With dmAdmDados.cdsAvalista do
        begin
             Edit;
             dbeCDCLIE.SetFocus;  
        End;
end;

procedure TfrmMovAlienacao.spExcluirClick(Sender: TObject);
begin
  inherited;
    if not (dmAdmDados.cdsAvalista.IsEmpty) Then
      With dmAdmDados.cdsAvalista do
        begin
             Delete;
             ApplyUpdates(0);
        End;
end;

procedure TfrmMovAlienacao.spGravarClick(Sender: TObject);
begin
  inherited;
    If uFuncoes.Empty(dbeCDCLIE.Text) Then
      begin
           dbeCDCLIE.SetFocus;
           raise Exception.Create('Digite o código do avalista.');
      End;
    //
    Verificar_cliente;
    //
    if (dmAdmDados.cdsAvalistaAVA_CDCLIE.AsInteger = 0) Then
      begin
           dbeCDCLIE.SetFocus;
           Exit;
      End;

    //
    If not uFuncoes.Empty(dbeCDCLIE.Text) Then
     if not (dmAdmDados.Verificar_Avalista(
          dmAdmDados.cdsAvalistaAVA_NRVEND.AsInteger,
          dmAdmDados.cdsAvalistaAVA_CDCLIE.AsInteger)) Then
             dmAdmDados.cdsAvalista.ApplyUpdates(0)
     Else
     begin
         dbeCDCLIE.SetFocus;
         dbeCDCLIE.Clear;
         raise Exception.Create('Avalista já incluido, cadastre outro.');
     End;
end;

procedure TfrmMovAlienacao.spCancelarClick(Sender: TObject);
begin
  inherited;
      dmAdmDados.cdsAvalista.Cancel;
end;

procedure TfrmMovAlienacao.Avalistas(W_NRVEND: integer);
begin
     if not (dmAdmDados.cdsAvalista.Active) Then
      begin
           With dmAdmDados.cdsAvalista do
            begin
                 Active := False;
                 Params[0].AsInteger := W_NRVEND;
                 Active := True;
            End;
      End;
end;

procedure TfrmMovAlienacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
       dmAdmDados.cdsAvalista.Close;
       dmAdmDados.cdsVendaContas.Close;
end;

procedure TfrmMovAlienacao.dbeCDCLIEExit(Sender: TObject);
begin
  inherited;
  { if (dmAdmDados.cdsAvalista.State in [dsInsert]) and uFuncoes.Empty(dbeCDCLIE.Text) Then
        spCancelarClick(Sender);}
   //
 if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
 begin
   If not uFuncoes.Empty(dbeCDCLIE.Text) Then
    begin
       Verificar_cliente;
      //
      if (dmAdmDados.Verificar_Avalista(
           dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
              dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger)) Then
          begin
               dbeCDCLIE.SetFocus;
               dbeCDCLIE.Clear;
               raise Exception.Create('Avalista já incluido, cadastre outro.');
          End;
     End;
     //
     lblAvalista1.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger);
  End;
end;

procedure TfrmMovAlienacao.spClienteClick(Sender: TObject);
begin
  inherited;
    dbeCDCLIE.SetFocus;
    frmLocCliente := TfrmLocCliente.create(application);
    try
        frmLocCliente.showmodal;
    finally
        If not (frmLocCliente.cdsConsultar.IsEmpty) Then
         begin
             //spNovoClick(Sender);
             //dmAdmDados.cdsAvalista.FieldByName('AVA_CDCLIE').AsInteger := frmLocCliente.cdsConsultarCLI_CODIGO.AsInteger;
             dmAdmDados.cdsVendaContas.FieldByName('COT_AVAL1').AsInteger := frmLocCliente.cdsConsultarCLI_CODIGO.AsInteger;
         End;
        //
        frmLocCliente.Release;
        frmLocCliente := nil;
    end;
end;

procedure TfrmMovAlienacao.Verificar_cliente;
begin
       If not uFuncoes.Empty(dbeCDCLIE.Text) Then
        begin
          If not uFuncoes.Empty(dbeCDCLIE.Text)
            and not dmAdmDados.GetCodigoCliente(StrtoInt(dbeCDCLIE.Text)) Then
             begin
               dbeCDCLIE.SetFocus;
               dbeCDCLIE.Clear;
               raise Exception.Create('Código de cliente não cadastrado.')
            End;
        End;
end;

procedure TfrmMovAlienacao.BtSairClick(Sender: TObject);
begin
  inherited;
       Close;
end;

procedure TfrmMovAlienacao.Tratabotoes;
begin
     BtGravar.Enabled    := not BtGravar.Enabled;
     BtCancelar.Enabled  := not BtCancelar.Enabled;
     //
     btnImprimir.Enabled := not btnImprimir.Enabled;
     BtSair.Enabled      := not BtSair.Enabled;
     //
     
end;

procedure TfrmMovAlienacao.BtCancelarClick(Sender: TObject);
begin
  inherited;
       Tratabotoes;
       //
       dmAdmDados.cdsVendaContas.Cancel;
       //
end;

procedure TfrmMovAlienacao.BtGravarClick(Sender: TObject);
Var
    iVenda : Integer;
begin
  inherited;
    If (dmAdmDados.cdsVendaContasCOT_DTALIENACAO.IsNull) Then
      begin
           dbeDataAlienacao.SetFocus;
           Application.MessageBox(PChar('Digite a data de alienação.'),
               'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
      End;
    Tratabotoes;
    iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
    try
       try
            dmAdmDados.Start;
            //
            If not (dmAdmDados.cdsVendaContasCOT_DTALIENACAO.IsNull) Then
            begin
                 dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString := 'S';
                 //
                 If (dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger > 0) Then
                   if not (dmAdmDados.Verificar_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger)) Then
                        if not (dmAdmDados.Add_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger)) then
                            raise Exception.Create('Erro ao cadastrar avalista 1.');
                 //
                 If (dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger > 0) Then
                   if not (dmAdmDados.Verificar_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger)) Then
                        if not (dmAdmDados.Add_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger)) Then
                                raise Exception.Create('Erro ao cadastrar avalista 2.');
                 // dmAdmDados.cdsVendaContasCOT_DESALIENADO.Clear;
            End;
            //
            dmAdmDados.cdsVendaContas.ApplyUpdates(0);
            //
            dmAdmDados.Comit(udmAdmDados.Transc);
            //
            Application.MessageBox(PChar(MSG_OK),
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            //
            Buscar(iVenda);
       except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               dmAdmDados.Rollback;
            End;

       End;
       //
    Finally
        Buscar(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
    End;
end;

procedure TfrmMovAlienacao.dbeDataAlienacaoExit(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsVendaContas.State in [dsEdit]) Then
        if (dbeDataAlienacao.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDataAlienacao.Text) Then
              dbeDataAlienacao.Date := uFuncoes.FormatarData(dbeDataAlienacao.text)
           Else
           begin
              dbeDataAlienacao.Clear;
              dbeDataAlienacao.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmMovAlienacao.edtCotaEnter(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsVendaContas.State in [dsedit]) Then
        begin
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmMovAlienacao.btnCancelarClick(Sender: TObject);
begin
  inherited;
     If Application.MessageBox('Confirma o cancelamento de alienação?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
      with dmAdmDados.cdsVendaContas do
        begin
             DisableControls;
             Edit;
             FieldByName('COT_ALIENADO').Clear;
             FieldByName('COT_DTALIENACAO').Clear;
             FieldByName('COT_MARCA_VEIC').Clear;
             FieldByName('COT_MODELO_VEIC').Clear;
             FieldByName('COT_ANO_FAB').Clear;
             FieldByName('COT_ANO_MOD').Clear;
             FieldByName('COT_CHASSI').Clear;
             FieldByName('COT_COR').Clear;
             FieldByName('COT_TIPOVEIC').Clear;
             FieldByName('COT_NRSERIE').Clear;
             //
             ApplyUpdates(0);
             //
             EnableControls;
        End;
        //
        Buscar(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
      End;
end;

procedure TfrmMovAlienacao.dbeAnoFabriExit(Sender: TObject);
Var
   M_DATA : string;
begin
  inherited;
       If (dmAdmDados.cdsVendaContas.State in [dsEdit])
            and not uFuncoes.Empty(dbeAnoFabri.Text) Then
       begin
            M_DATA := Copy(DatetoStr(Date),1,6)+dbeAnoFabri.Text;
            try
                StrToDate(M_DATA);
                M_DATA := DatetoStr(StrToDate(M_DATA));
                dbeAnoFabri.Text := uFuncoes.FormatarDataAno(M_DATA);
            except
                  on EConvertError do
                    begin
                         ShowMessage ('Ano Inválido!');
                         dbeAnoFabri.SetFocus;
                         dbeAnoFabri.clear;
                    End;
            end;
       End;
end;

procedure TfrmMovAlienacao.dbeAnoModeloExit(Sender: TObject);
Var
   M_DATA : string;
begin
  inherited;
       If (dmAdmDados.cdsVendaContas.State in [dsEdit])
            and not uFuncoes.Empty(dbeAnoModelo.Text) Then
       begin
            M_DATA := Copy(DatetoStr(Date),1,6)+dbeAnoModelo.Text;
            try
                StrToDate(M_DATA);
                M_DATA := DatetoStr(StrToDate(M_DATA));
                dbeAnoModelo.Text := uFuncoes.FormatarDataAno(M_DATA);
            except
                  on EConvertError do
                    begin
                         ShowMessage ('Ano Inválido!');
                         dbeAnoModelo.SetFocus;
                         dbeAnoModelo.clear;
                    End;
            end;
       End;
end;

procedure TfrmMovAlienacao.btnImprimirClick(Sender: TObject);
Var
     M_LINHA, M_PXLINH : Double;
begin
  inherited;
     //
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     if (rbDados.ItemIndex = 0) Then
      begin
           //
       if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
         if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S')
           and (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
            begin
              With dmPesquisas.cdsContratoCliente do
                begin
                     Active := False;
                     Params.ParamByName('pNRVENDA').AsInteger :=
                        dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
                     Active := True;
                End;
              //
              if not (dmPesquisas.cdsContratoCliente.IsEmpty) Then
                 With ppRepContratoAlienacao do
                  begin
                       //
                       uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                       M_LINHA   := dmAdmDados.cdsConfigCFG_LIN_INI_ALI_FRENTE.AsFloat;
                       M_PXLINH  := dmAdmDados.cdsConfigCFG_CONTALIE_PXLINHA.AsInteger;
                       //8;
                       // novo
                       txtDevedor.Top := M_LINHA;        // 42,06;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       //txtCPF.Top           := M_LINHA;   // 50
                       txtCPF2.top          := M_LINHA;
                       txtNacionalidade.Top := txtCPF2.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtProfissao.Top := M_LINHA;
                       txtEstCivil.Top  := txtProfissao.Top;
                       txtRG.Top        := txtProfissao.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtEndereco.Top := M_LINHA;
                       txtBairro.Top   := txtEndereco.Top;
                       txtCep.Top      := txtEndereco.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtCidade.Top   := M_LINHA;
                       txtUF.Top       := txtCidade.Top;
                       //
                       M_LINHA := M_LINHA + (M_PXLINH - 1);
                       txtTelefone.Top := M_LINHA;
                       txtBarra.Top    := M_LINHA;
                       txtCelular.Top  := M_LINHA;
                       //
                       M_PXLINH := dmAdmDados.cdsConfigCFG_QTESPACO_CONTRATO1.AsFloat;
                       //78.58;
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtGrupo.Top     :=  M_LINHA; // 152.66;
                       lblDescGrupo.top := txtGrupo.Top;
                       txtCota.Top      := txtGrupo.Top;
                       txtContrato.Top  := txtGrupo.Top;
                       txtCPF2.Clear;
                       txtCPF2.Text     := dmPesquisas.cdsContratoCliente.FieldByName('CPF').asString;
                       //
                       lblDescGrupo.Caption := ' - '+dmAdmDados.GetNomeGrupo(dmPesquisas.cdsContratoClienteCOT_CDGRUPO.AsInteger);
                       PrintReport;
                  End;
            End;
      End;
     //
     if (rbDados.ItemIndex = 1) Then
      begin
       if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
         if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S')
           and (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
            begin
              With dmPesquisas.cdsContratoCliente do
                begin
                     Active := False;
                     Params.ParamByName('pNRVENDA').AsInteger :=
                        dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
                     Active := True;
                End;
              //
              if not (dmPesquisas.cdsContratoCliente.IsEmpty) Then
                 With ppRepVerso do
                  begin
                       lblFiador1.Caption := '';
                       lblCPF1.Caption    := '';
                       lblNacionalidade.Caption    := '';
                       lblProfissao.Caption := '';
                       lblEstCivil.Caption  := '';
                       lblRG1.Caption     := '';
                       lblEndereco.Caption := '';
                       lblCep1.Caption    := '';
                       lblCidade.Caption  := '';
                       lblEstado.Caption  := '';
                       lblFoneFiador1.Caption := '';
                       //
                       lblFiador2.Caption := '';
                       lblCPF2.Caption    := '';
                       lblNacionalidade2.Caption    := '';
                       lblProfissao2.Caption := '';
                       lblEstCivil2.Caption  := '';
                       lblRG2.Caption     := '';
                       lblEndereco2.Caption := '';
                       lblCep2.Caption    := '';
                       lblCidade2.Caption  := '';
                       lblEstado2.Caption  := '';
                       lblFoneFiador2.Caption := '';
                       //
                       if (dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger > 0) Then
                        begin
                             uFuncoes.FilterCDS(dmAdmDados.cdsClientes , fsInteger, dmAdmDados.cdsVendaContasCOT_AVAL1.AsString);
                             if not (dmAdmDados.cdsClientes.IsEmpty) Then
                              begin
                                   lblFiador1.Caption   := dmAdmDados.cdsClientesCLI_NOME.AsString;
                                   lblCPF1.Caption      := uFuncoes.FormataCPF(dmAdmDados.cdsClientesCLI_CPF.AsString);
                                   lblNacionalidade.Caption := '';
                                   lblProfissao.Caption := dmAdmDados.cdsClientesCLI_PROFISSAO.AsString;
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'C') Then
                                      lblEstCivil.Caption  := 'CASADO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'S') Then
                                      lblEstCivil.Caption  := 'SOLTEIRO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'D') Then
                                      lblEstCivil.Caption  := 'DIVORCIADO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'V') Then
                                      lblEstCivil.Caption  := 'VIÚVO(A)';
                                   //
                                   lblCidade.Caption    := dmAdmDados.cdsClientesCLI_CIDADE.AsString;
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NUMCEP.AsString) Then
                                       lblCep1.Caption  := uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString)
                                   Else
                                       lblCep1.Caption  := '';
                                   //
                                   lblEstado.Caption    := dmAdmDados.cdsClientesCLI_UFCLIE.AsString;
                                   lblEndereco.Caption  := dmAdmDados.cdsClientesCLI_ENDERECO.AsString;
                                   lblRG1.Caption       := dmAdmDados.cdsClientesCLI_NRIDEN.AsString;
                                   //
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NRFONE.AsString) Then
                                       lblFoneFiador1.Caption := uFuncoes.FormataFONE(dmAdmDados.cdsClientesCLI_NRFONE.AsString) + ' / ';
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NRCELULAR.AsString) Then
                                       lblFoneFiador1.Caption := lblFoneFiador1.Caption + uFuncoes.FormataFONE(dmAdmDados.cdsClientesCLI_NRCELULAR.AsString);
                              End;
                        End;  // fim-avalista 1
                        //
                       if (dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger > 0) Then
                        begin
                             uFuncoes.FilterCDS(dmAdmDados.cdsClientes , fsInteger, dmAdmDados.cdsVendaContasCOT_AVAL2.AsString);
                             if not (dmAdmDados.cdsClientes.IsEmpty) Then
                              begin
                                   lblFiador2.Caption   := dmAdmDados.cdsClientesCLI_NOME.AsString;
                                   lblCPF2.Caption      := uFuncoes.FormataCPF(dmAdmDados.cdsClientesCLI_CPF.AsString);
                                   lblNacionalidade2.Caption := '';
                                   lblProfissao2.Caption := dmAdmDados.cdsClientesCLI_PROFISSAO.AsString;
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'C') Then
                                      lblEstCivil2.Caption  := 'CASADO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'S') Then
                                      lblEstCivil2.Caption  := 'SOLTEIRO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'D') Then
                                      lblEstCivil2.Caption  := 'DIVORCIADO(A)';
                                   if (dmAdmDados.cdsClientesCLI_ESTADO_CIVIL.AsString = 'V') Then
                                      lblEstCivil2.Caption  := 'VIÚVO(A)';
                                   //
                                   lblCidade2.Caption    := dmAdmDados.cdsClientesCLI_CIDADE.AsString;
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NUMCEP.AsString) Then
                                       lblCep2.Caption  := uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString)
                                   Else
                                       lblCep2.Caption  := '';
                                   //
                                   lblEstado2.Caption    := dmAdmDados.cdsClientesCLI_UFCLIE.AsString;
                                   lblEndereco2.Caption  := dmAdmDados.cdsClientesCLI_ENDERECO.AsString;
                                   lblRG2.Caption        := dmAdmDados.cdsClientesCLI_NRIDEN.AsString;
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NRFONE.AsString) Then
                                       lblFoneFiador2.Caption := uFuncoes.FormataFONE(dmAdmDados.cdsClientesCLI_NRFONE.AsString) + ' / ';
                                   If not uFuncoes.Empty(dmAdmDados.cdsClientesCLI_NRCELULAR.AsString) Then
                                       lblFoneFiador2.Caption := lblFoneFiador2.Caption + uFuncoes.FormataFONE(dmAdmDados.cdsClientesCLI_NRCELULAR.AsString);

                              End;
                        End;  // fim-avalista 2
                       // novo
                       uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                       M_LINHA   := dmAdmDados.cdsConfigCFG_LIN_INICIAL_VERSO.AsFloat;
                       M_PXLINH  := dmAdmDados.cdsConfigCFG_CONTALIE_PXLINHA_VERSO.AsInteger;
                       //
                       lblFiador1.Top        := M_LINHA;     //157.96;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblCPF1.Top           := M_LINHA;
                       lblNacionalidade.Top  := lblCPF1.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblProfissao.Top      := M_LINHA;  //173.56;
                       lblEstCivil.Top       := lblProfissao.Top;
                       lblRG1.Top            := lblProfissao.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblEndereco.Top       := M_LINHA;   // 180,446
                       lblCep1.Top           := lblEndereco.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblCidade.Top         := M_LINHA;   //188,648
                       lblEstado.Top         := lblCidade.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblFoneFiador1.Top    := M_LINHA;
                       //
                       M_LINHA := M_LINHA + dmAdmDados.cdsConfigCFG_QTESPACO_CONTRATO2.AsFloat;
                       // 29.89;
                       lblFiador2.Top := M_LINHA;  // 218,546
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblCPF2.Top           := M_LINHA;
                       lblNacionalidade2.Top := lblCPF2.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblProfissao2.Top     := M_LINHA;
                       lblEstCivil2.Top      := lblProfissao2.Top;
                       lblRG2.Top            := lblProfissao2.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblEndereco2.Top  := M_LINHA;
                       lblCep2.Top       := lblEndereco2.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblCidade2.Top    := M_LINHA;
                       lblEstado2.Top    := lblCidade2.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       lblFoneFiador2.Top    := M_LINHA;
                       //
                       PrintReport;
                  End;
            End;
      End;
     //
     if (rbDados.ItemIndex = 2) Then
      begin
       if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
         if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S')
           and (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
            begin
                 With ppRepContratoVeiculo do
                  begin
                       uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                       M_LINHA   := dmAdmDados.cdsConfigCFG_LIN_INICIAL_VEICULO.AsFloat;
                       M_PXLINH  := dmAdmDados.cdsConfigCFG_CONTALIE_PXLINHA.AsInteger;
                       //
                       txtMarca.Caption := dmAdmDados.cdsVendaContasCOT_MARCA_VEIC.AsString
                                              +'/'+dmAdmDados.cdsVendaContasCOT_MODELO_VEIC.AsString;
                       // Novo
                       txtMarca.Top    := M_LINHA;         //161.13;
                       txtTipoVeic.Top := txtMarca.Top;
                       txtChassi.Top   := txtMarca.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtRenavan.Top  := M_LINHA;      //169.06;
                       txtCor.Top      := txtRenavan.Top;
                       txtSerie.Top    := txtRenavan.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtDataAlie.Top := M_LINHA;     //177.00;
                       txtNotaFiscal.Top := txtDataAlie.Top;
                       txtValorCredito.Top := txtDataAlie.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtAnoF.Top     := M_LINHA;          //185.20;
                       lblBarra.Top    := txtAnoF.Top;
                       txtAnoMod.Top   := txtAnoF.Top;
                       txtSaldo.Top    := txtAnoF.Top;
                       txtNRPREST.top  := txtAnoF.Top;
                       //
                       M_LINHA := M_LINHA + M_PXLINH;
                       txtLocal.Top := M_LINHA;
                       //
                       PrintReport;
                  End;
            End;
      End;
     //
end;

procedure TfrmMovAlienacao.spAvalista2Click(Sender: TObject);
begin
  inherited;
    dbeCDCLIE2.SetFocus;
    frmLocCliente := TfrmLocCliente.create(application);
    try
        frmLocCliente.showmodal;
    finally
        If not (frmLocCliente.cdsConsultar.IsEmpty) Then
         begin
             //spNovoClick(Sender);
             //dmAdmDados.cdsAvalista.FieldByName('AVA_CDCLIE').AsInteger := frmLocCliente.cdsConsultarCLI_CODIGO.AsInteger;
             dmAdmDados.cdsVendaContas.FieldByName('COT_AVAL2').AsInteger := frmLocCliente.cdsConsultarCLI_CODIGO.AsInteger;
         End;
        //
        frmLocCliente.Release;
        frmLocCliente := nil;
    end;
end;

procedure TfrmMovAlienacao.dsVendaContasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     if not (dsVendaContas.DataSet.IsEmpty) Then
      begin
           if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_AVAL1.AsString) Then
              lblAvalista1.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger);
           if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_AVAL2.AsString) Then
              lblAvalista2.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger);
      End
      Else
      begin
           lblAvalista1.Caption := '';
           lblAvalista2.Caption := '';
      End;
      //
      btnImprimir.Enabled := (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') AND
                             (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S');
      //
      btnCancelar.Enabled := btnImprimir.Enabled;
      BtEditar.Enabled := NOT (dmAdmDados.cdsVendaContas.IsEmpty) AND (dmAdmDados.cdsVendaContas.State in [dsBrowse]);
      spExcluirAva1.Enabled := NOT (dmAdmDados.cdsVendaContas.IsEmpty) AND (dmAdmDados.cdsVendaContas.State in [dsEdit]);
      spExcluirAva2.Enabled := spExcluirAva1.Enabled;
end;

procedure TfrmMovAlienacao.dbeCDCLIEChange(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsVendaContas.State in [dsEdit]) Then
        if uFuncoes.Empty(dbeCDCLIE.Text) Then
           lblAvalista1.Caption := '';
end;

procedure TfrmMovAlienacao.dbeCDCLIE2Change(Sender: TObject);
begin
  inherited;
      if (dmAdmDados.cdsVendaContas.State in [dsEdit]) Then
        if uFuncoes.Empty(dbeCDCLIE2.Text) Then
           lblAvalista2.Caption := '';
end;

procedure TfrmMovAlienacao.dsVendaContasStateChange(Sender: TObject);
begin
  inherited;
      spCliente.Enabled   := dsVendaContas.State in [dsEdit];
      spAvalista2.Enabled := dsVendaContas.State in [dsEdit];
      //
      btnConfirma.Enabled := (dsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') and (uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString));
      btnCancelar.Enabled := (dsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') and (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S');
end;

procedure TfrmMovAlienacao.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Registro de Entrega de Bem (Alienação)'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnConfirma.Visible  := (novo = 'S');
     btnCancelar.Visible  := (alterar = 'S');
     //BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

procedure TfrmMovAlienacao.BtEditarClick(Sender: TObject);
begin
  inherited;
     if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
        if (dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString = 'S') Then
         begin
              Tratabotoes;
              dmAdmDados.cdsVendaContas.Edit;
         End;
end;

procedure TfrmMovAlienacao.spExcluirAva1Click(Sender: TObject);
begin
  inherited;
  if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_AVAL1.AsString) Then
   begin
     If Application.MessageBox('Confirma Exclusão de Avalista?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
       begin
            If (dmAdmDados.Excluir_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                      dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger )) Then
                dmAdmDados.cdsVendaContasCOT_AVAL1.Clear
            Else
                Application.MessageBox(PChar('Erro ao tentar excluir avalista.'),
                    'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
       End;
   End
   Else
      Application.MessageBox(PChar('Não há avalista para ser excluido.'),
             'Erro', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmMovAlienacao.dbeCDCLIEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     if (key = #13) and uFuncoes.Empty(dbeCDCLIE.Text) Then
      begin
           Key := #0;
           spClienteClick(Sender);
      End;
end;

procedure TfrmMovAlienacao.dbeCDCLIE2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     if (key = #13) and uFuncoes.Empty(dbeCDCLIE2.Text) Then
      begin
           Key := #0;
           spAvalista2Click(Sender);
      End;
end;

procedure TfrmMovAlienacao.spExcluirAva2Click(Sender: TObject);
begin
  inherited;
  if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_AVAL1.AsString) Then
   begin
     If Application.MessageBox('Confirma Exclusão de Avalista?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
       begin
            If (dmAdmDados.Excluir_Avalista(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                      dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger )) Then
                dmAdmDados.cdsVendaContasCOT_AVAL2.Clear
            Else
                Application.MessageBox(PChar('Erro ao tentar excluir avalista.'),
                    'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
       End;
   End
   Else
      Application.MessageBox(PChar('Não há avalista para ser excluido.'),
             'Erro', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);

end;

procedure TfrmMovAlienacao.dbeCDCLIE2Exit(Sender: TObject);
begin
  inherited;
 if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
 begin
   If not uFuncoes.Empty(dbeCDCLIE2.Text) Then
    begin
       Verificar_cliente;
      //
      if (dmAdmDados.Verificar_Avalista(
           dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
              dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger)) Then
          begin
               dbeCDCLIE2.SetFocus;
               dbeCDCLIE2.Clear;
               raise Exception.Create('Avalista já incluido, cadastre outro.');
          End;
     End;
     //
     lblAvalista2.Caption := dmAdmDados.GetNomeAvalista(dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger);
  End;

end;

procedure TfrmMovAlienacao.dbeRenavanKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmMovAlienacao.dbeNrNotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

End.
