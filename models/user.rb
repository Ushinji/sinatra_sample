require 'yaml'
require 'sinatra/activerecord'

config = YAML.load_file('./database.yml')
ActiveRecord::Base.establish_connection(config['development'])
class User < ActiveRecord::Base
end