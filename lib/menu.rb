require_relative 'mel_constants'
class Menu
  include MelHelper

  def initialize
    @destination_repo = DestinationRepo.new
  end

  def display_menu
    puts 'Welcome to the Tourist destinations of Melbourne'
    puts '1. View all destinations.'
    puts '2. Create new destination.'
    puts '3. Exit'
  end

  def selection
    print '> '
    gets.chomp.to_i
  end

  def terminal_table
    rows = @destination_repo.destinations.map do |destination|
      [destination["location"], destination["address"], destination["distance"], destination["url"]]
    end
    table = Terminal::Table.new({ headings: INPUTS, rows: rows })
    puts table
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        terminal_table
      when 2
        @destination_repo.create_destination
      when 3
        exit
      else
        puts 'Invalid Selection.'
      end
    end
  end
end