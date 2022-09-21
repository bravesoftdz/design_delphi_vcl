unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    Edit1: TEdit;
    Panel14: TPanel;
    Image2: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    FDMemTable1codigo_produto: TIntegerField;
    FDMemTable1nome_produto: TStringField;
    FDMemTable1qtd_produto: TCurrencyField;
    FDMemTable1vlr_unitario: TCurrencyField;
    FDMemTable1sub_total: TCurrencyField;
    DataSource1: TDataSource;
    Label18: TLabel;
    Label19: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Label18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Label18Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label2.Caption := TimeToStr(Time);
end;

end.
