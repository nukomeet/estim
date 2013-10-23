require 'rubygems'
require 'sinatra/base'
require 'haml'

class SinatraBootstrap < Sinatra::Base
  require './helpers/render_partial'

  get '/' do
    haml :index
  end

post '/estim' do
  @client_name = params[:client_name]
  puts @client_name
  @mission = params[:mission]
  puts @mission
  @rate = params[:rate]
  puts @rate
  @hosting = params[:hosting]
  puts @hosting
  haml :estim
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
