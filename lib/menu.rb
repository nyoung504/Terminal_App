class Menu
  def initialize
    @destinations = []
  end

  def display_menu
    puts "Welcome to the Tourist destinations of Melbourne"
    puts "1. View all destinations."
    puts "2. Create new destination."
    puts "3. Exit"
  end

  def selection
    print "> "
    gets.chomp.to_i
  end

  def router
    loop do   
      display_menu
    case selection
    when 1
    when 2 
    when 3
      exit
    else
      puts "Invalid Selection."
  end
end
end
end