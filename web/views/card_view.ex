defmodule PhxOembed.CardView do
  use PhxOembed.Web, :view

  def render("show.json", %{card: card}) do
    render_one(card, PhxOembed.CardView, "card.json")
  end

  def render("card.json", %{card: card}) do
    %{url: card.url}
  end
end
