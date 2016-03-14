require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'

configure :development, :test do
  require 'pry'
end

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  @recipes = Recipe.all
  erb :index
end

get '/recipes/:id' do
  @id = params[:id]
  @recipe = Recipe.find_by(id: "#{@id}")
  @comments = @recipe.comments
  erb :show
end
