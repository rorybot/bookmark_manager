require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'
require 'pg'

# require_relative 'database_setup'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")


class Link

  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String

end

DataMapper.finalize

DataMapper.auto_upgrade!
