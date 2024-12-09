The very basic commands for creating:-

- root CA key & cert
- server key & cert, signed by root
- client certificate's key & cert, again signed by root


One may override the props in the client.cnf or server.cnf accordingly.

Get p12 file for the cert

openssl pkcs12 -export -legacy -out server.cert.p12 -in server.cert.crt -inkey server.cert.key -name "server"

openssl pkcs12 -export -legacy -out client.cert.p12 -in client.cert.crt -inkey client.cert.key -name "client"