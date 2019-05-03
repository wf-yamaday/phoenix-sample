defmodule SampleWeb.API.V1.UserView do
    use SampleWeb, :view
    
    alias SampleWeb.API.V1.UserView

    def render("user.json", %{user: user}) do
        %{id: user.id,
        name: user.name,
        tel: user.tel,
        email: user.email}
    end
end
