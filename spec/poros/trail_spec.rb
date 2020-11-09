require 'rails_helper'

describe Trail do
  before :each do
    @trail_data = {
      "trails": [
        {
            "id": 7011192,
            "name": "Boulder Skyline Traverse",
            "type": "Recommended Route",
            "summary": "The classic long mountain route in Boulder.",
            "difficulty": "black",
            "stars": 4.7,
            "starVotes": 93,
            "location": "Superior, Colorado",
            "url": "https://www.hikingproject.com/trail/7011192/boulder-skyline-traverse",
            "imgSqSmall": "https://cdn2.apstatic.com/photos/hike/7039883_sqsmall_1555092747.jpg",
            "imgSmall": "https://cdn2.apstatic.com/photos/hike/7039883_small_1555092747.jpg",
            "imgSmallMed": "https://cdn2.apstatic.com/photos/hike/7039883_smallMed_1555092747.jpg",
            "imgMedium": "https://cdn2.apstatic.com/photos/hike/7039883_medium_1555092747.jpg",
            "length": 17.3,
            "ascent": 5446,
            "descent": -5524,
            "high": 8446,
            "low": 5424,
            "longitude": -105.2582,
            "latitude": 39.9388,
            "conditionStatus": "All Clear",
            "conditionDetails": "Dry",
            "conditionDate": "2020-09-16 14:37:11"
        },
        {
            "id": 7000130,
            "name": "Bear Peak Out and Back",
            "type": "Recommended Route",
            "summary": "A must-do hike for Boulder locals and visitors alike!",
            "difficulty": "black",
            "stars": 4.6,
            "starVotes": 122,
            "location": "Boulder, Colorado",
            "url": "https://www.hikingproject.com/trail/7000130/bear-peak-out-and-back",
            "imgSqSmall": "https://cdn2.apstatic.com/photos/hike/7005382_sqsmall_1554312030.jpg",
            "imgSmall": "https://cdn2.apstatic.com/photos/hike/7005382_small_1554312030.jpg",
            "imgSmallMed": "https://cdn2.apstatic.com/photos/hike/7005382_smallMed_1554312030.jpg",
            "imgMedium": "https://cdn2.apstatic.com/photos/hike/7005382_medium_1554312030.jpg",
            "length": 5.7,
            "ascent": 2541,
            "descent": -2540,
            "high": 8342,
            "low": 6103,
            "longitude": -105.2755,
            "latitude": 39.9787,
            "conditionStatus": "All Clear",
            "conditionDetails": "",
            "conditionDate": "2020-10-22 13:00:06"
        }]}
      @weather_data = {
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
        ]}
                    }
        @my_location = "denver,co"

        @trail = Trail.new(@trail_data, @weather_data, @my_location)
    end

    it "exists with attributes" do
    expect(@trail).to be_a(Trail)
    expect(@trail.id).to eq("null")
    expect(@trail.location).to eq("denver,co")
    expect(@trail.forecast).to be_a(Hash)
    expect(@trail.forecast).to have_key(:summary)
    expect(@trail.forecast).to have_key(:temperature)
    expect(@trail.trails).to be_an(Array)

    @trail.trails.each do |trail|
      expect(trail).to have_key(:name)
      expect(trail[:name]).to be_a(String)

      expect(trail).to have_key(:summary)
      expect(trail[:summary]).to be_a(String)

      expect(trail).to have_key(:difficulty)
      expect(trail[:difficulty]).to be_a(String)

      expect(trail).to have_key(:location)
      expect(trail[:location]).to be_a(String)

      expect(trail).to have_key(:distance_to_trail)
      expect(trail[:distance_to_trail]).to be_a(String)
    end
  end              
end          