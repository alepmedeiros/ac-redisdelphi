unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  acredisclient.interfaces;

type
  TForm1 = class(TForm)
    edtKey: TLabeledEdit;
    edtValue: TLabeledEdit;
    Button1: TButton;
    edtHost: TLabeledEdit;
    edtPorta: TLabeledEdit;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FRedis: IRedisFactory;

    procedure ConnectRedis;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  acredisclient.redisfactory;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ConnectRedis;
  FRedis.Redis.SetValue(edtKey.Text, edtValue.Text);
  Memo1.Lines.Add('Value: ' + FRedis.Redis.Value(edtKey.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ConnectRedis;
  if FRedis.Redis.ExistsKey(edtKey.Text) then
  begin
    Memo1.Lines.Add('ExistKey: ' + edtKey.Text);
    Memo1.Lines.Add('Value: ' + FRedis.Redis.Value(edtKey.Text));
  end
  else
    Memo1.Lines.Add('Key ' + edtKey.Text + ' não encontrado');
end;

procedure TForm1.ConnectRedis;
begin
  FRedis.Connection.Host(edtHost.Text).Port(StrToIntDef(edtValue.Text, 6379));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FRedis := TRedisFactory.New;
end;

end.
