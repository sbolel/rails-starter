module ApplicationHelper

  def alert_block(text, type)
    content_tag(:div, :class => "alert alert-#{type}") do
      link_to('&times;'.html_safe, '#', :class => 'close', :data => {:dismiss => 'alert',}) <<
      text
    end
  end

end
