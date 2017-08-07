defmodule Banquet.Accounts.Subscription do

  use Ecto.Schema

  @primary_key false

  schema "subscriptions" do
    field :user, :string
    field :feed, :string
  end

end
