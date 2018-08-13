module ApplicationHelper
  def flash_class(level)
    case level
    when "notice"
      "alert alert-info"
    when "success"
      "alert alert-success"
    when "error"
      "alert alert-danger"
    when "alert"
      "alert alert-danger"
    end
  end

  def render_flash_messages
    flash.each do |k, v|
     concat(content_tag :div, v, class: "#{flash_class(k)}", role: "alert")
    end
  end
end
