defmodule Notesdefrais.PageController do
  use Notesdefrais.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
