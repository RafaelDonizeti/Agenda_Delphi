program Nova.Agenda;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  dm_novaagenda in 'dm_novaagenda.pas' {dmNovaAgenda: TDataModule},
  uAltCadastro in 'uAltCadastro.pas' {fAltCadastro},
  uBusca2 in 'uBusca2.pas' {fBuscaNome2},
  uConsulta in 'uConsulta.pas' {fConsulta},
  uRelConsulta in 'uRelConsulta.pas' {fRelConsulta},
  uExclusao in 'uExclusao.pas' {fExclusao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmNovaAgenda, dmNovaAgenda);
  Application.CreateForm(TfAltCadastro, fAltCadastro);
  Application.CreateForm(TfBuscaNome2, fBuscaNome2);
  Application.CreateForm(TfConsulta, fConsulta);
  Application.CreateForm(TfRelConsulta, fRelConsulta);
  Application.CreateForm(TfExclusao, fExclusao);
  Application.Run;
end.
