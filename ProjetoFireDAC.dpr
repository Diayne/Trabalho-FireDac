program ProjetoFireDAC;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  FareDAC01 in 'FareDAC01.pas' {DM: TDataModule},
  FrmProprietario in 'FrmProprietario.pas' {FrmProprietarioo},
  FrmMultasVeiculos in 'FrmMultasVeiculos.pas' {FrmMultaVeiculos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmProprietarioo, FrmProprietarioo);
  Application.CreateForm(TFrmMultaVeiculos, FrmMultaVeiculos);
  Application.Run;
end.
