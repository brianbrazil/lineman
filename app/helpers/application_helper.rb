module ApplicationHelper

    def link_with_icon(icon_class = nil, name = nil, options = nil, html_options = nil, &block)
      link_to("<i class=#{icon_class}></i> #{ name }".html_safe, options, html_options, &block)
    end

end
