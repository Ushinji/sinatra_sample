require 'sinatra'
require './models/user.rb'

get '/' do
  'Hello world!'
end

get '/users' do
  @users = User.all
  erb :'users/index'
end