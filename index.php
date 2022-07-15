<?php 

require_once __DIR__ . '/vendor/autoload.php';

$loader = new Twig_Loader_array(array(
    'index' => 'Hello {{ name }}!',
));

$twig = new Twig_Environment($loader);

echo $twig->render('index', array('name' => 'Fabien'));
