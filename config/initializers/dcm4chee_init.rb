require 'data_mapper'
require 'dm-sqlite-adapter'
require 'dm-migrations'
require 'dm-core'

DataMapper::setup(:default, "sqlite:db/dcm4chee.db")
# DataMapper::setup(:default, “sqlite::memory:”)
DataMapper::Logger.new(STDOUT, :debug)

Dcm4chee.configure do
  server_home '/Applications/dcm4chee-2.17.3-psql'
  jolokia_url 'http://localhost:8080/jolokia'

  repository_name :dcm4chee
  repository_uri "sqlite:db/dcm4chee.db"
# repository_uri "sqlite::memory:"
end

DataMapper.finalize.auto_migrate!
DataMapper.auto_upgrade!