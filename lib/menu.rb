require_relative 'mel_constants'
class Menu
  include MelHelper

  def initialize
    @destination_repo = DestinationRepo.new
  end

  def selection
    PROMPT.select("Welcome to Melbourne/'s top Tourist Destinations".cyan.on_blue.bold) do |menu|
      menu.choice({ name: 'View all destinations', value: 1 })
      menu.choice({ name: 'Create new destination', value: 2 })
      menu.choice({ name: 'Exit', value: 3 })
    end
  end

  def terminal_table
    rows = @destination_repo.destinations.map(&:convert_to_array)
    table = Terminal::Table.new({ headings: HEADINGS, rows: rows, title: "Destinations in Melbourne VIC".colorize(:cyan).on_blue.underline})
    puts table
  end

  def router
    loop do
      case selection
      when 1
        terminal_table
      when 2
        @destination_repo.create_destination
      when 3
        @destination_repo.write_destination
        exit
      else
        puts 'Invalid Selection.'
      end
    end
  end
end
