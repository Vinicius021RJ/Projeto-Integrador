<?php

/**
Arquivo responsável pela configuração do site.
 */

// PHP usando UTF-8
header('Content-Type: text/html; charset=utf-8');

// Conexão com o MySQL
$conn = new mysqli('localhost', 'root', '', 'ccomum');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Transações MySQL em UTF-8
$conn->query ("SET NAMES 'utf8'");
$conn->query ('SET character_set_connection=utf8');
$conn->query ('SET character_set_client=utf8');
$conn->query ('SET character_set_results=utf8');

// Variáveis globais
$siteName = 'Projeto Integrador';
$siteSlogan = ' Denvolver Sistema Corporativo';
$pageTitle = '';
$siteLogo = 'img/logo01.png';
$pageCSS = '';