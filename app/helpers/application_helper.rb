module ApplicationHelper

  def page_title(title)
    content_tag(:div, class: 'page-header') do
      content_tag(:h2, title, class: 'page-title')
    end
  end

  def icon_url_for(category_label)
    # category_label.downcase!
    case category_label.parameterize
    when "hébergement"
      "/assets/fontawesome/building8.png"
    when "terroir-gastronomie"
      "/assets/fontawesome/fork9.png"
    when "loisir-attraction"
      "/assets/fontawesome/dribbble4.png"
    when "culture"
      "/assets/fontawesome/book95.png"
    when "balade-randonnee"
      "/assets/fontawesome/plant16.png"
    when "divertissement"
      "/assets/fontawesome/film28.png"
    when "evenement"
      "/assets/fontawesome/calendar52.png"
    when "transport"
      "/assets/fontawesome/road16.png"
    end
  end
end
