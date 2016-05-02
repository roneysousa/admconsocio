unit uFrmRelLances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr,
  DBClient, Provider, ppBands, ppCache, ppClass, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppPrnabl, ppCtrls, ppVar;

type
  TfrmModRelLance = class(TfrmModRelatorio)
    Label3: TLabel;
    edtCDGrupo: TEdit;
    Label6: TLabel;
    edtNRASSE: TEdit;
    dstLancesGrupo: TSQLDataSet;
    dspLancesGrupo: TDataSetProvider;
    cdsLancesGrupo: TClientDataSet;
    dsLances: TDataSource;
    cdsLancesGrupoCOT_NRVENDA: TIntegerField;
    cdsLancesGrupoCOT_CDGRUPO: TIntegerField;
    cdsLancesGrupoCOT_NRCOTA: TIntegerField;
    cdsLancesGrupoCOT_CDCLIE: TIntegerField;
    cdsLancesGrupoCLI_NOME: TStringField;
    cdsLancesGrupoLAN_SEQUENCIA: TIntegerField;
    cdsLancesGrupoLAN_CDGRUP: TIntegerField;
    cdsLancesGrupoLAN_NRCOTA: TIntegerField;
    cdsLancesGrupoLAN_NRVEND: TIntegerField;
    cdsLancesGrupoLAN_NRASSEMBLEIA: TIntegerField;
    cdsLancesGrupoLAN_TIPO: TStringField;
    cdsLancesGrupoLAN_DTMOVI: TDateField;
    ppDBPipeline1: TppDBPipeline;
    cdsLancesGrupoCOT_TOTAL_CREDITO_CALC: TFloatField;
    cdsLancesGrupoCOT_PLANO: TIntegerField;
    cdsLancesGrupoCOT_POSICAO: TStringField;
    cdsLancesGrupoLAN_NRPARC: TFloatField;
    cdsLancesGrupoCOT_VALCOTA_CALC: TFloatField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lblNomeGrupo: TppLabel;
    lblNumAssem: TppLabel;
    lblNrAssembleia: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    cdsLancesGrupoLAN_VALOR: TFMTBCDField;
    cdsLancesGrupoLAN_PELANC: TFMTBCDField;
    cdsLancesGrupoCOT_VALCRE: TFMTBCDField;
    cdsLancesGrupoCOT_VALCOTA: TFMTBCDField;
    cdsLancesGrupoCOT_TAXA_ADM: TFMTBCDField;
    cdsLancesGrupoCOT_FUNDORES: TFMTBCDField;
    ppSummaryBand1: TppSummaryBand;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    spLocalizarGrupo: TSpeedButton;
    lblGrupo: TLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    rbLimitados: TRadioGroup;
    lblLimitados: TppLabel;
    procedure edtCDGrupoExit(Sender: TObject);
    procedure edtCDGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRASSEKeyPress(Sender: TObject; var Key: Char);
    procedure btnVisualizarClick(Sender: TObject);
    procedure cdsLancesGrupoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure edtCDGrupoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModRelLance: TfrmModRelLance;
  M_FLLIMI : Boolean;

implementation

uses uFuncoes, udmAdmDados, uFrmConsGrupos;

{$R *.dfm}

