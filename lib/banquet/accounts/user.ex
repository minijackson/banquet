defmodule Banquet.Accounts.User do

  use Ecto.Schema
  import Ecto.Changeset
  alias Banquet.Accounts.User

  schema "users" do
    field :name, :string
    field :password, :string
  end

  def changeset(%User{} = user, attrs \\ %{}) do
    user
    |> cast(attrs, [:name, :password])
    |> validate_required([:name, :password])
    |> unique_constraint(:name)
  end

end
