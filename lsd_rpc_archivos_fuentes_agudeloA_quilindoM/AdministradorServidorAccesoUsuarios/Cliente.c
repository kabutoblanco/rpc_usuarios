/*
 * This is sample code generated by rpcgen.
 * These are only templates and you can use them
 * as a guideline for developing your own functions.
 */

#include "accesoUsuarios.h"


void
administraraccesousuarios_1(char *host)
{
	CLIENT *clnt;
	bool_t  *result_1;
	loginAdmin  ingresoalsistema_1_arg;
	bool_t  *result_2;
	registrarUsuario  registrousuario_1_arg;
	bool_t  *result_3;
	loginAdmin  modificardatosadmin_1_arg;
	bool_t  *result_4;
	registrarUsuario  modificardatosusuario_1_arg;
	bool_t  *result_5;
	char * borrarregistrousuario_1_arg;
	bool_t  *result_6;
	char * buscarusuario_1_arg;

#ifndef	DEBUG
	clnt = clnt_create (host, AdministrarAccesoUsuarios, AdministrarAccesoUsuarios1, "udp");
	if (clnt == NULL) {
		clnt_pcreateerror (host);
		exit (1);
	}
#endif	/* DEBUG */

	result_1 = ingresoalsistema_1(&ingresoalsistema_1_arg, clnt);
	if (result_1 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_2 = registrousuario_1(&registrousuario_1_arg, clnt);
	if (result_2 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_3 = modificardatosadmin_1(&modificardatosadmin_1_arg, clnt);
	if (result_3 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_4 = modificardatosusuario_1(&modificardatosusuario_1_arg, clnt);
	if (result_4 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_5 = borrarregistrousuario_1(&borrarregistrousuario_1_arg, clnt);
	if (result_5 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_6 = buscarusuario_1(&buscarusuario_1_arg, clnt);
	if (result_6 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
#ifndef	DEBUG
	clnt_destroy (clnt);
#endif	 /* DEBUG */
}


int
main (int argc, char *argv[])
{
	char *host;

	if (argc < 2) {
		printf ("usage: %s server_host\n", argv[0]);
		exit (1);
	}
	host = argv[1];
	administraraccesousuarios_1 (host);
exit (0);
}
