unit uFrmBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IBServices, DB, IBDatabase, FMTBcd,
  SqlExpr, DBClient, Provider, math;

type
  TfrmBackup = class(TForm)
    Panel2: TPanel;
    Memo1: TMemo;
    CBDetalhes: TCheckBox;
    CBIgnoChec: TCheckBox;
    CBIgnoLimb: TCheckBox;
    CBRecoLixo: TCheckBox;
    CBTran: TCheckBox;
    Panel1: TPanel;
    BTGeraBack: TBitBtn;
    btnFechar: TBitBtn;
    SDArquBack: TSaveDialog;
    DMBanco: TIBDatabase;
    IBBackupService1: TIBBackupService;
    BitBtn1: TBitBtn;
    dstListaAcao: TSQLDataSet;
    dspLista: TDataSetProvider;
    cdsListaAcao: TClientDataSet;
    cdsListaAcaoTAR_SEQUENCIA: TIntegerField;
    cdsListaAcaoTAR_USUARIO: TIntegerField;
    cdsListaAcaoTAR_DTMOVI: TDateField;
    cdsListaAcaoTAR_ACAO: TStringField;
    BitBtn2: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure BTGeraBackClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Function AtualizarInativoPago() : Boolean;
    Function NextPosWord (S : ShortString; InitPos, Mode : Byte) : Byte;
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain, uFrmAtualizaBanco;

{$R *.dfm}

procedure TfrmBackup.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmBackup.BTGeraBackClick(Sender: TObject);
begin
 try
    if not SDArquBack.Execute then//se o usu�rio n�o informar onde ser� salvo o arquivo de backup
      Exit;                       //cancela o procedimento
    Memo1.Clear;
    BTGeraBack.Enabled:=False;
    Memo1.Lines.Add('Preparando para gerar o backup...');
    Memo1.Lines.Add('');

    with IBBackupService1 do
    begin
      DMBanco.Connected:=False;//desconecta da base de dados
      DatabaseName:= 'C:\Infog2\AdmConsocio\CONSOCIO.FDB';//caminho da base de dados
      ServerName:='LocalHost';//nome do servidor
      BackupFile.Clear;
      BackupFile.Add(SDArquBack.FileName);//adiciona o caminho do arquivo de backup escolhido pelo usu�rio
      Protocol:=TCP;//protocolo de conex�o
      Params.Clear;
      Params.Add('user_name=SYSDBA');//nome de usu�rio
      Params.Add('password=masterkey');//senha do usu�rio

      Options:=[];//limpa a propriedade option
      {o bloco de if abaixo esta adicionando as op��es de restaura��o de acordo com o
      que o usu�rio escolheu. Ap�s esta listagem voc� encontra um link para um outro
      artigo onde voc� encontra mais informa��es sobre essas e outras op��es de restaura��o}
      if CBIgnoChec.Checked then
        Options:=Options+[IgnoreChecksums];
      if CBIgnoLimb.Checked then
        Options:=Options+[IgnoreLimbo];
      if not CBRecoLixo.Checked then
        Options:=Options+[NoGarbageCollection];
      if not CBTran.Checked then
        Options:=Options+[NonTransportable];

      {a propriedade verbose do TIBBackupService especifica
      se durante o processo de backup ser� retornado para a
      aplica��o o detalhamento da execu��o}
      Verbose:=CBDetalhes.Checked;

      Memo1.Lines.Add('  Ignorar checksum: '+BoolToStr(CBIgnoChec.Checked));
      Memo1.Lines.Add('  Ignorar transa��es em limbo: '+BoolToStr(CBIgnoLimb.Checked));
      Memo1.Lines.Add('  Coletar lixo: '+BoolToStr(CBRecoLixo.Checked));
      Memo1.Lines.Add('  Formato transport�vel: '+BoolToStr(CBTran.Checked));
      Memo1.Lines.Add('  Verbose: '+BoolToStr(CBTran.Checked));
      Memo1.Lines.Add('  Nome do servidor: '+ServerName);
      Memo1.Lines.Add('');
      Active:=True;//ativa o servi�o de backup, mais ainda n�o inicia.
      Memo1.Lines.Add('');
      Memo1.Lines.Add('/***INICIO***\');
      Application.ProcessMessages;
      Memo1.Lines.Add('');
      try
        ServiceStart;//inicia o processo de backup
        while not Eof do
        begin
          {conforme o backup vai sendo executado o nos podemos pegar os detalhes da sua execu��o atrav�s da fun��o GetNextLine}
          Memo1.Lines.Add(GetNextLine);
        end;
      finally
      end;
      Active:=False;//desativa o servi�o de backup
      Memo1.Lines.Add('');
      Memo1.Lines.Add('/****FIM****\');
    end;
    Memo1.Lines.Add(''); Memo1.Lines.Add('');
    Memo1.Lines.Add('Backup conclu�do.');
    DMBanco.Connected:=True;//conecta o sistema na base de dados
    BTGeraBack.Enabled:=True;
  except
    on E: Exception do
    begin
      Memo1.Lines.Add('Ocorreu um erro inesperado. O backup n�o foi conclu�do.');
      Memo1.Lines.Add('Informa��es da exce��o:');
      Memo1.Lines.Add('  '+E.Message);
      DMBanco.Connected:=True;//conecta o sistema na base de dados
      BTGeraBack.Enabled:=True;
    end;
  end;
end;

procedure TfrmBackup.BitBtn1Click(Sender: TObject);
begin
     try
         If AtualizarInativoPago() Then
             ShowMessage('Atualiza��o conclu�da com sucesso.')
         Else
            raise Exception.Create('Ocorreu um erro ao tentar atualiza dados!');
     Except

     End;
end;

function TfrmBackup.AtualizarInativoPago: Boolean;
Var
   aLinha, aVenda : String;
   aData : TDate;
   x : Integer;
begin
     Result := False;
     With cdsListaAcao do
      begin
           Close;
           Open;
           First;
           //
           While not (Eof) do
            begin
                 aLinha := FieldByname('TAR_ACAO').AsString;
                 aData  := FieldByname('TAR_DTMOVI').AsDateTime;
                 //
                 X := pos('V', aLinha);
                 aVenda := uFuncoes.RemoveChar(Copy(aLinha, X+2, Length(aLinha)-1));
                 // ShowMessage('posicao ' + aString);
                 dmAdmDados.SetDtInativacaoPago(StrtoInt(aVenda), aData);
                 //
                 //break;
                 Next;
            End;
            //
            Result := True;
      End;
end;

function TfrmBackup.NextPosWord(S: ShortString; InitPos, Mode: Byte): Byte;
Var
I : Integer;
Begin
{InitPos := Min (Max (InitPos, 1), Length(S));
if Mode = mdDescend Then
I := -1
else
I := 1;
while ((InitPos <= Length(S)) And (InitPos > 0) And (S[InitPos] <> ' ')) Do
Inc (InitPos, I);
while ((InitPos <= Length(S)) And (InitPos > 0) And (S[InitPos] = ' ')) Do
Inc (InitPos, I);
if InitPos > Length (S) Then
InitPos := 0;
NextPosWord := InitPos;}
end;


procedure TfrmBackup.BitBtn2Click(Sender: TObject);
begin
    frmMain.AbreForm(TfrmAtualizarBanco, frmAtualizarBanco);
end;

end.
