

$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie'; // Use cookie authentication
$cfg['Servers'][$i]['host'] = getenv('PMA_HOST'); // Use environment variable for host
$cfg['Servers'][$i]['user'] = getenv('PMA_USER'); // Use environment variable for user
$cfg['Servers'][$i]['password'] = getenv('PMA_PASSWORD'); // Use environment variable for password
$cfg['Servers'][$i]['pmadb'] = getenv('PMA_DATABASE'); // Set default database if defined
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';