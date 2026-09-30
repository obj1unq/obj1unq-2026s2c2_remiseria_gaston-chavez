### 4. Para reflexionar:

¿Da igual que las colecciones de flotas y viajes en la sucursal sean listas o conjuntos? Si piensas que no, cambia una implementación
por la otra y revisa el resultado.
   -el resultado con las listas y conjuntos no son igual debido a la implementacion del metodo reservasDe(vehiculo), dado que este mismo devuelve una lista,
    si en un inicio tengo flotas y viajes con conjuntos, se rompe a la hora de probar el ultimo test

¿Dónde se instancia un viaje, dentro o fuera de la clase Sucursal?. Pensar como sería la alternativa.
   -viaje se instancia adentro de la Clase sucursal. Si tuviera que instanciarlo por afuera de la sucursal, 
   el mensaje registrarViajes(vehiculo,reserva) en debes de recibir la reserva y el vehiculo como parametro, recibe el viaje como parametro solamente registrarViajes(viaje), 
   pero aun asi tendria que validarse los mensajes 

¿La combi es un objeto autodefinido o una instancia de clase? ¿Se puede usar la otra variante indistintamente?
   -la combi es un Objeto autodefinido dado que el enunciado me indica que es unico para toda la empresa.
    se podria usar la combi como una Clase si la empresa tuviera mas de una combi

Dibujar el diagrama dinámico que muestra el estado final del último test.
  -Link diagrama dinamico: https://imgur.com/a/Ppd8b5Q

Dibujar con un diagrama estático la relación entre los tipos Viaje, Reserva y Vehículo (y las entidades que las implementan).
  -Link diagrama estatico (descargar la imagen para mejor visualizacion):https://imgur.com/a/xg4u0B7