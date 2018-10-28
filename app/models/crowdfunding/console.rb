require 'pry'
require_relative 'pledges'
require_relative 'projects'
require_relative 'users'
### USERS ###
steven = User.new("Steven")
natalia = User.new("Natalia")
tim = User.new("Tim")
susana = User.new("Susana")
### PROJECTS ###
space = steven.create_a_project("Space Exploration", 50000)
red_tent = natalia.create_a_project("Red Tent", 3500)
### PLEDGES ###
p1 = natalia.back_a_project(space, 30000)
p2 = tim.back_a_project(space, 15000)
p3 = susana.back_a_project(space, 10000)
p4 = steven.back_a_project(red_tent, 2000)
p5 = susana.back_a_project(red_tent, 1000)

Pry.start