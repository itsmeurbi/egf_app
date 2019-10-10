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

  def flash_messages
    flash.each do |msg_type, message|
      concat(content_tag(:article, '', class: "message #{class_for(msg_type)}", role: "alert") do
        concat(content_tag(:div, '', class: 'message-header', data: { dismiss: 'alert' }) do
          concat(content_tag(:p, message, class: 'message-content'))
          concat(content_tag(:button, '', class: 'delete'))
        end)
      end)
    end
    nil
  end

  def class_for(flash_type)
    { success: "is-success",
      error: "is-danger",
      alert: "is-warning",
      notice: "is-info" }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end
end
