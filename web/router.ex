defmodule Notesdefrais.Router do
  use Notesdefrais.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

    
  scope "/", Notesdefrais do
    pipe_through :browser # Use the default browser stack

    resources "/notes", NoteController

    get "/", PageController, :landing

  end

  # Other scopes may use custom stacks.
  # scope "/api", Notesdefrais do
  #   pipe_through :api
  # end
end
