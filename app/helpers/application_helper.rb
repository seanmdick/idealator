module ApplicationHelper
  def format_time_ago (topic_time)
    time_difference = Time.now - topic_time
    
    # If it's relatively recent show # of minutes, otherwise hours, otherwise
    if time_difference < 1.minute
      "Just now"
    elsif time_difference < 1.hour
      "#{pluralize((time_difference/1.minute).to_i, 'minute')} ago"
    elsif time_difference < 24.hours
      "#{pluralize((time_difference/1.hour).to_i, 'hour')} ago"
    else
      topic_time.localtime.strftime('%b %d, %Y')
    end
  end
end
