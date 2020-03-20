require 'database_connection'
describe DatabaseConnection do
  describe '.setup' do
    it 'sets up connection to database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'chitter_test')
      DatabaseConnection.setup('chitter_test')
    end
  end
end
