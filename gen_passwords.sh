#!/bin/bash

PASSWORD_FILE=./passwords.yml

get_password() {
    cat /dev/urandom | tr -dc '[:alnum:]' | head -c 16
}

if [ -f $PASSWORD_FILE ]; then
    echo "$PASSWORD_FILE exists."
    exit 1
fi

cat > $PASSWORD_FILE <<EOF
admin_password: $(get_password)
mysql_password: $(get_password)
rabbit_password: $(get_password)
service_password: $(get_password)
service_token: $(get_password)
swift_hash: $(get_password)
EOF

echo "Generated $PASSWORD_FILE"
