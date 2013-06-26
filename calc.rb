require 'sinatra'
require 'sinatra/reloader'


#localhost:4567

# get '/name/:first/:last' do

#   "Hello #{params[:first]} #{params[:last]}"
# end

get '/multiply/:first/:last' do
  answer = params[:first].to_i * params[:last].to_i
   "answer: #{answer}"
end

get '/add/:first/:last' do
  answer = params[:first].to_i + params[:last].to_i
    "answer #{answer}"
end

get '/divide/:first/:last' do
  answer = params[:first].to_i / params[:last].to_i
    "answer: #{answer}"
end

get '/subtract/:first/:last' do
  answer = params[:first].to_i - params[:last].to_i
    "answer: #{answer}"
end

