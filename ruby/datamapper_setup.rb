require 'data_mapper'
require 'pry'

env = ENV['RACK_ENV'] || "development"
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/mind_the_code_#{env}")
DataMapper::Logger.new($stdout, :debug)
DataMapper.auto_upgrade!
DataMapper.finalize
