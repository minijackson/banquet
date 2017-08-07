defmodule Banquet.Repos.Accounts.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users, engine: :set) do
      add :name, :string
      add :password, :string
    end
  end
end
