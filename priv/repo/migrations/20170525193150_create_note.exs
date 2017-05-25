defmodule Notesdefrais.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :description, :string
      add :debit_in_cents, :integer

      timestamps()
    end

  end
end
