defmodule HedwigDiscord.Mixfile do
  use Mix.Project

  @version "1.1.0"

  def project do
    [
      app: :hedwig_discord,
      name: "Hedwig Discord",
      version: @version,
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: "A Discord adapter for Hedwig",
      deps: deps()
    ]
  end

  def application do
    [
      mod: {HedwigDiscord, []},
      extra_applications: [
        :logger,
        :hackney,
        :hedwig,
        :poison,
        :coxir
      ]
    ]
  end

  defp deps do
    [
      {:hedwig, "~> 1.0"},
      {:coxir, git: "https://github.com/satom99/coxir.git"},

      # Test dependencies
      #  {:bypass, "~> 0.5", only: :test},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:mr_t, "~> 0.6.0", only: [:test, :dev]}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Liss McCabe"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/dysnomian/hedwig_discord"
      }
    ]
  end
end
