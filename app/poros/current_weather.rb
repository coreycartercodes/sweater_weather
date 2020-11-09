class CurrentWeather
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temperature,
              :feels_like,
              :humidity,
              :uvi, 
              :visibility,
              :conditions,
              :icon











  def initialize(data)
    @datetime = Time.at(data[:dt])
    @sunrise = Time.at(data[:sunrise])
    @sunset = Time.at(data[:sunset])
    @temperature =  data[:temp].to_f
    @feels_like =   data[:feels_like].to_f
    @humidity =     data[:humidity].to_f
    @uvi =          data[:uvi].to_f
    @visibility =   data[:visibility].to_i
    @conditions =   data[:weather][0][:description]
    @icon =         data[:weather][0][:icon]
  end
end