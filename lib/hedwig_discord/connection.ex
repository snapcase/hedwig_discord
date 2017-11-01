defmodule HedwigDiscord.Connection do
  use Nostrum.Consumer
  alias Nostrum.Api
  require Logger

  def start_link do
    Consumer.start_link(__MODULE__, [])
  end
end
