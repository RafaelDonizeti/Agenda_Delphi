unit dm_novaagenda;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.UI;

type
  TdmNovaAgenda = class(TDataModule)
    fdNovaAgenda: TFDConnection;
    vendorMySQL: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_contatos: TFDTable;
    tb_contatosid_contato: TFDAutoIncField;
    tb_contatosdata_cadastro: TDateField;
    tb_contatosnome: TStringField;
    tb_contatosendereco: TStringField;
    tb_contatosbairro: TStringField;
    tb_contatoscep: TStringField;
    tb_contatoscidade: TStringField;
    tb_contatosestado: TStringField;
    tb_contatostelefone: TStringField;
    tb_contatosemail: TStringField;
    tb_contatosdata_nasc: TDateField;
    fdtContatos: TFDTransaction;
    qVer: TFDQuery;
    qBuscaNome: TFDQuery;
    qBuscaNomenome: TStringField;
    qBuscaNometelefone: TStringField;
    testeQ: TFDQuery;
    qConsEsc: TFDQuery;
    qConsEscid_contato: TFDAutoIncField;
    qConsEscdata_cadastro: TDateField;
    qConsEscnome: TStringField;
    qConsEscendereco: TStringField;
    qConsEscbairro: TStringField;
    qConsEsccep: TStringField;
    qConsEsccidade: TStringField;
    qConsEscestado: TStringField;
    qConsEsctelefone: TStringField;
    qConsEscemail: TStringField;
    qConsEscdata_nasc: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmNovaAgenda: TdmNovaAgenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
