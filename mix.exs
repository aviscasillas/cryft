defmodule Cryft.MixProject do
  use Mix.Project

  def project() do
    [
      app: :cryft,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps(),
    ]
  end

  def application() do
    []
  end

  defp deps() do
    [
      {:eth,
       git: "https://github.com/aviscasillas/eth.git",
       branch: "fix-set-transaction"}
    ]
  end
end
