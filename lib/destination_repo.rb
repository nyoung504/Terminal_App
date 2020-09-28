require 'json'

class DestinationRepo
  attr_reader :destinations

  def initialize
    @destinations = JSON.parse(read_destinations)
  end

  def read_destinations
  data = File.read(Dir.pwd + "/public/destinations.json")
  end

  def write_bookmarks
  end

  def create_destination
    destination = Mel.destination_input
    @destinations << Mel.new(
      destination[:location],
      destination[:address],
      destination[:distance],
      destination[:url]
    )
  end
end
