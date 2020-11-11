class Forecast
    attr_reader :id,
                :current_weather,
                :daily_weather,
                :hourly_weather
  
    def initialize(weather_data)
      @id = "null"
      @current_weather = current(weather_data[:current])
      @daily_weather = daily(weather_data[:daily][0..4])
      @hourly_weather = hourly(weather_data[:hourly][0..7])
    end
  

    def current(data)
      {
        datetime: Time.at(data[:dt]),
        sunrise: Time.at(data[:sunrise]),
        sunset: Time.at(data[:sunset]),
        temperature:  data[:temp].to_f,
        feels_like:   data[:feels_like].to_f,
        humidity:     data[:humidity].to_f,
        uvi:          data[:uvi].to_f,
        visibility:   data[:visibility].to_i,
        conditions:   data[:weather][0][:description],
        icon:         data[:weather][0][:icon]
      }
    end

    def daily(days)
      days.map do |day|
        {
          datetime: Time.at(day[:dt]),
          sunrise: Time.at(day[:sunrise]),
          sunset: Time.at(day[:sunset]),
          max_temp:  day[:temp][:max].to_f,
          min_temp:  day[:temp][:min].to_f,
          conditions:   day[:weather][0][:description],
          icon:         day[:weather][0][:icon]
        }
      end
    end

    def hourly(hours)
      hours.map do |hour|
        {
          time: (Time.at(hour[:dt]).hour.to_s + ":00"),
          temperature:  hour[:temp].to_f,
          wind_speed:   hour[:wind_speed].to_s,
          wind_direction: find_direction(hour[:wind_deg]),
          conditions:   hour[:weather][0][:description],
          icon:         hour[:weather][0][:icon]
        }
      end
    end

  private

  def find_direction(degrees)
    return "Northeast" if (15 < degrees && degrees <= 75)
    return "East" if (75 < degrees && degrees <= 105)
    return "Southeast" if (105 < degrees && degrees <= 165)
    return "South" if (165 < degrees && degrees <= 195)
    return "Southwest" if (195 < degrees && degrees <= 255)
    return "West" if (255 < degrees && degrees <= 285)
    return "Northwest" if (285 < degrees && degrees <= 345)
    return "North"
  end
end
