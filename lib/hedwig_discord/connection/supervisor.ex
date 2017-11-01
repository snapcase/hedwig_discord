defmodule HedwigDiscord.ConnectionSupervisor do
  use Supervisor

  @token Application.get_env(:hedwig_discord, :token)

  def start_link do
    Application.put_env(:nostrum, :token, @token)
    
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    children = [
      worker(HedwigDiscord.Connection, [])
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end
