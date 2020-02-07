var parametrosAjax = [];
var lasthour = 0;

window.onload = function(){

	var botonGas = document.getElementById("sensorGas");

	botonGas.onclick = function(){
		//audioalarma();
		document.getElementById("img-ajax").style.display = "block";
		parametrosAjax =["conexion_bd_gas.php","Ultimos Registros - Sensor de Gas","<th>ESTADO</th><th>FECHA y HORA</th>"];
		activarProceso();
	}
		
	var botonHumo = document.getElementById("sensorHumo");

	botonHumo.onclick = function(){
		//audioalarma();	
		document.getElementById("img-ajax").style.display = "block";
		parametrosAjax =["conexion_bd_humo.php","Ultimos Registros - Sensor de Humo","<th>ESTADO</th><th>FECHA y HORA</th>"];
		activarProceso();
	}	

	var botoninundacion = document.getElementById("sensorInundacion");

	botoninundacion.onclick = function(){
		//audioalarma();
		document.getElementById("img-ajax").style.display = "block";
		parametrosAjax =["conexion_bd_inundacion.php","Ultimos Registros - Sensor de Inundación","<th>ESTADO</th><th>FECHA y HORA</th>"];
		activarProceso();
	}

	var botonfalta220 = document.getElementById("falta220");

	botonfalta220.onclick = function(){
		//audioalarma();
		document.getElementById("img-ajax").style.display = "block";
		parametrosAjax =["conexion_bd_falta220.php","Ultimos Registros - Falta 220v","<th>ESTADO</th><th>FECHA y HORA</th>"];
		activarProceso();
	}
	
}//fin de programa

function audioalarma(){
	/*var context = new (window.AudioContext || window.webkitAudioContext)();
		var osc = context.createOscillator(); // instantiate an oscillator
		osc.type = 'square'; // this is the default - also square, sawtooth, triangle
		osc.frequency.value = 200; // Hz
		osc.connect(context.destination); // connect it to the destination
		osc.start(); // start the oscillator
		osc.stop(context.currentTime + 2); // stop 2 seconds after the current time
*/
}

function activarProceso(){
	if(actualizarData){
		clearInterval(actualizarData);
	}
	var actualizarData = setInterval(procesarAJAX, 5000);
}

function procesarAJAX(){

	var recurso = parametrosAjax[0];
	var titulo = parametrosAjax[1];
	var encabezado_tabla = parametrosAjax[2];

	var url = SERVER_URL + recurso; //direccion del archivo php
	var method = "GET";
	var request = new XMLHttpRequest(); //creación del objeto request

	request.open(method, url); // creación del mensaje HTTP

	request.send(null); //Envío del request

	/*document.getElementById("img-ajax").style.display = "block";*/

	request.onload = function(){
		if(this.readyState == 4 && this.status == 200){
		
			json_txt = this.responseText;

			json_objeto = JSON.parse(json_txt);

			i = 0;

			if(json_objeto[i].fecha_hora != lasthour){
			
				lasthour = json_objeto[i].fecha_hora;

				//limpiar la tabla alimentandolas con el objeto JSON
				var tabla = document.getElementById("tabla_registros");
				var filas = tabla.getElementsByTagName("tr");
				var q_filas = filas.length;
				for (var i = 1; i < q_filas; i++){
				filas[1].parentNode.removeChild(filas[1]);
				};

				var contenidoTabla = document.getElementById("tbody_registros").innerHTML;

				for(i=0; i < json_objeto.length; i++){
				var nuevaFila = "<tr><td>" + json_objeto[i].estado + "</td><td>" + json_objeto[i].fecha_hora + "</td></tr>";
				contenidoTabla = contenidoTabla + nuevaFila;
				if(json_objeto[i].estado=="ACTIVADO"){
				document.getElementById('sensorGas').style.background='#FF0000';}
				}
			
			document.getElementById("tbody_registros").innerHTML = contenidoTabla;
			document.getElementsByTagName("h3")[0].innerHTML = titulo;
			document.getElementById("columnas").innerHTML = encabezado_tabla;
			}
			document.getElementById("img-ajax").style.display = "none";
		}
	}
}	