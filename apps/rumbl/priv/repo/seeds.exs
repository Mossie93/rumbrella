alias Rumbl.Repo
alias Rumbl.Category

for category <- ~w(Action Comedy Drama Romance Sci-fi) do
  Repo.get_by(Category, name: category) || Repo.insert!(%Category{name: category})
end
