require 'sinatra'
require './models/user.rb'

get '/' do
  'Hello world!'
end

get '/users' do
  @users = User.all
  erb :'users/index'
end

post '/users' do
  user = User.new
  user.name = params[:name]
  user.email = params[:email]
  user.save
  redirect '/users'
end