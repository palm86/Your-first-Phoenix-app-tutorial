defmodule Mysite.PageView do
  use Mysite.Web, :view

  def render("index.html", _assigns) do
      "Hello, world. You're at the polls index."
  end
end