procedure TfrmModRelLance.btnVisualizarClick(Sender: TObject);
begin
  inherited;
      //
      if uFuncoes.Empty(edtCDGrupo.Text) then
        begin
             edtCDGrupo.SetFocus;
             Exit;
        end;
      //
      if uFuncoes.Empty(edtNRASSE.Text) then
      begin
             edtNRASSE.SetFocus;
             Exit;
      end;
      //
      if not uFuncoes.Empty(edtCDGrupo.Text) and not uFuncoes.Empty(edtNRASSE.Text) then
        begin
          btnVisualizar.Enabled := False;
          try
             With cdsLancesGrupo do
              begin
                   Active := False;
                   If (M_FLLIMI) Then
                     begin
                          if (rbLimitados.ItemIndex = 0) Then
                          begin
                               CommandText := 'Select L.*, CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_CDCLIE, CT.COT_NRCOTA, ';
                               CommandText := CommandText + 'CT.COT_PLANO, CT.COT_POSICAO, CT.COT_VALCRE,  CT. COT_VALCOTA, CT.COT_TAXA_ADM, CT.COT_FUNDORES, ';
                               CommandText := CommandText + 'CL.CLI_NOME from lances L ';
                               CommandText := CommandText + 'INNER JOIN cotas CT on L.LAN_NRVEND = CT.COT_NRVENDA ';
                               CommandText := CommandText + 'INNER JOIN clientes CL on CL.CLI_CODIGO = CT.COT_CDCLIE ';
                               CommandText := CommandText + 'Where (L.lan_cdgrup = :pCDGRUP) and (L.LAN_NRASSEMBLEIA = :pNRASSE) ';
                               CommandText := CommandText + 'order by L.LAN_PELANC Desc, L.LAN_VALOR Desc';
                               Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtCDGrupo.Text);
                               Params.ParamByName('pNRASSE').AsInteger := StrtoInt(edtNRASSE.Text);
                          End;
                          //
                          if (rbLimitados.ItemIndex = 1) Then
                          begin
                               CommandText := 'Select L.*, CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_CDCLIE, CT.COT_NRCOTA, ';
                               CommandText := CommandText + 'CT.COT_PLANO, CT.COT_POSICAO, CT.COT_VALCRE,  CT. COT_VALCOTA, CT.COT_TAXA_ADM, CT.COT_FUNDORES, ';
                               CommandText := CommandText + 'CL.CLI_NOME from lances L ';
                               CommandText := CommandText + 'INNER JOIN cotas CT on L.LAN_NRVEND = CT.COT_NRVENDA ';
                               CommandText := CommandText + 'INNER JOIN clientes CL on CL.CLI_CODIGO = CT.COT_CDCLIE ';
                               CommandText := CommandText + 'Where (L.lan_cdgrup = :pCDGRUP) and (L.LAN_NRASSEMBLEIA = :pNRASSE) AND (L.LAN_TIPO = '+QuotedStr('L')+')';
                               CommandText := CommandText + 'order by L.LAN_PELANC Desc, L.LAN_VALOR Desc ';
                               Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtCDGrupo.Text);
                               Params.ParamByName('pNRASSE').AsInteger := StrtoInt(edtNRASSE.Text);
                          End;
                          //
                          if (rbLimitados.ItemIndex = 2) Then
                          begin
                               CommandText := 'Select L.*, CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_CDCLIE, CT.COT_NRCOTA, ';
                               CommandText := CommandText + 'CT.COT_PLANO, CT.COT_POSICAO, CT.COT_VALCRE,  CT. COT_VALCOTA, CT.COT_TAXA_ADM, CT.COT_FUNDORES, ';
                               CommandText := CommandText + 'CL.CLI_NOME from lances L ';
                               CommandText := CommandText + 'INNER JOIN cotas CT on L.LAN_NRVEND = CT.COT_NRVENDA ';
                               CommandText := CommandText + 'INNER JOIN clientes CL on CL.CLI_CODIGO = CT.COT_CDCLIE ';
                               CommandText := CommandText + 'Where (L.lan_cdgrup = :pCDGRUP) and (L.LAN_NRASSEMBLEIA = :pNRASSE) AND (L.LAN_TIPO = '+QuotedStr('T')+')';
                               CommandText := CommandText + 'order by L.LAN_PELANC Desc, L.LAN_VALOR Desc';
                               Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtCDGrupo.Text);
                               Params.ParamByName('pNRASSE').AsInteger := StrtoInt(edtNRASSE.Text);
                          End;
                          //
                     End
                     Else
                     begin
                          CommandText := 'Select L.*, CT.COT_NRVENDA, CT.COT_CDGRUPO, CT.COT_CDCLIE, CT.COT_NRCOTA, ';
                          CommandText := CommandText + 'CT.COT_PLANO, CT.COT_POSICAO, CT.COT_VALCRE,  CT. COT_VALCOTA, CT.COT_TAXA_ADM, CT.COT_FUNDORES, ';
                          CommandText := CommandText + 'CL.CLI_NOME from lances L ';
                          CommandText := CommandText + 'INNER JOIN cotas CT on L.LAN_NRVEND = CT.COT_NRVENDA ';
                          CommandText := CommandText + 'INNER JOIN clientes CL on CL.CLI_CODIGO = CT.COT_CDCLIE ';
                          CommandText := CommandText + 'Where (L.lan_cdgrup = :pCDGRUP) and (L.LAN_NRASSEMBLEIA = :pNRASSE) ';
                          CommandText := CommandText + 'order by L.LAN_PELANC Desc, L.LAN_VALOR Desc ';
                          Params.ParamByName('pCDGRUP').AsInteger := StrtoInt(edtCDGrupo.Text);
                          Params.ParamByName('pNRASSE').AsInteger := StrtoInt(edtNRASSE.Text);
                     End;
                   Active := True;
              end;
             //
             if not(cdsLancesGrupo.IsEmpty) then
             begin
                With ppReport1 do
                  begin
                      If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                         ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                      //
                      lblNomeGrupo.Caption    := edtCDGrupo.Text+' - '+dmAdmDados.GetNomeGrupo(StrtoInt(edtCDGrupo.Text));
                      lblNrAssembleia.Caption := edtNRASSE.Text;
                      //
                      if (rbLimitados.ItemIndex = 0) Then
                          lblLimitados.Caption := '';
                      If (M_FLLIMI) Then
                      begin
                          if (rbLimitados.ItemIndex = 1) Then
                              lblLimitados.Caption := 'Lances Livres';
                          if (rbLimitados.ItemIndex = 2) Then
                              lblLimitados.Caption := 'Lances Limitados';
                      End;        
                      //
                      PrintReport;
                  end;
              end
              else
                  Application.MessageBox('Assembléia para grupo não existe.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          finally
              btnVisualizar.Enabled := True;
              edtCDGrupo.Clear;
              edtNRASSE.Clear;
          end;
        end;
end;

procedure TfrmModRelLance.cdsLancesGrupoCalcFields(DataSet: TDataSet);
begin
  inherited;
     if (cdsLancesGrupoCOT_VALCRE.AsFloat > 0) then
        cdsLancesGrupoCOT_TOTAL_CREDITO_CALC.AsFloat :=
          cdsLancesGrupoCOT_VALCRE.AsFloat+
          uFuncoes.Gerapercentual(cdsLancesGrupoCOT_VALCRE.AsFloat, cdsLancesGrupoCOT_TAXA_ADM.AsFloat)
     else
        cdsLancesGrupoCOT_TOTAL_CREDITO_CALC.AsFloat := 0;
     //
     cdsLancesGrupoCOT_VALCOTA_CALC.AsFloat :=
          cdsLancesGrupoCOT_VALCOTA.AsFloat +
          uFuncoes.Gerapercentual(cdsLancesGrupoCOT_VALCOTA.AsFloat, cdsLancesGrupoCOT_TAXA_ADM.AsFloat)+
          uFuncoes.Gerapercentual(cdsLancesGrupoCOT_VALCOTA.AsFloat, cdsLancesGrupoCOT_FUNDORES.AsFloat);
     //
     cdsLancesGrupoLAN_NRPARC.AsFloat :=
        uFuncoes.Calcula_Quantidade_Parcela(cdsLancesGrupoLAN_VALOR.AsFloat, cdsLancesGrupoCOT_VALCOTA_CALC.AsFloat);
end;

procedure TfrmModRelLance.edtCDGrupoExit(Sender: TObject);
begin
  inherited;
      if not uFuncoes.Empty(edtCDGrupo.Text) then
       begin
        M_FLLIMI := False;
        //
        if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtCDGrupo.Text))) then
           begin
                edtCDGrupo.clear;
                edtCDGrupo.SetFocus;
                raise exception.Create('Grupo não cadastro.');
           end
           else
           begin
                uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsInteger, edtCDGrupo.Text);
                if not (dmAdmDados.cdsGrupos.IsEmpty) Then
                 begin
                      if (dmAdmDados.cdsGruposGRU_LIMITADO.AsString = 'S' ) Then
                         M_FLLIMI := True;
                      //   
                      lblGrupo.Caption := dmAdmDados.cdsGruposGRU_DESCRICAO.AsString;
                      //dmAdmDados.GetNomeGrupo(StrtoInt(edtCDGrupo.Text));
                 End;
           End;
      End;

