defmodule MyApp do
  use Application

  def start(_type, _args) do
    Plug.Adapters.Cowboy.http(MyApp.Router, [], [port: 8080])
  end
end
