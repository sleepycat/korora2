defmodule KororaTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Korora.Router.init([])

  test "returns hello world" do
    conn = conn(:get, "/")

    conn = Korora.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "<html>hello world</html>"
  end

  test "returns 404 for unknown uris" do
    conn = conn(:get, "/asdf")

    conn = Korora.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 404
  end
end
