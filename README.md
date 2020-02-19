# web_cabys

__CAByS__ se trata de una webapp que diseñé utilizando __HTML5, CSS3, Php, PhpMyAdmin__ para monitorear una serie de detectores (humo, gas, agua) conectados a una central que, además, controla el funcionamiento de dos bombas de agua. Este proyecto continúa en proceso ya que estoy realizando el desarrollo web íntegro, como también el hardware de la central y la programación del microcontrolador.

Se puede ver el proyecto subido a 000webhost https://cabys.000webhostapp.com/ 

Para correr localmente este proyecto debemos:

1. Hacer un Pull del mismo
2. Crear una base de datos y ejecutar el archivo _id9856299_cabys.sql_
3. Crear el archivo _.env_ copiandolo desde el ejemplo _.env.example_ 
4. Cargar los datos de la base de datos creada en el paso anterior.
5. Abrir desde el apache2 el _index.html_
