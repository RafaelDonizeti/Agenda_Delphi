unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfConsulta = class(TForm)
    Panel1: TPanel;
    rbNome: TRadioButton;
    Label1: TLabel;
    rbDataCad: TRadioButton;
    rbBairro: TRadioButton;
    rbCidade: TRadioButton;
    rbDataNasc: TRadioButton;
    Edit1: TEdit;
    btnConsultar: TBitBtn;
    dsqConEsc: TDataSource;
    DBGrid1: TDBGrid;
    btnLimpar: TBitBtn;
    btnImprimir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsulta: TfConsulta;

implementation

{$R *.dfm}

uses dm_novaagenda, uRelConsulta;

procedure TfConsulta.btnImprimirClick(Sender: TObject);
begin
application.CreateForm(TfRelConsulta, fRelConsulta);
fRelConsulta.RelConsulta.Preview;

end;

procedure TfConsulta.btnConsultarClick(Sender: TObject);
begin
  try
   if rbNome.Checked = true then
      begin
        dmNovaAgenda.qConsEsc.Close;
        dmNovaAgenda.qConsEsc.sql.Clear;
        dmNovaAgenda.qConsEsc.sql.Add('select * from contatos where nome like :pnom');
        dmNovaAgenda.qConsEsc.ParamByName('pnom').AsString := '%'+edit1.text+'%';
        dmNovaAgenda.qConsEsc.Open;
      end;

      if rbDataCad.Checked = true then
      begin
        dmNovaAgenda.qConsEsc.Close;
        dmNovaAgenda.qConsEsc.sql.Clear;
        dmNovaAgenda.qConsEsc.sql.Add('select * from contatos where data_cadastro =:pnom');
        dmNovaAgenda.qConsEsc.ParamByName('pnom').AsDate := strtodate(edit1.text);
        dmNovaAgenda.qConsEsc.Open;
      end;

      if rbBairro.Checked = true then
      begin
        dmNovaAgenda.qConsEsc.Close;
        dmNovaAgenda.qConsEsc.sql.Clear;
        dmNovaAgenda.qConsEsc.sql.Add('select * from contatos where bairro like :pnom');
        dmNovaAgenda.qConsEsc.ParamByName('pnom').AsString := '%'+edit1.text+'%';
        dmNovaAgenda.qConsEsc.Open;
      end;

      if rbCidade.Checked = true then
      begin
        dmNovaAgenda.qConsEsc.Close;
        dmNovaAgenda.qConsEsc.sql.Clear;
        dmNovaAgenda.qConsEsc.sql.Add('select * from contatos where cidade like :pnom');
        dmNovaAgenda.qConsEsc.ParamByName('pnom').AsString := '%'+edit1.text+'%';
        dmNovaAgenda.qConsEsc.Open;
      end;

      if rbDataNasc.Checked = true then
      begin
        dmNovaAgenda.qConsEsc.Close;
        dmNovaAgenda.qConsEsc.sql.Clear;
        dmNovaAgenda.qConsEsc.sql.Add('select * from contatos where data_nasc =:pnom');
        dmNovaAgenda.qConsEsc.ParamByName('pnom').AsDate := strtodate(edit1.text);
        dmNovaAgenda.qConsEsc.Open;
      end;
  except;
    MessageDlg('verifique se digitou uma data valida',
    mtError, [mbok], 0);
    edit1.SetFocus;
  end;

end;

procedure TfConsulta.FormActivate(Sender: TObject);
begin
dmNovaAgenda.qConsEsc.Open();

end;

end.
