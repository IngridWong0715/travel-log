require 'active_record'

ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/database.db'
end


configure :production do
  set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'production_db', pool: 2, username: 'your_username', password: 'your_password'}
end

require_all 'app'
