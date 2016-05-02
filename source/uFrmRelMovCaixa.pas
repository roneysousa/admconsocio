unit uFrmRelMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit;

type
  TfrmRelMovCaixa = class(TfrmModRelatorio)
    edtData: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbCaixa: TComboBox;
    procedure edtDataExit(Sender: TObject);
    procedure cmbCaixaDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmRelMovCaixa: TfrmRelMovCaixa;

implementation

uses uDmPesquisas, DB, uFuncoes, udmRelatorios, udmAdmDados, uFrmAdmMain;

{$R *.dfm}

procedure TfrmRelMovCaixa.edtDataExit(Sender: TObject);
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
              RAISE Exception.Create('Data Inv�lida!');
           End;
     //
     if (edtData.Date > Date()) Then
      begin
           edtData.SetFocus;
           RAISE Exception.Create('Data n�o pode ser superior a atual.');
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

procedure TfrmRelMovCaixa.cmbCaixaDrawItem(Control: TWinControl;
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

procedure TfrmRelMovCaixa.FormShow(Sender: TObject);
begin
  inherited;
       edtData.Date := Date();
end;

procedure TfrmRelMovCaixa.btnVisualizarClick(Sender: TObject);
Var
   aCaixa, aInicial, aFinal, iSeqInicio, iSeqFinal : integer;
   aNumero : String;
begin
  inherited;
      if (edtData.Text = '  /  /    ') Then
        begin
             edtData.SetFocus;
             raise Exception.Create('Digite uma data v�lida.');
        End;
      //
      if uFuncoes.Empty(cmbCaixa.Text) Then
        begin
             cmbCaixa.SetFocus;
             raise Exception.Create('Selecione uma caixa.');
        End;
      //
      aNumero   := Copy(cmbCaixa.Text,1,7);
      //
      uFuncoes.FilterCDS(dmPesquisas.cdsCaixa, fsInteger, aNumero);
      //
      If not (dmPesquisas.cdsCaixa.IsEmpty) Then
      begin
            aCaixa   := dmPesquisas.cdsCaixaCAI_CAIXA.AsInteger;
            aInicial := dmPesquisas.cdsCaixaCAI_RGINICIAL.AsInteger;
            aFinal   := dmPesquisas.cdsCaixaCAI_RGFINAL.AsInteger;
            iSeqInicio := dmPesquisas.cdsCaixaCAI_SQINICIAL.AsInteger;
            iSeqFinal  := dmPesquisas.cdsCaixaCAI_SQFINAL.AsInteger;
            //
            dmRelatorios.Imprime_Caixa2(aCaixa,aInicial,aFinal, iSeqInicio, iSeqFinal ,'2');
      End;
end;

procedure TfrmRelMovCaixa.edtDataChange(Sender: TObject);
begin
  inherited;
        cmbCaixa.Items.Clear;
end;

procedure TfrmRelMovCaixa.FormCreate(Sender: TObject);
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('2� Via Fechamento de Caixa'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnVisualizar.Visible  := (novo = 'S');
   End;
end;

end.
