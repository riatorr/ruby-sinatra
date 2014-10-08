require 'sinatra'

get '/' do
  erb :index
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

get '/decrypt' do
  "Type your encrypted message in the URL bar after a '/'."
end

not_found do
  halt 404, 'page not found'
end