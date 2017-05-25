defmodule Notesdefrais.Note do
  use Notesdefrais.Web, :model

  schema "notes" do
    field :description, :string
    field :debit_in_cents, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :debit_in_cents])
    |> validate_required([:description, :debit_in_cents])
  end
end
