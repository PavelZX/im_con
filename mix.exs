defmodule Imcon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :imcon,
      version: "0.1.1",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Imcon.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.4"},
      {:phoenix_pubsub, "~> 2.0.0"},
      {:phoenix_ecto, "~> 4.1.0"},
      {:phoenix_swagger, "~> 0.8.2"},
      {:ex_json_schema, "~> 0.7.4"}, # optional
      {:ecto, ">= 3.3.2"},
      {:ecto_sql, "~> 3.3.3"},
      {:postgrex, ">= 0.0.0"},
      {:poison, "~> 3.0.0"},
      {:phoenix_html, "~> 2.14.2"},
      {:phoenix_live_reload, "~> 1.2.4", only: :dev},
      {:gettext, "~> 0.18.0"},
      {:cowboy, "~> 2.8.0"},
      {:plug_cowboy, "~> 2.3.0"},
      {:comeonin, "~> 5.3.1"},
      {:bcrypt_elixir, "~> 2.2.0"},
      {:credo, "~> 1.4.0", only: [:dev, :test]},
      {:ex_machina, "~> 2.4.0"},
      {:exactor, "~> 2.2.4"},
      {:jason, "~> 1.2.1"},
      {:hound, "~> 1.1.0"},
      {:mix_test_watch, "~> 1.0.2", only: :dev},
      {:poolboy, "~> 1.5.2"},
      {:guardian, "~> 2.1.1"},
      {:guardian_phoenix, "~> 2.0.1"},
      {:argon2_elixir, "~> 2.3.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
    ]
  end
end
