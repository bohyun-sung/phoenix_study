defmodule Contexts.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Contexts.Repo,
      # Start the Telemetry supervisor
      ContextsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Contexts.PubSub},
      # Start the Endpoint (http/https)
      ContextsWeb.Endpoint
      # Start a worker by calling: Contexts.Worker.start_link(arg)
      # {Contexts.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Contexts.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ContextsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
