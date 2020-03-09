require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  
  get '/test' do
    "Testing"
  end
  
  get '/' do
    'Bookmark manager'
  end

  run! if app_file == $0
end
