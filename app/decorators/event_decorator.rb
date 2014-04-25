class EventDecorator < Draper::Decorator
  delegate_all

  def qrcode(size)
    "http://chart.apis.google.com/chart?cht=qr&chs=#{size}x#{size}&chl=#{URI.escape(h.event_url(object))}&chld=H|0"
  end


  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
