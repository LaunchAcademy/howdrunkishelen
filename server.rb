require 'sinatra'
require './lib/helenism'
require './lib/witty_quip'

get '/' do
  erb :'helenisms/new'
end

post '/helenisms' do
  @helenism = Helenism.new(params[:helenism])
  @quip = WittyQuip.new(@helenism.intoxication_state)
  erb :'helenisms/new'
end
