<?php

// Configuração da página
require('./_config.php');

/* Código PHP desta página */

// Definir variáveis
$output = '';

// Obtém o ID do artigo clicado
$id = (isset($_GET['id'])) ? intval($_GET['id']) : 0;

// Se está tentando burlar a regra, volta para a lista de artigos
if ($id == 0) header('Location: index.php');

// Obter o artigo do DB
$sql = "
    SELECT *, DATE_FORMAT(date, '%d/%m/%Y às %H:%i') AS datebr 
    FROM articles 
    INNER JOIN authors ON aut_id = author 
    WHERE art_id = '{$id}' AND articles.status = 'ativo'
";
$res = $conn->query($sql);

// Se não achou um artigo
if ($res->num_rows != 1) {
    $output = '<h4>Artigo não encontrado!</h4>';

    // Se encontrou o artigo
} else {

    $art = $res->fetch_assoc();

    $output .= <<<HTML

        <small class="autor-date">Por <a href="{$art['aut_link']}" target="_blank">{$art['aut_name']}</a> em {$art['datebr']}.</small>
        
        {$art['content']};

HTML;
}

// Título desta página
$pageTitle = $art['title'];

// CSS desta página
$pageCSS = 'view.css';

// JavaScript desta página
$pageJS = '';

require('./_header.php');
?>

<article>

    <h2><?php echo $art['title'] ?></h2>
    <div class="article"><?php echo $output ?></div>
    <p class="center">
        <a href="/"><i class="fas fa-fw fa-home"></i> Página inicial</a>
    </p>

</article>

<?php
require('./_footer.php');
?>