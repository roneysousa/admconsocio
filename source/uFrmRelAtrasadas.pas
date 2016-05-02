unit uFrmRelAtrasadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, DB, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Mask, ToolEdit;

type
  TfrmRelAtrasadas = class(TfrmModRelatorio)
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline1ppField28: TppField;
    ppDBPipeline1ppField29: TppField;
    ppDBPipeline1ppField30: TppField;
    ppDBPipeline1ppField31: TppField;
    ppDBPipeline1ppField32: TppField;
    ppDBPipeline1ppField33: TppField;
    ppDBPipeline1ppField34: TppField;
    ppDBPipeline1ppField35: TppField;
    ppDBPipeline1ppField36: TppField;
    dsClientesAtraso: TDataSource;
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    edtDTFINA: TDateEdit;
    Label3: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    rbSituacao: TRadioGroup;
    rbContemplacao: TRadioGroup;
    Label6: TLabel;
    cmbUF: TComboBox;
    Label4: TLabel;
    edtCidade: TEdit;
    ppRepClientesAtraso: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    lblTitulo: TppLabel;
    lblCotas: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
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
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText24: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    lblMunicipio: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel26: TppLabel;
    edtNRVenda: TEdit;
    Label5: TLabel;
    lblCliente: TLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine5: TppLine;
    ppLabel27: TppLabel;
    ppDBCalc11: TppDBCalc;
    procedure FormShow(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNRVendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRVendaChange(Sender: TObject);
    procedure edtNRVendaExit(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    Function Relatorio(aDataInicio, aDataFinal: TDate; iGrupo : Integer; aSituacao : String ) : boolean;
  public
    { Public declarations }
  end;

var
  frmRelAtrasadas: TfrmRelAtrasadas;

implementation

uses uFuncoes, udmAdmDados, uFrmConsGrupos, udmRelatorios, uFrmAdmMain;

{$R *.dfm}

procedure TfrmRelAtrasadas.FormShow(Sender: TObject);
begin
  inherited;
     edtDTINIC.Date := Date();
     edtDTFINA.Date := edtDTINIC.Date;
     //
     lblNomeGrupo.Caption := '';
     lblCliente.Caption := '';
end;

procedure TfrmRelAtrasadas.edtDTINICExit(Sender: TObject);
begin
  inherited;
        if (edtDTINIC.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTINIC.text) Then
              edtDTINIC.Text := DatetoStr(uFuncoes.FormatarData(edtDTINIC.text))
           Else
           begin
              edtDTINIC.Clear;
              edtDTINIC.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelAtrasadas.edtDTFINAExit(Sender: TObject);
begin
  inherited;
        if (edtDTFINA.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTFINA.text) Then
           begin
               edtDTFINA.Text := DatetoStr(uFuncoes.FormatarData(edtDTFINA.text));
               //
               If (edtDTFINA.Date < edtDTINIC.Date) Then
                begin
                     edtDTFINA.Date := Date();
                     raise Exception.Create('Período final deve ser maior que o inicial.');  
                End;
           End
           Else
           begin
              edtDTFINA.Clear;
              edtDTFINA.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelAtrasadas.edtGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';

      End;

end;

procedure TfrmRelAtrasadas.edtGrupoExit(Sender: TObject);
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

procedure TfrmRelAtrasadas.edtGrupoKeyPress(Sender: TObject;
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

procedure TfrmRelAtrasadas.spLocalizarGrupoClick(Sender: TObject);
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

procedure TfrmRelAtrasadas.btnVisualizarClick(Sender: TObject);
Var
    aGrupo : integer;
    aSituacao : String;
begin
  inherited;
        If not uFuncoes.Empty(edtGrupo.Text) Then
            aGrupo := StrtoInt(edtGrupo.Text)
        Else
            aGrupo := 0;
        //
        If (rbSituacao.ItemIndex = 0) Then
           aSituacao := 'A';
        If (rbSituacao.ItemIndex = 1) Then
           aSituacao := 'I';
        If (rbSituacao.ItemIndex = 2) Then
           aSituacao := 'T';
        //
        try
             btnVisualizar.Enabled := False;
             if not (Relatorio(edtDTINIC.Date, edtDTFINA.Date, aGrupo, aSituacao )) Then
                 raise Exception.Create('Não dados no periodo indicado.');
        Finally
             btnVisualizar.Enabled := True;
        End;
end;

function TfrmRelAtrasadas.Relatorio(aDataInicio, aDataFinal: TDate;
  iGrupo: Integer; aSituacao: String): boolean;
Var
   aDescricao, aFlxCont : String;
begin
      Result := False;
      try
         aFlxCont := '';
         //
         if (rbContemplacao.ItemIndex = 0) Then
             aFlxCont := 'S';
         if (rbContemplacao.ItemIndex = 1) Then
             aFlxCont := 'N';
         //
         uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);    
         //
         With dmRelatorios.cdsClientesAtraso do
          begin
               Active := False;
               CommandText := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, COT_DTCONT, ';
               CommandText := CommandText + 'C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE, ';
               CommandText := CommandText + 'PC.REC_NRPARC, PC.REC_DTVENC, PC.REC_DTPAGA, PC.REC_VLPARC, PC.rec_vlmult, PC.REC_CREDITO, PC.REC_TOTAL_PAGO, PC.REC_NOSSONUMERO, PC.REC_FORMABAIXA, PC.REC_TPCREDITO ';
               CommandText := CommandText + 'from COTAS C ';
               CommandText := CommandText + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
               CommandText := CommandText + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA ';
               //
               CommandText := CommandText + 'Where (PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO)';
               //
               If (iGrupo > 0) Then
                  CommandText := CommandText + ' and (C.COT_CDGRUPO = '+QuotedStr(InttoStr(iGrupo))+')';
               If not uFuncoes.Empty(edtNRVenda.Text) Then
                  CommandText := CommandText + ' and (C.COT_NRVENDA = '+QuotedStr(edtNRVenda.Text)+')';
               //
               If (rbSituacao.ItemIndex = 0) Then
                    CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('A')+')';
               If (rbSituacao.ItemIndex = 1) Then
                    CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr('I')+')';
               //
               if (rbContemplacao.ItemIndex <> 2) Then
                    CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+ QuotedStr(aFlxCont)+')';
               //
               If not uFuncoes.Empty(cmbUF.Text) Then
                    CommandText := CommandText + ' and (CL.CLI_UFCLIE = '+QuotedStr(cmbUF.Text)+')';
               If not uFuncoes.Empty(edtCidade.Text) Then
                    CommandText := CommandText + ' and (CLI_CIDADE = '+QuotedStr(edtCidade.Text)+')';
               //
               CommandText := CommandText + 'order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA, PC.REC_DTVENC';
               //
               Params.ParamByName('pDTINIC').AsDate     := Strtodate('01/01/1980');
               Params.ParamByName('pDTFINA').AsDate     := edtDTFINA.Date;
               Params.ParamByName('pPAGO').AsFloat      := 0;
               //
               Active := True;
          End;
          //
         if not (dmRelatorios.cdsClientesAtraso.IsEmpty) Then
          begin
            with ppRepClientesAtraso do
            begin
                 If (iGrupo = 0) Then
                    aDescricao := 'TODOS'
                 Else
                    aDescricao := InttoStr(iGrupo);
                 //
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 lblTitulo.Caption := 'Lista de Parcelas Atrasadas : ';
                 //
                 lblTitulo.Caption := lblTitulo.Caption + ' ate '+edtDTFINA.Text ;
                 lblCotas.Caption  := '';
                 //
                 If (iGrupo > 0) Then
                     lblCotas.Caption  := lblCotas.Caption  + ' das Cotas do Grupo : ' + aDescricao + ' - '+lblNomeGrupo.Caption
                 Else
                     lblCotas.Caption  := lblCotas.Caption  + ' das Cotas do Grupo : TODOS' ;
                 If (aSituacao = 'A') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Situação : ATIVAS';
                 If (aSituacao = 'I') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Situação : INATIVAS';
                 If (aSituacao = 'T') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Situação : TODAS';
                 //
                 If (aFlxCont = 'S') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Contemplados';
                 If (aFlxCont = 'N') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Não-Contemplados';
                 If (rbContemplacao.ItemIndex = 2) then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Contemplados : Todas as cotas';
                 //lblCotas2.Caption  := lblCotas2.Caption  +
                 If not uFuncoes.Empty(cmbUF.Text) and Not uFuncoes.Empty(edtCidade.Text) Then
                     lblMunicipio.Caption := '  em : '+ edtCidade.Text + '/' +cmbUF.Text
                 Else
                     lblMunicipio.Caption := '';
                 //
                 PrintReport;
            end;
            //
            Result := True;
          End;
      Except

      end;
end;

procedure TfrmRelAtrasadas.FormCreate(Sender: TObject);
begin
  inherited;
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If uFuncoes.Empty(novo) or uFuncoes.Empty(alterar) or uFuncoes.Empty(apagar) Then
     begin
           dmAdmDados.Verificar_Direito_Acesso(
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Modelos'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
   End;
end;

procedure TfrmRelAtrasadas.edtNRVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
end;

procedure TfrmRelAtrasadas.edtNRVendaChange(Sender: TObject);
begin
  inherited;
       if uFuncoes.Empty(edtNRVenda.Text) Then
           lblCliente.Caption := '';
end;

procedure TfrmRelAtrasadas.edtNRVendaExit(Sender: TObject);
begin
  inherited;
       IF not uFuncoes.Empty(edtNRVenda.text) Then
        begin
            if not (dmAdmDados.GetNumVenda(Strtoint(edtNRVenda.text))) Then
             begin
                  lblCliente.Caption := '';
                  raise Exception.Create('Número de venda não existe.');
             End;
            //
            lblCliente.Caption := dmAdmDados.GetClienteVenda(Strtoint(edtNRVenda.text));
        End;
end;

end.
