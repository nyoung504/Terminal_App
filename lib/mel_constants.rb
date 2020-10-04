module MelHelper
  path = File.dirname(__FILE__).split('/')
  path.pop
  DESTINATIONS_FILE = "#{path.join('/')}/public/destinations.json".freeze
  INPUTS = %i[location address url distance].freeze
  HEADINGS = %i[MELBS_LOCATION ADDRESS WEBSITE DISTANCE_FROM_AIRPORT WEATHER].freeze
  PROMPT = TTY::Prompt.new
end
