require 'sinatra'

class CukeAPI < Sinatra::Base

  set :fruit

  get '/' do
    content_type 'text/html'
    status 200
    "cukeAPI Sinatra Server"
  end

  get '/api' do
    content_type 'text/html'
    status 200
    'cukeAPI Root'
  end

  head '/api/fruits' do
    content_type 'text/html'
    status 200
  end

  get '/api/fruits' do
    content_type 'text/html'
    status 200
    CukeAPI.fruit
  end
# Uncomment the line below if you want to run/test from the CLI, outside of RubyMine
# run! if app_file == $0
end
