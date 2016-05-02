unit uFrmAdmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolWin, ComCtrls, ImgList, ExtCtrls, ActnList, jpeg,
  RXShell, FMTBcd, DB, SqlExpr, StdCtrls,  Mask, ToolEdit, JvExControls,
  JvNavigationPane, Grids, DBGrids;

type
  TfrmMain = class(TForm)
    mmPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuMovimento: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Info: TStatusBar;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    imgLogon: TImage;
    ActionList1: TActionList;
    actSair: TAction;
    mnuVendasItem: TMenuItem;
    ToolButton3: TToolButton;
    mnuUtilitarios: TMenuItem;
    mnuUsuariosItem: TMenuItem;
    mnuConfiguracoesItem: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuSobreItem: TMenuItem;
    mnuBancoItem: TMenuItem;
    mnuClienteItem: TMenuItem;
    mnuModelosItem: TMenuItem;
    actConfig: TAction;
    actUsuario: TAction;
    mnuRelatorios: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    mnuCaixa: TMenuItem;
    mnuGruposItem: TMenuItem;
    BaixaEstornoBanco1: TMenuItem;
    mnuRegistroLanceItem: TMenuItem;
    RegistroContemplao1: TMenuItem;
    RegistrodeEntrega1: TMenuItem;
    LiberaodeBemDes1: TMenuItem;
    CorreodeParcelas1: TMenuItem;
    mnuBaixaItem: TMenuItem;
    BaixaEstornodeLaneContemplao1: TMenuItem;
    ListadeClientes1: TMenuItem;
    ListadeGrupos1: TMenuItem;
    ListadeGrupoCotas1: TMenuItem;
    Lista1: TMenuItem;
    CartadeAviso1: TMenuItem;
    Emissode1: TMenuItem;
    EmissodeBoletosBancarios1: TMenuItem;
    ListadeNossoNumero1: TMenuItem;
    actSobre: TAction;
    actBancos: TAction;
    actClientes: TAction;
    actGrupos: TAction;
    actModelos: TAction;
    actVendas: TAction;
    actBaixaEstorno: TAction;
    actLancamLance: TAction;
    actMovContemplacao: TAction;
    actMovAlienacao: TAction;
    actMovDesalienacao: TAction;
    actMovCorrecaoPC: TAction;
    actBaixaAuto: TAction;
    actCaixaBaixaEstornoLance: TAction;
    actCxBaixEstCredito: TAction;
    actRelClientes: TAction;
    actRelGrupos: TAction;
    actListaCotaGrupo: TAction;
    actRelAtrasadas: TAction;
    actRelCorrDiversas: TAction;
    actEmissaoSlip: TAction;
    actRelEmissaoNossoNum: TAction;
    Importar1: TMenuItem;
    actBaixaEstorno2: TAction;
    btnBancos: TToolButton;
    btnClientes: TToolButton;
    ToolButton6: TToolButton;
    btnGrupos: TToolButton;
    btnModelos: TToolButton;
    bntLances: TToolButton;
    ToolButton10: TToolButton;
    btnVendas: TToolButton;
    abelas1: TMenuItem;
    Modalidades1: TMenuItem;
    mnuOpenCaixaItem: TMenuItem;
    FechamentodeCaixa1: TMenuItem;
    actNatureza: TAction;
    mnuNaturezasSubItem: TMenuItem;
    dataSetAux: TSQLDataSet;
    dataSetAux2: TSQLDataSet;
    mnuEntradaseSaidasItem: TMenuItem;
    actRelMovCaixa: TAction;
    mnuFinanceiroItem: TMenuItem;
    mnu2ViaEntradasSaidasSubItem: TMenuItem;
    N2MovimentodeCaixa1: TMenuItem;
    actRel2ViaEntSaida: TAction;
    BaixaAutomtica1: TMenuItem;
    mnuSituaodoCaixaItem: TMenuItem;
    actSituacaoCaixa: TAction;
    Gerencial1: TMenuItem;
    ContasRecebidas1: TMenuItem;
    mnuContasAtrasadasSubItem: TMenuItem;
    mnuParcelasaVencerItem: TMenuItem;
    Timer1: TTimer;
    N1: TMenuItem;
    mnuReciboItem: TMenuItem;
    actRecibo: TAction;
    mnuListaClientesSPCItem: TMenuItem;
    N3: TMenuItem;
    mnuBackupBancodeDadosItem: TMenuItem;
    N4: TMenuItem;
    mnuRelMovEntradaSaida: TMenuItem;
    mnuGerarBoletoAvulsoSubItem: TMenuItem;
    JvNavPaneToolPanel1: TJvNavPaneToolPanel;
    Panel2: TPanel;
    edtDTMOVI: TDateEdit;
    ParcelasEstornadas1: TMenuItem;
    DBGrid1: TDBGrid;
    dsDados: TDataSource;
    actRel_Fin_TotalporGrupo: TAction;
    N5: TMenuItem;
    mnuTotalRecebidoporGrupoItem: TMenuItem;
    actFornecedores: TAction;
    Fornecedores1: TMenuItem;
    actIncContaPagar: TAction;
    mnuContasaPagarItem: TMenuItem;
    mnuInclusodeContaaPagarSubItem: TMenuItem;
    mnuManutenodeContaaPagarSubItem: TMenuItem;
    actManuContaPagar: TAction;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure dm(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem2Click(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actBancosExecute(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actGruposExecute(Sender: TObject);
    procedure actModelosExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actBaixaEstornoExecute(Sender: TObject);
    procedure actLancamLanceExecute(Sender: TObject);
    procedure actMovContemplacaoExecute(Sender: TObject);
    procedure actMovAlienacaoExecute(Sender: TObject);
    procedure actMovDesalienacaoExecute(Sender: TObject);
    procedure actMovCorrecaoPCExecute(Sender: TObject);
    procedure actBaixaAutoExecute(Sender: TObject);
    procedure actCaixaBaixaEstornoLanceExecute(Sender: TObject);
    procedure actCxBaixEstCreditoExecute(Sender: TObject);
    procedure actRelClientesExecute(Sender: TObject);
    procedure actRelGruposExecute(Sender: TObject);
    procedure actListaCotaGrupoExecute(Sender: TObject);
    procedure actRelAtrasadasExecute(Sender: TObject);
    procedure actRelCorrDiversasExecute(Sender: TObject);
    procedure actEmissaoSlipExecute(Sender: TObject);
    procedure mnuConfiguracoesItemClick(Sender: TObject);
    procedure mnuUsuariosItemClick(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure axaAdeso1Click(Sender: TObject);
    procedure actBaixaEstorno2Execute(Sender: TObject);
    procedure Modalidades1Click(Sender: TObject);
    procedure mnuOpenCaixaItemClick(Sender: TObject);
    procedure FechamentodeCaixa1Click(Sender: TObject);
    procedure actNaturezaExecute(Sender: TObject);
    procedure mnuEntradaseSaidasItemClick(Sender: TObject);
    procedure actRelMovCaixaExecute(Sender: TObject);
    procedure actRel2ViaEntSaidaExecute(Sender: TObject);
    procedure actSituacaoCaixaExecute(Sender: TObject);
    procedure ContasRecebidas1Click(Sender: TObject);
    procedure mnuContasAtrasadasSubItemClick(Sender: TObject);
    procedure mnuParcelasaVencerItemClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure actReciboExecute(Sender: TObject);
    procedure mnuListaClientesSPCItemClick(Sender: TObject);
    procedure mnuBackupBancodeDadosItemClick(Sender: TObject);
    procedure mnuRelMovEntradaSaidaClick(Sender: TObject);
    procedure mnuGerarBoletoAvulsoSubItemClick(Sender: TObject);
    procedure edtDTMOVIKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTMOVIExit(Sender: TObject);
    procedure JvNavPaneToolPanel1Close(Sender: TObject);
    procedure edtDTMOVIChange(Sender: TObject);
    procedure ParcelasEstornadas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRel_Fin_TotalporGrupoExecute(Sender: TObject);
    procedure actFornecedoresExecute(Sender: TObject);
    procedure actIncContaPagarExecute(Sender: TObject);
    procedure actManuContaPagarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure IMAGEM_LOGO;
    procedure DisplayHint(Sender: TObject);
    procedure SetJustify(Menu: TMenu; MenuItem: TMenuItem; Justify: Byte);
    function ForceForegroundWindow(wnd: THandle): Boolean;
    procedure DataSistema;
    procedure tratabotoes;
    procedure MensagemCaixa();
    Procedure Resumo(aDataMovimento : TDatetime);
    Procedure Limpar_Resumo();
  public
    { Public declarations }
    Procedure AbreForm(aClasseForm: TComponentClass; aForm : TForm);
    procedure VerificaOpcoesMenu(const menu : TMenuItem);
    procedure VerificaAcessoSubMenu(const menu : TMenuItem);
    Function  VerificarAcesso(const codMenu : Integer) : Boolean;
    Procedure Limpar_Acessos;
  end;

const
     ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
     ScreenHeight: LongInt = 600;
     M_USERMASTER = '000';
     M_SNMASTER   = 'ADMG2';

var
  frmMain: TfrmMain;
  M_CDUSUA, M_NMUSUA, M_NMEMPR, M_FLSUPE, M_SNATUA, M_NMAQUI : String;
  M_FLARQU, M_FLLOGI : Boolean;
  M_FLMAST : Integer;
  codUsuario, codMenu : Integer;
  admin, autenticacao : Boolean;
  aNovo, aAlterar, aApagar, M_NMPAST : string;

implementation

uses uFuncoes, uFrmCadBancos, uFrmCadClientes, uFrmCadGrupos,
  uFrmCadModelos, uFrmConfiguracoes, uFrmVendas, uFrmBaixaEstornoPC,
  uFrmLancamentoLance, uFrmMovCadContemplacao, uFrmRelClientes,
  uFrmEmissaoSlipBanc, uFrmMovAlienacao, uFrmSobre, uFrmCadUsuario,
  uFrmMovCorrecaoParcelas, udmRelatorios, DBClient, udmAdmDados, uLogon,
  uFrmImporta, uFrmRelAtrasadasGruposCotas, uFrmRelAtrasadasGruposCotas2,
  uFrmCaixaBaixaEstornarLances, uFrmRelCotaGrupo,
  uFrmRelCorrespondenciasDiversas, uFrmCadModalidades, uFrmAbrirCaixa,
  uFrmFecharCaixa, uFrmCadNaturezas, uFrmEntradasSaidas, uFrmRelMovCaixa,
  uFrmMovDesalienacao, uFrmRel2ViaEntSaida, uFrmBaixaBanco,
  uFrmSituacaoCaixa, uFrmContasRecebidas, uFrmRelAtrasadas, uFrmRelAvencer,
  uFrmRecibo, uFrmBackup, uFrmRelMovCaixaDiario, uFrmGeraBoletoAvulso,
  uFrmRelParcelasEstornadas, uFrmRelTotalRecGrupo, uFrmCadFornecedores,
  uFrmIncContasPagar, Math, uFrmManutContasPagarNovo;
  {uFrmSobre, uFrmCadBancos, uFrmCadClientes, uFrmCadGrupos,
  uFrmCadModelos, uFrmVendas, uFrmBaixaEstornoPC, uFrmLancamentoLance,
  uFrmMovCadContemplacao, uFrmMovAlienacao, uFrmMovDesalienacao,
  uFrmMovCorrecaoParcelas, uFrmBaixaAutomatica,
  uFrmCaixaBaixaEstornarLances, uFrmCxBaixaEstornoCredito, uFrmRelClientes,
  uFrmRelGrupos, uFrmRelCotasGrupos, uFrmRelAtrasadasGruposCotas,
  uFrmRelCorrespondenciasDiversas, uFrmEmissaoSlipBanc, uFrmConfiguracoes,
  uFrmCadUsuario, uFrmImporta, uFrmTransicao;}

//uses

{$R *.dfm}

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     CanClose := False;
     If Application.MessageBox('Sair do Programa AdmConsocio?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
          CanClose := True;
          Application.Terminate;
     End;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
     if (JvNavPaneToolPanel1.Visible) Then
         imgLogon.Left := 150
     Else
         imgLogon.Left := (frmMain.Width Div 2) - (imgLogon.Width Div 2);
     imgLogon.Top  := (frmMain.Height Div 2) - (imgLogon.Height Div 2 + Info.Height);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
Var
	i : integer;
begin
  SetJustify(mmPrincipal,mnuAjuda,1);
	with dataSetAux do
	begin
		close;
		CommandText :=
			'Update MENUS Set MEN_EXISTE = '+QuotedStr('F');
		ExecSQL(True);
	End;

	for i := 0 to Pred(mmPrincipal.Items.Count) do
		VerificaOpcoesMenu(mmPrincipal.Items[i]);

	with dataSetAux do
	begin
		close;
		CommandText :=
			'Delete from MENUS where MEN_EXISTE = '+QuotedStr('F');
		ExecSQL(True);
	End;
  //
      DecimalSeparator  := ',';        // determina o separador decimal de números.
      ThousandSeparator := '.';       // define o separador de milhar de um número.
      //
      scaled := true;
      if (screen.width <> ScreenWidth) then
      begin
            height := longint(height) * longint(screen.height) DIV ScreenHeight;
            width := longint(width) * longint(screen.width) DIV ScreenWidth;
            scaleBy(screen.width, ScreenWidth);
      end;
      //
      if FileExists(ExtractFilePath( Application.ExeName) +'logo2.jpeg') Then
           imgLogon.Picture.LoadFromFile(ExtractFilePath( Application.ExeName +'logo2.jpeg'));

      //
      //dmDados.Parametros;
      Application.OnHint := DisplayHint;
      SetJustify(mmPrincipal,mnuAjuda,1);
      //
      if (JvNavPaneToolPanel1.Visible) Then
          imgLogon.Left := 150
      Else
          imgLogon.Left := (frmMain.Width Div 2) - (imgLogon.Width Div 2);
      imgLogon.Top  := (frmMain.Height Div 2) - (imgLogon.Height Div 2 + Info.Height);
      //
      M_NMPAST := ExtractFilePath( Application.ExeName )+'retorno\Processados';
      Timer1.Enabled := True;
End;

procedure TfrmMain.actSairExecute(Sender: TObject);
begin
     If Application.MessageBox('Sair do Programa AdmConsocio?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          Application.Terminate;
end;

procedure TfrmMain.IMAGEM_LOGO;
begin
    If FileExists(ExtractFilePath( Application.ExeName )+'logo2.jpg') Then
        imgLogon.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'logo2.jpg');
end;

procedure TfrmMain.dm(Sender: TObject);
Var
    i, x : integer;
begin
    //
   {  If (M_FLLOGI = False) Then
     begin
         Try
             Application.CreateForm(TfrmLogon, frmLogon);
             frmLogon.ShowModal;
         Finally
             if not (uLogon.M_FLUSUA) Then
                x := 0;
             //
             frmLogon.Free;
         End;
     End; }
    //
    If (x = 0) Then
       Exit;
    // Barra de status
    Info.Panels[0].Text := uFuncoes.StrZero(M_CDUSUA,3) + ' - '+ M_NMUSUA;
    //
    JvNavPaneToolPanel1.Visible := False;
    IMAGEM_LOGO;
    //
     if (admin) OR (StrtoInt(M_CDUSUA) = 1) Then
      begin
          if (dmAdmDados.GetVerResumo(StrtoInt(M_CDUSUA))) Then
          begin
               edtDTMOVI.Date := Date();
               Resumo(edtDTMOVI.Date);
          End;
          MensagemCaixa;
          frmMain.SetFocus;
          Exit;
      End
     Else
        for i := 0 to Pred(mmPrincipal.Items.Count) do
           VerificaAcessoSubMenu(mmPrincipal.Items[i]);
     //
    // mnuRelMovEntradaSaida.Enabled := true;
     //
     tratabotoes;
     //
     MensagemCaixa;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Timer1.Enabled := False;
     //
     Action := caFree;
end;

procedure TfrmMain.AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
      Application.CreateForm(aClasseForm, aForm);
      try
          aForm.ShowModal;
      Finally
          aForm.Free;
      End;
end;

procedure TfrmMain.MenuItem2Click(Sender: TObject);
begin
     If Application.MessageBox('Sair do Programa?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
            Application.Terminate;
end;

procedure TfrmMain.DisplayHint(Sender: TObject);
begin
     info.Panels[1].Text := Application.Hint;
end;

procedure TfrmMain.SetJustify(Menu: TMenu; MenuItem: TMenuItem;
  Justify: Byte);
var
    ItemInfo: TMenuItemInfo;
    Buffer: array[0..80] of Char;
begin
     ItemInfo.cbSize := SizeOf(TMenuItemInfo);
     ItemInfo.fMask := MIIM_TYPE;
     ItemInfo.dwTypeData := Buffer;
     ItemInfo.cch := SizeOf(Buffer);
     //
     GetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
     if Justify = 1 then
        ItemInfo.fType := ItemInfo.fType or MFT_RIGHTJUSTIFY;
     SetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
end;

function TfrmMain.ForceForegroundWindow(wnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
  if IsIconic(wnd) then
    ShowWindow(wnd, SW_RESTORE);

  if GetForegroundWindow = wnd then
    Result := True
  else
  begin
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
      Result := False;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadPRocessId(wnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(wnd);
        SetForegroundWindow(wnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = wnd);
      end;
      if not Result then
      begin
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(wnd);
        SetForegroundWindow(Wnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
          TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(wnd);
      SetForegroundWindow(wnd);
    end;

    Result := (GetForegroundWindow = wnd);
  end;
end;

procedure TfrmMain.DataSistema;
begin

end;

procedure TfrmMain.actSobreExecute(Sender: TObject);
begin
     AbreForm(TfrmSobre, frmSobre);
end;

procedure TfrmMain.actBancosExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadBancos, frmCadBancos);
end;

procedure TfrmMain.actClientesExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TfrmMain.actGruposExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TfrmMain.actModelosExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadModelos, frmCadModelos);
end;

procedure TfrmMain.actVendasExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmVendas, frmVendas);
end;

procedure TfrmMain.actBaixaEstorno2Execute(Sender: TObject);
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
         //
         frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
         try
             uFrmBaixaEstornoPC.M_NRFROM := 2;
             frmBaixaEstornoParcelas.ShowModal;
         finally
             frmBaixaEstornoParcelas.Release;
             frmBaixaEstornoParcelas := nil;
             //
         end;
end;

procedure TfrmMain.actBaixaEstornoExecute(Sender: TObject);
begin
     //AbreForm(TfrmBaixaEstornoParcelas, frmBaixaEstornoParcelas);
     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 1;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TfrmMain.actLancamLanceExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmLancamentoLance, frmLancamentoLance);
end;

procedure TfrmMain.actMovContemplacaoExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
    AbreForm(TfrmCadContemplacao, frmCadContemplacao)
end;

procedure TfrmMain.actMovAlienacaoExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmMovAlienacao, frmMovAlienacao);
end;

procedure TfrmMain.actMovDesalienacaoExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmMovDesalienacao, frmMovDesalienacao);
end;

procedure TfrmMain.actMovCorrecaoPCExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCorrecaoParcelas, frmCorrecaoParcelas);
end;

procedure TfrmMain.actBaixaAutoExecute(Sender: TObject);
begin
     //
     uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsInteger, M_CDUSUA);
     //
     If (dmAdmDados.cdsUsuarios.FieldByName('USU_ADMIN').AsString <> 'T') Then
           raise Exception.Create('Usuário não tem permissão para este módulo.');
     //
     If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'N')
         OR uFuncoes.Empty(dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString) Then
           raise Exception.Create('Usuário não é caixa!!!');
     //
     if NOT (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(M_CDUSUA))) Then

          raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
     //
     AbreForm(TfrmBaixaBanco, frmBaixaBanco);
