defmodule GameOfWarWeb.PageController do
  use GameOfWarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
