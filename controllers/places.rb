class PlacesController < ApplicationController

get '/' do
  erb :index
end

get '/api' do
  Place.all.to_json
end


end
