require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :home
end

get '/style.css' do
  scss :"/scss/style"
end

get '/over' do
  erb :over
end

get '/contact' do
  erb :contact
end

get '/welkom/:naam' do
  @naam = params[:naam]
  erb :welkom
end
