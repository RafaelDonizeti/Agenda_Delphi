unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Alterao1: TMenuItem;
    ConsultasRelatrios1: TMenuItem;
    Excluses1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Alterao1Click(Sender: TObject);
    procedure ConsultasRelatrios1Click(Sender: TObject);
    procedure Excluses1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uCadastros, uAltCadastro, uConsulta, uExclusao;

procedure TForm1.Alterao1Click(Sender: TObject);
begin
Application.CreateForm(TfAltCadastro,faltcadastro);
fAltCadastro.showmodal;
end;

procedure TForm1.Cadastro1Click(Sender: TObject);
begin
Application.CreateForm(TfCadastro,fcadastro);
fCadastro.showmodal;
end;

procedure TForm1.ConsultasRelatrios1Click(Sender: TObject);
begin
Application.CreateForm(TfConsulta,fConsulta);
fConsulta.showmodal;
end;

procedure TForm1.Excluses1Click(Sender: TObject);
begin
Application.CreateForm(TfExclusao,fExclusao);
fExclusao.showmodal;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 StatusBar1.Panels[0].text := DateToStr(date);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[1].Text := TimeToStr(now);
end;

end.
