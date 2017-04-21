require ('./app.rb')

describe 'intento de Palabra' do
  it 'prueba de Palabra generada' do
    #preparo
    dic= Diccionario.new
        
    #accion
    @a=dic.generarPalabra
    
    #validacion
    expect(@a).to eq "Hola"
  end
  it 'prueba de resultado de resultado incorrecto' do
    #preparo
    dic= Diccionario.new
    @a=dic.generarPalabra
    #accion
    @res = dic.validar ("bebe")
    #validacion
    expect(@res).to eq false
  end
  it 'prueba de resultado de resultado correcto' do
    #preparo
    dic= Diccionario.new
    @a=dic.generarPalabra
    #accion
    @res = dic.validar ("Hola")
    #validacion
    expect(@res).to eq true
  end
end
