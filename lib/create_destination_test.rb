require 'terminal-table'
require 'tty-prompt'
require_relative 'destination_repo'
require_relative 'mel'
require_relative 'mel_constants'

# Arrange
ds_repo = DestinationRepo.new 
# Act
ds_repo.create_destination
# Assert
# Testing for location by passing through Test L
if ds_repo.destinations.last.location == 'Test L'
  puts 'test passed'
else
  puts 'test failed'
  end 
end