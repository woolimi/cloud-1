if [ ! -d /var/lib/mysql/wordpress ]; then
	echo "Mysql is not initialised..."
	mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
fi

mysqld_safe --user=root &
MSP_PID=$!

sleep 2

while ! mysqladmin ping --silent; do
    echo "ping... Waiting for pong..."
    sleep 5
done
echo "Pong ! Finally !"

if [ ! -d /var/lib/mysql/wordpress ]; then
	sed -i "s|PW|$MYSQL_WP_PASSWORD|" /init_wp.sql
	sed -i "s|ROOT_PW|$MYSQL_ROOT_PASSWORD|" /init_root.sql
	echo "db doesn't exist..."
	mysql < /init_wp.sql
	echo "init_wp -> Done"
	mysql < /init_root.sql
	echo "init_root -> Done"
	# refacto here to do not use password hardcoded
	mysql -u wp_user -pWpPassword wordpress < /migrate_wp.sql
	echo "migrate_wp -> Done"
fi

echo "Yay"

wait $MSP_PID