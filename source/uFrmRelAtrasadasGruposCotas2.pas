unit uFrmRelAtrasadasGruposCotas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls, Mask, Spin, ToolEdit, CurrEdit, DB, FMTBcd, DBClient, Provider,
  SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, RpDefine, RpBase, RpFiler,
  RpRave, RpCon, RpConDS;

type
  TfrmRelAtrasadasGruposCotas2 = class(TfrmModRelatorio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    rbSelImpressao: TRadioGroup;
    rbTipoRelatorio: TRadioGroup;
    rbTipoPagas: TRadioGroup;
    rbFormaRelatorio: TRadioGroup;
    rbPagasBancos: TRadioGroup;
    rbSituacao: TRadioGroup;
    rbContemplacao: TRadioGroup;
    rbTaxaAdm: TGroupBox;
    CheckBox1: TCheckBox;
    CurrencyEdit3: TCurrencyEdit;
    Label9: TLabel;
    cbxLimite: TCheckBox;
    rbRefParcelas: TRadioGroup;
    rbMunicipio: TRadioGroup;
    cmbUF: TComboBox;
    Label6: TLabel;
    Label1: TLabel;
    edtCidade: TEdit;
    Label12: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    edtDTFINA: TDateEdit;
    speNumeroParcelas: TSpinEdit;
    Label3: TLabel;
    lblConsultar: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    ppRepClientesAtraso: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dsClientesAtraso: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    lblTitulo: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    lblCotas: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
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
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel24: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppRepListaClientes: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    lblTitulo2: TppLabel;
    lblCotas2: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel26: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLine8: TppLine;
    lblMunicipio: TppLabel;
    Panel3: TPanel;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    edtNrvenda: TEdit;
    cdsConsultaCOT_NRVENDA: TIntegerField;
    cdsConsultaCOT_CDGRUPO: TIntegerField;
    cdsConsultaCOT_NRCOTA: TIntegerField;
    cdsConsultaCLI_NOME: TStringField;
    cdsConsultaCOT_CDCLIE: TIntegerField;
    cdsConsultaCLI_CIDADE: TStringField;
    cdsConsultaCLI_UFCLIE: TStringField;
    cdsConsultaCOT_PLANO: TIntegerField;
    cdsConsultaCOT_POSICAO: TStringField;
    ppLabel27: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    BitBtn1: TBitBtn;
    ppLine9: TppLine;
    ppLabel41: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    cdsConsultaCOT_FLCONTEMPLADO: TStringField;
    ppLabel42: TppLabel;
    ppDBCalc18: TppDBCalc;
    txtPeriodoContrato: TppLabel;
    ppLabel43: TppLabel;
    ppDBText38: TppDBText;
    lblMensagem: TLabel;
    rbOrdem: TRadioGroup;
    rgPeriodo: TRadioGroup;
    edtNome: TEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure btnVisualizarClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure rbTipoPagasClick(Sender: TObject);
    procedure rbMunicipioClick(Sender: TObject);
    procedure rbTipoRelatorioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNrvendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNrvendaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rbSituacaoClick(Sender: TObject);
    procedure rbContemplacaoClick(Sender: TObject);
    procedure cbxLimiteClick(Sender: TObject);
    procedure speNumeroParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeChange(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Abrir_Cotas_Grupo(W_NRGRUP : INTEGER);
  public
    { Public declarations }
  end;

var
  frmRelAtrasadasGruposCotas2: TfrmRelAtrasadasGruposCotas2;

implementation

uses udmAdmDados, uFuncoes, uFrmConsGrupos, udmRelatorios, uDmPesquisas,
  uFrmAdmMain, untFrmPreview;

{$R *.dfm}

procedure TfrmRelAtrasadasGruposCotas2.FormShow(Sender: TObject);
begin
  inherited;
       //uFuncoes.RefreshCDS(dmAdmDados.cdsListaGrupos2);
       lblNomeGrupo.Caption := '';
       lblMensagem.Caption  := '';
       //
       //edtDTINIC.Date := Date();
       //edtDTFINA.Date := Date();
       //
       {dmAdmDados.cdsListaGrupos2.First;
       dmAdmDados.Abrir_Cotas_Grupo(dmAdmDados.cdsListaGrupos2.FieldByName('GRU_CODIGO').AsInteger);}
end;

procedure TfrmRelAtrasadasGruposCotas2.Timer1Timer(Sender: TObject);
begin
  inherited;
     if not (dmAdmDados.cdsListaGrupos2.IsEmpty) Then
        dmAdmDados.Abrir_Cotas_Grupo(dmAdmDados.cdsListaGrupos2.FieldByName('GRU_CODIGO').AsInteger);
end;

procedure TfrmRelAtrasadasGruposCotas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmAdmDados.cdsListaGrupos2.Close; 
end;

procedure TfrmRelAtrasadasGruposCotas2.spLocalizarGrupoClick(
  Sender: TObject);
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

procedure TfrmRelAtrasadasGruposCotas2.edtGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';
          If not uFuncoes.Empty(edtNrvenda.Text) Then
             edtNrvenda.Clear;
          cdsConsulta.Close;
      End
      Else
      begin
          Abrir_Cotas_Grupo(StrtoInt(edtGrupo.Text));
      End;
end;

procedure TfrmRelAtrasadasGruposCotas2.edtGrupoExit(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.Text))) then
           begin
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

