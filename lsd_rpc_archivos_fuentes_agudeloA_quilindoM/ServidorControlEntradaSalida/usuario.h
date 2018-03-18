/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _USUARIO_H_RPCGEN
#define _USUARIO_H_RPCGEN

#include <rpc/rpc.h>


#ifdef __cplusplus
extern "C" {
#endif


#define nodo_usuario 0x20000001
#define Usuario1 1

#if defined(__STDC__) || defined(__cplusplus)
#define entrarInstalaciones 1
extern  bool_t * entrarinstalaciones_1(char **, CLIENT *);
extern  bool_t * entrarinstalaciones_1_svc(char **, struct svc_req *);
#define salirInstalaciones 2
extern  bool_t * salirinstalaciones_1(char **, CLIENT *);
extern  bool_t * salirinstalaciones_1_svc(char **, struct svc_req *);
#define esUsuarioRegistrado 3
extern  bool_t * esusuarioregistrado_1(char **, CLIENT *);
extern  bool_t * esusuarioregistrado_1_svc(char **, struct svc_req *);
extern int nodo_usuario_1_freeresult (SVCXPRT *, xdrproc_t, caddr_t);

#else /* K&R C */
#define entrarInstalaciones 1
extern  bool_t * entrarinstalaciones_1();
extern  bool_t * entrarinstalaciones_1_svc();
#define salirInstalaciones 2
extern  bool_t * salirinstalaciones_1();
extern  bool_t * salirinstalaciones_1_svc();
#define esUsuarioRegistrado 3
extern  bool_t * esusuarioregistrado_1();
extern  bool_t * esusuarioregistrado_1_svc();
extern int nodo_usuario_1_freeresult ();
#endif /* K&R C */

#ifdef __cplusplus
}
#endif

#endif /* !_USUARIO_H_RPCGEN */
