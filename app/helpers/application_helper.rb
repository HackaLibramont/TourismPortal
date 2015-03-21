module ApplicationHelper

  def page_title(title)
    content_tag(:div, class: 'page-header') do
      content_tag(:h2, title, class: 'page-title')
    end
  end

  def icon_url_for(category_label)
    # category_label.downcase!
    case category_label.parameterize
    when "hebergement"
      url = "fontawesome/building8.png"
    when "terroir-gastronomie"
      url = "fontawesome/fork9.png"
    when "loisir-attraction"
      url = "fontawesome/dribbble4.png"
    when "culture"
      url = "fontawesome/book95.png"
    when "balade-randonnee"
      url = "fontawesome/plant16.png"
    when "divertissement"
      url = "fontawesome/film28.png"
    when "evenement"
      url = "fontawesome/calendar52.png"
    when "transport"
      url = "fontawesome/road16.png"
    end
    image_path(url)
  end
end