end;

procedure TfrmMain.actCaixaBaixaEstornoLanceExecute(Sender: TObject);
begin
     //
     uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsInteger, M_CDUSUA);
     //
     If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'N')
         OR uFuncoes.Empty(dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString) Then
           raise Exception.Create('Usuário não é caixa!!!');
     //
     if NOT (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(M_CDUSUA))) Then
          raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
     //
     AbreForm(TFrmCaixaBaixaEstornarLances, FrmCaixaBaixaEstornarLances);
end;

procedure TfrmMain.actCxBaixEstCreditoExecute(Sender: TObject);
begin
   //  AbreForm(TfrmCaixaBaixaEstornoCredito, frmCaixaBaixaEstornoCredito);
end;

procedure TfrmMain.actRelClientesExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelClientes, frmRelClientes);
end;

procedure TfrmMain.actRelGruposExecute(Sender: TObject);
begin
      try
           uFuncoes.RefreshCDS(dmRelatorios.cdsListaGrupo);
            //
           with dmRelatorios.ppRepListaGrupo do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    dmRelatorios.ppImage3.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 PrintReport;
            end;
      finally
           //dmRelatorios.Free;
      end;
end;

procedure TfrmMain.actListaCotaGrupoExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelCotaGrupo, frmRelCotaGrupo);
end;

