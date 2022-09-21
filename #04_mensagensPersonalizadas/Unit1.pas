unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Unit2;

type
  TViewPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Image3: TImage;
    Image4: TImage;
    Panel10: TPanel;
    Label3: TLabel;
    Label4: TLabel;
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

end.
