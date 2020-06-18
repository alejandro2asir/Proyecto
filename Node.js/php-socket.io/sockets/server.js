const express = require('express');
const app = express();

const http = require('http');

const server = http.createServer(app);

server.listen(3000);

app.use(express.static('public'));

const socketIo = require('socket.io');
const io = socketIo.listen(server);

//Creando arrays dinamicos de personas conectadas
UsersOnId = new Array();
IdsOnUsers = new Array();

io.on('connect', function(socket){
	console.log('nueva conexion id: ' + socket.id);

	socket.on('datos_usuario', function(datos){
		usuario = datos.usuario
		id_socket = socket.id;
		
		//Guardando usuario por ID
		UsersOnId[id_socket] = usuario;

		//Guardando ID por usuario
		if (IdsOnUsers[usuario] == null) {
			IdsOnUsers[usuario] = new Array();
		}

		IdsOnUsers[usuario].push(id_socket);

		console.log('USUARIOS ONLINE');
		console.log('-------usuario por id-------');
		console.log(UsersOnId);
		console.log('-------IDs por usuarios-------');
		console.log(IdsOnUsers);
		console.log('-------cantidad de usuarios en linea-------');
		console.log(Object.keys(IdsOnUsers).length);
		console.log('-----------------------------------------');


		console.log('correo: '+ datos.correo + ' usuario: '+ datos.usuario + ' id_socket: ' + id_socket);
		io.emit('nuevo_usuario', {user: datos.usuario});
	});
	

	socket.on('send_mensaje', function(datos){
		if (datos.destinatario != null) {
			console.log(datos.usuario + ' esta enviando un mensaje especifico');
			destinatario = datos.destinatario;
			id_onlines = IdsOnUsers[destinatario];
			for (var i = 0; i < id_onlines.length; i++) {
				console.log(id_onlines[i])
				io.to(id_onlines[i]).emit('nuevo_mensaje', {user: datos.usuario, mensaje: datos.mensaje});
				}
			io.to(socket.id).emit('nuevo_mensaje', {user: datos.usuario, mensaje: datos.mensaje});
		}else {
		console.log(datos.usuario + ' esta enviando un mensaje');
		io.emit('nuevo_mensaje', {user: datos.usuario, mensaje: datos.mensaje});
		}
	});

	socket.on('disconnect', function(){
		id_user = socket.id;

		if (UsersOnId[id_user]);

		//Primero cogemos su usuario a partir de su ID
		usuario = UsersOnId[id_user];
		//Borramos el elemento
		delete UsersOnId[id_user];
		//Cogemos las IDs del usuario en una variable
		array_ids = IdsOnUsers[usuario];
		//Recorremos los elementos para obtener el Id que borrar
		for (var i = 0; i < array_ids.length; i++) {
			if (id_user == array_ids[i]) {
				id_to_borrar = i;
			}
		}
		//Borramos id con ayuda de su posicion
		IdsOnUsers[usuario].splice(id_to_borrar, 1);
		//Si no quedaban mas Ids las borramos
		if (IdsOnUsers[usuario].length < 1) {
			delete IdsOnUsers[usuario];
		}
		console.log('usuario: '+usuario + ' desconectandose');
	})

});