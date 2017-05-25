defmodule Notesdefrais.PageController do
  use Notesdefrais.Web, :controller

  def landing(conn, _params) do
    render conn, "landing.html"
  end
end
