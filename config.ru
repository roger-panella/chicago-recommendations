require 'sinatra/base'
require './controllers/application'  # Application controller should always be loaded first!
require './controllers/places' #then require other controllers

require './models/place'

map('/') { run PlacesController }
