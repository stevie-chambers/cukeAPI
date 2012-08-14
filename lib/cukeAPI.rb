require 'sinatra'

class CukeAPI < Sinatra::Base

  get '/' do
    "cukeAPI"
  end

  get '/api' do
    'Hello, Machine!'
  end

end