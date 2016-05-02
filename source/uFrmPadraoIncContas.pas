unit uFrmPadraoIncContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, CurrEdit, StdCtrls, Mask, ToolEdit, Buttons, Grids,
  DBGrids, DB, DBCtrls, Menus;

type
  TFrmPadraoIncContas = class(TForm)
    Panel3: TPanel;
    dsParcelas: TDataSource;
    BtAdicionar: TBitBtn;
    btClonar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    pnlCentral: TPanel;
    pnlDados: TPanel;
    Label3: TLabel;
    spLocalizar: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtCodigo: TEdit;
    edtDTMOVI: TDateEdit;
    mmoDescricao: TMemo;
    cmbNaturezas: TComboBox;
    edtQTPARC: TCurrencyEdit;
    pnlParcelas: TPanel;
    dbgridParcelas: TDBGrid;
    edtDescricao: TEdit;
    PopupMenu1: TPopupMenu;
    Bancos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Naturezas1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgridParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure dbgridParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgridParcelasEnter(Sender: TObject);
    procedure dbgridParcelasColExit(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure dbgridParcelasColEnter(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure edtQTPARCExit(Sender: TObject);
    procedure btClonarClick(Sender: TObject);
    procedure edtQTPARCKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure mmoDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure Naturezas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure tratabotoes;
    Function VALIDAR_NOTA(W_CDFORN, W_NRNOTA, W_NRSERI : String) : Boolean;
    Procedure LIMPAR_CAMPOS;
    Procedure CRIAR_PARCELAS;
    procedure ALTUALIZAR_PARCELAS;
    procedure VALOR_CONTA;
  public
    { Public declarations }
    iOpcao : Integer;
    procedure LimparParcelas;
  end;

var
  FrmPadraoIncContas: TFrmPadraoIncContas;


implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TFrmPadraoIncContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
     // and (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     if (Key = #13) then
       if not (ActiveControl is TDBGrid) then
       begin
            if not (ActiveControl is TDBMemo) Then
            begin
                Key := #0;
                Perform(WM_NEXTDLGCTL, 0, 0);
            End;    
       end;
       {else if (ActiveControl is TDBGrid) then
          with TDBGrid(ActiveControl) do
             if selectedindex < (fieldcount -1) then
               selectedindex := selectedindex +1
             else
               selectedindex := 0;}
end;

procedure TFrmPadraoIncContas.dbgridParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (Key = #13) and
         (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByname('CDS_NRCHEQUE'))
         and (dsParcelas.DataSet.FieldByName('CDS_NRPARC').AsInteger = 1)
         and not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_DTVENC').AsString)
         and not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_VALOR').AsString) then
      Begin
            Key := #0;
            //
            //ALTUALIZAR_PARCELAS;
      End;
end;

procedure TFrmPadraoIncContas.dbgridParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Shift = [ssCtrl]) and (Key = 46) Then
          KEY := 0;
     //
     If (dsParcelas.DataSet.Active = True) Then
     Begin
         IF (KEY = 38) or (key = 40) then // avalio se é seta para cima ou para baixo;
         Begin
             VALOR_CONTA;
             //
             If (dsParcelas.DataSet.Eof) Then
                dsParcelas.DataSet.First;
         End;
     End;
     //
     case key of
        13 : Key := 9;
     end;
end;

procedure TFrmPadraoIncContas.VALOR_CONTA;
begin

end;

procedure TFrmPadraoIncContas.dbgridParcelasEnter(Sender: TObject);
begin
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_DTVENC').AsString) Then
     begin
         dbgridParcelas.SelectedIndex := 1;
         Exit;
     End;
     //
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_VALOR').AsString) Then
     Begin
         dbgridParcelas.SelectedIndex := 2;
         Exit;
     End;
     //
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_AGENCIA').AsString) Then
     Begin
         dbgridParcelas.SelectedIndex := 4;
         Exit;
     End;
     //
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_NRCONTA').AsString) Then
     Begin
         dbgridParcelas.SelectedIndex := 5;
         Exit;
     End;
     //
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_NRCHEQUE').AsString) Then
     Begin
         dbgridParcelas.SelectedIndex := 6;
         Exit;
     End;
end;

procedure TFrmPadraoIncContas.dbgridParcelasColExit(Sender: TObject);
Var
   N_VLCONT : Real;
begin
    If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_DTVENC'))
      and not uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_DTVENC').AsString) Then
    Begin
      If (dsParcelas.DataSet.FieldByName('CDS_DTVENC').AsDateTime < Strtodate(edtDTMOVI.Text)) Then
      Begin
           Application.MessageBox(PChar('Data de vencimento deve ser '+#13'maior ou igual a da compra!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dsParcelas.DataSet.FieldByName('CDS_DTVENC').AsDateTime := Strtodate(edtDTMOVI.Text);
           dbgridParcelas.SelectedIndex := 1;
           Exit;
      End;
   End;
   //
   If (dbgridParcelas.SelectedField <> dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE'))
      and not uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString) Then
   Begin
        dsParcelas.DataSet.Edit;
        dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString :=
            uFuncoes.StrZero(dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString,10);
   End;
   //
end;

procedure TFrmPadraoIncContas.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmPadraoIncContas.dbgridParcelasColEnter(Sender: TObject);
begin
    If (dsParcelas.DataSet.FieldByName('CDS_NRPARC').AsInteger > 0) Then
      dbgridParcelas.Options := dbgridParcelas.Options + [dgEditing]
    else
    begin
        dbgridParcelas.Options := dbgridParcelas.Options - [dgEditing];
        BtGravar.SetFocus;
    End;
    //
     If (uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_NRPARC').AsString)) Then
     begin
           dsParcelas.DataSet.Delete;
           dsParcelas.DataSet.First;
     End;
    //
    If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_NRPARC')) Then
        dbgridParcelas.SelectedIndex := 1;
    //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_AGENCIA'))
     and not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_BANCO').AsString) then
   begin
        dsParcelas.DataSet.Edit;
        dsParcelas.DataSet.FieldByName('CDS_BANCO').AsString :=
            uFuncoes.StrZero(dsParcelas.DataSet.FieldByName('CDS_BANCO').AsString,3);
        //
        If ( dmAdmDados.LOCALIZAR_BANCO(dsParcelas.DataSet.FieldByName('CDS_BANCO').AsString) = False) Then
        begin
             Application.MessageBox('Código de banco não cadastrado!!!','ATENÇÃO',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dsParcelas.DataSet.FieldByName('CDS_BANCO').Clear;
             dbgridParcelas.SelectedIndex := 3;
             Exit;
        End;
   End;
   //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_BANCO'))
     and not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_VALOR').AsString) then
         VALOR_CONTA;
   //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_VALOR'))
     and not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_VALOR').AsString) then
         VALOR_CONTA;
   //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_NRCONTA'))
      and not uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_AGENCIA').AsString) Then
   Begin
        dsParcelas.DataSet.Edit;
        dsParcelas.DataSet.FieldByName('CDS_AGENCIA').AsString :=
            UpperCase(dsParcelas.DataSet.FieldByName('CDS_AGENCIA').AsString);
   End;
   //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE'))
      and not uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_NRCONTA').AsString) Then
   Begin
        dsParcelas.DataSet.Edit;
        dsParcelas.DataSet.FieldByName('CDS_NRCONTA').AsString :=
            uFuncoes.StrZero(dsParcelas.DataSet.FieldByName('CDS_NRCONTA').AsString,10);
   End;
   //
   If (dbgridParcelas.SelectedField = dsParcelas.DataSet.FieldByName('CDS_DTVENC'))
      and not uFuncoes.Empty(dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString) Then
   Begin
        dsParcelas.DataSet.Edit;
        dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString :=
            uFuncoes.StrZero(dsParcelas.DataSet.FieldByName('CDS_NRCHEQUE').AsString,10);
   End;

end;

procedure TFrmPadraoIncContas.BtAdicionarClick(Sender: TObject);
begin
     tratabotoes;
     LIMPAR_CAMPOS;
     pnlDados.Enabled := True;
     //
     If (iOpcao = 1) Then
        dmAdmDados.CarregarNaturezas(cmbNaturezas, 'E')
     //If (iOpcao = 2) Then
     Else
        dmAdmDados.CarregarNaturezas(cmbNaturezas, 'S');
     //
     //lbl_NRPRES.Caption :=  uFuncoes.StrZero(InttoStr(dm.CdsConfigCFG_ENTRADA.AsInteger+1),7);
     pnlCentral.Enabled := true;
     edtDTMOVI.Text := DatetoStr(Date());
end;

procedure TFrmPadraoIncContas.ALTUALIZAR_PARCELAS;
Var
   W_DTVENC : tdate;
   W_VLPARC : REAL;
   W_NRBANC, W_NRAGEN, W_NRCONT : String;
   W_NRCHEQ, W_PCATUA, N_RGATUA : Integer;
   M_VLCONT : Double;
begin
     M_VLCONT := 0;
     N_RGATUA := dsParcelas.DataSet.FieldByName('CDS_NRPARC').AsInteger;
     //
     If uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_DTVENC').AsString)
         or  uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_VALOR').AsString)
         or (dsParcelas.DataSet.FieldByname('CDS_VALOR').AsCurrency = 0) Then
     begin
          dsParcelas.DataSet.Locate('CDS_NRPARC', N_RGATUA,[]);
          dbgridParcelas.SetFocus;
          Exit;
     End;
     //
     dsParcelas.DataSet.DisableControls;
     //
     W_DTVENC := dsParcelas.DataSet.FieldByname('CDS_DTVENC').AsDateTime;
     W_VLPARC := dsParcelas.DataSet.FieldByname('CDS_VALOR').AsCurrency;
     W_NRBANC := dsParcelas.DataSet.FieldByname('CDS_BANCO').AsString;
     W_NRAGEN := dsParcelas.DataSet.FieldByname('CDS_AGENCIA').AsString;
     W_NRCONT := dsParcelas.DataSet.FieldByname('CDS_NRCONTA').AsString;
     If not uFuncoes.Empty(dsParcelas.DataSet.FieldByname('CDS_NRCHEQUE').AsString) Then
         W_NRCHEQ := dsParcelas.DataSet.FieldByname('CDS_NRCHEQUE').AsInteger;
     W_PCATUA := 0;
     //
     M_VLCONT := W_VLPARC * edtQTPARC.Value;
     //
     While not (dsParcelas.DataSet.Eof) do
     begin
         dsParcelas.DataSet.Edit;
         //
         dsParcelas.DataSet.FieldByname('CDS_DTVENC').AsDateTime  := IncMonth(W_DTVENC,W_PCATUA);
         dsParcelas.DataSet.FieldByname('CDS_VALOR').AsCurrency   := W_VLPARC;
         If not uFuncoes.Empty(W_NRBANC) Then
             dsParcelas.DataSet.FieldByname('CDS_BANCO').AsString := uFuncoes.StrZero(W_NRBANC,3);
         If not uFuncoes.Empty(W_NRAGEN) Then
             dsParcelas.DataSet.FieldByname('CDS_AGENCIA').AsString := uFuncoes.StrZero(W_NRAGEN,5);
         If not uFuncoes.Empty(W_NRCONT) Then
             dsParcelas.DataSet.FieldByname('CDS_NRCONTA').AsString := uFuncoes.StrZero(W_NRCONT,10);
         If (W_NRCHEQ > 0) Then
             dsParcelas.DataSet.FieldByname('CDS_NRCHEQUE').AsString := uFuncoes.StrZero(InttoStr(W_NRCHEQ+W_PCATUA),10);
         //
         W_PCATUA := W_PCATUA + 1;
         dsParcelas.DataSet.Next;
     End;
     //
     dsParcelas.DataSet.Locate('CDS_NRPARC', N_RGATUA,[]);
     //
     dsParcelas.DataSet.EnableControls;
     dbgridParcelas.SelectedIndex := 1;
     //
     //lbl_VLTOTAL.Caption := FormatFloat('###,###,##0.#0',M_VLCONT);
end;

procedure TFrmPadraoIncContas.CRIAR_PARCELAS;
Var
    M_QTPARC : integer;
begin
     If (dsParcelas.DataSet.Active = False) Then
         dsParcelas.DataSet.Open;
     //
     dmAdmDados.cdsParcelaContas.EmptyDataSet;
     //
     dsParcelas.DataSet.DisableControls;
     For M_QTPARC := 1 to StrtoInt(edtQTPARC.Text) do
     Begin
          // Incluir
          dsParcelas.DataSet.Append;
          dsParcelas.DataSet.FieldByName('CDS_NRPARC').AsInteger := M_QTPARC;
          dsParcelas.DataSet.Post;
     End;
     //
     dsParcelas.DataSet.First;
     dsParcelas.DataSet.EnableControls;
end;

procedure TFrmPadraoIncContas.LIMPAR_CAMPOS;
begin
    edtQTPARC.Clear;
    edtCodigo.Clear;
    edtDTMOVI.Clear;
    mmoDescricao.Lines.Clear;
    {lbl_NRCRED.Caption  := '0000000';
    lbl_VLTOTAL.Caption := '0,00';}
//    lbl_NMCLIE.Caption  := '';
    //
    If (dsParcelas.DataSet.Active = True) Then
       dmAdmDados.cdsParcelaContas.EmptyDataSet;
    dsParcelas.DataSet.Close;
end;

procedure TFrmPadraoIncContas.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
   btClonar.Enabled    := not btClonar.Enabled;
end;

function TFrmPadraoIncContas.VALIDAR_NOTA(W_CDFORN, W_NRNOTA,
  W_NRSERI: String): Boolean;
begin

end;

procedure TFrmPadraoIncContas.edtQTPARCExit(Sender: TObject);
begin
    If (edtQTPARC.Value >= 1) Then
     begin
          CRIAR_PARCELAS;
          //
          dbgridParcelas.SetFocus;
     End;
     If (edtQTPARC.Value < 1) Then
        dsParcelas.DataSet.Close;
end;

procedure TFrmPadraoIncContas.btClonarClick(Sender: TObject);
begin
 If (dsParcelas.DataSet.Active) and not (dsParcelas.DataSet.IsEmpty)  Then
     begin
         ALTUALIZAR_PARCELAS;
         VALOR_CONTA;
     End;
end;

procedure TFrmPadraoIncContas.edtQTPARCKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (key = #13) and (edtQTPARC.Value > 0) then
    begin
         key := #0;
         dbgridParcelas.SetFocus;
    End;
end;

procedure TFrmPadraoIncContas.FormShow(Sender: TObject);
begin
     KeyPreview := true;
     pnlCentral.Enabled := false;
end;

procedure TFrmPadraoIncContas.BtGravarClick(Sender: TObject);
begin
       pnlCentral.Enabled := False;
       tratabotoes;
end;

procedure TFrmPadraoIncContas.BtCancelarClick(Sender: TObject);
begin
      pnlCentral.Enabled := False;
      tratabotoes;
end;

procedure TFrmPadraoIncContas.LimparParcelas;
begin
    ufuncoes.RefreshCDS(dmAdmDados.cdsParcelaContas);
    dmAdmDados.cdsParcelaContas.EmptyDataSet;
    //
    edtCodigo.Clear;
    edtDescricao.Clear;
    edtDTMOVI.Clear;
    mmoDescricao.Lines.Clear;
    cmbNaturezas.ItemIndex := -1;
    edtQTPARC.Value := 1;
end;

procedure TFrmPadraoIncContas.edtCodigoChange(Sender: TObject);
begin
     if uFuncoes.Empty( edtCodigo.Text) Then
          edtDescricao.clear;
end;

procedure TFrmPadraoIncContas.mmoDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     Key:= Upcase(Key);
end;

procedure TFrmPadraoIncContas.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmPadraoIncContas.Naturezas1Click(Sender: TObject);
begin
     frmMain.actNaturezaExecute(Sender);
     //
     If (iOpcao = 1) Then
        dmAdmDados.CarregarNaturezas(cmbNaturezas, 'E')
     Else
        dmAdmDados.CarregarNaturezas(cmbNaturezas, 'S');
end;

end.
