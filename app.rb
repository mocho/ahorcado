require 'sinatra'

@@palabra = "A"

get '/' do
	erb :index
end

post '/' do
  "Hello World"
end
    

