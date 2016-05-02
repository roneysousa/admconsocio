unit uFrmRel2ViaEntSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Grids, DBGrids, Buttons,
  FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TfrmRelMovEntradaSaida = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtData: TDateEdit;
    Label2: TLabel;
    cmbCaixa: TComboBox;
    grdConsultar: TDBGrid;
    btnImprimi: TBitBtn;
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
    procedure cmbCaixaDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure edtDataChange(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbCaixaChange(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure btnImprimiClick(Sender: TObject);
    procedure edtDataEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Consulta(iInicio, iFinal, iCaixa : integer);
  public
    { Public declarations }
  end;

var
  frmRelMovEntradaSaida: TfrmRelMovEntradaSaida;

implementation

uses uDmPesquisas, uFuncoes, udmAdmDados, uFrmAdmMain;

{$R *.dfm}

procedure TfrmRelMovEntradaSaida.cmbCaixaDrawItem(Control: TWinControl;
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

procedure TfrmRelMovEntradaSaida.edtDataChange(Sender: TObject);
begin
        cmbCaixa.Items.Clear;
end;

procedure TfrmRelMovEntradaSaida.edtDataExit(Sender: TObject);
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

procedure TfrmRelMovEntradaSaida.FormShow(Sender: TObject);
begin
       edtData.Date := Date();
       btnImprimi.Enabled := False;
end;

procedure TfrmRelMovEntradaSaida.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelMovEntradaSaida.cmbCaixaChange(Sender: TObject);
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

procedure TfrmRelMovEntradaSaida.Consulta(iInicio, iFinal, iCaixa: integer);
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

procedure TfrmRelMovEntradaSaida.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
     btnImprimi.Enabled := not (cdsConsultar.IsEmpty); 
end;

procedure TfrmRelMovEntradaSaida.btnImprimiClick(Sender: TObject);
Var
    M_NRSEQU, M_CDCAIX, M_SQCAIX : integer;
begin
     if not (cdsConsultar.IsEmpty) Then
      begin
           M_NRSEQU := cdsConsultarMCA_SEQUENCIA.AsInteger;
           M_CDCAIX := cdsConsultarMCA_CAIXA.AsInteger;
           M_SQCAIX := cdsConsultarMCA_SEQCAIXA.AsInteger;
           //
           dmAdmDados.CupomEntradaSaida(M_NRSEQU, M_SQCAIX, M_CDCAIX, '2');
      End;
end;

procedure TfrmRelMovEntradaSaida.edtDataEnter(Sender: TObject);
begin
     if (cdsConsultar.Active) Then
     begin
         cdsConsultar.Close;
         cmbCaixa.Items.Clear;
     End;
end;

procedure TfrmRelMovEntradaSaida.FormCreate(Sender: TObject);
begin
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
            dmAdmDados.Verificar_Direito_Acesso(
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('2ª Via Entradas/Saidas...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnImprimi.Visible  := (novo = 'S');
   End;
end;

end.
