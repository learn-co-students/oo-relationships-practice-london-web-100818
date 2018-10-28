require 'pry'
require_relative 'clients'
require_relative 'locations'
require_relative 'trainers'

moorgate = Location.new("Moorgate")
soho = Location.new("Soho")

yoda = Trainer.new("Yoda")
gandalf = Trainer.new("Gandalf")

steven = Client.new("Steven", soho, yoda)
natalia = Client.new("Natalia", moorgate, gandalf)
marju = Client.new("Marju", moorgate, gandalf)

Pry.start
