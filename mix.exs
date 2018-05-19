defmodule Weekday.MixProject do
  use Mix.Project

  def project do
    [
      app: :weekday,
      version: "0.0.1",
      elixir: "~> 1.6",
      deps: deps(),
      # hex
      description: "provided day_of_week that return atom like :monday, :sunday",
      package: %{
        licenses: ["MIT"],
        maintainers: [
          "Tomohiko Himura <eiel.hal@gmail.com>"
        ],
        links: %{"GitHub" => "https://github.com/eiel/weekday"}
      },
      # Docs
      name: "weekday",
      source_url: "https://github.com/eiel/weekday",
      # The main page in the docs
      docs: [main: "Weekday", extras: ["README.md"]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end
end
