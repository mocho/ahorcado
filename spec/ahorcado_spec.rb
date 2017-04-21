require ('./app.rb')

describe 'intento de letra' do
  it 'prueba de letra generada' do
    #preparo
    dic= Diccionario.new
        
    #accion
    @a=dic.generarLetra
    
    #validacion
    expect(@a).to eq "A"
  end
  it 'prueba de resultado de resultado incorrecto' do
    #preparo
    dic= Diccionario.new
    @a=dic.generarLetra
    #accion
    @res = dic.validar ("b")
    #validacion
    expect(@res).to eq false
  end
  it 'prueba de resultado de resultado correcto' do
    #preparo
    dic= Diccionario.new
    @a=dic.generarLetra
    #accion
    @res = dic.validar ("A")
    #validacion
    expect(@res).to eq true
  end
end
