defmodule Banquet.Repos.Accounts.Migrations.AddReadsTable do
  use Ecto.Migration

  def change do
    create table(:reads, engine: :bag) do
      add :user, :string
      add :feed, :string
      add :article, :string
    end
  end
end
