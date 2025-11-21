<?php
/**
 * Script para baixar imagens dos Brawlers
 * Execute este arquivo uma vez para baixar as imagens
 */

// Configurações
$baseUrl = 'https://wonder-day.com/wp-content/uploads/2020/06/';
$targetDir = __DIR__ . '/images/brawlers/';

// Criar diretório se não existir
if (!is_dir($targetDir)) {
    mkdir($targetDir, 0755, true);
}

// Mapeamento de brawlers para URLs (baseado no que encontramos)
$brawlers = [
    'shelly.png' => 'wonder-day-brawl-stars-png-29.png',
    'brock.png' => 'wonder-day-brawl-stars-png-81.png',
    'elprimo.png' => 'wonder-day-brawl-stars-png-55.png',
    '8bit.png' => 'wonder-day-brawl-stars-png-54.png',
    'spike.png' => 'wonder-day-brawl-stars-png-82.png',
    'leon.png' => 'wonder-day-brawl-stars-png-92.png',
    'crow.png' => 'wonder-day-brawl-stars-png-30.png',
    'carl.png' => 'wonder-day-brawl-stars-png-2.png',
    'gale.png' => 'wonder-day-brawl-stars-png-1.png',
    'sprout.png' => 'wonder-day-brawl-stars-png-76.png',
];

echo "<!DOCTYPE html>
<html lang='pt-BR'>
<head>
    <meta charset='UTF-8'>
    <title>Download de Imagens - Brawl Stars</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; background: #1a1a1a; color: #fff; }
        .success { color: #00ff00; padding: 10px; margin: 5px 0; background: rgba(0,255,0,0.1); }
        .error { color: #ff0000; padding: 10px; margin: 5px 0; background: rgba(255,0,0,0.1); }
        .info { color: #00ffff; padding: 10px; margin: 5px 0; background: rgba(0,255,255,0.1); }
        h1 { color: #ffd93d; }
    </style>
</head>
<body>
    <h1>🎮 Download de Imagens dos Brawlers</h1>
";

$downloaded = 0;
$errors = 0;

foreach ($brawlers as $localName => $remoteName) {
    $url = $baseUrl . $remoteName;
    $destination = $targetDir . $localName;

    echo "<div class='info'>Baixando: {$localName}...</div>";
    flush();

    // Baixar imagem
    $imageData = @file_get_contents($url);

    if ($imageData !== false) {
        // Salvar arquivo
        if (file_put_contents($destination, $imageData)) {
            echo "<div class='success'>✅ {$localName} baixado com sucesso!</div>";
            $downloaded++;
        } else {
            echo "<div class='error'>❌ Erro ao salvar {$localName}</div>";
            $errors++;
        }
    } else {
        echo "<div class='error'>❌ Erro ao baixar {$localName} de {$url}</div>";
        $errors++;
    }

    flush();
    usleep(500000); // 0.5 segundo de delay entre downloads
}

echo "
    <br><hr>
    <h2>📊 Resultado:</h2>
    <div class='success'>✅ {$downloaded} imagens baixadas com sucesso</div>
";

if ($errors > 0) {
    echo "<div class='error'>❌ {$errors} erros</div>";
}

echo "
    <br>
    <div class='info'>
        <strong>Próximos passos:</strong><br>
        1. As imagens foram salvas em: {$targetDir}<br>
        2. Acesse http://brawstar.test para ver as imagens<br>
        3. Você pode deletar este arquivo (download-images.php) após o uso
    </div>
</body>
</html>
";
?>
