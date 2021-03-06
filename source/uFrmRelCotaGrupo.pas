unit uFrmRelCotaGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl, ppVar, RpCon,
  RpConDS, RpBase, RpFiler, RpDefine, RpRave, Mask, ToolEdit;

type
  TfrmRelCotaGrupo = class(TfrmModRelatorio)
    lblConsultar: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    rbContemplacao: TRadioGroup;
    rbSituacao: TRadioGroup;
    dstLista: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsLista: TClientDataSet;
    dsLista: TDataSource;
    ppRepListaGrupos: TppReport;
    ppDBPLista: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    lblGrupo: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    cdsListaCOT_NRVENDA: TIntegerField;
    cdsListaCOT_CDGRUPO: TIntegerField;
    cdsListaCOT_NRCOTA: TIntegerField;
    cdsListaCLI_NOME: TStringField;
    cdsListaCOT_CDCLIE: TIntegerField;
    cdsListaCOT_PLANO: TIntegerField;
    cdsListaCOT_POSICAO: TStringField;
    cdsListaCOT_VALCRE: TFMTBCDField;
    cdsListaCOT_VALACERTO: TFMTBCDField;
    cdsListaCOT_FLCONTEMPLADO: TStringField;
    cdsListaCOT_VALCOTA: TFMTBCDField;
    cdsListaCOT_FUNDORES: TFMTBCDField;
    cdsListaCOT_TAXA_ADM: TFMTBCDField;
    cdsListaCOT_DTCONTEMPLACAO: TDateField;
    cdsListaCOT_ASSEB_CONTEMP: TIntegerField;
    cdsListaCLI_NRFONE: TStringField;
    cdsListaCLI_ENDERECO: TStringField;
    cdsListaCLI_NUMERO: TIntegerField;
    cdsListaCLI_CIDADE: TStringField;
    cdsListaCLI_UFCLIE: TStringField;
    cdsListaFONE: TStringField;
    cdsListaSITUACAO: TStringField;
    cdsListaCONTEMPLADO: TStringField;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    cdsListaCLI_NUMCEP: TStringField;
    cdsListaCEP: TStringField;
    ppDBText14: TppDBText;
    lblSituacao: TppLabel;
    lblContem: TppLabel;
    cdsListaPARC_ATRASADAS: TIntegerField;
    cdsListaPARC_PAGAS: TIntegerField;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppTitleBand1: TppTitleBand;
    btnPreview: TBitBtn;
    RvProject1: TRvProject;
    RvNDRWriter1: TRvNDRWriter;
    RvDataSetConnection1: TRvDataSetConnection;
    cdsListaCOT_DTCONT: TDateField;
    edtData: TDateEdit;
    Label1: TLabel;
    edtDTFINA: TDateEdit;
    Label2: TLabel;
    cdsListaCOT_DTINATIVACAO: TDateField;
    cdsListaREC_VLCRED_CALC: TFloatField;
    cdsListaCOT_VALOR_RECEBER: TFMTBCDField;
    rbgCampo: TRadioGroup;
    cdsListaCOT_DTREATIVACAO: TDateField;
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtGrupoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cdsListaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtDataKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmRelCotaGrupo: TfrmRelCotaGrupo;

implementation

uses uFrmConsGrupos, uFuncoes, udmAdmDados, udmRelatorios, uDmPesquisas,
  uFrmAdmMain, untFrmPreview;

{$R *.dfm}

procedure TfrmRelCotaGrupo.spLocalizarGrupoClick(Sender: TObject);
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

procedure TfrmRelCotaGrupo.edtGrupoChange(Sender: TObject);
begin
  inherited;
      lblNomeGrupo.Caption := '';
      //
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';
          btnVisualizar.Enabled := False;
          //cdsConsulta.Close;
      End
      Else
      begin
          //Abrir_Cotas_Grupo(StrtoInt(edtGrupo.Text));
          btnVisualizar.Enabled := True;
      End;
end;

procedure TfrmRelCotaGrupo.edtGrupoKeyPress(Sender: TObject;
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

procedure TfrmRelCotaGrupo.edtGrupoExit(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.Text))) then
           begin
                edtGrupo.Clear;
                edtGrupo.SetFocus;
                raise Exception.Create('C�digo de grupo n�o cadastro.');
           end;
           //
           If uFuncoes.Empty(lblNomeGrupo.Caption) then
              lblNomeGrupo.Caption := dmAdmDados.GetNomeGrupo(StrtoInt(edtGrupo.Text));
      end;
end;

procedure TfrmRelCotaGrupo.FormShow(Sender: TObject);
begin
  inherited;
       lblNomeGrupo.Caption := '';
       btnVisualizar.Enabled := False;
