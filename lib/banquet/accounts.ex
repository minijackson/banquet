defmodule Banquet.Accounts do

  import Ecto.Query

  alias Banquet.Repos.Accounts, as: Repo

  alias Banquet.Accounts.Read
  alias Banquet.Accounts.Subscription
  alias Banquet.Accounts.User

  def list_users do
    Repo.all User
  end

  def list_subscriptions do
    Repo.all Subscription
  end

end
