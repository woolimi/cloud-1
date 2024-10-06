
<?php
$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = getenv('PMA_HOST');
$cfg['Servers'][$i]['user'] = getenv('PMA_USER'); 
$cfg['Servers'][$i]['port'] = '3306'; 
$cfg['Servers'][$i]['password'] = getenv('PMA_PASSWORD');
$cfg['Servers'][$i]['pmadb'] = getenv('PMA_DATABASE');
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
?>