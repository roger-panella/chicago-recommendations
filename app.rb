require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'chicago_recommendations'
)

get '/' do
  "THIS WORKS"
end
