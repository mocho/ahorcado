require 'sinatra'

@@palabra = "A"

class Diccionario
  
  def generarLetra
    @@palabra
  end
  def validar (letra)
    if @@palabra == letra.to_s
      return true
    else false
    end
  end

end
 
get '/' do
	erb :index
end

post '/' do
  "Hello World"
end
    

