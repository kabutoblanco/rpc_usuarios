typedef struct nodo_admin2 * sigAdmin2;
typedef struct nodo_usuario2 * sigUsuario2;

struct nodo_admin2{
	char login[15];
	char clave[15];
	sigAdmin2 nodoSiguiente;
};

struct nodo_usuario2{
	char nombres[50];
	char apellidos[50];
	char rol[15];
	char codigo[8];
	sigUsuario2 nodoSiguiente;
};

program AdministrarControlEntradaSalida{
	version AdministrarControlEntradaSalida1{
		bool ingresarSistema2(sigAdmin2 admin)=10;
		bool modificarAdmin2(sigAdmin2 admin)=11;
		sigUsuario2 consultarUsuariosDentro2(void)=12;
	}=1;
}=0x20000003;
