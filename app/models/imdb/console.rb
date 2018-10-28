require 'pry'
require_relative 'appearances'
require_relative 'movies'
require_relative 'shows'
require_relative 'episodes'
require_relative 'characters'
require_relative 'actors'
# ACTOR #
samuel_jackson = Actor.new("Samuel Jackson") 
john_travolta = Actor.new("John Travolta")
morgan_freeman = Actor.new("Morgan Freeman")
jim_carrey = Actor.new("Jim Carrey")
# CHARACTER #
jules_wingfield = Character.new("Jules Wingfield", samuel_jackson)
vincent_vega = Character.new("Vincent Vega", john_travolta)
bruce_almighty = Character.new("Bruce Almighty", jim_carrey )
god = Character.new("God", morgan_freeman)
narrator = Character.new("Narrator", morgan_freeman)
# MOVIES #
a = Movie.new("Through the Wormhole")
pulp_fiction = Movie.new("Pulp Fiction")
bruce_almighty_movie = Movie.new("Bruce Almighty")
# SHOWS #
wormhole = Show.new("Through the Wormhole")
# EPISODES #

# APPEARANCES #
jules_wingfield.make_an_appearance(pulp_fiction)
vincent_vega.make_an_appearance(pulp_fiction)
bruce_almighty.make_an_appearance(bruce_almighty_movie)
god.make_an_appearance(bruce_almighty_movie)
narrator.make_an_appearance(wormhole)

Pry.start