procedure TfrmMain.actRelAtrasadasExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelAtrasadasGruposCotas2, frmRelAtrasadasGruposCotas2);
end;

procedure TfrmMain.actRelCorrDiversasExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelCorresDiversas, frmRelCorresDiversas);
end;

procedure TfrmMain.actEmissaoSlipExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
    AbreForm(TFrmEmissaoSlipBanc, FrmEmissaoSlipBanc);
end;

procedure TfrmMain.mnuConfiguracoesItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmConfig, frmConfig);
end;

procedure TfrmMain.mnuUsuariosItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadUsuarios, frmCadUsuarios);
end;

procedure TfrmMain.Importar1Click(Sender: TObject);
begin
    AbreForm(TfrmImporta, frmImporta);
end;

procedure TfrmMain.axaAdeso1Click(Sender: TObject);
begin
 //    AbreForm(TfrmTransicao, frmTransicao);
end;

procedure TfrmMain.Modalidades1Click(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadModalidade, frmCadModalidade);
end;

procedure TfrmMain.mnuOpenCaixaItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //AbreForm(TfrmOpenCaixa, frmOpenCaixa);
      Application.CreateForm(TfrmOpenCaixa, frmOpenCaixa);
      try
          uFrmAbrirCaixa.M_TPFORM := 1;
          frmOpenCaixa.ShowModal;
      Finally
          frmOpenCaixa.Free;
      End;
      //
      MensagemCaixa;
