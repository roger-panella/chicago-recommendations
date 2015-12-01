class PlacesController < ApplicationController

get '/' do
  @places = Place.all
  erb :read_place
end


get '/create' do
  erb :create_recommendation
end



post '/create' do
  p params
  @place = Place.new
  @place.contributor = params[:contributor]
  @place.place = params[:place]
  @place.notes = params[:notes]
  @place.type_of_place = params[:type_of_place]
  @place.save

  erb :index
end



get '/api' do
  Place.all.to_json
end

get '/api/:id' do
  return Place.find(params[:id]).to_json
end




end
