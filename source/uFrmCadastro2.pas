unit uFrmCadastro2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmCad = class(TForm)
    StatusBar1: TStatusBar;
    pnlProcurar: TPanel;
    lblConsultar: TLabel;
    Label1: TLabel;
    edtGrupo: TEdit;
    btnConsultar: TBitBtn;
    edtCota: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    spLocCota: TSpeedButton;
    procedure edtGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCotaKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtGrupoChange(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure spLocCotaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCad: TfrmCad;
  W_NRVEND : Integer;

implementation

uses uFrmConsGrupos, uFuncoes, udmAdmDados, uFrmConsultaCota, uDmPesquisas;

{$R *.dfm}

procedure TfrmCad.edtCotaKeyPress(Sender: TObject; var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    If (key = #13) and uFuncoes.Empty(edtCota.Text) Then
      begin
          key:=#0;
          spLocCotaClick(Sender);
      End;
      //
     if ((Key = #13) and not uFuncoes.Empty(edtCota.Text)) Then
      begin
           Key := #0;
           if (btnConsultar.Enabled) Then
              btnConsultar.SetFocus;
      End;
end;

procedure TfrmCad.edtGrupoChange(Sender: TObject);
begin
      if uFuncoes.Empty(edtGrupo.Text) then
         lblNomeGrupo.Caption := '';
end;

procedure TfrmCad.edtGrupoExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtGrupo.Text) Then
      begin
           if not (dmAdmDados.Verificar_Grupo(StrtoInt(edtGrupo.Text))) then
           begin
                edtGrupo.SetFocus;
                raise Exception.Create('C�digo de grupo n�o cadastro.');
           end;
           //
           If uFuncoes.Empty(lblNomeGrupo.Caption) then
              lblNomeGrupo.Caption := dmAdmDados.GetNomeGrupo(StrtoInt(edtGrupo.Text));
           //
           spLocCota.Enabled := True;
      end
      Else
         spLocCota.Enabled := False;
end;

procedure TfrmCad.edtGrupoKeyPress(Sender: TObject; var Key: Char);
begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
    //
    if (Key = #13) and uFuncoes.Empty(edtGrupo.Text)  then
     begin
         Key := #0;
         spLocalizarGrupoClick(Sender);
     end;
     //
     if ((Key = #13) and not uFuncoes.Empty(edtGrupo.Text)) Then
      begin
           Key := #0;
           edtCota.SetFocus;
      End;
end;

procedure TfrmCad.FormShow(Sender: TObject);
begin
    lblNomeGrupo.Caption := '';
end;

procedure TfrmCad.spLocalizarGrupoClick(Sender: TObject);
begin
      edtGrupo.SetFocus;
      Application.CreateForm(TfrmConsGrupos, frmConsGrupos);
      try
          frmConsGrupos.ShowModal;
      Finally
          if not (frmConsGrupos.cdsConsultar.IsEmpty)   then
          begin
             edtGrupo.Text := frmConsGrupos.cdsConsultarGRU_CODIGO.AsString;
             lblNomeGrupo.Caption := frmConsGrupos.cdsConsultarGRU_DESCRICAO.AsString;
             edtCota.SetFocus;  
          end;
          //    
          frmConsGrupos.Free;
      End;
end;

procedure TfrmCad.spLocCotaClick(Sender: TObject);
begin
    if not uFuncoes.Empty(edtGrupo.Text) Then
    begin
      edtCota.SetFocus;
      Application.CreateForm(TfrmConsCotas, frmConsCotas);
      try
            ufrmConsultaCota.M_CDGRUP := Strtoint(edtGrupo.Text);
          frmConsCotas.ShowModal;
      Finally
          if not (frmConsCotas.cdsConsultar.IsEmpty)   then
          begin
             edtCota.Text := frmConsCotas.cdsConsultarCOT_NRCOTA.AsString;
             W_NRVEND     := frmConsCotas.cdsConsultarCOT_NRVENDA.AsInteger;
             //lblNomeGrupo.Caption := frmConsGrupos.cdsConsultarGRU_DESCRICAO.AsString;
             btnConsultar.SetFocus;
          end;
          //
          frmConsCotas.Free;
      End;
    End
    Else
        edtGrupo.SetFocus; 
end;

procedure TfrmCad.btnConsultarClick(Sender: TObject);
begin
{     If (dmAdmDados.Verificar_Cota_Grupo(StrtoInt(edtGrupo.Text), StrtoInt(edtCota.Text))) Then
         W_NRVEND := dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger;}
end;

End.