end;

procedure TfrmMain.FechamentodeCaixa1Click(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmFecharCaixa, frmFecharCaixa);
     //
     MensagemCaixa;
end;

procedure TfrmMain.actNaturezaExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadaNaturezas, frmCadaNaturezas);
end;

procedure TfrmMain.Limpar_Acessos;
begin
     aNovo    := '';
     aAlterar := '';
     aApagar  := '';
end;

procedure TfrmMain.VerificaAcessoSubMenu(const menu: TMenuItem);
Var
   i : Integer;
begin
     if not VerificarAcesso(retornarCodMenu(
       RetirarCarecterAtalho(menu.Caption))) then
          menu.Enabled := False;
     //
     for i := 0 to Pred(menu.Count) do
      VerificaAcessoSubMenu(menu.Items[i]);
end;

procedure TfrmMain.VerificaOpcoesMenu(const menu: TMenuItem);
var
	i, seq, codMenu, codMenuPai : Integer;
begin
	with dataSetAux do
	begin
		close;
		CommandText :=
			'Select MEN_CODIGO from MENUS Where MEN_NOME = '+
                        QuotedStr(Trim(RetirarCarecterAtalho(menu.Caption)));
		Open;
		if IsEmpty Then
		begin
			seq := retornaProximoCodigoMenu;
			if Assigned(menu.Parent) and
                           (menu.Parent.Caption <> '') Then
			begin
				codMenuPai := retornarCodMenu(Trim(
				RetirarCarecterAtalho(menu.Parent.Caption)));
				Close;
				CommandText := 'INSERT INTO MENUS (MEN_CODIGO, MEN_NOME, '+
					'MEN_CODIGOPAI, MEN_EXISTE) VALUES ('+
					InttoStr(seq) +', '+
					QuotedStr(Trim(RetirarCarecterAtalho(menu.Caption))) + ', '+
					intToStr(codMenuPai) + ', '+QuotedStr('T')+')';
			End
			else
			begin
				Close;
				CommandText := 'INSERT INTO MENUS (MEN_CODIGO, MEN_NOME, '+
					'MEN_EXISTE) VALUES ('+
					InttoStr(seq) +', '+
					QuotedStr(Trim(RetirarCarecterAtalho(menu.Caption))) +
					', '+QuotedStr('T')+')';
			end;
			ExecSQL(True);
		End
		Else
		begin
			codMenu := Fields[0].AsInteger;
			close;
			CommandText :=
				'UpDate MENUS SET MEN_EXISTE = '+QuotedStr('T')+
				'WHERE MEN_CODIGO = '+ IntToStr(codMenu);
			ExecSQL(True);
		End;

	End; // fim-with	dataSetAux
	for i := 0 to Pred(menu.Count) do
		verificaOpcoesMenu(menu.Items[i]);
