defmodule Banquet.Accounts.User do

  use Ecto.Schema

  @primary_key false

  schema "users" do
    field :name, :string
    field :password, :string
  end

end
