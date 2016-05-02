unit uFrmImporta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, FMTBcd, SqlExpr,
  Provider, DBClient, ComCtrls;

type
  TfrmImporta = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    BtSair: TBitBtn;
    btnVisualizar: TBitBtn;
    tbClientes: TTable;
    dstClientes: TSQLDataSet;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    dstClientesCLI_CODIGO: TIntegerField;
    dstClientesCLI_NUMERO: TIntegerField;
    dstClientesCLI_NOME: TStringField;
    dstClientesCLI_ESTADO_CIVIL: TStringField;
    dstClientesCLI_SEXO: TStringField;
    dstClientesCLI_NATURAL: TStringField;
    dstClientesCLI_NACIONALIDADE: TStringField;
    dstClientesCLI_ISNCEST: TStringField;
    dstClientesCLI_CGC: TStringField;
    dstClientesCLI_CPF: TStringField;
    dstClientesCLI_NRIDEN: TStringField;
    dstClientesCLI_DTNASCIMENTO: TDateField;
    dstClientesCLI_NRFONE: TStringField;
    dstClientesCLI_NRCELULAR: TStringField;
    dstClientesCLI_ENDERECO: TStringField;
    dstClientesCLI_NUMCEP: TStringField;
    dstClientesCLI_BAIRRO: TStringField;
    dstClientesCLI_CIDADE: TStringField;
    dstClientesCLI_UFCLIE: TStringField;
    dstClientesCLI_NMEMPRESA: TStringField;
    dstClientesCLI_CARGO: TStringField;
    dstClientesCLI_ENDEMPRESA: TStringField;
    dstClientesCLI_BAIEMPRESA: TStringField;
    dstClientesCLI_UFEMPRESA: TStringField;
    dstClientesCLI_CEPEMPRESA: TStringField;
    dstClientesCLI_FONEEMPRESA: TStringField;
    dstClientesCLI_NOMEP: TStringField;
    dstClientesCLI_GRAUPAR: TStringField;
    dstClientesCLI_FONEPAR: TStringField;
    dstClientesCLI_PROFISSAO: TStringField;
    cdsClientesCLI_CODIGO: TIntegerField;
    cdsClientesCLI_NUMERO: TIntegerField;
    cdsClientesCLI_NOME: TStringField;
    cdsClientesCLI_ESTADO_CIVIL: TStringField;
    cdsClientesCLI_SEXO: TStringField;
    cdsClientesCLI_NATURAL: TStringField;
    cdsClientesCLI_NACIONALIDADE: TStringField;
    cdsClientesCLI_ISNCEST: TStringField;
    cdsClientesCLI_CGC: TStringField;
    cdsClientesCLI_CPF: TStringField;
    cdsClientesCLI_NRIDEN: TStringField;
    cdsClientesCLI_DTNASCIMENTO: TDateField;
    cdsClientesCLI_NRFONE: TStringField;
    cdsClientesCLI_NRCELULAR: TStringField;
    cdsClientesCLI_ENDERECO: TStringField;
    cdsClientesCLI_NUMCEP: TStringField;
    cdsClientesCLI_BAIRRO: TStringField;
    cdsClientesCLI_CIDADE: TStringField;
    cdsClientesCLI_UFCLIE: TStringField;
    cdsClientesCLI_NMEMPRESA: TStringField;
    cdsClientesCLI_CARGO: TStringField;
    cdsClientesCLI_ENDEMPRESA: TStringField;
    cdsClientesCLI_BAIEMPRESA: TStringField;
    cdsClientesCLI_UFEMPRESA: TStringField;
    cdsClientesCLI_CEPEMPRESA: TStringField;
    cdsClientesCLI_FONEEMPRESA: TStringField;
    cdsClientesCLI_NOMEP: TStringField;
    cdsClientesCLI_GRAUPAR: TStringField;
    cdsClientesCLI_FONEPAR: TStringField;
    cdsClientesCLI_PROFISSAO: TStringField;
    tbClientesCODCLI: TSmallintField;
    tbClientesNUMERO: TSmallintField;
    tbClientesNOME: TStringField;
    tbClientesECIVIL: TStringField;
    tbClientesSEXO: TStringField;
    tbClientesNATURAL: TStringField;
    tbClientesNACIONALID: TStringField;
    tbClientesISNCEST: TStringField;
    tbClientesCGC: TStringField;
    tbClientesCPF: TStringField;
    tbClientesIDENTIDADE: TStringField;
    tbClientesNASCIMENTO: TDateField;
    tbClientesDDD: TStringField;
    tbClientesTELEFONE: TStringField;
    tbClientesENDERECO: TStringField;
    tbClientesBAIRRO: TStringField;
    tbClientesCIDADE: TStringField;
    tbClientesESTADO: TStringField;
    tbClientesCEP: TStringField;
    tbClientesEMPRESA: TStringField;
    tbClientesCARGO: TStringField;
    tbClientesENDERCOE: TStringField;
    tbClientesBAIRROE: TStringField;
    tbClientesCIDADEE: TStringField;
    tbClientesESTADOE: TStringField;
    tbClientesCEPE: TStringField;
    tbClientesDDDE: TStringField;
    tbClientesTELEFONEE: TStringField;
    tbClientesRAMALE: TStringField;
    tbClientesSALARIO: TFloatField;
    tbClientesNOMEC: TStringField;
    tbClientesNACIMENTOC: TDateField;
    tbClientesDDDC: TStringField;
    tbClientesTELEFONEC: TStringField;
    tbClientesNOMEP: TStringField;
    tbClientesGRAUPAR: TStringField;
    tbClientesDDDP: TStringField;
    tbClientesTELEFONEP: TStringField;
    tbClientesPROFISSAO: TStringField;
    lblPercentual: TLabel;
    lbl_QTREGI: TLabel;
    DataSource1: TDataSource;
    BmsXPProgressBar1: TProgressBar;
    rgTabelas: TRadioGroup;
    dstAux: TSQLDataSet;
    dspAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    tbAux: TTable;
    DataSource2: TDataSource;
    qryAux: TSQLQuery;
    qryAuxREC_NRVEND: TIntegerField;
    qryAuxREC_CDGRUP: TIntegerField;
    qryAuxREC_NRCOTA: TIntegerField;
    qryAuxREC_NRPARC: TIntegerField;
    procedure BtSairClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImporta: TfrmImporta;
  M_FLCANC : boolean;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmImporta.BtSairClick(Sender: TObject);