end;

function TfrmMain.VerificarAcesso(const codMenu: Integer): Boolean;
var
   Acesso : string;
begin
      Acesso := dmAdmDados.Verificar_Acesso_Menu(StrToInt(M_CDUSUA), codMenu);
      //
      if (Acesso = 'S') or
           (codMenu = -1) Then
           Result := true
      Else
           Result := False;
end;

procedure TfrmMain.mnuEntradaseSaidasItemClick(Sender: TObject);
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
      //
        with TfrmEntradasSaidaCaixa.create(self) do
        try
            uFrmEntradasSaidas.M_CDCAIX := StrtoInt(M_CDUSUA);
            showmodal;
        finally
             free;
        end;
end;

procedure TfrmMain.actRelMovCaixaExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelMovCaixa, frmRelMovCaixa);
end;

procedure TfrmMain.actRel2ViaEntSaidaExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelMovEntradaSaida, frmRelMovEntradaSaida);
end;

procedure TfrmMain.actSituacaoCaixaExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmSituacaoCaixa, frmSituacaoCaixa);
end;

procedure TfrmMain.tratabotoes;
begin
     btnBancos.Enabled   := mnuBancoItem.Enabled;
     btnClientes.Enabled := mnuClienteItem.Enabled;
     btnGrupos.Enabled   := mnuGruposItem.Enabled;
     btnModelos.Enabled  := mnuModelosItem.Enabled;
     btnVendas.Enabled   := mnuVendasItem.Enabled;
     bntLances.Enabled   := mnuRegistroLanceItem.Enabled;
