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

post '/intentar' do
  dic= Diccionario.new
    @a=dic.generarLetra
    @res = dic.validar (params[:txtpal])

    #"Hello World" + @res.to_s
  erb :index
end
    

