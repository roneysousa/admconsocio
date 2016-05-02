unit uFrmRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, jpeg, ppPrnabl, ppBands,
  ppCache, ppStrtch, ppMemo, myChkBox;

type
  TfrmRecibos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PanelBotton: TPanel;
    cbxDinheiro: TCheckBox;
    cbxCheque1: TCheckBox;
    edtDinheiro: TCurrencyEdit;
    edtValCheque1: TCurrencyEdit;
    edtNumCheque1: TEdit;
    edtBanco1: TEdit;
    cbxCheque2: TCheckBox;
    edtNumCheque2: TEdit;
    edtBanco2: TEdit;
    edtValCheque2: TCurrencyEdit;
    cbxCheque3: TCheckBox;
    edtNumCheque3: TEdit;
    edtBanco3: TEdit;
    edtValCheque3: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    btnVisualizar: TBitBtn;
    BtSair: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    edtValor: TppLabel;
    lblEndereco: TppLabel;
    lblFone: TppLabel;
    lblCnpj: TppLabel;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    txtNumRecibo: TppLabel;
    txtCliente: TppLabel;
    txtValor: TppLabel;
    txtReferente: TppLabel;
    btnNovo: TBitBtn;
    ppShape5: TppShape;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppMemo4: TppMemo;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    ppLine11: TppLine;
    ppMemo7: TppMemo;
    ppShape6: TppShape;
    myCbxDinheiro: TmyCheckBox;
    ppLabel8: TppLabel;
    ppLine12: TppLine;
    myCbxCheque1: TmyCheckBox;
    ppLabel9: TppLabel;
    ppLine13: TppLine;
    txtDinheiro: TppLabel;
    txtNumCq1: TppLabel;
    ppLabel10: TppLabel;
    ppLine14: TppLine;
    ppLabel11: TppLabel;
    ppLine15: TppLine;
    txtValorCq1: TppLabel;
    txtBanco1: TppLabel;
    myCbxCheque2: TmyCheckBox;
    ppLabel12: TppLabel;
    txtNumcq2: TppLabel;
    ppLine16: TppLine;
    ppLabel14: TppLabel;
    txtBanco2: TppLabel;
    ppLine17: TppLine;
    ppLabel16: TppLabel;
    txtValorCq2: TppLabel;
    ppLine18: TppLine;
    myCbxCheque3: TmyCheckBox;
    ppLabel18: TppLabel;
    txtNumcq3: TppLabel;
    ppLine19: TppLine;
    ppLabel20: TppLabel;
    txtBanco3: TppLabel;
    ppLine20: TppLine;
    ppLabel22: TppLabel;
    txtValorCq3: TppLabel;
    ppLine21: TppLine;
    ppShape7: TppShape;
    ppLabel13: TppLabel;
    ppMemo8: TppMemo;
    ppLabel15: TppLabel;
    ppMemo9: TppMemo;
    txtData: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel19: TppLabel;
    lblUsuario: TppLabel;
    txtGrupo: TppLabel;
    txtCota: TppLabel;
    txtParcela: TppLabel;
    txtDataPag: TppLabel;
    txtValorTotal: TppLabel;
    txtObservacao: TppMemo;
    ppShape8: TppShape;
    ppLabel17: TppLabel;
    ppImage2: TppImage;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape11: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape14: TppShape;
    myCheckBox1: TmyCheckBox;
    ppLabel40: TppLabel;
    ppLine35: TppLine;
    myCheckBox2: TmyCheckBox;
    ppLabel41: TppLabel;
    ppLine36: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine37: TppLine;
    ppLabel45: TppLabel;
    ppLine38: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    myCheckBox3: TmyCheckBox;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine39: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine41: TppLine;
    myCheckBox4: TmyCheckBox;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine42: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine43: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine44: TppLine;
    ppShape13: TppShape;
    ppLabel60: TppLabel;
    ppMemo18: TppMemo;
    ppLabel61: TppLabel;
    ppMemo19: TppMemo;
    ppLabel62: TppLabel;
    ppShape12: TppShape;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppMemo10: TppMemo;
    ppMemo11: TppMemo;
    ppMemo12: TppMemo;
    ppMemo13: TppMemo;
    ppMemo14: TppMemo;
    ppMemo15: TppMemo;
    ppLine34: TppLine;
    ppMemo16: TppMemo;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppMemo17: TppMemo;
    ppLine46: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    Label5: TLabel;
    edtGrupo: TEdit;
    Label6: TLabel;
    edtCota: TEdit;
    Label7: TLabel;
    edtParcela: TEdit;
    Label8: TLabel;
    edtDTPAGA: TDateEdit;
    Label1: TLabel;
    edtReceber: TEdit;
    Label2: TLabel;
    edtImportancia: TCurrencyEdit;
    Label3: TLabel;
    edtReferente: TMemo;
    Label4: TLabel;
    memObservacao: TMemo;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbxCredito: TCheckBox;
    procedure edtDTPAGAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtParcelaKeyPress(Sender: TObject; var Key: Char);
    procedure BtSairClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cbxDinheiroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cbxCheque1Click(Sender: TObject);
    procedure cbxCheque2Click(Sender: TObject);
    procedure cbxCheque3Click(Sender: TObject);
    procedure edtNumCheque1Exit(Sender: TObject);
    procedure edtNumCheque2Exit(Sender: TObject);
    procedure edtNumCheque3Exit(Sender: TObject);
    procedure edtBanco1Exit(Sender: TObject);
    procedure edtBanco2Exit(Sender: TObject);
    procedure edtBanco3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtCotaExit(Sender: TObject);
    procedure cbxCreditoClick(Sender: TObject);
  private
    { Private declarations }
    Function ValidarCampos(): Boolean;
    Procedure Limpar;
    Procedure Limpar2;
  public
    { Public declarations }
  end;

