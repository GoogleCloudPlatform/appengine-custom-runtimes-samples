defmodule MyApp.Router do
  import Plug.Conn

  def init(opts), do: opts

  def call(%Plug.Conn{request_path: "/_ah/health"} = conn, _opts) do
    send_resp(conn, 200, "👌")
  end
  def call(conn, _opts) do
    send_resp(conn, 200, "Elixir running on Google App Engine!")
  end
end
