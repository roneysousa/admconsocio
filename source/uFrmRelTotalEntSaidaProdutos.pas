unit uFrmRelTotalEntSaidaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelPeriodo, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls;

type
  TFrmRelTotalEntSaidaProdutos = class(TfrmRelPeriodo)
    Label3: TLabel;
    cmbNMLOJA: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelTotalEntSaidaProdutos: TFrmRelTotalEntSaidaProdutos;

implementation

{$R *.dfm}

end.
