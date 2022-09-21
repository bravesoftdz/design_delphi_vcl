{https://br.pinterest.com/pin/660269995383181518/visual-search/?imageSignature=05c64d7015befedc1ae6618bb3eadea1}


unit Unit1;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCGrids,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1MES_CODIGO: TIntegerField;
    FDQuery1MES_NOME: TStringField;
    FDQuery1MES_STATUS: TStringField;
    FDQuery1MES_GOVERNANCA: TStringField;
    FDQuery1MES_OBSERVACAO: TStringField;
    DBCtrlGrid1: TDBCtrlGrid;
    CardPanel1: TCardPanel;
    Card_livre: TCard;
    Card_ocupado: TCard;
    Card_reservado: TCard;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Image1: TImage;
    Panel6: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    PopupMenu1: TPopupMenu;
    LIVRE1: TMenuItem;
    OCUPADO1: TMenuItem;
    RESERVADO1: TMenuItem;
    FDQuery2: TFDQuery;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

    procedure LIVRE1Click(Sender: TObject);
    procedure OCUPADO1Click(Sender: TObject);
    procedure RESERVADO1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);




  private
    procedure PUT_status(AVAlue: string; ACodApto: integer);



  published
    procedure GET_CodigoMesa(Sender: TObject);



  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ShowScrollBar(DBCtrlGrid1.Handle, SB_VERT, False);
end;

procedure TForm1.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin

  if FDQuery1MES_STATUS.AsString = 'LIVRE' then
  begin
    CardPanel1.ActiveCard := Card_livre;
    Panel5.Color          := $002E8B2C;
    DBEdit1.Color         := $002E8B2C;  // verde
    DBEdit1.Font.Color    := clWhite;
    Panel4.Color          := $002E8B2C;
  end;

  if FDQuery1MES_STATUS.AsString = 'OCUPADO' then
  begin
    CardPanel1.ActiveCard := Card_ocupado;
    Panel7.Color          := $001E4391;   // vermelho escuro
    DBEdit1.Color         := $001E4391;
    DBEdit1.Font.Color    := clWhite;
    Panel4.Color          := $001E4391;
  end;

  if FDQuery1MES_STATUS.AsString = 'RESERVADO' then
  begin
    CardPanel1.ActiveCard := Card_reservado;
    Panel6.Color          := $0044A4D7;  // laranja
    DBEdit1.Color         := $0044A4D7;
    DBEdit1.Font.Color    := clWhite;
    Panel4.Color          := $0044A4D7;
  end;


end;

procedure TForm1.FormShow(Sender: TObject);
begin
  SpeedButton2.Click;
end;

procedure TForm1.GET_CodigoMesa(Sender: TObject);
begin
//  ShowMessage(FDQuery1MES_CODIGO.AsInteger.ToString);
end;

procedure TForm1.LIVRE1Click(Sender: TObject);
begin
  PUT_status('LIVRE', FDQuery1MES_CODIGO.AsInteger);
end;

procedure TForm1.OCUPADO1Click(Sender: TObject);
begin
  PUT_status('OCUPADO', FDQuery1MES_CODIGO.AsInteger);
end;

procedure TForm1.RESERVADO1Click(Sender: TObject);
begin
  PUT_status('RESERVADO', FDQuery1MES_CODIGO.AsInteger);
end;

procedure TForm1.PUT_status(AVAlue: string; ACodApto: integer);
begin

  FDQuery2.Close;
  FDQuery2.SQL.Clear;
  FDQuery2.SQL.Add('update mesas set mes_status = :status where mes_codigo = :codigo');
  FDQuery2.Params[0].AsString  := AVAlue;
  FDQuery2.Params[1].AsInteger := ACodApto;
  FDQuery2.ExecSQL;

  SpeedButton2.Click;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  QTD_LIVRE,
  QTD_OCUPADO,
  QTD_RESERVADO: integer;
begin

  FDQuery1.Close;
  FDQuery1.Open();

  QTD_LIVRE     := 0;
  QTD_OCUPADO   := 0;
  QTD_RESERVADO := 0;

  FDQuery1.DisableControls;

  FDQuery1.First;
  while not FDQuery1.Eof do
  begin

    if FDQuery1MES_STATUS.AsString = 'LIVRE' then
      QTD_LIVRE := QTD_LIVRE + 1;

    if FDQuery1MES_STATUS.AsString = 'OCUPADO' then
      QTD_OCUPADO := QTD_OCUPADO + 1;

    if FDQuery1MES_STATUS.AsString = 'RESERVADO' then
      QTD_RESERVADO := QTD_RESERVADO + 1;

    FDQuery1.Next;

  end;

  FDQuery1.EnableControls;


  Label3.Caption := 'Livre '     + IntToStr(QTD_LIVRE);
  Label4.Caption := 'Reservado ' + IntToStr(QTD_RESERVADO);
  Label5.Caption := 'Ocupado '   + IntToStr(QTD_OCUPADO);

end;

end.
