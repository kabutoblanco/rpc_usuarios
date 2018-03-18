#!/bin/bash
chmod +777 accesoUsuarios.x
chmod +777 controlEntradaSalida.x
chmod +777 usuario.x
name="lsd_rpc_archivos_fuentes_agudeloA_quilindoM"
name1="AdministradorServidorAccesoUsuarios"
name2="AdministradorServidorControEntradaSalida"
name3="ServidorAccesoUsuarios"
name4="ServidorControlEntradaSalida"
name5="Usuario"
mkdir $name
echo "mkdir "$name
rpcgen accesoUsuarios.x
echo "rpcgen accesoUsuarios.x"
rpcgen controlEntradaSalida.x
echo "rpcgen controlEntradaSalida.x"
rpcgen usuario.x
echo "rpcgen usuario.x"
chmod +777 *.c
chmod +777 *.h
cd $name
echo "cd "$name
mkdir $name1
echo "mkdir "$name1
mkdir $name2
echo "mkdir "$name2
mkdir $name3
echo "mkdir "$name3
mkdir $name4
echo "mkdir "$name4
mkdir $name5
echo "mkdir "$name5

cp ../accesoUsuarios.x $name1
echo "cp ../accesoUsuarios.x "$name1
cp ../accesoUsuarios.h $name1
echo "cp ../accesoUsuarios.h "$name1
cp ../accesoUsuarios_clnt.c $name1
echo "cp ../accesoUsuarios_clnt.c "$name1
cp ../accesoUsuarios_xdr.c $name1
echo "cp ../accesoUsuarios_xdr.c "$name1

cp ../controlEntradaSalida.x $name2
echo "cp ../controlEntradaSalida.x "$name2
cp ../controlEntradaSalida.h $name2
echo "cp ../controlEntradaSalida.h "$name2
cp ../controlEntradaSalida_clnt.c $name2
echo "cp ../controlEntradaSalida_clnt.c "$name2
cp ../controlEntradaSalida_xdr.c $name2
echo "cp ../controlEntradaSalida_xdr.c "$name2

cp ../accesoUsuarios.x $name3
echo "cp ../accesoUsuarios.x "$name3
cp ../accesoUsuarios.h $name3
echo "cp ../accesoUsuarios.h "$name3
cp ../accesoUsuarios_svc.c $name3
echo "cp ../accesoUsuarios_svc.c "$name3
cp ../accesoUsuarios_xdr.c $name3
echo "cp ../accesoUsuarios_xdr.c "$name3

cp ../accesoUsuarios.x $name4
echo "../accesoUsuarios.x "$name4
cp ../accesoUsuarios.h $name4
echo "../accesoUsuarios.h "$name4
cp ../accesoUsuarios_clnt.c $name4
echo "../accesoUsuarios_clnt.c "$name4
cp ../accesoUsuarios_xdr.c $name4
echo "../accesoUsuarios_xdr.c "$name4 
cp ../usuario.x $name4
echo "../usuario.x "$name4
cp ../usuario.h $name4
echo "../usuario.h "$name4
cp ../usuario_svc.c $name4
echo "../usuario_svc.c "$name4

cp ../usuario.x $name5
echo "../usuario.x "$name5
cp ../usuario.h $name5
echo "../usuario.h "$name5
cp ../usuario_clnt.c $name5
echo "../usuario_clnt.c "$name5 

cd $name1
echo "cd "$name1
rpcgen -Sc accesoUsuarios.x > Cliente.c
echo "rpcgen -Sc accesoUsuarios.x > Cliente.c"
rpcgen -Sm accesoUsuarios.x > makeC
echo "rpcgen -Sm accesoUsuarios.x > makeC"
chmod +777 Cliente.c
chmod +777 makeC

cd ../$name2
echo "cd ../"$name2
rpcgen -Sc controlEntradaSalida.x > Cliente.c
echo "rpcgen -Sc controlEntradaSalida.x > Cliente.c"
rpcgen -Sm controlEntradaSalida.x > makeC
echo "rpcgen -Sm controlEntradaSalida.x > makeC"
chmod +777 Cliente.c
chmod +777 makeC

cd ../$name3
echo "cd ../"$name3
rpcgen -Ss accesoUsuarios.x > Servidor.c
echo "rpcgen -Ss accesoUsuarios.x > Servidor.c"
rpcgen -Sm accesoUsuarios.x > makeS
echo "rpcgen -Sm accesoUsuarios.x > makeS"
chmod +777 Servidor.c
chmod +777 makeS

cd ../$name4
echo "cd ../"$name4
rpcgen -Sc accesoUsuarios.x > Cliente.c
echo "rpcgen -Sc accesoUsuarios.x > Cliente.c"
rpcgen -Ss usuario.x > Servidor.c
echo "rpcgen -Ss usuario.x > Servidor.c"
rpcgen -Sm accesoUsuarios.x > makeC
echo "rpcgen -Sm accesoUsuarios.x > makeC"
rpcgen -Sm usuario.x > makeS
echo "rpcgen -Sm usuario.x > makeS"
chmod +777 Servidor.c
chmod +777 makeS
chmod +777 Cliente.c
chmod +777 makeC

cd ../$name5
echo "cd ../"$name5
rpcgen -Sc usuario.x > Cliente.c
echo "rpcgen -Sc usuario.x > Cliente.c"
rpcgen -Sm usuario.x > makeC
echo "rpcgen -Sm usuario.x > makeC"
chmod +777 Cliente.c
chmod +777 makeC

cd ../../
rm *.c *.h

echo "power by: andresfag & mdquilindo"