var
  frmRecibos: TfrmRecibos;
  Novo, Alterar, Apagar : string;

implementation

uses uFuncoes, uFrmAdmMain, udmAdmDados;

{$R *.dfm}

procedure TfrmRecibos.edtDTPAGAExit(Sender: TObject);
begin
        if (edtDTPAGA.Text <> '  /  /    ') Then
           if uFuncoes.Validar_Data(edtDTPAGA.Text) Then
           begin
               edtDTPAGA.Date := uFuncoes.FormatarData(edtDTPAGA.text);
               //
               if ufuncoes.Empty(edtReceber.Text) Then
                  edtReceber.SetFocus;
           End
           Else
           begin
              edtDTPAGA.Clear;
              edtDTPAGA.SetFocus;
              RAISE Exception.Create('Data Inválida!');
           End;  
end;

procedure TfrmRecibos.FormShow(Sender: TObject);
begin
      edtDTPAGA.Date := Date();
end;

procedure TfrmRecibos.edtGrupoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmRecibos.edtCotaKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmRecibos.edtParcelaKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmRecibos.BtSairClick(Sender: TObject);
begin
     Close;
end;

function TfrmRecibos.ValidarCampos: Boolean;
begin
     Result := False;
     // grupo
     If uFuncoes.Empty(edtGrupo.Text) and not (cbxCredito.Checked) Then
      begin
           edtGrupo.SetFocus;
           raise Exception.Create('Digite o código do grupo.');
      End;
     // Cota
     If uFuncoes.Empty(edtCota.Text) and not (cbxCredito.Checked) Then
      begin
           edtCota.SetFocus;
           raise Exception.Create('Digite o número da cota.');
      End;
     // Parcela
     If uFuncoes.Empty(edtParcela.Text) and not (cbxCredito.Checked) Then
      begin
           edtParcela.SetFocus;
           raise Exception.Create('Digite o número da parcela.');
      End;
     // Cliente
     If uFuncoes.Empty(edtReceber.Text) Then
      begin
           edtReceber.SetFocus;
           raise Exception.Create('Digite o nome do cliente.');
      End;
     // Valor
     If uFuncoes.Empty(edtImportancia.Text) Then
      begin
           edtImportancia.SetFocus;
           raise Exception.Create('Digite o valor do recibo.');
      End;
     // Referente
     If uFuncoes.Empty(edtReferente.Text) Then
      begin
           edtReferente.SetFocus;
           raise Exception.Create('Digite a referência do recibo.');
      End;
     // Observacao
     If uFuncoes.Empty(memObservacao.Text) Then
      begin
           memObservacao.SetFocus;
           raise Exception.Create('Digite uma observação.');
      End;      
     //
     Result := True;
end;

procedure TfrmRecibos.btnVisualizarClick(Sender: TObject);
Var
    M_NRRECI, aDescricao : string;
