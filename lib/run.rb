require 'terminal-table'
require 'tty-prompt'
require'colorize'

require_relative 'menu'
require_relative 'mel'
require_relative 'destination_repo'

app = Menu.new
app.router
