require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'open-uri'

def get_model(q)
  url = "http://www.omdbapi.com/?s=#{URI.escape(q)}"
  results = JSON.load(open(url).read)
  return results["Search"]
end

get '/' do
  @name = "Lauren Itow"
  erb :home
end


get '/search' do
  @query = params[:q]
  @movies = get_model(@query)
  erb :result
end

  get '/movie' do
    @imdb = params["id"]
    erb :movie
  end