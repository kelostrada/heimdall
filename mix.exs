defmodule Heimdall.MixProject do
  use Mix.Project

  @version "0.0.2"

  def project do
    [
      apps_path: "apps",
      deps: deps(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: @version
    ]
  end

  defp deps do
    [
      {:excoveralls, "~> 0.13.2", only: :test}
    ]
  end
end
