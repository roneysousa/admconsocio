unit uFrmContasRecebidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  DB, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, FMTBcd, DBClient,
  Provider, SqlExpr, ppMemo;

type
  TfrmRelContasRecebidas = class(TfrmModRelatorio)
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    ppRepListaClientes: TppReport;
    ppHeaderBand2: TppHeaderBand;
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
    ppLine7: TppLine;
    lblMunicipio: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine6: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLabel26: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBPipeline1: TppDBPipeline;
    dsClientesAtraso: TDataSource;
    rbSituacao: TRadioGroup;
    Label6: TLabel;
    cmbUF: TComboBox;
    Label4: TLabel;
    edtCidade: TEdit;
    rbContemplacao: TRadioGroup;
    Label5: TLabel;
    edtBanco: TEdit;
    spLocalizarBanco: TSpeedButton;
    lblNomeBanco: TLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    rbTipoPagas: TRadioGroup;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lblSituacao: TppLabel;
    lblContem: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel3: TppLabel;
    dstRelatorio: TSQLDataSet;
    dstRelatorios: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    cdsRelatorioCOT_NRVENDA: TIntegerField;
    cdsRelatorioCOT_CDGRUPO: TIntegerField;
    cdsRelatorioCOT_NRCOTA: TIntegerField;
    cdsRelatorioCOT_PLANO: TIntegerField;
    cdsRelatorioCOT_VALCRE: TFMTBCDField;
    cdsRelatorioCOT_POSICAO: TStringField;
    cdsRelatorioCOT_FLCONTEMPLADO: TStringField;
    cdsRelatorioCOT_DTCONT: TDateField;
    cdsRelatorioCOT_TAXA_ADM: TFMTBCDField;
    cdsRelatorioCOT_FUNDORES: TFMTBCDField;
    cdsRelatorioCLI_NOME: TStringField;
    cdsRelatorioCLI_ENDERECO: TStringField;
    cdsRelatorioCLI_BAIRRO: TStringField;
    cdsRelatorioCLI_CIDADE: TStringField;
    cdsRelatorioCLI_UFCLIE: TStringField;
    cdsRelatorioCLI_NRFONE: TStringField;
    cdsRelatorioREC_NRPARC: TIntegerField;
    cdsRelatorioREC_DTVENC: TDateField;
    cdsRelatorioREC_DTPAGA: TDateField;
    cdsRelatorioREC_VLPARC: TFMTBCDField;
    cdsRelatorioREC_VLMULT: TFMTBCDField;
    cdsRelatorioREC_CREDITO: TFMTBCDField;
    cdsRelatorioREC_NOSSONUMERO: TStringField;
    cdsRelatorioREC_DTESTORNO: TDateField;
    cdsRelatorioREC_HISTORICO: TMemoField;
    cdsRelatorioREC_TAXADM_CALC: TFloatField;
    cdsRelatorioREC_TXFUND_CALC: TFloatField;
    cdsRelatorioREC_TOTAL_CALC: TFloatField;
    dsRelatorio: TDataSource;
    ppDBPEstornos: TppDBPipeline;
    ppMemo1: TppMemo;
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spLocalizarBancoClick(Sender: TObject);
    procedure edtBancoChange(Sender: TObject);
    procedure edtBancoExit(Sender: TObject);
    procedure edtBancoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    Function Relatorio(aDataInicio, aDataFinal: TDate; iGrupo : Integer; aSituacao : String ) : boolean;
  public
    { Public declarations }
  end;

var
  frmRelContasRecebidas: TfrmRelContasRecebidas;

implementation

uses uFuncoes, udmAdmDados, uFrmConsGrupos, udmRelatorios, 
  uFrmAdmMain, uFrmConsBancos;

{$R *.dfm}

procedure TfrmRelContasRecebidas.edtDTINICExit(Sender: TObject);
begin
  inherited;
        if not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
           if uFuncoes.Validar_Data(edtDTINIC.text) Then
              edtDTINIC.Text := DatetoStr(uFuncoes.FormatarData(edtDTINIC.text))
           Else
           begin
              edtDTINIC.Clear;
              edtDTINIC.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmRelContasRecebidas.edtDTFINAExit(Sender: TObject);
begin
  inherited;
        if not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
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

procedure TfrmRelContasRecebidas.edtGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtGrupo.Text) then
      beGIN
          lblNomeGrupo.Caption := '';

      End;

end;

procedure TfrmRelContasRecebidas.edtGrupoExit(Sender: TObject);
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

