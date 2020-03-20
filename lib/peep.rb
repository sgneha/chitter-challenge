class Peep
  attr_reader :id, :text, :timestamp, :updatedtime, :user_id

  def initialize(id, text, timestamp, updatedtime, user_id)
    @id = id
    @text = text
    @timestamp = timestamp
    @updatedtime = updatedtime
    @user_id = user_id
  end
end
