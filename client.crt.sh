# create a client key named as client.key
openssl genrsa -out client.cert.key 2048

# create a csr
openssl req -new -key client.cert.key -out client.cert.csr -config client.cnf

# create a client certificate for 365 days.
openssl x509 -req -in client.cert.csr -CA root.ca.pem -CAkey root.ca.key -CAcreateserial -out client.cert.crt -days 365 -extfile client.cnf -extensions v3_req

# validate the certificate
openssl x509 -in client.cert.crt -text -noout