defmodule Korora.Router do

  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, "<html>hello world</html>")
  end

  match _ do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(404, "<html>oops</html>")
  end

end
