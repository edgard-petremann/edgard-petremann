defmodule PhoenixApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_app,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto, :ssl],
      mod: {PhoenixApp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Using Plug Cowboy for a simple web server
      {:plug_cowboy, github: "elixir-plug/plug_cowboy", override: true},
      {:plug, github: "elixir-plug/plug", override: true},
      {:cowboy, github: "ninenines/cowboy", override: true},
      {:cowboy_telemetry, github: "beam-telemetry/cowboy_telemetry", override: true},
      {:mime, github: "elixir-plug/mime", override: true},
      {:telemetry, github: "beam-telemetry/telemetry", override: true},
      {:plug_crypto, github: "elixir-plug/plug_crypto", override: true},
      {:cowlib, github: "ninenines/cowlib", override: true},
      {:ranch, github: "ninenines/ranch", override: true}
    ]
  end
end
