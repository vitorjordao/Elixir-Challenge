defmodule ProductsWeb.ProductController do
    use ProductsWeb, :controller
    alias Products.{ ProductsData,  ProductsData.Product }

    def find(conn, params) do
      IO.inspect conn
      IO.inspect params
    end

    def create_all(conn, products ) do
      ProductsData.create_products(products)

      conn
      |> put_status(:created)
      |> render("show-generic-resp.json")

    end

    def create(conn, product) do
      {:ok, %Product{} = product} = ProductsData.create_product(product)

      conn
      |> put_status(:created)
      |> render("show-product.json", %{product: product})

    end
end
