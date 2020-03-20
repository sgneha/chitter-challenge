require './lib/database_connection'
require './lib/user'
class UserServices
  def self.create(name, username, email, password, country)
    
    result = DatabaseConnection.query("INSERT INTO users (name, username, email, password,country) VALUES ('#{name}', '#{username}', '#{email}', '#{password}','#{country}');")
    # User.new(result['id'].to_i, result['username'], result['email'], result['password'], result['name'], result['country'])
    User.new(result['username'])
    
  end

  def self.exists?(username, email)
    if (DatabaseConnection.query("SELECT * FROM users WHERE username ='#{username}';").any? ||
   DatabaseConnection.query("SELECT * FROM users WHERE email ='#{email}';").any?)
      return true
    else 
      return false
    end
  end
end
