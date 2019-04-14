defmodule SampleWeb.API.V1.PostView do
    use SampleWeb, :view
    alias SampleWeb.API.V1.PostView

  def render("post.json", %{post: post}) do
    %{id: post.id,
      body: post.body}
  end

end