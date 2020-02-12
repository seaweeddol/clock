# clock.rb
def clock(hours, minutes, seconds)
  unless hours.class == Integer && minutes.class == Integer && seconds.class == Integer
    raise ArgumentError
  end 

  time_fields = [hours, minutes, seconds]

  time_fields.map! do |field|
    if field < 10
      "0#{field}"
    else
      "#{field}"
    end
  end

  return "#{time_fields[0]}:#{time_fields[1]}:#{time_fields[2]}"
end