begin
     ValidarCampos;
     //
   if not (cbxCredito.Checked) Then
   begin
     If not (cbxDinheiro.Checked) and not (cbxCheque1.Checked)
      and not (cbxCheque2.Checked) and not (cbxCheque3.Checked) Then
         Raise Exception.Create('Selecione uma modalidade de pagamento.');
     //
     If (cbxDinheiro.Checked) and (edtDinheiro.Value = 0) Then
      begin
           edtDinheiro.SetFocus;
           Raise Exception.Create('Digite o valor em dinheiro.');
      End;
     //
     If (cbxCheque1.Checked) Then
      begin
           If uFuncoes.Empty(edtNumCheque1.Text) Then
            begin
                 edtNumCheque1.SetFocus;
                 Exit;
            End;
            //
           If uFuncoes.Empty(edtBanco1.Text) Then
            begin
                 edtBanco1.SetFocus;
                 Exit;
            End;
           //
           If (edtValCheque1.Value = 0) Then
            begin
                 edtValCheque1.SetFocus;
                 Exit;
            End;
      End;
      //
     If (cbxCheque2.Checked) Then
      begin
           If uFuncoes.Empty(edtNumCheque2.Text) Then
            begin
                 edtNumCheque2.SetFocus;
                 Exit;
            End;
            //
           If uFuncoes.Empty(edtBanco2.Text) Then
            begin
                 edtBanco2.SetFocus;
                 Exit;
            End;
           //
           If (edtValCheque2.Value = 0) Then
            begin
                 edtValCheque2.SetFocus;
                 Exit;
            End;
      End;
      //
     If (cbxCheque3.Checked) Then
      begin
           If uFuncoes.Empty(edtNumCheque3.Text) Then
            begin
                 edtNumCheque3.SetFocus;
                 Exit;
            End;
            //
           If uFuncoes.Empty(edtBanco3.Text) Then
            begin
                 edtBanco3.SetFocus;
                 Exit;
            End;
           //
           If (edtValCheque3.Value = 0) Then
            begin
                 edtValCheque3.SetFocus;
                 Exit;
            End;
      End;
     //
     If (cbxDinheiro.Checked) and (edtDinheiro.Value = 0) Then
      begin
           edtDinheiro.SetFocus;
           Raise Exception.Create('Digite o valor em dinheiro.');
      End;
     //
     If (cbxDinheiro.Checked) and (edtDinheiro.Value = 0) Then
      begin
           edtDinheiro.SetFocus;
           Raise Exception.Create('Digite o valor em dinheiro.');
      End;
     //
   End;
   //
     try
         With ppReport1 do
          begin
               uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
               //
               lblEndereco.Caption := dmAdmDados.cdsConfigCFG_ENDERECO.AsString;
               lblFone.Caption     := 'Fone : ' + uFuncoes.FormataFONE(dmAdmDados.cdsConfigCFG_NRFONE1.AsString);
               lblCnpj.Caption     := 'CNPJ:' + uFuncoes.FormataCNPJ(dmAdmDados.cdsConfigCFG_CGC.AsString)+' . '+dmAdmDados.cdsConfigCFG_CIDADE.AsString +' - '+dmAdmDados.cdsConfigCFG_UF.AsString;
               //
               edtValor.Caption := FormatFloat('###,##0.#0', edtImportancia.Value );
               txtCliente.Caption := edtReceber.Text;
               txtValor.Caption   := FormatFloat('###,##0.#0',edtImportancia.Value)+' ('+uFuncoes.extenso(edtImportancia.Value)+')';
               txtReferente.Caption := edtReferente.Text;
               //
             If not (cbxCredito.Checked) Then
             begin
               If (cbxDinheiro.Checked) Then
                begin
                   myCbxDinheiro.Checked := True;
                   txtDinheiro.Caption   := FormatFloat('###,##0.#0',edtDinheiro.Value);
                End
               Else
                begin
                   myCbxDinheiro.Checked := False;
                   txtDinheiro.Caption   := '';
                End;
               //
               If (cbxCheque1.Checked) Then
               begin
                   myCbxCheque1.Checked := True;
                   txtNumCq1.Caption    := edtNumCheque1.Text;
                   txtBanco1.Caption    := edtBanco1.Text;
                   txtValorCq1.Caption  := FormatFloat('###,##0.#0',edtValCheque1.Value);
               End
               Else
               begin
                    myCbxCheque1.Checked := False;
                    txtNumCq1.Caption    := '';
                    txtBanco1.Caption    := '';
                    txtValorCq1.Caption  := '';
               End;
               //
               if (cbxCheque2.Checked) Then
               begin
                   myCbxCheque2.Checked := True;
                   txtNumCq2.Caption    := edtNumCheque2.Text;
                   txtBanco2.Caption    := edtBanco2.Text;
                   txtValorCq2.Caption  := FormatFloat('###,##0.#0',edtValCheque2.Value);
               End
               Else
               begin
                   myCbxCheque2.Checked := False;
                   txtNumCq2.Caption    := '';
                   txtBanco2.Caption    := '';
                   txtValorCq2.Caption  := '';
               End;
               //
               if (cbxCheque3.Checked) Then
               begin
                   myCbxCheque3.Checked := True;
                   txtNumCq3.Caption    := edtNumCheque3.Text;
                   txtBanco3.Caption    := edtBanco3.Text;
                   txtValorCq3.Caption  := FormatFloat('###,##0.#0',edtValCheque3.Value);
               End
               Else
               begin
                   myCbxCheque3.Checked := False;
                   txtNumCq3.Caption    := '';
                   txtBanco3.Caption    := '';
                   txtValorCq3.Caption  := '';
               End;
               //
             End
             else
             begin
               myCbxDinheiro.Checked := False;
               myCbxCheque1.Checked  := False;
               myCbxCheque2.Checked  := False;
               myCbxCheque3.Checked  := False;
               //
               txtDinheiro.Caption := '';
               txtNumCq1.Caption   := '';
               txtBanco1.Caption   := '';
               txtValorCq1.Caption := '';
               //
               txtNumcq2.Caption := '';
               txtBanco2.Caption := '';
               txtValorCq2.Caption := '';
               //
               txtNumcq3.Caption := '';
               txtBanco3.Caption := '';
               txtValorCq3.Caption := '';
             End;
             //
               dmAdmDados.cdsConfig.edit;
               dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger :=
                   dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger + 1;
               dmAdmDados.cdsConfig.ApplyUpdates(0);
               //
               M_NRRECI := uFuncoes.StrZero(dmAdmDados.cdsConfigCFG_NRRECIBO.AsString,5);
               //
               txtNumRecibo.Caption := M_NRRECI;
               txtGrupo.Caption := edtGrupo.Text;
               txtCota.Caption  := edtCota.Text;
               txtParcela.Caption := edtParcela.Text;
               txtDataPag.Caption := edtDTPAGA.Text;
               txtValorTotal.Caption    := FormatFloat('###,##0.#0',edtImportancia.Value);
               txtObservacao.Lines.Text := memObservacao.Lines.Text;
               txtData.Caption := 'Teresina, '+uFuncoes.DataExtenso(Date());
               lblUsuario.Caption := '/ '+uFrmAdmMain.M_NMUSUA;
               //
               ppLabel25.Caption := lblEndereco.Caption;
               ppLabel26.Caption := lblFone.Caption;
               ppLabel27.Caption := lblCnpj.Caption; 
               //
               ppLabel31.Caption := txtNumRecibo.Caption;
               ppLabel24.Caption := txtValorTotal.Caption;
               ppLabel32.Caption := txtCliente.Caption;
               ppLabel33.Caption := txtValor.Caption;
               ppLabel34.Caption := txtReferente.Caption;
               //
               ppLabel35.Caption := txtGrupo.Caption;
               ppLabel36.Caption := txtCota.Caption;
               ppLabel37.Caption := txtParcela.Caption;
               ppLabel38.Caption := txtDataPag.Caption;
               ppLabel39.Caption := txtValorTotal.Caption;
               ppMemo17.Lines.Text := txtObservacao.Lines.Text;
               //
               myCheckBox1.Checked := myCbxDinheiro.Checked;
               myCheckBox2.Checked := myCbxCheque1.Checked;
               myCheckBox3.Checked := myCbxCheque2.Checked;
               myCheckBox4.Checked := myCbxCheque3.Checked;
               //
               ppLabel42.Caption := txtDinheiro.Caption;
               ppLabel43.Caption := txtNumCq1.Caption;
               ppLabel47.Caption := txtBanco1.Caption;
               ppLabel46.Caption := txtValorCq1.Caption;
               //
               ppLabel49.Caption := txtNumcq2.Caption;
               ppLabel51.Caption := txtBanco2.Caption;
               ppLabel53.Caption := txtValorCq2.Caption;
               //
               ppLabel55.Caption := txtNumcq3.Caption;
               ppLabel57.Caption := txtBanco3.Caption;
               ppLabel59.Caption := txtValorCq3.Caption; 
               //
               ppLabel62.Caption := txtData.Caption;
               ppLabel64.Caption := lblUsuario.Caption;
               //
               If FileExists(ExtractFilePath( Application.ExeName )+ 'logo2.jpg') Then
                begin
                    ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ 'logo2.jpg');
                    ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ 'logo2.jpg');
                End;
               //
               PrintReport;
          End;
     Finally
           aDescricao := 'Gerou recibo : G '+ edtGrupo.Text + ' | C '+edtCota.Text+ ' | P '+edtParcela.Text +' | Valor  : '+FormatFloat('###,##0.#0',edtImportancia.Value);
           dmAdmDados.SetTarefa_Usuario(aDescricao);
           dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
     End;
