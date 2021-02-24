defmodule PixpayWeb.WelcomeController do
  use PixpayWeb, :controller

  def index(conn, _params) do
    text(conn, "Bem Vindo a minha primeira API com Elixir/Phoenix")
  end
end
