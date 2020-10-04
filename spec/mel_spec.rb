require 'tty-prompt'
require_relative '../lib/mel'

RSpec.describe 'Destination Model' do
  it 'Destination.new create an object' do
    # Arrange
    test_destination = Mel.new(
      'Test',
      '123 address',
      'www.url.com',
      '5km (10m)'
    )
    # Act
    actual_location = test_destination.address
    # Assert
    #Testing if address works in create destination
    expect(actual_location).to eq('123 address')
  end

it 'convert to array' do
  # Arrange 
  test_destination = Mel.new(
    'Test',
    '123 address',
    'www.url.com',
    '5km (10m)'
  )
  # Act
  test_array = test_destination.convert_to_array

  # Assert  
  expect(test_array[0]).to eq(test_destination.location)
  expect(test_array[1]).to eq(test_destination.address)
  expect(test_array[2]).to eq(test_destination.url)
  expect(test_array[3]).to eq(test_destination.distance)
 end
end