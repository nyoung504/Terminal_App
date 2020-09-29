require 'json'
require_relative 'mel_constants'

class DestinationRepo
  attr_reader :destinations

  include MelHelper

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
        distance: destination.distance
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
        destination['distance']
      )
    end
  end

  def create_destination
    destination = Mel.destination_input
    @destinations << Mel.new(
      destination[:location],
      destination[:address],
      destination[:url],
      destination[:distance]
    )
  end
end
