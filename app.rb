require 'sinatra'

@@palabra = "Hola"
@@palabraVisual = "_ _ _ _"

class Diccionario
  def initialize 
    @palabraVisual = @@palabraVisual  
  end
  def mostrarPalabra
    @palabraVisual  
  end  
  def generarPalabra
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
  dic= Diccionario.new
  @a=dic.generarPalabra  
  @palabraVisual =dic.mostrarPalabra
	erb :index
end

post '/intentar' do
    dic= Diccionario.new
    @a=dic.generarPalabra
    @palabraVisual =dic.mostrarPalabra
    @res = dic.validar (params[:txtpal])

  erb :index
end
    

