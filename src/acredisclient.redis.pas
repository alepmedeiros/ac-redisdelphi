unit acredisclient.redis;

interface

uses
  acredisclient.interfaces, Redis.Commons;

type
  TRedis = class(TInterfacedObject, IRedis)
  private
    FConn: IRedisClient;

    constructor Create(Conn: IConnection);
  public
    class function New(Conn: IConnection): IRedis;

    function SetValue(aKey: String; aValue: String): IRedis;
    function ExistsKey(aKey: string): Boolean;
    function Value(aKey: string): String;
  end;

implementation

{ TRedis }

constructor TRedis.Create(Conn: IConnection);
begin
  FConn := Conn.Connect;
end;

function TRedis.ExistsKey(aKey: string): Boolean;
begin
  Result := FConn.EXISTS(aKey);
end;

class function TRedis.New(Conn: IConnection): IRedis;
begin
  Result := Self.Create(Conn);
end;

function TRedis.SetValue(aKey, aValue: String): IRedis;
begin
  Result := Self;
  FConn.&SET(aKey, aValue);
end;

function TRedis.Value(aKey: string): String;
begin
  Result := FConn.GET(aKey).Value;
end;

end.
