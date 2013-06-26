require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'open-uri'

def get_model(q)
  url = "http://www.omdbapi.com/?s=#{URI.escape(q)}"
  results = JSON.load(open(url).read)
  return results["Search"]
end

def get_info(i)
  url = "http://www.omdbapi.com/?i=#{URI.escape(i)}"
  result = JSON.load(open(url).read)
  return result["Title"], result["Plot"]
end 

get '/' do
  @name = "Hey, friend. Welcome!"
  erb :home
end


get '/search' do
  @query = params[:q]
  @movies = get_model(@query)
  erb :result
end

  get '/movie' do
    @imdb = params["id"]
    @title, @plot = get_info(@imdb)
    erb :movie
  end