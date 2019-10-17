module ApplicationHelper
  def category_icon(category)
    icon = "#{category}-icon"
    icon = "#{icon}-active" if current_category?(category)
    "#{icon}.svg"
  end

  def current_category?(category)
    category.eql?(params[:name])
  end

  def navbar_icon(section)
    icon = "#{section}-icon"
    icon = "#{icon}-active" if current_section?(section)
    "#{icon}.svg"
  end

  def current_section?(section)
    params[:controller].match(section)
  end

  def flash_messages
    flash.each do |msg_type, message|
      concat(content_tag(:article, '', class: "message #{class_for(msg_type)}", role: 'alert') do
        concat(content_tag(:div, '', class: 'message-header', data: { dismiss: 'alert' }) do
          concat(content_tag(:p, message, class: 'message-content'))
          concat(content_tag(:button, '', class: 'delete'))
        end)
      end)
    end
    nil
  end

  def class_for(flash_type)
    { success: 'is-success',
      error: 'is-danger',
      alert: 'is-warning',
      notice: 'is-info' }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def active_class(section)
    return 'active' if current_section?(section)
  end

  def active_category(category)
    return 'active' if current_category?(category)
  end
end
