module ApplicationHelper

  def link_with_icon(icon_class = nil, name = nil, options = nil, html_options = nil, &block)
    link_to("<i class=#{icon_class}></i> #{ name }".html_safe, options, html_options, &block)
  end

  def flash_class(level)
    case level
      when :notice then "flash alert alert-success"
      when :success then "flash alert alert-success"
      when :error then "flash alert alert-danger"
      when :alert then "flash alert alert-warning"
    end
  end

end
