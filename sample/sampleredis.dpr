program sampleredis;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  acredisclient.interfaces in '..\src\acredisclient.interfaces.pas',
  acredisclient.connection in '..\src\acredisclient.connection.pas',
  acredisclient.redis in '..\src\acredisclient.redis.pas',
  acredisclient.redisfactory in '..\src\acredisclient.redisfactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
