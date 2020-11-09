class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast
  set_id :id
  attributes :daily_weather, :hourly_weather, :current_weather
end
