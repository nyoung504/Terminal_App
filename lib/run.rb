require 'terminal-table'

require_relative 'menu'
require_relative 'mel'
require_relative 'destination_repo'

app = Menu.new
app.router
