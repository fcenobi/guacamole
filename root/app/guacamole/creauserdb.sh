
read -p 'Username: ' user
read -p 'Nuovo DB: ' db
read -sp 'Password: ' dbpasswd



 sudo -u postgres psql -c  "create user $user with  password '"$dbpasswd"';"
 sudo -u postgres psql -c  "CREATE DATABASE $db ; "
 sudo -u postgres psql -c  "ALTER DATABASE $db  OWNER TO $user;"
 sudo -u postgres psql -c  "GRANT ALL PRIVILEGES ON DATABASE $db  TO $user;"



