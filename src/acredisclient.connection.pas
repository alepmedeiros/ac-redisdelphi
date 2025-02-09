unit acredisclient.connection;

interface

uses
  Redis.Client,
  Redis.netlib.INDY,
  Redis.Commons,
  acredisclient.interfaces;

type
  TRedisConnection = class(TInterfacedObject, IConnection)
  private
    FRedis: IRedisClient;
    FHost: String;
    FPort: Integer;
  public
    class function New: IConnection;

    function Host(Value: String): IConnection;
    function Port(Value: Integer): IConnection;
    function Connect: IRedisClient;
  end;

implementation

function TRedisConnection.Connect: IRedisClient;
begin
  Result := NewRedisClient(FHost, FPort);
end;

function TRedisConnection.Host(Value: String): IConnection;
begin
  Result := Self;
  FHost := Value;
end;

class function TRedisConnection.New: IConnection;
begin
  Result := Self.Create;
end;

function TRedisConnection.Port(Value: Integer): IConnection;
begin
  Result := Self;
  if Value > 0 then
  begin
    FPort := Value;
    exit;
  end;
  FPort := 6379;
end;

end.