end;

procedure TfrmMain.ContasRecebidas1Click(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelContasRecebidas, frmRelContasRecebidas);
end;

procedure TfrmMain.mnuContasAtrasadasSubItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelAtrasadas, frmRelAtrasadas);
end;

procedure TfrmMain.mnuParcelasaVencerItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelPCVencer, frmRelPCVencer);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
      Info.Panels[3].Text := 'Data : '+DatetoStr(Date()) + ' - Hora : '+TimetoStr(Time());
end;

procedure TfrmMain.actReciboExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRecibos, frmRecibos);
end;

procedure TfrmMain.MensagemCaixa;
begin
     uFuncoes.FilterCDS(dmAdmDados.cdsUsuarios, fsInteger, M_CDUSUA);
     if not (dmAdmDados.cdsUsuarios.IsEmpty) Then
      begin
           If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'S') Then
               if (dmAdmDados.Testa_Caixa(StrtoInt(M_CDUSUA), 'A')) Then
                   Info.Panels[2].Text := 'Caixa aberto para este usuário'
               Else
                   Info.Panels[2].Text := 'Caixa fechado para este usuário';
      End;
end;



procedure TfrmMain.mnuListaClientesSPCItemClick(Sender: TObject);
begin
      with dmRelatorios, cdsClienteSPC do
        begin
              Close;
              Params.ParamByName('pSITUACAO').AsString := 'S';
              Open;
              //
              If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                   ppImage5.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
              //
              ppRepSPC.PrintReport;
        End;
end;

procedure TfrmMain.mnuBackupBancodeDadosItemClick(Sender: TObject);
begin
     dmAdmDados.sqlConn.Connected := False;
     AbreForm(TfrmBackup, frmBackup);
     //
     dmAdmDados.sqlConn.Connected := True;
end;

procedure TfrmMain.mnuRelMovEntradaSaidaClick(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmRelMovCaixaDiario, frmRelMovCaixaDiario);
end;


procedure TfrmMain.mnuGerarBoletoAvulsoSubItemClick(Sender: TObject);
begin
     if Sender is TMenuItem then
          codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmBoletoAvulso, frmBoletoAvulso);
end;

