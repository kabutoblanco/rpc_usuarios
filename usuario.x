program nodo_usuario{
	version Usuario1{
		bool entrarInstalaciones(string codigo)=1;
		bool salirInstalaciones(string codigo)=2;
		bool esUsuarioRegistrado(string codigo)=3;
	}=1;
}=0x20000001;
