module ApplicationHelper

  def page_title(title)
    content_tag(:div, class: 'page-header') do
      content_tag(:h2, title, class: 'page-title')
    end
  end
end
