defmodule Banquet.Repos.Accounts.Migrations.AddSubscriptionsTable do
  use Ecto.Migration

  def change do
    create table(:subscriptions, engine: :bag) do
      add :user, :string
      add :feed, :string
    end
  end
end
