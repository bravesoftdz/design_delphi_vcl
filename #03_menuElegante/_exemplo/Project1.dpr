program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
