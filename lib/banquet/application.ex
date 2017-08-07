defmodule Banquet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @behaviour Application

  @impl Application
  def start(_type, _args) do

    children = [
      Supervisor.Spec.supervisor(Banquet.Repos.Accounts, []),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Banquet.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
