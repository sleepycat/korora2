defmodule Korora.Mixfile do
  use Mix.Project

  def project do
    [app: :korora,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug], mod: {Korora, []}]
  end

  defp deps do
    [
      {:plug,      "~> 0.11"},
      {:cowboy,    "~> 1.0"}
    ]
  end
end
