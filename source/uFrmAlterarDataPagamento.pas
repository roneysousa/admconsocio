unit uFrmAlterarDataPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Mask, DBCtrls, ToolEdit;

type
  TfrmAlterarData = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnConfirma: TBitBtn;
    btnFechar: TBitBtn;
    dbeVenda: TDBEdit;
    DataSource1: TDataSource;
    dbeGrupo: TDBEdit;
    dbeCota: TDBEdit;
    dbeParcela: TDBEdit;
    Label5: TLabel;
    edtCliente: TEdit;
    Label6: TLabel;
    dbeDTPGATUAL: TDBEdit;
    Label7: TLabel;
    edtData: TDateEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
  private
    { Private declarations }
    Procedure Validar;
  public
    { Public declarations }
  end;

var
  frmAlterarData: TfrmAlterarData;
  M_NMCLIE : String;

implementation

uses uDmPesquisas, uFrmAutenticarUsuario, uFrmAdmMain, ufuncoes, udmAdmDados;

{$R *.dfm}

procedure TfrmAlterarData.btnFecharClick(Sender: TObject);
begin
       Close;
end;

procedure TfrmAlterarData.FormShow(Sender: TObject);
begin
     edtCliente.Text := M_NMCLIE;
end;

procedure TfrmAlterarData.btnConfirmaClick(Sender: TObject);
Var
    W_NRVEND, W_CDGRUP, W_NRCOTA, W_NRPARC : Integer;
    W_DTPAGA : TDateTime;
begin
     if (edtData.Text = '  /  /    ') Then
      begin
           Application.MessageBox(PChar('Data inválida.'),
             'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
           edtData.SetFocus;
           Exit;
      End;
      //
      Validar;
      //
     Application.CreateForm(TfrmAutenticarAdm, frmAutenticarAdm);
     try
          frmAutenticarAdm.ShowModal;
     Finally
          frmAutenticarAdm.Free;
     End;
     //
     if not (uFrmAdmMain.autenticacao) Then
      Begin
           Application.MessageBox(PChar('Premissão negada.'),
             'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
           Exit;
      End
     Else
     begin
          If Application.MessageBox('Confirma alteração?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
                W_NRVEND := StrtoInt(dbeVenda.Text);
                W_CDGRUP := StrtoInt(dbeGrupo.Text);
                W_NRCOTA := StrtoInt(dbeCota.Text);
                W_NRPARC := StrtoInt(dbeParcela.Text);
                W_DTPAGA := edtData.Date;
                //
                If (dmAdmDados.AlterarDataPagamentoParcela(W_NRVEND, W_CDGRUP,
                      W_NRCOTA, W_NRPARC, StrtoInt(uFrmAdmMain.M_CDUSUA), W_DTPAGA, StrtoDate(dbeDTPGATUAL.text))) Then
                    Application.MessageBox(PChar('Alteração realizada com sucesso.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
                Else
                    Application.MessageBox(PChar('Alteração não pode ser realizada.'),
                         'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                //
                Close;
           End;
     End;
end;

procedure TfrmAlterarData.edtDataExit(Sender: TObject);
begin
      try
            edtData.Date := StrToDate(edtData.Text);
            //
            Validar;
      except
            on EConvertError do
            begin
                 ShowMessage ('Data Inválida!');
                 edtData.SetFocus;
            End;
      end;
end;

procedure TfrmAlterarData.Validar;
begin
     If (edtData.Date > date()) Then
       begin
            Application.MessageBox(PChar('Data superior a data atual.'),
                     'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
            edtData.SetFocus;
            Exit;
       End;
end;

end.
