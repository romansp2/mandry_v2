module UsersHelper

  def header_link_to_what
    if request.original_url == root_url
      "<a href=#search_page>ПОИСК</a>".html_safe
    else
      link_to 'ПОИСК', root_url + '#search_page'

    end
  end
end