procedure TfrmMain.Resumo(aDataMovimento : TDatetime);
Var
    M_RECCAI, M_RECBAN, M_TORECE : Double;
    M_QTRECA, M_QTREBA, M_QTRECE : Integer;
    //
    M_TOENTR, M_TOSAID, M_TOENSA : Double;
    M_QTENTR, M_QTSAID, M_QTENSA : Integer;
    //
    M_CTVEND, M_QTESTO, iCodigo : Integer;
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsResumo);
     //
     dmAdmDados.cdsResumo.EmptyDataSet;
     iCodigo := 1;
     //
     M_RECCAI := 0; M_RECBAN := 0; M_TORECE  := 0;
     M_QTRECA := 0; M_QTREBA := 0; M_QTRECE  := 0;
     M_QTESTO := 0;
     //
     M_RECCAI := dmAdmDados.GetTotalContasRecebidaPeriodo(aDataMovimento,aDataMovimento, 'C');
     M_RECBAN := dmAdmDados.GetTotalContasRecebidaPeriodo(aDataMovimento,aDataMovimento, 'B');
     M_TORECE  := M_RECCAI + M_RECBAN;
     //
     M_QTRECA := dmAdmDados.GetQuantidadeContasRecebidaPeriodo(aDataMovimento,aDataMovimento, 'C');
     M_QTREBA := dmAdmDados.GetQuantidadeContasRecebidaPeriodo(aDataMovimento,aDataMovimento, 'B');
     M_QTRECE := M_QTRECA + M_QTREBA;
     //
     M_TOENTR := dmAdmDados.GetTotalEntradasSaidasCaixaPeriodo(aDataMovimento,aDataMovimento, 'E');
     M_TOSAID := dmAdmDados.GetTotalEntradasSaidasCaixaPeriodo(aDataMovimento,aDataMovimento, 'S');
     M_TOENSA := M_TOENTR + M_TOSAID;
     //
     M_QTENTR := dmAdmDados.GetQuantEntradasSaidasCaixaPeriodo(aDataMovimento,aDataMovimento, 'E');
     M_QTSAID := dmAdmDados.GetQuantEntradasSaidasCaixaPeriodo(aDataMovimento,aDataMovimento, 'S');
     M_QTENSA := M_QTENTR + M_QTSAID;
     //
     M_QTESTO := dmAdmDados.GetQuantEntradasSaidasCaixaPeriodo(aDataMovimento,aDataMovimento, 'T');
     M_CTVEND := dmAdmDados.GetQuantCotasVendidaPeriodo(aDataMovimento,aDataMovimento, 'A');
     //
     Limpar_Resumo;
     //mmoResumo.Lines.clear;
     {mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('RECEBIMENTOS PC CAIXA: ' + FormatFloat('###,##0.#0', M_RECCAI));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT.RECEBIMENTO CAIXA.: ' + FormatFloat('###,##0',    M_QTRECA));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('RECEBIMENTOS BANCO...: ' + FormatFloat('###,##0.#0', M_RECBAN));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT.RECEBIMENTO BANCO.: ' + FormatFloat('###,##0',    M_QTREBA));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('TOTAL RECEBIMENTO....: ' + FormatFloat('###,##0.#0', M_TORECE));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT.RECEBIMENTO.......: ' + FormatFloat('###,##0',    M_QTRECE));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT.PC ESTORNADAS.....: ' + FormatFloat('###,##0',    M_QTESTO));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('ENTRADAS DE CAIXA....: ' + FormatFloat('###,##0.#0', M_TOENTR));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT. ENTRADAS CAIXA...: ' + FormatFloat('###,##0', M_QTENTR));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('SAÍDA DE CAIXA.......: ' + FormatFloat('###,##0.#0', M_TOSAID));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('QT. SAÍDA DE CAIXA...: ' + FormatFloat('###,##0', M_QTSAID));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('TOTAL ENT/SAI CAIXA..: ' + FormatFloat('###,##0.#0', M_TOENSA));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('TOTAL EM CAIXA.......: ' + FormatFloat('###,##0.#0',(M_RECCAI + M_TOENTR) - M_TOSAID));
     mmoResumo.Lines.Add('');
     mmoResumo.Lines.Add('VENDAS DE COTAS......: ' + FormatFloat('###,##0', M_CTVEND));
     mmoResumo.Lines.Add('');}
     //
     With dmAdmDados.cdsResumo do
      begin
           DisableControls;
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'COTAS VENDIDAS';
           FieldByName('CDS_VALOR').AsFloat      := M_CTVEND;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'RECEBIMENTOS PC CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_RECCAI;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT.RECEBIMENTO CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_QTRECA;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'RECEBIMENTOS BANCO';
           FieldByName('CDS_VALOR').AsFloat      := M_RECBAN;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT.RECEBIMENTO BANCO';
           FieldByName('CDS_VALOR').AsFloat      := M_QTREBA;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'TOTAL RECEBIMENTO';
           FieldByName('CDS_VALOR').AsFloat      := M_TORECE;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT.RECEBIMENTO';
           FieldByName('CDS_VALOR').AsFloat      := M_QTRECE;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT.PC ESTORNADAS';
           FieldByName('CDS_VALOR').AsFloat      := M_QTESTO;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'ENTRADAS DE CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_TOENTR;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT. ENTRADAS CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_QTENTR;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'SAÍDAS DE CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_TOSAID;
           iCodigo := iCodigo + 1;
           post;
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'QT. SAÍDAS DE CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_QTSAID;
           iCodigo := iCodigo + 1;
           post;
           //
           {Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'TOTAL ENTRADAS/SAÍDAS DE CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := M_TOENSA;
           iCodigo := iCodigo + 1;
           post;}
           //
           Append;
           FieldByName('CDS_CODIGO').AsInteger   := iCodigo;
           FieldByName('CDS_DESCRICAO').AsString := 'TOTAL EM CAIXA';
           FieldByName('CDS_VALOR').AsFloat      := (M_RECCAI + M_TOENTR) - M_TOSAID;
           iCodigo := iCodigo + 1;
           post;
           //
           First;
           EnableControls;
      End;
     //
     JvNavPaneToolPanel1.Visible :=  True;
