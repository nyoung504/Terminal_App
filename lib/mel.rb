# class Mel for Melbourne.
class Mel
  attr_reader :destination, :address, :url, :distance

  def initialize(destination, address, url, distance)
    @destination = destination
    @address = address
    @distance = distance
    @url = url
  end
end

places = Mel.new(
  'Coffee in CBD',
  'Melbourne CBD',
  '21.4km (25 mins)',
  'https://www.broadstreet.com.au/melbourne/guides/cafes-melbourne'
)

puts "What destination would you like to add?"
print"> "
puts places = gets.chomp
puts places