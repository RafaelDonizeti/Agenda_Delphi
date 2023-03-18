unit uBusca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfBuscaNome = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscaNome: TfBuscaNome;

implementation

{$R *.dfm}

uses dm_novaagenda, uAltCadastro;



procedure TfBuscaNome.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TfBuscaNome.DBGrid1CellClick(Column: TColumn);
begin
fBuscaNome.close;
fAltCadastro.Edit1.text := DBGrid1.Fields[0].Value;
fAltCadastro.btnIniciarAlt.setfocus;
end;

procedure TfBuscaNome.Edit1Change(Sender: TObject);
  begin
    with dmNovaAgenda.qBuscaNome do
   begin
     close;
     sql.Clear;
     sql.Add('select nome, telefone from contatos where nome like :pnom ');
     ParamByName('pnom').AsString := '%'+Edit1.Text+'%';
     open;
    end;
   end;
procedure TfBuscaNome.FormActivate(Sender: TObject);
begin
dmNovaAgenda.qBuscaNome.Open();
end;

end.
