module ApplicationHelper
	def format_date(date)
		if !date.nil?
			date.strftime("%b %d, %Y")
		else
			"No record"
		end
	end

	def format_time(time)
		if !time.nil?
			time.strftime("%l:%M %P")
		else
			"No record"
		end
	end
end
