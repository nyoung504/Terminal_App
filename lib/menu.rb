class Menu
  def initialize
    @destination = []
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

  def create_destination
    destination = Mel.destination_input
    @destination << Mel.new(
      destination[:destination],
      destination[:address],
      destination[:distance],
      destination[:url]
    )
  end

  def router
    loop do
      display_menu
      case selection
      when 1
        p @destination
      when 2
        create_destination
      when 3
        exit
      else
        puts 'Invalid Selection.'
      end
    end
  end
end
