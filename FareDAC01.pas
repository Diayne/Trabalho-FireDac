unit FareDAC01;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Data.DB, Data.Win.ADODB, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QuyProprietario: TFDQuery;
    QuyVeiculo: TFDQuery;
    QuyMulta: TFDQuery;
    DsMultaVeiculo: TDataSource;
    QuyMultaVEI_CODIGO: TIntegerField;
    QuyMultaMLT_ITEM: TIntegerField;
    QuyMultaMLT_DATA: TDateField;
    QuyMultaMLT_HORA: TTimeField;
    QuyMultaMLT_VALOR: TBCDField;
    QuyMultaMLT_LOCAL: TStringField;
    QuyVeiculoVEI_CODIGO: TIntegerField;
    QuyVeiculoVEI_PLACA: TStringField;
    QuyVeiculoVEI_MARCA: TStringField;
    QuyVeiculoVEI_MODELO: TStringField;
    QuyVeiculoVEI_ANO: TIntegerField;
    QuyVeiculoPRP_CODIGO: TIntegerField;
    procedure QuyMultaAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
QuyVeiculoVEI_CODIGO.AsInteger := QuyVeiculoVEI_CODIGO.AsInteger;
end;

procedure TDM.QuyMultaAfterInsert(DataSet: TDataSet);
begin
  QuyMultaVEI_CODIGO.AsInteger := QuyVeiculoVEI_CODIGO.AsInteger;
end;

end.