end;

procedure TfrmRecibos.cbxDinheiroClick(Sender: TObject);
begin
      if not (cbxDinheiro.Checked) Then
         edtDinheiro.Value := 0; 
end;

procedure TfrmRecibos.Limpar;
begin
      edtReceber.Clear;
      edtGrupo.Clear;
      edtCota.Clear;
      edtParcela.Clear;
      edtImportancia.Clear;
      edtReferente.Lines.Clear;
      memObservacao.Lines.Clear;
      //
      cbxDinheiro.Checked := False;
      edtDinheiro.Clear;
      //
      cbxCheque1.Checked := False;
      cbxCheque2.Checked := False;
      cbxCheque2.Checked := False;
      //
      edtNumCheque1.Clear;
      edtNumCheque2.Clear;
      edtNumCheque3.Clear;
      //
      edtBanco1.Clear;
      edtBanco2.Clear;
      edtBanco3.Clear;
      //
      edtValCheque1.Clear;
      edtValCheque2.Clear;
      edtValCheque3.Clear;
      //
      cbxCredito.Checked := False;
end;

procedure TfrmRecibos.btnNovoClick(Sender: TObject);
begin
     Limpar;
end;

procedure TfrmRecibos.cbxCheque1Click(Sender: TObject);
begin
      if not (cbxCheque1.Checked) Then
       begin
           edtValCheque1.Clear;
           edtBanco1.Clear;
           edtNumCheque1.Clear;
       End;
