unit uFrmMovCorrecaoParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, Grids,
  DBGrids, ToolEdit, CurrEdit, DB;

type
  TfrmCorrecaoParcelas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtValor: TCurrencyEdit;
    Label8: TLabel;
    edtData: TDateEdit;
    btnConfirma: TBitBtn;
    grdConsultar: TDBGrid;
    dsLista: TDataSource;
    edtCDMODE: TEdit;
    Label2: TLabel;
    dsCotas: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGParcelas: TDBGrid;
    dsParcelas: TDataSource;
    spLocModelo: TSpeedButton;
    lbl_CDMODE: TLabel;
    DBGrid1: TDBGrid;
    edtPerc: TCurrencyEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDataExit(Sender: TObject);
    procedure edtCDMODEKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDMODEChange(Sender: TObject);
    procedure edtCDMODEExit(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure dsCotasDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  frmCorrecaoParcelas: TfrmCorrecaoParcelas;

implementation

uses udmAdmDados, uFuncoes, uDmPesquisas, uFrmAdmMain, DBClient;

{$R *.dfm}

procedure TfrmCorrecaoParcelas.FormShow(Sender: TObject);
begin
     dmPesquisas.cdsConsultaCota.Close;
     dmAdmDados.cdsCotasGrupoModelos.Close;
     //
     dmAdmDados.cdsListaModelos2.Open;
     //
     btnConfirma.Enabled := False;
     lbl_CDMODE.Caption := '';
end;

procedure TfrmCorrecaoParcelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dmAdmDados.cdsListaModelos2.Close;
    dmPesquisas.cdsConsultaCota.Close; 
    dmAdmDados.cdsCotasGrupoModelos.Close;
end;

procedure TfrmCorrecaoParcelas.edtDataExit(Sender: TObject);
begin
        if (edtData.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtData.text) Then
              edtData.Text := DatetoStr(uFuncoes.FormatarData(edtData.text))
           Else
           begin
              edtData.Clear;
              edtData.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;
end;

procedure TfrmCorrecaoParcelas.edtCDMODEKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmCorrecaoParcelas.edtCDMODEChange(Sender: TObject);
begin
      if uFuncoes.Empty(edtCDMODE.Text) Then
      Begin
           btnConfirma.Enabled := False;
           lbl_CDMODE.Caption  := ' ';
           dmPesquisas.cdsConsultaCota.Close; 
           dmAdmDados.cdsCotasGrupoModelos.Close;
      End;
end;

procedure TfrmCorrecaoParcelas.edtCDMODEExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDMODE.Text) Then
       begin
            if not (dmAdmDados.GetModelo(StrtoInt(edtCDMODE.Text))) Then
              begin
                   edtCDMODE.SetFocus;
                   edtCDMODE.Clear;
                   raise Exception.Create('Código de modelo não cadastrado.');
              End
              else
              begin
                  uFuncoes.FilterCDS(dmAdmDados.cdsModelos, fsInteger, edtCDMODE.Text);
                  //
                  if not (dmAdmDados.cdsModelos.IsEmpty) Then
                  begin
                        lbl_CDMODE.Caption := dmAdmDados.cdsModelosMOD_DESCRICAO.AsString;
                        dmAdmDados.CotasModelo(dmAdmDados.cdsModelosMOD_CODIGO.AsInteger);
                  End
                  Else
                     lbl_CDMODE.Caption := '';
              End;
       End;
end;

procedure TfrmCorrecaoParcelas.btnConfirmaClick(Sender: TObject);
Var
   M_VLATUA, M_VLNOVO, M_VLPERC, M_VLPARC, M_VLPCANTERIOR, M_VLAUME : Double;
   MSG, aDescricao  : String;
   M_NRVEND : Integer;
   M_DTMOVI : TDate;
