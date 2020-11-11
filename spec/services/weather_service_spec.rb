require 'rails_helper'

describe WeatherService do
  it 'sends weather details', :vcr do
    response = WeatherService.forecast("39.738453", "-104.984853")
    expect(response[:current]).to have_key(:dt)
    expect(response[:current]).to have_key(:sunrise)
    expect(response[:current]).to have_key(:sunset)
    expect(response[:current]).to have_key(:temp)
    expect(response[:current]).to have_key(:feels_like)
    expect(response[:current]).to have_key(:humidity)
    expect(response[:current]).to have_key(:uvi)
    expect(response[:current]).to have_key(:visibility)
    expect(response[:current]).to have_key(:weather)
    expect(response[:current]).to have_key(:pressure)
    expect(response[:current]).to have_key(:clouds)
    expect(response[:current]).to have_key(:wind_speed)
    expect(response[:current]).to have_key(:wind_deg)
  end
end