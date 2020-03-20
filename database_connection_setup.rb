require './lib/database_connection.rb'
if ENV['ENVIROMENT'] == 'test'
  DatabaseConnection.setup('chitter_test')
else
  DatabaseConnection.setup('chitter')
end