procedure TfrmRelContasRecebidas.edtGrupoKeyPress(Sender: TObject;
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

procedure TfrmRelContasRecebidas.spLocalizarGrupoClick(Sender: TObject);
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

procedure TfrmRelContasRecebidas.btnVisualizarClick(Sender: TObject);
Var
    aGrupo : integer;
    aSituacao, aTexto : String;
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
        btnVisualizar.Enabled := False;
        try                            
             if not (Relatorio(edtDTINIC.Date, edtDTFINA.Date, aGrupo, aSituacao )) Then
                 raise Exception.Create('Não dados no periodo indicado.');
             //
               
        Finally
             btnVisualizar.Enabled := True;
        End;
end;

procedure TfrmRelContasRecebidas.FormShow(Sender: TObject);
begin
  inherited;
     edtDTINIC.Date := Date();
     edtDTFINA.Date := edtDTINIC.Date;
     //IncMonth(edtDTINIC.Date,1);
     //
     lblNomeGrupo.Caption := '';
     lblNomeBanco.Caption := '';
end;

Function TfrmRelContasRecebidas.Relatorio(aDataInicio, aDataFinal: TDate;
  iGrupo: Integer; aSituacao : String) : boolean;
Var
   aDescricao, aFlxCont, aBanco : String;
    aVenda, aCota, aGrupo, aParcela, aCliente, aDtVenc : String;
    aJustificativa, aTexto : String;
    fValorParcela :  Double;
begin
      Result := False;
      try
         if (rbContemplacao.ItemIndex = 0) Then
             aFlxCont := 'S';
         if (rbContemplacao.ItemIndex = 1) Then
             aFlxCont := 'N';
         if not uFuncoes.Empty(edtBanco.Text) Then
              aBanco := ' - ' + lblNomeBanco.Caption;
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
               CommandText := CommandText + 'Where (PC.REC_DTPAGA >= :pDTINIC) and (PC.REC_DTPAGA <= :pDTFINA) AND (PC.REC_TOTAL_PAGO > :pPAGO) ';
               If (iGrupo > 0) Then
                  CommandText := CommandText + 'and (C.COT_CDGRUPO = '+QuotedStr(InttoStr(iGrupo)) +')';
               //
               If (aSituacao <> 'T') Then
                    CommandText := CommandText + ' and (C.COT_POSICAO = '+QuotedStr(aSituacao)+')';
               if (rbContemplacao.ItemIndex <> 2) Then
                    CommandText := CommandText + ' and (C.COT_FLCONTEMPLADO = '+ QuotedStr(aFlxCont)+')';
               //
               If not uFuncoes.Empty(edtBanco.Text) Then
                    CommandText := CommandText + ' and (PC.REC_CDBANC ='+QuotedStr(edtBanco.Text)+') ';
                    // CommandText := CommandText + ' and (PC.REC_CDBANC ='+QuotedStr(edtBanco.Text)+') and (PC.REC_FORMABAIXA = '+QuotedStr('B') +') ';
               //
               If (rbTipoPagas.ItemIndex = 1) and uFuncoes.Empty(edtBanco.Text) Then
                   CommandText := CommandText + ' and (PC.REC_FORMABAIXA = '+QuotedStr('C') +') ';
               If (rbTipoPagas.ItemIndex = 2) Then
                   CommandText := CommandText + ' and (PC.REC_FORMABAIXA = '+QuotedStr('B') +') ';
               //
               If not uFuncoes.Empty(cmbUF.Text) Then
                    CommandText := CommandText + ' and (CL.CLI_UFCLIE = '+QuotedStr(cmbUF.Text)+')';
               If not uFuncoes.Empty(edtCidade.Text) Then
                    CommandText := CommandText + ' and (CL.CLI_CIDADE = '+QuotedStr(edtCidade.Text)+')';
               //
               CommandText := CommandText + ' order by C.COT_CDGRUPO, C.COT_NRCOTA, C.COT_NRVENDA, PC.REC_DTVENC';
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
            with ppRepListaClientes do
            begin
                 If (iGrupo = 0) Then
                    aDescricao := 'TODOS'
                 Else
                    aDescricao := InttoStr(iGrupo);
                 //
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 lblTitulo2.Caption := 'Lista de Parcelas Pagas : ';
                 //
                 lblTitulo2.Caption := lblTitulo2.Caption + edtDTINIC.Text + ' à '+edtDTFINA.Text ;
                 //
                 If (aSituacao = 'A') Then
                     lblSituacao.Caption  := 'Situação : ATIVAS  ';
                 If (aSituacao = 'I') Then
                     lblSituacao.Caption  := 'Situação : INATIVAS ';
                 If (aSituacao <> 'I') and (aSituacao <> 'A') Then
                     lblSituacao.Caption  := 'Situação : Todas as Cotas ';
                 //
                 If (iGrupo > 0) Then
                     lblCotas2.Caption  := 'Cotas do Grupo : ' + aDescricao + aBanco
                 Else
                     lblCotas2.Caption  := 'Cotas do Grupo : TODOS' + aBanco;
                 //
                 If (rbContemplacao.ItemIndex = 0) Then
                     lblContem.Caption  := 'Contemplação : Contemplados';
                 If (rbContemplacao.ItemIndex = 1) Then
                     lblContem.Caption  := 'Contemplação : Não-Contemplados';
                 If (rbContemplacao.ItemIndex = 2) Then
                     lblContem.Caption  := 'Contemplação : Todas a Cotas';
                 //
                 //lblCotas2.Caption  := lblCotas2.Caption  +
                 If not uFuncoes.Empty(cmbUF.Text) and Not uFuncoes.Empty(edtCidade.Text) Then
                     lblMunicipio.Caption := '  em : '+ edtCidade.Text + '/' +cmbUF.Text
                 Else
                     lblMunicipio.Caption := '';
                 //
                 ppMemo1.Lines.Clear;
                 ppSummaryBand2.Height := 40;
                 ppMemo1.Height        := 20;
                 //
                With cdsRelatorio do
                 begin
                    aTexto := 'Select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, C.cot_plano,  C.cot_valcre, C.COT_POSICAO, C.COT_FLCONTEMPLADO, COT_DTCONT, ';
                    aTexto := aTexto + 'C.COT_TAXA_ADM, C.COT_FUNDORES, CL.CLI_NOME, CL.CLI_ENDERECO, CL.CLI_BAIRRO, CL.CLI_CIDADE, CL.CLI_UFCLIE, CL.CLI_NRFONE, ';
                    aTexto := aTexto + 'PC.REC_NRPARC, PC.REC_DTVENC, PC.REC_DTPAGA, PC.REC_VLPARC, PC.rec_vlmult, PC.REC_CREDITO, ';
                    aTexto := aTexto + 'PC.REC_NOSSONUMERO, PC.REC_DTESTORNO, PC.REC_HISTORICO ';
                    aTexto := aTexto + 'from COTAS C ';
                    aTexto := aTexto + 'INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE ';
                    aTexto := aTexto + 'INNER JOIN PARCELAS PC ON PC.REC_NRVEND = C.COT_NRVENDA ';
                    aTexto := aTexto + ' Where (PC.REC_DTESTORNO >= :pDTINIC) and (PC.REC_DTESTORNO <= :pDTFINA) ';
                    aTexto := aTexto + ' AND ((PC.REC_TOTAL_PAGO = 0) or (PC.REC_TOTAL_PAGO is Null)) and (C.COT_POSICAO = '+QuotedStr('A')+') ';
                    aTexto := aTexto + ' order by C.COT_CDGRUPO, C.COT_NRCOTA ';
                    //
                    Close;
                    CommandText := aTexto;
                    Params.ParamByName('pDTINIC').AsDate := edtDTINIC.Date;
                    Params.ParamByName('pDTFINA').AsDate := edtDTFINA.Date;
                    Open;
                    //
                    If not (IsEmpty) Then
                    begin
                         ppMemo1.Lines.Clear;
                         ppMemo1.Lines.Add('');
                         ppMemo1.Lines.Add(uFuncoes.Replicate('=', 130));
                         ppMemo1.Lines.Add('>> PARCELAS ESTORNADAS');
                         ppMemo1.Lines.Add(uFuncoes.Replicate('=', 130));
                         First;
                         While not (Eof) do
                         begin
                              aVenda := uFuncoes.StrZero(FieldByName('COT_NRVENDA').AsString,7);
                              aCota  := FieldByName('COT_NRCOTA').AsString;
                              aGrupo := FieldByName('COT_CDGRUPO').AsString;
                              aParcela := uFuncoes.StrZero(FieldByName('REC_NRPARC').AsString,2);
                              aCliente := uFuncoes.StrZero(FieldByName('CLI_NOME').AsString,7);
                              aDtVenc  := FieldByName('REC_DTVENC').AsString;
                              fValorParcela := FieldByName('REC_TOTAL_CALC').AsFloat;
                              aJustificativa := FieldByName('REC_HISTORICO').AsString;
                              ppMemo1.Lines.Add('VENDA : '+ aVenda + ' GRUPO : ' + aGrupo  + ' COTA : '+ aCota + '      CLIENTE : ' + aCliente + '      DT.VENC.: ' + aDtVenc + '      VALOR PC : '+FormatFloat('###,##0.#0', fValorParcela));
                              ppMemo1.Lines.Add('JUSTIFICATIVA : ' + aJustificativa);
                              ppMemo1.Lines.Add(uFuncoes.Replicate('-', 220));
                              //
                              ppSummaryBand2.Height := ppSummaryBand2.Height + 20;
                              ppMemo1.Height        := ppMemo1.Height + 20;
                              //
                              Next;
                         End;
                         //
                         ppMemo1.Lines.Add('REGISTRO(S) : ' + InttoStr(RecordCount));
                    End;
                 End;
                 //
                 PrintReport;
            end;
            //
            Result := True;
          End;
      Except

      end;
end;

procedure TfrmRelContasRecebidas.FormCreate(Sender: TObject);
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

procedure TfrmRelContasRecebidas.spLocalizarBancoClick(Sender: TObject);
begin
  inherited;
      edtBanco.SetFocus;
      Application.CreateForm(TfrmConsBancos, frmConsBancos);
      try
          frmConsBancos.ShowModal;
      Finally
          if not (frmConsBancos.cdsConsultar.IsEmpty)   then
          begin
             edtBanco.Text := uFuncoes.StrZero(frmConsBancos.cdsConsultarBAN_CODIGO.AsString,3);
             lblNomeBanco.Caption := frmConsBancos.cdsConsultarBAN_NOME.AsString;
          end;
          //
          frmConsBancos.Free;
      End;
end;

procedure TfrmRelContasRecebidas.edtBancoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtBanco.Text) Then
        lblNomeBanco.Caption := '';
