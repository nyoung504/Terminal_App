module MelHelper
  INPUTS = %i[location address url distance].freeze
  HEADINGS = %i[MELBS_LOCATION ADDRESS WEBSITE DISTANCE_FROM_AIRPORT].freeze
  DESTINATIONS_FILE = "#{Dir.pwd}/public/destinations.json".freeze
  PROMPT = TTY::Prompt.new
end
