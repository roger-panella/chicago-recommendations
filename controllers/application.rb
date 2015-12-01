#defining the starting point for my application
#this used to be app.rb
#however, app.rb became too much stuff going on
#now we're going to give controllwe
class ApplicationController < Sinatra::Base

require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
 :adapter => 'postgresql',
 :database => 'chicago_recommendations'
)

#i need to specify my views folder
set :views, File.expand_path('../../views',__FILE__)


 not_found do
   erb :fourohfour
 end


end