end;

procedure TfrmRecibos.cbxCheque2Click(Sender: TObject);
begin
      if not (cbxCheque2.Checked) Then
       begin
           edtValCheque2.Clear;
           edtBanco2.Clear;
           edtNumCheque2.Clear;
       End;
end;

procedure TfrmRecibos.cbxCheque3Click(Sender: TObject);
begin
      if not (cbxCheque3.Checked) Then
       begin
           edtValCheque3.Clear;
           edtBanco3.Clear;
           edtNumCheque3.Clear;
       End;
end;

procedure TfrmRecibos.edtNumCheque1Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtNumCheque1.Text) Then
         edtNumCheque1.Text := uFuncoes.StrZero(edtNumCheque1.Text,10);
end;

procedure TfrmRecibos.edtNumCheque2Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtNumCheque2.Text) Then
         edtNumCheque2.Text := uFuncoes.StrZero(edtNumCheque2.Text,10);
end;

procedure TfrmRecibos.edtNumCheque3Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtNumCheque3.Text) Then
         edtNumCheque3.Text := uFuncoes.StrZero(edtNumCheque3.Text,10);
end;

procedure TfrmRecibos.edtBanco1Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco1.Text) Then
         edtBanco1.Text := uFuncoes.StrZero(edtBanco1.Text,3);
end;

procedure TfrmRecibos.edtBanco2Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco2.Text) Then
         edtBanco2.Text := uFuncoes.StrZero(edtBanco2.Text,3);
end;

procedure TfrmRecibos.edtBanco3Exit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtBanco3.Text) Then
         edtBanco3.Text := uFuncoes.StrZero(edtBanco3.Text,3);
end;

procedure TfrmRecibos.FormCreate(Sender: TObject);
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
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Recibo'));
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

procedure TfrmRecibos.edtGrupoExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtGrupo.text) Then
        if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.text))) Then
         begin
              edtGrupo.Clear;
              edtGrupo.SetFocus;
              raise Exception.Create('Grupo não cadastro.');
         End;
end;

procedure TfrmRecibos.edtCotaExit(Sender: TObject);
begin
    { If not uFuncoes.Empty(edtGrupo.text)
      and not uFuncoes.Empty(edtCota.Text) Then
        if not (dmAdmDados.Verificar_Cota_Grupo2(StrtoInt(edtGrupo.text), StrtoInt(edtCota.text))) Then
         begin
              edtCota.Clear;
              edtCota.SetFocus;
              raise Exception.Create('Cota não cadastro.');
         End;}
end;

procedure TfrmRecibos.Limpar2;
begin
      cbxDinheiro.Checked := False;
      edtDinheiro.Clear;
      //
      cbxCheque1.Checked := False;
      cbxCheque2.Checked := False;
      cbxCheque2.Checked := False;
      //
      edtNumCheque1.Clear;
      edtNumCheque2.Clear;
      edtNumCheque3.Clear;
      //
      edtParcela.Clear; 
end;

procedure TfrmRecibos.cbxCreditoClick(Sender: TObject);
begin
      if (cbxCredito.Checked) Then
         Limpar2;
end;

End.

