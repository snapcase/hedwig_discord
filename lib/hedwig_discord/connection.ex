defmodule HedwigDiscord.Connection do
  use Coxir
  require Logger

  def handle_event({:MESSAGE_CREATE, message}, state) do
    Logger.debug(inspect(message))
    case message.content do
      _ ->
        :ignore
    end

    {:ok, state}
  end

  def handle_event(_event, state) do
    {:ok, state}
  end
end
