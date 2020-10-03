require 'tty-prompt'
require_relative '../lib/mel'

RSpec.describe 'Destination Model' do
  it 'Destination.new create an object' do
    # Arrange
    test_destination = Mel.new(
      'Test',
      'address',
      'www.url.com',
      '5km (10m)'
    )
    # Act
    actual_location = test_destination.address
    # Assert
    expect(actual_location).to eq('address')
  end
end
