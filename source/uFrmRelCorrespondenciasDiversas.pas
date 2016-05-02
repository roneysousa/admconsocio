unit uFrmRelCorrespondenciasDiversas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls, Mask, Spin, ToolEdit, DB, FMTBcd, DBClient, Provider, SqlExpr,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppStrtch, ppMemo, ADODB, ppSubRpt, RpDefine,
  RpBase, RpSystem, rpmemo, RpRave;

type
  TfrmRelCorresDiversas = class(TfrmModRelatorio)
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    rbSelImpressao: TRadioGroup;
    rbSituacao: TRadioGroup;
    rbContemplacao: TRadioGroup;
    rbTipoRel: TRadioGroup;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    edtDTREFE: TDateEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    seNParcela: TSpinEdit;
    rbgParcelas: TRadioGroup;
    btnCarta: TBitBtn;
    dsModelos: TDataSource;
    lblConsultar: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    dstConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    dsCotas: TDataSource;
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCOT_PLANO: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    cdsConsultarCOT_FLCONTEMPLADO: TStringField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultarCLI_NRFONE: TStringField;
    cdsConsultarCLI_ENDERECO: TStringField;
    cdsConsultarCLI_NUMERO: TIntegerField;
    cdsConsultarCLI_CIDADE: TStringField;
    cdsConsultarCLI_UFCLIE: TStringField;
    cdsRelatorio: TClientDataSet;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dsModeloImpressao: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    lblData: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lblGrupo: TppLabel;
    lblCota: TppLabel;
    ppLabel5: TppLabel;
    lblCliente: TppLabel;
    lblEndereco: TppLabel;
    lblCidade: TppLabel;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBMemo2: TppDBMemo;
    lblData2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lblCliente2: TppLabel;
    lblEndereco2: TppLabel;
    lblCidade2: TppLabel;
    ppLabel6: TppLabel;
    lblGrupo2: TppLabel;
    ppLabel10: TppLabel;
    lblCota2: TppLabel;
    cdsConsultarCONTEMPLADO: TStringField;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    edtNrvenda: TEdit;
    Label1: TLabel;
    btnImprimir: TBitBtn;
    Label2: TLabel;
    edtCota: TEdit;
    rgTipo: TRadioGroup;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape3: TppShape;
    ppLabel9: TppLabel;
    ppDBMemo3: TppDBMemo;
    lblData02: TppLabel;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    lblGrupo02: TppLabel;
    ppLabel14: TppLabel;
    lblCota02: TppLabel;
    ppLabel16: TppLabel;
    lblCliente02: TppLabel;
    lblEndereco02: TppLabel;
    lblCidade02: TppLabel;
    spTamFonte: TSpinEdit;
    Label4: TLabel;
    ADOConnection1: TADOConnection;
    dsTabela: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1VALORDOCRDITOR: TFloatField;
    ADOTable1DURAODOPLANO: TFloatField;
    ADOTable1ENTRADADOPLANO: TFloatField;
    ADOTable1DEMAISPARCELAS: TFloatField;
    ADOTable1VALORDOCREDITO: TFloatField;
    ADOTable1DURAODOPLANO1: TFloatField;
    ADOTable1ENTRADADOPLANO1: TFloatField;
    ADOTable1DEMAISPARCELAS1: TFloatField;
    ppDBPTabela: TppDBPipeline;
    RvSystem1: TRvSystem;
    lblSegundaVia: TppLabel;
    cbkSegundaVia: TCheckBox;
    cboTabela: TCheckBox;
    lblRegistro: TLabel;
    procedure btnCartaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtDTREFEExit(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cdsConsultarCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edtNrvendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNrvendaChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rbSituacaoClick(Sender: TObject);
    procedure rbContemplacaoClick(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure RvSystem1BeforePrint(Sender: TObject);
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
    procedure RvSystem1PrintFooter(Sender: TObject);
    procedure dsCotasDataChange(Sender: TObject; Field: TField);
    procedure rbTipoRelClick(Sender: TObject);
    procedure rbgParcelasClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Buscar(M_CDGRUP : Integer);
    procedure Imprimir_Cliente(iVenda, iGrupo : Integer);
    procedure Imprimir_SegundaVia(aLocal : String);
  public
    { Public declarations }
  end;

var
  frmRelCorresDiversas: TfrmRelCorresDiversas;
  aSegundaVia, aSegVia : String;

implementation

uses uFrmAdmMain, uFrmCadCartaAviso, udmAdmDados, uDmPesquisas, uFuncoes,
  uFrmConsGrupos, uFrmDados, untFrmPreview;

{$R *.dfm}

procedure TfrmRelCorresDiversas.btnCartaClick(Sender: TObject);
begin
  inherited;
      frmMain.AbreForm(TfrmCadCartaAviso, frmCadCartaAviso);
      //
      uFuncoes.RefreshCDS(dmPesquisas.cdsModeloCartas);
end;

procedure TfrmRelCorresDiversas.FormShow(Sender: TObject);
begin
  inherited;
       uFuncoes.RefreshCDS(dmPesquisas.cdsModeloCartas);
       uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
       //
       lblNomeGrupo.Caption := '';
       //btnVisualizar.Enabled := False;
       //
       spTamFonte.Value := dmAdmDados.cdsConfigCFG_TAMANHO_FONTE.AsInteger;  
       edtDTREFE.Date := Date();
       edtGrupo.SetFocus;
end;

procedure TfrmRelCorresDiversas.spLocalizarGrupoClick(Sender: TObject);
begin
  inherited;
      edtGrupo.SetFocus;
      Application.CreateForm(TfrmConsGrupos, frmConsGrupos);
      try
          frmConsGrupos.ShowModal;
      Finally
          if not (frmConsGrupos.cdsConsultar.IsEmpty)   then
          begin
             edtGrupo.Text := frmConsGrupos.cdsConsultarGRU_CODIGO.AsString;
             lblNomeGrupo.Caption := frmConsGrupos.cdsConsultarGRU_DESCRICAO.AsString;
          end;
          //    
          frmConsGrupos.Free;
      End;
end;

procedure TfrmRelCorresDiversas.edtGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    if (Key = #13) and uFuncoes.Empty(edtGrupo.Text)  then
     begin
         Key := #0;
         spLocalizarGrupoClick(Sender);
     end;

end;

procedure TfrmRelCorresDiversas.edtGrupoExit(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.Text))) then
           begin
                edtGrupo.Clear;
                edtGrupo.SetFocus;
                raise Exception.Create('Código de grupo não cadastro.');
           end;
           //
           If uFuncoes.Empty(lblNomeGrupo.Caption) then
            begin
                lblNomeGrupo.Caption := dmAdmDados.GetNomeGrupo(StrtoInt(edtGrupo.Text));
                
            End;
           //
      end;
end;

procedure TfrmRelCorresDiversas.edtGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';
          cdsConsultar.Close; 
          //btnVisualizar.Enabled := False;
          //cdsConsulta.Close;
      End
      Else
      begin
          //Abrir_Cotas_Grupo(StrtoInt(edtGrupo.Text));
          Buscar(StrToInt(edtGrupo.Text));
      End;
end;

procedure TfrmRelCorresDiversas.Buscar(M_CDGRUP: Integer);
Var
   aTexto, aOperador : String;
begin
     case rbgParcelas.ItemIndex of
        0 : aOperador := '<=';
        1 : aOperador := '>=';
        2 : aOperador := '=';
     End;
     //
     With cdsConsultar do
      begin
           DisableControls;
           Active := False;
           CommandText := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE, ';
           CommandText := CommandText + 'C.COT_PLANO, C.COT_POSICAO, C.COT_FLCONTEMPLADO, CL.CLI_NOME,    ';
           CommandText := CommandText + 'CL.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO, ';
           CommandText := CommandText + 'CL.CLI_CIDADE, CL.CLI_UFCLIE ';
           // If (rbgParcelas.ItemIndex > -1) Then
           If (rbTipoRel.ItemIndex = 0) and (seNParcela.Value > 0) Then
              CommandText := CommandText + ' , r.rec_nrvend, count(*) ';
           //
           CommandText := CommandText + 'from COTAS C ';
           CommandText := CommandText + ' INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
           //If (rbgParcelas.ItemIndex > -1) Then
           If (rbTipoRel.ItemIndex = 0) and (seNParcela.Value > 0) Then
               CommandText := CommandText + ' INNER JOIN PARCELAS R ON R.rec_nrvend = C.cot_nrvenda ';
           CommandText := CommandText + 'Where (C.COT_CDGRUPO = :pCDGRUPO) ';
           //
           If not uFuncoes.Empty(edtNrvenda.Text) Then
              CommandText := CommandText + ' and (C.COT_NRVENDA >= '+QuotedStr(edtNrvenda.Text)+') ';
           If not uFuncoes.Empty(edtCota.Text) Then
              CommandText := CommandText + ' and (C.COT_NRCOTA >= '+QuotedStr(edtCota.Text)+') ';
           If (rbSituacao.ItemIndex = 0) then
                CommandText := CommandText + ' and (C.COT_POSICAO ='+QuotedStr('A')+') ';
           If (rbSituacao.ItemIndex = 1) then
                CommandText := CommandText + ' and (C.COT_POSICAO ='+QuotedStr('I')+') ';
           If (rbSituacao.ItemIndex = 2) then
                CommandText := CommandText + ' and (C.COT_POSICAO ='+QuotedStr('Q')+') ';
           //
           If (rbContemplacao.ItemIndex = 0) Then
                CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+QuotedStr('S')+') ';
           If (rbContemplacao.ItemIndex = 1) Then
                CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+QuotedStr('N')+') ';
           //
           //If (rbgParcelas.ItemIndex > -1) Then
           If (rbTipoRel.ItemIndex = 0) and (seNParcela.Value > 0) Then
            begin
                CommandText := CommandText + ' and (r.rec_dtvenc < :pDtVenc) and (r.rec_dtpaga is null)  ';
                CommandText := CommandText + ' group by C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_CDCLIE,  ';
                CommandText := CommandText + ' C.COT_PLANO, C.COT_POSICAO, C.COT_FLCONTEMPLADO, CL.CLI_NOME,  ';
                CommandText := CommandText + ' CL.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO,  ';
                CommandText := CommandText + ' CL.CLI_CIDADE, CL.CLI_UFCLIE, r.rec_nrvend';
                CommandText := CommandText + ' having (count(*) '+aOperador+seNParcela.Text+')  ';
            End;
            //
           If uFuncoes.Empty(edtCota.Text) Then
                CommandText := CommandText + 'order by C.COT_NRVENDA '
           Else
                CommandText := CommandText + 'order by C.COT_NRCOTA ';
           //
           aTexto := CommandText;
           Params[0].AsInteger := M_CDGRUP;
           If (rbTipoRel.ItemIndex = 0) and (seNParcela.Value > 0) Then
               Params.ParamByName('pDtVenc').AsDate := Date();
           Active := True;
           EnableControls;
      End;
end;

procedure TfrmRelCorresDiversas.edtDTREFEExit(Sender: TObject);
begin
  inherited;
        if (edtDTREFE.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTREFE.Text) Then
              edtDTREFE.Date := uFuncoes.FormatarData(edtDTREFE.text)
           Else
           begin
              edtDTREFE.Date := Date();
              edtDTREFE.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelCorresDiversas.btnVisualizarClick(Sender: TObject);
Var
    M_CDMODE : Integer;
    M_CIDADE, M_UFEMPR : String;
    stream : TMemoryStream;
begin
  inherited;
      if not (cdsConsultar.IsEmpty) Then
        begin
             uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
             //
             M_CDMODE := dmPesquisas.cdsModeloCartas.FieldByName('CAR_CODIGO').AsInteger;
             M_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
             M_UFEMPR := dmAdmDados.cdsConfigCFG_UF.AsString;
             //
             uFuncoes.FilterCDS(dmPesquisas.cdsCartas, fsInteger, InttoStr(M_CDMODE));
             uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, cdsConsultarCOT_CDCLIE.AsString);
             //
             if not (dmPesquisas.cdsCartas.IsEmpty) Then
              begin
                If (rgTipo.ItemIndex = 0) Then
                begin
                   With ppReport1 do
                    begin
                         ppDBMemo1.Font.Size  := spTamFonte.Value;
                         ppDBMemo2.Font.Size  := spTamFonte.Value;
                         //
                         lblCliente.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                         lblGrupo.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                         lblCota.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                         //
                         lblGrupo2.Caption   := lblGrupo.Caption;
                         lblCota2.Caption    := lblCota.Caption;
                         //
                         lblEndereco.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                         lblCidade.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                         //
                         lblCliente2.Caption  := lblCliente.Caption;
                         lblEndereco2.Caption := lblEndereco.Caption;
                         lblCidade2.Caption   := lblCidade.Caption;
                         //
                         If (edtDTREFE.Text <> '  /  /    ') Then
                         begin
                             lblData.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date);
                             lblData2.Caption := lblData.Caption;
                         End
                         Else
                         begin
                             lblData.Caption  := '';
                             lblData2.Caption := '';
                         End;
                         //
                         DeviceType := 'Screen';
                         PrintReport;
                    End;
                 End     // senão, rgTipo <> 0
                 Else
                 begin
                  If not (cboTabela.Checked) Then
                  begin
                   With ppReport2 do
                    begin
                         ppDBMemo3.Font.Size  := spTamFonte.Value;
                         lblCliente02.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                         lblGrupo02.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                         lblCota02.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                         lblSegundaVia.Caption := ' ';
                         //
                         lblEndereco02.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                         lblCidade02.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                         //
                         If (edtDTREFE.Text <> '  /  /    ') Then
                             lblData02.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date)
                         Else
                             lblData02.Caption := '';
                         //
                         {DeviceType := 'Printer';  // => manda direto para a impressora
                         ShowPrintDialog := False;}
                         PrintReport;
                         //
                         If (cbkSegundaVia.Checked ) Then
                         begin
                              ppDBMemo3.Font.Size  := spTamFonte.Value;
                              lblCliente02.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                              lblGrupo02.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                              lblCota02.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                              lblSegundaVia.Caption := 'Segunda Via';
                              //
                              lblEndereco02.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                              lblCidade02.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                              //
                              If (edtDTREFE.Text <> '  /  /    ') Then
                                  lblData02.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date)
                              Else
                                  lblData02.Caption := '';
                              //
                              {DeviceType := 'Printer';  // => manda direto para a impressora
                              ShowPrintDialog := False;}
                              PrintReport;
                         End;
                    End;
                  End
                  Else
                  begin
                      //RvSystem1.DefaultDest := rdPrinter;
                      {stream := TMemoryStream.Create;
                      RvSystem1.SystemFiler.StreamMode := smUser;
                      RvSystem1.Stream := Stream;
                      //
                      Rvsystem1.execute;
                      //RvProject1.ExecuteReport('rpCarta');
                      FrmPreview := TFrmPreview.Create(Self, Stream,
                        'Visualizar Impressão');
                      try
                        FrmPreview.ShowModal;
                      finally
                        FrmPreview.Release;
                        FrmPreview := nil;
                      end;}
                      RvSystem1.DefaultDest := rdPreview;
                      rvsystem1.execute;
                      //
                      If (cbkSegundaVia.Checked) Then
                         Imprimir_SegundaVia('Tela');
                  End;
                 End;
              End;
        End;
        //
        // edtDTREFE.Date := Date();
