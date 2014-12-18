require 'sinatra'

get '/helenisms/new' do
  erb :'helenisms/new'
end

post '/helenisms' do
  erb :'helenisms/new'
end
