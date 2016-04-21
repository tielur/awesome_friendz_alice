defmodule AwesomeFriendzAlice.Mixfile do
  use Mix.Project

  def project do
    [ app: :awesome_friendz_alice,
      version: "0.2.3",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps ]
  end

  def application do
    [ applications: [:alice],
      mod: {
        Alice, [
          Alice.Handlers.Random,
          Alice.Handlers.OhYouSo,
          Alice.Handlers.AgainstHumanity,
          Alice.Handlers.GoogleImages,
          Alice.Handlers.Karma,
          Alice.Handlers.Shizzle,
          Alice.Handlers.Xkcd,
          Alice.Handlers.Reddit
        ] } ]
  end

  defp deps do
     [
       {:websocket_client, github: "jeremyong/websocket_client"},
       # {:alice, path: "~/projects/alice/alice", override: true},
       {:alice,                  "0.3.3", override: true},
       {:alice_against_humanity, "~> 0.1"},
       {:alice_google_images,    "~> 0.1"},
       {:alice_karma,            "~> 0.1"},
       {:alice_shizzle,          "~> 0.1"},
       {:alice_xkcd,             "~> 0.0"},
       {:alice_reddit,           "~> 0.0.2"}
     ]
  end
end
