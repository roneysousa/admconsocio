unit uFrmBaixaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, gbCobranca, FMTBcd, DBClient,
  Provider, DB, SqlExpr, Grids, DBGrids;

type
  TfrmBaixaBanco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnExecutar: TBitBtn;
    btnFechar: TBitBtn;
    lblNomeArquivoRetorno: TLabel;
    txtNomeArquivoRetorno: TEdit;
    GroupBox1: TGroupBox;
    txtRelatorioRetorno: TMemo;
    btnProcurar: TBitBtn;
    gbTitulo1: TgbTitulo;
    gbCobranca1: TgbCobranca;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    edtBanco: TEdit;
    spLocalizarBanco: TSpeedButton;
    lblNomeBanco: TLabel;
    dstDados: TSQLDataSet;
    dspDados: TDataSetProvider;
    cdsCedente: TClientDataSet;
    cdsTitulo: TClientDataSet;
    cdsCedenteBAN_CODIGO: TIntegerField;
    cdsCedenteBAN_NOME: TStringField;
    cdsCedenteBAN_NRBANC: TIntegerField;
    cdsCedenteBAN_NRAGEN: TIntegerField;
    cdsCedenteBAN_NRCONT: TStringField;
    cdsCedenteBAN_CARTEIRA: TStringField;
    cdsCedenteBAN_CONVENIO: TIntegerField;
    cdsCedenteBAN_FORMA_CALC: TIntegerField;
    cdsTituloREC_NRVEND: TIntegerField;
    cdsTituloREC_CDGRUP: TIntegerField;
    cdsTituloREC_NRCOTA: TIntegerField;
    cdsTituloREC_NRPARC: TIntegerField;
    cdsTituloREC_DTVENC: TDateField;
    cdsTituloREC_VLPARC: TFMTBCDField;
    cdsTituloREC_DTPAGA: TDateField;
    cdsTituloREC_VLMULT: TFMTBCDField;
    cdsTituloREC_TOTAL_PAGO: TFMTBCDField;
    cdsTituloREC_DTMOVI: TDateField;
    cdsTituloREC_DTCREDITO: TDateField;
    cdsTituloREC_FORMABAIXA: TStringField;
    cdsTituloREC_TPSLIP: TStringField;
    cdsTituloREC_NOSSONUMERO: TStringField;
    cdsTituloREC_VALORTARIFABANCO: TFMTBCDField;
    cdsTituloREC_VALORTITULOTITULO: TFMTBCDField;
    cdsTituloREC_HOPAGA: TStringField;
    cdsTituloREC_MOV_CAIXA: TIntegerField;
    grdConsultar: TDBGrid;
    DataSource1: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtNomeArquivoRetornoChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure edtBancoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarBancoClick(Sender: TObject);
    procedure edtBancoExit(Sender: TObject);
    procedure edtBancoChange(Sender: TObject);
  private
    { Private declarations }
    Function GetCedente(aBanco, aAgencia : integer; aCedente, aCarteira : String) : Boolean;
    Procedure LimparGrid;
  public
    { Public declarations }
  end;

var
  frmBaixaBanco: TfrmBaixaBanco;


implementation

uses uFuncoes, udmAdmDados, uFrmConsBancos, uDmPesquisas, udmRelatorios,
  uFrmAdmMain, StrUtils;

{$R *.dfm}

procedure TfrmBaixaBanco.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmBaixaBanco.FormShow(Sender: TObject);
begin
     btnExecutar.Enabled := False;
     lblNomeBanco.Caption := '';
     //
     LimparGrid; 
     //grdConsultar.Visible        := False;
     txtRelatorioRetorno.Visible := False;
     grdConsultar.Align := alClient; 
end;

procedure TfrmBaixaBanco.txtNomeArquivoRetornoChange(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco.Text)
       and not uFuncoes.Empty(txtNomeArquivoRetorno.Text) Then
         btnExecutar.Enabled := True
     Else
     begin
         btnExecutar.Enabled := False;
         txtRelatorioRetorno.Clear;  
     End;
end;

