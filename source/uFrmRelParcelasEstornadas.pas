unit uFrmRelParcelasEstornadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  FMTBcd, DB, SqlExpr, DBClient, Provider, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl,
  ppStrtch, ppMemo, ppVar, xmldom, Xmlxform;

type
  TFrmRelParcelaEstornadas = class(TfrmModRelatorio)
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    edtDTFINA: TDateEdit;
    dstRelatorio: TSQLDataSet;
    dstRelatorios: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
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
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lblTitulo2: TppLabel;
    ppLabel28: TppLabel;
    ppLabel1: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLine7: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine5: TppLine;
    ppDBText25: TppDBText;
    ppDBText1: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppImage1: TppImage;
    cdsRelatorioREC_TAXADM_CALC: TFloatField;
    cdsRelatorioREC_TXFUND_CALC: TFloatField;
    cdsRelatorioREC_TOTAL_CALC: TFloatField;
    ppLine6: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBMemo1: TppDBMemo;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    XMLTransformProvider1: TXMLTransformProvider;
    procedure FormShow(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelParcelaEstornadas: TFrmRelParcelaEstornadas;

implementation

uses uFuncoes, udmAdmDados, udmRelatorios;

{$R *.dfm}

procedure TFrmRelParcelaEstornadas.FormShow(Sender: TObject);
begin
  inherited;
     edtDTINIC.Date := Date();
     edtDTFINA.Date := edtDTINIC.Date;
end;

procedure TFrmRelParcelaEstornadas.edtDTINICExit(Sender: TObject);
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

procedure TFrmRelParcelaEstornadas.edtDTFINAExit(Sender: TObject);
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

procedure TFrmRelParcelaEstornadas.btnVisualizarClick(Sender: TObject);
Var
  aTexto : String;
begin
  inherited;
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
      btnVisualizar.Enabled := false;
      try
        With cdsRelatorio do
        begin
            Close;
            CommandText := aTexto;
            Params.ParamByName('pDTINIC').AsDate := edtDTINIC.Date;
            Params.ParamByName('pDTFINA').AsDate := edtDTFINA.Date;
            Open;
            //
            if not (IsEmpty) Then
            begin
                 with ppReport1 do
                  begin
                      lblTitulo2.Caption := 'Lista de Parcelas Estornadas no Período de '+
                                 edtDTINIC.Text+' A '+edtDTFINA.Text;
                      If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                         ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                      //
                      PrintReport;
                  End;
            End
            Else
               Application.MessageBox(PChar('Não há movimento no período indicado.'),
                      'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
        End;
      Finally
         btnVisualizar.Enabled := true;
      End;
end;

procedure TFrmRelParcelaEstornadas.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     if (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINIC.Text)) Then
     begin
          key := #0;
          edtDTFINA.SetFocus;
     End;
end;

procedure TFrmRelParcelaEstornadas.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     if (key = #13) and not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINA.Text)) Then
     begin
          key := #0;
          If (btnVisualizar.Enabled) Then
             btnVisualizar.SetFocus;
     End;
end;

procedure TFrmRelParcelaEstornadas.cdsRelatorioCalcFields(
  DataSet: TDataSet);
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