end;

procedure TfrmRelCotaGrupo.btnVisualizarClick(Sender: TObject);
var
  stream : TMemoryStream;
  M_FLCONT, M_FLSITU, M_NMDESC, M_NMSITU, M_DECONT : String;
  M_DESC_DATA, M_NOME_CAMPO : String;
begin
      if not uFuncoes.Empty(edtGrupo.Text) Then
       begin
         btnVisualizar.Enabled := False;
         try
            Screen.Cursor := crHourGlass;
            //
            M_FLCONT := '';
            M_FLSITU := '';
            M_DECONT := 'Todas as Cota';
            //
            If (rbgCampo.ItemIndex = 0) Then
              M_NOME_CAMPO := 'C.COT_DTCONT';
            If (rbgCampo.ItemIndex = 1) Then
              M_NOME_CAMPO := 'C.COT_DTINATIVACAO';
            If (rbgCampo.ItemIndex = 2) Then
              M_NOME_CAMPO := 'C.COT_DTINATIVO_PAGO';
            If (rbgCampo.ItemIndex = 3) Then
              M_NOME_CAMPO := 'C.COT_DTREATIVACAO';
            //   SItua��o
            If (rbSituacao.ItemIndex = 0) Then
             Begin
                M_FLSITU := 'A';
                M_NMDESC := 'Ativo';
                M_DESC_DATA := 'Data Contrato : ';
             End;
            If (rbSituacao.ItemIndex = 1) Then
             Begin
                M_FLSITU := 'I';
                M_NMDESC := 'Inativo';
                M_DESC_DATA := 'Data Inativa��o : ';
             End;
            If (rbSituacao.ItemIndex = 2) Then
             Begin
                M_FLSITU := 'Q';
                M_NMDESC := 'Quita��o';
                M_DESC_DATA := 'Data Contrato : ';
             End;
            If (rbSituacao.ItemIndex = 3) Then
             Begin
                M_FLSITU := 'P';
                M_NMDESC := 'Inativo (Pago)';
                M_DESC_DATA := 'Data Inativa��o : ';
             End;
            If (rbSituacao.ItemIndex = 4) Then
             Begin
                M_FLSITU := 'V';
                M_NMDESC := 'Vendido';
                M_DESC_DATA := 'Data Contrato : ';
             End;
            If (rbSituacao.ItemIndex = 5) Then
             Begin
                M_FLSITU := 'R';
                M_NMDESC := 'Reativado';
                M_DESC_DATA := 'Data Reativa��o : ';
             End;
            If (rbSituacao.ItemIndex = 6) Then
             Begin
                M_FLSITU := 'M';
                M_NMDESC := 'Migrado';
                M_DESC_DATA := 'Data Contrato : ';
             End;
            // contempla��o
            If (rbContemplacao.ItemIndex = 0) Then
                M_FLCONT := 'S';
            If (rbContemplacao.ItemIndex = 1) Then
                M_FLCONT := 'N';
                 //
                 with cdsLista do
                  begin
                       Active := False;
                       CommandText := 'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, C.COT_CDCLIE, C.COT_DTCONT, C.COT_DTINATIVACAO, C.COT_DTREATIVACAO,  ';
                       CommandText := CommandText + 'C.COT_PLANO, C.COT_POSICAO, C.COT_VALCRE, C.COT_VALACERTO, ';
                       CommandText := CommandText + 'C.COT_FLCONTEMPLADO, C.COT_VALCOTA, C.COT_FUNDORES, ';
                       CommandText := CommandText + 'C.COT_TAXA_ADM, C.COT_DTCONTEMPLACAO, C.COT_ASSEB_CONTEMP, C.COT_VALOR_RECEBER, ';
                       CommandText := CommandText + 'CL.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO, CL.cli_cidade,  CL.CLI_UFCLIE, CL.CLI_NUMCEP ';
                       CommandText := CommandText + 'from COTAS C ';
                       CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
                       CommandText := CommandText + 'Where (C.COT_CDGRUPO = :pCDGRUPO) ';
                       // altera��o data contrato
                       If (rbSituacao.ItemIndex = 0) Then
                       begin
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' >= :pDATA)';
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' <= :pDTFINAL)';
                       End;
                       // Inativo
                       If (rbSituacao.ItemIndex = 1) Then
                       begin
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' >= :pDATA)';
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' <= :pDTFINAL)';
                       End;
                       // Inativo pago
                       If (rbSituacao.ItemIndex = 3) Then
                       begin
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' >= :pDATA)';
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' <= :pDTFINAL)';
                       End;
                       // Reativado
                       If (rbSituacao.ItemIndex = 5) Then
                       begin
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' >= :pDATA)';
                             If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                                CommandText := CommandText + ' and ('+M_NOME_CAMPO+' <= :pDTFINAL)';
                       End;
                       // situa��o
                       if not uFuncoes.Empty(M_FLSITU) Then
                          CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr(M_FLSITU)+')' ;
                       // contemplados
                       if not uFuncoes.Empty(M_FLCONT) Then
                          CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+QuotedStr(M_FLCONT)+')' ;
                       //
                       CommandText := CommandText + ' order by C.COT_CDGRUPO, C.COT_NRCOTA ';
                       //
                       Params[0].AsInteger := StrtoInt(edtGrupo.Text);
                       //
                       If (rbSituacao.ItemIndex = 0) Then
                       begin
                           //If (edtData.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                              Params.ParamByName('pDATA').AsDateTime    := edtData.Date;
                           //
                           //If (edtDTFINA.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                              Params.ParamByName('pDTFINAL').AsDateTime := edtDTFINA.Date;
                       End;
                       // Inativo
                       If (rbSituacao.ItemIndex = 1) Then
                       begin
                           //If (edtData.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                              Params.ParamByName('pDATA').AsDateTime    := edtData.Date;
                           //
                           //If (edtDTFINA.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                              Params.ParamByName('pDTFINAL').AsDateTime := edtDTFINA.Date;
                       End;
                       //
                       // Inativo Pago
                       If (rbSituacao.ItemIndex = 3) Then
                       begin
                           //If (edtData.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                              Params.ParamByName('pDATA').AsDateTime    := edtData.Date;
                           //
                           //If (edtDTFINA.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                              Params.ParamByName('pDTFINAL').AsDateTime := edtDTFINA.Date;
                       End;
                       // Reativado
                       If (rbSituacao.ItemIndex = 5) Then
                       begin
                           //If (edtData.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
                              Params.ParamByName('pDATA').AsDateTime    := edtData.Date;
                           //
                           //If (edtDTFINA.Text <> '  /  /    ') Then
                           If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                              Params.ParamByName('pDTFINAL').AsDateTime := edtDTFINA.Date;
                       End;
                       //
                       Active := True;
                  End;
                 //
                 if not (cdsLista.IsEmpty) Then
                 begin
                     lblGrupo.Caption := edtGrupo.Text + ' - ' + lblNomeGrupo.Caption;
                     //
                     if not uFuncoes.Empty(M_FLCONT) Then
                      begin
                           if (M_FLCONT = 'S') Then
                              M_DECONT := 'Cotas j� Contemplada'
                           Else
                              M_DECONT := 'Cotas N�o-Contempladas';
                      End
                      Else
                          lblContem.Caption := 'Contempla��o : Todas as Cotas';
                      //
                     if not uFuncoes.Empty(M_FLSITU) Then
                         M_NMSITU := M_NMDESC
                     Else
                         M_NMSITU := 'Todos';
                     //
                     stream := TMemoryStream.Create;
                     RvNDRWriter1.StreamMode := smUser;
                     RvNDRWriter1.Stream := Stream;
                     { Executa o relat�rio rpListaGrupo }
                     With RvProject1 do
                     begin
                         SetParam('Titulo','Lista de Cotas Grupo : '+ edtGrupo.Text +' - ' + lblNomeGrupo.Caption );
                         SetParam('Contemplacao', M_DECONT);
                         SetParam('Situacao',M_NMSITU);
                         SetParam('DescricaoData', M_DESC_DATA);
                         SetParam('DTCONTRATO', edtData.Text + ' � ' + edtDTFINA.Text);
                     End;
                     //
                     RvProject1.SelectReport('rpListaGrupo', false); 
                     RvProject1.ExecuteReport('rpListaGrupo');
                     FrmPreview := TFrmPreview.Create(Self, Stream,
                       'Lista de Cotas Grupo ');
                     try
                       FrmPreview.ShowModal;
                     finally
                       FrmPreview.Release;
                       FrmPreview := nil;
                     end;
                 End
                 Else
                 begin
                      cdsLista.close;
                      Application.MessageBox('N�o h� dados para o grupo indicado.','ATEN��O',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      edtGrupo.SetFocus;
                 End;
         Finally
                Screen.Cursor := crDefault;
                btnVisualizar.Enabled := True;
         End;
         //
         Application.ProcessMessages;
      End;
      //
      edtGrupo.Clear;
      edtGrupo.SetFocus;
end;

procedure TfrmRelCotaGrupo.cdsListaCalcFields(DataSet: TDataSet);
begin
  inherited;
        If (cdsListaCOT_FLCONTEMPLADO.AsString = 'S' ) Then
           cdsListaCONTEMPLADO.AsString := 'Sim'
        Else
           cdsListaCONTEMPLADO.AsString := 'N�o';
        //
        If (cdsListaCOT_POSICAO.AsString = 'A') Then
           cdsListaSITUACAO.AsString := 'Ativo';
        If (cdsListaCOT_POSICAO.AsString = 'Q') Then
           cdsListaSITUACAO.AsString := 'Quitado';
        If (cdsListaCOT_POSICAO.AsString = 'I') Then
           cdsListaSITUACAO.AsString := 'Inativo';
        If (cdsListaCOT_POSICAO.AsString = 'P') Then
           cdsListaSITUACAO.AsString := 'Inativo Pago';
        If (cdsListaCOT_POSICAO.AsString = 'V') Then
           cdsListaSITUACAO.AsString := 'Vendido';
        If (cdsListaCOT_POSICAO.AsString = 'R') Then
           cdsListaSITUACAO.AsString := 'Reativado';
        If (cdsListaCOT_POSICAO.AsString = 'M') Then
           cdsListaSITUACAO.AsString := 'Migrado';
        //
        if not uFuncoes.Empty(cdsListaCLI_NRFONE.AsString) Then
          cdsListaFONE.AsString := uFuncoes.FormataFONE(cdsListaCLI_NRFONE.AsString);
        //
        If not uFuncoes.Empty(cdslistaCLI_NUMCEP.AsString) Then
          cdsListaCEP.AsString := uFuncoes.FormataCep(cdslistaCLI_NUMCEP.AsString);
        // Parcelas pagas
        cdsListaPARC_PAGAS.AsInteger     := dmPesquisas.Parcelas_Pagas(cdsListaCOT_CDGRUPO.AsInteger, cdsListaCOT_NRCOTA.AsInteger, cdsListaCOT_NRVENDA.AsInteger);
        // Parcelas atrasadas
        cdsListaPARC_ATRASADAS.AsInteger := dmPesquisas.Parcelas_Atrasadas(cdsListaCOT_CDGRUPO.AsInteger, cdsListaCOT_NRCOTA.AsInteger, cdsListaCOT_NRVENDA.AsInteger);
        //
        If (cdsListaCOT_VALCRE.AsFloat > 0) Then
        begin
          If (cdsListaCOT_CDGRUPO.AsInteger = 38) Then
           Begin
                If (cdsListaCOT_VALOR_RECEBER.AsFloat > 0) Then
                    cdsListaREC_VLCRED_CALC.AsFloat := cdsListaCOT_VALOR_RECEBER.AsFloat
                Else
                    cdsListaREC_VLCRED_CALC.AsFloat := cdsListaCOT_VALCRE.AsFloat;
           End
          Else
             cdsListaREC_VLCRED_CALC.AsFloat := cdsListaCOT_VALCRE.AsFloat;
        End;
end;

procedure TfrmRelCotaGrupo.FormCreate(Sender: TObject);
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Lista de Grupo/Cotas...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnVisualizar.Visible     := (novo = 'S');
   End;
   //
   RvProject1.ProjectFile := ExtractFilePath( Application.ExeName )+'\Relatorios\rvListaGrupo.rav';
end;

procedure TfrmRelCotaGrupo.btnPreviewClick(Sender: TObject);
Var
  M_FLCONT, M_FLSITU, M_NMDESC : String;
begin
  inherited;
      if not uFuncoes.Empty(edtGrupo.Text) Then
       begin
            M_FLCONT := '';
            M_FLSITU := '';
            //   SItua��o
            If (rbSituacao.ItemIndex = 0) Then
             Begin
                M_FLSITU := 'A';
                M_NMDESC := 'Ativo';
             End;
            If (rbSituacao.ItemIndex = 1) Then
             Begin
                M_FLSITU := 'I';
                M_NMDESC := 'Inativo';
             End;
            If (rbSituacao.ItemIndex = 2) Then
             Begin
                M_FLSITU := 'Q';
                M_NMDESC := 'Quita��o';
             End;
            If (rbSituacao.ItemIndex = 3) Then
             Begin
                M_FLSITU := 'P';
                M_NMDESC := 'Inativo (Pago)';
             End;
            If (rbSituacao.ItemIndex = 4) Then
             Begin
                M_FLSITU := 'V';
                M_NMDESC := 'Vendido';
             End;
            If (rbSituacao.ItemIndex = 5) Then
             Begin
                M_FLSITU := 'R';
                M_NMDESC := 'Reativado';
             End;
            // contempla��o
            If (rbContemplacao.ItemIndex = 0) Then
                M_FLCONT := 'S';
            If (rbContemplacao.ItemIndex = 1) Then
                M_FLCONT := 'N';
            //
            with ppRepListaGrupos do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 with cdsLista do
                  begin
                       Active := False;
                       CommandText := 'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, C.COT_CDCLIE, ';
                       CommandText := CommandText + 'C.COT_PLANO, C.COT_POSICAO, C.COT_VALCRE, C.COT_VALACERTO, ';
                       CommandText := CommandText + 'C.COT_FLCONTEMPLADO, C.COT_VALCOTA, C.COT_FUNDORES, ';
                       CommandText := CommandText + 'C.COT_TAXA_ADM, C.COT_DTCONTEMPLACAO, C.COT_ASSEB_CONTEMP, ';
                       CommandText := CommandText + 'CL.CLI_NRFONE, CL.CLI_ENDERECO, CL.CLI_NUMERO, CL.cli_cidade,  CL.CLI_UFCLIE, CL.CLI_NUMCEP ';
                       CommandText := CommandText + 'from COTAS C ';
                       CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
                       CommandText := CommandText + 'Where (C.COT_CDGRUPO = :pCDGRUPO) ';
                       // situa��o
                       if not uFuncoes.Empty(M_FLSITU) Then
                          CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr(M_FLSITU)+')' ;
                       // contemplados
                       if not uFuncoes.Empty(M_FLCONT) Then
                          CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+QuotedStr(M_FLCONT)+')' ;
                       //
                       CommandText := CommandText + ' order by C.COT_CDGRUPO, C.COT_NRCOTA ';   
                       //
                       Params[0].AsInteger := StrtoInt(edtGrupo.Text);
                       Active := True;
                  End;
                 //
                 if not (cdsLista.IsEmpty) Then
                 begin
                     lblGrupo.Caption := edtGrupo.Text + ' - ' + lblNomeGrupo.Caption;
                     //
                     if not uFuncoes.Empty(M_FLCONT) Then
                      begin
                           if (M_FLCONT = 'S') Then
                              lblContem.Caption := 'Contempla��o : Cotas j� Contemplada'
                           Else
                              lblContem.Caption := 'Contempla��o : Cotas N�o-Contempladas';
                      End
                      Else
                          lblContem.Caption := 'Contempla��o : Todas as Cotas';
                      //
                     if not uFuncoes.Empty(M_FLSITU) Then
                             lblSituacao.Caption := 'Situa��o : '+M_NMDESC
                     Else
                          lblSituacao.Caption := 'Situa��o : Todos';
                     //
                     PrintReport;
                 End
                 Else
                 begin
                      cdsLista.close;
                      Application.MessageBox('N�o h� dados para o grupo indicado.','ATEN��O',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                      edtGrupo.SetFocus;
                 End;
            end;
          End;
          //
          edtGrupo.Clear;
          edtGrupo.SetFocus;
end;

procedure TfrmRelCotaGrupo.edtDataExit(Sender: TObject);
begin
  inherited;
      //If (edtData.Text <> '  /  /    ') Then
      If not uFuncoes.Empty(uFuncoes.RemoveChar(edtData.Text)) Then
        try
          StrToDate(edtData.Text);
          edtData.Date := StrToDate(edtData.Text);
        except
          on EConvertError do
           begin
               ShowMessage ('Data Inv�lida!');
               edtData.SetFocus;
           End;
        end;

end;

procedure TfrmRelCotaGrupo.edtDTFINAExit(Sender: TObject);
begin
  inherited;
      //If (edtDTFINA.text <> '  /  /    ') Then
      If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
        try
          StrToDate(edtDTFINA.Text);
          edtDTFINA.Date := StrToDate(edtDTFINA.Text);
          If (edtDTFINA.Date < edtData.Date) Then
            begin
                 Application.MessageBox('Per�odo final deve ser maior ou igual ao inicial.','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 edtDTFINA.Date := Date();
                 edtDTFINA.SetFocus;
                 Exit;
            End;
        except
          on EConvertError do
           begin
               ShowMessage ('Data Inv�lida!');
               edtDTFINA.SetFocus;
           End;
        end;
end;

procedure TfrmRelCotaGrupo.edtDataKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key = #13) then
      begin
           key := #0;
           edtDTFINA.SetFocus;
      End;
end;

procedure TfrmRelCotaGrupo.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      if (key = #13) then
      begin
           key := #0;
           rbSituacao.SetFocus;
      End;
end;

end.