procedure TfrmBaixaBanco.btnProcurarClick(Sender: TObject);
begin
   OpenDialog1.FileName := txtNomeArquivoRetorno.Text;
   OpenDialog1.InitialDir := ExtractFilePath(txtNomeArquivoRetorno.Text);
   //
   if OpenDialog1.Execute then
      txtNomeArquivoRetorno.Text := OpenDialog1.FileName;
end;

procedure TfrmBaixaBanco.btnExecutarClick(Sender: TObject);
{Objetivo: Ler arquivo recebido do banco e dar baixa nos títulos automaticamente}
var
   ANossoNumero, M_HOMOVI, aDescricao, M_NSNUME : string;
   ACedenteCodigo, i, aSequencia, aCaixa, aVenda, aParcela, iSqCaixa : integer;
   Multa, Valor : double;
   aData : TDate;
   aGrupo, aCota : integer;
   aNmFile, aNmPasta : String;
begin
    // Banco do brasil
    if (StrtoInt(edtBanco.Text) = 1 ) Then
    begin
      if (dmPesquisas.Carregar_Titulos(txtNomeArquivoRetorno.Text)) Then
      begin
           gbCobranca1.NomeArquivo := txtNomeArquivoRetorno.Text;
           //
           aNmFile  := RightStr(txtNomeArquivoRetorno.Text, 15);
           aNmPasta := Copy(txtNomeArquivoRetorno.Text,1, (length(txtNomeArquivoRetorno.Text)-length(aNmFile)));
           //
           grdConsultar.Visible := True;
           grdConsultar.Align  := alClient;
           //
           txtRelatorioRetorno.Visible := False;
           //
           aCaixa := StrtoInt(uFrmAdmMain.M_CDUSUA);
           With dmPesquisas.cdsTitulos do
            begin
                 M_HOMOVI := Copy(TimetoStr(Time),1,5);
                 DisableControls;
                 First;
                 While not (Eof) do
                  begin
                       aSequencia   := dmAdmDados.GetRegMovCaixa();
                       ANossoNumero := FieldByName('CDS_NOSSONUMERO').AsString;
                       Multa := 0;
                       Valor := FieldByName('CDS_VLRECEBIDO').AsFloat;
                       aData := FieldByName('CDS_DTPAGA').AsDateTime;
                       //
                       With dmRelatorios.cdsconsulta do
                        begin
                             close;
                             CommandText := 'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC from PARCELAS Where (REC_NOSSONUMERO = :pNOSSONUMERO) and (REC_DTPAGA is null)';
                             Params.ParamByName('pNOSSONUMERO').AsString := ANossoNumero;
                             Open;
                             //
                             If not (IsEmpty) Then
                              begin
                                   aVenda   := FieldByname('REC_NRVEND').AsInteger;
                                   aGrupo   := FieldByname('REC_CDGRUP').AsInteger;
                                   aCota    := FieldByname('REC_NRCOTA').AsInteger;
                                   aParcela := FieldByname('REC_NRPARC').AsInteger;
                              End;
                        End;
                       //
                       If (dmAdmDados.Baixa_Parcela_Automatica(ANossoNumero, M_HOMOVI,
                            aData, Valor, Multa, aSequencia)) Then
                        begin
                            iSqCaixa := dmAdmDados.GetSequenciaCaixa(aCaixa);
                            // pSEQUENCIA, pVENDA, pParcela, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                            // pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                            // aBanco : Integer; aAgencia, aConta, aCheque
                            if (dmAdmDados.Incluir_Movimento_Caixa(
                               aSequencia, iSqCaixa, aVenda, aParcela, 3, aCaixa, 3, 0, 'P', M_HOMOVI,'BAIXA PARCELA BANCO', 'N', aData, Valor,0, 0, '', '', '')) Then
                             begin
                                  aDescricao := 'Baixa Banco : '+FormatFloat('###,##0.#0',Valor) + ' | Em Caixa G '+ InttoStr(aGrupo) + ' | C '+ InttoStr(aCota) + ' | P '+InttoStr(aParcela);
                                  dmAdmDados.SetTarefa_Usuario(aDescricao);
                                  dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                             End
                             Else
                                 raise Exception.Create('Erro ao incluir movimento de caixa.');
                        End
                        Else
                        begin
                             Break;
                             raise Exception.Create('Erro ao tentar baixa titulo.');
                        End;
                       //
                       Next;
                  End;
                  EnableControls;
            End;
            //
              if not (uFuncoes.CopiarArquivo(OpenDialog1.FileName, uFrmAdmMain.M_NMPAST+'\'+aNmFile)) Then
                raise Exception.Create('Erro na copia do arquivo.');
              //
              MessageDlg('O arquivo retorno ' + aNmFile + ' foi processado com sucesso',mtInformation,[mbOk],0);
      End
      Else
          raise Exception.Create('Erro ao tentar realizar baixa automatica.');
      //
      dmPesquisas.cdsTitulos.close;
   End;
   //    Caixa
   If (StrtoInt(edtBanco.Text) = 4 ) Then
    begin
         aNmFile  := RightStr(txtNomeArquivoRetorno.Text, 13);
         aNmPasta := Copy(txtNomeArquivoRetorno.Text,1, (length(txtNomeArquivoRetorno.Text)-length(aNmFile)));
         //
         gbCobranca1.Titulos.Clear;
         //
         grdConsultar.Align  := alClient;
         grdConsultar.Visible := True;
         //
         //txtRelatorioRetorno.Visible := True;
         //txtRelatorioRetorno.Align  := alClient;
         //
         if trim(txtNomeArquivoRetorno.Text) = '' then
            if OpenDialog1.Execute then
               txtNomeArquivoRetorno.Text := OpenDialog1.FileName
            else
               Exit;
        //
        if (dmPesquisas.Carregar_Titulos_CNAB240(txtNomeArquivoRetorno.Text)) Then
         Begin
             aCaixa := StrtoInt(uFrmAdmMain.M_CDUSUA);
             //
             With dmPesquisas.cdsTitulos do
              begin
                 M_HOMOVI := Copy(TimetoStr(Time),1,5);
                 DisableControls;
                 First;
                 While not (Eof) do
                  begin
                       aSequencia   := dmAdmDados.GetRegMovCaixa();
                       ANossoNumero := FieldByName('CDS_NOSSONUMERO').AsString;
                       Multa := FieldByName('CDS_JUROS_MORA').AsFloat;
                       Valor := FieldByName('CDS_VALOR_DOCUMENTO').AsFloat;
                       aData := FieldByName('CDS_DTPAGA').AsDateTime;
                       //
                       With dmRelatorios.cdsconsulta do
                        begin
                             close;
                             CommandText := 'Select REC_NRVEND, REC_CDGRUP, REC_NRCOTA, REC_NRPARC, REC_NOSSONUMERO from PARCELAS Where (REC_NOSSONUMERO Like :pNOSSONUMERO) and (REC_DTPAGA is null)';
                             Params.ParamByName('pNOSSONUMERO').AsString := '%'+ANossoNumero;
                             Open;
                             //
                             If not (IsEmpty) Then
                              begin
                                   aVenda   := FieldByname('REC_NRVEND').AsInteger;
                                   aGrupo   := FieldByname('REC_CDGRUP').AsInteger;
                                   aCota    := FieldByname('REC_NRCOTA').AsInteger;
                                   aParcela := FieldByname('REC_NRPARC').AsInteger;
                                   M_NSNUME := FieldByname('REC_NOSSONUMERO').AsString;
                              End;
                        End;
                       //
                       if uFuncoes.Empty (M_NSNUME ) Then
                           raise Exception.Create('Nosso número vazio.');
                       //
                       If (dmAdmDados.Baixa_Parcela_Automatica(M_NSNUME, M_HOMOVI,
                            aData, Valor, Multa, aSequencia)) Then
                        begin
                            iSqCaixa := dmAdmDados.GetSequenciaCaixa(aCaixa);
                            // pSEQUENCIA, pVENDA, pParcela, pMODALIDADE, pCAIXA, pNATUREZA, pFUNCIONARIO;
                            // pTIPOMOV, pHRMOVIMENTO, pOBSEVACAO, pSITUACAO; pDTMOVIMENTO; pVLMODALIDADE, pVLTROCO
                            // aBanco : Integer; aAgencia, aConta, aCheque
                            if (dmAdmDados.Incluir_Movimento_Caixa(
                               aSequencia, iSqCaixa, aVenda, aParcela, 3, aCaixa, 3, 0, 'P', M_HOMOVI,'BAIXA PARCELA BANCO', 'N', aData, Valor,0, 0, '', '', '')) Then
                             begin
                                  aDescricao := 'Baixa Banco : '+FormatFloat('###,##0.#0',Valor) + ' | Em Caixa G '+ InttoStr(aGrupo) + ' | C '+ InttoStr(aCota) + ' | P '+InttoStr(aParcela);
                                  dmAdmDados.SetTarefa_Usuario(aDescricao);
                                  dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                             End
                             Else
                                 raise Exception.Create('Erro ao incluir movimento de caixa.');
                        End
                        Else
                        begin
                             Break;
                             raise Exception.Create('Erro ao tentar baixa titulo.');
                        End;
                       //
                       Next;
                  End;
                  EnableControls;
              End; 
              //
              if not (uFuncoes.CopiarArquivo(OpenDialog1.FileName, uFrmAdmMain.M_NMPAST+'\'+aNmFile)) Then
                raise Exception.Create('Erro na copia do arquivo.');
              //
              MessageDlg('O arquivo retorno ' + aNmFile + ' foi processado com sucesso',mtInformation,[mbOk],0);
         End
         Else
             raise Exception.Create('Erro ao tentar realizar baixa automatica.');
         //
         dmPesquisas.cdsTitulos.close;
    End;
end;

procedure TfrmBaixaBanco.edtBancoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
    if (Key = #13) and uFuncoes.Empty(edtBanco.Text)  then
     begin
         Key := #0;
         spLocalizarBancoClick(Sender);
     end;
end;

function TfrmBaixaBanco.GetCedente(aBanco, aAgencia: integer; aCedente,
  aCarteira: String): Boolean;
begin
      Result := False;
      With cdsCedente do
        begin
             Close;
             Params.ParamByName('pNRBANC').AsInteger := aBanco;
             Params.ParamByName('PNRAGEN').AsInteger := aAgencia;
             Params.ParamByName('pNRCONT').AsString  := aCedente;
             Params.ParamByName('pCARTEIRA').AsString := aCarteira; 
             open;
             //
             If not (IsEmpty) Then
                 Result := True;
        End;
end;

procedure TfrmBaixaBanco.spLocalizarBancoClick(Sender: TObject);
begin
      edtBanco.SetFocus;
      Application.CreateForm(TfrmConsBancos, frmConsBancos);
      try
          frmConsBancos.ShowModal;
      Finally
          if not (frmConsBancos.cdsConsultar.IsEmpty)   then
          begin
             edtBanco.Text := uFuncoes.StrZero(frmConsBancos.cdsConsultarBAN_CODIGO.AsString,3);
             lblNomeBanco.Caption := frmConsBancos.cdsConsultarBAN_NOME.AsString;
             btnProcurar.SetFocus;  
          end;
          //
          frmConsBancos.Free;
      End;
end;

procedure TfrmBaixaBanco.edtBancoExit(Sender: TObject);
Var
   aNome : String;
begin
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

procedure TfrmBaixaBanco.edtBancoChange(Sender: TObject);
begin
      if uFuncoes.Empty(edtBanco.Text) Then
      begin
           lblNomeBanco.Caption := '';
           //
           LimparGrid; 
      End;
end;

procedure TfrmBaixaBanco.LimparGrid;
begin
          if (dmPesquisas.cdsTitulos.Active) Then
          begin
              If not (dmPesquisas.cdsTitulos.IsEmpty) Then
                 dmPesquisas.cdsTitulos.EmptyDataSet;
               dmPesquisas.cdsTitulos.close;
          End;
end;

end.
