typedef struct nodo_admin1 * sigAdmin1;
typedef struct nodo_usuario1 * sigUsuario1;

struct nodo_admin1{
	char login[15];
	char clave[15];
	sigAdmin1 nodoSiguiente;
};

struct nodo_usuario1{
	char nombres[50];
	char apellidos[50];
	char rol[15];
	char codigo[8];
	sigUsuario1 nodoSiguiente;
};

program AdministrarAccesoUsuarios{
	version AdministrarAccesoUsuarios1{
		bool ingresarSistema1(sigAdmin1 admin)=4;
		bool registrarUsuario1(sigUsuario1 usuario)=5;
		bool modificarAdmin1(sigAdmin1 admin)=6;
		bool modificarUsuario1(sigUsuario1 usuario)=7;
		bool borrarUsuario1(string codigo)=8;
		bool buscarUsuario1(string codigo)=9;
	}=1;
}=0x20000002;
