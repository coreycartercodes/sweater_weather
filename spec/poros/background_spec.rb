require 'rails_helper'

describe Background do
  before :each do
    @image_info = {
                      "id": "36XAdOONlxc",
                      "created_at": "2020-01-14T01:34:26-05:00",
                      "updated_at": "2020-11-09T08:12:13-05:00",
                      "promoted_at": 'null',
                      "width": 6000,
                      "height": 4000,
                      "color": "#130E0B",
                      "blur_hash": "LFP6,E~pxv?vMdxuo#%g%fRPD%IA",
                      "description": "Sleeping Owl",
                      "alt_description": 'null',
                      "urls": {
                          "raw": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE4MTM0MX0",
                          "full": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE4MTM0MX0",
                          "regular": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE4MTM0MX0",
                          "small": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE4MTM0MX0",
                          "thumb": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE4MTM0MX0"
                      },
                      "links": {
                          "self": "https://api.unsplash.com/photos/36XAdOONlxc",
                          "html": "https://unsplash.com/photos/36XAdOONlxc",
                          "download": "https://unsplash.com/photos/36XAdOONlxc/download",
                          "download_location": "https://api.unsplash.com/photos/36XAdOONlxc/download"
                      },
                      "categories": [],
                      "likes": 5,
                      "liked_by_user": false,
                      "current_user_collections": [],
                      "sponsorship": "null",
                      "user": {
                          "id": "FNDAToNnUJc",
                          "updated_at": "2020-11-07T20:13:08-05:00",
                          "username": "joshua_forbes",
                          "name": "Joshua Forbes",
                          "first_name": "Joshua",
                          "last_name": "Forbes",
                          "twitter_username": "JustJoshSA",
                          "portfolio_url": "https://www.joshuaforbes.co.za",
                          "bio": "IG: @joshua_forbes\r\nTW: @JustJoshSA\r\nFB: @JustJoshZA\r\n\r\nhttps://www.joshuaforbes.co.za ",
                          "location": "South Africa",
                          "links": {
                              "self": "https://api.unsplash.com/users/joshua_forbes",
                              "html": "https://unsplash.com/@joshua_forbes",
                              "photos": "https://api.unsplash.com/users/joshua_forbes/photos",
                              "likes": "https://api.unsplash.com/users/joshua_forbes/likes",
                              "portfolio": "https://api.unsplash.com/users/joshua_forbes/portfolio",
                              "following": "https://api.unsplash.com/users/joshua_forbes/following",
                              "followers": "https://api.unsplash.com/users/joshua_forbes/followers"
                          },
                          "profile_image": {
                              "small": "https://images.unsplash.com/profile-1500881487277-547e141db773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                              "medium": "https://images.unsplash.com/profile-1500881487277-547e141db773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                              "large": "https://images.unsplash.com/profile-1500881487277-547e141db773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
                          },
                          "instagram_username": "joshua_forbes",
                          "total_collections": 0,
                          "total_likes": 304,
                          "total_photos": 86,
                          "accepted_tos": true
                      }
                    }
                    @location = "Chi-Town"
      @background = Background.new(@image_info, @location)
  end

  it "exists with info" do
    expect(@background).to be_a(Background)
    expect(@background.id).to eq("null")
    expect(@background.image).to be_a(Hash)
    expect(@background.image).to have_key(:location)
    expect(@background.image[:location]).to eq('Chi-Town')
    expect(@background.image).to have_key(:image_url)
    expect(@background.image[:image_url]).to be_a(String)
    expect(@background.image[:credit]).to be_a(Hash)
    expect(@background.image[:credit]).to have_key(:source)
    expect(@background.image[:credit][:source]).to be_a(String)
    expect(@background.image[:credit]).to have_key(:author)
    expect(@background.image[:credit][:author]).to be_a(String)
    expect(@background.image[:credit]).to have_key(:logo)
    expect(@background.image[:credit][:logo]).to be_a(String)
  end
end