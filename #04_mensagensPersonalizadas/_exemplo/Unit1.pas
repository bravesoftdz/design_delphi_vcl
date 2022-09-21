unit Unit1;

interface

uses
  System.Actions,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.ImgList,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows, Unit2;

type
  TViewPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image4: TImage;
    Panel7: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    FlowPanel1: TFlowPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    procedure MakeRounded(Control: TWinControl);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Panel13.Left := Round((Panel12.Width / 2) - (Panel13.Width / 2));
  Panel13.Top  := Round((Panel12.Height / 2) - (Panel13.Height / 2));
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  MakeRounded(Panel13);
end;

procedure TViewPrincipal.Image1MouseEnter(Sender: TObject);
begin
  Image1.Visible := False;
  Image2.Visible := True;
end;

procedure TViewPrincipal.Image2MouseLeave(Sender: TObject);
begin
  Image1.Visible := True;
  Image2.Visible := False;
end;

procedure TViewPrincipal.Image3MouseEnter(Sender: TObject);
begin
  Image3.Visible := False;
  Image4.Visible := True;
end;

procedure TViewPrincipal.Image4MouseLeave(Sender: TObject);
begin
  Image3.Visible := True;
  Image4.Visible := False;
end;

procedure TViewPrincipal.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
   R   := ClientRect;
   rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
   Perform(EM_GETRECT, 0, lParam(@r));
   InflateRect(r, - 5, - 5);
   Perform(EM_SETRECTNP, 0, lParam(@r));
   SetWindowRgn(Handle, rgn, True);
   Invalidate;
  end;
end;

procedure TViewPrincipal.SpeedButton1Click(Sender: TObject);
begin
  ViewMensagens.Mensagem('Clicou na NF-e. Informação','Informacao','I',[mbOk]);
end;

procedure TViewPrincipal.SpeedButton2Click(Sender: TObject);
begin
  ViewMensagens.Mensagem('Clicou na NFC-e. Alerta','Alerta','A',[mbOk]);
end;

procedure TViewPrincipal.SpeedButton3Click(Sender: TObject);
begin
  ViewMensagens.Mensagem('Clicou na NFC-e. Alerta','Erro','E',[mbOk]);
end;

procedure TViewPrincipal.SpeedButton4Click(Sender: TObject);
begin
  if ViewMensagens.Mensagem('Deseja mesmo algo?','Atenção','I',[mbSim, mbNao]) then
  begin
    ViewMensagens.Mensagem('Clicou no Sim','Informação','I',[mbOk]);
  end
  else begin
    ViewMensagens.Mensagem('Clicou no Não','Informação','I',[mbOk]);
  end;
end;

end.
