# Sweater Weather
by Corey Carter
[<img align="left" alt="corey github" width="22px" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" />][git-corey]
[<img align="left" alt="corey linkedin' | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin-corey]

## Purpose of App

- The main purpose of this app is to serve as a learning experience while we work towards mastery of our **Learning Goals**
-- Object Oriented Programming (OOP)
-- API Consumption and Exposing
-- Testing (Specifically APIs)
-- Git workflow and Project Management
-- Advanced Rails and Optimization
-- Utilizing databases

## Design

This app exists as the Back-End to a Road Trip planner which provides weather and travel data to the user. 
It consumes 3 different external APIs:
- [Mapquest](https://developer.mapquest.com/documentation/geocoding-api/)
- [Upsplash](https://unsplash.com/documentation)
- [OpenWeather](https://openweathermap.org/api/one-call-api) 

and exposes multiple internal API endpoints for a potential Front-End to consume:
- Application Landing Page (with complete weather data)
- User registration
- User login
- Roadtrip info (with destination weather and route info)

## Using the app

- Follow the instructions below under "Set-up" to make sure you've got the correct environments

## Set up

1. Make sure you have the correct Ruby version installed (2.5.3). To check your Ruby version, from your command line, run `ruby -v`
  - If you do not have the correct version, follow the instructions to install 2.5.3: from the command line, run `rbenv install 2.5.3`
1. Make sure you have the correct Rails version installed (5.2.4.3). To check your Rails version, from your command line, run `rails -v`
  - If you do not have the correct Rails version, [follow these instructions to install 2.5.4.3](https://github.com/turingschool-examples/task_manager_rails/blob/master/rails_uninstall.md)
1. Fork and Clone this repo
1. Install gem packages: `bundle install`
1. Setup the database: `rails db:create`
1. Register with the APIs listed above in **Design** and follow steps for consent
1. You will be given a client key, see below
1. Run: `bundle exec figaro install` and the following information as environment variables
```ruby
MAPQUEST_KEY: <your_key_here>
WEATHER_KEY: <your_key_here>
IMAGE_KEY: <your_key_here>
```

#### Running Locally
1. Please use (LOCAL) ```http://localhost:3000```
1. Run `rails s` from command line and use a service such as [Postman](https://www.postman.com/) to visit the following example endpoints:
`GET /api/v1/forecast?location=denver,co
Content-Type: application/json
Accept: application/json`

`GET /api/v1/backgrounds?location=denver,co
Content-Type: application/json
Accept: application/json`

`POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}`

`POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "whatever@example.com",
  "password": "password"
}`

` POST /api/v1/road_trip
Content-Type: application/json
Accept: application/json

body:

{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}`

## Next Steps
- MORE TESTING... The calls were extensive and it would be nice to more thoroughly test when given more time
- Encrypt API Keys
- Create Session and data caching
- Refactor using Rubocop
