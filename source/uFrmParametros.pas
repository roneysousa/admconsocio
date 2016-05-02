unit uFrmParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrmParametros = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtEditar: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    Label1: TLabel;
    dbeEmpresa: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmParametros.BtEditarClick(Sender: TObject);
begin
     tratabotoes;
     dmAdmDados.cdsConfig.Edit;
end;

procedure TfrmParametros.BtCancelarClick(Sender: TObject);
begin
     tratabotoes; 
     dmAdmDados.cdsConfig.Cancel;
end;

procedure TfrmParametros.tratabotoes;
begin
   BtEditar.Enabled    := not BtEditar.Enabled;
   //
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
end;

procedure TfrmParametros.BtGravarClick(Sender: TObject);
begin
      if uFuncoes.Empty(dbeEmpresa.Text) Then
        begin
             dbeEmpresa.SetFocus;
             raise Exception.Create('Informa o nome da empresa.');   
        End;
      //
      tratabotoes;
      dmAdmDados.cdsConfig.ApplyUpdates(0); 
end;

end.
