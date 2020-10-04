require_relative 'mel_constants'
# class Mel for Melbourne.
class Mel
  attr_reader :location, :address, :url, :distance, :weather

  include MelHelper

  def initialize(location, address, url, distance, _weather)
    @location = location
    @address = address
    @url = url
    @distance = distance
    @weather = @weather
  end

  def convert_to_array
    [@location, @address, @url, @distance, @weather]
  end

  def self.destination_input
    destination = {}
    INPUTS.each do |input|
      puts "What is the #{input}?"
      print '> '
      destination[input] = gets.chomp
    end
    destination
  end
end
