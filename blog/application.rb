require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :home
end

get '/style.css' do
  scss :"/scss/style"
end
