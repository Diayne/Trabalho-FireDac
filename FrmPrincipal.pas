unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BTNProprietario: TButton;
    BTNVeiculosMulta: TButton;
    procedure BTNProprietarioClick(Sender: TObject);
    procedure BTNVeiculosMultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses
 FrmProprietario,
 FrmMultasVeiculos;
{$R *.dfm}

procedure TForm1.BTNProprietarioClick(Sender: TObject);
var
  vFrmProprietario: TFrmProprietarioo;
begin
  vFrmProprietario := TFrmProprietarioo.Create(nil);
  try
    vFrmProprietario .ShowModal;
      finally
      FreeAndNil(vFrmProprietario);
  end;
end;

procedure TForm1.BTNVeiculosMultaClick(Sender: TObject);
var
  vFrmVeiculoConsulta :  TFrmMultaVeiculos;
begin
  vFrmVeiculoConsulta := TFrmMultaVeiculos.Create(nil);
  try
    vFrmVeiculoConsulta.ShowModal;
      finally
      FreeAndNil(vFrmVeiculoConsulta);
  end;
end;
end.
