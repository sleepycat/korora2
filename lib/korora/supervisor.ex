defmodule Korora.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link __MODULE__, []
  end

  def init opts do
    tree = [
      Plug.Adapters.Cowboy.child_spec(:http, Korora.Router, [], [port: 4000])
    ]

    supervise(tree, strategy: :one_for_one)
  end

end
