unit uAltCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfAltCadastro = class(TForm)
    Label11: TLabel;
    DBEdit11: TDBEdit;
    btnSalvar: TButton;
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
    Panel1: TPanel;
    Label13: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    btnIniciarAlt: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnIniciarAltClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAltCadastro: TfAltCadastro;

implementation

{$R *.dfm}

uses dm_novaagenda, uPrincipal, uBusca;

procedure TfAltCadastro.btnCancelarClick(Sender: TObject);
begin
  dmNovaAgenda.tb_contatos.cancel;
  dmNovaAgenda.tb_contatos.close;

  btnSair.SetFocus;
end;

procedure TfAltCadastro.btnIniciarAltClick(Sender: TObject);
begin
  dmNovaAgenda.tb_contatos.open();
  dmNovaAgenda.tb_contatos.IndexName := 'idxnome' ;
  if dmNovaAgenda.tb_contatos.Locate('nome', edit1.text,[]) then
  begin
    dmNovaAgenda.tb_contatos.Edit;
    dbedit2.SetFocus;
    btnSalvar.Enabled := true;
  end;

end;

procedure TfAltCadastro.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfAltCadastro.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Você quer alterar esse registro?',
  mtConfirmation, [mbyes, mbno],0) = mryes
  then
  begin


    try
      if dmNovaAgenda.tb_contatos.State in[dsEdit] then
        begin
            dmNovaAgenda.tb_contatos.Post;
        end;
         btnSalvar.Enabled := false;
        MessageDlg('Alteraçoes executadas com sucesso ',
        mtInformation, [mbok],0);
      except
         MessageDlg('ocorreu um erro de gravação, verifique se ficou algum item sem informação',
         mtError, [mbok],0);
         DBEdit3.SetFocus;
         exit;
      end;
  end
  else
  begin
    MessageDlg('Não foram realizadas alterações  ',
    mtInformation, [mbok],0);
  end;
end;

procedure TfAltCadastro.btnSalvarEnter(Sender: TObject);
begin
  btnSalvar.font.Color := clBlue;
end;

procedure TfAltCadastro.btnSalvarExit(Sender: TObject);
begin
 btnSalvar.font.Color := clBlack;
end;

procedure TfAltCadastro.DBEdit3Change(Sender: TObject);
begin
  if DBEdit3.text = '' then btnSalvar.Enabled := false
  else btnSalvar.Enabled := true

end;

procedure TfAltCadastro.DBEdit3Exit(Sender: TObject);
begin
 {with dmNovaAgenda.qVer do
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

  end;}
end;

procedure TfAltCadastro.FormActivate(Sender: TObject);
begin
  btnSalvar.Enabled := false;
   edit1.setfocus;
end;

procedure TfAltCadastro.FormCreate(Sender: TObject);
begin
  dmNovaAgenda.fdtContatos.StartTransaction;
  dmNovaAgenda.tb_contatos.Open();

end;

procedure TfAltCadastro.SpeedButton1Click(Sender: TObject);
begin
fBuscaNome.showmodal;
end;

end.
