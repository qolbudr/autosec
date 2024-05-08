<?php

$username = $_GET['username'];
$password = $_GET['password'];
$mode = $_GET['mode'];

if($mode == "ssh") 
{
    exec('sudo bash /var/www/api/shell/ssh.sh '.$username.' '.$password.' 10 1 2', $output);
    return print_r(join("<br/>", $output));
}

echo "API service is running...";

?>