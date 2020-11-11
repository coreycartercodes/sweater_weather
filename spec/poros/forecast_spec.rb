require 'rails_helper'

describe Forecast do
  before :each do
    @weather_info = {
                      current: {
                        "dt": 1604911026,
                        "sunrise": 1604925757,
                        "sunset": 1604963854,
                        "temp": 68.45,
                        "feels_like": 69.73,
                        "pressure": 1017,
                        "humidity": 88,
                        "dew_point": 64.76,
                        "uvi": 4.32,
                        "clouds": 90,
                        "visibility": 10000,
                        "wind_speed": 6.93,
                        "wind_deg": 140,
                        "weather": [
                            {
                                "id": 804,
                                "main": "Clouds",
                                "description": "overcast clouds",
                                "icon": "04n"
                            }]
                              },
                      daily:[
                          {
                              "dt": 1604944800,
                              "sunrise": 1604925757,
                              "sunset": 1604963854,
                              "temp": {
                                  "day": 73.27,
                                  "min": 66.25,
                                  "max": 73.27,
                                  "night": 67.24,
                                  "eve": 70.48,
                                  "morn": 66.25
                              },
                              "feels_like": {
                                  "day": 73.56,
                                  "night": 70.57,
                                  "eve": 74.05,
                                  "morn": 67.14
                              },
                              "pressure": 1016,
                              "humidity": 79,
                              "dew_point": 66.36,
                              "wind_speed": 9.95,
                              "wind_deg": 156,
                              "weather": [
                                  {
                                      "id": 500,
                                      "main": "Rain",
                                      "description": "light rain",
                                      "icon": "10d"
                                  }
                              ],
                              "clouds": 89,
                              "pop": 0.39,
                              "rain": 0.34,
                              "uvi": 4.32
                          },
                          {
                              "dt": 1605031200,
                              "sunrise": 1605012213,
                              "sunset": 1605050211,
                              "temp": {
                                  "day": 77.07,
                                  "min": 58.1,
                                  "max": 77.07,
                                  "night": 58.1,
                                  "eve": 62.85,
                                  "morn": 67.87
                              },
                              "feels_like": {
                                  "day": 76.24,
                                  "night": 53.44,
                                  "eve": 59.38,
                                  "morn": 70.2
                              },
                              "pressure": 1012,
                              "humidity": 68,
                              "dew_point": 65.79,
                              "wind_speed": 11.39,
                              "wind_deg": 222,
                              "weather": [
                                  {
                                      "id": 500,
                                      "main": "Rain",
                                      "description": "light rain",
                                      "icon": "10d"
                                  }
                              ],
                              "clouds": 75,
                              "pop": 0.73,
                              "rain": 1.3,
                              "uvi": 4.23
                          },
                          {
                              "dt": 1605117600,
                              "sunrise": 1605098669,
                              "sunset": 1605136571,
                              "temp": {
                                  "day": 64.98,
                                  "min": 48.18,
                                  "max": 67.19,
                                  "night": 52.88,
                                  "eve": 57,
                                  "morn": 48.18
                              },
                              "feels_like": {
                                  "day": 60.85,
                                  "night": 47.57,
                                  "eve": 52.41,
                                  "morn": 42.73
                              },
                              "pressure": 1017,
                              "humidity": 46,
                              "dew_point": 44.15,
                              "wind_speed": 4.72,
                              "wind_deg": 30,
                              "weather": [
                                  {
                                      "id": 800,
                                      "main": "Clear",
                                      "description": "clear sky",
                                      "icon": "01d"
                                  }
                              ],
                              "clouds": 0,
                              "pop": 0,
                              "uvi": 4.12
                          },
                          {
                              "dt": 1605204000,
                              "sunrise": 1605185125,
                              "sunset": 1605222932,
                              "temp": {
                                  "day": 64.9,
                                  "min": 45.79,
                                  "max": 68.5,
                                  "night": 55.29,
                                  "eve": 58.62,
                                  "morn": 45.79
                              },
                              "feels_like": {
                                  "day": 60.93,
                                  "night": 50.85,
                                  "eve": 55.35,
                                  "morn": 40.48
                              },
                              "pressure": 1019,
                              "humidity": 45,
                              "dew_point": 43.32,
                              "wind_speed": 4.23,
                              "wind_deg": 93,
                              "weather": [
                                  {
                                      "id": 800,
                                      "main": "Clear",
                                      "description": "clear sky",
                                      "icon": "01d"
                                  }
                              ],
                              "clouds": 0,
                              "pop": 0,
                              "uvi": 4.03
                          },
                          {
                              "dt": 1605290400,
                              "sunrise": 1605271581,
                              "sunset": 1605309294,
                              "temp": {
                                  "day": 68.2,
                                  "min": 49.93,
                                  "max": 71.55,
                                  "night": 58.15,
                                  "eve": 61.27,
                                  "morn": 49.93
                              },
                              "feels_like": {
                                  "day": 63.32,
                                  "night": 54.1,
                                  "eve": 57.15,
                                  "morn": 45.1
                              },
                              "pressure": 1020,
                              "humidity": 48,
                              "dew_point": 48,
                              "wind_speed": 7.76,
                              "wind_deg": 100,
                              "weather": [
                                  {
                                      "id": 802,
                                      "main": "Clouds",
                                      "description": "scattered clouds",
                                      "icon": "03d"
                                  }
                              ],
                              "clouds": 28,
                              "pop": 0,
                              "uvi": 3.88
                          },
                          {
                              "dt": 1605376800,
                              "sunrise": 1605358038,
                              "sunset": 1605395658,
                              "temp": {
                                  "day": 70.16,
                                  "min": 55.63,
                                  "max": 74.98,
                                  "night": 65.16,
                                  "eve": 67.46,
                                  "morn": 55.63
                              },
                              "feels_like": {
                                  "day": 67.77,
                                  "night": 66.29,
                                  "eve": 68.95,
                                  "morn": 52.36
                              },
                              "pressure": 1012,
                              "humidity": 81,
                              "dew_point": 64.15,
                              "wind_speed": 12.93,
                              "wind_deg": 192,
                              "weather": [
                                  {
                                      "id": 501,
                                      "main": "Rain",
                                      "description": "moderate rain",
                                      "icon": "10d"
                                  }
                              ],
                              "clouds": 53,
                              "pop": 0.87,
                              "rain": 3.25,
                              "uvi": 3.6
                          }],
                      hourly: [
                        {
                            "dt": 1604908800,
                            "temp": 68.45,
                            "feels_like": 68.56,
                            "pressure": 1017,
                            "humidity": 88,
                            "dew_point": 64.76,
                            "clouds": 90,
                            "visibility": 10000,
                            "wind_speed": 9.01,
                            "wind_deg": 142,
                            "weather": [
                                {
                                    "id": 804,
                                    "main": "Clouds",
                                    "description": "overcast clouds",
                                    "icon": "04n"
                                }
                            ],
                            "pop": 0.07
                        },
                        {
                            "dt": 1604912400,
                            "temp": 67.33,
                            "feels_like": 67.75,
                            "pressure": 1017,
                            "humidity": 92,
                            "dew_point": 64.92,
                            "clouds": 80,
                            "visibility": 10000,
                            "wind_speed": 8.59,
                            "wind_deg": 144,
                            "weather": [
                                {
                                    "id": 803,
                                    "main": "Clouds",
                                    "description": "broken clouds",
                                    "icon": "04n"
                                }
                            ],
                            "pop": 0
                        },
                        {
                            "dt": 1604916000,
                            "temp": 66.63,
                            "feels_like": 67.51,
                            "pressure": 1017,
                            "humidity": 94,
                            "dew_point": 64.85,
                            "clouds": 77,
                            "visibility": 10000,
                            "wind_speed": 7.72,
                            "wind_deg": 144,
                            "weather": [
                                {
                                    "id": 803,
                                    "main": "Clouds",
                                    "description": "broken clouds",
                                    "icon": "04n"
                                }
                            ],
                            "pop": 0
                        },
                        {
                            "dt": 1604919600,
                            "temp": 66.16,
                            "feels_like": 67.15,
                            "pressure": 1017,
                            "humidity": 95,
                            "dew_point": 64.69,
                            "clouds": 78,
                            "visibility": 10000,
                            "wind_speed": 7.38,
                            "wind_deg": 140,
                            "weather": [
                                {
                                    "id": 803,
                                    "main": "Clouds",
                                    "description": "broken clouds",
                                    "icon": "04n"
                                }
                            ],
                            "pop": 0
                        },
                        {
                            "dt": 1604923200,
                            "temp": 65.68,
                            "feels_like": 66.43,
                            "pressure": 1017,
                            "humidity": 95,
                            "dew_point": 64.2,
                            "clouds": 81,
                            "visibility": 10000,
                            "wind_speed": 7.43,
                            "wind_deg": 137,
                            "weather": [
                                {
                                    "id": 803,
                                    "main": "Clouds",
                                    "description": "broken clouds",
                                    "icon": "04n"
                                }
                            ],
                            "pop": 0
                        },
                        {
                            "dt": 1604926800,
                            "temp": 65.3,
                            "feels_like": 65.44,
                            "pressure": 1017,
                            "humidity": 95,
                            "dew_point": 64.04,
                            "clouds": 98,
                            "visibility": 10000,
                            "wind_speed": 8.23,
                            "wind_deg": 135,
                            "weather": [
                                {
                                    "id": 804,
                                    "main": "Clouds",
                                    "description": "overcast clouds",
                                    "icon": "04d"
                                }
                            ],
                            "pop": 0.15
                        },
                        {
                            "dt": 1604930400,
                            "temp": 66.09,
                            "feels_like": 65.77,
                            "pressure": 1017,
                            "humidity": 93,
                            "dew_point": 64.27,
                            "clouds": 93,
                            "visibility": 10000,
                            "wind_speed": 9.22,
                            "wind_deg": 143,
                            "weather": [
                                {
                                    "id": 804,
                                    "main": "Clouds",
                                    "description": "overcast clouds",
                                    "icon": "04d"
                                }
                            ],
                            "pop": 0.1
                        },
                        {
                            "dt": 1604934000,
                            "temp": 67.93,
                            "feels_like": 68.09,
                            "pressure": 1018,
                            "humidity": 90,
                            "dew_point": 64.96,
                            "clouds": 93,
                            "visibility": 10000,
                            "wind_speed": 9.01,
                            "wind_deg": 146,
                            "weather": [
                                {
                                    "id": 804,
                                    "main": "Clouds",
                                    "description": "overcast clouds",
                                    "icon": "04d"
                                }
                            ],
                            "pop": 0
                        },
                        {
                            "dt": 1604937600,
                            "temp": 70.48,
                            "feels_like": 70.61,
                            "pressure": 1017,
                            "humidity": 84,
                            "dew_point": 65.7,
                            "clouds": 92,
                            "visibility": 10000,
                            "wind_speed": 9.48,
                            "wind_deg": 152,
                            "weather": [
                                {
                                    "id": 804,
                                    "main": "Clouds",
                                    "description": "overcast clouds",
                                    "icon": "04d"
                                }
                            ],
                            "pop": 0
                        }]
                    }

    @forecast = Forecast.new(@weather_info)
  end

  it "exists with info" do
    expect(@forecast).to be_a(Forecast)
    expect(@forecast.current_weather).to be_a(Hash)
    expect(@forecast.daily_weather).to be_a(Array)
    expect(@forecast.hourly_weather).to be_a(Array)
    expect(@forecast.id).to eq("null")

    current = @forecast.current_weather
    expect(current).to have_key(:datetime)
    expect(current).to have_key(:sunrise)
    expect(current).to have_key(:sunset)
    expect(current).to have_key(:temperature)
    expect(current).to have_key(:feels_like)
    expect(current).to have_key(:humidity)
    expect(current).to have_key(:uvi)
    expect(current).to have_key(:visibility)
    expect(current).to have_key(:conditions)
    expect(current).to have_key(:icon)
    expect(current).to_not have_key(:pressure)
    expect(current).to_not have_key(:clouds)
    expect(current).to_not have_key(:dt)
    expect(current[:datetime]).to be_a(Time)
    expect(current[:sunrise]).to be_a(Time)
    expect(current[:sunset]).to be_a(Time)
    expect(current[:temperature]).to be_a(Float)
    expect(current[:feels_like]).to be_a(Float)
    expect(current[:humidity]).to be_a(Float)
    expect(current[:uvi]).to be_a(Float)
    expect(current[:visibility]).to be_an(Integer)
    expect(current[:conditions]).to be_a(String)
    expect(current[:icon]).to be_a(String)
    
    hourly = @forecast.hourly_weather
    hourly.each do |hour|
      expect(hour).to have_key(:time)
      expect(hour).to have_key(:temperature)
      expect(hour).to have_key(:wind_speed)
      expect(hour).to have_key(:wind_direction)
      expect(hour).to have_key(:conditions)
      expect(hour).to have_key(:icon)
      expect(hour).to_not have_key(:pressure)
      expect(hour).to_not have_key(:dt)
      expect(hour).to_not have_key(:dew_point)
      expect(hour[:time]).to be_a(String)
      expect(hour[:temperature]).to be_a(Float)
      expect(hour[:wind_speed]).to be_a(String)
      expect(hour[:wind_direction]).to be_a(String)
      expect(hour[:conditions]).to be_a(String)
      expect(hour[:icon]).to be_a(String)
    end
    
    daily = @forecast.daily_weather
    daily.each do |day|
      expect(day).to have_key(:datetime)
      expect(day).to have_key(:sunrise)
      expect(day).to have_key(:sunset)
      expect(day).to have_key(:max_temp)
      expect(day).to have_key(:min_temp)
      expect(day).to have_key(:conditions)
      expect(day).to have_key(:icon)
      expect(day).to_not have_key(:pressure)
      expect(day).to_not have_key(:dt)
      expect(day).to_not have_key(:pressure)
      expect(day).to_not have_key(:humidity)
      expect(day[:datetime]).to be_a(Time)
      expect(day[:sunrise]).to be_a(Time)
      expect(day[:sunset]).to be_a(Time)
      expect(day[:max_temp]).to be_a(Float)
      expect(day[:min_temp]).to be_a(Float)
      expect(day[:conditions]).to be_a(String)
      expect(day[:icon]).to be_a(String)
    end
end
end