begin
      //Close;
     If Application.MessageBox('Confirma cancelamento de importação?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
         M_FLCANC := True;
         ShowMessage('Cancelado pelo usuario.');
     End;
end;

procedure TfrmImporta.btnVisualizarClick(Sender: TObject);
Var
   I, Cont, Total : Integer;
begin
   // Clientes
   if (rgTabelas.ItemIndex = 0) Then
    begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          tbClientes.First;
          cdsClientes.Open;
          //
          try
             Total := tbClientes.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbClientes do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                            {If not uFuncoes.Empty(tbClientesCODCLI.AsString) Then
                            begin
                             With cdsClientes do
                              begin
                                   Active := False;
                                   CommandText := 'select * from CLIENTES Where (CLI_CODIGO = '+QuotedStr(tbClientesCODCLI.AsString)+')';
                                   Active := True;
                                   //
                                   If not (IsEmpty) Then
                                    begin
                                         If not uFuncoes.Empty(tbClientes.FieldBYName('TELEFONE').asString) Then
                                         begin
                                               Edit;
                                               //
                                               cdsClientesCLI_NRFONE.AsString := '';
                                               // inicio = 2
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,1) = '2') Then
                                                   cdsClientesCLI_NRFONE.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+'3'+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                               // inicio = 3
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,1) = '3') Then
                                                   cdsClientesCLI_NRFONE.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                               // inicio = 94 claro
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '94') Then
                                                begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                               // inicio = 99   tim
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '99') Then
                                               begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                               // inicio = 88   oi
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '88') Then
                                                begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                               //
                                               ApplyUpdates(0);
                                         End;
                                    End;
                              End;
                              //
                            End; }
                             if not uFuncoes.Empty(FieldByName('CODCLI').AsString) Then
                             begin
                               if not cdsClientes.Locate('CLI_CODIGO',FieldByName('CODCLI').AsInteger,[]) Then
                               begin
                                 cdsClientes.Append;
                                 cdsClientesCLI_CODIGO.AsInteger := FieldByName('CODCLI').AsInteger;
                                 If uFuncoes.Empty(cdsClientesCLI_NUMERO.AsString) then
                                      cdsClientesCLI_NUMERO.AsInteger := FieldByName('NUMERO').AsInteger;
                                 If not uFuncoes.Empty(FieldByName('NOME').AsString) Then
                                     cdsClientesCLI_NOME.AsString    := FieldByName('NOME').AsString
                                 Else
                                     cdsClientesCLI_NOME.AsString    := 'NOME DE CLIENTE NÃO EXISTE';
                                 cdsClientesCLI_ESTADO_CIVIL.AsString := FieldByName('ECIVIL').AsString;
                                 cdsClientesCLI_SEXO.AsString    := FieldByName('SEXO').AsString;
                                 cdsClientesCLI_NATURAL.AsString := FieldByName('NATURAL').AsString;
                                 cdsClientesCLI_NACIONALIDADE.AsString := FieldByName('NACIONALID').AsString;
                                 cdsClientesCLI_ISNCEST.AsString := fieldByName('ISNCEST').AsString;
                                 cdsClientesCLI_CGC.AsString     := fieldByName('CGC').AsString;
                                 cdsClientesCLI_CPF.AsString     := fieldByName('CPF').AsString;
                                 cdsClientesCLI_NRIDEN.AsString  := fieldByName('IDENTIDADE').AsString;
                                 cdsClientesCLI_DTNASCIMENTO.AsDateTime := FieldBYName('NASCIMENTO').AsDateTime;
                                 {cdsClientesCLI_NRFONE.AsString  :=
                                              Copy(FieldBYName('DDD').AsString,2,2)+
                                              '3'+uFuncoes.RemoveChar(FieldBYName('TELEFONE').asString);}
                                 //
                                               cdsClientesCLI_NRFONE.AsString := '';
                                               // inicio = 2
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,1) = '2') Then
                                                   cdsClientesCLI_NRFONE.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+'3'+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                               // inicio = 3
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,1) = '3') Then
                                                   cdsClientesCLI_NRFONE.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                               // inicio = 94 claro
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '94') Then
                                                begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                               // inicio = 99   tim
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '99') Then
                                               begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                               // inicio = 88   oi
                                               If (Copy(tbClientes.FieldBYName('TELEFONE').asString,1,2) = '88') Then
                                                begin
                                                   cdsClientesCLI_NRCELULAR.AsString  := Copy(tbClientes.FieldBYName('DDD').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONE').asString);
                                                   cdsClientesCLI_NRFONE.AsString := cdsClientesCLI_NRCELULAR.AsString;
                                                End;
                                 //
                                 cdsClientesCLI_ENDERECO.AsString := FieldByName('ENDERECO').AsString;
                                 cdsClientesCLI_NUMCEP.AsString   := FieldByName('CEP').AsString;
                                 cdsClientesCLI_BAIRRO.AsString   := FieldByName('BAIRRO').AsString;
                                 cdsClientesCLI_CIDADE.AsString   := FieldByName('CIDADE').AsString;
                                 cdsClientesCLI_UFCLIE.AsString   := FieldByName('ESTADO').AsString;
                                 cdsClientesCLI_NMEMPRESA.AsString   := FieldByName('EMPRESA').AsString;
                                 cdsClientesCLI_CARGO.AsString    := FieldByName('CARGO').AsString;
                                 cdsClientesCLI_ENDEMPRESA.AsString  := FieldByName('ENDERCOE').AsString;
                                 cdsClientesCLI_BAIEMPRESA.AsString  := FieldByName('BAIRROE').AsString;
                                 cdsClientesCLI_UFEMPRESA.AsString   := FieldByName('ESTADOE').AsString;
                                 cdsClientesCLI_CEPEMPRESA.AsString  := FieldByName('CEPE').AsString;
                                 //
                                 {cdsClientesCLI_FONEEMPRESA.AsString :=
                                              Copy(FieldBYName('DDDE').AsString,2,2)+
                                              '3'+FieldBYName('TELEFONEE').asString;}
                                 //
                                 If not ufuncoes.Empty(tbClientesTELEFONEE.AsString) Then
                                  begin
                                               cdsClientesCLI_FONEEMPRESA.AsString := '';
                                               // inicio = 2
                                               If (Copy(tbClientes.FieldBYName('TELEFONEE').asString,1,1) = '2') Then
                                                   cdsClientesCLI_FONEEMPRESA.AsString  := Copy(tbClientes.FieldBYName('DDDE').AsString,2,2)+'3'+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEE').asString);
                                               // inicio = 3
                                               If (Copy(tbClientes.FieldBYName('TELEFONEE').asString,1,1) = '3') Then
                                                   cdsClientesCLI_FONEEMPRESA.AsString  := Copy(tbClientes.FieldBYName('DDDE').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEE').asString);
                                               // inicio = 94 claro
                                               If (Copy(tbClientes.FieldBYName('TELEFONEE').asString,1,2) = '94') Then
                                                   cdsClientesCLI_FONEEMPRESA.AsString  := Copy(tbClientes.FieldBYName('DDDE').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEE').asString);
                                               // inicio = 99   tim
                                               If (Copy(tbClientes.FieldBYName('TELEFONEE').asString,1,2) = '99') Then
                                                   cdsClientesCLI_FONEEMPRESA.AsString  := Copy(tbClientes.FieldBYName('DDDE').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEE').asString);
                                               // inicio = 88   oi
                                               If (Copy(tbClientes.FieldBYName('TELEFONEE').asString,1,2) = '88') Then
                                                   cdsClientesCLI_FONEEMPRESA.AsString := Copy(tbClientes.FieldBYName('DDDE').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEE').asString);
                                     End;
                                 //
                                 cdsClientesCLI_NOMEP.AsString    := FieldByName('NOMEP').AsString;
                                 cdsClientesCLI_GRAUPAR.AsString  := FieldByName('GRAUPAR').AsString;
                                 //
                                 cdsClientesCLI_FONEPAR.AsString  :=
                                              Copy(FieldBYName('DDDP').AsString,2,2)+
                                              '3'+FieldBYName('TELEFONEP').asString;
                                 If not ufuncoes.Empty(tbClientesTELEFONEP.AsString) Then
                                  begin
                                               cdsClientesCLI_FONEEMPRESA.AsString := '';
                                               // inicio = 2
                                               If (Copy(tbClientes.FieldBYName('TELEFONEP').asString,1,1) = '2') Then
                                                   cdsClientesCLI_FONEPAR.AsString  := Copy(tbClientes.FieldBYName('DDDP').AsString,2,2)+'3'+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEP').asString);
                                               // inicio = 3
                                               If (Copy(tbClientes.FieldBYName('TELEFONEP').asString,1,1) = '3') Then
                                                   cdsClientesCLI_FONEPAR.AsString  := Copy(tbClientes.FieldBYName('DDDP').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEP').asString);
                                               // inicio = 94 claro
                                               If (Copy(tbClientes.FieldBYName('TELEFONEP').asString,1,2) = '94') Then
                                                   cdsClientesCLI_FONEPAR.AsString  := Copy(tbClientes.FieldBYName('DDDP').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEP').asString);
                                               // inicio = 99   tim
                                               If (Copy(tbClientes.FieldBYName('TELEFONEP').asString,1,2) = '99') Then
                                                   cdsClientesCLI_FONEPAR.AsString  := Copy(tbClientes.FieldBYName('DDDP').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEP').asString);
                                               // inicio = 88   oi
                                               If (Copy(tbClientes.FieldBYName('TELEFONEP').asString,1,2) = '88') Then
                                                   cdsClientesCLI_FONEPAR.AsString := Copy(tbClientes.FieldBYName('DDDP').AsString,2,2)+uFuncoes.RemoveChar(tbClientes.FieldBYName('TELEFONEP').asString);
                                     End;
                                 //
                                 cdsClientesCLI_PROFISSAO.AsString   := FieldByName('PROFISSAO').AsString;
                                 //
                                 cdsClientes.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbClientes.Close;
      cdsClientes.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
    End;
    //   Grupos
   If (rgTabelas.ItemIndex = 1) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from GRUPOS';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'Grupo.db';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) Then
                             begin
                               if not cdsAux.Locate('GRU_CODIGO',FieldByName('CodGrupo').AsInteger,[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('GRU_CODIGO').AsInteger   := FieldByName('CodGrupo').AsInteger;
                                 cdsAux.FieldByName('GRU_DESCRICAO').AsString := FieldByName('Grupo').AsString;
                                 cdsAux.FieldByName('GRU_NRMESES').AsInteger  := FieldByName('Nr_Meses').AsInteger;
                                 cdsAux.FieldByName('GRU_PARTICIP').AsInteger := FieldByName('Nr_particip').AsInteger;
                                 cdsAux.FieldByName('GRU_DTINICIO').AsDateTime := FieldByName('Data_Inicio').AsDateTime;
                                 If (FieldByName('Iniciou').AsBoolean) Then
                                     cdsAux.FieldByName('GRU_INICIOU').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('GRU_INICIOU').AsString := 'N';
                                 //
                                 cdsAux.FieldByName('GRU_DIAASS').AsInteger   := FieldByName('DiaAss').AsInteger;
                                 cdsAux.FieldByName('GRU_MES1ASS').AsString   := FieldByName('Mes1Ass').AsString;
                                 cdsAux.FieldByName('GRU_RESASSEMBLEIA').AsString := FieldByName('ResAssembleia').AsString;
                                 If (FieldByName('MultCont').AsBoolean) Then
                                     cdsAux.FieldByName('GRU_MULTCONT').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('GRU_MULTCONT').AsString := 'N';
                                 //
                                 If (FieldByName('Corrigido').AsBoolean) Then
                                     cdsAux.FieldByName('GRU_CORRIGIDO').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('GRU_CORRIGIDO').AsString := 'N';
                                 //
                                 If (FieldByName('TarifaBanco').AsBoolean) Then
                                     cdsAux.FieldByName('GRU_TARIFABANCO').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('GRU_TARIFABANCO').AsString := 'N';
                                 //
                                 If (FieldByName('Limitado').AsBoolean) Then
                                     cdsAux.FieldByName('GRU_LIMITADO').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('GRU_LIMITADO').AsString := 'N';
                                 //
                                 cdsAux.FieldByName('GRU_LIMITEMININO').AsFloat := FieldByName('Lim_Min').AsFloat;
                                 cdsAux.FieldByName('GRU_LIMITEMAXIMO').AsFloat := FieldByName('Lim_Max').AsFloat;

                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Modelos
   If (rgTabelas.ItemIndex = 2) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from MODELOS';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'Modelos.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('CodMod').AsString) Then
                             begin
                               if not cdsAux.Locate('MOD_CODIGO',FieldByName('CodMod').AsInteger,[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('MOD_CODIGO').AsInteger   := FieldByName('CodMod').AsInteger;
                                 cdsAux.FieldByName('MOD_DESCRICAO').AsString := FieldByName('Modelo').AsString;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Cotas
   If (rgTabelas.ItemIndex = 3) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from COTAS';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'cotas.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('Venda').AsString) Then
                             begin
                               if not cdsAux.Locate('COT_NRVENDA',FieldByName('Venda').AsInteger,[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('COT_NRVENDA').AsInteger   := FieldByName('Venda').AsInteger;
                                 cdsAux.FieldByName('COT_CDGRUPO').AsInteger   := FieldByName('CodGrupo').AsInteger;
                                 //
                                 cdsAux.FieldByName('COT_NRCOTA').AsInteger   := FieldByName('COTA').AsInteger;
                                 cdsAux.FieldByName('COT_CDCLIE').AsInteger   := FieldByName('CodCli').AsInteger;
                                 cdsAux.FieldByName('COT_CONTRATO').AsString  := FieldByName('CONTRATO').AsString;
                                 cdsAux.FieldByName('COT_PLANO').AsInteger    := FieldByName('PLANO').AsInteger;
                                 cdsAux.FieldByName('COT_POSICAO').AsString   := FieldByName('POSICAO').AsString;
                                 cdsAux.FieldByName('COT_DIAASS').AsString    := FieldByName('DIAASS').AsString;
                                 cdsAux.FieldByName('COT_DTCONT').AsDateTime  := FieldByName('DATACONT').AsDateTime;
                                 cdsAux.FieldByName('COT_CODBEM').AsString    := FieldByName('CODBEM').AsString;
                                 cdsAux.FieldByName('COT_VALCRE').AsFloat     := FieldByName('VALCRE').AsFloat;
                                 cdsAux.FieldByName('COT_VALACERTO').AsFloat  := FieldByName('VALACERTO').AsFloat;
                                 If (FieldByName('CONTEMPLAD').AsBoolean) Then
                                     cdsAux.FieldByName('COT_FLCONTEMPLADO').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('COT_FLCONTEMPLADO').AsString := 'N';
                                 //
                                 cdsAux.FieldByName('COT_TIPO').AsString          := FieldByName('TIPO').AsString;
                                 cdsAux.FieldByName('COT_VALCOTA').AsFloat        := FieldByName('VALCOTA').AsFloat;
                                 cdsAux.FieldByName('COT_DTVENCIMENTO').AsDateTime  := FieldByName('DATAVEN').AsDateTime;
                                 cdsAux.FieldByName('COT_FUNDORES').AsFloat       := FieldByName('FUNDORES').AsFloat;
                                 cdsAux.FieldByName('COT_TAXA_ADESAO').AsFloat    := FieldByName('TAXAAD').AsFloat;
                                 cdsAux.FieldByName('COT_TAXA_ADM').AsFloat       := FieldByName('TAXAADM').AsFloat;
                                 cdsAux.FieldByName('COT_CDBANCO').AsInteger   := FieldByName('CODIGOB').AsInteger;
                                 cdsAux.FieldByName('COT_NMBANCO').AsString    := FieldByName('BANCO').AsString;
                                 cdsAux.FieldByName('COT_CIDADE_BANCO').AsString  := FieldByName('CIDADEB').AsString;
                                 cdsAux.FieldByName('COT_ESPECIE').AsString    := FieldByName('ESPECIE').AsString;
                                 cdsAux.FieldByName('COT_MARCA').AsString      := FieldByName('MARCA').AsString;
                                 cdsAux.FieldByName('COT_ASSEMBLEIAFILTRO').AsInteger   := FieldByName('AssembleiaFiltro').AsInteger;
                                 cdsAux.FieldByName('COT_VALORLANCE').AsFloat  := FieldByName('ValorLance').AsFloat;
                                 //
                                 If not uFuncoes.Empty(FieldByName('DataContemp').AsString) Then
                                     cdsAux.FieldByName('COT_DTCONTEMPLACAO').AsDateTime := FieldByName('DataContemp').AsDateTime;
                                 //
                                 cdsAux.FieldByName('COT_ASSEB_CONTEMP').AsInteger   := FieldByName('Assemb_Contemp').AsInteger;
                                 If not uFuncoes.Empty(FieldByName('DATA_ALIEN').AsString) Then
                                 cdsAux.FieldByName('COT_DTALIENACAO').AsDateTime := FieldByName('DATA_ALIEN').AsDateTime;
                                 cdsAux.FieldByName('COT_MARCA_VEIC').AsString    := FieldByName('MARCA_VEIC').AsString;
                                 cdsAux.FieldByName('COT_MODELO_VEIC').AsString   := FieldByName('MODELO_VEIC').AsString;
                                 cdsAux.FieldByName('COT_ANO_FAB').AsInteger      := FieldByName('ANO_FAB').AsInteger;
                                 cdsAux.FieldByName('COT_ANO_MOD').AsInteger   := FieldByName('ANO_MOD').AsInteger;
                                 cdsAux.FieldByName('COT_CHASSI').AsString     := FieldByName('CHASSI').AsString;
                                 //
                                 If not uFuncoes.Empty(FieldByName('DATA_LIB').AsString) Then
                                     cdsAux.FieldByName('COT_DATA_LIB').AsDateTime := FieldByName('DATA_LIB').AsDateTime;
                                 //
                                 if (FieldByName('ALIENADO').asBoolean) Then
                                    cdsAux.FieldByName('COT_ALIENADO').AsString := 'S'
                                 Else
                                    cdsAux.FieldByName('COT_ALIENADO').AsString := 'N';
                                 //
                                 If (FieldByName('DESALIENADO').AsBoolean) Then
                                     cdsAux.FieldByName('COT_DESALIENADO').AsString := 'S'
                                 Else
                                     cdsAux.FieldByName('COT_DESALIENADO').AsString := 'N';
                                 //
                                 cdsAux.FieldByName('COT_AVAL1').AsInteger     := FieldByName('AVAL1').AsInteger;
                                 cdsAux.FieldByName('COT_AVAL2').AsInteger     := FieldByName('AVAL2').AsInteger;
                                 cdsAux.FieldByName('COT_NRSERIE').AsString    := FieldByName('NRSERIE').AsString;
                                 cdsAux.FieldByName('COT_TIPOVEIC').AsString   := FieldByName('TIPOVEIC').AsString;
                                 cdsAux.FieldByName('COT_COR').AsString        := FieldByName('COR').AsString;
                                 cdsAux.FieldByName('COT_CDMODELO').AsInteger  := FieldByName('CodMod').AsInteger;
                                 cdsAux.FieldByName('COT_VALOR_TAXACAD').AsFloat := FieldByName('Vl_TaxaCad').AsFloat;
                                 cdsAux.FieldByName('COT_VALORENTRADA').AsFloat  := FieldByName('ValorEntrada').AsFloat;
                                 //
                                 if not uFuncoes.Empty(FieldByName('DataPrimPres').AsString) Then
                                    cdsAux.FieldByName('COT_DATAPRIMPRES').AsDateTime := FieldByName('DataPrimPres').AsDateTime;
                                 //
                                 cdsAux.FieldByName('COT_TPLANCE').AsString    := FieldByName('TipoLance').AsString;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Parcelas
   If (rgTabelas.ItemIndex = 4) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from PARCELAS';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'PARCELAS.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                             cdsAux.Close;
                             if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) and
                                not uFuncoes.Empty(FieldByName('COTA').AsString) and
                                not uFuncoes.Empty(FieldByName('VENDA').AsString) and
                                not uFuncoes.Empty(FieldByName('NUMPARCPG').AsString) Then
                             begin
                               With qryAux do
                                begin
                                     Close;
                                     Params[0].AsInteger := tbAux.FieldByName('VENDA').AsInteger;
                                     Params[1].AsInteger := tbAux.FieldByName('CodGrupo').AsInteger;
                                     Params[2].AsInteger := tbAux.FieldByName('COTA').AsInteger;
                                     Params[3].AsInteger := tbAux.FieldByName('NUMPARCPG').AsInteger;
                                     Open;
                                End;
                                //
                               if (qryAux.IsEmpty) Then
                               begin
                                 cdsAux.Close;
                                 //cdsAux.CommandText := 'select * from PARCELAS Where (REC_NRVEND = :pNRVEND) and (REC_CDGRUP = :pCDGRUP) and (REC_NRCOTA = :pNRCOTA) and (REC_NRPARC = :pNRPARC) ';
                                 cdsAux.CommandText := 'select * from PARCELAS Where (REC_NRVEND = :pNRVEND)';
                                 //cdsAux.CommandText := cdsAux.CommandText + ' ';
                                 {cdsAux.Params[0].AsInteger := qryAuxREC_NRVEND.AsInteger;
                                 cdsAux.Params[1].AsInteger := qryAuxREC_CDGRUP.AsInteger;
                                 cdsAux.Params[2].AsInteger := qryAuxREC_NRCOTA.AsInteger;
                                 cdsAux.Params[3].AsInteger := qryAuxREC_NRPARC.AsInteger;}
                                 //
                                 cdsAux.Params[0].AsInteger := -1;
                                 {cdsAux.Params[1].AsInteger := -1;
                                 cdsAux.Params[2].AsInteger := -1;
                                 cdsAux.Params[3].AsInteger := -1;}
                                 //
                                 cdsAux.Open;
                                 //
                              { if (IsEmpty) Then
                               begin}
                           try
                                 dmAdmDados.Start;
                                 //
                                 cdsAux.Append;
                                 cdsAux.FieldByName('REC_NRVEND').AsInteger  := FieldByName('VENDA').AsInteger;
                                 cdsAux.FieldByName('REC_CDGRUP').AsInteger  := FieldByName('CodGrupo').AsInteger;
                                 cdsAux.FieldByName('REC_NRCOTA').AsInteger  := FieldByName('COTA').AsInteger;
                                 cdsAux.FieldByName('REC_NRPARC').AsInteger  := FieldByName('NUMPARCPG').AsInteger;
                                 cdsAux.FieldByName('REC_DTVENC').AsDateTime := FieldByName('DATAVENC').AsDateTime;
                                 cdsAux.FieldByName('REC_VLPARC').AsFloat    := FieldByName('VALORPARPG').AsFloat;
                                 If not uFuncoes.Empty(FieldByName('DATAPG').AsString) Then
                                    cdsAux.FieldByName('REC_DTPAGA').AsDateTime := FieldByName('DATAPG').AsDateTime;
                                 //
                                 cdsAux.FieldByName('REC_VLMULT').AsFloat     := FieldByName('MULTAPG').AsFloat;
                                 cdsAux.FieldByName('REC_TOTAL_PAGO').AsFloat := FieldByName('TOTALPG').AsFloat;
                                 cdsAux.FieldByName('REC_CODOP').AsString     := FieldByName('CODOP').AsString;
                                 //cdsAux.FieldByName('REC_CDOPER').AsInteger
                                 cdsAux.FieldByName('REC_SITUACAO').AsString  := FieldByName('SITUACAO').AsString;
                                 //
                                 If not uFuncoes.Empty(cdsAux.FieldByName('REC_DTMOVI').AsString) Then
                                    cdsAux.FieldByName('REC_DTMOVI').AsDateTime  := FieldByName('MOVIMENTO').AsDateTime;
                                 //
                                 If not uFuncoes.Empty(FieldByName('PAGTOCREDITO').AsString) Then
                                     cdsAux.FieldByName('REC_DTCREDITO').AsDateTime := FieldByName('PAGTOCREDITO').AsDateTime;
                                 //
                                 cdsAux.FieldByName('REC_CREDITO').AsFloat     := FieldByName('CREDITO').AsFloat;
                                 cdsAux.FieldByName('REC_REGISTRO').AsString   := FieldByName('REGISTRO').AsString;
                                 cdsAux.FieldByName('REC_FORMABAIXA').AsString := FieldByName('FORMABAIXA').AsString;
                                 cdsAux.FieldByName('REC_CDBANC').AsInteger    := FieldByName('CODBANCO').AsInteger;
                                 if (FieldByName('PrintSlip').AsBoolean) Then
                                     cdsAux.FieldByName('REC_PRINTSLIP').AsString  := 'S';
                                 //
                                 cdsAux.FieldByName('REC_HISTORICO').AsString  := FieldByName('Historico').AsString;
                                 cdsAux.FieldByName('REC_TPCREDITO').AsString  := FieldByName('TipoCredito').AsString;
                                 cdsAux.FieldByName('REC_TPSLIP').AsString     := FieldByName('TipoSlip').AsString;
                                 cdsAux.FieldByName('REC_NOSSONUMERO').AsString := FieldByName('NOSSONUMERO').AsString;
                                 cdsAux.FieldByName('REC_VALORTARIFABANCO').AsFloat  := FieldByName('ValorTarifaBanco').AsFloat;
                                 cdsAux.FieldByName('REC_VALORTITULOTITULO').AsFloat := FieldByName('ValorTitulo').AsFloat;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;

                              // End;
                              End;
                             End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Lances
   If (rgTabelas.ItemIndex = 5) Then
   begin
     {try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from LANCES';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'Lances.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) Then
                             begin
                               if not cdsAux.Locate('LAN_SEQUENCIA;LAN_CDGRUP;LAN_NRCOTA;LAN_NRVEND',
                                  VarArrayOf([FieldByName('Seq').AsInteger,
                                              FieldByName('CodGrupo').AsInteger,
                                              FieldByName('COTA').AsInteger,
                                              FieldByName('VENDA').AsInteger]),[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('LAN_SEQUENCIA').AsInteger := FieldByName('Seq').AsInteger;
                                 cdsAux.FieldByName('LAN_CDGRUP').AsInteger    := FieldByName('CodGrupo').AsInteger;
                                 cdsAux.FieldByName('LAN_NRCOTA').AsInteger    := FieldByName('COTA').AsInteger;
                                 cdsAux.FieldByName('LAN_NRVEND').AsInteger    := FieldByName('VENDA').AsInteger;
                                 cdsAux.FieldByName('LAN_NRASSEMBLEIA').AsInteger := FieldByName('Assembleia').AsInteger;
                                 cdsAux.FieldByName('LAN_TIPO').AsString       := FieldByName('Tipo').AsString;
                                 cdsAux.FieldByName('LAN_VALOR').asFloat       := FieldByName('Valor').AsFloat;
                                 cdsAux.FieldByName('LAN_PELANC').asFloat      := FieldByName('Perc').AsFloat;
                                 cdsAux.FieldByName('LAN_DTMOVI').AsDatetime   := FieldByName('Data').AsDatetime;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;}
     //
     ShowMessage('Opção desabilitada.');
   End;
   // Avalistas
   If (rgTabelas.ItemIndex = 6) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from AVALISTAS';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'AVALISTAS.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('Venda').AsString)
                               and not uFuncoes.Empty(FieldByName('CodCli').AsString) Then
                             begin
                               if not cdsAux.Locate('AVA_NRVEND;AVA_CDCLIE',
                                      VarArrayOf([FieldByName('Venda').AsInteger,
                                                  FieldByName('CodCli').AsInteger]),[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('AVA_NRVEND').AsInteger  := FieldByName('Venda').AsInteger;
                                 cdsAux.FieldByName('AVA_CDCLIE').AsString   := FieldByName('CodCli').AsString;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Grupos Assembleia
   If (rgTabelas.ItemIndex = 7) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from GRUPO_ASSEMBLEIA';
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'Grupos_Assemb.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                           dmAdmDados.Start;
                           try
                             if not uFuncoes.Empty(FieldByName('CodGrupo').AsString)
                              and  not uFuncoes.Empty(FieldByName('Assembleia').AsString) Then
                             begin
                               if not cdsAux.Locate('GPA_CDGRUP;GPA_NRASSE',
                                      VarArrayOf([FieldByName('CodGrupo').AsInteger,
                                              FieldByName('Assembleia').AsInteger]),[]) Then
                               begin
                                 cdsAux.Append;
                                 cdsAux.FieldByName('GPA_CDGRUP').AsInteger := FieldByName('CodGrupo').AsInteger;
                                 cdsAux.FieldByName('GPA_NRASSE').AsInteger := FieldByName('Assembleia').AsInteger;
                                 cdsAux.FieldByName('GPA_NRCONT').AsInteger := FieldByName('Nr_Contemplacoes').AsInteger;
                                 cdsAux.FieldByName('GPA_CONT_LANC').AsInteger := FieldByName('Nr_Cont_Lanc').AsInteger;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               End;
                             End;
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;
   // Parcelas novas
   If (rgTabelas.ItemIndex = 8) Then
   begin
     try
          M_FLCANC := False;
          Screen.Cursor := crHourGlass;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          btnVisualizar.Enabled     := False;
          //
          With cdsAux do
            begin
                 Active := False;
                 CommandText := 'select * from PARCELAS Where (REC_NRVEND = :pNRVEND)';
                 Params[0].AsInteger := -1; 
                 Active := True;
            End;
          //
          With tbAux do
            begin
                 TableName := 'PARCELAS.DB';
                 Open;
            End;
          //
          try
             Total := tbAux.RecordCount;
             BmsXPProgressBar1.Position := 0;
             Cont  := 0;
             //
              with tbAux do
                begin
                     DisableControls;
                     While not (Eof) and (M_FLCANC = False) do
                      begin
                             cdsAux.Close;
                             if not uFuncoes.Empty(FieldByName('CodGrupo').AsString) and
                                not uFuncoes.Empty(FieldByName('COTA').AsString) and
                                not uFuncoes.Empty(FieldByName('VENDA').AsString) and
                                not uFuncoes.Empty(FieldByName('NUMPARCPG').AsString) Then
                             begin
                               With qryAux do
                                begin
                                     Close;
                                     Params[0].AsInteger := tbAux.FieldByName('VENDA').AsInteger;
                                     Params[1].AsInteger := tbAux.FieldByName('CodGrupo').AsInteger;
                                     Params[2].AsInteger := tbAux.FieldByName('COTA').AsInteger;
                                     Params[3].AsInteger := tbAux.FieldByName('NUMPARCPG').AsInteger;
                                     Open;
                                End;
                                //
                               if not (qryAux.IsEmpty) Then
                               begin
                                 cdsAux.Close;
                                 cdsAux.CommandText := 'select * from PARCELAS Where (REC_NRVEND = :pNRVEND)';
                                 cdsAux.Params[0].AsInteger := tbAux.FieldByName('VENDA').AsInteger;
                                 //
                                 cdsAux.Open;
                                 //
                         if (IsEmpty) Then
                          begin
                           try
                                 dmAdmDados.Start;
                                 //
                                 cdsAux.Append;
                                 cdsAux.FieldByName('REC_NRVEND').AsInteger  := FieldByName('VENDA').AsInteger;
                                 cdsAux.FieldByName('REC_CDGRUP').AsInteger  := FieldByName('CodGrupo').AsInteger;
                                 cdsAux.FieldByName('REC_NRCOTA').AsInteger  := FieldByName('COTA').AsInteger;
                                 cdsAux.FieldByName('REC_NRPARC').AsInteger  := FieldByName('NUMPARCPG').AsInteger;
                                 cdsAux.FieldByName('REC_DTVENC').AsDateTime := FieldByName('DATAVENC').AsDateTime;
                                 cdsAux.FieldByName('REC_VLPARC').AsFloat    := FieldByName('VALORPARPG').AsFloat;
                                 If not uFuncoes.Empty(FieldByName('DATAPG').AsString) Then
                                    cdsAux.FieldByName('REC_DTPAGA').AsDateTime := FieldByName('DATAPG').AsDateTime;
                                 //
                                 cdsAux.FieldByName('REC_VLMULT').AsFloat     := FieldByName('MULTAPG').AsFloat;
                                 cdsAux.FieldByName('REC_TOTAL_PAGO').AsFloat := FieldByName('TOTALPG').AsFloat;
                                 cdsAux.FieldByName('REC_CODOP').AsString     := FieldByName('CODOP').AsString;
                                 //cdsAux.FieldByName('REC_CDOPER').AsInteger
                                 cdsAux.FieldByName('REC_SITUACAO').AsString  := FieldByName('SITUACAO').AsString;
                                 //
                                 If not uFuncoes.Empty(cdsAux.FieldByName('REC_DTMOVI').AsString) Then
                                    cdsAux.FieldByName('REC_DTMOVI').AsDateTime  := FieldByName('MOVIMENTO').AsDateTime;
                                 //
                                 If not uFuncoes.Empty(FieldByName('PAGTOCREDITO').AsString) Then
                                     cdsAux.FieldByName('REC_DTCREDITO').AsDateTime := FieldByName('PAGTOCREDITO').AsDateTime;
                                 //
                                 cdsAux.FieldByName('REC_CREDITO').AsFloat     := FieldByName('CREDITO').AsFloat;
                                 cdsAux.FieldByName('REC_REGISTRO').AsString   := FieldByName('REGISTRO').AsString;
                                 cdsAux.FieldByName('REC_FORMABAIXA').AsString := FieldByName('FORMABAIXA').AsString;
                                 cdsAux.FieldByName('REC_CDBANC').AsInteger    := FieldByName('CODBANCO').AsInteger;
                                 if (FieldByName('PrintSlip').AsBoolean) Then
                                     cdsAux.FieldByName('REC_PRINTSLIP').AsString  := 'S';
                                 //
                                 cdsAux.FieldByName('REC_HISTORICO').AsString  := FieldByName('Historico').AsString;
                                 cdsAux.FieldByName('REC_TPCREDITO').AsString  := FieldByName('TipoCredito').AsString;
                                 cdsAux.FieldByName('REC_TPSLIP').AsString     := FieldByName('TipoSlip').AsString;
                                 cdsAux.FieldByName('REC_NOSSONUMERO').AsString := FieldByName('NOSSONUMERO').AsString;
                                 cdsAux.FieldByName('REC_VALORTARIFABANCO').AsFloat  := FieldByName('ValorTarifaBanco').AsFloat;
                                 cdsAux.FieldByName('REC_VALORTITULOTITULO').AsFloat := FieldByName('ValorTitulo').AsFloat;
                                 //
                                 cdsAux.ApplyUpdates(0);
                               //
                               dmAdmDados.Comit(udmAdmDados.Transc);
                           Except
                            on E: Exception do
                            begin
                               // Caso ocorra um erro, da um RoolBack e atualiza o arquivo de log
                               dmAdmDados.Rollback;
                               Continue;
                            End;
                           End;

                          End;
                              End;
                             End;
                           //
                           If (M_FLCANC) Then
                            begin
                                Application.MessageBox('Importação cancelada.',
                                  'Atenção', MB_OK+MB_ICONSTOP++MB_APPLMODAL);
                                //
                                Break;
                            End;
                           //
                           Cont := Cont + 1;
                           BmsXPProgressBar1.Position := (Cont * 100) div Total;
                           lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                           Application.ProcessMessages;
                           // Proximo
                           Next;
                      End;
                     EnableControls;
                End;
          Except

          End;
          //
           Application.MessageBox('Importação concluída com sucesso.',
                 'Concluido', MB_OK+MB_ICONINFORMATION);
          //
     finally
      tbAux.Close;
      cdsAux.Close;
      Screen.Cursor := crDefault;
      btnVisualizar.Enabled     := True;
     End;
     //
     Application.ProcessMessages;
   End;

end;

procedure TfrmImporta.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
         lbl_QTREGI.caption := InttoStr(tbClientes.RecNo)+'/'
                         +InttoStr(tbClientes.RecordCount);

end;

procedure TfrmImporta.FormShow(Sender: TObject);
begin
     tbClientes.Open;
end;

procedure TfrmImporta.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
         lbl_QTREGI.caption := InttoStr(tbAux.RecNo)+'/'
                         +InttoStr(tbAux.RecordCount);
end;

end.
