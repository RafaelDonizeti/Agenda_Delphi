unit uExclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfExclusao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    btnExcluir: TBitBtn;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    DataSource1: TDataSource;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExclusao: TfExclusao;

implementation

{$R *.dfm}

uses dm_novaagenda, uBusca2;

procedure TfExclusao.BitBtn1Click(Sender: TObject);
begin
  fBuscaNome2.showmodal;
end;

procedure TfExclusao.btnExcluirClick(Sender: TObject);
begin

  dmNovaAgenda.tb_contatos.Open();
  dmNovaAgenda.tb_contatos.IndexName := 'idxnome';
  if not dmNovaAgenda.tb_contatos.Locate('nome', Edit1.text, []) then

  begin
    MessageDlg('nome não encontrado', mtinformation, [mbok], 0);
    dmNovaAgenda.tb_contatos.Close;
    btnLimpar.SetFocus;
    exit;
  end
  else
  begin

    if MessageDlg('Você confirma a exlusão desse registro?', mtconfirmation,
      [mbyes, mbno], 0) = mryes then
    begin
      dmNovaAgenda.tb_contatos.Delete;
      dmNovaAgenda.tb_contatos.Close;
      MessageDlg('registro rxcluído com sucesso', mtinformation, [mbok], 0);
      btnLimpar.SetFocus;
    end

    else
    begin
      dmNovaAgenda.tb_contatos.cancel;
      dmNovaAgenda.tb_contatos.Close;
      MessageDlg('registro mantido ', mtinformation, [mbok], 0);
      btnLimpar.SetFocus;
    end;
  end

end;

procedure TfExclusao.btnLimparClick(Sender: TObject);
begin
edit1.Clear;
edit1.SetFocus;
dmNovaAgenda.tb_contatos.close;
end;

procedure TfExclusao.btnSairClick(Sender: TObject);
begin
close;
end;

end.
