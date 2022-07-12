## fenixUSB
Levanta un USB en el caso de que no pueda ser reconocido, corrupto u otros problemas de formateo.
Me encontré por casa varios USB con bastante tiempo, cansado de escribir cada comando para limpiar los USB decidí crear este script, quizás os pueda ayudar también a vosotr@s y poder recuperar vuestros USB.

## :question: ¿Cómo utilizarlo?
*AVISO: fenixUSB hace uso de la herramienta DiskPart de Windows, por lo tanto solo es compatible en Windows.*
 1. Descarga el archivo **fenixUSB.bat**
 2. Botón derecho sobre el archivo y **Ejecutar como Administrador**
 3. Seguir los pasos
 
## :question: ¿Cómo funciona?
Este Script utiliza la herramienta por defecto de Windows DiskPart, es potente para poder gestionar nuestros discos y en este caso para poder recuperar nuestro USB.

Simplemente sigue un orden de comandos DiskPart descritos a continuación:

 1. list disk
 2. select disk <parámetro del usuario>
 3. clean
 4. create partition primary
 5. select partition 1
 6. format fs=<parámetro del usuario> label=<parámetro del usuario> quick
 7. active
 8. assign letter=X
