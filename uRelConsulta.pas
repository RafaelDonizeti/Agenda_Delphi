unit uRelConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RLReport;

type
  TfRelConsulta = class(TForm)
    RelConsulta: TRLReport;
    RLBand1: TRLBand;
    Label1: TLabel;
    lbEscolha: TLabel;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelConsulta: TfRelConsulta;

implementation

{$R *.dfm}
uses uConsulta;
procedure TfRelConsulta.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if fConsulta.rbNome.Checked = true then
  lbEscolha.Caption := fConsulta.rbNome.Caption;

  if fConsulta.rbDataCad.Checked = true then
  lbEscolha.Caption := fConsulta.rbDataCad.Caption;

  if fConsulta.rbBairro.Checked = true then
  lbEscolha.Caption := fConsulta.rbBairro.Caption;

  if fConsulta.rbCidade.Checked = true then
  lbEscolha.Caption := fConsulta.rbCidade.Caption;

  if fConsulta.rbDataNasc.Checked = true then
  lbEscolha.Caption := fConsulta.rbDataNasc.Caption;

end;

end.
