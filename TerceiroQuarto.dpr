program TerceiroQuarto;

uses
  Vcl.Forms,
  MasterDetail in 'Exercícios\3.4 - TerceiroQuarto\MasterDetail.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
