unit uFrmRelTotalRecGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  FMTBcd, DB, SqlExpr, DBClient, Provider, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl,
  ppVar;

type
  TFrmRelTotalRecGrupo = class(TfrmModRelatorio)
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    edtDTFINA: TDateEdit;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    cdsConsultaREC_CDGRUP: TIntegerField;
    cdsConsultaGRU_DESCRICAO: TStringField;
    cdsConsultaVALORPARCELA: TFMTBCDField;
    cdsConsultaTOTALPAGO: TFMTBCDField;
    cdsConsultaTOTALMULTA: TFMTBCDField;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppImage2: TppImage;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lblPeriodo: TppLabel;
    cdsDados: TClientDataSet;
    cdsDadosCDS_CDGRUP: TIntegerField;
    cdsDadosCDS_DESCRICAO: TStringField;
    cdsDadosCDS_VLPARCELA: TFloatField;
    cdsDadosCDS_PETXADM: TFloatField;
    cdsDadosCDS_VLTXADM: TFloatField;
    cdsDadosCDS_PETXFUNDO: TFloatField;
    cdsDadosCDS_VLTXFUNDO: TFloatField;
    cdsDadosCDS_TOTAL_PARCELA: TFloatField;
    cdsDadosCDS_VLMULTA: TFloatField;
    cdsDadosCDS_TOTAL_RECEBIDO: TFloatField;
    cdsDadosCDS_TOTAL_RECEBIDO_CALC: TFloatField;
    dsDados: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cdsDadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Function AddDados(iGrupo : Integer; aDecricao : String; aDtInicio, aDtFinal : TDatetime): Boolean;
  public
    { Public declarations }
  end;

var
  FrmRelTotalRecGrupo: TFrmRelTotalRecGrupo;

implementation

uses uFuncoes, udmAdmDados;

{$R *.dfm}

procedure TFrmRelTotalRecGrupo.edtDTINICExit(Sender: TObject);
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

procedure TFrmRelTotalRecGrupo.edtDTFINAExit(Sender: TObject);
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

procedure TFrmRelTotalRecGrupo.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
      begin
          key := #0;
          edtDTFINA.SetFocus;
      End;
end;

procedure TFrmRelTotalRecGrupo.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
      begin
          key := #0;
          btnVisualizar.SetFocus;
      End;
end;

procedure TFrmRelTotalRecGrupo.FormShow(Sender: TObject);
begin
  inherited;
        edtDTINIC.Date := Date();
        edtDTFINA.Date := edtDTINIC.Date;
        //
        edtDTINIC.SetFocus;
end;

procedure TFrmRelTotalRecGrupo.btnVisualizarClick(Sender: TObject);
Var
   iGrupo : Integer;
   aDescricao : String;
