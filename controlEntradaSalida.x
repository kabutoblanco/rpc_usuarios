typedef struct nodo_admin * sigAdmin;

struct nodo_admin{
	char login[15];
	char clave[15];
	sigAdmin nodoSiguiente; 
};

program AdministrarControlEntradaSalida{
	version AdministrarControlEntradaSalida1{
		bool ingresarSistema(sigAdmin admin)=1;
		bool modificarAdmin(sigAdmin admin)=2;
		sigAdmin consultarUsuariosDentro(void)=3;
	}=1;
}=0x20000001;
