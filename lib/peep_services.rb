require './lib/database_connection'
require './lib/peep'
class PeepServices
  def self.all
    result = DatabaseConnection.query("SELECT * FROM peeps")
    result.map do |peep|
      Peep.new(peep['id'], peep['text'], peep['timestamp'], peep['updated_time'], peep['user_id'])
    end
  end

  def self.create(text, user_id, timestamp = Time.now, updatedtime = Time.now)
    DatabaseConnection.query("INSERT INTO peeps(text,timestamp,updated_time,user_id) VALUES('#{text}', '#{timestamp}', '#{updatedtime}', '#{user_id}')")
  end
end
# RETURNING id,text,timestamp,updatedtime,user_id")