end;

procedure TfrmMain.edtDTMOVIKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTMOVI.Text)) Then
      begin
          key := #0;
          edtDTMOVI.Date := StrtoDate(edtDTMOVI.text);
          Resumo(edtDTMOVI.date);
      End;
end;

procedure TfrmMain.edtDTMOVIExit(Sender: TObject);
begin
    if not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTMOVI.Text)) Then
    begin
         Try
               edtDTMOVI.Date := StrtoDate(edtDTMOVI.text);
         Except
              on EConvertError do
              begin
                   ShowMessage('Data Inválida!');
                   edtDTMOVI.Date := Date();
                   edtDTMOVI.SetFocus;
              End;
         End;
    End;
end;

procedure TfrmMain.JvNavPaneToolPanel1Close(Sender: TObject);
begin
      JvNavPaneToolPanel1.Visible := False;
end;

procedure TfrmMain.Limpar_Resumo;
begin
    //mmoResumo.Lines.Clear;
    if (dmAdmDados.cdsResumo.Active) Then
        dmAdmDados.cdsResumo.EmptyDataSet;
end;

procedure TfrmMain.edtDTMOVIChange(Sender: TObject);
begin
     if uFuncoes.Empty(uFuncoes.RemoveChar(edtDTMOVI.Text)) Then
          Limpar_Resumo;
end;

procedure TfrmMain.ParcelasEstornadas1Click(Sender: TObject);
begin
      AbreForm(TFrmRelParcelaEstornadas, FrmRelParcelaEstornadas);
end;

procedure TfrmMain.FormShow(Sender: TObject);
Var
    i, x : integer;
begin
    //
   {  If (M_FLLOGI = False) Then
     begin
         Try
             Application.CreateForm(TfrmLogon, frmLogon);
             frmLogon.ShowModal;
         Finally
             if not (uLogon.M_FLUSUA) Then
                x := 0;
             //
             frmLogon.Free;
         End;
     End; }
    //
    If (x = 0) Then
       Exit;
    // Barra de status
    Info.Panels[0].Text := uFuncoes.StrZero(M_CDUSUA,3) + ' - '+ M_NMUSUA;
    //
    IMAGEM_LOGO;
    //
    JvNavPaneToolPanel1.Visible := false;
     if (admin) OR (StrtoInt(M_CDUSUA) = 1) Then
      begin
          if (dmAdmDados.GetVerResumo(StrtoInt(M_CDUSUA))) Then
          begin
                WindowState := wsMaximized;
                edtDTMOVI.Date := date();
                Resumo( edtDTMOVI.Date);
                JvNavPaneToolPanel1.Visible := true;
          End;
          MensagemCaixa;
          Exit;
      End
     Else
        for i := 0 to Pred(mmPrincipal.Items.Count) do
           VerificaAcessoSubMenu(mmPrincipal.Items[i]);
     //
    // mnuRelMovEntradaSaida.Enabled := true;
     //
     tratabotoes;
     //
     MensagemCaixa; 
end;

procedure TfrmMain.actRel_Fin_TotalporGrupoExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TFrmRelTotalRecGrupo, FrmRelTotalRecGrupo);
end;

procedure TfrmMain.actFornecedoresExecute(Sender: TObject);
begin
    if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TfrmCadFornecedores, frmCadFornecedores);
end;

procedure TfrmMain.actIncContaPagarExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
      Application.CreateForm(TFrmIncContasPagar, FrmIncContasPagar);
      Try
           uFrmIncContasPagar.FrmIncContasPagar.iOpcao := 2;   //
           FrmIncContasPagar.ShowModal;
      Finally
           FrmIncContasPagar.Free;
      End;
      //AbreForm(TFrmIncContasPagar, FrmIncContasPagar);
end;

procedure TfrmMain.actManuContaPagarExecute(Sender: TObject);
begin
     if Sender is TMenuItem then
         codMenu := retornarCodMenu(RetirarCarecterAtalho(
             ( Sender as TMenuItem).Caption));
     //
     dmAdmDados.Verificar_Direito_Acesso(Strtoint(M_CDUSUA), codMenu);
     //
     AbreForm(TFrmManutContasPagarNovo, FrmManutContasPagarNovo);
end;

end.
