unit uCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfCadastro = class(TForm)
    Label11: TLabel;
    DBEdit11: TDBEdit;
    btnSalvar: TButton;
    btnNovo: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastro: TfCadastro;

implementation

{$R *.dfm}

uses dm_novaagenda, uPrincipal;

procedure TfCadastro.btnCancelarClick(Sender: TObject);
begin
dmNovaAgenda.tb_contatos.cancel;
dmNovaAgenda.tb_contatos.close;
btnNovo.Enabled := true;
btnNovo.setfocus;
end;

procedure TfCadastro.btnNovoClick(Sender: TObject);
begin
dmNovaAgenda.tb_contatos.Open() ;
dmNovaAgenda.tb_contatos.Append;
btnNovo.Enabled := false;
DBEdit2.SetFocus;
end;

procedure TfCadastro.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfCadastro.btnSalvarClick(Sender: TObject);
begin
  try
    if dmNovaAgenda.tb_contatos.State in[dsInsert] then
      begin
          dmNovaAgenda.tb_contatos.Post;
      end;
       btnSalvar.Enabled := false;
       btnNovo.enabled := true;
       btnNovo.SetFocus;
    except
       MessageDlg('ocorreu um erro de gravação, verifique se ficou algum item sem informação',
       mtError, [mbok],0);
       DBEdit3.SetFocus;
       exit;
    end;
end;

procedure TfCadastro.DBEdit3Change(Sender: TObject);
begin
  if DBEdit3.text = '' then btnSalvar.Enabled := false
  else btnSalvar.Enabled := true

end;

procedure TfCadastro.DBEdit3Exit(Sender: TObject);
begin
  with dmNovaAgenda.qVer do
  begin
    sql.Clear;
    sql.Add('select nome from contatos where nome = :pnom ');
    ParamByName('pnom').AsString := DBEdit3.text;
    open;

    if dmNovaAgenda.qVer.RecordCount > 0 then
    begin
      MessageDlg('Esse nome já esta cadastrado',
      mtInformation, [mbok], 0);
      DBEdit3.SetFocus;
      exit;
    end;

  end;
end;

procedure TfCadastro.FormActivate(Sender: TObject);
begin
  btnSalvar.Enabled := false;
  btnNovo.SetFocus;
end;

procedure TfCadastro.FormCreate(Sender: TObject);
begin
  dmNovaAgenda.fdtContatos.StartTransaction;


end;

end.