end;

procedure TfrmRelContasRecebidas.edtBancoExit(Sender: TObject);
Var
   aNome : String;
begin
  inherited;
   If not uFuncoes.Empty(edtBanco.text) Then
   begin
      aNome := dmAdmDados.GetNomeBanco(StrtoInt(edtBanco.text));
      //
      if not uFuncoes.Empty(aNome) Then
      begin
         lblNomeBanco.Caption := aNome;
         edtBanco.text := uFuncoes.StrZero(edtBanco.text,3);
      End
      Else
      begin
          lblNomeBanco.Caption := '';
          edtBanco.Clear;
          edtBanco.SetFocus;
          raise Exception.Create('Banco não cadastrado.');
      End;
   End;
end;

procedure TfrmRelContasRecebidas.edtBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
    if (Key = #13) and uFuncoes.Empty(edtBanco.Text)  then
     begin
         Key := #0;
         spLocalizarBancoClick(Sender);
     end;
end;

procedure TfrmRelContasRecebidas.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
      begin
          key := #0;
          edtDTFINA.SetFocus;
      End;
end;

procedure TfrmRelContasRecebidas.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
      begin
          key := #0;
          edtGrupo.SetFocus;
      End;
end;

procedure TfrmRelContasRecebidas.cdsRelatorioCalcFields(DataSet: TDataSet);
begin
  inherited;
  /// Taxa adm
     If (cdsRelatorioCOT_TAXA_ADM.AsFloat > 0) Then
        cdsRelatorioREC_TAXADM_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsRelatorioREC_VLPARC.AsFloat, cdsRelatorioCOT_TAXA_ADM.AsFloat);
     // Taxa fundo
     If (cdsRelatorioCOT_FUNDORES.AsFloat > 0) Then
        cdsRelatorioREC_TXFUND_CALC.AsFloat :=
              uFuncoes.Gerapercentual(cdsRelatorioREC_VLPARC.AsFloat, cdsRelatorioCOT_FUNDORES.AsFloat);
     //    Tota a Pagar
     if (cdsRelatorioREC_VLPARC.AsFloat > 0) Then
        cdsRelatorioREC_TOTAL_CALC.AsFloat :=  uFuncoes.Arredondar((
             cdsRelatorioREC_VLPARC.AsFloat +
             cdsRelatorioREC_TAXADM_CALC.AsFloat +
             cdsRelatorioREC_TXFUND_CALC.AsFloat),2);
end;

end.