end;

procedure TfrmRelCorresDiversas.cdsConsultarCalcFields(DataSet: TDataSet);
begin
  inherited;
      If (cdsConsultar.State in [dsInternalCalc]) Then
        if (cdsConsultarCOT_FLCONTEMPLADO.AsString = 'S') Then
            cdsConsultarCONTEMPLADO.AsString := 'SIM'
        Else
            cdsConsultarCONTEMPLADO.AsString := 'NÃO';
end;

procedure TfrmRelCorresDiversas.FormCreate(Sender: TObject);
var strConn, strArquivo :string;
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Carta de Aviso...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnCarta.Visible       := (novo = 'S');
     btnVisualizar.Visible  := (alterar = 'S');
   End;
   //
   strArquivo := 'Tabela.xls';
   //ExtractFilePath( Application.ExeName ) + 'Tabela.xls';
   //
   try
       strConn:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ strArquivo+';Extended Properties=Excel 8.0;Persist Security Info=False';
       AdoConnection1.Connected:=False;
       AdoConnection1.ConnectionString:=strConn;
       AdoConnection1.Open;
       //
       ADOTable1.close;
       ADOTable1.open;
       //
   Except

   End;
end;

procedure TfrmRelCorresDiversas.edtNrvendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
end;

procedure TfrmRelCorresDiversas.edtNrvendaChange(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));

     { if (cdsConsultar.Active) and not uFuncoes.Empty(edtNrvenda.Text) Then
        begin
             cdsConsultar.Locate('COT_NRVENDA',edtNrvenda.Text,[]);
        End;}
