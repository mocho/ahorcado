#cucumber

Feature: Pagina de bienvenida del juego Ahorcado

Scenario: Mensaje de bienvenida
	When Inicie la aplicacion
	Then debo ver "Ahorcado LA362"

Scenario: 
  Given Inicie la aplicacion 
  Then debo ver "_ _ _ _"

Scenario:
  Given Inicie la aplicacion 
  Then debo ver el input del jugador "palabraIngresada"

Scenario:
  Given Inicie la aplicacion 
  Then debo ver el boton "intentar"

Scenario:
  Given Inicie la aplicacion 
  And ingresa como valor de "palabraIngresada" la palabra "Hola"  
  When click en boton "intentar"
  Then debo ver letra "true" en lugar del guion

#Scenario:
#  Given Inicie la aplicacion 
#    And ingresa como valor de "palabraIngresada" la letra "H"  
#   When click en boton "Intentar"
#   Then debo ver letra "H" en lugar del guion en su posicion


  
  

