defmodule PhxOembed.Card do
  use PhxOembed.Web, :model

  schema "cards" do
    field :url,               :string, null: false
    field :card_type,         :string, null: false
    field :title,             :string, default: ""
    field :author_name,       :string, default: ""
    field :author_url,        :string, default: ""
    field :provider_name,     :string, default: ""
    field :provider_url,      :string, default: ""
    field :cache_age,         :string, default: ""
    field :thumbnail_url,     :string, default: ""
    field :thumbnail_width,   :string, default: ""
    field :thumbnail_height,  :string, default: ""
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:url, :card_type, :title, :author_name, :author_url, :provider_name,
                     :provider_url, :cache_age, :thumbnail_url, :thumbnail_width, :thumbnail_height])
    |> validate_required([:url, :card_type])
  end
end
