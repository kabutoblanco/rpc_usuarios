typedef struct nodo_admin * sigAdmin;
typedef struct nodo_usuario * sigUsuario;

struct nodo_admin{
	char login[15];
	char clave[15];
	sigAdmin nodoSiguiente;
};

struct nodo_usuario{
	char nombres[50];
	char apellidos[50];
	char rol[15];
	char codigo[8];
	sigUsuario nodoSiguiente;
};

program AdministrarAccesoUsuarios{
	version AdministrarAccesoUsuarios1{
		bool ingresarSistema(sigAdmin admin)=1;
		bool registrarUsuario(sigUsuario usuario)=2;
		bool modificarAdmin(sigAdmin admin)=3;
		bool modificarUsuario(sigUsuario usuario)=4;
		bool borrarUsuario(string codigo)=5;
		bool buscarUsuario(string codigo)=6;
	}=1;
}=0x20000001;
