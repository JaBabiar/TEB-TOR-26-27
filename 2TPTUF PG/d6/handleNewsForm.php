<?php 
session_start(); // start sesji
$id_pol = mysqli_connect("localhost", "root", "", "panel_teb_cms");

if (!$id_pol) {
    exit;
}