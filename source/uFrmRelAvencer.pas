unit uFrmRelAvencer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, DB, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppVar;

type
  TfrmRelPCVencer = class(TfrmModRelatorio)
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
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    dsClientesAtraso: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    lblTitulo: TppLabel;
    lblCotas: TppLabel;
    lblMunicipio: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppTitleBand1: TppTitleBand;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    Function Relatorio(aDataInicio, aDataFinal: TDate; iGrupo : Integer; aSituacao : String ) : boolean;
  public
    { Public declarations }
  end;

var
  frmRelPCVencer: TfrmRelPCVencer;

implementation

uses udmAdmDados, uFrmAdmMain, uFuncoes, uFrmConsGrupos, udmRelatorios;

{$R *.dfm}

procedure TfrmRelPCVencer.FormCreate(Sender: TObject);
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

procedure TfrmRelPCVencer.FormShow(Sender: TObject);
begin
  inherited;
     edtDTINIC.Date := Date();
     edtDTFINA.Date := IncMonth(edtDTINIC.Date,1);
     //
     lblNomeGrupo.Caption := '';
end;

procedure TfrmRelPCVencer.edtDTINICExit(Sender: TObject);
begin
  inherited;
        if (edtDTINIC.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTINIC.text) Then
              edtDTINIC.Text := DatetoStr(uFuncoes.FormatarData(edtDTINIC.text))
           Else
           begin
              edtDTINIC.Clear;
              edtDTINIC.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;
end;

procedure TfrmRelPCVencer.edtDTFINAExit(Sender: TObject);
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
                     raise Exception.Create('Per�odo final deve ser maior que o inicial.');  
                End;
           End
           Else
           begin
              edtDTFINA.Clear;
              edtDTFINA.SetFocus;
              RAISE Exception.Create('Data Inv�lida!');
           End;

end;

procedure TfrmRelPCVencer.edtGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';

      End;

end;

procedure TfrmRelPCVencer.edtGrupoExit(Sender: TObject);
begin
  inherited;
     if not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.Text))) then
           begin
                edtGrupo.SetFocus;
                raise Exception.Create('C�digo de grupo n�o cadastro.');
           end;
           //
           If uFuncoes.Empty(lblNomeGrupo.Caption) then
            begin
                 lblNomeGrupo.Caption := dmAdmDados.GetNomeGrupo(StrtoInt(edtGrupo.Text));                
            End;
           //
      end;
end;

procedure TfrmRelPCVencer.edtGrupoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmRelPCVencer.spLocalizarGrupoClick(Sender: TObject);
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

procedure TfrmRelPCVencer.btnVisualizarClick(Sender: TObject);
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
                 raise Exception.Create('N�o dados no periodo indicado.');
        Finally
             btnVisualizar.Enabled := True;
        End;
end;

function TfrmRelPCVencer.Relatorio(aDataInicio, aDataFinal: TDate;
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
               CommandText := CommandText + 'Where (PC.REC_DTVENC >= :pDTINIC) and (PC.REC_DTVENC <= :pDTFINA) AND (PC.REC_TOTAL_PAGO = :pPAGO) and (PC.REC_DTPAGA is null) ';
               //
               If (iGrupo > 0) Then
                  CommandText := CommandText + ' and (C.COT_CDGRUPO = '+QuotedStr(InttoStr(iGrupo))+')';
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
               CommandText := CommandText + 'order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA, PC.REC_DTVENC ';
               //
               Params.ParamByName('pDTINIC').AsDate     := edtDTINIC.Date;
               Params.ParamByName('pDTFINA').AsDate     := edtDTFINA.Date;
               Params.ParamByName('pPAGO').AsFloat      := 0;
               //
               Active := True;
          End;
          //
         if not (dmRelatorios.cdsClientesAtraso.IsEmpty) Then
          begin
            with ppReport1 do
            begin
                 If (iGrupo = 0) Then
                    aDescricao := 'TODOS'
                 Else
                    aDescricao := InttoStr(iGrupo);
                 //
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 lblTitulo.Caption := 'Lista de Parcelas A Vencer  : ';
                 //
                 lblTitulo.Caption := lblTitulo.Caption + edtDTINIC.Text + ' � '+edtDTFINA.Text ;
                 //
                 If (aSituacao = 'A') Then
                     lblCotas.Caption  := 'Situa��o : ATIVAS  - Cotas do Grupo : ' + aDescricao;
                 If (aSituacao = 'I') Then
                     lblCotas.Caption  := 'Situa��o : INATIVAS  - Cotas do Grupo : ' + aDescricao;
                 If (iGrupo > 0) Then
                     lblCotas.Caption  := 'das Cotas do Grupo : ' + aDescricao + ' - '+lblNomeGrupo.Caption
                 Else
                     lblCotas.Caption  := 'das Cotas do Grupo : TODOS' ;
                 //
                 If (aFlxCont = 'S') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  Contemplados';
                 If (aFlxCont = 'N') Then
                     lblCotas.Caption  := lblCotas.Caption  + '  -  N�o-Contemplados';
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

end.
