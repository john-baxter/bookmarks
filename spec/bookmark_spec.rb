require 'bookmark'
# require 'pg'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.bbc.co.uk/sport');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('thechive.com');")
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.bbc.co.uk/sport")
      expect(bookmarks).to include("www.google.co.uk")
      expect(bookmarks).to include("thechive.com")
    end
  end
end