struct loginAdmin{
	char login[15];
	char clave[15];
};

program AdministrarControlEntradaSalida{
	version AdministrarControlEntradaSalida1{
		bool ingresoAlSistema(loginAdmin)=1;
		bool modificarDatosAdmin(loginAdmin)=2;
		void consultarUsuariosDentroInstalaciones()=3;
	}=1;
}=0x20000001;
