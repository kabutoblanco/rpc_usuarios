struct loginAdmin{
	char login[15];
	char clave[15];
};

struct registrarUsuario{
	char nombres[50];
	char apellidos[50];
	char rol[15];
	char codigo[8];
};

program AdministrarAccesoUsuarios{
	version AdministrarAccesoUsuarios1{
		bool ingresoAlSistema(loginAdmin)=1;
		bool registroUsuario(registrarUsuario)=2;
		bool modificarDatosAdmin(loginAdmin)=3;
		bool modificarDatosUsuario(registrarUsuario)=4;
		bool borrarRegistroUsuario(string codigo)=5;
		bool buscarUsuario(string codigo)=6;
	}=1;
}=0x20000001;
