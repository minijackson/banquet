defmodule Banquet.Accounts.Read do

  use Ecto.Schema

  @primary_key false

  schema "reads" do
    field :user, :string
    field :feed, :string
    field :article, :string
  end

end