procedure TfrmRelAtrasadasGruposCotas2.edtGrupoKeyPress(Sender: TObject;
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

procedure TfrmRelAtrasadasGruposCotas2.Abrir_Cotas_Grupo(
  W_NRGRUP: INTEGER);
begin
     With cdsConsulta do
      begin
           DisableControls;
           Active := False;
           CommandText := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, C.COT_CDCLIE, ';
           CommandText := CommandText + 'CL.CLI_CIDADE, CL.CLI_UFCLIE, C.COT_PLANO, C.COT_POSICAO, C.COT_FLCONTEMPLADO from COTAS C ';
           CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
           CommandText := CommandText + 'Where (C.COT_CDGRUPO = :pCODIGO) ';
           //
           If (rbSituacao.ItemIndex = 0) Then
               CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('A')+')';
           If (rbSituacao.ItemIndex = 1) Then
               CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('I')+')';
           If (rbSituacao.ItemIndex = 2) Then
               CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('R')+')';
           //
           If (rbContemplacao.ItemIndex = 0) Then
               CommandText := CommandText + ' AND (C.COT_FLCONTEMPLADO = '+QuotedStr('S')+')';
           If (rbContemplacao.ItemIndex = 1) Then
               CommandText := CommandText + ' AND (C.COT_FLCONTEMPLADO = '+QuotedStr('N')+')';
           //
           CommandText := CommandText + ' order by C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA';
           //
           Params[0].AsInteger := W_NRGRUP;
           Active := True;
           EnableControls;
           //
      End;
end;

procedure TfrmRelAtrasadasGruposCotas2.btnVisualizarClick(Sender: TObject);
Var
   M_CDGRUP : Integer;
   M_DTINIC, M_DTFINA : TDate;
   cTexto, aMensagem, aContemplados : String;
   M_FLCONT, M_FLSITU : String;
   stream : TMemoryStream;
begin
  inherited;
      M_CDGRUP := 0;
      //
      if uFuncoes.Empty(edtGrupo.Text) Then
       begin
            edtGrupo.SetFocus;
            raise Exception.Create('Digite o código do grupo.');
       End;
       //
       If (rbSelImpressao.ItemIndex = 0) Then  // and uFuncoes.Empty(edtNrvenda.Text)
        begin
             {Application.MessageBox('Digite o número da venda.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edtNrvenda.SetFocus;
             Exit;}
             edtNrvenda.Text := cdsConsultaCOT_NRVENDA.AsString;
        End;
      { If (edtDTINIC.Text = '  /  /    ' ) Then
        begin
            edtDTINIC.SetFocus;
            raise Exception.Create('Digite o periodo inicial.');
        End;
      //
       If (edtDTFINA.Text  = '  /  /    ' ) Then
        begin
            edtDTFINA.SetFocus;
            raise Exception.Create('Digite o periodo final.');
        End;}
      //
      uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
      //
      M_DTINIC := Strtodate('01/01/1980');
      M_DTFINA := Date();
 //
 edtNome.Clear;
 //
 btnVisualizar.Enabled := False;
 try
    // Parcelas atrasada
   if (rbTipoRelatorio.ItemIndex = 0) Then
    begin
          //
             lblMensagem.Caption := 'Aguarde geração do relatório...';
             try
                 With dmRelatorios do
                 begin
                      cTexto := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, ';
                      cTexto := cTexto + ' C.COT_DTCONT, C.COT_DTINATIVACAO, C.COT_DTREATIVACAO, C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.cli_numero, CL.CLI_BAIRRO, ';
                      cTexto := cTexto + ' CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE, PC.rec_nrvend, Count(*) from COTAS C ';
                      cTexto := cTexto + ' INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA ';
                      cTexto := cTexto + ' Where (C.COT_CDGRUPO = :pCDGRUPO) And (PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND ';
                      cTexto := cTexto + ' ((PC.REC_TOTAL_PAGO = :pPAGO) OR (PC.REC_TOTAL_PAGO is null)) ';
                      //
                      IF (rbSituacao.ItemIndex <> 2) and (rbSelImpressao.ItemIndex <> 0) then
                         cTexto := cTexto + ' and (C.COT_POSICAO = :pPOSICAO) ';
                      If (rbContemplacao.ItemIndex <> 2) and (rbSelImpressao.ItemIndex <> 0) then
                         cTexto := cTexto + ' and (C.COT_FLCONTEMPLADO = :pFLCONT) ';
                      //
                      if (rbSelImpressao.ItemIndex = 0) Then
                           cTexto := cTexto + ' and (C.COT_NRVENDA = '+QuotedStr(edtNrvenda.Text)+') ';
                      //
                      //If (edtDTINIC.Text <> '  /  /    ') Then
                      If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                       begin
                         if (rgPeriodo.ItemIndex = 0) Then
                              cTexto := cTexto + ' and (C.cot_dtcont >= :pDTCONT1) ';
                         If (rgPeriodo.ItemIndex = 1) Then
                              cTexto := cTexto + ' and (C.COT_DTINATIVACAO >= :pDTCONT1) ';
                         If (rgPeriodo.ItemIndex = 2) Then
                              cTexto := cTexto + ' and (C.COT_DTREATIVACAO >= :pDTCONT1) ';
                       End;
                      //
                      //If (edtDTFINA.Text <> '  /  /    ') Then
                      If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                       begin
                         if (rgPeriodo.ItemIndex = 0) Then
                             cTexto := cTexto + ' and (C.cot_dtcont <= :pDTCONT2) ';
                         if (rgPeriodo.ItemIndex = 1) Then
                             cTexto := cTexto + ' and (C.COT_DTINATIVACAO <= :pDTCONT2) ';
                         if (rgPeriodo.ItemIndex = 2) Then
                             cTexto := cTexto + ' and (C.COT_DTREATIVACAO <= :pDTCONT2) '; 
                       End;
                      //
                      If (rbSituacao.ItemIndex <= 2) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.COT_POSICAO = :pPOSICAO) ';
                      If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.cot_flcontemplado = :pFLCONT) ';
                      If not uFuncoes.Empty(cmbUF.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_ufclie = '+QuotedStr(cmbUF.Text)+')';
                      If not uFuncoes.Empty(edtCidade.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_cidade = '+QuotedStr(edtCidade.Text)+')';
                      //
                      cTexto := cTexto + ' Group by C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, C.COT_DTCONT, C.COT_DTINATIVACAO, C.COT_DTREATIVACAO, ';
                      cTexto := cTexto + ' C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.cli_numero, CL.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, ';
                      cTexto := cTexto + ' CL.CLI_NRFONE, PC.rec_nrvend ';
                      //
                      If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                      begin
                        if (speNumeroParcelas.Value > 0) Then
                        begin
                            if (rbRefParcelas.ItemIndex = 0) Then
                               cTexto := cTexto + ' Having Count(*) <= :pPARCELAS ';
                            if (rbRefParcelas.ItemIndex = 1) Then
                               cTexto := cTexto + ' Having Count(*) = :pPARCELAS ';
                        End;
                      End;
                      // cTexto := cTexto + ' order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA ';
                      If (rbOrdem.ItemIndex = 0) Then
                          cTexto := cTexto + ' order by C.COT_NRCOTA '
                      Else
                          cTexto := cTexto + ' order by C.COT_DTCONT ';
                      //
                      If (rbContemplacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLCONT := 'S';
                      If (rbContemplacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0)Then
                          M_FLCONT := 'N';
                      //
                      If (rbSituacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'A';
                      If (rbSituacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'I';
                      If (rbSituacao.ItemIndex = 2) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'R';
                      //
                      with cdsMasterAtrasadas do
                       begin
                            Active := False;
                            CommandText := cTexto;
                            Params.ParamByName('pCDGRUPO').AsInteger := StrtoInt(edtGrupo.text);
                            Params.ParamByName('pDTINIC').AsDateTime := StrtoDate('01/01/1980');
                            Params.ParamByName('pDTFINA').AsDateTime := Date;
                            Params.ParamByName('pPAGO').AsFloat      := 0;
                            //
                            //If (edtDTINIC.Text <> '  /  /    ') Then
                            If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                               Params.ParamByName('pDTCONT1').AsDateTime := edtDTINIC.Date;
                            // If (edtDTFINA.Text <> '  /  /    ') Then
                            If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                               Params.ParamByName('pDTCONT2').AsDateTime := edtDTFINA.Date;
                            //
                            If (rbSituacao.ItemIndex <= 2) and (rbSelImpressao.ItemIndex <> 0) Then
                                 Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
                            If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                             begin
                                Params.ParamByName('pFLCONT').AsString   := M_FLCONT;
                                If (rbContemplacao.ItemIndex = 0) Then
                                   aContemplados := ' - Contemplados'
                                Else
                                   aContemplados := ' - Não-Contemplados'
                             End
                             Else
                                 if (rbSelImpressao.ItemIndex <> 0) Then
                                     aContemplados := ' - Contemplados e Não-Contemplados '
                                 Else
                                     aContemplados := 'Cliente selecionado';
                            //
                            If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                               if (speNumeroParcelas.Value > 0) Then
                                   Params.ParamByName('pPARCELAS').AsInteger := speNumeroParcelas.Value;
                            Active := True;
                            //
                            if Not (IsEmpty) Then
                              begin
                                   With cdsDetalhesAtrasadas do
                                   begin
                                        Close;
                                        CommandText := 'SELECT P.rec_nrvend, P.rec_cdgrup, P.rec_nrcota, P.rec_nrparc, P.rec_dtvenc, P.rec_vlparc, P.rec_dtpaga, P.rec_total_pago, P.rec_credito, P.rec_formabaixa, C.cot_taxa_adm ';
                                        CommandText := CommandText + 'FROM PARCELAS P inner join COTAS C on C.cot_nrvenda = P.rec_nrvend where (P.rec_cdgrup = :pCDGRUP) and ((P.rec_total_pago = 0) or (P.rec_total_pago is null))';
                                        CommandText := CommandText + ' and (P.rec_dtvenc >= :pDTINIC) and (P.rec_dtvenc <= :pDTFINA)';
                                        Params.ParamByName('pCDGRUP').AsInteger  := StrtoInt(edtGrupo.text);
                                        Params.ParamByName('pDTINIC').AsDateTime := StrtoDate('01/01/1980');
                                        Params.ParamByName('pDTFINA').AsDateTime := Date();
                                        Open;
                                   End;
                                   //
                                   If (rbSituacao.ItemIndex = 0) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : ATIVAS ' +aContemplados;
                                   If (rbSituacao.ItemIndex = 1) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : INATIVAS ' +aContemplados;
                                   If (rbSituacao.ItemIndex = 2) Then
                                       aMensagem := 'das Cotas do Grupo : ' + edtGrupo.Text +' - '+ aContemplados;
                                   {If (rbMunicipio.ItemIndex = 0 ) Then
                                       aMensagem := lblCotas.Caption  + '  em : '+ edtCidade.Text + '/' +cmbUF.Text;}
                                   //
                                   stream := TMemoryStream.Create;
                                   RvNDRWriter1.StreamMode := smUser;
                                   RvNDRWriter1.Stream := Stream;
                                   //
                                   With rvpClientesAtrasados do
                                   begin
                                        SetParam('TITULO','Lista de Parcelas Atrasadas até: '+ DatetoStr(Date));
                                        SetParam('SUBTITULO', aMensagem);
                                        If (rgPeriodo.ItemIndex = 0) Then
                                            SetParam('PERIODO', 'Período de Contrato: '+ edtDTINIC.Text + ' à ' + edtDTFINA.Text);
                                        If (rgPeriodo.ItemIndex = 1) Then
                                            SetParam('PERIODO', 'Período de Inativação: '+ edtDTINIC.Text + ' à ' + edtDTFINA.Text);
                                        If (rgPeriodo.ItemIndex = 2) Then
                                            SetParam('PERIODO', 'Período de Reativação: '+ edtDTINIC.Text + ' à ' + edtDTFINA.Text);
                                        //
                                        if NOT uFuncoes.Empty(edtCidade.Text) Then
                                           SetParam('CIDADE', 'CIDADE/UF: '+edtCidade.Text +'/'+cmbUF.Text);
                                        //
                                        SelectReport('rpClienAtrasNovo', false);
                                        ExecuteReport('rpClienAtrasNovo');
                                   End;
                                   ///
                                   FrmPreview := TFrmPreview.Create(Self, Stream, 'Lista de Parcelas Atrasadas');
                                   try
                                     FrmPreview.ShowModal;
                                   finally
                                     FrmPreview.Release;
                                     FrmPreview := nil;
                                   end;
                                   //rvpClientesPagas.Execute;
                              End
                              Else
                                  Application.MessageBox('Não há dados para itens selecionados.','ATENÇÃO',
                                        MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                       End;
                       //
                 End;
             Finally
                 lblMensagem.Caption := '';
             End;
    End;
    //
    If (rbTipoRelatorio.ItemIndex = 1) Then
      begin
             lblMensagem.Caption := 'Aguarde geração do relatório...';
             try
                 With dmRelatorios do
                 begin
                      cTexto := 'Select C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_dtcont, C.cot_taxa_adm, C.cot_posicao, ';
                      cTexto := cTexto + ' C.cot_flcontemplado, C.COT_DTINATIVACAO, C.COT_DTREATIVACAO, c.cot_valcre, c.cot_plano, CL.CLI_NOME, CL.cli_endereco, CL.cli_numero, CL.cli_bairro, ';
                      cTexto := cTexto + 'CL.cli_cidade, CL.cli_ufclie, CL.cli_nrfone, COUNT(*) AS QUANT from COTAS C ';
                      cTexto := cTexto + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA INNER JOIN CLIENTES CL ON C.cot_cdclie = CL.cli_codigo ';
                      cTexto := cTexto + 'Where (PC.rec_cdgrup = :pCDGRUPO) and (PC.REC_DTPAGA >= :pDTINIC) and (PC.REC_DTPAGA <= :pDTFINA) AND ';
                      cTexto := cTexto + '(PC.REC_TOTAL_PAGO > :pPAGO) ';
                      //
                      If (rgPeriodo.ItemIndex = 0) Then
                      begin
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                             cTexto := cTexto + ' and (C.cot_dtcont >= :pDTCONT1) ';
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                             cTexto := cTexto + ' and (C.cot_dtcont <= :pDTCONT2) ';
                      End;
                      //
                      If (rgPeriodo.ItemIndex = 1) Then
                      begin
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                             cTexto := cTexto + ' and (C.COT_DTINATIVACAO >= :pDTCONT1) ';
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                             cTexto := cTexto + ' and (C.COT_DTINATIVACAO <= :pDTCONT2) ';
                      End;
                      //
                      If (rgPeriodo.ItemIndex = 2) Then
                      begin
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                             cTexto := cTexto + ' and (C.COT_DTREATIVACAO >= :pDTCONT1) ';
                          If NOT uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                             cTexto := cTexto + ' and (C.COT_DTREATIVACAO <= :pDTCONT2) ';
                      End;
                      //
                      if (rbSelImpressao.ItemIndex = 0) Then
                           cTexto := cTexto + ' and (C.COT_NRVENDA = '+QuotedStr(edtNrvenda.Text)+') ';
                      //
                      If (rbSituacao.ItemIndex <= 2) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.COT_POSICAO = :pPOSICAO) ';
                      If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.cot_flcontemplado = :pFLCONT) ';
                      If not uFuncoes.Empty(cmbUF.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_ufclie = '+QuotedStr(cmbUF.Text)+')';
                      If not uFuncoes.Empty(edtCidade.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_cidade = '+QuotedStr(edtCidade.Text)+')';
                      cTexto := cTexto + 'GROUP BY C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_dtcont, C.cot_taxa_adm, C.cot_posicao, ';
                      cTexto := cTexto + 'C.cot_flcontemplado, C.COT_DTINATIVACAO, C.COT_DTREATIVACAO, c.cot_valcre, c.cot_plano, CL.CLI_NOME, CL.cli_endereco, CL.cli_numero, CL.cli_bairro, ';
                      cTexto := cTexto + 'CL.cli_cidade, CL.cli_ufclie, CL.cli_nrfone ';
                      //
                      If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                      begin
                        if (speNumeroParcelas.Value > 0) Then
                        begin
                            if (rbRefParcelas.ItemIndex = 0) Then
                               cTexto := cTexto + ' Having Count(*) <= :pPARCELAS ';
                            if (rbRefParcelas.ItemIndex = 1) Then
                               cTexto := cTexto + ' Having Count(*) = :pPARCELAS ';
                        End;
                      End;
                      //
                      //cTexto := cTexto + ' order by C.cot_nrcota ';
                      If (rbOrdem.ItemIndex = 0) Then
                          cTexto := cTexto + ' order by C.COT_NRCOTA '
                      Else
                          cTexto := cTexto + ' order by C.COT_DTCONT ';
                      //
                      If (rbContemplacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLCONT := 'S';
                      If (rbContemplacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLCONT := 'N';
                      //
                      If (rbSituacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'A';
                      If (rbSituacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'I';
                      If (rbSituacao.ItemIndex = 2) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'R';
                      //
                      stream := TMemoryStream.Create;
                      RvNDRWriter1.StreamMode := smUser;
                      RvNDRWriter1.Stream := Stream;
                      //
                      with cdsMaster do
                       begin
                            Active := False;
                            CommandText := cTexto;
                            Params.ParamByName('pCDGRUPO').AsInteger := StrtoInt(edtGrupo.text);
                            Params.ParamByName('pDTINIC').AsDateTime := StrtoDate('01/01/1980');
                            Params.ParamByName('pDTFINA').AsDateTime := Date;
                            Params.ParamByName('pPAGO').AsFloat      := 0;
                            //
                            If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
                               Params.ParamByName('pDTCONT1').AsDateTime := edtDTINIC.Date;
                            If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
                               Params.ParamByName('pDTCONT2').AsDateTime := edtDTFINA.Date;
                            //
                            If (rbSituacao.ItemIndex <= 2) and (rbSelImpressao.ItemIndex <> 0) Then
                                 Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
                            If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                                Params.ParamByName('pFLCONT').AsString   := M_FLCONT;
                            //
                            If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                               if (speNumeroParcelas.Value > 0) Then
                                   Params.ParamByName('pPARCELAS').AsInteger := speNumeroParcelas.Value;
                            Active := True;
                            //
                            if Not (IsEmpty) Then
                              begin
                                   With cdsdetalhes do
                                   begin
                                        Close;
                                        CommandText := 'SELECT P.rec_nrvend, P.rec_cdgrup, P.rec_nrcota, P.rec_nrparc, P.rec_dtvenc, P.rec_vlparc, P.rec_dtpaga, P.rec_total_pago, P.rec_credito, P.rec_formabaixa ';
                                        CommandText := CommandText + 'FROM PARCELAS P where (P.rec_cdgrup = :pCDGRUP) and (P.rec_total_pago > 0)';
                                        Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtGrupo.text);
                                        Open;
                                   End;
                                   //
                                   If (rbSituacao.ItemIndex = 0) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : ATIVAS';
                                   If (rbSituacao.ItemIndex = 1) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : INATIVAS';
                                   If (rbSituacao.ItemIndex = 2) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : REATIVADAS';
                                   If (rbSituacao.ItemIndex = 2) Then
                                       aMensagem := 'das Cotas do Grupo : ' + edtGrupo.Text +' - '+ aContemplados;
                                   If (rbMunicipio.ItemIndex = 0 ) Then
                                       aMensagem := lblCotas.Caption  + '  em : '+ edtCidade.Text + '/' +cmbUF.Text;
                                   //
                                   With rvpClientesPagas do
                                   begin
                                        SetParam('TITULO','Lista de Parcelas Pagas :'+ DatetoStr(Date));
                                        SetParam('GRUPO', aMensagem + lblNomeGrupo.caption);
                                        SetParam('PERIODO', 'Período de Contrato: '+ edtDTINIC.Text + ' à ' + edtDTFINA.Text);
                                        Case rbSituacao.ItemIndex of
                                          0: SetParam('pSTATUS', 'Status : Cotas Ativas');
                                          1: SetParam('pSTATUS', 'Status : Cotas Inativas');
                                          2: SetParam('pSTATUS', 'Status : Cotas Reativadas');
                                          3: SetParam('pSTATUS', 'Status : Todas Cotas');
                                        End;
                                        //
                                        SelectReport('rvParcelasPagas', false);
                                        ExecuteReport('rvParcelasPagas');
                                   End;
                                   ///
                                   FrmPreview := TFrmPreview.Create(Self, Stream, 'Lista de Parcelas Pagas');
                                   try
                                     FrmPreview.ShowModal;
                                   finally
                                     FrmPreview.Release;
                                     FrmPreview := nil;
                                   end;
                                   //rvpClientesPagas.Execute;
                              End
                              Else
                                  Application.MessageBox('Não há dados para itens selecionados.','ATENÇÃO',
                                        MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                       End;
                       //
                 End;
             Finally
                 lblMensagem.Caption := '';
             End;
      End;
      // A vencer  26/07/2010 Modificado
      If (rbTipoRelatorio.ItemIndex = 2) Then
      begin
             lblMensagem.Caption := 'Aguarde geração do relatório...';
             btnVisualizar.Enabled := False;
             try
                  {Application.MessageBox('Modulo não concluído.',
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL) ;}
                 With dmRelatorios do
                 begin
                      cTexto := 'Select C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_dtcont, C.cot_taxa_adm, C.cot_posicao, ';
                      cTexto := cTexto + ' C.cot_flcontemplado, c.cot_valcre, c.cot_plano, CL.CLI_NOME, CL.cli_endereco, CL.cli_numero, CL.cli_bairro, ';
                      cTexto := cTexto + 'CL.cli_cidade, CL.cli_ufclie, CL.cli_nrfone, COUNT(*) AS QUANT from COTAS C ';
                      cTexto := cTexto + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA INNER JOIN CLIENTES CL ON C.cot_cdclie = CL.cli_codigo ';
                      cTexto := cTexto + 'Where (PC.rec_cdgrup = :pCDGRUPO) and (PC.REC_DTVENC >= :pDTINIC) ';  // AND (PC.REC_TOTAL_PAGO is NULL)
                      cTexto := cTexto + ' and ((PC.rec_total_pago = 0) OR (PC.rec_total_pago is null)) ';
                      //
                      If (edtDTINIC.Text <> '  /  /    ') Then
                          cTexto := cTexto + ' and (C.cot_dtcont >= :pDTCONT1) ';
                      If (edtDTFINA.Text <> '  /  /    ') Then
                          cTexto := cTexto + ' and (C.cot_dtcont <= :pDTCONT2) ';
                      //
                      if (rbSelImpressao.ItemIndex = 0) Then
                           cTexto := cTexto + ' and (C.COT_NRVENDA = '+QuotedStr(edtNrvenda.Text)+') ';
                      //
                      If (rbSituacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.COT_POSICAO = :pPOSICAO) ';
                      If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (C.cot_flcontemplado = :pFLCONT) ';
                      If not uFuncoes.Empty(cmbUF.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_ufclie = '+QuotedStr(cmbUF.Text)+')';
                      If not uFuncoes.Empty(edtCidade.Text) and (rbSelImpressao.ItemIndex <> 0) Then
                           cTexto := cTexto + ' and (CL.cli_cidade = '+QuotedStr(edtCidade.Text)+')';
                      cTexto := cTexto + 'GROUP BY C.COT_NRVENDA, C.cot_cdgrupo, C.cot_nrcota, C.cot_dtcont, C.cot_taxa_adm, C.cot_posicao, ';
                      cTexto := cTexto + 'C.cot_flcontemplado, c.cot_valcre, c.cot_plano, CL.CLI_NOME, CL.cli_endereco, CL.cli_numero, CL.cli_bairro, ';
                      cTexto := cTexto + 'CL.cli_cidade, CL.cli_ufclie, CL.cli_nrfone ';
                      //
                      If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                      begin
                        if (speNumeroParcelas.Value > 0) Then
                        begin
                            if (rbRefParcelas.ItemIndex = 0) Then
                               cTexto := cTexto + ' Having Count(*) <= :pPARCELAS ';
                            if (rbRefParcelas.ItemIndex = 1) Then
                               cTexto := cTexto + ' Having Count(*) = :pPARCELAS ';
                        End;
                      End;
                      //
                      //cTexto := cTexto + ' order by C.cot_nrcota ';
                      If (rbOrdem.ItemIndex = 0) Then
                          cTexto := cTexto + ' order by C.COT_NRCOTA '
                      Else
                          cTexto := cTexto + ' order by C.COT_DTCONT ';
                      //
                      If (rbContemplacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLCONT := 'S';
                      If (rbContemplacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLCONT := 'N';
                      //
                      If (rbSituacao.ItemIndex = 0) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'A';
                      If (rbSituacao.ItemIndex = 1) and (rbSelImpressao.ItemIndex <> 0) Then
                          M_FLSITU := 'I';
                      //
                      stream := TMemoryStream.Create;
                      RvNDRWriter1.StreamMode := smUser;
                      RvNDRWriter1.Stream := Stream;
                      //
                      with cdsMaster do
                       begin
                            Active := False;
                            CommandText := cTexto;
                            Params.ParamByName('pCDGRUPO').AsInteger := StrtoInt(edtGrupo.text);
                            Params.ParamByName('pDTINIC').AsDateTime := Date();
                            //StrtoDate('01/01/1980');
                            //Params.ParamByName('pDTFINA').AsDateTime := Date;
                            //Params.ParamByName('pPAGO').AsFloat      := 0;
                            //
                            If (edtDTINIC.Text <> '  /  /    ') Then
                               Params.ParamByName('pDTCONT1').AsDateTime := edtDTINIC.Date;
                            If (edtDTFINA.Text <> '  /  /    ') Then
                               Params.ParamByName('pDTCONT2').AsDateTime := edtDTFINA.Date;
                            //
                            If (rbSituacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                                 Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
                            If (rbContemplacao.ItemIndex <= 1) and (rbSelImpressao.ItemIndex <> 0) Then
                                Params.ParamByName('pFLCONT').AsString   := M_FLCONT;
                            //
                            If (cbxLimite.Checked) and (rbSelImpressao.ItemIndex <> 0) then
                               if (speNumeroParcelas.Value > 0) Then
                                   Params.ParamByName('pPARCELAS').AsInteger := speNumeroParcelas.Value;
                            Active := True;
                            //
                            if Not (IsEmpty) Then
                              begin
                                   With cdsdetalhes do
                                   begin
                                        Close;
                                        CommandText := 'SELECT P.rec_nrvend, P.rec_cdgrup, P.rec_nrcota, P.rec_nrparc, P.rec_dtvenc, P.rec_vlparc, P.rec_dtpaga, P.rec_total_pago, P.rec_credito, P.rec_formabaixa ';
                                        CommandText := CommandText + 'FROM PARCELAS P where (P.rec_cdgrup = :pCDGRUP) and (P.rec_nrvend = :pVENDA) and (P.REC_DTVENC >= :pDTVENC) and ((P.rec_total_pago = 0) OR (P.rec_total_pago is null)) ';
                                        Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtGrupo.text);
                                        Params.ParamByName('pVENDA').AsInteger  := StrtoInt(edtNrvenda.text);
                                        Params.ParamByName('pDTVENC').AsDateTime := DATE();
                                        Open;
                                   End;
                                   //
                                   If (rbSituacao.ItemIndex = 0) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : ATIVAS';
                                   If (rbSituacao.ItemIndex = 1) Then
                                       aMensagem :=  'Cotas do Grupo : ' + edtGrupo.Text + ' - Situação : INATIVAS';
                                   If (rbSituacao.ItemIndex = 2) Then
                                       aMensagem := 'das Cotas do Grupo : ' + edtGrupo.Text +' - '+ aContemplados;
                                   If (rbMunicipio.ItemIndex = 0 ) Then
                                       aMensagem := lblCotas.Caption  + '  em : '+ edtCidade.Text + '/' +cmbUF.Text;
                                   //
                                   With rvpClientesPagas do
                                   begin
                                        SetParam('TITULO','Lista de Parcelas a Vencer :'+ DatetoStr(Date));
                                        SetParam('GRUPO', aMensagem);
                                        SetParam('PERIODO', 'Período de Contrato: '+ edtDTINIC.Text + ' à ' + edtDTFINA.Text);
                                        //
                                        SelectReport('rvParcelasPagas', false);
                                        ExecuteReport('rvParcelasPagas');
                                   End;
                                   ///
                                   FrmPreview := TFrmPreview.Create(Self, Stream, 'Lista de Parcelas Pagas');
                                   try
                                     FrmPreview.ShowModal;
                                   finally
                                     FrmPreview.Release;
                                     FrmPreview := nil;
                                   end;
                                   //rvpClientesPagas.Execute;
                              End
                              Else
                                  Application.MessageBox('Não há dados para itens selecionados.','ATENÇÃO',
                                        MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                        End; // fim-with  cdsMaster
                   End;  // With dmRelatorios do
             Finally
                   lblMensagem.Caption := '';
                   btnVisualizar.Enabled := True;
             End;
             Application.ProcessMessages;
      End;
    {If (rbTipoRelatorio.ItemIndex <> 0) Then
      begin
      try
         With dmRelatorios.cdsClientesAtraso do
          begin
               Active := False;
               CommandText := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, C.COT_DTCONT, ';
               CommandText := CommandText + 'C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE, ';
               CommandText := CommandText + 'PC.REC_NRPARC, PC.REC_DTVENC, PC.REC_DTPAGA, PC.REC_VLPARC, PC.rec_vlmult, PC.REC_CREDITO, PC.REC_TOTAL_PAGO, PC.REC_NOSSONUMERO, PC.REC_FORMABAIXA, PC.REC_TPCREDITO ';
               CommandText := CommandText + 'from COTAS C ';
               CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
               CommandText := CommandText + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA ';
               //
               CommandText := CommandText + 'Where (C.COT_CDGRUPO = :pCDGRUPO) ';
               //
               if (edtDTINIC.Text <> '  /  /    ' ) Then
                   CommandText := CommandText + ' and (C.COT_DTCONT >= :pINCDTCONT)';
               if (edtDTFINA.Text <> '  /  /    ' ) Then
                   CommandText := CommandText + ' and (C.COT_DTCONT <= :pFINDTCONT)';
               //
               if (rbTipoRelatorio.ItemIndex = 0)  Then
                   CommandText := CommandText + 'and (PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO)';
               //
               if (rbTipoRelatorio.ItemIndex = 1) Then
                  CommandText := CommandText + 'and (PC.REC_DTPAGA >= :pDTINIC) and (PC.REC_DTPAGA <= :pDTFINA) AND (PC.REC_TOTAL_PAGO > :pPAGO) ';
               if (rbTipoRelatorio.ItemIndex = 2) then
                   CommandText := CommandText + 'and (PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO) and (PC.REC_DTVENC - PC.REC_DTPAGA > 0) ';
               //
               if (rbSelImpressao.ItemIndex = 0) Then
                    CommandText := CommandText + ' and (C.COT_NRCOTA = '+QuotedStr(cdsConsulta.fieldByName('COT_NRCOTA').AsString)+') ';
               //CommandText := CommandText + ' ';
               If (rbSituacao.ItemIndex = 0) Then
                    CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('A')+')';
               If (rbSituacao.ItemIndex = 1) Then
                    CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('I')+')';
               //
               CommandText := CommandText + 'order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA';
               //
               Params.ParamByName('pCDGRUPO').AsInteger := M_CDGRUP;
               //
               if (edtDTINIC.Text <> '  /  /    ' ) Then
                   Params.ParamByName('pINCDTCONT').AsDateTime := edtDTINIC.Date;
               if (edtDTFINA.Text <> '  /  /    ' ) Then
                   Params.ParamByName('pFINDTCONT').AsDateTime := edtDTFINA.Date;
               //
               Params.ParamByName('pDTINIC').AsDateTime := M_DTINIC;
               Params.ParamByName('pDTFINA').AsDateTime := M_DTFINA;
               //
               Params.ParamByName('pPAGO').AsFloat      := 0;
               FetchParams;
               //
               Active := True;
          End;
          //
         if not (dmRelatorios.cdsClientesAtraso.IsEmpty) Then
          begin
            with ppRepListaClientes do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 if (rbTipoRelatorio.ItemIndex = 1 ) Then
                     lblTitulo2.Caption := 'Lista de Parcelas Pagas : ';
                 if (rbTipoRelatorio.ItemIndex = 2 ) Then
                     lblTitulo2.Caption := 'Lista de Parcelas a Vencer : ';
                 //
                 lblTitulo2.Caption := lblTitulo2.Caption + edtDTINIC.Text + ' à '+edtDTFINA.Text ;
                 //
                 If (rbSituacao.ItemIndex = 0) Then
                     lblCotas2.Caption  := 'Situação : ATIVAS  - Cotas do Grupo : ' + edtGrupo.Text;
                 If (rbSituacao.ItemIndex = 1) Then
                     lblCotas2.Caption  := 'Situação : INATIVAS  - Cotas do Grupo : ' + edtGrupo.Text;
                 If (rbSituacao.ItemIndex = 2) Then
                     lblCotas2.Caption  := 'das Cotas do Grupo : ' + edtGrupo.Text;
                 If (rbMunicipio.ItemIndex = 0 ) Then
                     lblCotas2.Caption  := lblCotas.Caption  + '  em : '+ edtCidade.Text + '/' +cmbUF.Text;
                 //
                 PrintReport;
            end;
          End
          Else
             Application.MessageBox('Não dados no periodo indicado.',
                'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL) ;
      finally
           //dmRelatorios.Free;
      end;
      End;        }
      //
  finally
        btnVisualizar.Enabled := True;
        edtNrvenda.Clear;
  End;
  Application.ProcessMessages;
end;

procedure TfrmRelAtrasadasGruposCotas2.edtDTINICExit(Sender: TObject);
begin
  inherited;
        if (edtDTINIC.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTINIC.Text) Then
              edtDTINIC.Date := uFuncoes.FormatarData(edtDTINIC.text)
           Else
           begin
              edtDTINIC.Clear;
              edtDTINIC.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelAtrasadasGruposCotas2.edtDTFINAExit(Sender: TObject);
begin
  inherited;
        if (edtDTFINA.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTFINA.Text) Then
              edtDTFINA.Date := uFuncoes.FormatarData(edtDTFINA.text)
           Else
           begin
              edtDTFINA.Clear;
              edtDTFINA.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelAtrasadasGruposCotas2.rbTipoPagasClick(Sender: TObject);
begin
  inherited;
       If (rbTipoPagas.ItemIndex <> 0) Then
          rbTipoRelatorio.ItemIndex := 1;
end;

procedure TfrmRelAtrasadasGruposCotas2.rbMunicipioClick(Sender: TObject);
begin
  inherited;
      if (rbMunicipio.ItemIndex = 1) Then
        begin
             cmbUF.ItemIndex := -1;
             edtCidade.Clear;   
        End;
end;

procedure TfrmRelAtrasadasGruposCotas2.rbTipoRelatorioClick(
  Sender: TObject);
begin
  inherited;
      if (rbTipoRelatorio.ItemIndex = 0) Then
          edtDTFINA.Text := edtDTINIC.Text;
      {Else
          edtDTFINA.Date := IncMonth(edtDTINIC.Date,1)-1;}
end;

procedure TfrmRelAtrasadasGruposCotas2.FormCreate(Sender: TObject);
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Lista Parcela Atrasada,  Pagas ou A vencer...'));
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
end;

procedure TfrmRelAtrasadasGruposCotas2.edtNrvendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
end;

procedure TfrmRelAtrasadasGruposCotas2.edtNrvendaChange(Sender: TObject);
begin
  inherited;
      if (cdsConsulta.Active) and not uFuncoes.Empty(edtNrvenda.Text) Then
           cdsConsulta.Locate('COT_NRVENDA',edtNrvenda.Text,[]);
end;

procedure TfrmRelAtrasadasGruposCotas2.BitBtn1Click(Sender: TObject);
var
  stream : TMemoryStream;
  M_CDGRUP : Integer;
  M_NMSITU, M_DECONT : string;
begin
  inherited;
         btnVisualizar.Enabled := False;
         try
             Screen.Cursor := crHourGlass;
             //
             // Parcelas atrasada
             if (rbTipoRelatorio.ItemIndex = 0) Then
              begin
                   With dmRelatorios.cdsClientesAtraso do
                   begin
                        Active := False;
                        CommandText := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, ';
                        CommandText := CommandText + 'C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE, PC.REC_CDBANC, ';
                        CommandText := CommandText + 'PC.REC_NRPARC, PC.REC_DTVENC, PC.REC_DTPAGA, PC.REC_VLPARC, PC.rec_vlmult, PC.REC_CREDITO, PC.REC_TOTAL_PAGO, PC.REC_NOSSONUMERO, PC.REC_FORMABAIXA, PC.REC_TPCREDITO ';
                        CommandText := CommandText + 'from COTAS C ';
                        CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
                        CommandText := CommandText + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA ';
                        //
                        CommandText := CommandText + 'Where ';
                        //
                        if (rbTipoRelatorio.ItemIndex = 0)  Then
                            CommandText := CommandText + '(PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO)';
                        //
                        if (rbTipoRelatorio.ItemIndex = 1) Then
                           CommandText := CommandText + ' (PC.REC_DTPAGA >= :pDTINIC) and (PC.REC_DTPAGA <= :pDTFINA) AND (PC.REC_TOTAL_PAGO > :pPAGO) ';
                        if (rbTipoRelatorio.ItemIndex = 2) then
                            CommandText := CommandText + '(PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO) and (PC.REC_DTVENC - PC.REC_DTPAGA > 0) ';
                        //
                        if not uFuncoes.Empty(edtGrupo.Text) Then
                           CommandText := CommandText + 'and (C.COT_CDGRUPO = :pCDGRUPO) ';
                        //
                        if not uFuncoes.Empty(edtGrupo.Text) and (rbSelImpressao.ItemIndex = 0) Then
                             CommandText := CommandText + ' and (C.COT_NRVENDA = '+QuotedStr(cdsConsulta.fieldByName('COT_NRVENDA').AsString) +') and (C.COT_NRCOTA = '+QuotedStr(cdsConsulta.fieldByName('COT_NRCOTA').AsString)+') ';
                        //CommandText := CommandText + ' ';
                        If (rbSituacao.ItemIndex = 0) Then
                             CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('A')+')';
                        If (rbSituacao.ItemIndex = 1) Then
                             CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('I')+')';
                        //
                        if (rbContemplacao.ItemIndex = 0) Then
                             CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+ QuotedStr('S')+')';
                        //
                        if (rbContemplacao.ItemIndex = 1) Then
                             CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+ QuotedStr('N')+')';
                        //
                        if (rbMunicipio.ItemIndex = 0) Then
                        begin
                            If not uFuncoes.Empty(cmbUF.Text) Then
                                CommandText := CommandText + ' and (CL.CLI_UFCLIE = '+QuotedStr(cmbUF.Text)+')';
                            If not uFuncoes.Empty(edtCidade.Text) Then
                                CommandText := CommandText + ' and (CLI_CIDADE = '+QuotedStr(edtCidade.Text)+')';
                        End;
                        //
                        CommandText := CommandText + 'order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA, PC.REC_DTVENC';
                        //
                        if not uFuncoes.Empty(edtGrupo.Text) Then
                        begin
                              M_CDGRUP := StrtoInt(edtGrupo.Text);
                              Params.ParamByName('pCDGRUPO').AsInteger := M_CDGRUP;
                        End;
                        //
                        //Params.ParamByName('pDTINIC').AsDate     := edtDTINIC.Date;
                        Params.ParamByName('pDTINIC').AsDate     := Strtodate('01/01/1980');
                        Params.ParamByName('pDTFINA').AsDate     := edtDTFINA.Date;
                        Params.ParamByName('pPAGO').AsFloat      := 0;
                        //
                        Active := True;
                   End;
                   //
                  if not (dmRelatorios.cdsClientesAtraso.IsEmpty) Then
                   begin
                         //
                         if (rbTipoRelatorio.ItemIndex = 0 ) Then
                             lblTitulo.Caption := 'Lista de Parcelas Atrasadas até : ' + edtDTFINA.Text;
                         //
                         //lblTitulo2.Caption := lblTitulo2.Caption + edtDTINIC.Text + ' à '+edtDTFINA.Text ;
                         if not uFuncoes.Empty(edtGrupo.Text) Then
                              lblCotas.Caption := 'das Cotas do Grupo: ' + edtGrupo.Text
                         Else
                              lblCotas.Caption := 'das Cotas do Grupo: TODOS';
                         //
                         If (rbSituacao.ItemIndex = 0) Then
                             M_NMSITU  := 'Situação : ATIVAS';
                         If (rbSituacao.ItemIndex = 1) Then
                             M_NMSITU  := 'Situação : INATIVAS';
                         If (rbSituacao.ItemIndex = 2) Then
                             M_NMSITU  := 'Situação : TODAS AS COTAS';
                         //
                         If (rbContemplacao.ItemIndex = 0) Then
                             M_DECONT  := 'Contemplados';
                         If (rbContemplacao.ItemIndex = 1) Then
                             M_DECONT  := 'Não-Contemplados';
                         If (rbContemplacao.ItemIndex = 2) Then
                             M_DECONT  := 'Contemplação : TODAS AS COTAS';
                         //
                         If (rbMunicipio.ItemIndex = 0 ) Then
                             lblMunicipio.Caption  := 'Municipio : '+ edtCidade.Text + '/' +cmbUF.Text
                         Else
                             lblMunicipio.Caption  := 'Municipio : TODOS';
                         //
                         stream := TMemoryStream.Create;
                         With dmRelatorios  do
                         begin
                            RvNDRWriter1.StreamMode := smUser;
                            RvNDRWriter1.Stream := Stream;
                            //  Executa o relatório rpListaGrupo
                               With rvClientes do
                               begin
                                   SetParam('Titulo','Lista de Parcelas Atrasadas até  : '+ edtDTFINA.Text);
                                   SetParam('Grupo', 'Cotas do Grupo : '+edtGrupo.Text+' - '+lblNomeGrupo.Caption );
                                   SetParam('Situacao', M_NMSITU);
                                   SetParam('Contemplacao', M_DECONT);
                               End;
                               //
                               rvClientes.SelectReport('rpClientes',False);
                               rvClientes.ExecuteReport('rpClientes');
                               FrmPreview := TFrmPreview.Create(Self, Stream,
                                    'Lista de Cotas Grupo ');
                               try
                                 FrmPreview.ShowModal;
                               finally
                                 FrmPreview.Release;
                                 FrmPreview := nil;
                               end;
                          End;
                       end;
                    End
                    Else
                        Application.MessageBox('Não dados no periodo indicado.',
                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL) ;
             //
         Finally
                Screen.Cursor := crDefault;
                btnVisualizar.Enabled := True;
         End;
         //
         Application.ProcessMessages;
end;

procedure TfrmRelAtrasadasGruposCotas2.rbSituacaoClick(Sender: TObject);
begin
  inherited;
      if not uFuncoes.Empty(edtGrupo.Text) then
          Abrir_Cotas_Grupo(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelAtrasadasGruposCotas2.rbContemplacaoClick(
  Sender: TObject);
begin
  inherited;
      if not uFuncoes.Empty(edtGrupo.Text) then
          Abrir_Cotas_Grupo(StrtoInt(edtGrupo.Text));
end;

procedure TfrmRelAtrasadasGruposCotas2.cbxLimiteClick(Sender: TObject);
begin
  inherited;
       if not (cbxLimite.Checked) Then
          speNumeroParcelas.Value := 0; 
end;

procedure TfrmRelAtrasadasGruposCotas2.speNumeroParcelasKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmRelAtrasadasGruposCotas2.edtNomeChange(Sender: TObject);
begin
  inherited;
       if not (cdsConsulta.IsEmpty) and not uFuncoes.Empty(edtNome.Text) Then
           cdsConsulta.Locate('CLI_NOME',edtNome.Text, [loPartialKey]);
end;

End.
