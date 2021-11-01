defmodule Contexts.CMS.Page do
  use Ecto.Schema
  import Ecto.Changeset
  alias Contexts.CMS.Author

  schema "pages" do
    field :title, :string
    field :body, :string
    field :views, :integer, default: 0
    belongs_to :author, Author

    timestamps()
  end

  @doc false
  def changeset(page, attrs) do
    page
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
