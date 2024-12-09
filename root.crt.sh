# Create a root key, inside a file named root-ca.key.
echo "generating the root CA key"
openssl genrsa -out root.ca.key 2048
# validate the key.
echo "validate the root CA key"
openssl rsa -check -noout -in root.ca.key

# create root-ca
openssl req -x509 -new -nodes -key root.ca.key \
  -subj "/CN=Localhost CA 2/O=Localhost Networks/ST=PUNJAB/L=Mohali/C=IN"\
  -sha256 \
  -days "3650"\
  -out root.ca.pem

# view certificate details
openssl x509 -in root.ca.pem -text


