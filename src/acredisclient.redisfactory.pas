unit acredisclient.redisfactory;

interface

uses
  acredisclient.interfaces;

type
  TRedisFactory = class(TInterfacedObject, IRedisFactory)
  private
    FConn: IConnection;
    FRedis: IRedis;

    constructor Create;
  public
    class function New: IRedisFactory;

    function Connection: IConnection;
    function Redis: IRedis;
  end;

implementation

uses
  acredisclient.connection, acredisclient.redis;

function TRedisFactory.Connection: IConnection;
begin
  Result := FConn;
end;

constructor TRedisFactory.Create;
begin
  FConn := TRedisConnection.NEw;
end;

class function TRedisFactory.New: IRedisFactory;
begin
  Result := Self.Create;
end;

function TRedisFactory.Redis: IRedis;
begin
  if not Assigned(FRedis) then
    FRedis := TRedis.New(FConn);
  Result := FRedis;
end;

end.
