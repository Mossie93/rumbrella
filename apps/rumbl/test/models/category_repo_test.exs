defmodule Rumbl.CategoryRepoTest do
  use Rumbl.ModelCase
  alias Rumbl.Category

  test "alphabetical/1 orders by name" do
    Repo.insert!(%Category{name: "A"})
    Repo.insert!(%Category{name: "B"})
    Repo.insert!(%Category{name: "C"})

    query = Category |> Category.alphabetical()
    query = from c in query, select: c.name
    assert Repo.all(query) == ~w(A B C)
  end
end