begin
  inherited;
      if not ufuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text))
       and not ufuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
       begin
          btnVisualizar.Enabled := false;
          try
            uFuncoes.RefreshCDS(cdsDados);
            cdsDados.EmptyDataSet;
            //
            With cdsConsulta do
            begin
                 Close;
                 Params[0].AsDate := edtDTINIC.Date;
                 Params[1].AsDate := edtDTFINA.Date;
                 Open;
                 //
                 If not (IsEmpty) Then
                 begin
                      First;
                      While not (Eof) do
                      begin
                          iGrupo     := FieldByname('REC_CDGRUP').AsInteger;
                          aDescricao := FieldByname('GRU_DESCRICAO').AsString;
                          //
                          AddDados(iGrupo, aDescricao, edtDTINIC.Date, edtDTFINA.Date);
                          //
                          Next;
                      End;
                      //
                      With ppReport1 do
                      begin
                           If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                                ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                           //
                           lblPeriodo.Caption := edtDTINIC.Text + ' A '+edtDTFINA.Text;
                           //
                           PrintReport;
                      End;
                 End
                 Else
                    Application.MessageBox('Não movimento no período indicado.',
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
            End;
          Finally
              btnVisualizar.Enabled := true;
          End;
       End;
end;

function TFrmRelTotalRecGrupo.AddDados(iGrupo: Integer; aDecricao : String;
  aDtInicio, aDtFinal: TDatetime): Boolean;
var qraux : TSQLquery;
    texto : string;
    fValorParcela, fTaxaAdm, fTaxaFundo, fTotalPago, fValorPC, fValorMulta : Double;
    fTotalTaxaAdm,  fPercentualTaxaAdm, fPercentualTaxaFundo, fTotalTaxaFundo : Double;
begin
  if not (cdsDados.Active) Then
  begin
       uFuncoes.RefreshCDS(cdsDados);
       cdsDados.EmptyDataSet;
  End;
  //
  result := False;
  texto  := 'Select C.COT_NRVENDA, P.REC_CDGRUP, C.COT_TAXA_ADM, C.cot_fundores, G.GRU_DESCRICAO, ';
  texto  := texto + 'P.REC_VLPARC, P.REC_VLMULT, P.REC_TOTAL_PAGO ';
  texto  := texto + 'from PARCELAS P ';
  texto  := texto + 'Inner Join GRUPOS G ON P.REC_CDGRUP = G.GRU_CODIGO ';
  texto  := texto + 'Inner Join COTAS C  ON P.REC_NRVEND = C.COT_NRVENDA ';
  texto  := texto + 'Where (P.REC_DTPAGA >= :pDTINICIO) AND (P.REC_DTPAGA <= :pDTFINAL) ';
  texto  := texto + 'AND (P.rec_cdgrup = :pGRUPO) and not (P.REC_DTPAGA is null) order by P.REC_CDGRUP ';
  //
  fValorParcela := 0; fTaxaAdm := 0; fTaxaFundo := 0; fTotalPago  := 0;
  fPercentualTaxaAdm  := 0; fPercentualTaxaFundo  := 0;
  fTotalTaxaFundo := 0; fTotalTaxaAdm := 0;
  fValorPC := 0;
  fValorMulta := 0;
  //
  QrAux := TSqlquery.Create(nil);
  with QrAux do
   try
       SQLConnection := dmAdmDados.sqlConn;
       sql.Add(texto);
       Params.ParamByName('pGRUPO').AsInteger := iGrupo;
       Params.ParamByName('pDTINICIO').AsDate := aDtInicio;
       Params.ParamByName('pDTFINAL').AsDate  := aDtFinal;
       open;
       //
       If not (IsEmpty) Then
         begin
              While not (Eof) do
              begin
                   fPercentualTaxaAdm   := FieldByName('COT_TAXA_ADM').AsFloat;
                   fPercentualTaxaFundo := FieldByName('cot_fundores').AsFloat;
                   fTaxaAdm             := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('REC_VLPARC').AsFloat, fPercentualTaxaAdm),2);
                   fTotalTaxaAdm        := fTotalTaxaAdm + fTaxaAdm;
                   fTaxaFundo           := uFuncoes.Arredondar(uFuncoes.Gerapercentual(FieldByName('REC_VLPARC').AsFloat, fPercentualTaxaFundo),2);
                   fTotalTaxaFundo      := fTotalTaxaFundo + fTaxaFundo;
                   //
                   fValorMulta   := fValorMulta + FieldByName('REC_VLMULT').AsFloat;
                   fValorPC      := fValorPC + FieldByName('REC_VLPARC').AsFloat;
                   fValorParcela := fValorParcela + (FieldByName('REC_VLPARC').AsFloat + fTaxaAdm + fTaxaFundo);
                   fTotalPago    := fTotalPago + ((FieldByName('REC_VLPARC').AsFloat + fTaxaAdm + fTaxaFundo)
                                               + FieldByName('REC_VLMULT').AsFloat);
                   //
                   Next;
              End;
              //
              if (fValorParcela > 0) Then
              begin
                   cdsDados.Append;
                   cdsDadosCDS_CDGRUP.AsInteger   := iGrupo;
                   cdsDadosCDS_DESCRICAO.AsString := aDecricao;
                   cdsDadosCDS_VLPARCELA.AsFloat  := fValorPC;
                   //cdsDadosCDS_PETXADM.AsFloat    :=
                   cdsDadosCDS_VLTXADM.AsFloat    := fTotalTaxaAdm;
                   //cdsDadosCDS_PETXFUNDO.AsFloat  :=
                   cdsDadosCDS_VLMULTA.AsFloat    := fValorMulta;
                   cdsDadosCDS_VLTXFUNDO.AsFloat  := fTotalTaxaFundo;
                   cdsDadosCDS_TOTAL_PARCELA.AsFloat  := fValorParcela;
                   cdsDadosCDS_TOTAL_RECEBIDO.AsFloat := fTotalPago;
                   cdsDados.Post;
              End;
         End;
   finally
      free;
   end;
end;

procedure TFrmRelTotalRecGrupo.cdsDadosCalcFields(DataSet: TDataSet);
begin
  inherited;
     if (cdsDados.State in [dsInternalCalc]) Then
       cdsDadosCDS_TOTAL_RECEBIDO_CALC.AsFloat :=
          cdsDadosCDS_VLPARCELA.AsFloat +  cdsDadosCDS_VLTXADM.AsFloat +
          cdsDadosCDS_VLTXFUNDO.AsFloat + cdsDadosCDS_VLMULTA.AsFloat;
end;

end.
