module ApplicationHelper
  def category_icon(category)
    icon = "#{category}-icon"
    icon = "#{icon}-active" if category.eql?(params[:name])
    "#{icon}.svg"
  end

  def navbar_icon(section)
    icon = "#{section}-icon"
    icon = "#{icon}-active" if params[:controller].match(section)
    "#{icon}.svg"
  end
end
