defmodule ContextsWeb.PageController do
  use ContextsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
