defmodule Signaturex.Mixfile do
  use Mix.Project

  @description """
  Simple key/secret based authentication for APIs
  """

  def project do
    [ app: :signaturex,
      name: "Signaturex",
      description: @description,
      elixir: "~> 1.2",
      version: "1.2.0",
      package: package,
      deps: deps,
      source_url: "https://github.com/edgurgel/signaturex" ]
  end

  def application, do: []

  defp deps do
    [{ :meck, "~> 0.8.2", only: :test },
     { :earmark, "~> 1.0", only: :docs },
     { :ex_doc, "~> 0.16", only: :docs }]
  end

  defp package do
    [ maintainers: ["Eduardo Gurgel"],
      licenses: ["MIT"],
      links: %{ "Github" => "https://github.com/edgurgel/signaturex" } ]
  end
end
