unit uFrmVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls,
  Grids, DBGrids, FMTBcd, DBClient, Provider, DB, SqlExpr, DBCtrls,
  RXDBCtrl, ToolEdit, Menus, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar, CurrEdit;

type
  TfrmVendas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rbStatusGrupo: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cbxIniciou: TCheckBox;
    cbxCorrigido: TCheckBox;
    Label6: TLabel;
    spLocCliente: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    pnlBotoes: TPanel;
    BtAdicionar: TBitBtn;
    BtEditar: TBitBtn;
    BtExcluir: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    pnlProcurar: TPanel;
    lblConsultar: TLabel;
    edtConsultar: TEdit;
    btnConsultar: TBitBtn;
    Panel3: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    grdConsultar: TDBGrid;
    Label27: TLabel;
    edtCota: TEdit;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    rgConsultar: TRadioGroup;
    btnImprimiExt: TBitBtn;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    grdConsultar2: TDBGrid;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    cbxContemplacao: TCheckBox;
    Label32: TLabel;
    edtParcPagas: TEdit;
    Label33: TLabel;
    edtParcAtras: TEdit;
    Label34: TLabel;
    edtParcVinc: TEdit;
    dsVendaContas: TDataSource;
    dbeCOTA: TDBEdit;
    dbePLANO: TDBEdit;
    dbeCliente: TDBEdit;
    dbeContrato: TDBEdit;
    dbeCredito: TDBEdit;
    dbePrimeiraPC: TDBEdit;
    dbeValorPC: TDBEdit;
    dbeAcerto: TDBEdit;
    dbeCreditoLiq: TDBEdit;
    dbeFundo: TDBEdit;
    dbeTxAdm: TDBEdit;
    dbeTxAdesao: TDBEdit;
    dbeTxCad: TDBEdit;
    cmbBancos: TDBLookupComboBox;
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    DBText1: TDBText;
    DBRadioGroup1: TDBRadioGroup;
    dbeAssembleia: TDBEdit;
    rbSituacao: TDBRadioGroup;
    spLocGrupo: TSpeedButton;
    cmbGrupos: TDBLookupComboBox;
    dsParcelas: TDataSource;
    edtMeses: TEdit;
    edtCotas: TEdit;
    btnRegistro: TBitBtn;
    StatusBar1: TStatusBar;
    dbeDtContrato: TDBDateEdit;
    dbeDTVenc1: TDBDateEdit;
    dbeCDGRUP: TDBEdit;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    mnuGruposItem: TMenuItem;
    mnuClienteItem: TMenuItem;
    Vendas1: TMenuItem;
    BaixaParcelas1: TMenuItem;
    mnuCaixaItem: TMenuItem;
    Parametro1: TMenuItem;
    Label21: TLabel;
    edtNRVEND: TEdit;
    cbmModelos: TComboBox;
    lbl_situacao: TLabel;
    bntImportar: TBitBtn;
    ppRepContrato: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    txtRazao: TppDBText;
    txtCPF: TppDBText;
    txtIdentidade: TppDBText;
    txtNacionalidade: TppDBText;
    txtSexo: TppDBText;
    txtDataNasc: TppDBText;
    txtProfissao: TppDBText;
    txtEndereco: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBPipeline1: TppDBPipeline;
    dsContratoCliente: TDataSource;
    btnContrato: TBitBtn;
    lbIdentificacao: TppLabel;
    txtEstCivil: TppDBText;
    txtBairro: TppDBText;
    txtCidade: TppDBText;
    txtUF: TppDBText;
    txtCep: TppDBText;
    txtFone: TppDBText;
    txtEndEmpresa: TppDBText;
    txtBairroEmp: TppDBText;
    ppDBText17: TppDBText;
    txtUFEmp: TppDBText;
    txtCEPEmp: TppDBText;
    txtFoneEmp: TppDBText;
    lblGrupo: TppLabel;
    txtCota: TppDBText;
    txtDuracao: TppDBText;
    txtCredito: TppDBText;
    lblDataReceber: TLabel;
    lblReceber: TLabel;
    dbeValorReceber: TDBEdit;
    dbeRecebimento: TDBDateEdit;
    btnSPC: TBitBtn;
    btnQuitar: TBitBtn;
    btnInativar: TBitBtn;
    btnInativarPago: TBitBtn;
    btnReativar: TBitBtn;
    ppRepExtratoCliente: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppDBText24: TppDBText;
    lblNomeCliente: TppLabel;
    lblStatus: TppLabel;
    lblDescGrupo: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBPExtratoCliente: TppDBPipeline;
    ppDBPExtratoClienteppField1: TppField;
    ppDBPExtratoClienteppField2: TppField;
    ppDBPExtratoClienteppField3: TppField;
    ppDBPExtratoClienteppField4: TppField;
    ppDBPExtratoClienteppField5: TppField;
    ppDBPExtratoClienteppField6: TppField;
    ppDBPExtratoClienteppField7: TppField;
    ppDBPExtratoClienteppField8: TppField;
    ppDBPExtratoClienteppField9: TppField;
    ppDBPExtratoClienteppField10: TppField;
    ppDBPExtratoClienteppField11: TppField;
    ppDBPExtratoClienteppField12: TppField;
    ppDBPExtratoClienteppField13: TppField;
    ppDBPExtratoClienteppField14: TppField;
    ppDBPExtratoClienteppField15: TppField;
    ppDBPExtratoClienteppField16: TppField;
    ppDBPExtratoClienteppField17: TppField;
    ppDBPExtratoClienteppField18: TppField;
    ppDBPExtratoClienteppField19: TppField;
    ppDBPExtratoClienteppField20: TppField;
    ppDBPExtratoClienteppField21: TppField;
    ppDBPExtratoClienteppField22: TppField;
    ppDBPExtratoClienteppField23: TppField;
    ppDBPExtratoClienteppField24: TppField;
    ppDBPExtratoClienteppField25: TppField;
    ppDBPExtratoClienteppField26: TppField;
    ppDBPExtratoClienteppField27: TppField;
    ppDBPExtratoClienteppField28: TppField;
    DBNavigator1: TDBNavigator;
    ppTitleBand1: TppTitleBand;
    Label22: TLabel;
    edtNumPlaca: TEdit;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    cdsConsultarCOT_NRSERIE: TStringField;
    DBNavigator2: TDBNavigator;
    rbAdesao: TDBRadioGroup;
    Label23: TLabel;
    edtNomeCliente: TEdit;
    Label24: TLabel;
    edtNRCPF: TMaskEdit;
    cdsConsultarCLI_CPF: TStringField;
    dsLista: TDataSource;
    btnEtiqueta: TBitBtn;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    btnTransferencia: TBitBtn;
    Label25: TLabel;
    lblNMCLIE: TEdit;
    btnProtesto: TBitBtn;
    Label26: TLabel;
    edtSaldo: TDBEdit;
    pnlStatus: TPanel;
    N1: TMenuItem;
    AlterarStatuspAtivo1: TMenuItem;
    Label29: TLabel;
    cmbDia: TDBLookupComboBox;
    pmnAlterarStatusReativadopInativoPagoItem: TMenuItem;
    N2: TMenuItem;
    mnuAlterarDiadeVencimentoItem: TMenuItem;
    N3: TMenuItem;
    pmnBaixarSaldoInativoItem: TMenuItem;
    ppLabel17: TppLabel;
    ppDBCalc7: TppDBCalc;
    ZerarSaldodoCliente1: TMenuItem;
    ckbSaldoParcela: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeCDGRUPExit(Sender: TObject);
    procedure dbeCDGRUPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCOTAKeyPress(Sender: TObject; var Key: Char);
    procedure dbePLANOKeyPress(Sender: TObject; var Key: Char);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BtExcluirClick(Sender: TObject);
    procedure dbeCreditoExit(Sender: TObject);
    procedure dbeCreditoEnter(Sender: TObject);
    procedure dbeClienteChange(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure dbeCOTAExit(Sender: TObject);
    procedure dbeCOTAEnter(Sender: TObject);
    procedure spLocGrupoClick(Sender: TObject);
    procedure dbePLANOExit(Sender: TObject);
    procedure dbePrimeiraPCExit(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure cmbGruposExit(Sender: TObject);
    procedure dbeCreditoChange(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnRegistroClick(Sender: TObject);
    procedure btnImprimiExtClick(Sender: TObject);
    procedure dbeDtContratoExit(Sender: TObject);
    procedure dbeDTVenc1Exit(Sender: TObject);
    procedure dbeCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbGruposKeyPress(Sender: TObject; var Key: Char);
    procedure Parametro1Click(Sender: TObject);
    procedure mnuGruposItemClick(Sender: TObject);
    procedure mnuClienteItemClick(Sender: TObject);
    procedure mnuCaixaItemClick(Sender: TObject);
    procedure Banco1Click(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtNRVENDChange(Sender: TObject);
    procedure edtNRVENDKeyPress(Sender: TObject; var Key: Char);
    procedure dsVendaContasStateChange(Sender: TObject);
    procedure cbmModelosEnter(Sender: TObject);
    procedure edtConsultarEnter(Sender: TObject);
    procedure bntImportarClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure edtCotaExit(Sender: TObject);
    procedure btnSPCClick(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnInativarClick(Sender: TObject);
    procedure btnInativarPagoClick(Sender: TObject);
    procedure btnReativarClick(Sender: TObject);
    procedure dsVendaContasDataChange(Sender: TObject; Field: TField);
    procedure edtNumPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumPlacaChange(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure edtNomeClienteChange(Sender: TObject);
    procedure edtNRCPFChange(Sender: TObject);
    procedure edtNRCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure dbeTxAdmExit(Sender: TObject);
    procedure btnTransferenciaClick(Sender: TObject);
    procedure edtSaldoClick(Sender: TObject);
    procedure btnProtestoClick(Sender: TObject);
    procedure AlterarStatuspAtivo1Click(Sender: TObject);
    procedure grdConsultar2DblClick(Sender: TObject);
    procedure cmbDiaExit(Sender: TObject);
    procedure pmnAlterarStatusReativadopInativoPagoItemClick(
      Sender: TObject);
    procedure dbeContratoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDTVenc1Enter(Sender: TObject);
    procedure cmbDiaKeyPress(Sender: TObject; var Key: Char);
    procedure mnuAlterarDiadeVencimentoItemClick(Sender: TObject);
    procedure pmnBaixarSaldoInativoItemClick(Sender: TObject);
    procedure ppDBCalc7Calc(Sender: TObject);
    procedure cmbBancosExit(Sender: TObject);
    procedure ZerarSaldodoCliente1Click(Sender: TObject);
    procedure ckbSaldoParcelaClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure tratabotoes;
    procedure Registro;
    procedure Buscar;
    procedure BuscarNovo(aGrupo, aCota : integer);
    procedure Buscar2(aVenda : integer);
    procedure MOSTRAR;
    procedure Verificar_cliente;
    procedure Verificar_grupo;
    procedure Verificar_cota;
    procedure Abrir_Bancos;
    procedure Status_Grupo(M_CDGRUP : Integer);
    procedure Status_Venda(M_NRVEND : Integer);
    Procedure Selecionar_Grupo(aGrupo : String);
    procedure PosicaoTabela();
    Function TransferenciaCliente(iVenda, iGrupo, iCota, iClienteAtual, iClienteNovo : integer) : boolean;
    Procedure Saldo;
    Procedure Mostrar_Saldo;
    Procedure CalcularValorParcela();
    Procedure CheckBoxSaldo();
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;
  iBanco : Integer;
  fValorSaldo1 : Double;

const
    ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
    ScreenHeight: LongInt = 600;

implementation

uses uFrmLocClientes, uFuncoes, udmAdmDados, uDmPesquisas, uFrmLocGrupos,
   udmRelatorios, uFrmAdmMain, uFrmMovAlienacao, uFrmParametros,
  uFrmCadGrupos, uFrmCadClientes, uFrmBaixaEstornoPC, RpRave,
  uFrmTransferencia, uFrmHistoricoSaldo, uFrmAlterarDataPagamento,
  uFrmEditaSaldo;

{$R *.dfm}

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
      {scaled := true;
      if (screen.width <> ScreenWidth) then
      begin
            height := longint(height) * longint(screen.height) DIV ScreenHeight;
            width := longint(width) * longint(screen.width) DIV ScreenWidth;
            scaleBy(screen.width, ScreenWidth);
            //
      end;}
      //
      lblNMCLIE.text := '';
      //
   If not (uFrmAdmMain.admin) Then
   begin
     bntImportar.Visible := False;
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
           dmAdmDados.Verificar_Direito_Acesso(
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Vendas'));
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
     //
     btnImprimiExt.Visible := BtEditar.Visible;
     btnContrato.Visible   := BtEditar.Visible;
     btnSPC.Visible        := BtEditar.Visible;
     btnProtesto.Visible   := BtEditar.Visible;
     btnQuitar.Visible     := BtEditar.Visible;
     btnInativar.Visible   := BtEditar.Visible;
     btnInativarPago.Visible := BtEditar.Visible;
     btnReativar.Visible   := BtEditar.Visible;
     //
     BtExcluir.Visible   := (apagar = 'S');
     //
   End;
   //
   If (uFrmAdmMain.admin) Then
    // bntImportar.Visible := True;
      //RvProject1.ProjectFile := ExtractFilePath( Application.ExeName )+'\Relatorios\etFaturaClientes.rav';
end;

procedure TfrmVendas.TabSheet3Show(Sender: TObject);
begin
     if (pnlBotoes.Visible) Then
        pnlBotoes.Visible := False;
     //
     btnRegistro.Enabled := False;
     edtConsultar.Clear;
     edtCota.Clear;
     edtNRVEND.Clear;
     edtNomeCliente.Clear;
     edtNRCPF.Clear;    
     cdsConsultar.Close;
     //
     edtConsultar.SetFocus;
     //
     pnlStatus.Caption := '';
end;

procedure TfrmVendas.TabSheet1Show(Sender: TObject);
begin
     if not (pnlBotoes.Visible) Then
        pnlBotoes.Visible := True;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     lbl_situacao.Caption := '';
     //
     Abrir_Bancos;
     //
     REGISTRO;
     Selecionar_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString);
     //
     mnuGruposItem.Enabled  := frmMain.mnuGruposItem.Enabled;
     mnuClienteItem.Enabled := frmMain.mnuClienteItem.Enabled;
     mnuCaixaItem.Enabled   := frmMain.mnuBaixaItem.Enabled;
     //
     If (dmAdmDados.cdsVendaContas.IsEmpty) Then
          BtAdicionarClick(Sender)
     Else
     begin
         uFuncoes.RefreshCDS(dmPesquisas.cdsListaCotas);
         dmPesquisas.cdsListaCotas.Last;
         //
         Mostrar_Saldo;
     End;
     //
     uFuncoes.RefreshCDS(dmAdmDados.cdsDias);
end;

procedure TfrmVendas.edtConsultarKeyPress(Sender: TObject; var Key: Char);
begin
     if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
     //
     If (Key = #13) and uFuncoes.Empty(edtConsultar.Text)
          and not uFuncoes.Empty(edtCota.Text) Then
       begin
           key := #0;
           //
           btnConsultar.SetFocus;
           //Perform(WM_NEXTDLGCTL, 0, 0);
       End;
end;


procedure TfrmVendas.BtAdicionarClick(Sender: TObject);
Var
    aVenda : integer;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     Abrir_Bancos;
     //
     aVenda := dmAdmDados.cdsConfigCFG_VENDA.AsInteger + 1;
     //
     if not (dmAdmDados.GetNumVenda(aVenda)) Then
     begin
         With dmAdmDados.cdsVendaContas do
         begin
              Append;
              FieldByName('COT_NRVENDA').AsInteger := dmAdmDados.cdsConfigCFG_VENDA.AsInteger + 1;
              FieldByName('COT_POSICAO').AsString  := 'A';
              FieldByName('COT_PLANO').AsInteger   := 0;
              FieldByName('COT_VALACERTO').AsFloat := 0;
              FieldByName('COT_VALCRE').AsFloat    := 0;
              FieldByName('COT_VALCOTA').AsFloat   := 0;
              FieldByName('COT_FUNDORES').AsFloat  := 0;
              FieldByName('COT_TAXA_ADESAO').AsFloat := 0;
              FieldByName('COT_TAXA_ADM').AsFloat  := 0;
              FieldByName('COT_VALORLANCE').AsFloat := 0;
              FieldByName('COT_VALOR_TAXACAD').AsFloat := 0;
              FieldByName('COT_VALORENTRADA').AsFloat  := 0;
              FieldByName('COT_TPLANCE').AsString      := 'P';
              FieldByName('COT_FLPROMOCAO').AsString   := 'N';
              //edtSaldo.ReadOnly := false;
         End;
        //
        MOSTRAR;
        //
        ckbSaldoParcela.Checked := false;
        //
        dmAdmDados.ListaModelo(cbmModelos);
        //
        tratabotoes;
        //edtSaldo.Value := 0;
        lbl_situacao.Caption := 'OK!';
        cmbGrupos.SetFocus;
     End
     Else
     begin
           dmAdmDados.AjustaNumVenda();
           //
           raise Exception.Create('Numéro de venda já cadastrado!!! Tente novamente.');
     End;
end;

procedure TfrmVendas.BtEditarClick(Sender: TObject);
begin
  if  not (dmAdmDados.cdsVendaContas.IsEmpty)
    and (dmAdmDados.cdsVendaContas.RecordCount > 0) then
   Begin
       dmAdmDados.cdsVendaContas.Edit;
       tratabotoes;
       MOSTRAR;
       //
       iBanco := dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger;
       fValorSaldo1 := dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat;
       //
       dbeContrato.SetFocus;
   End;
end;

procedure TfrmVendas.BtGravarClick(Sender: TObject);
Var
    M_NRPARC, M_QTPARC, W_CDBANC : Integer;
    W_DATA, W_DTPMPC : TDate;
    M_VLPARC, M_TOPAGA, fValorSaldo, fValorPrimParcela : Double;
    X : STRING;
    aDescricao, XY : string;
    aFluxoSaldo, aFluxoAnterouSaldo, M_FLBAIXA_PRIM : Boolean;
    fValorCreditoSaldo : Double;
begin
     If uFuncoes.Empty(cmbGrupos.Text) Then
       Begin
           Application.MessageBox('Selecione o grupo.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbGrupos.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCOTA.Text) Then
       Begin
           Application.MessageBox('Digite o número da cota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCOTA.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbePLANO.Text) or (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger = 0) Then
       Begin
           Application.MessageBox('Digite o plano.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbePLANO.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCliente.Text) Then
       Begin
           Application.MessageBox('Digite o código do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCliente.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeContrato.Text)  Then
       Begin
           Application.MessageBox('Digite número do contrato.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeContrato.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeDtContrato.Text) or (uFuncoes.Empty(ufuncoes.RemoveChar(dbeDtContrato.Text))) Then
       Begin
           Application.MessageBox('Digite a data do contrato.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDtContrato.SetFocus;
           Exit;
       End;
     //
     If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
     begin
       If uFuncoes.Empty(cmbDia.Text) Then
        begin
             Application.MessageBox('Selecione o dia de vencimento.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbDia.SetFocus;
             Exit;
        End;
     End;
     //
     If uFuncoes.Empty(dbeCredito.Text) Then
       Begin
           Application.MessageBox('Digite o valor do crédito.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCredito.SetFocus;
           Exit;
       End;
     //
      {      If (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat > 0)
                  and (dbeDTVenc1.Text = '  /  /    ' ) Then
             Begin
                 Application.MessageBox('Se valor da 1ª Parcela é determinado,'+#13+
                                  'informe data da 1ª Prestação.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeDTVenc1.SetFocus;
                 Exit;
             End;  }
     //
    { If (dbeDTVenc1.Text <> '  /  /    ' )
      and (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat = 0) Then
       Begin
           Application.MessageBox('Se data da 1ª Prestação é determinado,'+#13+
                                  'informe o valor da 1ª Parcela.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbePrimeiraPC.SetFocus;
           Exit;
       End;   }
     //
     If uFuncoes.Empty(cmbBancos.Text) Then
       Begin
           Application.MessageBox('Selecione o banco.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbBancos.SetFocus;
           Exit;
       End;
     //
     If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
         begin
              if (dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat = 0) Then
                begin
                     dbeCredito.SetFocus;
                     raise Exception.Create('Valor do crédito inválido.');
                End;
         End;
     //
     Verificar_grupo;
     Verificar_cota;
     Verificar_cliente;
     //
     With dmAdmDados.cdsGrupos do
      begin
           Active := False;
           Params[0].AsInteger := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
           active := True;
      end;
     //
     dmAdmDados.Nova_Venda(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                       -1);
     //
     //dmPesquisas.cdsCotasGrupo.Close;
     if (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat > 0) Then
     begin
         M_VLPARC := dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat;
         W_DTPMPC := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime;
     End
     Else
     begin
         M_VLPARC := dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat;
         // Nova alteração 18/02/2010
         XY := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsString;
         W_DTPMPC := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime;
         //dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime;
         //
     End;
     //
     If (dmAdmDados.cdsVendaContasCOT_FLPROMOCAO.AsString = 'S' ) Then
      begin
         if uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsString) Then
         begin
               W_DATA   := StrtoDate(dmAdmDados.cdsConfigCFG_DIAVENC.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime));
               XY := dmAdmDados.cdsConfigCFG_DIAVENC.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime);
               W_DTPMPC := IncMonth(W_DATA,1);
         End
         Else
         begin
              If (Copy(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsString,1,2) = dmAdmDados.cdsConfigCFG_DIAVENC.AsString)  Then
                begin
                     W_DATA   := StrtoDate(dmAdmDados.cdsConfigCFG_DIAVENC.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime));
                     W_DTPMPC := IncMonth(W_DATA,1);
                End
              Else
                   W_DATA   := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime;
         End;
           //
           //if (W_DATA < dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime) then
           //W_DTPMPC := IncMonth(W_DATA,1);
           //
      End;
     //
     XY :=  DatetoStr(W_DTPMPC);
     M_TOPAGA := 0;
     W_CDBANC := dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger;
     aFluxoSaldo := False;
     fValorCreditoSaldo := 0;
     //
     if (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
        If (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat > 0) and (ckbSaldoParcela.Checked) Then
        begin
             fValorCreditoSaldo := uFuncoes.Arredondar(
                                   (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat/
                                   dmAdmDados.cdsVendaContasCOT_PLANO.AsFloat),2);
        End;
     //
     dmAdmDados.Start;
      try
         If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
         begin
                 //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                 dmAdmDados.Parametros;
                 //
                 dmAdmDados.cdsConfig.Edit;
                 dmAdmDados.cdsConfigCFG_VENDA.AsInteger :=
                   dmAdmDados.cdsConfigCFG_VENDA.AsInteger + 1;
                 dmAdmDados.cdsConfig.ApplyUpdates(0);
                 dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger :=
                   dmAdmDados.cdsConfigCFG_VENDA.AsInteger;
                 // Criar parcelas 1ª PARCELA
                 dmAdmDados.Incluir_Parcela(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                         dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                         dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                         1,
                                         W_CDBANC,
                                         W_DTPMPC,
                                         M_VLPARC, fValorCreditoSaldo);
                 {dmAdmDados.Adicionar_Parcela(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                       dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                       1,
                                       dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime,
                                       dmAdmDados.cdsVendaContasCOT_TAXA_ADESAO.AsFloat,
                                       0,0,0,0,0,
                                       ' ',' ',' ',' ',' ',
                                       0,
                                       dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger,
                                       ' ',' ',' ',' ');}
                                       // dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat
                 // Atualiza quantidade de participantes do grupo
                 dmAdmDados.Atualizar_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
                 //
                 if (ckbSaldoParcela.Checked) Then
                     dmAdmDados.cdsVendaContasCOT_REDUZIR_VALOR_PC_SALDO.AsString := 'S'
                 Else
                     dmAdmDados.cdsVendaContasCOT_REDUZIR_VALOR_PC_SALDO.AsString := 'N';
                 //
                 fValorSaldo := 0;
                 if not uFuncoes.Empty(edtSaldo.Text)
                     and (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat > 0) Then
                     begin
                          aFluxoSaldo := true;
                          fValorSaldo := dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat;
                     End;
                 //
                 aDescricao := 'Incluiu G : '+dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString + ' | C '+ dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString + ' | V '+dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
         End
         Else
                 aDescricao := 'Alterou G : '+dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString + ' | C '+ dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString + ' | V '+dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
         // Se grupo já iniciou
         If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
         begin
            if (dmAdmDados.cdsGruposGRU_INICIOU.AsString = 'S') then
            begin
               // Nova alteração 18/02/2010
               W_DATA   := StrtoDate(dmAdmDados.cdsVendaContasCOT_VCTDIA.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime));
               XY := dmAdmDados.cdsVendaContasCOT_VCTDIA.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime);
               //  StrtoDate(dmAdmDados.cdsConfigCFG_DIAVENC.AsString+'/'+uFuncoes.FormatarMesReferencia(dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime));
               M_NRPARC := 2;
               M_QTPARC := dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger;
               //
               If (dmAdmDados.cdsVendaContasCOT_FLPROMOCAO.AsString = 'S' ) Then
               Begin
                     W_DTPMPC := IncMonth(W_DTPMPC,1);
               End
               Else
               begin
                 if (W_DATA < dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime) then
                     W_DTPMPC := IncMonth(W_DATA,1)
                 Else
                    if (W_DATA > dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime) Then
                       W_DTPMPC := IncMonth(W_DATA,1);
                 //   novo 12/02/2009
                If (W_DTPMPC = dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime) Then
                    W_DTPMPC := IncMonth(W_DTPMPC,1);
                //
                If not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsString) Then
                   W_DTPMPC := IncMonth(dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime,1);
               End;
               //
               XY := DatetoStr(W_DTPMPC);
               //
               while M_NRPARC <= M_QTPARC do
               begin
                    {if (M_NRPARC > 1) then
                       W_DTPMPC := IncMonth(W_DTPMPC,1);}
                    //
                    dmAdmDados.Incluir_Parcela(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                       dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                       M_NRPARC,
                                       W_CDBANC,
                                       W_DTPMPC,
                                       dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat, fValorCreditoSaldo);
                    //
                    M_NRPARC := M_NRPARC + 1;
                    W_DTPMPC := IncMonth(W_DTPMPC,1);
               end;
            End;
            //
            M_TOPAGA := uFuncoes.Arredondar(dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat+
                        uFuncoes.Gerapercentual(dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat, dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat)+
                        uFuncoes.Gerapercentual(dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat, dmAdmDados.cdsVendaContasCOT_FUNDORES.AsFloat),2);
            // Baixar 1ª parcela
            M_FLBAIXA_PRIM := True;
            If Application.MessageBox('Deseja baixa 1ª parcela do cliente?',
                     'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
              begin
                   If (dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime - Date() > 60) Then
                   begin
                        If (Application.MessageBox('A data do 1º Vencimento superior a 60 dias.'+#13
                                    +'Deseja baixa mesmo assim?' ,
                             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = IDNO) then
                           M_FLBAIXA_PRIM := false;
                   End;
                   //
                   If (M_FLBAIXA_PRIM) Then
                    begin
                      //
                      if (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat <> 0) Then
                          fValorPrimParcela := dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat
                      Else
                      begin
                          if not (ckbSaldoParcela.Checked) Then
                           begin
                              fValorPrimParcela := M_TOPAGA;
                              fValorCreditoSaldo := 0;
                           End
                          Else
                             fValorPrimParcela := M_TOPAGA - fValorCreditoSaldo;
                      End;
                      //
                      If not (dmAdmDados.BaixaPrimeiraParcela(
                             dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                             dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                             dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                             1, dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime, fValorPrimParcela, fValorCreditoSaldo)) Then
                               Application.MessageBox('Erro ao tentar baixar 1ª parcela.',
                                 'ATENÇÃO', MB_OK+MB_ICONSTOP);
                    End;
              End;
            {If (dmAdmDados.cdsVendaContasCOT_FLPROMOCAO.AsString = 'N') Then
             Begin
                  If not (dmAdmDados.BaixaPrimeiraParcela(
                            dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                            dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                            dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                            1, dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime, M_TOPAGA)) Then
                     raise Exception.Create('Erro ao tentar baixar 1ª parcela.');
             End;}
         end;
         // modelo
         if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit])
                and not Empty(cbmModelos.Text) Then
             begin
                  dmAdmDados.cdsVendaContas.FieldByName('COT_CDMODELO').AsInteger :=
                           StrtoInt(Copy(cbmModelos.Text,1,4));
                  dmAdmDados.cdsVendaContas.FieldByName('COT_CODBEM').AsInteger :=
                    dmAdmDados.cdsVendaContas.FieldByName('COT_CDMODELO').AsInteger;
             End;
         // 09/04/2011 baixa do saldo do cliente
         If (dmAdmDados.cdsVendaContas.State in [dsEdit]) Then
         begin
              aFluxoAnterouSaldo := false;
              if (fValorSaldo1 <> dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat ) Then
                  aFluxoAnterouSaldo := true;
              //
         End;
         // Grava venda
         dmAdmDados.cdsVendaContas.Post;
         dmAdmDados.cdsVendaContas.ApplyUpdates(0);
         //
         dmAdmDados.Atualizar_Banco_Cota(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                         dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                         dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                         dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger,iBanco);
         //     Commit
         dmAdmDados.Comit(udmAdmDados.Transc);
         //
         MOSTRAR;
         // alteração 09/04/2011
         if (aFluxoSaldo) Then
         begin
              if (ckbSaldoParcela.Checked = False) Then
              begin
                   dmPesquisas.AtualizarSaldoCliente(dmPesquisas.cdsConsultaCota, fValorSaldo);
                   MOSTRAR;
              End;
         End;
         //
         dmAdmDados.SetTarefa_Usuario(aDescricao);
         dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
         //
         If (aFluxoAnterouSaldo) Then
          begin
               aDescricao := 'Alterou Saldo Venda: '+dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString + ' de '+FormatFloat('###,##0.#0',fValorSaldo1) + ' para '+ FormatFloat('###,##0.#0', dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat);
               dmAdmDados.SetTarefa_Usuario(aDescricao);
               dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
          End;
         //
         Application.MessageBox(PChar(MSG_OK),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         //
         fValorSaldo1 := 0;
         dmAdmDados.CotasGrupo(dmAdmDados.cdsGruposGRU_CODIGO.AsInteger);
         Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               // Rollback
               dmAdmDados.Rollback;
               BtCancelarClick(Sender);
            End;
     End;
   //
   tratabotoes;
end;

procedure TfrmVendas.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     dmAdmDados.cdsVendaContas.Cancel;
     MOSTRAR;
     Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
     //
     //dmAdmDados.ListaModelo(cbmModelos);
     //
     If (dmAdmDados.cdsVendaContas.IsEmpty) Then
       Close;
end;

procedure TfrmVendas.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled    := not BtEditar.Enabled;
   BtExcluir.Enabled   := not BtExcluir.Enabled;
   btnImprimiExt.Enabled := not btnImprimiExt.Enabled;
   btnContrato.Enabled := not btnContrato.Enabled;
   //
   bntImportar.Enabled := not bntImportar.Enabled;
   //
   spLocGrupo.Enabled    := not spLocGrupo.Enabled;
   spLocCliente.Enabled  := dmAdmDados.cdsVendaContas.State in [dsInsert];
   //not spLocCliente.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
   //
   btnTransferencia.Enabled := not btnTransferencia.Enabled;
   btnEtiqueta.Enabled      := not btnEtiqueta.Enabled;
   //
   TabSheet3.TabVisible := not TabSheet3.TabVisible;
end;

procedure TfrmVendas.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmVendas.spLocClienteClick(Sender: TObject);
begin
    dbeCliente.SetFocus;
    frmLocCliente := TfrmLocCliente.create(application);
    try
        frmLocCliente.showmodal;
    finally
        If not (frmLocCliente.cdsConsultar.IsEmpty) Then
         begin
            dbeCliente.Text   := frmLocCliente.cdsConsultarCLI_CODIGO.AsString;
            lblNMCLIE.text := frmLocCliente.cdsConsultarCLI_NOME.AsString;
         End;
        //
        frmLocCliente.Release;
        frmLocCliente := nil;
    end;
    //
    if not uFuncoes.Empty(dbeCliente.Text) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVendas.Buscar;
Var
     N_NRVEND : String;
begin
     if not uFuncoes.Empty(edtNRVEND.Text) Then
        N_NRVEND := edtNRVEND.Text;
     //uFuncoes.FilterCDS(dmAdmDados.cdsVendaContas, fsString, cdsConsultarCOT_NRVENDA.AsString);
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := cdsConsultarCOT_NRVENDA.AsInteger;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             MOSTRAR;
             Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
             Status_Venda(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
             //
             BuscarNovo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger, dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
             //
             Saldo;
             //
             {edtSaldo.Value := dmAdmDados.GetSaldoCliente(
                          dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);}
           end;
     end;
end;

procedure TfrmVendas.Registro;
begin
     //uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     dmAdmDados.Parametros;
     With dmAdmDados.cdsVendaContas do
         begin
              close;
              If (dmAdmDados.cdsConfigCFG_VENDA.AsInteger > 0) Then
                  Params[0].AsInteger := uFuncoes.mvcodigomax('COT_NRVENDA','cotas')
              ELse
                  Params[0].AsInteger :=  -1;
              //
              Open;
              //
              MOSTRAR;
              Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
              Status_Venda(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
              //
              CheckBoxSaldo();
         End;
         //
         If not (dmAdmDados.cdsVendaContas.IsEmpty) Then
         begin
               MOSTRAR;
               Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
               //
               BuscarNovo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger, dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
               {If not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_CODBEM.AsString) Then
                  if (dmAdmDados.cdsVendaContasCOT_CODBEM.AsInteger > 0) Then
                     dmAdmDados.CampoModelo(cbmModelos, dmAdmDados.cdsVendaContasCOT_CODBEM.AsInteger);}
         End;

     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmVendas.btnConsultarClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmVendas.btnImprimiExtClick(Sender: TObject);
Var
   M_FLSTAT : String;
begin
      //
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
         M_FLSTAT := 'Ativo-Ñ-Contemplado';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'Q') Then
         M_FLSTAT := 'Outros-Contemp.';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') Then
         M_FLSTAT := 'Inativo-Ñ-Contemp.';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'P') Then
         M_FLSTAT := 'Outros-Ñ-Contemp.';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A')
        and (StrtoInt(edtParcAtras.Text) > 0) Then
         M_FLSTAT := 'Ativo-Contemp.';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'V') Then
         M_FLSTAT := 'Vendido';
      If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'R') Then
         M_FLSTAT := 'Reativado';

      //dmRelatorios := TdmRelatorios.create ( application );
      try        
         if not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
          begin
            with ppRepExtratoCliente do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 lblNomeCliente.Caption := lblNMCLIE.text;
                 lblStatus.Caption      := M_FLSTAT;
                 //dmAdmDados.cdsVendaContasSTATUS_COTA.AsString;
                 lblDescGrupo.Caption   := cmbGrupos.Text;
                 //
                 PrintReport;
            end;
          End;
      finally
           //dmRelatorios.Free;
      end;
end;

procedure TfrmVendas.btnRegistroClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       if not ufuncoes.Empty(edtNumPlaca.Text) Then
           edtNumPlaca.Clear;
       //
       PosicaoTabela;
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmVendas.sbPrimeiroClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.First;
end;

procedure TfrmVendas.sbAnteriorClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
         dsConsultar.DataSet.Prior;
end;

procedure TfrmVendas.sbProximoClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.Next;
end;

procedure TfrmVendas.sbUltimoClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.Last;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmAdmDados.cdsVendaContas.Close;
     dmPesquisas.cdsListaCotas.Close; 
     //
     dmAdmDados.cdsConfig.Close;
     dmPesquisas.cdsListaBancos.Close;
     dmPesquisas.cdsListaModelos.Close;
     dmPesquisas.cdsListaGrupos.Close;
     //
     Action := caFree; 
end;

procedure TfrmVendas.dbeCDGRUPExit(Sender: TObject);
begin
     Verificar_grupo;
end;

procedure TfrmVendas.dbeCDGRUPKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmVendas.dbeCOTAKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13, #27] ) then
        key:=#0;
    //
      If (key = #27) and (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
        begin
             Key := #0;
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmVendas.dbePLANOKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmVendas.dbeClienteKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    if (key = #13) and uFuncoes.Empty(dbeCliente.Text) Then
      begin
           key := #0;
           //
           spLocClienteClick(Sender);
      End;
end;

procedure TfrmVendas.BtExcluirClick(Sender: TObject);
Var
   aDescricao, iGrupo, iCota, iVenda : string;
begin
  if not (dmAdmDados.cdsVendaContas.IsEmpty) and
     (dmAdmDados.cdsVendaContas.RecordCount > 0) then
   begin
       if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'Q') Then
           Raise Exception.Create('Cliente quitado não pode ser excluido.');
       If Application.MessageBox('Deseja excluir esta venda?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            if (dmAdmDados.Excluir_Venda(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger)) Then
             begin
                 iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
                 iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
                 iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
                 //
                 dmAdmDados.cdsVendaContas.Delete;
                 dmAdmDados.cdsVendaContas.ApplyUpdates(0);
                 //
                 aDescricao := 'Excluiu G : '+ iGrupo+ ' | C '+ iCota + ' | V '+ iVenda;
                 dmAdmDados.SetTarefa_Usuario(aDescricao);
                 dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                 //
             End;
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmVendas.dbeCreditoExit(Sender: TObject);
begin
       if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      begin
        if (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger > 0) Then
        Begin
           if uFuncoes.Empty(dbeCredito.Text) or (dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat = 0) Then
            begin
                 dbeCredito.SetFocus;
                 raise Exception.Create('Valor do crédito inválido.')
            End;
        End;
            //
            if not uFuncoes.Empty(dbeCredito.Text)
              and (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger > 0) Then
               begin
                   CalcularValorParcela();
                   //
                   if (dmAdmDados.cdsConfigCFG_PERCENTUAL_ADESAO.AsFloat > 0) Then
                       dmAdmDados.cdsvendacontasCOT_TAXA_ADESAO.AsFloat :=
                       dmAdmDados.Calcular_Taxa_Adesao(dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat,
                                                       dmAdmDados.cdsConfigCFG_PERCENTUAL_ADESAO.AsFloat);
               End;
      End;
end;

procedure TfrmVendas.dbeCreditoChange(Sender: TObject);
begin
      if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
         if uFuncoes.Empty(dbeCredito.Text) Then
             dmAdmDados.cdsvendacontasCOT_TAXA_ADESAO.AsFloat := 0;
end;

procedure TfrmVendas.dbeCreditoEnter(Sender: TObject);
begin
        if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      begin
           if uFuncoes.Empty(dbePLANO.Text) or (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger = 0) Then
            begin
                 dbePLANO.SetFocus;
                 raise Exception.Create('Plano inválido ou '+#13+'Superior ao Nº de meses do Grupo.');
            End;
            //
      End;
end;

procedure TfrmVendas.MOSTRAR;
begin
     //
     lblNMCLIE.Text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     //
     if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
         cbxContemplacao.Checked := True
     Else
         cbxContemplacao.Checked := False;
     //
     dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);
     //
     edtParcPagas.Text := InttoStr(dmPesquisas.Parcelas_Pagas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcAtras.Text := InttoStr(dmPesquisas.Parcelas_Atrasadas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     edtParcVinc.Text  := InttoStr(dmPesquisas.Parcelas_Vincendas(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                          dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger));
     //
     if  not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_CODBEM.AsString) Then
      begin
         If (dmAdmDados.cdsVendaContasCOT_CDMODELO.AsInteger > 0) Then
             dmAdmDados.CampoModelo(cbmModelos, dmAdmDados.cdsVendaContasCOT_CODBEM.AsInteger);
      End
      Else
      begin
           If (dmAdmDados.cdsVendaContasCOT_CDMODELO.AsInteger > 0) Then
               dmAdmDados.CampoModelo(cbmModelos, dmAdmDados.cdsVendaContasCOT_CDMODELO.AsInteger)
           Else
               cbmModelos.ItemIndex := -1;
      End;
     //
     CheckBoxSaldo();
     //
     Abrir_Bancos;
end;

procedure TfrmVendas.dbeClienteChange(Sender: TObject);
begin
      if uFuncoes.Empty(dbeCliente.Text) Then
         lblNMCLIE.Text := '';
end;

procedure TfrmVendas.dbeClienteExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeCliente.Text) Then
        Verificar_cliente;
end;

procedure TfrmVendas.dbeCOTAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeCOTA.Text) Then
        Verificar_cota;
end;

procedure TfrmVendas.Verificar_cliente;
begin
    If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
       If not uFuncoes.Empty(dbeCliente.Text)
          and not dmAdmDados.GetCodigoCliente(StrtoInt(dbeCliente.Text)) Then
         begin
              lblNMCLIE.Text := '';
              dbeCliente.SetFocus;
              dbeCliente.Clear;
              raise Exception.Create('Código de cliente não cadastrado.')
         End
         Else
             lblNMCLIE.Text := dmAdmDados.GetNomeCliente(StrtoInt(dbeCliente.Text));
end;

procedure TfrmVendas.Verificar_cota;
begin
    If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
       If not uFuncoes.Empty(dbeCOTA.Text) AND not uFuncoes.Empty(dbeCDGRUP.Text) Then
         if dmAdmDados.Verificar_Cota_Grupo(StrtoInt(dbeCDGRUP.Text),StrtoInt(dbeCOTA.Text)) Then
         begin
              dbeCOTA.SetFocus;
              dbeCOTA.Clear;
              raise Exception.Create('Cota já cadastrada.');
         End;
end;
 
procedure TfrmVendas.Verificar_grupo;
begin
   { if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCDGRUP.Text) Then
        if dmAdmDados.Verificar_Grupo(StrtoInt(dbeCDGRUP.Text)) Then
          begin
               cmbGrupos.SetFocus;
               raise Exception.Create('Grupo não cadastrado.');
          End;}
end;

procedure TfrmVendas.dbeCOTAEnter(Sender: TObject);
begin
    if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
       if uFuncoes.Empty( cmbGrupos.Text) Then
        begin
            cmbGrupos.SetFocus;
            Exit;
        End;
end;

procedure TfrmVendas.spLocGrupoClick(Sender: TObject);
begin
    dbeCDGRUP.SetFocus;
    frmLocGrupos := TfrmLocGrupos.create(application);
    try
        frmLocGrupos.showmodal;
    finally
        If not (frmLocGrupos.cdsConsultar.IsEmpty) Then
         begin
            dbeCDGRUP.Text   := frmLocGrupos.cdsConsultarGRU_CODIGO.AsString;

         End;
        //
        frmLocGrupos.Release;
        frmLocGrupos := nil;
    end;
    //
    if not uFuncoes.Empty(dbeCDGRUP.Text) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVendas.Status_Grupo(M_CDGRUP: Integer);
begin
      //
      With dmPesquisas.cdsConsulta  do
      begin
            Active := False;
            CommandText := 'select * from grupos where (GRU_CODIGO = :pcodigo)';
            Params.ParamByName('pcodigo').AsInteger := M_CDGRUP;
            Active := True;
            //
            if not(IsEmpty) then
              begin
                   edtMeses.Text := FieldByName('GRU_NRMESES').AsString;
                   edtCotas.Text := FieldByName('GRU_PARTICIP').AsString;
                   //
                   if (FieldByName('GRU_INICIOU').AsString = 'S') then
                       cbxIniciou.Checked := True
                   Else
                       cbxIniciou.Checked := False;
                   //
                   if (FieldByName('GRU_CORRIGIDO').AsString = 'S') then
                       cbxCorrigido.Checked := True
                   Else
                       cbxCorrigido.Checked := False;
              end
              Else
              begin
                   edtMeses.Clear;
                   edtCotas.Clear;
              end;

      end;

end;

procedure TfrmVendas.dbePLANOExit(Sender: TObject);
begin
     if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      begin
            //
            If (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger > 100) Then
              begin
                 Application.MessageBox('Plano inválido!!!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbePLANO.SetFocus;
                 Exit;
              End;
            //
            if not uFuncoes.Empty(dbeCredito.Text)
              and not uFuncoes.Empty(dbePLANO.Text) Then
               if (dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger > 0)
                and (dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat > 0 ) Then
                  dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat :=
                  dmAdmDados.Valor_Parcela(dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat,
                                           dmAdmDados.cdsVendaContasCOT_PLANO.AsFloat,
                                           dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat,
                                           0, 'N');
      End;
end;

procedure TfrmVendas.dbePrimeiraPCExit(Sender: TObject);
begin
     if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      begin
            If (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat > 0)
                  and (dbeDTVenc1.Text = '  /  /    ' ) Then
             Begin
                 Application.MessageBox('Se valor da 1ª Parcela é determinado,'+#13+
                                  'informe data da 1ª Prestação.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeDTVenc1.SetFocus;
                 Exit;
             End;
            //
            {If (dbeDTVenc1.Text <> '  /  /    ' )
                  and (dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat = 0) Then
             Begin
                 Application.MessageBox('Se data da 1ª Prestação é determinado,'+#13+
                                  'informe o valor da 1ª Parcela.','ATENÇÃO',
                     MB_OK+ MB_ICONINFORMATION+MB_APPLMODAL);
                 dbePrimeiraPC.SetFocus;
                 Exit;
             End;  }
            //
            if not uFuncoes.Empty(dbeCredito.Text)
              and not uFuncoes.Empty(dbePLANO.Text) Then
               begin
                  CalcularValorParcela();

                   {dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat :=
                   dmAdmDados.Valor_Parcela(dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat,
                                         dmAdmDados.cdsVendaContasCOT_PLANO.AsFloat,
                                        dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat);  }
               End;
      End;
end;

procedure TfrmVendas.dsConsultarDataChange(Sender: TObject; Field: TField);
begin
     btnRegistro.Enabled := dsConsultar.DataSet.RecordCount > 0;
     //
    sbPrimeiro.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Bof);
    sbAnterior.Enabled := sbPrimeiro.Enabled;
    sbUltimo.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Eof);
    sbProximo.Enabled := sbUltimo.Enabled;
end;

procedure TfrmVendas.grdConsultarDblClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar;
       PosicaoTabela; 
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmVendas.edtCotaChange(Sender: TObject);
Var
   M_FLSITU : String;
begin
   if (uFuncoes.Empty(edtConsultar.Text)) Then
   begin
       edtConsultar.SetFocus;
       Exit;
   End;
   //
   If uFuncoes.Empty(edtCota.Text) Then
   begin
        if not ufuncoes.Empty(edtConsultar.Text) then
            edtConsultarChange(Sender)
        Else
           cdsConsultar.Close;
   end
   Else
   begin
        //
        if (rgConsultar.ItemIndex = 0) Then
            M_FLSITU := 'A';
        if (rgConsultar.ItemIndex = 1) Then
            M_FLSITU := 'P';
        if (rgConsultar.ItemIndex = 2) Then
            M_FLSITU := 'I';
        if (rgConsultar.ItemIndex = 3) Then
            M_FLSITU := 'V';
        if (rgConsultar.ItemIndex = 4) Then
            M_FLSITU := 'Q';
        if (rgConsultar.ItemIndex = 5) Then
            M_FLSITU := 'R';
        if (rgConsultar.ItemIndex = 6) Then
            M_FLSITU := 'M';
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            //CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA)';
            CommandText := CommandText + ' AND (COT_POSICAO = :pPOSICAO)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
            datasetConsultar.Params.ParamByName('pNRCOTA').AsString := edtCota.Text;
            datasetConsultar.Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
        //
        If (cdsConsultar.IsEmpty) Then
            pnlStatus.Caption := 'Cota não cadastrada.'
        Else
            pnlStatus.Caption := '';
        //    'Encontrado ('+InttoStr(cdsConsultar.RecordCount) +') registro(s)';}
   end;
end;

procedure TfrmVendas.edtConsultarChange(Sender: TObject);
begin
   If uFuncoes.Empty(edtConsultar.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
       btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmVendas.Abrir_Bancos;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //dmAdmDados.cdsConfig;
     uFuncoes.RefreshCDS(dmPesquisas.cdsListaBancos);
     //uFuncoes.RefreshCDS(dmPesquisas.cdsListaGrupos);
     uFuncoes.RefreshCDS(dmAdmDados.cdsListaGrupos);
     uFuncoes.RefreshCDS(dmPesquisas.cdsListaModelos);
     {With dmPesquisas.cdsListaBancos do
      begin
           Active := False;
           Active := True;
      end;}

     {With dmPesquisas.cdsListaModelos do
      begin
           Active := False;
           Active := True;
      end;}

     {With dmPesquisas.cdsListaGrupos do
      begin
           Active := False;
           Active := True;
      end;}
end;

procedure TfrmVendas.cmbGruposExit(Sender: TObject);
begin
     if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit])
      and not (uFuncoes.Empty(cmbGrupos.Text))  Then
      begin
           If uFuncoes.Empty(cmbGrupos.Text) Then
            begin
                 cmbGrupos.SetFocus;
                 Exit; 
            End;
           uFuncoes.RefreshCDS(dmPesquisas.cdsListaGrupos);
           Status_Grupo(StrtoInt(dmAdmDados.GetGrupo(cmbGrupos.Text,'2')));
      end;
end;

procedure TfrmVendas.dbeDtContratoExit(Sender: TObject);
begin
      if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
        if (dbeDtContrato.Text <> '  /  /    ') Then
         begin
           if uFuncoes.Validar_Data(dbeDtContrato.text) Then
           begin
               dbeDtContrato.Text := DatetoStr(uFuncoes.FormatarData(dbeDtContrato.text));
               //
               If (dbeDtContrato.Date > Date()) Then
                begin
                     Application.MessageBox('Data do contrado não pode ser superior '+#13+
                                  'a data atual!!!','ATENÇÃO',
                                MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime := Date();
                     dbeDtContrato.SetFocus;
                     Exit;
                End;
               // Se grupo iniciou
               {If (cbxIniciou.Checked) Then
               begin
                    If (dbeDtContrato.Date < Date()) Then
                      begin
                           dbeDtContrato.Date := Date();
                           dbeDtContrato.SetFocus;
                           RAISE Exception.Create('Data não pode menor que atual.');
                      End;
               End;}
           End
           Else
           begin
              dbeDtContrato.Clear;
              dbeDtContrato.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
         //
         End
         Else
             dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime := Date();
end;

procedure TfrmVendas.dbeDTVenc1Exit(Sender: TObject);
Var
      Ano, Mes, Dia : word;
      AuxData : TDateTime;
      MesDaData : Integer;
     // X :  String;
begin
      if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
        if (dbeDTVenc1.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(dbeDTVenc1.text) Then
           Begin
                dbeDTVenc1.Text := DatetoStr(uFuncoes.FormatarData(dbeDTVenc1.text));
                //
                If (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
                 begin
                     Auxdata := dbeDTVenc1.Date;
                     //
                     DecodeDate (Auxdata, Ano, Mes, Dia);
                     //
                     Dia := dmAdmDados.cdsVendaContasCOT_VCTDIA.AsInteger;
                     //
                     AuxData := EnCodeDate (Ano, Mes, Dia);
                     //
                    // X := DatetoStr(AuxData);
                     //
                     dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime := AuxData;
                 End;
                //
                //If (dbeDTVenc1.Date <  Date()) Then
                If (dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime <
                    dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime) Then
                  begin
                       dbeDTVenc1.Clear;
                       dbeDTVenc1.SetFocus;
                       RAISE Exception.Create('Data 1ª Parcela não pode menor que atual.');
                  End;
           End
           Else
           begin
              dbeDTVenc1.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmVendas.dbeCreditoKeyPress(Sender: TObject; var Key: Char);
begin
      If (key = #27) and (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
        begin
             Key := #0;
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmVendas.cmbGruposKeyPress(Sender: TObject; var Key: Char);
begin
      If (key = #27) and (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
        begin
             Key := #0;
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmVendas.Parametro1Click(Sender: TObject);
begin
     frmMain.AbreForm(TfrmParametros, frmParametros);
end;

procedure TfrmVendas.mnuGruposItemClick(Sender: TObject);
begin
     frmMain.AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TfrmVendas.mnuClienteItemClick(Sender: TObject);
begin
    frmMain.AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TfrmVendas.mnuCaixaItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsInteger, M_CDUSUA);
     //
     If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'N')
         OR uFuncoes.Empty(dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString) Then
           raise Exception.Create('Usuário não é caixa!!!');
       //
       if NOT (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(M_CDUSUA))) Then
          raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');

     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 2;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TfrmVendas.Banco1Click(Sender: TObject);
begin
     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 1;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TfrmVendas.rgConsultarClick(Sender: TObject);
begin
     if edtConsultar.CanFocus then
        edtConsultar.SetFocus;
end;

procedure TfrmVendas.edtNRVENDChange(Sender: TObject);
begin
   If uFuncoes.Empty(edtNRVEND.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
       edtConsultar.Clear;
       btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (CT.COT_NRVENDA = :pVENDA)';
            //
            datasetConsultar.Params.ParamByName('pVENDA').AsString := edtNRVEND.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmVendas.edtNRVENDKeyPress(Sender: TObject; var Key: Char);
begin
     if not( key in['0'..'9', #8, #13] ) then
       key:=#0;
     //
     If (Key = #13) and not uFuncoes.Empty(edtNRVEND.Text) Then
       begin
           key := #0;
           If (btnRegistro.Enabled) Then
               btnRegistro.SetFocus;
       End;
end;

procedure TfrmVendas.dsVendaContasStateChange(Sender: TObject);
begin
     cbmModelos.Enabled := dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit];
     //
     lblDataReceber.Visible := dmAdmDados.cdsVendaContas.State in [dsEdit, dsBrowse];
     lblReceber.Visible     := dmAdmDados.cdsVendaContas.State in [dsEdit, dsBrowse];
     //
     dbeRecebimento.Visible  := dmAdmDados.cdsVendaContas.State in [dsEdit, dsBrowse];
     dbeValorReceber.Visible := dmAdmDados.cdsVendaContas.State in [dsEdit, dsBrowse];
     //
     btnSPC.Enabled := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A');
     btnProtesto.Enabled := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A');
     rbAdesao.Enabled := dmAdmDados.cdsVendaContas.State in [dsInsert];
     //
     btnInativar.Enabled     := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') and(dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString <> 'S');
     btnInativarPago.Enabled := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) And (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') and(dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString <> 'S');
     btnReativar.Enabled     := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) And (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') and(dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString <> 'S');
     btnQuitar.Enabled       := (dmAdmDados.cdsVendaContas.State in [dsBrowse]) and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A');
     //
     if (dsVendaContas.State in [dsBrowse] ) Then
         edtSaldo.Font.Color := clRed
     Else
         edtSaldo.Font.Color := clBlack; 
end;

procedure TfrmVendas.cbmModelosEnter(Sender: TObject);
begin
     If (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
         dmAdmDados.ListaModelo(cbmModelos);
end;

procedure TfrmVendas.Status_Venda(M_NRVEND: Integer);
Var
    M_FLXSPC : String;
begin
  if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_POSICAO.AsString) Then
  begin
   M_FLXSPC := '';
   //
   with dmAdmDados do
   begin
     if (cdsVendaContasCOT_POSICAO.AsString = 'A') Then
         lbl_situacao.Caption := 'OK!';

     if (cdsVendaContasCOT_FLXSPC.AsString = 'S') Then
        M_FLXSPC := ' - SPC';
     //
     if (cdsVendaContasCOT_POSICAO.AsString = 'A') Then
         lbl_situacao.Caption := 'OK!' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'A') and (StrtoInt(edtParcAtras.Text) > 0) Then
         lbl_situacao.Caption := 'INADIMPLENTE' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'I') Then
         lbl_situacao.Caption := 'INATIVO' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'Q') Then
         lbl_situacao.Caption := 'QUITADO' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'Q')
       AND (cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
         lbl_situacao.Caption := 'QUITADO' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'P') Then
         lbl_situacao.Caption := 'INATIVO (PAGO) ' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'V') Then
         lbl_situacao.Caption := 'VENDIDO' + M_FLXSPC;
     if (cdsVendaContasCOT_POSICAO.AsString = 'R') And (StrtoInt(edtParcAtras.Text) > 0) Then
         lbl_situacao.Caption := 'INADIMPLENTE' + M_FLXSPC;
     if (cdsVendaContasCOT_FLPROTESTO.AsString = 'S') Then
         lbl_situacao.Caption := lbl_situacao.Caption + ' PROTESTO';
    End;
  End;
end;

procedure TfrmVendas.edtConsultarEnter(Sender: TObject);
begin
     edtCota.Clear;
end;

procedure TfrmVendas.bntImportarClick(Sender: TObject);
Var
   opc : boolean;
begin
   if not (dmAdmDados.cdsVendaContas.IsEmpty)
     and (dmPesquisas.cdsConsultaCota.IsEmpty) Then
     If Application.MessageBox('Confirma a importação das parcelas do cliente?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
          opc := dmAdmDados.ImportarParcelas(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
          //
          if (opc) Then
           begin
                MOSTRAR;
                //
                Application.MessageBox('Importação concluida com sucesso.',
                   'Concluido', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           End
          Else
              raise Exception.Create('Erro na importação de dados do clientes.');
     End;

end;

procedure TfrmVendas.btnContratoClick(Sender: TObject);
Var
     M_LNINIC, M_PXCAMP : Double;
begin
       if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
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
                 With ppRepContrato do
                  begin
                       // novo
                       uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
                       M_LNINIC := dmAdmDados.cdsConfigCFG_LINHA_INICIAL_CONTRATO.AsFloat;
                       M_PXCAMP := 20.75;
                       lbIdentificacao.Top := M_LNINIC;   // 64.29;
                       //
                       txtRazao.Top        := M_LNINIC + M_PXCAMP;
                       M_PXCAMP := M_PXCAMP + 10;
                       //
                       txtCPF.Top          := M_LNINIC + M_PXCAMP;
                       txtIdentidade.Top   := txtCPF.Top;
                       txtNacionalidade.Top := txtCPF.Top;
                       txtEstCivil.Top     := txtCPF.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 10;
                       txtSexo.Top         := M_LNINIC + M_PXCAMP;     // 105;
                       txtDataNasc.Top     := txtSexo.Top;
                       txtProfissao.Top    := txtSexo.Top;
                       txtEndereco.Top     := txtSexo.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 10;
                       txtBairro.Top       := M_LNINIC + M_PXCAMP;   // 115;
                       txtCidade.Top       := txtBairro.Top;
                       txtUF.Top           := txtBairro.Top;
                       txtCep.Top          := txtBairro.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 10;
                       txtFone.Top         := M_LNINIC + M_PXCAMP;  // 125;
                       txtEndEmpresa.Top   := txtFone.Top;
                       txtBairroEmp.Top    := txtFone.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 10;
                       txtUFEmp.Top        :=  M_LNINIC + M_PXCAMP;  //135;
                       ppDBText17.Top      := txtUFEmp.Top;
                       txtCEPEmp.Top       := txtUFEmp.Top;
                       txtFoneEmp.Top      := txtUFEmp.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 18;
                       lblGrupo.Top        := M_LNINIC + M_PXCAMP;     //153;
                       txtCota.Top         := lblGrupo.Top;
                       txtDuracao.Top      := lblGrupo.Top;
                       //
                       M_PXCAMP := M_PXCAMP + 20;
                       txtCredito.Top      := M_LNINIC + M_PXCAMP;  // 173;
                       //
                       lblGrupo.Caption := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString +' - '+ dmAdmDados.cdsVendaContasCOT_NMGRUP.AsString;
                       PrintReport;
                  End;
            End;
end;

procedure TfrmVendas.edtCotaExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtConsultar.Text) and not uFuncoes.Empty(edtCota.Text) Then
       if (btnRegistro.Enabled) Then
            btnRegistro.SetFocus;
end;

procedure TfrmVendas.btnSPCClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
       if (StrtoInt(edtParcAtras.Text) > 0) Then
        begin
             iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
             iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
             iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
             //
             If (dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString = 'N')
               Or uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString) Then
                begin
                      If Application.MessageBox('Confirma inclusão no SPC?',
                          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                       begin
                            if not (dmAdmDados.SetClienteSPC(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'S')) Then
                                 Raise Exception.Create('Erro ao tentar incluir cliente no SPC.')
                            Else
                            begin
                                aDescricao := 'Incluiu SPC G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                                dmAdmDados.SetTarefa_Usuario(aDescricao);
                                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                            End;
                            //
                            Buscar2(aVenda);
                            Exit;
                       End;
                End;
              //
             If (dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString = 'S') Then
                begin
                      If Application.MessageBox('Confirma exclusão do SPC?',
                         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                          begin
                              if not (dmAdmDados.SetClienteSPC(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'N')) Then
                                  Raise Exception.Create('Erro ao tentar excluir cliente do SPC.')
                              Else
                              begin
                                aDescricao := 'Excluiu SPC G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                                dmAdmDados.SetTarefa_Usuario(aDescricao);
                                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                              End;
                              //
                              Buscar2(aVenda);
                              Exit;
                          End;
                End;
             //
        End
        Else
             Application.MessageBox('Cliente não está INADIMPLENTE.',
                'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
end;

procedure TfrmVendas.Buscar2(aVenda: integer);
begin
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := aVenda;
          Active := True;
          //
          if not (IsEmpty) then
           begin
             MOSTRAR;
             Status_Grupo(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger);
             Status_Venda(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
             //
             If not (dmAdmDados.Verificar_Saldo_Cliente_Venda(dmAdmDados.cdsVendaContas.FieldByName('COT_NRVENDA').AsInteger,
                     dmAdmDados.cdsVendaContas.FieldByName('COT_CDCLIE').AsInteger) ) Then
                     //edtSaldo.Value := 0;
             //Saldo;
           end;
     end;
end;

procedure TfrmVendas.btnQuitarClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
      begin
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
          begin
              iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
              iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
              iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
              // Erro
              if (StrtoInt(edtParcVinc.Text) > 0) Then
                  RAISE Exception.Create('Existe parcelas abertas.');
              //
              If Application.MessageBox('Confirma quitação de cliente?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                 begin
                      if not (dmAdmDados.SetPosicaoCliente(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'Q')) Then
                            Raise Exception.Create('Erro ao tentar realizar quitação de cliente.')
                      Else
                      begin
                            aDescricao := 'Quitou G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                            dmAdmDados.SetTarefa_Usuario(aDescricao);
                            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                      End;
                      //
                      Buscar2(aVenda);
                      Exit;
                 End;
          End;
      End;
end;

procedure TfrmVendas.btnInativarClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
      begin
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
          begin
              iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
              iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
              iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
              // Erro
              {if (StrtoInt(edtParcAtras.Text) = 0) Then
                  RAISE Exception.Create('Operação inválida. Não há parcelas atrasada.');}
              //
              If Application.MessageBox('Confirma inativação?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                 begin
                      if not (dmAdmDados.SetPosicaoCliente(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'I')) Then
                          Raise Exception.Create('Erro ao tentar realizar inativar cliente.')
                      Else
                      begin
                            aDescricao := 'Inativou G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                            dmAdmDados.SetTarefa_Usuario(aDescricao);
                            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                      End;
                      //
                      Buscar2(aVenda);
                      Exit;
                 End;
          End;
      End;
end;

procedure TfrmVendas.btnInativarPagoClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
      begin
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
             RAISE Exception.Create('Inative, para depois Liquidar.');
         //
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') Then
          begin
              iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
              iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
              iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
              // Erro
              {if (StrtoInt(edtParcAtras.Text) = 0) Then
                  RAISE Exception.Create('Operação inválida. Não há parcelas atrasada.');}
              //
              If Application.MessageBox('Confirma Inativação (Paga)?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                 begin
                      if not (dmAdmDados.SetPosicaoInativoPago(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'P')) Then
                          Raise Exception.Create('Erro ao tentar realizar inativar (Paga) cliente.')
                      Else
                      begin
                            aDescricao := 'Inativou (Pago) G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                            dmAdmDados.SetTarefa_Usuario(aDescricao);
                            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                      End;
                      //
                      Buscar2(aVenda);
                      Exit;
                 End;
          End;
      End;
end;

procedure TfrmVendas.btnReativarClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;    
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
      begin
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
             RAISE Exception.Create('Inative, para depois Reativar.');
         //
         if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I') Then
          begin
              iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
              iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
              iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
              // Erro
              if (StrtoInt(edtParcAtras.Text) = 0) Then
                  RAISE Exception.Create('Operação inválida. Não há parcelas atrasada.');
              //
              If Application.MessageBox('Confirme Reativação?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                 begin
                      if not (dmAdmDados.SetPosicaoCliente(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'R')) Then
                          Raise Exception.Create('Erro ao tentar realizar reativação cliente.')
                      Else
                      begin
                            aDescricao := 'Reativou G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                            dmAdmDados.SetTarefa_Usuario(aDescricao);
                            dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                      End;
                      //
                      Buscar2(aVenda);
                      Exit;
                 End;
          End;
      End;
end;

procedure TfrmVendas.dsVendaContasDataChange(Sender: TObject;
  Field: TField);
begin
      cmbGrupos.Enabled := dsVendaContas.State in [dsInsert];
      dbeCOTA.Enabled   := dsVendaContas.State in [dsInsert];
      dbePLANO.Enabled  := dsVendaContas.State in [dsInsert];
      dbeCliente.Enabled  := dsVendaContas.State in [dsInsert];
      dbeDTVenc1.Enabled  := dsVendaContas.State in [dsInsert];
      cmbDia.Enabled    := dsVendaContas.State in [dsInsert];
      //
      spLocCliente.Enabled := dsVendaContas.State in [dsInsert];
      //
      mnuAlterarDiadeVencimentoItem.Enabled :=
             (dsVendaContas.State in [dsBrowse]) and
             (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A');
      //
      pmnAlterarStatusReativadopInativoPagoItem.Enabled :=
         (dsVendaContas.State in [dsBrowse])
         and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'R')
         AND (uFrmAdmMain.admin);
      //
      edtSaldo.Enabled := (dsVendaContas.State in [dsInsert, dsEdit, dsBrowse])
                           and (dsVendaContas.DataSet.FieldByName('COT_POSICAO').AsString = 'A');
      //(dsVendaContas.State in [dsEdit]);
      ckbSaldoParcela.Enabled := (dsVendaContas.State in [dsInsert]) and (dsVendaContas.DataSet.FieldByName('COT_SALDO_ANTERIOR').AsFloat > 0);
      //
      pmnBaixarSaldoInativoItem.Enabled :=
         (dsVendaContas.State in [dsBrowse])
         and ((dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I')
              or (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A'));
end;

procedure TfrmVendas.edtNumPlacaKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edtNumPlaca.Text) Then
       begin
           key := #0;
           If (btnRegistro.Enabled) Then
               btnRegistro.SetFocus;
       End;
end;

procedure TfrmVendas.edtNumPlacaChange(Sender: TObject);
begin
   If uFuncoes.Empty(edtNumPlaca.Text) Then
   begin
       cdsConsultar.Close;
       {edtCota.Clear;
       edtConsultar.Clear;}
       btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (CT.COT_NRSERIE like :pNRSERIE)';
            //
            datasetConsultar.Params.ParamByName('pNRSERIE').AsString := edtNumPlaca.Text+ '%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmVendas.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     If not (dmPesquisas.cdsListaCotas.IsEmpty) Then
      begin
           buscar2(dmPesquisas.cdsListaCotasCOT_NRVENDA.AsInteger);
           Mostrar_Saldo; 
           //edtSaldo.Value := dmAdmDados.GetSaldo(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
      End;

    { If not (cdsConsultar.IsEmpty) Then
      begin
         buscar2(cdsConsultarCOT_NRVENDA.AsInteger);
      End;


     if (cdsConsultar.Bof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger - 1));
     //
     if (cdsConsultar.Eof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger + 1));}
end;

procedure TfrmVendas.BuscarNovo(aGrupo, aCota: integer);
begin
       cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.CLI_CPF, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO) and (COT_NRCOTA = :pNRCOTA)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsInteger := aGrupo;
            datasetConsultar.Params.ParamByName('pNRCOTA').AsInteger := aCota;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
       cdsConsultar.Open;
       //
end;

procedure TfrmVendas.edtNomeClienteChange(Sender: TObject);
begin
   If uFuncoes.Empty(edtNomeCliente.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
       edtConsultar.Clear;
       btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (CL.CLI_NOME like :pNOME)';
            //
            datasetConsultar.Params.ParamByName('pNOME').AsString := edtNomeCliente.Text+'%';
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmVendas.edtNRCPFChange(Sender: TObject);
begin
   If uFuncoes.Empty(edtNRCPF.Text) Then
   begin
       cdsConsultar.Close;
       edtCota.Clear;
       edtConsultar.Clear;
       btnRegistro.Enabled := False;
   end
   Else
   begin
        //
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (CL.cli_cpf = :pCPF)';
            //
            datasetConsultar.Params.ParamByName('pCPF').AsString := edtNRCPF.Text;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   end;
end;

procedure TfrmVendas.edtNRCPFKeyPress(Sender: TObject; var Key: Char);
begin
     if not( key in['0'..'9', '.', '-', #8, #13] ) then
       key:=#0;
     //  
     If (key = #13) and not (cdsConsultar.IsEmpty) Then
      begin
          key := #0;
          btnRegistroClick(Sender);
      End;
end;

procedure TfrmVendas.edtNomeClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (cdsConsultar.Active = True) Then
   Begin
     IF (KEY = VK_UP) then
          cdsConsultar.Prior;
     //
     IF (KEY = VK_DOWN) then
          cdsConsultar.Next;
   End;
end;

procedure TfrmVendas.edtCotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (cdsConsultar.Active = True) Then
   Begin
     IF (KEY = VK_UP) then
          cdsConsultar.Prior;
     //
     IF (KEY = VK_DOWN) then
          cdsConsultar.Next;
   End;
end;

procedure TfrmVendas.edtNomeClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) and not (cdsConsultar.IsEmpty) Then
      begin
          key := #0;
          btnRegistroClick(Sender);
      End;
end;

procedure TfrmVendas.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     //
     If not (cdsConsultar.IsEmpty) Then
         buscar2(cdsConsultarCOT_NRVENDA.AsInteger);
     //

end;

procedure TfrmVendas.Selecionar_Grupo(aGrupo: String);
begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_NRCOTA, CT.COT_NRSERIE, CT.COT_CDCLIE, CL.CLI_NOME, CL.cli_cpf, CT.COT_POSICAO from cotas CT ';
            CommandText := CommandText + ' INNER join clientes CL ON CL.CLI_CODIGO = CT.COT_CDCLIE ';
            CommandText := CommandText + ' Where (COT_CDGRUPO = :pCODIGO)';
            //
            datasetConsultar.Params.ParamByName('pCODIGO').AsString := aGrupo;
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
end;

procedure TfrmVendas.SpeedButton1Click(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
      begin
         buscar2(cdsConsultarCOT_NRVENDA.AsInteger);
      End;
         
     if (cdsConsultar.Bof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger - 1));
     //
     if (cdsConsultar.Eof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger + 1));
end;

procedure TfrmVendas.SpeedButton2Click(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
      begin
         buscar2(cdsConsultarCOT_NRVENDA.AsInteger);
      End;
         
     if (cdsConsultar.Bof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger - 1));
     //
     if (cdsConsultar.Eof) Then
        Selecionar_Grupo(InttoStr(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger + 1));
end;

procedure TfrmVendas.PosicaoTabela;
begin
       dmPesquisas.cdsListaCotas.Locate('COT_NRVENDA;COT_CDGRUPO;COT_NRCOTA',
             VarArrayOf([cdsConsultarCOT_NRVENDA.AsInteger,
                         cdsConsultarCOT_CDGRUPO.AsInteger,
                         cdsConsultarCOT_NRCOTA.AsInteger]),[]);
end;

procedure TfrmVendas.btnEtiquetaClick(Sender: TObject);
begin
     If (dmAdmDados.cdsVendaContas.Active) and not (dmAdmDados.cdsVendaContas.IsEmpty) Then
      begin
           uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
           //
           If Application.MessageBox(PChar('Sim : Matricial '+#13'Não : outras impressora'),
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idNo then
           begin
                 uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, dmAdmDados.cdsVendaContasCOT_CDCLIE.AsString);
                 //
                 With dmRelatorios.rvEnvelopes do
                  begin
                       Execute;
                  End;
           End
           Else
               dmAdmDados.ImprimiEtiquetaNovo(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsString);
               //dmAdmDados.ImprimiEtiqueta(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsString);
             //
           {if (dmAdmDados.cdsConfigCFG_TIPO_ETIQUETA.AsInteger = 1) Then
            begin
                 uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, dmAdmDados.cdsVendaContasCOT_CDCLIE.AsString);
                 //
                 With dmRelatorios.rvEnvelopes do
                     Execute;
            End
            Else
                dmAdmDados.ImprimiEtiqueta(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsString);}
      End;
end;

procedure TfrmVendas.dbeTxAdmExit(Sender: TObject);
begin
     If (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit]) Then
      begin
         if not uFuncoes.Empty(dbeTxAdm.Text) Then
           If  (dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat < 0)
             or (dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat > 100) Then
            begin
                 Application.MessageBox('Percentual inválido.','ATENÇÃO',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 dbeTxAdm.SetFocus;
                 Exit;
            End;
      End;
end;

procedure TfrmVendas.btnTransferenciaClick(Sender: TObject);
Var
    iNrVenda, iCodGrupo, iNrCota : Integer;
    iCliAnterior, iCliNovo : integer;
    aDescricao : String;
begin
     If (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
      begin
           Application.MessageBox('Cota já contemplada.','ATENÇÃO',
                                  MB_OK+ MB_ICONINFORMATION+MB_APPLMODAL);
           Exit;
      End;
     //
     if (dmAdmDados.cdsVendaContas.State in [dsbrowse])
      and (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A')  Then
      Begin
          iNrVenda  := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
          iCodGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
          iNrCota   := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
          iCliAnterior := dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
          //
          Application.CreateForm(TfrmTransferencia, frmTransferencia);
          try
              With frmTransferencia do
                begin
                     edtCliAtual.Text  := dbeCliente.Text;
                     edtNomeAtual.Text := lblNMCLIE.Text;
                     //
                     ShowModal;
                End;
          Finally
              if not uFuncoes.Empty(frmTransferencia.edtCliAtual.Text)
                and not uFuncoes.Empty(frmTransferencia.edtCliNovo.Text)
                and (uFrmTransferencia.M_FLTRAN) Then
                begin
                     iCliNovo := StrtoInt(frmTransferencia.edtCliNovo.Text);
                     //
                     if not (TransferenciaCliente(iNrVenda, iCodGrupo, iNrCota,
                        StrtoInt(frmTransferencia.edtCliAtual.Text),
                        StrtoInt(frmTransferencia.edtCliNovo.Text))) Then
                          Application.MessageBox('Erro ao tentar realizar,'+#13+
                                    'transferência de cliente.','Erro',
                                    MB_OK+ MB_ICONSTOP+MB_APPLMODAL)
                      Else
                      begin
                          aDescricao := 'Transf. G ' + InttoStr(iCodGrupo) + ' | C '+ InttoStr(iNrCota) + ' | Cli.Anterior :'
                          + uFuncoes.StrZero(InttoStr(iCliAnterior),7)
                          + ' | Cli.Novo :'+uFuncoes.StrZero(InttoStr(iCliNovo),7);
                          //
                          dmAdmDados.SetTarefa_Usuario(aDescricao);
                          dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                          //
                          Application.MessageBox('Transferência realizada com sucesso.','Concluido',
                                    MB_OK+ MB_ICONINFORMATION+MB_APPLMODAL);
                      End;
                End;
              //
              If (uFrmTransferencia.M_FLGRUP = True) Then
                 Buscar2(dmAdmDados.cdsConfigCFG_VENDA.AsInteger);
              //
              frmTransferencia.Free;
          End;
      End
      Else
           Application.MessageBox('Cota não está ativa.','Concluido',
                     MB_OK+ MB_ICONINFORMATION+MB_APPLMODAL);
end;

function TfrmVendas.TransferenciaCliente(iVenda, iGrupo, iCota, iClienteAtual,
  iClienteNovo: integer): boolean;
Var
    aVenda, iNovaVenda : Integer;
    aDescricao, Grupo, Cota, Venda : string;
    Operacao : boolean;
    //
    qraux, qrauxParcela, qrIncParcela : TSQLquery;
    texto, texto1, texto2 : string;
begin
     result := False;
     Operacao := False;
     // inativa cliente atual
     aVenda := iVenda;
   //
     //
       If not (dmPesquisas.cdsConsultaCota.IsEmpty) Then
        begin
          if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
          begin
              Venda := InttoStr(iVenda);
              Grupo := InttoStr(iGrupo);
              Cota  := InttoStr(iCota);
              //
              if not (dmAdmDados.SetPosicaoCliente(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'I')) Then
                   Raise Exception.Create('Erro ao tentar realizar inativar cliente.')
              Else
              begin
                   aDescricao := 'Inativou G ' + Grupo + ' | C '+ Cota + ' | V '+Venda;
                           dmAdmDados.SetTarefa_Usuario(aDescricao);
                           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
              End;
              //
              Buscar2(aVenda);
              Operacao := true;
          End;
        End;
      //  Gera uma nova venda
   //
      if (Operacao) Then
       begin
             dmAdmDados.Parametros;
             //
             dmAdmDados.cdsConfig.Edit;
             dmAdmDados.cdsConfigCFG_VENDA.AsInteger :=
                 dmAdmDados.cdsConfigCFG_VENDA.AsInteger + 1;
             dmAdmDados.cdsConfig.ApplyUpdates(0);
             iNovaVenda := dmAdmDados.cdsConfigCFG_VENDA.AsInteger;
             //
             texto := 'insert into COTAS (' +
                      'COT_NRVENDA, COT_CDGRUPO, COT_NRCOTA, COT_CDCLIE, COT_CONTRATO, '+
                      'COT_PLANO, COT_POSICAO, COT_DIAASS, COT_DTCONT, COT_CODBEM, COT_VALCRE, '+
                      'COT_VALACERTO, COT_FLCONTEMPLADO, COT_TIPO, COT_VALCOTA, COT_DTVENCIMENTO ,'+
                      'COT_FUNDORES, COT_TAXA_ADESAO, COT_TAXA_ADM, COT_CDBANCO, '+
                      'COT_ESPECIE, COT_MARCA, COT_ASSEMBLEIAFILTRO, COT_VALORLANCE, '+
                      'COT_DTCONTEMPLACAO, COT_ASSEB_CONTEMP, COT_DTALIENACAO, COT_MARCA_VEIC, COT_MODELO_VEIC, '+
                      'COT_ANO_FAB, COT_ANO_MOD, COT_CHASSI, COT_DATA_LIB, COT_ALIENADO, COT_DESALIENADO, '+
                      'COT_AVAL1, COT_AVAL2, COT_NRSERIE, COT_TIPOVEIC, COT_COR, COT_CDMODELO, COT_VALOR_TAXACAD, '+
                      'COT_VALORENTRADA, COT_DATAPRIMPRES, COT_TPLANCE, COT_DTRECEBIMENTO, COT_VALOR_RECEBER , '+
                      'COT_FLXSPC, COT_FLPROMOCAO )';
             texto := texto + 'Values (' +
                      ':pCOT_NRVENDA, :pCOT_CDGRUPO, :pCOT_NRCOTA, :pCOT_CDCLIE, :pCOT_CONTRATO, '+
                      ':pCOT_PLANO, :pCOT_POSICAO, :pCOT_DIAASS, :pCOT_DTCONT, :pCOT_CODBEM, :pCOT_VALCRE, '+
                      ':pCOT_VALACERTO, :pCOT_FLCONTEMPLADO, :pCOT_TIPO, :pCOT_VALCOTA, :pCOT_DTVENCIMENTO ,'+
                      ':pCOT_FUNDORES, :pCOT_TAXA_ADESAO, :pCOT_TAXA_ADM, :pCOT_CDBANCO, '+
                      ':pCOT_ESPECIE, :pCOT_MARCA, :pCOT_ASSEMBLEIAFILTRO, :pCOT_VALORLANCE, '+
                      ':pCOT_DTCONTEMPLACAO, :pCOT_ASSEB_CONTEMP, :pCOT_DTALIENACAO, :pCOT_MARCA_VEIC, :pCOT_MODELO_VEIC, '+
                      ':pCOT_ANO_FAB, :pCOT_ANO_MOD, :pCOT_CHASSI, :pCOT_DATA_LIB, :pCOT_ALIENADO, :pCOT_DESALIENADO, '+
                      ':pCOT_AVAL1, :pCOT_AVAL2, :pCOT_NRSERIE, :pCOT_TIPOVEIC, :pCOT_COR, :pCOT_CDMODELO, :pCOT_VALOR_TAXACAD, '+
                      ':pCOT_VALORENTRADA, :pCOT_DATAPRIMPRES, :pCOT_TPLANCE, :pCOT_DTRECEBIMENTO, :pCOT_VALOR_RECEBER , '+
                      ':pCOT_FLXSPC, :pCOT_FLPROMOCAO )';
             QrAux := TSqlquery.Create(nil);
              with QrAux do
                try
                SQLConnection := dmAdmDados.sqlConn;
                sql.Clear;
                Close;
                sql.Add(texto);
                Params.ParamByName('pCOT_NRVENDA').AsInteger := iNovaVenda;
                Params.ParamByName('pCOT_CDGRUPO').AsInteger := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
                Params.ParamByName('pCOT_NRCOTA').AsInteger  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
                Params.ParamByName('pCOT_CDCLIE').AsInteger  := iClienteNovo;
                Params.ParamByName('pCOT_CONTRATO').AsString := dmAdmDados.cdsVendaContasCOT_CONTRATO.AsString;
                Params.ParamByName('pCOT_PLANO').AsInteger   := dmAdmDados.cdsVendaContasCOT_PLANO.AsInteger;
                Params.ParamByName('pCOT_POSICAO').AsString  := 'A';
                Params.ParamByName('pCOT_DIAASS').AsString   := dmAdmDados.cdsVendaContasCOT_DIAASS.AsString;
                Params.ParamByName('pCOT_DTCONT').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTCONT.AsDateTime;
                Params.ParamByName('pCOT_CODBEM').AsString   := dmAdmDados.cdsVendaContasCOT_CODBEM.AsString;
                Params.ParamByName('pCOT_VALCRE').AsFloat    := dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat;
                Params.ParamByName('pCOT_VALACERTO').AsFloat := dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat;
                Params.ParamByName('pCOT_FLCONTEMPLADO').AsString := dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString;
                Params.ParamByName('pCOT_TIPO').AsString     := dmAdmDados.cdsVendaContasCOT_TIPO.AsString;
                Params.ParamByName('pCOT_VALCOTA').AsFloat   := dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat;
                Params.ParamByName('pCOT_DTVENCIMENTO').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime;
                Params.ParamByName('pCOT_FUNDORES').AsFloat  := dmAdmDados.cdsVendaContasCOT_FUNDORES.AsFloat;
                Params.ParamByName('pCOT_TAXA_ADESAO').AsFloat := dmAdmDados.cdsVendaContasCOT_TAXA_ADESAO.AsFloat;
                Params.ParamByName('pCOT_TAXA_ADM').AsFloat  := dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat;
                Params.ParamByName('pCOT_CDBANCO').AsInteger := dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger;
                Params.ParamByName('pCOT_ESPECIE').AsString  := dmAdmDados.cdsVendaContasCOT_ESPECIE.AsString;
                Params.ParamByName('pCOT_MARCA').AsString    := dmAdmDados.cdsVendaContasCOT_MARCA.AsString;
                Params.ParamByName('pCOT_ASSEMBLEIAFILTRO').AsInteger := dmAdmDados.cdsVendaContasCOT_ASSEMBLEIAFILTRO.AsInteger;
                Params.ParamByName('pCOT_VALORLANCE').AsFloat := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;
                Params.ParamByName('pCOT_DTCONTEMPLACAO').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTCONTEMPLACAO.AsDateTime;
                Params.ParamByName('pCOT_ASSEB_CONTEMP').AsInteger := dmAdmDados.cdsVendaContasCOT_ASSEB_CONTEMP.AsInteger;
                Params.ParamByName('pCOT_DTALIENACAO').AsDateTime  := dmAdmDados.cdsVendaContasCOT_DTALIENACAO.AsDateTime;
                Params.ParamByName('pCOT_MARCA_VEIC').AsString := dmAdmDados.cdsVendaContasCOT_MARCA_VEIC.AsString;
                Params.ParamByName('pCOT_MODELO_VEIC').AsString := dmAdmDados.cdsVendaContasCOT_MODELO_VEIC.AsString;
                Params.ParamByName('pCOT_ANO_FAB').AsInteger   := dmAdmDados.cdsVendaContasCOT_ANO_FAB.AsInteger;
                Params.ParamByName('pCOT_ANO_MOD').AsInteger   := dmAdmDados.cdsVendaContasCOT_ANO_MOD.AsInteger;
                Params.ParamByName('pCOT_CHASSI').AsString     := dmAdmDados.cdsVendaContasCOT_CHASSI.AsString;
                Params.ParamByName('pCOT_DATA_LIB').AsDateTime := dmAdmDados.cdsVendaContasCOT_DATA_LIB.AsDateTime;
                Params.ParamByName('pCOT_ALIENADO').AsString   := dmAdmDados.cdsVendaContasCOT_ALIENADO.AsString;
                Params.ParamByName('pCOT_DESALIENADO').AsString := dmAdmDados.cdsVendaContasCOT_DESALIENADO.AsString;
                Params.ParamByName('pCOT_AVAL1').AsInteger     := dmAdmDados.cdsVendaContasCOT_AVAL1.AsInteger;
                Params.ParamByName('pCOT_AVAL2').AsInteger     := dmAdmDados.cdsVendaContasCOT_AVAL2.AsInteger;
                Params.ParamByName('pCOT_NRSERIE').AsString    := dmAdmDados.cdsVendaContasCOT_NRSERIE.AsString;
                Params.ParamByName('pCOT_TIPOVEIC').AsString   := dmAdmDados.cdsVendaContasCOT_TIPOVEIC.AsString;
                Params.ParamByName('pCOT_COR').AsString        := dmAdmDados.cdsVendaContasCOT_COR.AsString;
                Params.ParamByName('pCOT_CDMODELO').AsInteger  := dmAdmDados.cdsVendaContasCOT_CDMODELO.AsInteger;
                Params.ParamByName('pCOT_VALOR_TAXACAD').AsFloat := dmAdmDados.cdsVendaContasCOT_VALOR_TAXACAD.AsFloat;
                Params.ParamByName('pCOT_VALORENTRADA').AsFloat  := dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat;
                Params.ParamByName('pCOT_DATAPRIMPRES').AsDateTime := dmAdmDados.cdsVendaContasCOT_DATAPRIMPRES.AsDateTime;
                Params.ParamByName('pCOT_TPLANCE').AsString    := dmAdmDados.cdsVendaContasCOT_TPLANCE.AsString;
                Params.ParamByName('pCOT_DTRECEBIMENTO').AsDateTime := dmAdmDados.cdsVendaContasCOT_DTRECEBIMENTO.AsDateTime;
                Params.ParamByName('pCOT_VALOR_RECEBER').AsFloat := dmAdmDados.cdsVendaContasCOT_VALOR_RECEBER.AsFloat;
                Params.ParamByName('pCOT_FLXSPC').AsString     := dmAdmDados.cdsVendaContasCOT_FLXSPC.AsString;
                Params.ParamByName('pCOT_FLPROMOCAO').AsString := dmAdmDados.cdsVendaContasCOT_FLPROMOCAO.AsString;
                //
                ExecSQL();
                Operacao := true;
              finally
                free;
              end;
       End;
       // Parcelas
   //
       if (Operacao) Then
        begin
             With dmPesquisas.cdsConsultaCota do
              begin
                   DisableControls;
                   First;
                   //
                   dmAdmDados.cdsParcTransferido.Close;
                   dmAdmDados.cdsParcTransferido.Params.ParamByName('prec_nrvend').AsInteger := iNovaVenda;
                   dmAdmDados.cdsParcTransferido.Open;
                   //
                   If not (dmAdmDados.cdsParcTransferido.IsEmpty) Then
                      Operacao := true;
                   //
                   If (Operacao) Then
                   begin
                    While not (Eof) do
                     begin
                         texto2 := 'Select * from parcelas r Where (r.rec_nrvend = :prec_nrvend) ' +
                                  ' and (r.REC_CDGRUP = :pREC_CDGRUP) and (r.REC_NRCOTA = :pREC_NRCOTA) and (r.REC_NRPARC = :pREC_NRPARC) ' ;
                         qrauxParcela := TSqlquery.Create(nil);
                         with qrauxParcela do
                         try
                             SQLConnection := dmAdmDados.sqlConn;
                             sql.Clear;
                             Close;
                             sql.Add(texto2);
                             Params.ParamByName('prec_nrvend').AsInteger  := dmPesquisas.cdsConsultaCota.FieldByName('REC_NRVEND').AsInteger;
                             Params.ParamByName('pREC_CDGRUP').AsInteger  := dmPesquisas.cdsConsultaCota.FieldByName('REC_CDGRUP').AsInteger;
                             Params.ParamByName('pREC_NRCOTA').AsInteger  := dmPesquisas.cdsConsultaCota.FieldByName('REC_NRCOTA').AsInteger;
                             Params.ParamByName('pREC_NRPARC').AsInteger  := dmPesquisas.cdsConsultaCota.FieldByName('REC_NRPARC').AsInteger;
                             //
                             Open;
                             // Novo registro
                             dmAdmDados.cdsParcTransferido.Append;
                             //
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_NRVEND').AsInteger  := iNovaVenda;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_CDGRUP').AsInteger  := qrauxParcela.FieldByName('REC_CDGRUP').AsInteger;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_NRCOTA').AsInteger  := qrauxParcela.FieldByName('REC_NRCOTA').AsInteger;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_NRPARC').AsInteger  := qrauxParcela.FieldByName('REC_NRPARC').AsInteger;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_DTVENC').AsDateTime := qrauxParcela.FieldByName('REC_DTVENC').AsDateTime;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_VLPARC').AsFloat    := qrauxParcela.FieldByName('REC_VLPARC').AsFloat;
                             If not (qrauxParcela.FieldByName('REC_DTPAGA').IsNull) or
                               not uFuncoes.Empty(qrauxParcela.FieldByName('REC_DTPAGA').AsString) Then
                                  dmAdmDados.cdsParcTransferido.FieldByName('REC_DTPAGA').AsDateTime := qrauxParcela.FieldByName('REC_DTPAGA').AsDateTime;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_VLMULT').AsFloat    := qrauxParcela.FieldByName('REC_VLMULT').AsFloat;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_TOTAL_PAGO').AsFloat := qrauxParcela.FieldByName('REC_TOTAL_PAGO').AsFloat;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_CODOP').AsString    := qrauxParcela.FieldByName('REC_CODOP').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_CDOPER').AsInteger  := qrauxParcela.FieldByName('REC_CDOPER').AsInteger;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_SITUACAO').AsString := qrauxParcela.FieldByName('REC_SITUACAO').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_DTMOVI').AsDateTime := qrauxParcela.FieldByName('REC_DTMOVI').AsDateTime;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_DTCREDITO').AsDateTime := qrauxParcela.FieldByName('REC_DTCREDITO').AsDateTime;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_CREDITO').AsFloat  := qrauxParcela.FieldByName('REC_CREDITO').AsFloat;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_REGISTRO').AsString := qrauxParcela.FieldByName('REC_REGISTRO').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_FORMABAIXA').AsString := qrauxParcela.FieldByName('REC_FORMABAIXA').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_CDBANC').AsInteger  := qrauxParcela.FieldByName('REC_CDBANC').AsInteger;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_PRINTSLIP').AsString := qrauxParcela.FieldByName('REC_PRINTSLIP').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_HISTORICO').Value    := qrauxParcela.FieldByName('REC_HISTORICO').Value;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_TPCREDITO').AsString := qrauxParcela.FieldByName('REC_TPCREDITO').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_TPSLIP').AsString    := qrauxParcela.FieldByName('REC_TPSLIP').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_NOSSONUMERO').AsString := qrauxParcela.FieldByName('REC_NOSSONUMERO').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_VALORTARIFABANCO').AsFloat  := qrauxParcela.FieldByName('REC_VALORTARIFABANCO').AsFloat;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_VALORTITULOTITULO').AsFloat := qrauxParcela.FieldByName('REC_VALORTITULOTITULO').AsFloat;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_DTESTORNO').AsDateTime := qrauxParcela.FieldByName('REC_DTESTORNO').AsDateTime;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_HOPAGA').AsString    := qrauxParcela.FieldByName('REC_HOPAGA').AsString;
                             dmAdmDados.cdsParcTransferido.FieldByName('REC_MOV_CAIXA').AsInteger := qrauxParcela.FieldByName('REC_MOV_CAIXA').AsInteger;
                             //
                             dmAdmDados.cdsParcTransferido.ApplyUpdates(0);
                         finally
                              free;
                         end;
                         //
                         Next;   // proximo
                     End;  // fim-do-enquanto
                     //
                   End;   // fim-se
                   EnableControls;
                   //
                   result := true;
                   //
                   Buscar2(iNovaVenda);
              End;
        End;
        //
end;

procedure TfrmVendas.edtSaldoClick(Sender: TObject);
begin
   if (dmAdmDados.cdsVendaContas.State in [dsBrowse]) Then
    begin
     //
     if not (dmAdmDados.Verificar_Saldo_Cliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger)) Then
         dmAdmDados.GetSaldoCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     //
     frmHisSaldo :=  TfrmHisSaldo.create(Application);
     try
          With frmHisSaldo do
          begin
               With cdsConsulta do
                begin
                     Close;
                     CommandText := 'Select * from CLIENTES_SALDO Where (SLD_CLIENTE = :pCLIENTE)';
                     Params.ParamByName('pCLIENTE').AsInteger :=
                           dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger;
                     Open;
                End;
               //
               ShowModal;
          End;
     Finally
          frmHisSaldo.Free;
     End;
   End;
end;

procedure TfrmVendas.Saldo;
begin
     //edtSaldo.Value := 0;
     //
     Mostrar_Saldo;
     //dmAdmDados.GetSaldo(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
end;

procedure TfrmVendas.btnProtestoClick(Sender: TObject);
Var
    aVenda : Integer;
    aDescricao, iGrupo, iCota, iVenda : string;
begin
     aVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     //
     If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
       if (StrtoInt(edtParcAtras.Text) > 0) Then
        begin
             iVenda := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
             iGrupo := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsString;
             iCota  := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString;
             //
             If (dmAdmDados.cdsVendaContasCOT_FLPROTESTO.AsString = 'N')
               Or uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_FLPROTESTO.AsString) Then
                begin
                      If Application.MessageBox('Confirma Protesto de Cliente?',
                          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                       begin
                            if not (dmAdmDados.SetClienteProtesto(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'S')) Then
                                 Raise Exception.Create('Erro ao tentar incluir protesto de cliente.')
                            Else
                            begin
                                aDescricao := 'Incluiu Protesto G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                                dmAdmDados.SetTarefa_Usuario(aDescricao);
                                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                            End;
                            //
                            Buscar2(aVenda);
                            Exit;
                       End;
                End;
              //
             If (dmAdmDados.cdsVendaContasCOT_FLPROTESTO.AsString = 'S') Then
                begin
                      If Application.MessageBox('Confirma exclusão de Protesto de cliente?',
                         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                          begin
                              if not (dmAdmDados.SetClienteProtesto(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,'N')) Then
                                  Raise Exception.Create('Erro ao tentar excluir protesto de cliente.')
                              Else
                              begin
                                aDescricao := 'Excluiu Protesto G ' + iGrupo + ' | C '+ iCota + ' | V '+iVenda;
                                dmAdmDados.SetTarefa_Usuario(aDescricao);
                                dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                              End;
                              //
                              Buscar2(aVenda);
                              Exit;
                          End;
                End;
             //
        End
        Else
             Application.MessageBox('Cliente não está INADIMPLENTE.',
                'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;


procedure TfrmVendas.Mostrar_Saldo;
begin
     //edtSaldo.Value := dmAdmDados.GetSaldoNovo(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
end;

procedure TfrmVendas.AlterarStatuspAtivo1Click(Sender: TObject);
Var
    M_NRVEND, M_CDGRUP, M_NRCOTA : Integer;
begin
  if (dmAdmDados.cdsVendaContas.State in [dsBrowse]) Then
   begin
    if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'I')
      OR (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'R') Then
      begin
          M_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
          M_CDGRUP := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
          M_NRCOTA := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
          //
          if not (dmAdmDados.Verificar_Cota_Grupo(M_CDGRUP, M_NRCOTA)) Then
          Begin
            If Application.MessageBox('Confirma alteração de status para ativo?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             begin
                 If dmAdmDados.AlterarStatusVenda(M_NRVEND, StrtoInt(uFrmAdmMain.M_CDUSUA),
                       dmAdmDados.cdsVendaContasCOT_POSICAO.AsString) Then
                  begin
                       Buscar2(M_NRVEND);
                       Application.MessageBox(PChar('Alteração realizada com sucesso.'),
                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  End
                 Else
                    Application.MessageBox(PChar('Erro ao tentar alterar status da venda.'),
                        'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           End
           Else
                Exit;
          End
          Else
              Application.MessageBox(PChar('Esta cota está ativa para outro cliente.'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
      End
      Else
          Application.MessageBox(PChar('Alteração de status não pode ser '+#13+
                                 'efetuado para esta venda'),
              'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmVendas.grdConsultar2DblClick(Sender: TObject);
Var
    M_NRVEND, M_CDGRUP, M_NRCOTA, M_NRPARC : Integer;
begin
 If not (uFrmAdmMain.admin) Then
  begin
       Application.MessageBox(PChar('Usuário não tem permissão '+#13+
                             'para esta operação.'),
           'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
       Exit;
  End;
  //
  If not uFuncoes.Empty(dmPesquisas.cdsConsultaCotaREC_DTPAGA.AsString) Then
   begin
     M_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
     M_CDGRUP := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
     M_NRCOTA := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
     M_NRPARC := dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger;
     //
     Application.CreateForm(TfrmAlterarData, frmAlterarData);
     Try
         uFrmAlterarDataPagamento.M_NMCLIE := lblNMCLIE.Text;
         frmAlterarData.ShowModal;
     Finally
         frmAlterarData.Free;
     End;
     //
     dmAdmDados.MOSTRA_SITUACAO_COTA(M_NRVEND, M_CDGRUP, M_NRCOTA);
     //
     dmPesquisas.cdsConsultaCota.Locate('REC_NRPARC', M_NRPARC, []);
  End;
end;

procedure TfrmVendas.cmbDiaExit(Sender: TObject);
begin
     If (dmAdmDados.cdsVendaContas.State in [dsInsert])
        and not uFuncoes.Empty(cmbDia.Text) Then
         begin
             dmAdmDados.cdsVendaContasCOT_DTVENCIMENTO.AsDateTime :=
                StrtoDate(uFuncoes.GetDiaVencimento(dmAdmDados.cdsVendaContasCOT_VCTDIA.AsInteger));
             // dbeDTVenc1.text := uFuncoes.GetDiaVencimento(dmAdmDados.cdsVendaContasCOT_VCTDIA.AsInteger);
         End;
end;

procedure TfrmVendas.pmnAlterarStatusReativadopInativoPagoItemClick(
  Sender: TObject);
Var
    M_NRVEND, M_CDGRUP, M_NRCOTA : Integer;
begin
  if (dmAdmDados.cdsVendaContas.State in [dsBrowse]) Then
   begin
    if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'R') Then
      begin
          M_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
          M_CDGRUP := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
          M_NRCOTA := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
          //
            If Application.MessageBox('Confirma alteração de status para Inavito(Pago)?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             begin
                 If dmAdmDados.AlterarStatusVendaCliente(M_NRVEND, StrtoInt(uFrmAdmMain.M_CDUSUA),
                       dmAdmDados.cdsVendaContasCOT_POSICAO.AsString, 'P') Then
                  begin
                       Buscar2(M_NRVEND);
                       Application.MessageBox(PChar('Alteração realizada com sucesso.'),
                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  End
                 Else
                    Application.MessageBox(PChar('Erro ao tentar alterar status da venda.'),
                        'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
             End;
      End
      Else
          Application.MessageBox(PChar('Alteração de status não pode ser '+#13+
                                 'efetuado para esta venda'),
              'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmVendas.dbeContratoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmVendas.dbeDTVenc1Enter(Sender: TObject);
begin
     If (dmAdmDados.cdsVendaContas.State in [dsInsert])
       and uFuncoes.Empty(cmbDia.Text) then
      begin
          cmbDia.SetFocus;
          Exit;
      End;
end;

procedure TfrmVendas.cmbDiaKeyPress(Sender: TObject; var Key: Char);
begin
      If (key = #27) and (dmAdmDados.cdsVendaContas.State in [dsInsert]) Then
        begin
             Key := #0;
             BtCancelarClick(Sender);
        End;
end;

procedure TfrmVendas.mnuAlterarDiadeVencimentoItemClick(Sender: TObject);
Var
   M_NRVEND, iUsuario : Integer;
   M_NUMDIA : String; 
begin
    if (dmAdmDados.cdsVendaContas.State in [dsBrowse])
      and  (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A') Then
      begin
           M_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
           iUsuario := StrtoInt(uFrmAdmMain.M_CDUSUA);
           M_NUMDIA := InputBox('Informe o novo dia de vencimento?', 'Dias : 05, 10, 15, 20 ou 25', '');
           //
           If not uFuncoes.Empty(M_NUMDIA) then
            begin
                 //
                 If not (dmAdmDados.GetDiaVencimento(StrtoInt(M_NUMDIA))) Then
                  begin
                       Application.MessageBox(PChar('Dia de vencimento inválido.'),
                          'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                       Exit;
                  End;
                 //
                 If Application.MessageBox('Confirma alteração de dia de vencimento?',
                   'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                    begin
                          if (dmAdmDados.SetNovoDiaVencimento(M_NRVEND, StrtoInt(M_NUMDIA), iUsuario)) Then
                              Application.MessageBox(PChar('Alteração concluída com sucesso.'),
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
                          Else
                              Application.MessageBox(PChar('Alteração não foi concluída.'),
                                 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL)
                    End;
                  //
                  Buscar2(M_NRVEND);
            End;
      End;
end;

procedure TfrmVendas.pmnBaixarSaldoInativoItemClick(Sender: TObject);
Var
   M_NRVEND, M_CDGRUP, M_NRCOTA : Integer;
   M_VLSALD : Double;
   M_FLATUALIZA : boolean;
begin
     //
     if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
      begin
          If Application.MessageBox('Deseja baixar de saldo de cliente?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
                M_FLATUALIZA := false;
                M_VLSALD := 0;
                M_NRVEND := dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger;
                M_CDGRUP := dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger;
                M_NRCOTA := dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger;
                //
                if not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsString)
                   and (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsString <> '0') Then
                 begin
                      {if (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString = 'A')
                        and (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat > 0) Then
                       begin
                            Application.MessageBox('Saldo de cliente já baixado.',
                              'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                            Exit;
                       End;    }
                      M_VLSALD := dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat;
                 End
                Else
                begin
                     Application.CreateForm(TfrmEditaSaldo, frmEditaSaldo);
                     try
                        if  (frmEditaSaldo.ShowModal = mrOk) then
                         begin
                           M_VLSALD := frmEditaSaldo.edtSaldo.Value;
                           M_FLATUALIZA := true;
                         End
                        Else
                           M_VLSALD := 0;
                     Finally
                        frmEditaSaldo.free;
                     End;
                End;
                //
                If (M_VLSALD > 0) Then
                begin
                    if not (dmPesquisas.GetVerificaSaldoDevedorCliente(dmPesquisas.cdsConsultaCota, M_VLSALD)) Then
                    begin
                         Application.MessageBox('Valor do saldo maior que saldo devedor do cliente.',
                           'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                         Exit;
                    End;
                    //
                    dmPesquisas.AtualizarSaldoCliente(dmPesquisas.cdsConsultaCota, M_VLSALD);
                    if (M_FLATUALIZA) Then
                    begin
                        dmAdmDados.cdsVendaContas.Edit;
                        dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat := M_VLSALD;
                        dmAdmDados.cdsVendaContas.ApplyUpdates(0);
                    End;
                    //
                    dmAdmDados.SetTarefa_Usuario('Baixou Saldo Cliente - VENDA: '+ InttoStr(M_NRVEND)+ ' VALOR: '+formatFloat('###,##0.#0', M_VLSALD));
                    dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                    //
                    MOSTRAR;
                    //
                    Application.MessageBox('Saldo atualizado com sucesso.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
                End
                Else
                    ShowMessage('Saldo inválido.');
            End;
      End;
end;

procedure TfrmVendas.ppDBCalc7Calc(Sender: TObject);
begin
     ppDBCalc7.Value := ppDBCalc3.Value + ppDBCalc1.Value;
end;

procedure TfrmVendas.cmbBancosExit(Sender: TObject);
begin
    if (dmAdmDados.cdsVendaContas.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dmAdmDados.cdsVendaContasCOT_CDBANCO.AsString)  Then
      begin
           If not (dmAdmDados.GetVerificarBancoAtivo(dmAdmDados.cdsVendaContasCOT_CDBANCO.AsInteger)) Then
            begin
                 Application.MessageBox(PChar('Conta de banco desativada!'+#13+'Selecione outra conta de banco.'),
                         'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                 cmbBancos.SetFocus;
                 Exit;
            End;
      End;
end;

procedure TfrmVendas.ZerarSaldodoCliente1Click(Sender: TObject);
Var
  aDescricao : String;
begin
    If (dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.AsFloat > 0) Then
     begin
        If Application.MessageBox('Confirma Zerar saldo de cliente?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
                dmAdmDados.Start;
                try
                     dmAdmDados.cdsVendaContas.Edit;
                     dmAdmDados.cdsVendaContasCOT_SALDO_ANTERIOR.Clear;
                     dmAdmDados.cdsVendaContas.ApplyUpdates(0);
                     //
                     dmPesquisas.ZerarSaldoCliente(dmPesquisas.cdsConsultaCota, dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger);
                     //
                     dmAdmDados.Comit(Transc);
                     //
                     aDescricao := 'Zerou Saldo do Cliente Venda: '+dmAdmDados.cdsVendaContasCOT_NRVENDA.AsString;
                     dmAdmDados.SetTarefa_Usuario(aDescricao);
                     dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                     //
                     MOSTRAR;
                     //
                     Application.MessageBox('Operação realizada com sucesso.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
                 Except
                     dmAdmDados.Rollback;
                 End;
              End;
           End;
     end;
procedure TfrmVendas.CalcularValorParcela;
Var
    aTaxa : String;
begin
  if (dmAdmDados.cdsVendaContas.State in [dsInsert])
     and (dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat > 0) and (dmAdmDados.cdsVendaContasCOT_PLANO.AsFloat > 0)  Then
  begin
      if (ckbSaldoParcela.Checked = False) then
          aTaxa := 'N'
      Else
          aTaxa := 'S';

           dmAdmDados.cdsVendaContasCOT_VALCOTA.AsFloat :=
                     dmAdmDados.Valor_Parcela(dmAdmDados.cdsVendaContasCOT_VALCRE.AsFloat,
                     dmAdmDados.cdsVendaContasCOT_PLANO.AsFloat,
                     dmAdmDados.cdsVendaContasCOT_VALORENTRADA.AsFloat,
                     dmAdmDados.cdsVendaContasCOT_TAXA_ADM.AsFloat, aTaxa); 
  End;    
end;

procedure TfrmVendas.ckbSaldoParcelaClick(Sender: TObject);
begin
      CalcularValorParcela();
end;

procedure TfrmVendas.CheckBoxSaldo;
begin
    If (dmAdmDados.cdsVendaContasCOT_REDUZIR_VALOR_PC_SALDO.AsString = 'N') Then
       ckbSaldoParcela.Checked := false
    Else
       ckbSaldoParcela.Checked := True;
    //
    ckbSaldoParcela.Enabled := false;
end;

End.

