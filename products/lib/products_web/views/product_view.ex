defmodule ProductsWeb.ProductView do
  use ProductsWeb, :view

  def render("show-product.json", %{product: product}) do
    %{ data: render_one(product, __MODULE__, "product.json")}
  end

  def render("product.json", product) do
    %{id: product.product.id}
  end

  def render("products.json", products) do
    IO.inspect products
    Enum.map products, fn product -> %{id: product.product.id} end

  end

  def render("show-generic-resp.json", _) do
    %{}
  end

end
