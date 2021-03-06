require 'faraday'
require 'json'
require_relative 'mel_constants'

class DestinationRepo
  attr_reader :destinations

  # Include constants file for the headings in the table and the fixed inputs
  include MelHelper

  # Initalize parsed json file
  def initialize
    @destinations = JSON.parse(read_destination)
    new_destinations
  end

  def read_destination
    File.read(DESTINATIONS_FILE)
  end

  def write_destination
    data = @destinations.map do |destination|
      {
        location: destination.location,
        address: destination.address,
        url: destination.url,
        distance: destination.distance,
        weather: destination.weather
      }
    end
    File.write(DESTINATIONS_FILE, JSON.pretty_generate(data))
  end

  def new_destinations
    @destinations = @destinations.map do |destination|
      Mel.new(
        destination['location'],
        destination['address'],
        destination['url'],
        destination['distance'],
        destination['weather']
      )
    end
  end

  # pushing a new destination into the table
  def create_destination
    destination = Mel.destination_input
    @destinations << Mel.new(
      destination[:location],
      destination[:address],
      destination[:url],
      destination[:distance],
      destination[:weather]
    )
  end

  # def weather_call(response)
  # you need to pass in victoria, australia to get the correct data
  response = JSON.parse(Faraday.get('http://api.openweathermap.org/data/2.5/weather?q=melbourne, victoria, australia&appid=ad3fbd690385eade58c5db2f5e1042d4&units=metric').body)
  weather = response['results']
  # end
end
