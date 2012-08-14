require File.join(File.dirname(__FILE__), '..', '..', 'lib/cukeAPI.rb')
require 'rack/test'

module AppHelper
# Rack-Test expects the app method to return a Rack application
  def app
    CukeAPI
  end
end

World(Rack::Test::Methods, AppHelper)