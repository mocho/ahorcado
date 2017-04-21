#cucumber

Feature: Pagina de bienvenida del juego Ahorcado

Scenario: Mensaje de bienvenida
	When Inicie la aplicacion
	Then debo ver "Ahorcado LA362"

Scenario: 
  Given Inicie la aplicacion 
  Then debo ver "_"

Scenario:
  Given Inicie la aplicacion 
  Then debo ver el input del jugador "palabraIngresada"

Scenario:
  Given Inicie la aplicacion 
  Then debo ver el boton "Intentar"

Scenario:
  Given Inicie la aplicacion 
    And ingresa como valor de "palabraIngresada" la letra "A"  
   When click en boton "Intentar"
   Then debo ver letra "A" en lugar del guion



  
  

