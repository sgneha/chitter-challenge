class User
  attr_reader :id, :username, :email, :password, :name, :country
#   def initialize(id, username, email, password, name, country)
#     @id = id
#     @username = username
#     @email = email
#     @password = password
#     @name = name
#     @country = country
#   end

  def initialize(username)
    @username = username
  end
end
