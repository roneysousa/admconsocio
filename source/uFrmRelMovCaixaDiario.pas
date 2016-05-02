unit uFrmRelMovCaixaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppVar, ppCtrls, ppPrnabl, ppBands,
  ppCache;

type
  TfrmRelMovCaixaDiario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtData: TDateEdit;
    cmbCaixa: TComboBox;
    Panel2: TPanel;
    grdConsultar: TDBGrid;
    Panel3: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarMCA_SEQUENCIA: TIntegerField;
    cdsConsultarMCA_VENDA: TIntegerField;
    cdsConsultarMCA_TIPOMOV: TStringField;
    cdsConsultarMCA_DTMOVIMENTO: TDateField;
    cdsConsultarMCA_HRMOVIMENTO: TStringField;
    cdsConsultarMCA_VLMODALIDADE: TFMTBCDField;
    cdsConsultarMCA_OBSEVACAO: TStringField;
    cdsConsultarMCA_CAIXA: TIntegerField;
    cdsConsultarMCA_SEQCAIXA: TIntegerField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppImage2: TppImage;
    lblTitulo1: TppLabel;
    ppLine6: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    lblTitulo2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    cdsConsultarMCA_DESC_TIPO: TStringField;
    lblTitulo3: TppLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbCaixaDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbCaixaChange(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure edtDataEnter(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnImprimirClick(Sender: TObject);
    procedure cdsConsultarCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Consulta(iInicio, iFinal, iCaixa : integer);
  public
    { Public declarations }
  end;

var
  frmRelMovCaixaDiario: TfrmRelMovCaixaDiario;

implementation

uses udmAdmDados, uFrmAdmMain, uLogon, uFuncoes, uDmPesquisas;

{$R *.dfm}

procedure TfrmRelMovCaixaDiario.btnFecharClick(Sender: TObject);
begin
     close;
end;

procedure TfrmRelMovCaixaDiario.FormCreate(Sender: TObject);
begin
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If uFuncoes.Empty(novo) or uFuncoes.Empty(alterar) or uFuncoes.Empty(apagar) Then
     begin
            dmAdmDados.Verificar_Direito_Acesso(
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Relação de Entradas/Saída...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     //btnImprimi.Visible  := (novo = 'S');
   End;
end;

procedure TfrmRelMovCaixaDiario.FormShow(Sender: TObject);
begin
       edtData.Date := Date();
       edtData.SetFocus; 
       btnImprimir.Enabled := False;
end;

procedure TfrmRelMovCaixaDiario.cmbCaixaDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
Var
   strVal, strAll : String;
   pos1, pos2 : integer;
   rc : TRect;
   arrWidth: array[0..3] of integer;

begin
  inherited;
   With cmbCaixa do
   begin
        Canvas.Brush.Style := bsSolid;
        Canvas.FillRect(Rect);
        strAll := Items[index];
   End;
   //
  arrWidth[0] := 0;
  arrWidth[1] := 100;  // Width of column 1
  arrWidth[2] := 200;  // Width of column 2
  arrWidth[3] := 300;  // Width of colimn 3

  rc.Left   := Rect.Left + arrWidth[0] + 2;
  rc.Right  := Rect.Left + arrWidth[1] - 2;
  rc.Top    := Rect.Top;
  rc.Bottom := Rect.Bottom;

  pos1   := Pos(';', strAll);
  strVal := Copy(strAll, 1, pos1 - 1);

  cmbCaixa.Canvas.TextRect(rc, rc.Left, rc.Top, strVal);

  cmbCaixa.Canvas.MoveTo(rc.Right, rc.Top);
  cmbCaixa.Canvas.LineTo(rc.Right, rc.Bottom);

  rc.Left  := Rect.Left + arrWidth[1] + 2;
  rc.Right := Rect.Left + arrWidth[2] - 2;

  strAll := Copy(strAll, pos1 + 1, Length(strAll) - pos1);
  pos1   := Pos(';', strAll);
  strVal := Copy(strAll, 1, pos1 - 1);

  cmbCaixa.Canvas.TextRect(rc, rc.Left, rc.Top, strVal);
  //
  cmbCaixa.Canvas.MoveTo(rc.Right, rc.Top);
  cmbCaixa.Canvas.LineTo(rc.Right, rc.Bottom);

  rc.Left  := Rect.Left + arrWidth[2] + 2;
  rc.Right := Rect.Left + arrWidth[3] - 2;

  strAll := Copy(strAll, pos1 + 1, Length(strAll) - pos1);
  pos1   := Pos(';', strAll);
  strVal := Copy(strAll, 1, pos1 - 1);

  cmbCaixa.Canvas.TextRect(rc, rc.Left, rc.Top, strVal);

  cmbCaixa.Canvas.MoveTo(rc.Right, rc.Top);
  cmbCaixa.Canvas.LineTo(rc.Right, rc.Bottom);
  strAll := Copy(strAll, pos1 + 1, Length(strAll) - pos1);
end;

procedure TfrmRelMovCaixaDiario.cmbCaixaChange(Sender: TObject);
Var
      aNumero : String;
      aCaixa , aInicial, aFinal : Integer;
begin
     If not uFuncoes.Empty(cmbCaixa.Text) Then
      begin
          aNumero   := Copy(cmbCaixa.Text,1,7);
          //
          uFuncoes.FilterCDS(dmPesquisas.cdsCaixa, fsInteger, aNumero);
          //
          If not (dmPesquisas.cdsCaixa.IsEmpty) Then
           begin
               aCaixa   := dmPesquisas.cdsCaixaCAI_CAIXA.AsInteger;
               aInicial := dmPesquisas.cdsCaixaCAI_RGINICIAL.AsInteger;
               aFinal   := dmPesquisas.cdsCaixaCAI_RGFINAL.AsInteger;
               //
               Consulta(aInicial, aFinal, aCaixa);
           End;
      End;
end;

procedure TfrmRelMovCaixaDiario.Consulta(iInicio, iFinal, iCaixa: integer);
begin
     with cdsConsultar do
      begin
           DisableControls;
           Close;
           Params.ParamByName('pINICIO').AsInteger := iInicio;
           Params.ParamByName('pFINAL').AsInteger  := iFinal;
           Params.ParamByName('pCAIXA').AsInteger  := iCaixa;
           Params.ParamByName('pENTRADA').AsString := 'E';
           Params.ParamByName('pPSAIDA').AsString  := 'S';
           open;
           EnableControls;
      End;
end;

procedure TfrmRelMovCaixaDiario.edtDataExit(Sender: TObject);
Var
     M_NRCAIX, M_DTABER, M_HOABER, M_HOFECH : String;
begin
  inherited;
        if (edtData.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtData.text) Then
              edtData.Text := DatetoStr(uFuncoes.FormatarData(edtData.text))
           Else
           begin
              edtData.Clear;
              edtData.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
     //
     if (edtData.Date > Date()) Then
      begin
           edtData.SetFocus;
           RAISE Exception.Create('Data não pode ser superior a atual.');
      End;
     //
    if (dmPesquisas.GetMovCaixa(0, edtData.Date, 'F')) Then
     begin
      with dmPesquisas.cdsRelMovCaixa do
        begin
             First;
             //
             cmbCaixa.Items.Clear;
             While not (Eof) do
              begin
                   M_NRCAIX := uFuncoes.StrZero(FieldByName('CAI_NUMERO').AsString,7);
                   M_DTABER := FieldByName('CAI_DTABERTURA').AsString;
                   M_HOABER := FieldByName('CAI_HOABERTURA').AsString;
                   M_HOFECH := FieldByName('CAI_HOFECHAMENTO').AsString;
                   //
                   cmbCaixa.Items.Add(M_NRCAIX+';'+M_DTABER+';'+M_HOABER + ';'+M_HOFECH+';');
                   //
                   Next;
              End;
        End;
    End;

end;

procedure TfrmRelMovCaixaDiario.edtDataEnter(Sender: TObject);
begin
     if (cdsConsultar.Active) Then
     begin
         cdsConsultar.Close;
         cmbCaixa.Items.Clear;
     End;
end;

procedure TfrmRelMovCaixaDiario.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
     btnImprimir.Enabled := not (cdsConsultar.IsEmpty);
end;

procedure TfrmRelMovCaixaDiario.btnImprimirClick(Sender: TObject);
Var
   aNumero : String;
begin
    If not (cdsConsultar.IsEmpty) Then
    begin
       btnImprimir.Enabled := False;
       try
           With ppReport1 do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 lblTitulo1.Caption := 'RELAÇÃO DE ENTRADAS/SAÍDA DE CAIXA';
                 //
                 aNumero   := Copy(cmbCaixa.Text,1,7);
                 //
                 uFuncoes.FilterCDS(dmPesquisas.cdsCaixa, fsInteger, aNumero);
                 //
                 If not (dmPesquisas.cdsCaixa.IsEmpty) Then
                  Begin
                      lblTitulo2.Caption := 'DATA/HORA ABERTURA   : ' + dmPesquisas.cdsCaixaCAI_DTABERTURA.AsString +  ' - '+ dmPesquisas.cdsCaixaCAI_HOABERTURA.AsString
                                      + ' |  DATA/HORA FECHAMENTO : ' + dmPesquisas.cdsCaixaCAI_DTFECHAMENTO.AsString+ ' - ' + dmPesquisas.cdsCaixaCAI_HOFECHAMENTO.AsString;
                      lblTitulo3.Caption := 'USUÁRIO : '+ dmAdmDados.GetNomeCaixa(dmPesquisas.cdsCaixaCAI_CAIXA.AsInteger);
                  End;
                 //
                 PrintReport;
            End;
       Finally
            btnImprimir.Enabled := true;
       End;
    End;   
end;

procedure TfrmRelMovCaixaDiario.cdsConsultarCalcFields(DataSet: TDataSet);
begin
      if (cdsConsultarMCA_TIPOMOV.AsString = 'E') Then
         cdsConsultarMCA_DESC_TIPO.AsString := 'ENTRADAS';
      //
      if (cdsConsultarMCA_TIPOMOV.AsString = 'S') Then
         cdsConsultarMCA_DESC_TIPO.AsString := 'SAÍDAS';
end;

end.
