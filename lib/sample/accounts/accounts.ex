defmodule Sample.Accounts do

    import Ecto.Query, warn: false
    alias Sample.Repo

    alias Sample.Accounts.User

    def serach(params) do
        term = params["term"]
        try do
            cond do
            Regex.match?(~r/^(?=.*@).*$/, term) -> get_user_by_email!(term)
            Regex.match?(~r/^0\d{2,3}-\d{1,4}-\d{4}$/, term) -> get_user_by_tel!(term)
            Regex.match?(~r/[0-9]/, term) -> get_user_by_id!(term)
            true -> get_user_by_name!(term)
            end
        rescue
            e in Ecto.NoResultsError -> false
        end
    end

    def get_user_by_email!(email) do
        from(u in User,
            where: u.email == ^email
        )
        |> Repo.one!()
    end

    def get_user_by_id!(id) do
        from(u in User,
        where: u.id == ^id)
        |> Repo.one!()
    end

    def get_user_by_tel!(tel) do
        from(u in User,
        where: u.tel == ^tel)
        |> Repo.one!()
    end

    def get_user_by_name!(name) do
        from(u in User,
        where: u.name == ^name)
        |> Repo.one!()
    end
end