end;

procedure TfrmModRelLance.edtCDGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
    //
    if (Key = #13) and uFuncoes.Empty(edtCDGrupo.Text)  then
     begin
         Key := #0;
         spLocalizarGrupoClick(Sender); 
     end;
end;

procedure TfrmModRelLance.edtNRASSEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TfrmModRelLance.FormShow(Sender: TObject);
begin
  inherited;
     lblGrupo.Caption := '';
end;

procedure TfrmModRelLance.spLocalizarGrupoClick(Sender: TObject);
begin
  inherited;
      edtCDGrupo.SetFocus;
      Application.CreateForm(TfrmConsGrupos, frmConsGrupos);
      try
          frmConsGrupos.ShowModal;
      Finally
          if not (frmConsGrupos.cdsConsultar.IsEmpty)   then
          begin
             edtCDGrupo.Text := frmConsGrupos.cdsConsultarGRU_CODIGO.AsString;
             lblNomeGrupo.Caption := frmConsGrupos.cdsConsultarGRU_DESCRICAO.AsString;
             edtNRASSE.SetFocus;
          end;
          //    
          frmConsGrupos.Free;
      End;
end;

procedure TfrmModRelLance.edtCDGrupoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtCDGrupo.Text) Then
         lblGrupo.Caption := '';
end;

end.
