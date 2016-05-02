unit uFrmAutenticarUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmAutenticarAdm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnConfirma: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    edtCDUSUA: TEdit;
    Label2: TLabel;
    edt_SENHA: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure edtCDUSUAKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SENHAExit(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtCDUSUAExit(Sender: TObject);
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ValidarUsuario(aCodigo, aSenha : String); 
  public
    { Public declarations }
  end;

var
  frmAutenticarAdm: TfrmAutenticarAdm;
  iUserAutorizou : integer;

implementation

uses uFrmAdmMain, uFuncoes, uDmPesquisas, udmAdmDados;

{$R *.dfm}

procedure TfrmAutenticarAdm.BitBtn2Click(Sender: TObject);
begin
     uFrmAdmMain.autenticacao := False;
end;

procedure TfrmAutenticarAdm.edtCDUSUAKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13, #27] ) then
        key:=#0;
    //
    if (key = #13) and not uFuncoes.Empty(edtCDUSUA.Text) Then
      begin
           Key := #13;
           edt_SENHA.SetFocus;
      End;
end;

procedure TfrmAutenticarAdm.edt_SENHAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt_Senha.text) Then
        edt_Senha.text := edt_Senha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Senha.text));
end;

procedure TfrmAutenticarAdm.btnConfirmaClick(Sender: TObject);
begin
     If (uFuncoes.Empty(edtCDUSUA.Text)) Then
      begin
           edtCDUSUA.SetFocus;
           raise Exception.Create('Digite o c�digo do usu�rio.');
      End;
      //
     If (uFuncoes.Empty(edt_SENHA.Text)) Then
      begin
           edt_SENHA.SetFocus;
           raise Exception.Create('Digite a senha do supervisor.');
      End;
     //
     If not uFuncoes.Empty(edtCDUSUA.Text)
       and not uFuncoes.Empty(edt_SENHA.Text)  Then
       begin
             If (dmAdmDados.AutenticarSupervisor(StrtoInt(edtCDUSUA.Text))) Then
                ValidarUsuario(edtCDUSUA.Text, uFuncoes.Codifica(edt_SENHA.Text));
       End;
     //
     close;
end;

procedure TfrmAutenticarAdm.edtCDUSUAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDUSUA.Text) Then
     begin       
          If not (dmAdmDados.AutenticarSupervisor(StrtoInt(edtCDUSUA.Text))) Then
          begin
               edtCDUSUA.clear;
               edtCDUSUA.setfocus;
               raise Exception.Create('Usu�rio n�o � supervisor.');
          End;
          edtCDUSUA.Text := uFuncoes.StrZero(edtCDUSUA.Text,3);
     End;
end;

procedure TfrmAutenticarAdm.ValidarUsuario(aCodigo, aSenha: String);
begin
     uFuncoes.FilterCDS(dmPesquisas.cdsAuteUsuario, fsInteger, aCodigo);
     //
     With dmPesquisas.cdsAuteUsuario do
      begin
           If not (IsEmpty) Then
            begin
                 if (dmPesquisas.cdsAuteUsuarioSEN_SNATUA.AsString <> aSenha) Then
                  Begin
                       edt_SENHA.Clear;
                       edt_SENHA.SetFocus;
                       {Application.MessageBox(PChar('Senha incorreta.'),
                         'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                       Exit;} 
                       raise Exception.Create('Senha incorreta.');
                  End;
                 //
                 If (dmPesquisas.cdsAuteUsuarioSEN_FLSUPER.AsString = 'S') Then
                  begin
                      uFrmAdmMain.autenticacao := True;
                      iUserAutorizou := StrtoInt(aCodigo);
                  End;
            End;
      End;

end;

procedure TfrmAutenticarAdm.edt_SENHAKeyPress(Sender: TObject;
  var Key: Char);
begin
     //
     If (Key =#13) and not uFuncoes.Empty(edtCDUSUA.Text)
        and not uFuncoes.Empty(edt_SENHA.Text) Then
     begin
          Key := #0;
          btnConfirma.SetFocus;  
     End;
end;

end.
