class HourlyWeather

  attr_reader :time,
              :temperature,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon

  def initialize(data)
    @time = Time.at(data[:dt]).hour.to_s + ":00"
    @temperature =  data[:temp].to_f
    @wind_speed =   data[:wind_speed].to_s
    @wind_direction = find_direction(data[:wind_deg])
    @conditions =   data[:weather][0][:description]
    @icon =         data[:weather][0][:icon]
  end

  private
  def find_direction(degrees)
    "North" if (0 < degrees && degrees <= 15) || (345 < degrees && degrees <= 360)
    return "Northeast" if (15 < degrees && degrees <= 75)
    return "East" if (75 < degrees && degrees <= 105)
    return "Southeast" if (105 < degrees && degrees <= 165)
    return "South" if (165 < degrees && degrees <= 195)
    return "Southwest" if (195 < degrees && degrees <= 255)
    return "West" if (255 < degrees && degrees <= 285)
    return "Northwest" if (285 < degrees && degrees <= 345)
  end

end