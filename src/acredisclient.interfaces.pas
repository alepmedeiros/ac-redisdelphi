unit acredisclient.interfaces;

interface

uses
  Redis.Commons;

type
  IConnection = interface
    ['{2EDC3E5A-DDE5-46D9-98B9-4C03883BCDDE}']
    function Host(Value: String): IConnection;
    function Port(Value: Integer): IConnection;
    function Connect: IRedisClient;
  end;

  IRedis = interface
    ['{163C34B6-5413-4D15-A31B-6BE32C1C8B65}']
    function SetValue(aKey: String; aValue: String): IRedis;
    function ExistsKey(aKey: string): Boolean;
    function Value(aKey: string): String;
  end;

  IRedisFactory = interface
    ['{D3214704-2672-436F-A1B5-CB650889BE38}']
    function Connection: IConnection;
    function Redis: IRedis;
  end;

implementation

end.
