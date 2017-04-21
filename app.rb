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

  def actualizarVisual
    @palabraVisual = "H _ _ _"
  end
  
  def validar (letra)
    if @@palabra.upcase == letra.to_s.upcase
      #ganaste
      return "ganaste"
    else 
      @pos = @@palabra.index(letra.to_s) 
      if @pos != nil
        actualizarVisual
        return "letra encontrada"        
      else
       return "intenta de nuevo"
      end
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
    @res = dic.validar (params[:txtpal])
    @palabraVisual =dic.mostrarPalabra

  erb :index
end
    