end;

procedure TfrmRelCorresDiversas.Imprimir_Cliente(iVenda, iGrupo: Integer);
Var
    M_CDMODE : Integer;
    M_CIDADE, M_UFEMPR : String;
begin
  inherited;
      if not (cdsConsultar.IsEmpty) Then
        begin
             uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
             //
             M_CDMODE := dmPesquisas.cdsModeloCartas.FieldByName('CAR_CODIGO').AsInteger;
             M_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
             M_UFEMPR := dmAdmDados.cdsConfigCFG_UF.AsString;
             //
             uFuncoes.FilterCDS(dmPesquisas.cdsCartas, fsInteger, InttoStr(M_CDMODE));
             uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, cdsConsultarCOT_CDCLIE.AsString);
             //
             if not (dmPesquisas.cdsCartas.IsEmpty) Then
              begin
                 IF (rgTipo.ItemIndex = 0) then
                  begin
                   With ppReport1 do
                    begin
                         ppDBMemo1.Font.Size  := spTamFonte.Value;
                         ppDBMemo2.Font.Size  := spTamFonte.Value;
                         //
                         lblCliente.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                         lblGrupo.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                         lblCota.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                         //
                         lblGrupo2.Caption   := lblGrupo.Caption;
                         lblCota2.Caption    := lblCota.Caption;
                         //
                         lblEndereco.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                         lblCidade.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                         //
                         lblCliente2.Caption  := lblCliente.Caption;
                         lblEndereco2.Caption := lblEndereco.Caption;
                         lblCidade2.Caption   := lblCidade.Caption;
                         //
                         If (edtDTREFE.Text <> '  /  /    ') Then
                         Begin
                             lblData.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date);
                             lblData2.Caption := lblData.Caption;
                         End
                         Else
                         begin
                             lblData.Caption := ' ';
                             lblData2.Caption := lblData.Caption;
                         End;
                         //
                         DeviceType := 'Printer';  // => manda direto para a impressora
                         ShowPrintDialog := False;
                         PrintReport;
                    End;
                  End
                  Else
                  begin
                   With ppReport2 do
                    begin
                         ppDBMemo3.Font.Size  := spTamFonte.Value;
                         //
                       If not (cboTabela.Checked) Then
                       begin
                         lblCliente02.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                         lblGrupo02.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                         lblCota02.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                         lblSegundaVia.Caption := ' ';
                         //
                         lblEndereco02.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                         lblCidade02.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                         //
                         If (edtDTREFE.Text <> '  /  /    ') Then
                             lblData02.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date)
                         Else
                             lblData02.Caption := '';
                         //
                         DeviceType := 'Printer';  // => manda direto para a impressora
                         ShowPrintDialog := False;
                         PrintReport;
                         //
                         If (aSegundaVia = 'S') Then
                           begin
                                ppDBMemo3.Font.Size  := spTamFonte.Value;
                                //
                                lblCliente02.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                                lblGrupo02.Caption   := cdsConsultarCOT_CDGRUPO.AsString + ' - ' + dmAdmDados.GetNomeGrupo(cdsConsultarCOT_CDGRUPO.AsInteger);
                                lblCota02.Caption    := cdsConsultarCOT_NRCOTA.AsString;
                                lblSegundaVia.Caption := 'Segunda Via';
                                //
                                lblEndereco02.Caption := dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString;
                                lblCidade02.Caption  := dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString);
                                //
                                If (edtDTREFE.Text <> '  /  /    ') Then
                                    lblData02.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(edtDTREFE.Date)
                                Else
                                    lblData02.Caption := '';
                                //
                                DeviceType := 'Printer';  // => manda direto para a impressora
                                ShowPrintDialog := False;
                                PrintReport;
                           End;
                       End
                       Else
                       begin
                            RvSystem1.DefaultDest := rdPrinter;
                            rvsystem1.execute;
                            //
                            If (cbkSegundaVia.Checked) Then
                               Imprimir_SegundaVia('Impressora');
                       End;
                    End;
                  End;
              End;
        End;
