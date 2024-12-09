# create a key named server.key.
openssl genrsa -out server.cert.key 2048

# (optionally) view the key
openssl rsa -check -noout -in server.cert.key

# create a certificate signing request
openssl req -new -key server.cert.key -out server.cert.csr -config server.cnf

# view the certificate signing request
openssl req -in server.csr -noout -text

# create a certificate for 365 days.
openssl req -x509 -in server.cert.csr -CA root.ca.pem -CAkey root.ca.key -out server.cert.crt -copy_extensions copy -days 365

# validate the certificate details
openssl x509 -in server.cert.crt -text -noout