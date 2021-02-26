unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    AmpelRot: TShape;
    AmpelGelb: TShape;
    AmpelGruen: TShape;
    btnRot: TButton;
    btnRotGelb: TButton;
    btnGruen: TButton;
    btnGelb: TButton;
    Ampelkörper: TShape;
    Ampelfuß: TShape;
    HintergrundAufgabe1: TShape;
    BezeichnungAufgabe1: TLabel;
    HintergrundAufgabe2: TShape;
    HintergrundAufgabe3: TShape;
    BezeichnungAufgabe2: TLabel;
    BezeichnungAufgabe3: TLabel;
    btnAutomatisch: TButton;
    btnZeitzyklus: TButton;
    Timer1: TTimer;
    btnZeitzyklusAbbruch: TButton;
    procedure btnRotClick(Sender: TObject);
    procedure btnRotGelbClick(Sender: TObject);
    procedure btnGruenClick(Sender: TObject);
    procedure btnGelbClick(Sender: TObject);
    procedure btnAutomatischClick(Sender: TObject);
    procedure machAmpelGruen();
    procedure machAmpelRot();
    procedure machAmpelRotGelb();
    procedure machAmpelGelb();
    procedure AmpelAutomatisch();
    procedure Timer1Timer(Sender: TObject);
    procedure btnZeitzyklusClick(Sender: TObject);
    procedure btnZeitzyklusAbbruchClick(Sender: TObject);
    procedure TimerAbbruch();
    procedure Ampelzaehlerzurücksetzen();
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  Ampelzaehler: Integer = 1;

implementation

{$R *.dfm}

//Methoden
Procedure TForm1.MachAmpelGruen();
begin
  AmpelRot.Brush.Color:=clWhite;
  AmpelGelb.Brush.Color:=clWhite;
  AmpelGruen.Brush.Color:=clGreen;
end;

Procedure TForm1.machAmpelRot();
begin
  AmpelRot.Brush.Color:=clRed;
  AmpelGelb.Brush.Color:=clWhite;
  AmpelGruen.Brush.Color:=clWhite;
end;

Procedure TForm1.machAmpelRotGelb();
begin
  AmpelRot.Brush.Color:=clRed;
  AmpelGelb.Brush.Color:=clYellow;
  AmpelGruen.Brush.Color:=clWhite;
end;

Procedure TForm1.machAmpelGelb();
begin
  AmpelRot.Brush.Color:=clWhite;
  AmpelGelb.Brush.Color:=clYellow;
  AmpelGruen.Brush.Color:=clWhite;
end;

Procedure TForm1.AmpelAutomatisch();
begin
  if Ampelzaehler=1 then
  begin
    machAmpelRot();
    Ampelzaehler:=2;
  end
    else if Ampelzaehler=2 then
  begin
    machAmpelRotGelb();
    Ampelzaehler:=3;
  end
    else if Ampelzaehler=3 then
  begin
    machAmpelGruen();
    Ampelzaehler:=4;
  end
    else if Ampelzaehler=4 then
  begin
    machAmpelGelb();
    Ampelzaehler:=1
  end;
end;

Procedure TForm1.TimerAbbruch();
begin
  Timer1.Enabled:=False;
end;

procedure TForm1.Ampelzaehlerzurücksetzen();
begin
  Ampelzaehler:=1;
end;

//Aufgabe 1
procedure TForm1.btnGelbClick(Sender: TObject);
begin
  TimerAbbruch();
  Ampelzaehlerzurücksetzen();
  machAmpelGelb();
end;

procedure TForm1.btnGruenClick(Sender: TObject);
begin
  TimerAbbruch();
  Ampelzaehlerzurücksetzen();
  machAmpelGruen();
end;

procedure TForm1.btnRotClick(Sender: TObject);
begin
  TimerAbbruch();
  Ampelzaehlerzurücksetzen();
  machAmpelRot();
end;

procedure TForm1.btnRotGelbClick(Sender: TObject);
begin
  TimerAbbruch();
  Ampelzaehlerzurücksetzen();
  machAmpelRotGelb();
end;




//Aufgabe 2
procedure TForm1.btnAutomatischClick(Sender: TObject);
begin
if Timer1.Enabled=True then
  begin
  Ampelzaehler:=1;
  end;
  TimerAbbruch();
  AmpelAutomatisch();
end;



//Aufgabe 3
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  AmpelAutomatisch();
end;

procedure TForm1.btnZeitzyklusAbbruchClick(Sender: TObject);
begin
  TimerAbbruch();
  Ampelzaehlerzurücksetzen();
end;

procedure TForm1.btnZeitzyklusClick(Sender: TObject);
begin
  Ampelzaehlerzurücksetzen();
  Timer1.Enabled:=True;
end;

end.
