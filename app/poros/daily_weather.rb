class DailyWeather
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon

  def initialize(data)
    @datetime = Time.at(data[:dt])
    @sunrise = Time.at(data[:sunrise])
    @sunset = Time.at(data[:sunset])
    @max_temp =  data[:temp][:max].to_f
    @min_temp =  data[:temp][:min].to_f
    @conditions =   data[:weather][0][:description]
    @icon =         data[:weather][0][:icon]
  end

end