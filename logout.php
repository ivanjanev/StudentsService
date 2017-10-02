<?php
/**
 * Created by PhpStorm.
 * User: ivanj
 * Date: 30-Aug-17
 * Time: 18:34
 */
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
unset($_SESSION['id']);
session_destroy();
echo "ok";
?>