require 'rails_helper'

describe Trip do
  before :each do
    @weather_data = {
      "lat": 33.44,
      "lon": -94.04,
      "timezone": "America/Chicago",
      "timezone_offset": -21600,
      "current": {
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
              }
          ]
      },
      "hourly": [
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
          },
          {
              "dt": 1604941200,
              "temp": 72.81,
              "feels_like": 72.81,
              "pressure": 1017,
              "humidity": 79,
              "dew_point": 66.27,
              "clouds": 88,
              "visibility": 10000,
              "wind_speed": 10.09,
              "wind_deg": 154,
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
              "dt": 1604944800,
              "temp": 73.31,
              "feels_like": 73.62,
              "pressure": 1016,
              "humidity": 79,
              "dew_point": 66.47,
              "clouds": 89,
              "visibility": 10000,
              "wind_speed": 9.95,
              "wind_deg": 156,
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
              "dt": 1604948400,
              "temp": 72.82,
              "feels_like": 73.6,
              "pressure": 1015,
              "humidity": 80,
              "dew_point": 66.54,
              "clouds": 100,
              "visibility": 10000,
              "wind_speed": 9.04,
              "wind_deg": 158,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.2
          },
          {
              "dt": 1604952000,
              "temp": 72.61,
              "feels_like": 74.12,
              "pressure": 1014,
              "humidity": 82,
              "dew_point": 66.81,
              "clouds": 100,
              "visibility": 10000,
              "wind_speed": 8.12,
              "wind_deg": 161,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.22
          },
          {
              "dt": 1604955600,
              "temp": 72.75,
              "feels_like": 74.88,
              "pressure": 1014,
              "humidity": 82,
              "dew_point": 67.12,
              "clouds": 100,
              "visibility": 10000,
              "wind_speed": 7.14,
              "wind_deg": 163,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.2
          },
          {
              "dt": 1604959200,
              "temp": 71.94,
              "feels_like": 75.4,
              "pressure": 1013,
              "humidity": 85,
              "dew_point": 67.41,
              "clouds": 100,
              "visibility": 10000,
              "wind_speed": 4.99,
              "wind_deg": 169,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.19
          },
          {
              "dt": 1604962800,
              "temp": 71.06,
              "feels_like": 74.73,
              "pressure": 1013,
              "humidity": 87,
              "dew_point": 67.05,
              "clouds": 100,
              "visibility": 10000,
              "wind_speed": 4.45,
              "wind_deg": 167,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "pop": 0.39,
              "rain": {
                  "1h": 0.1
              }
          },
          {
              "dt": 1604966400,
              "temp": 70.48,
              "feels_like": 74.05,
              "pressure": 1014,
              "humidity": 87,
              "dew_point": 66.65,
              "clouds": 99,
              "visibility": 10000,
              "wind_speed": 4.18,
              "wind_deg": 169,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.19
          },
          {
              "dt": 1604970000,
              "temp": 69.4,
              "feels_like": 72.82,
              "pressure": 1014,
              "humidity": 90,
              "dew_point": 66.42,
              "clouds": 63,
              "visibility": 10000,
              "wind_speed": 4.36,
              "wind_deg": 173,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.01
          },
          {
              "dt": 1604973600,
              "temp": 67.77,
              "feels_like": 70.99,
              "pressure": 1014,
              "humidity": 93,
              "dew_point": 65.88,
              "clouds": 49,
              "visibility": 10000,
              "wind_speed": 4.18,
              "wind_deg": 174,
              "weather": [
                  {
                      "id": 802,
                      "main": "Clouds",
                      "description": "scattered clouds",
                      "icon": "03n"
                  }
              ],
              "pop": 0.1
          },
          {
              "dt": 1604977200,
              "temp": 67.24,
              "feels_like": 70.57,
              "pressure": 1014,
              "humidity": 94,
              "dew_point": 65.61,
              "clouds": 46,
              "visibility": 10000,
              "wind_speed": 3.83,
              "wind_deg": 159,
              "weather": [
                  {
                      "id": 802,
                      "main": "Clouds",
                      "description": "scattered clouds",
                      "icon": "03n"
                  }
              ],
              "pop": 0.17
          },
          {
              "dt": 1604980800,
              "temp": 68.67,
              "feels_like": 71.69,
              "pressure": 1014,
              "humidity": 92,
              "dew_point": 66.4,
              "clouds": 58,
              "visibility": 10000,
              "wind_speed": 5.01,
              "wind_deg": 145,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.21
          },
          {
              "dt": 1604984400,
              "temp": 68.5,
              "feels_like": 70.32,
              "pressure": 1014,
              "humidity": 93,
              "dew_point": 66.6,
              "clouds": 61,
              "visibility": 10000,
              "wind_speed": 7.27,
              "wind_deg": 140,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10n"
                  }
              ],
              "pop": 0.36,
              "rain": {
                  "1h": 0.2
              }
          },
          {
              "dt": 1604988000,
              "temp": 68.16,
              "feels_like": 68.77,
              "pressure": 1013,
              "humidity": 95,
              "dew_point": 66.94,
              "clouds": 53,
              "visibility": 10000,
              "wind_speed": 9.64,
              "wind_deg": 152,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10n"
                  }
              ],
              "pop": 0.48,
              "rain": {
                  "1h": 0.18
              }
          },
          {
              "dt": 1604991600,
              "temp": 68.41,
              "feels_like": 68.36,
              "pressure": 1012,
              "humidity": 95,
              "dew_point": 67.15,
              "clouds": 31,
              "visibility": 10000,
              "wind_speed": 11.03,
              "wind_deg": 160,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10n"
                  }
              ],
              "pop": 0.48,
              "rain": {
                  "1h": 0.13
              }
          },
          {
              "dt": 1604995200,
              "temp": 68.36,
              "feels_like": 68.58,
              "pressure": 1012,
              "humidity": 96,
              "dew_point": 67.17,
              "clouds": 44,
              "visibility": 10000,
              "wind_speed": 10.74,
              "wind_deg": 166,
              "weather": [
                  {
                      "id": 802,
                      "main": "Clouds",
                      "description": "scattered clouds",
                      "icon": "03n"
                  }
              ],
              "pop": 0.52
          },
          {
              "dt": 1604998800,
              "temp": 68.59,
              "feels_like": 69.1,
              "pressure": 1012,
              "humidity": 95,
              "dew_point": 67.24,
              "clouds": 55,
              "visibility": 10000,
              "wind_speed": 10.18,
              "wind_deg": 166,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.17
          },
          {
              "dt": 1605002400,
              "temp": 68.76,
              "feels_like": 69.17,
              "pressure": 1011,
              "humidity": 94,
              "dew_point": 67.15,
              "clouds": 64,
              "visibility": 10000,
              "wind_speed": 10.2,
              "wind_deg": 174,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.03
          },
          {
              "dt": 1605006000,
              "temp": 68.67,
              "feels_like": 69.19,
              "pressure": 1011,
              "humidity": 93,
              "dew_point": 66.87,
              "clouds": 71,
              "visibility": 10000,
              "wind_speed": 9.71,
              "wind_deg": 175,
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
              "dt": 1605009600,
              "temp": 67.87,
              "feels_like": 70.2,
              "pressure": 1012,
              "humidity": 95,
              "dew_point": 66.42,
              "clouds": 75,
              "visibility": 10000,
              "wind_speed": 6.35,
              "wind_deg": 205,
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
              "dt": 1605013200,
              "temp": 67.57,
              "feels_like": 69.75,
              "pressure": 1012,
              "humidity": 95,
              "dew_point": 66.25,
              "clouds": 95,
              "visibility": 10000,
              "wind_speed": 6.38,
              "wind_deg": 204,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.24
          },
          {
              "dt": 1605016800,
              "temp": 68.16,
              "feels_like": 69.6,
              "pressure": 1012,
              "humidity": 93,
              "dew_point": 66.25,
              "clouds": 98,
              "visibility": 10000,
              "wind_speed": 7.65,
              "wind_deg": 204,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.35
          },
          {
              "dt": 1605020400,
              "temp": 68.74,
              "feels_like": 69.08,
              "pressure": 1013,
              "humidity": 91,
              "dew_point": 66.06,
              "clouds": 98,
              "visibility": 10000,
              "wind_speed": 9.55,
              "wind_deg": 197,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.31
          },
          {
              "dt": 1605024000,
              "temp": 71.24,
              "feels_like": 71.11,
              "pressure": 1013,
              "humidity": 85,
              "dew_point": 66.51,
              "clouds": 92,
              "visibility": 10000,
              "wind_speed": 10.78,
              "wind_deg": 198,
              "weather": [
                  {
                      "id": 804,
                      "main": "Clouds",
                      "description": "overcast clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.27
          },
          {
              "dt": 1605027600,
              "temp": 74.68,
              "feels_like": 74.39,
              "pressure": 1013,
              "humidity": 75,
              "dew_point": 66.52,
              "clouds": 84,
              "visibility": 10000,
              "wind_speed": 10.85,
              "wind_deg": 212,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.31
          },
          {
              "dt": 1605031200,
              "temp": 77.07,
              "feels_like": 76.24,
              "pressure": 1012,
              "humidity": 68,
              "dew_point": 65.79,
              "clouds": 75,
              "visibility": 10000,
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
              "pop": 0.43,
              "rain": {
                  "1h": 0.19
              }
          },
          {
              "dt": 1605034800,
              "temp": 77.02,
              "feels_like": 76.1,
              "pressure": 1011,
              "humidity": 68,
              "dew_point": 65.73,
              "clouds": 24,
              "visibility": 10000,
              "wind_speed": 11.52,
              "wind_deg": 244,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "pop": 0.83,
              "rain": {
                  "1h": 0.25
              }
          },
          {
              "dt": 1605038400,
              "temp": 72.34,
              "feels_like": 71.92,
              "pressure": 1010,
              "humidity": 79,
              "dew_point": 65.5,
              "clouds": 58,
              "visibility": 10000,
              "wind_speed": 10.47,
              "wind_deg": 269,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "pop": 0.82,
              "rain": {
                  "1h": 0.18
              }
          },
          {
              "dt": 1605042000,
              "temp": 70.59,
              "feels_like": 70.27,
              "pressure": 1010,
              "humidity": 80,
              "dew_point": 64.17,
              "clouds": 68,
              "visibility": 10000,
              "wind_speed": 9.31,
              "wind_deg": 278,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.73
          },
          {
              "dt": 1605045600,
              "temp": 69.13,
              "feels_like": 68.9,
              "pressure": 1010,
              "humidity": 76,
              "dew_point": 61.47,
              "clouds": 75,
              "visibility": 10000,
              "wind_speed": 7.07,
              "wind_deg": 293,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.57
          },
          {
              "dt": 1605049200,
              "temp": 66.65,
              "feels_like": 64.42,
              "pressure": 1011,
              "humidity": 67,
              "dew_point": 55.49,
              "clouds": 68,
              "visibility": 10000,
              "wind_speed": 6.91,
              "wind_deg": 312,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04d"
                  }
              ],
              "pop": 0.44
          },
          {
              "dt": 1605052800,
              "temp": 62.85,
              "feels_like": 59.38,
              "pressure": 1011,
              "humidity": 61,
              "dew_point": 49.53,
              "clouds": 58,
              "visibility": 10000,
              "wind_speed": 5.93,
              "wind_deg": 317,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04n"
                  }
              ],
              "pop": 0.28
          },
          {
              "dt": 1605056400,
              "temp": 61.03,
              "feels_like": 57.02,
              "pressure": 1012,
              "humidity": 58,
              "dew_point": 46.29,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 5.55,
              "wind_deg": 314,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605060000,
              "temp": 59.58,
              "feels_like": 55.27,
              "pressure": 1013,
              "humidity": 56,
              "dew_point": 44.26,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 5.1,
              "wind_deg": 321,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605063600,
              "temp": 58.1,
              "feels_like": 53.44,
              "pressure": 1013,
              "humidity": 57,
              "dew_point": 43.29,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 5.39,
              "wind_deg": 331,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605067200,
              "temp": 56.39,
              "feels_like": 51.3,
              "pressure": 1014,
              "humidity": 60,
              "dew_point": 43.09,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 6.06,
              "wind_deg": 344,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605070800,
              "temp": 54.9,
              "feels_like": 49.68,
              "pressure": 1014,
              "humidity": 64,
              "dew_point": 42.98,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 6.4,
              "wind_deg": 352,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605074400,
              "temp": 53.53,
              "feels_like": 48.22,
              "pressure": 1014,
              "humidity": 65,
              "dew_point": 42.33,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 6.22,
              "wind_deg": 359,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1605078000,
              "temp": 52.34,
              "feels_like": 47.26,
              "pressure": 1014,
              "humidity": 67,
              "dew_point": 41.74,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 5.66,
              "wind_deg": 360,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          }
      ],
      "daily": [
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
          },
          {
              "dt": 1605463200,
              "sunrise": 1605444494,
              "sunset": 1605482024,
              "temp": {
                  "day": 76.82,
                  "min": 60.21,
                  "max": 78.08,
                  "night": 60.21,
                  "eve": 65.89,
                  "morn": 60.42
              },
              "feels_like": {
                  "day": 73.35,
                  "night": 56.14,
                  "eve": 63.68,
                  "morn": 61.18
              },
              "pressure": 1011,
              "humidity": 45,
              "dew_point": 54.46,
              "wind_speed": 8.28,
              "wind_deg": 223,
              "weather": [
                  {
                      "id": 801,
                      "main": "Clouds",
                      "description": "few clouds",
                      "icon": "02d"
                  }
              ],
              "clouds": 16,
              "pop": 0,
              "uvi": 3.69
          },
          {
              "dt": 1605549600,
              "sunrise": 1605530951,
              "sunset": 1605568391,
              "temp": {
                  "day": 65.59,
                  "min": 52.03,
                  "max": 66.7,
                  "night": 55.38,
                  "eve": 55.38,
                  "morn": 52.03
              },
              "feels_like": {
                  "day": 56.39,
                  "night": 48.96,
                  "eve": 48.96,
                  "morn": 44.06
              },
              "pressure": 1023,
              "humidity": 33,
              "dew_point": 36.28,
              "wind_speed": 11.01,
              "wind_deg": 35,
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
              "uvi": 3.45
          }
      ]
  }

    @location_data = {"route": {
      "hasTollRoad": false,
      "hasBridge": true,
      "boundingBox": {
          "lr": {
              "lng": -104.605087,
              "lat": 38.265427
          },
          "ul": {
              "lng": -104.98761,
              "lat": 39.738453
          }
      },
      "distance": 111.38,
      "hasTimedRestriction": false,
      "hasTunnel": false,
      "hasHighway": true,
      "computedWaypoints": [],
      "routeError": {
          "errorCode": -400,
          "message": ""
      },
      "formattedTime": "01:43:57",
      "sessionId": "5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
      "hasAccessRestriction": false,
      "realTime": 6431,
      "hasSeasonalClosure": false,
      "hasCountryCross": false,
      "fuelUsed": 5.52,
      "legs": [
          {
              "hasTollRoad": false,
              "hasBridge": true,
              "destNarrative": "Proceed to PUEBLO, CO.",
              "distance": 111.38,
              "hasTimedRestriction": false,
              "hasTunnel": false,
              "hasHighway": true,
              "index": 0,
              "formattedTime": "01:43:57",
              "origIndex": 2,
              "hasAccessRestriction": false,
              "hasSeasonalClosure": false,
              "hasCountryCross": false,
              "roadGradeStrategy": [
                  []
              ],
              "destIndex": 5,
              "time": 6237,
              "hasUnpaved": false,
              "origNarrative": "Go south on N Broadway.",
              "maneuvers": [
                  {
                      "distance": 0.109,
                      "streets": [
                          "N Sherman St"
                      ],
                      "narrative": "Start out going south on N Sherman St toward E 13th Ave.",
                      "turnType": 0,
                      "startPoint": {
                          "lng": -104.984856,
                          "lat": 39.738453
                      },
                      "index": 0,
                      "formattedTime": "00:00:33",
                      "directionName": "South",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=39.73845291137695,-104.98485565185547|marker-1||39.73687744140625,-104.9848403930664|marker-2||&center=39.7376651763916,-104.98484802246094&defaultMarker=none&zoom=13&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 33,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
                      "direction": 4
                  },
                  {
                      "distance": 0.135,
                      "streets": [
                          "E 13th Ave"
                      ],
                      "narrative": "Turn right onto E 13th Ave.",
                      "turnType": 2,
                      "startPoint": {
                          "lng": -104.98484,
                          "lat": 39.736877
                      },
                      "index": 1,
                      "formattedTime": "00:00:22",
                      "directionName": "West",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=39.73687744140625,-104.9848403930664|marker-2||39.73686981201172,-104.98737335205078|marker-3||&center=39.736873626708984,-104.9861068725586&defaultMarker=none&zoom=13&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 22,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                      "direction": 7
                  },
                  {
                      "distance": 2.485,
                      "streets": [
                          "N Broadway"
                      ],
                      "narrative": "Turn left onto N Broadway.",
                      "turnType": 6,
                      "startPoint": {
                          "lng": -104.987373,
                          "lat": 39.73687
                      },
                      "index": 2,
                      "formattedTime": "00:05:53",
                      "directionName": "South",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=39.73686981201172,-104.98737335205078|marker-3||39.70085144042969,-104.98760986328125|marker-4||&center=39.7188606262207,-104.98749160766602&defaultMarker=none&zoom=8&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 1024,
                      "time": 353,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                      "direction": 4
                  },
                  {
                      "distance": 0.014,
                      "streets": [],
                      "narrative": "Turn left to take the I-25 S ramp toward Colo Spgs.",
                      "turnType": 13,
                      "startPoint": {
                          "lng": -104.98761,
                          "lat": 39.700851
                      },
                      "index": 3,
                      "formattedTime": "00:00:07",
                      "directionName": "Southeast",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=39.70085144042969,-104.98760986328125|marker-4||39.70073318481445,-104.98739624023438|marker-5||&center=39.70079231262207,-104.98750305175781&defaultMarker=none&zoom=15&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 7,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_ramp_sm.gif",
                      "direction": 5
                  },
                  {
                      "distance": 108.048,
                      "streets": [
                          "I-25 S"
                      ],
                      "narrative": "Merge onto I-25 S.",
                      "turnType": 10,
                      "startPoint": {
                          "lng": -104.987396,
                          "lat": 39.700733
                      },
                      "index": 4,
                      "formattedTime": "01:35:38",
                      "directionName": "South",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [
                          {
                              "extraText": "",
                              "text": "25",
                              "type": 1,
                              "url": "http://icons.mqcdn.com/icons/rs1.png?n=25&d=SOUTH",
                              "direction": 4
                          }
                      ],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=39.70073318481445,-104.98739624023438|marker-5||38.27111053466797,-104.60508728027344|marker-6||&center=38.98592185974121,-104.7962417602539&defaultMarker=none&zoom=3&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 1152,
                      "time": 5738,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_right_sm.gif",
                      "direction": 4
                  },
                  {
                      "distance": 0.221,
                      "streets": [],
                      "narrative": "Take the 1st Street exit, EXIT 98B.",
                      "turnType": 14,
                      "startPoint": {
                          "lng": -104.605087,
                          "lat": 38.271111
                      },
                      "index": 5,
                      "formattedTime": "00:00:25",
                      "directionName": "South",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [
                          {
                              "extraText": "",
                              "text": "98B",
                              "type": 1001,
                              "url": "http://icons.mqcdn.com/icons/rs1001.png?n=98B&d=RIGHT",
                              "direction": 0
                          }
                      ],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=38.27111053466797,-104.60508728027344|marker-6||38.26797103881836,-104.6056137084961|marker-7||&center=38.269540786743164,-104.60535049438477&defaultMarker=none&zoom=11&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 1024,
                      "time": 25,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_gr_exitright_sm.gif",
                      "direction": 4
                  },
                  {
                      "distance": 0.078,
                      "streets": [
                          "E 1st St"
                      ],
                      "narrative": "Turn right onto E 1st St.",
                      "turnType": 2,
                      "startPoint": {
                          "lng": -104.605614,
                          "lat": 38.267971
                      },
                      "index": 6,
                      "formattedTime": "00:00:17",
                      "directionName": "West",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=38.26797103881836,-104.6056137084961|marker-7||38.267940521240234,-104.60704803466797|marker-8||&center=38.2679557800293,-104.60633087158203&defaultMarker=none&zoom=15&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 17,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                      "direction": 7
                  },
                  {
                      "distance": 0.079,
                      "streets": [
                          "W City Center Dr"
                      ],
                      "narrative": "E 1st St becomes W City Center Dr.",
                      "turnType": 0,
                      "startPoint": {
                          "lng": -104.607048,
                          "lat": 38.267941
                      },
                      "index": 7,
                      "formattedTime": "00:00:17",
                      "directionName": "West",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=38.267940521240234,-104.60704803466797|marker-8||38.267913818359375,-104.60850524902344|marker-9||&center=38.267927169799805,-104.6077766418457&defaultMarker=none&zoom=15&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 17,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_straight_sm.gif",
                      "direction": 7
                  },
                  {
                      "distance": 0.211,
                      "streets": [
                          "Central Main St"
                      ],
                      "narrative": "Turn left onto Central Main St.",
                      "turnType": 6,
                      "startPoint": {
                          "lng": -104.608505,
                          "lat": 38.267914
                      },
                      "index": 8,
                      "formattedTime": "00:00:25",
                      "directionName": "Southwest",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&size=225,160&locations=38.267913818359375,-104.60850524902344|marker-9||38.26542663574219,-104.61041259765625|marker-10||&center=38.26667022705078,-104.60945892333984&defaultMarker=none&zoom=12&rand=26508926&session=5fab7bfa-0148-5f21-02b4-351a-06da36ee8717",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 25,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                      "direction": 6
                  },
                  {
                      "distance": 0,
                      "streets": [],
                      "narrative": "Welcome to PUEBLO, CO.",
                      "turnType": -1,
                      "startPoint": {
                          "lng": -104.610413,
                          "lat": 38.265427
                      },
                      "index": 9,
                      "formattedTime": "00:00:00",
                      "directionName": "",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 0,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-end_sm.gif",
                      "direction": 0
                  }
              ],
              "hasFerry": false
          }
      ],
      "options": {
          "arteryWeights": [],
          "cyclingRoadFactor": 1,
          "timeType": 0,
          "useTraffic": false,
          "returnLinkDirections": false,
          "countryBoundaryDisplay": true,
          "enhancedNarrative": false,
          "locale": "en_US",
          "tryAvoidLinkIds": [],
          "drivingStyle": 2,
          "doReverseGeocode": true,
          "generalize": -1,
          "mustAvoidLinkIds": [],
          "sideOfStreetDisplay": true,
          "routeType": "FASTEST",
          "avoidTimedConditions": false,
          "routeNumber": 0,
          "shapeFormat": "raw",
          "maxWalkingDistance": -1,
          "destinationManeuverDisplay": true,
          "transferPenalty": -1,
          "narrativeType": "text",
          "walkingSpeed": -1,
          "urbanAvoidFactor": -1,
          "stateBoundaryDisplay": true,
          "unit": "M",
          "highwayEfficiency": 22,
          "maxLinkId": 0,
          "maneuverPenalty": -1,
          "avoidTripIds": [],
          "filterZoneFactor": -1,
          "manmaps": "true"
      },
      "locations": [
          {
              "dragPoint": false,
              "displayLatLng": {
                  "lng": -104.984856,
                  "lat": 39.738453
              },
              "adminArea4": "Denver County",
              "adminArea5": "Denver",
              "postalCode": "",
              "adminArea1": "US",
              "adminArea3": "CO",
              "type": "s",
              "sideOfStreet": "N",
              "geocodeQualityCode": "A5XAX",
              "adminArea4Type": "County",
              "linkId": 35589410,
              "street": "",
              "adminArea5Type": "City",
              "geocodeQuality": "CITY",
              "adminArea1Type": "Country",
              "adminArea3Type": "State",
              "latLng": {
                  "lng": -104.984853,
                  "lat": 39.738453
              }
          },
          {
              "dragPoint": false,
              "displayLatLng": {
                  "lng": -104.610413,
                  "lat": 38.265427
              },
              "adminArea4": "Pueblo County",
              "adminArea5": "Pueblo",
              "postalCode": "",
              "adminArea1": "US",
              "adminArea3": "CO",
              "type": "s",
              "sideOfStreet": "N",
              "geocodeQualityCode": "A5XAX",
              "adminArea4Type": "County",
              "linkId": 48374268,
              "street": "",
              "adminArea5Type": "City",
              "geocodeQuality": "CITY",
              "adminArea1Type": "Country",
              "adminArea3Type": "State",
              "latLng": {
                  "lng": -104.610415,
                  "lat": 38.265425
              }
          }
      ],
      "time": 6237,
      "hasUnpaved": false,
      "locationSequence": [
          0,
          1
      ],
      "hasFerry": false
  },
  "info": {
      "statuscode": 0,
      "copyright": {
          "imageAltText": "© 2020 MapQuest, Inc.",
          "imageUrl": "http://api.mqcdn.com/res/mqlogo.gif",
          "text": "© 2020 MapQuest, Inc."
      },
      "messages": []
  }}

  trip_data = {
    start_city: "Denver,CO",
    end_city: "Aspen,CO",
    location_data: @location_data,
    weather_data: @weather_data
  }
  @trip = Trip.new(trip_data)
end

  it "exists with info" do
    expect(@trip).to be_a(Trip)
    expect(@trip.id).to eq("null")
    expect(@trip.start_city).to eq("Denver,CO")
    expect(@trip.end_city).to eq("Aspen,CO")
    expect(@trip.id).to eq("null")
    expect(@trip.travel_time).to be_a(String)
    expect(@trip.weather_at_eta).to be_a(Hash)
  end
end