require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  
  get '/test' do
    "Testing"
  end
  
  get '/' do
    'Bookmark manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/bookmark'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    new_url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{new_url}');")
    redirect '/bookmarks'
  end


  run! if app_file == $0
end
