unit uFrmManutContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmManutencaoContasPadrao, FMTBcd, DB, DBClient, Provider,
  SqlExpr, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,
  ToolEdit, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFrmManutContasPagar = class(TFrmManutencaoContasPadrao)
    cdsConsultaPAG_SEQUENCIA: TIntegerField;
    cdsConsultaPAG_LOJA: TIntegerField;
    cdsConsultaPAG_NRENTRADA: TIntegerField;
    cdsConsultaPAG_QTPARCELAS: TIntegerField;
    cdsConsultaPAG_DATACOMPRA: TDateField;
    cdsConsultaPAG_DATAVENCIMENTO: TDateField;
    cdsConsultaPAG_FORNECEDOR: TIntegerField;
    cdsConsultaFOR_RAZAO: TStringField;
    cdsConsultaPAG_NRNOTA: TStringField;
    cdsConsultaPAG_SERIENOTA: TStringField;
    cdsConsultaPAG_NATUREZADESPESA: TIntegerField;
    cdsConsultaPAG_VALORPARCELA: TFMTBCDField;
    cdsConsultaPAG_SITUACAO: TStringField;
    cdsConsultaPAG_DATAPAGAMENTO: TDateField;
    cdsConsultaPAG_VALORPAGO: TFMTBCDField;
    cdsConsultaPAG_VALORDESCONTO: TFMTBCDField;
    cdsConsultaPAG_VALORJUROS: TFMTBCDField;
    cdsConsultaPAG_BANCO: TStringField;
    cdsConsultaPAG_NRCONTA: TStringField;
    cdsConsultaPAG_NRCHEQUE: TStringField;
    cdsConsultaPAG_AGENCIA: TStringField;
    btnBaixar: TBitBtn;
    btnVisualizar: TBitBtn;
    rvpContaPagar: TRvProject;
    RvSystem1: TRvSystem;
    rvdContaPagar: TRvDataSetConnection;
    cdsConsultaPAG_DIAS: TFloatField;
    rgOrdenar: TRadioGroup;
    cdsConsultaPAG_PARCELA: TIntegerField;
    btnEstornar: TBitBtn;
    procedure spLocalizarClick(Sender: TObject);
    procedure btFiltarClick(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
  private
    { Private declarations }
     Function Consulta(aDtInicio, aDtFinal : TDatetime; iLoja : Integer): Boolean;
     Procedure ConsultaRegistro(iRegistro : Integer);
  public
    { Public declarations }
  end;

var
  FrmManutContasPagar: TFrmManutContasPagar;

implementation

uses uFrmLocFornecedor, uFuncoes, udmAdmDados, uFrmEditarContaPagar, uFrmAdmMain,
  uFrmAutenticarUsuario;

{$R *.dfm}

procedure TFrmManutContasPagar.spLocalizarClick(Sender: TObject);
begin
  inherited;
       edtCodigo.SetFocus;
       Application.CreateForm(TFrmConsFornecedores, FrmConsFornecedores);
       try
           If (FrmConsFornecedores.ShowModal = mrOk) Then
             if not (FrmConsFornecedores.cdsConsultar.IsEmpty) Then
              begin
                  edtCodigo.Text :=
                     uFuncoes.StrZero(FrmConsFornecedores.cdsConsultarFOR_CODIGO.AsString,7);
                  rgSituacao.SetFocus;
              End;
       Finally
           FrmConsFornecedores.Free;
       End;
end;

procedure TFrmManutContasPagar.btFiltarClick(Sender: TObject);
Var
   aDataIni, aDataFim : TDatetime;
   iLoja : Integer;
begin
  inherited;
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     iLoja := 1;
     //DMDados.cdsConfigCFG_CODEMPRESA.AsInteger;
     //
     If not uFuncoes.Empty(ufuncoes.RemoveChar(edtDTINICIAL.Text)) Then
         aDataIni := edtDTINICIAL.Date
     Else
         aDataIni := StrtoDate('01/01/2000');
     //
     If not uFuncoes.Empty(ufuncoes.RemoveChar(edtDTFINAL.Text)) Then
         aDataFim := edtDTFINAL.Date
     Else
         aDataFim := Date();
     //
     if not (Consulta(aDataIni, aDataFim, iLoja)) Then
     begin
          Application.MessageBox(PChar('N�o h� movimento no per�odo indicado.'),
               'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          edtDTINICIAL.SetFocus;
          Exit;
     End;

end;

function TFrmManutContasPagar.Consulta(aDtInicio, aDtFinal: TDatetime;
  iLoja: Integer): Boolean;
Var
   aTextoSQL : String;
   fTotalParcelaAberta, fTotalPago : Double;
   iCliente : Integer;
   aSituacao, aData : String;
   aCampoOrdenar : String;
begin
     result := False;
     fTotalParcelaAberta := 0;
     fTotalPago    := 0;
     //
     Case rgPeriodos.ItemIndex of
         0 : aData := 'CP.PAG_DATACOMPRA';
         1 : aData := 'CP.PAG_DATAVENCIMENTO';
         2 : aData := 'CP.PAG_DATAPAGAMENTO';
     End;
     //
     Case rgSituacao.ItemIndex of
          1 : aSituacao := 'A';
          2 : aSituacao := 'P';
     End;
     //
     Case rgOrdenar.ItemIndex of
         0: aCampoOrdenar := 'F.FOR_RAZAO';
         1: aCampoOrdenar := 'CP.PAG_DATAVENCIMENTO';
         2: aCampoOrdenar := 'CP.PAG_DATAPAGAMENTO';
     End;
     //
     aTextoSQL := 'Select CP.PAG_SEQUENCIA, CP.PAG_LOJA, CP.PAG_NRENTRADA, CP.PAG_PARCELA, ';
     aTextoSQL := aTextoSQL + 'CP.PAG_QTPARCELAS, CP.PAG_DATACOMPRA, CP.PAG_DATAVENCIMENTO, ';
     aTextoSQL := aTextoSQL + 'CP.PAG_FORNECEDOR, F.FOR_RAZAO ,CP.PAG_NRNOTA, CP.PAG_SERIENOTA, CP.PAG_NATUREZADESPESA, ';
     aTextoSQL := aTextoSQL + 'CP.PAG_VALORPARCELA, CP.PAG_SITUACAO, CP.PAG_DATAPAGAMENTO, ';
     aTextoSQL := aTextoSQL + 'CP.PAG_VALORPAGO, CP.PAG_VALORDESCONTO, CP.PAG_VALORJUROS, ';
     aTextoSQL := aTextoSQL + 'CP.PAG_BANCO, CP.PAG_NRCONTA, CP.PAG_NRCHEQUE, CP.PAG_AGENCIA ';
     aTextoSQL := aTextoSQL + 'from CONTASPAGAR CP ';
     aTextoSQL := aTextoSQL + 'Inner Join FORNECEDORES F on CP.PAG_FORNECEDOR = F.FOR_CODIGO ';
     aTextoSQL := aTextoSQL + 'Where ('+aData+' >= :pDTINICIO) and ('+aData+' <= :pDTFINAL) ';
     aTextoSQL := aTextoSQL + 'and (CP.PAG_LOJA = :pLOJA) ';
     //
     if not ufuncoes.Empty(edtCodigo.Text) then
     begin
          iCliente := StrtoInt(edtCodigo.Text);
          aTextoSQL := aTextoSQL + ' and (CP.PAG_FORNECEDOR = '+ QuotedStr(InttoStr(iCliente))+')';
     End;
     //
     If (rgSituacao.ItemIndex > 0) then
         aTextoSQL := aTextoSQL + ' and (CP.PAG_SITUACAO = '+QuotedStr(aSituacao)+') ';
     //
     //aTextoSQL := aTextoSQL + ' order by CP.PAG_FORNECEDOR, CP.PAG_NRENTRADA, CP.PAG_PARCELA ';
     aTextoSQL := aTextoSQL + ' order by '+aCampoOrdenar;
     //
     try
          //
          With cdsConsulta do
          begin
               DisableControls;
               Close;
               CommandText := aTextoSQL;
               Params.ParamByName('pDTINICIO').AsDateTime := aDtInicio;
               Params.ParamByName('pDTFINAL').AsDateTime  := aDtFinal;
               Params.ParamByName('pLOJA').AsInteger      := iLoja;
               Open;
               //
               if not (IsEmpty) Then
                begin
                     First;
                     While not (Eof) do
                     begin
                          if (FieldByName('PAG_SITUACAO').AsString = 'A')
                             AND uFuncoes.Empty(FieldByName('PAG_DATAPAGAMENTO').AsString) Then
                              fTotalParcelaAberta := fTotalParcelaAberta + FieldByName('PAG_VALORPARCELA').AsFloat;
                          //
                          if (FieldByName('PAG_SITUACAO').AsString = 'P')
                             AND not uFuncoes.Empty(FieldByName('PAG_DATAPAGAMENTO').AsString) Then
                              fTotalPago := fTotalPago + FieldByName('PAG_VALORPAGO').AsFloat;
                          //
                          Next;
                     End;
                     //
                     lbl_TOTABERTAS.Caption := FormatFloat('###,##0.#0', fTotalParcelaAberta);
                     lbl_RECEBIDAS.Caption  := FormatFloat('###,##0.#0', fTotalPago);
                     result := true;
                End;
                //
                lbl_TOTABERTAS.Caption := FormatFloat('###,##0.#0', fTotalParcelaAberta);
                lbl_RECEBIDAS.Caption  := FormatFloat('###,##0.#0', fTotalPago);
                //
                First;
                EnableControls;
          End;
     Except

     End;
end;

procedure TFrmManutContasPagar.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   if not (dsConsulta.DataSet.IsEmpty) Then
   begin
     BtEditar.Enabled  := dsConsulta.DataSet.State in [dsBrowse];
     BtExcluir.Enabled := dsConsulta.DataSet.State in [dsBrowse];
     btnBaixar.Enabled := ((dsConsulta.DataSet.State in [dsBrowse]) and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').AsString = 'A'));
     btnVisualizar.Enabled := dsConsulta.DataSet.State in [dsBrowse];
     btnEstornar.Enabled := ((dsConsulta.DataSet.State in [dsBrowse]) and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').AsString = 'P'));
   End
   Else
   begin
      BtEditar.Enabled  := false;
      BtExcluir.Enabled := false;
      btnBaixar.Enabled := false;
      btnVisualizar.Enabled := FALSE;
      btnEstornar.Enabled := false;
   End;
end;

procedure TFrmManutContasPagar.BtExcluirClick(Sender: TObject);
var
   aDescricao, aNumContaParcela, aDtVencimento, aValor : String;
   iSeq, iLoja, iParcela  : Integer;
begin
  inherited;
   if  not (dsConsulta.DataSet.IsEmpty) and (dsConsulta.DataSet.RecordCount > 0)
     and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').asstring = 'A') then
    begin
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            aNumContaParcela :=   uFuncoes.StrZero(dsConsulta.DataSet.FieldByname('PAG_NRENTRADA').AsString,7)+'/'
                                + uFuncoes.StrZero(dsConsulta.DataSet.FieldByname('PAG_PARCELA').AsString,2);
            aDtVencimento    := dsConsulta.DataSet.FieldByname('PAG_DATAVENCIMENTO').AsString;
            aValor           := FormatFloat('###,##0.#0', dsConsulta.DataSet.FieldByname('PAG_VALORPARCELA').AsFloat);
            //
            iSeq     := dsConsulta.DataSet.FieldByname('PAG_SEQUENCIA').AsInteger;
            iLoja    := 1;
            iParcela := dsConsulta.DataSet.FieldByname('PAG_PARCELA').AsInteger;
            //
            dmAdmDados.Start;
            try
                if (dmAdmDados.ExcluirContaPagar(iSeq, iLoja, iParcela)) Then
                begin
                     //
                     dmAdmDados.Comit(Transc);
                     //
                     aDescricao := 'Excluir CP : '+  aNumContaParcela
                                             + ' | Valor : ' + aValor
                                             + ' | Dt.Venc.: ' + aDtVencimento;
                     dmAdmDados.SetTarefa_Usuario(aDescricao);
                     dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                     //
                     Application.MessageBox('Registro exclu�do com sucesso.','ATEN��O',
                            MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                End;
                //
                btFiltarClick(Sender);
            Except
                 on e: exception do
                  begin
                      Application.MessageBox(PChar('Erro ao tentar excluir registro! Erro:'+#13
                         + E.Message),  'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                      dmAdmDados.Rollback;
                  End;
            End;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TFrmManutContasPagar.BtEditarClick(Sender: TObject);
Var
   iRegistro : Integer;
begin
  inherited;
    if  not (dsConsulta.DataSet.IsEmpty) and (dsConsulta.DataSet.RecordCount > 0)
     and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').asstring = 'A') then
    begin
         iRegistro := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
         Application.CreateForm(TFrmEditarContaPagar, FrmEditarContaPagar);
         try
             FrmEditarContaPagar.iCodigo := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
             FrmEditarContaPagar.aOpcao  := 'E';
             FrmEditarContaPagar.Caption := 'Editar Conta Pagar';
             FrmEditarContaPagar.ShowModal;
         Finally
             FrmEditarContaPagar.free;
             //
             btFiltarClick(Sender);
             dsConsulta.DataSet.Locate('PAG_SEQUENCIA',iRegistro,[]);
         End;
    End
    Else
        Application.MessageBox('Registro n�o pode ser editado.','ATEN��O',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
end;

procedure TFrmManutContasPagar.edtCodigoExit(Sender: TObject);
Var
   iCod : Integer;
begin
  inherited;
     if (not uFuncoes.Empty(edtCodigo.Text)) Then
      begin
           ICod := StrtoInt(edtCodigo.Text);
           If not dmAdmDados.ProcurarValor(Inttostr(iCod),'FOR_CODIGO','FORNECEDORES') Then
            begin
                     Application.MessageBox(PChar('C�digo de cliente n�o cadastro.'),
                             'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtCodigo.SetFocus;
                     edtCodigo.Clear;
                     edtDescricao.Clear;
                     Exit;
            End
            Else
            begin
                     edtCodigo.Text    := uFuncoes.StrZero(edtCodigo.Text,7);
                     edtDescricao.Text := dmAdmDados.GetNomeFornecedor(iCod);
            End;
     End;
end;

procedure TFrmManutContasPagar.edtCodigoChange(Sender: TObject);
begin
  inherited;
      if ufuncoes.Empty(edtCodigo.Text) Then
        edtDescricao.Clear;
end;

procedure TFrmManutContasPagar.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If (key = #13) and uFuncoes.Empty(edtCodigo.Text) Then
     Begin
          Key := #0;
          spLocalizarClick(Sender);
     End;
end;

procedure TFrmManutContasPagar.edtCodigoEnter(Sender: TObject);
begin
  inherited;
       dsConsulta.DataSet.Close;
end;

procedure TFrmManutContasPagar.btnBaixarClick(Sender: TObject);
Var
   iRegistro, iUsuario : Integer;
begin
  inherited;
    If NOT (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(M_CDUSUA))) Then
           raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
    //
    if  not (dsConsulta.DataSet.IsEmpty) and (dsConsulta.DataSet.RecordCount > 0)
     and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').asstring = 'A') then
    begin
        iUsuario := StrtoInt(uFrmAdmMain.M_CDUSUA);
        //If (DMDados.GetVerificaCaixaAberto(iUsuario)) Then
        If (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(M_CDUSUA))) Then
        begin
           iRegistro := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
           Application.CreateForm(TFrmEditarContaPagar, FrmEditarContaPagar);
           try
              FrmEditarContaPagar.iCodigo := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
              FrmEditarContaPagar.aOpcao  := 'B';
              FrmEditarContaPagar.Caption := 'Baixar Conta a Pagar';
              FrmEditarContaPagar.ShowModal;
           Finally
              FrmEditarContaPagar.free;
              //
              btFiltarClick(Sender);
              dsConsulta.DataSet.Locate('PAG_SEQUENCIA',iRegistro,[]);
          End;
        End
        Else
        begin
             Application.MessageBox('Caixa de usu�rio n�o est� aberto.','ATEN��O',
                  MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
             //
             exit;
        End;
    End
    Else
        Application.MessageBox('Registro n�o pode ser editado.','ATEN��O',
              MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
end;

procedure TFrmManutContasPagar.btnVisualizarClick(Sender: TObject);
Var
   aSituacao, aDataRef, aCampoOrdenar, aFilelogo : String;
begin
  inherited;
     If (dsConsulta.DataSet.Active) and not (dsConsulta.DataSet.IsEmpty) Then
     begin
         aFilelogo := 'logo2.bmp';
         Case rgSituacao.ItemIndex of
            0 : aSituacao := 'TODAS';
            1 : aSituacao := 'ABERTAS';
            2 : aSituacao := 'PAGAS';
         End;
         //
         Case rgPeriodos .ItemIndex of
           0 : aDataRef := 'EMISS�O';
           1 : aDataRef := 'VENCIMENTO';
           2 : aDataRef := 'PAGAMENTO';
         End;
         //
         Case rgOrdenar.ItemIndex of
            0: aCampoOrdenar := 'FORNECEDOR';
            1: aCampoOrdenar := 'DATA DE VENCIMENTO';
            2: aCampoOrdenar := 'DATA DE PAGAMENTO';
         End;
         //
         btnVisualizar.Enabled := False;
         try
             With rvpContaPagar do
             begin
                  SetParam('pPERIODO',  'PER�ODO  : ' + edtDTINICIAL.Text + ' � '+edtDTFINAL.Text);
                  SetParam('pSITUACAO', 'SITUA��O : ' + aSituacao);
                  SetParam('pDATA',     'DATA REF.: ' + aDataRef);
                  SetParam('pORDEM',    'ORDEM....: ' + aCampoOrdenar);
                  if FileExists(aFilelogo) Then
                     SetParam('pIMG', aFilelogo);
                  Execute;
             End;
         Finally
              btnVisualizar.Enabled := true;
         End;
     End
      Else
        Application.MessageBox(Pchar('N�o h� dados para impress�o.'+#13+'Refa�a a consulta.'),'ATEN��O',
                 MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
end;

procedure TFrmManutContasPagar.cdsConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
    If (cdsConsulta.State in [dsInternalCalc]) Then
     begin
          if (cdsConsultaPAG_SITUACAO.AsString = 'A') then
             cdsConsultaPAG_DIAS.AsFloat := Date() - cdsConsultaPAG_DATAVENCIMENTO.AsDateTime;
          if (cdsConsultaPAG_SITUACAO.AsString = 'P') then
             cdsConsultaPAG_DIAS.AsFloat := cdsConsultaPAG_DATAPAGAMENTO.AsDateTime - cdsConsultaPAG_DATAVENCIMENTO.AsDateTime;
     End;
end;

procedure TFrmManutContasPagar.ConsultaRegistro(iRegistro: Integer);
begin
    //
    if  not (dsConsulta.DataSet.IsEmpty) and (dsConsulta.DataSet.RecordCount > 0)
      and (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').asstring = 'P') then
    begin
         iRegistro := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
         Application.CreateForm(TFrmEditarContaPagar, FrmEditarContaPagar);
         try
             FrmEditarContaPagar.iCodigo := dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger;
             FrmEditarContaPagar.aOpcao  := 'C';
             FrmEditarContaPagar.Caption := 'Consulta Conta Pagar';
             FrmEditarContaPagar.ShowModal;
         Finally
             FrmEditarContaPagar.free;
             //
             dsConsulta.DataSet.Locate('PAG_SEQUENCIA',iRegistro,[]);
         End;
    End
end;

procedure TFrmManutContasPagar.grdConsultarDblClick(Sender: TObject);
begin
  inherited;
      ConsultaRegistro(dsConsulta.DataSet.FieldByName('PAG_SEQUENCIA').AsInteger);
end;

procedure TFrmManutContasPagar.btnEstornarClick(Sender: TObject);
Var
   iCaixa, iUsuarioAuto : Integer;
   aDataHora, aDescEstorno, aValor : String;
   iSeq, iLoja, iParcela : Integer;
begin
  inherited;
    If not (dsConsulta.DataSet.IsEmpty) and
       (dsConsulta.DataSet.FieldByName('PAG_SITUACAO').AsString = 'P') Then
     begin
          iCaixa   := StrtoInt(uFrmAdmMain.M_CDUSUA);
          uFrmAdmMain.autenticacao := False;
          //
          If Application.MessageBox('Confirma o estornou da parcela?',
             'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
               //
               iSeq     := dsConsulta.DataSet.FieldByname('PAG_SEQUENCIA').AsInteger;
               iLoja    := dsConsulta.DataSet.FieldByname('PAG_LOJA').AsInteger;
               iParcela := dsConsulta.DataSet.FieldByname('PAG_PARCELA').AsInteger;
               aValor   := FormatFloat('###,##0.#0', dsConsulta.DataSet.FieldByname('PAG_VALORPAGO').AsFloat);
               //
               if not (uFrmAdmMain.admin) Then
               begin
                     Application.CreateForm(TfrmAutenticarAdm, frmAutenticarAdm);
                     try
                         frmAutenticarAdm.ShowModal;
                     Finally
                         iUsuarioAuto := uFrmAutenticarUsuario.iUserAutorizou;
                         frmAutenticarAdm.Free;
                     End;
               End
               Else
               begin
                     uFrmAdmMain.autenticacao := True;
                     iUsuarioAuto := iCaixa;
               End;
               //
               if not (uFrmAdmMain.autenticacao) Then
                    raise Exception.Create('Premiss�o negada.')
                Else
                begin
                    //
                    aDataHora := DatetoStr(Date)+' - '+TimetoStr(Time) + ' - ';
                    aDescEstorno := inputbox('Informe o motivo do estorno?','Justificativa:','');
                    //
                    if uFuncoes.Empty(aDescEstorno) Then
                    aDescEstorno := 'N�o informou a justificativa do estorno.';
                    //
                    If (iUsuarioAuto > 0) Then
                    begin
                         aDescEstorno := aDescEstorno + #13 + 'Usu�rio Autorizou : '
                                +dmAdmDados.GetNomeCaixa(iUsuarioAuto);
                         //
                         dmAdmDados.Start;
                         try
                             //
                             if (dmAdmDados.EstornarContaPagar(iSeq, iLoja, iParcela)) Then
                             begin

                                 //
                                 dmAdmDados.Comit(Transc);
                                 //
                                 aDescricao := 'Estorno CP :'+;
                                 dmAdmDados.SetTarefa_Usuario(aDescricao);
                                 dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
                                 //
                                 btFiltarClick(Sender);
                                 dsConsulta.DataSet.Locate('PAG_SEQUENCIA', iSeq,[]);
                             End;
                         Except
                             dmAdmDados.Rollback;
                         End;
                    End;
                End;
           End;
      End;
end;

end.
