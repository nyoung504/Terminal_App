require_relative 'mel_constants'
# class Mel for Melbourne.
class Mel
  attr_reader :destination, :address, :url, :distance

  include MelHelper

  def initialize(destination, address, url, distance)
    @destination = destination
    @address = address
    @distance = distance
    @url = url
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