begin
     if uFuncoes.Empty(edtCDMODE.Text) Then
      begin
           edtCDMODE.SetFocus;
           raise Exception.Create('Digite o código do modelo.');
      End;
      //
     if uFuncoes.Empty(edtValor.Text) or (edtValor.Value = 0) Then
      begin
           edtValor.SetFocus;
           raise Exception.Create('Valor inválido.');
      End;
    //
    MSG := 'Confirma a mundança para '+FormatFloat('###,##0.#0',edtValor.Value)+#13
          +'Em grupos corrigiveis com Modelo '+ lbl_CDMODE.Caption+#13
          +'com parcelas a vencer a partir de '+edtData.Text;
    //
    If Application.MessageBox(PChar(MSG),
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
    begin
     M_VLNOVO := edtValor.Value;
     M_DTMOVI := edtData.date;
     //
     if not (dmAdmDados.cdsCotasGrupoModelos.IsEmpty) Then
     begin
      try
           With dmAdmDados.cdsCotasGrupoModelos do
            begin
                 DisableControls;
                 First;
                 //
                 While not (eof) do
                  begin
                    If (FieldByName('COT_POSICAO').AsString = 'A') Then
                     begin
                       M_NRVEND := FieldByName('COT_NRVENDA').AsInteger;
                       M_VLPCANTERIOR := FieldByName('COT_VALCOTA').AsFloat;
                       // Valor atual do crédito
                       M_VLATUA := FieldByName('COT_VALCRE').AsFloat;
                       M_VLAUME := M_VLNOVO - M_VLATUA;
                       //
                       M_VLPERC := uFuncoes.Arredondar(((M_VLAUME * 100)/M_VLATUA) ,2);
                       M_VLPARC := FieldByName('COT_VALCOTA').AsFloat + uFuncoes.Gerapercentual(FieldByName('COT_VALCOTA').AsFloat,M_VLPERC);
                       //
                       if (dmAdmDados.SetValorCredito(M_NRVEND, M_VLNOVO, M_VLPARC)) Then
                       begin
                            if not (dmAdmDados.SetValorNovoParcela(M_NRVEND, M_DTMOVI, M_VLPARC)) Then
                             begin
                                  raise Exception.Create('Erro ao tentar atualizar parcela.');
                             End;
                       End
                       Else
                            raise Exception.Create('Erro ao tentar atualizar cota.');
                     End;
                     // Proximo registro
                     Next;
                  End;
                  //
                  EnableControls;
            End;
           //
           aDescricao := 'Correção Parcelas : Modelo ' + edtCDMODE.Text + ' de '+ FormatFloat('###,##0.#0',M_VLATUA)+' para ' + FormatFloat('###,##0.#0',M_VLNOVO);
           dmAdmDados.SetTarefa_Usuario(aDescricao);
           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
           //
           uFuncoes.FilterCDS(dmAdmDados.cdsModelos, fsInteger, edtCDMODE.Text);
           //
           Application.MessageBox(PChar(MSG_OK),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           edtCDMODE.Clear;
           Limpar;
      Except
           //
           dmAdmDados.SetValorCredito(M_NRVEND, M_VLATUA, M_VLPCANTERIOR);
           raise Exception.Create('Erro ao tentar atualizar parcelas.');
      End;
     End;
    End;
end;

procedure TfrmCorrecaoParcelas.edtDataChange(Sender: TObject);
begin
      if not uFuncoes.Empty(edtCDMODE.Text)
       and (edtValor.Value > 0) Then
          btnConfirma.Enabled := True
       Else
          btnConfirma.Enabled := False;
end;

procedure TfrmCorrecaoParcelas.dsCotasDataChange(Sender: TObject;
  Field: TField);
begin
      if not (dmAdmDados.cdsCotasGrupoModelos.IsEmpty) Then
           dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsCotasGrupoModelosCOT_NRVENDA.AsInteger,
                    dmAdmDados.cdsCotasGrupoModelosCOT_CDGRUPO.AsInteger,
                    dmAdmDados.cdsCotasGrupoModelosCOT_NRCOTA.AsInteger);
end;

procedure TfrmCorrecaoParcelas.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Correção de Parcelas'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnConfirma.Visible  := (novo = 'S');
     //
   End;
end;

procedure TfrmCorrecaoParcelas.Limpar;
begin
     edtValor.Clear;
     edtData.Clear;
     edtPerc.Clear;
end;

end.
