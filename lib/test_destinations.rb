require 'terminal-table'
require 'tty-prompt'
require 'colorize'
require 'byebug'
require_relative 'destination_repo'
require_relative 'mel_constants'
require_relative 'mel'
# Arrange
dn_repo = DestinationRepo.new
# Act
dn_repo.create_destination
# Assert
if dn_repo.destinations.last.location == "Test location"
  puts "Test passed"
else
  puts "Test failed"
end