defmodule ContextsWeb.CMS.PageView do
  use ContextsWeb, :view
  alias Contexts.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
