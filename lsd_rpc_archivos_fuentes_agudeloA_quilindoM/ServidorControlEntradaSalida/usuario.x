program Usuario{
	version Usuario1{
		bool entrarALasInstalaciones(string codigo)=1;
		bool salirDeLasInstalaciones(string codigo)=2;
		bool esUsuarioRegistrado(string codigo)=3;
	}=1;
}=0x20000001;