end;

procedure TfrmRelCorresDiversas.btnImprimirClick(Sender: TObject);
Var
    aSituacao, aFluxoCont : String;
begin
  inherited;
          If not (cdsConsultar.IsEmpty) Then
           begin
             //
             If (cbkSegundaVia.Checked) Then
                 aSegundaVia := 'S'
             Else
                 aSegundaVia := 'N';
             //    
             If Application.MessageBox(PChar('Imprimir todas as cartas do grupo '+edtGrupo.text+'?'),
               'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
              begin
                btnImprimir.Enabled := False;
                try
                   // M_FLIMPR := True;
                   If (rbSituacao.ItemIndex = 0 ) Then
                      aSituacao := 'A';
                   If (rbSituacao.ItemIndex = 1 ) Then
                      aSituacao := 'I';
                   If (rbSituacao.ItemIndex = 2 ) Then
                      aSituacao := 'Q';
                   If (rbSituacao.ItemIndex = 3 ) Then
                      aSituacao := 'T';
                   //
                   If (rbContemplacao.ItemIndex = 0) Then
                      aFluxoCont := 'S';
                   If (rbContemplacao.ItemIndex = 1) Then
                      aFluxoCont := 'N';
                   If (rbContemplacao.ItemIndex = 2) Then
                      aFluxoCont := 'T';
                   //
                   With cdsConsultar do
                   begin
                     First;
                     While not (Eof) do
                      begin
                            if (aSituacao <> 'T') AND (aFluxoCont <> 'T') then
                             begin
                               If (cdsConsultarCOT_POSICAO.AsString = aSituacao)
                                 AND (cdsConsultarCOT_FLCONTEMPLADO.AsString = aFluxoCont) Then
                                 begin
                                   {If not uFuncoes.Empty(edtCota.Text) Then
                                     begin
                                          If (cdsConsultarCOT_NRCOTA.AsInteger >=  StrtoInt(edtCota.Text)) then
                                             Imprimir_Cliente(cdsConsultarCOT_NRVENDA.AsInteger, cdsConsultarCOT_CDGRUPO.AsInteger);
                                     End
                                     Else}
                                         Imprimir_Cliente(cdsConsultarCOT_NRVENDA.AsInteger, cdsConsultarCOT_CDGRUPO.AsInteger);
                                 End;
                             End
                             Else
                                 Imprimir_Cliente(cdsConsultarCOT_NRVENDA.AsInteger, cdsConsultarCOT_CDGRUPO.AsInteger);
                             // Proximo
                             Next;
                             //
                             If not (Eof) Then
                                 If Application.MessageBox(PChar('SIM : Imprime carta da cota '+cdsConsultarCOT_NRCOTA.AsString +#13+
                                                                 'NÃO : Para impressão.'),
                                       'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
                                       Break;
                             //
                      End;    // fim-do-enquanto  dmRelatorios.cdsBoletosClientes
                        EnableControls;
                   End;   // with-cdsConsultar
                  //
                Finally
                   btnImprimir.Enabled := True;
                End;
                //
                Application.ProcessMessages;
              End;  // fim-se pergunta
          End;   // fim-se não vazio cdsConsultar
          //
         // edtDTREFE.Date := Date();
end;

procedure TfrmRelCorresDiversas.rbSituacaoClick(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelCorresDiversas.rbContemplacaoClick(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelCorresDiversas.edtCotaChange(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelCorresDiversas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      dmAdmDados.GravaTamanhoFonte(spTamFonte.Value);
      //
      ADOTable1.Close;
      ADOConnection1.Close;   
end;

procedure TfrmRelCorresDiversas.Button1Click(Sender: TObject);
begin
  inherited;
      frmMain.AbreForm(TfrmDados, frmDados);
end;

procedure TfrmRelCorresDiversas.RvSystem1BeforePrint(Sender: TObject);
begin
  inherited;
  with sender as tbasereport do
  begin
    setpapersize(dmpaper_a4,0,0);
    cleartabs;
    settab(1.0,pjRight,2.0,0,boxlinenone,0);
    settab(na ,pjCenter,2.0,0,boxlinenone,0);
    settab(na ,pjRight,2.0,0,boxlinenone,0);
    settab(na ,pjRight,2.0,0,boxlinenone,0);
    //
    settab(na ,pjRight,2.0,0,boxlinenone,0);
    settab(na ,pjCenter,2.0,0,boxlinenone,0);
    settab(na ,pjRight,2.0,0,boxlinenone,0);
    settab(na ,pjRight,2.0,0,boxlinenone,0);
    //
    savetabs(1);
    //
    cleartabs;
    settab(2.6,pjRight,2.0,0,BOXLINEALL ,0);
    settab(na ,pjCenter,2.0,0,BOXLINEALL,0);
    settab(na ,pjRight,2.0,0,BOXLINEALL,0);
    settab(na ,pjRight,2.0,0,BOXLINEALL,0);
    //
    settab(na ,pjRight,2.0,0,BOXLINEALL,0);
    settab(na ,pjCenter,2.0,0,BOXLINEALL,0);
    settab(na ,pjRight,2.0,0,BOXLINEALL,0);
    settab(na ,pjRight,2.0,0,BOXLINEALL,0);
    //
    savetabs(2);
    //
    cleartabs;
    settab(1.0,pjRight,18.0,0,BOXLINENONE ,0);
    //
    savetabs(3);
    //
    cleartabs;
    settab(2.6,pjCenter,2.0,0,BOXLINEALL,0);
    settab(na ,pjCenter,2.0,0,BOXLINEALL,0);
    settab(na ,pjCenter,2.0,0,BOXLINEALL,0);
    settab(na ,pjCenter,2.0,0,boxlineALL,0);
    //
    settab(na ,pjCenter,2.0,0,boxlineALL,0);
    settab(na ,pjCenter,2.0,0,boxlineALL,0);
    settab(na ,pjCenter,2.0,0,boxlineALL,0);
    settab(na ,pjCenter,2.0,0,boxlineALL,0);
    //
    savetabs(4);
  end;


end;

procedure TfrmRelCorresDiversas.RvSystem1PrintHeader(Sender: TObject);
Var
    cont : integer;
begin
  inherited;

  with sender as tbasereport do
  begin
    For cont := 1 to dmAdmDados.cdsConfigCFG_TOP_CARTA.AsInteger do
        newline;
    //
    setfont('arial', 14);
    bold := true;
    printcenter('Informativo Coopercarro',pagewidth/2);
    newline;
    setfont('arial', 10);
    bold := true;
    If (aSegVia = 'S') Then
     begin
         PrintRight('Segunda Via',20);
         newline;
     End;
    PrintRight(dmAdmDados.cdsConfigCFG_CIDADE.AsString+' ('+dmAdmDados.cdsConfigCFG_UF.AsString+'), '+uFuncoes.DataExtenso(Date()),20);
    For cont := 1 to dmAdmDados.cdsConfigCFG_TOP_CARTA.AsInteger do
        newline;
  end;

end;

procedure TfrmRelCorresDiversas.RvSystem1Print(Sender: TObject);
Var
    memo : tmemobuf;
    i, j  : integer;
begin
  inherited;
 with sender as tbasereport do
  begin
    //
    setfont('arial',10);
    bold := false;
    for j := 1 to dmAdmDados.cdsconfigCFG_TOP_CABECALHO.AsInteger do
         newline;
    //
    ADOTable1.first;
    ADOTable1.disablecontrols;
    try
      memo := tmemobuf.create;
      memo.basereport := (sender as tbasereport);
      restoretabs(3);
      //
      memo.insert(0, dmPesquisas.cdsCartasCAR_HISTORICO.AsString);
      memo.justify := pjblock; //pjcenter pjleft pjright pjblock
      memo.printstart := 2;
      memo.printend := 20;
      memo.printlines(0, true);
      //
      For i := 1 to dmAdmDados.cdsConfigCFG_BOTTOR_CARTA.AsInteger do
           NewLine;
      //
    setfont('arial', dmAdmDados.cdsConfigCFG_FONTE_TABELA.AsInteger);
    bold := true;
    //printcenter('PLANOS DE R$ 5.000,00 Á R$ 12.000,00 E DE R$ 15.000,00 Á R$ 40.000,00',pagewidth/2);
    PrintLeft(dmAdmDados.cdsConfigCFG_MENS_TABELA.AsString,4.0);
    //newline;
    newline;
    setfont('arial', dmAdmDados.cdsConfigCFG_FONTE_TABELA.AsInteger);
    bold := true;

    restoretabs(4);
    printtab('VALOR DO');
    printtab('DURAÇÃO DO');
    printtab('ENTRADA DO');
    printtab('DEMAIS');
    //
    printtab('VALOR DO');
    printtab('DURAÇÃO DO');
    printtab('ENTRADA DO');
    printtab('DEMAIS');
    //
    NewLine;
    restoretabs(4);
    printtab('CRÉDITO R$');
    printtab('PLANO');
    printtab('PLANO');
    printtab('PARCELAS');
    //
    printtab('CRÉDITO R$');
    printtab('PLANO');
    printtab('PLANO');
    printtab('PARCELAS');
    newline;
    //
    bold := False;
      while not ADOTable1.eof do
      begin
           if linesleft < 6 then
             newpage;
           //
          bold := false;
          If (ADOTable1DURAODOPLANO.AsFloat > 0) Then
          begin
           restoretabs(2);
           If (ADOTable1VALORDOCRDITOR.AsFloat > 0) Then
               printtab(FormatFloat('###,##0.#0',ADOTable1VALORDOCRDITOR.AsFloat))
           Else
               printtab(' ');
           If (ADOTable1DURAODOPLANO.AsFloat > 0) Then
               printtab(ADOTable1DURAODOPLANO.AsString)
           Else
               printtab(' ');
           If (ADOTable1ENTRADADOPLANO.asFloat > 0) Then
               printtab(FormatFloat('###,##0.#0',ADOTable1ENTRADADOPLANO.asFloat))
           Else
               printtab(' ');
           If (ADOTable1DEMAISPARCELAS.asFloat > 0) Then
               printtab(FormatFloat('###,##0.#0',ADOTable1DEMAISPARCELAS.asFloat))
           Else
               printtab(' ');
           //
           If (ADOTable1VALORDOCREDITO.asFloat > 0) Then
              printtab(FormatFloat('###,##0.#0',ADOTable1VALORDOCREDITO.asFloat))
           Else
              printtab('');
           If (ADOTable1DURAODOPLANO1.AsFloat > 0) Then
               printtab(ADOTable1DURAODOPLANO1.AsString)
           Else
               printtab(' ');
           If (ADOTable1ENTRADADOPLANO1.asFloat > 0) Then
               printtab(FormatFloat('###,##0.#0',ADOTable1ENTRADADOPLANO1.asFloat))
           Else
               printtab(' ');
           If (ADOTable1DEMAISPARCELAS1.asFloat > 0) Then
               printtab(FormatFloat('###,##0.#0',ADOTable1DEMAISPARCELAS1.asFloat))
           Else
               printtab(' ');
          End;
           //
           ADOTable1.next;
           newline;
      end;  
   finally
      ADOTable1.EnableControls;
      freeandnil(memo);
   end;
 End;
end;

procedure TfrmRelCorresDiversas.RvSystem1PrintFooter(Sender: TObject);
begin
  inherited;
  with sender as tbasereport do
  begin
    moveto(1.0,25.5);
    lineto(20,25.5);
    ypos := 25.6;
    //
    NewLine;
    setfont('arial', dmAdmDados.cdsConfigCFG_FONTE_RODAPE.AsInteger);
    bold := True;
    //
    printleft('Grupo : ' + cdsConsultarCOT_CDGRUPO.AsString +'  '+lblNomeGrupo.Caption + '  -  Cota : ' + cdsConsultarCOT_NRCOTA.AsString,marginleft);
    //
    bold := True;
    NewLine;
    printleft('Destinatário: ',marginleft);
    NewLine;
    bold := false;
    printleft(cdsConsultarCLI_NOME.AsString,marginleft);
    NewLine;
    printleft(dmAdmDados.cdsClientesCLI_ENDERECO.AsString + ', '+dmAdmDados.cdsClientesCLI_BAIRRO.AsString,marginleft);
    NewLine;
    printleft(dmAdmDados.cdsClientesCLI_CIDADE.AsString + ' ' + dmAdmDados.cdsClientesCLI_UFCLIE.AsString + '  '+ uFuncoes.FormataCep(dmAdmDados.cdsClientesCLI_NUMCEP.AsString),marginleft);
    NewLine;
  end;
end;

procedure TfrmRelCorresDiversas.Imprimir_SegundaVia(aLocal: String);
begin
     If (cbkSegundaVia.Checked) Then
       begin
            aSegVia := 'S';
            If (aLocal = 'Tela') Then
                RvSystem1.DefaultDest := rdPreview
            Else
                RvSystem1.DefaultDest := rdPrinter;
            rvsystem1.execute;
       end;
       //
       aSegVia := 'N';
End;

procedure TfrmRelCorresDiversas.dsCotasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
    if not (dsCotas.DataSet.IsEmpty)
     and (dsCotas.DataSet.RecordCount > 0) Then
        lblRegistro.Caption := 'Registro(s) :'+IntToStr(dsCotas.DataSet.RecordCount)
     Else
        lblRegistro.Caption := 'Registro(s) : 0';
end;

procedure TfrmRelCorresDiversas.rbTipoRelClick(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelCorresDiversas.rbgParcelasClick(Sender: TObject);
begin
  inherited;
    if not uFuncoes.Empty(edtGrupo.Text) Then
        Buscar(StrtoInt(edtGrupo.Text));
end;

End.
