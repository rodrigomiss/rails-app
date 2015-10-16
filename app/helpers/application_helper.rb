module ApplicationHelper

  def flash_message
    messages = ""
    [:notice, :alert, :success, :info, :warning, :danger].each {|type|

      if flash[type]
        messages += "<div class=\"alert alert-#{type}\">#{flash[type]}</div>"
      end
    }

    messages.html_safe
  end

	def format_date(date)
		date.strftime "%d/%m/%Y"
	end
end
