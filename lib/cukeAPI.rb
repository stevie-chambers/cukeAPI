require 'sinatra/base'

class CukeAPI < Sinatra::Base
  get '/' do
    content_type 'text/html'
    status 200
    "cukeAPI"
  end

  get '/api' do
    content_type 'text/html'
    status 200
    'Hello, Machine!'
  end

# Uncomment the line below if you want to run/test from the CLI, outside of RubyMine
#  run! if app_file == $0
end
