<?php
require_once 'includes/functions.php';
$brawlers = getAllBrawlers();
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BRAWL - Anos 70</title>
    <link rel="stylesheet" href="css/style-70s.css">
</head>
<body>
    <header>
        <nav>
            <a href="icons.php" class="btn-icons">Ícones</a>
        </nav>
    </header>

    <h1 class="main-title">BRAWL</h1>

    <div class="container">
        <!-- Seção de Curiosidades -->
        <section class="curiosities">
            <h2>✨ Curiosidades sobre Brawl Stars ✨</h2>
            <p>
                🎮 Brawl Stars é um jogo de batalha multiplayer desenvolvido pela Supercell!
                Lançado em dezembro de 2018, o jogo conquistou milhões de jogadores ao redor do mundo.
            </p>
            <p>
                🌟 Existem mais de 70 Brawlers únicos, cada um com habilidades especiais e estilos de jogo diferentes!
                Desde atiradores rápidos como Colt até tanques poderosos como El Primo.
            </p>
            <p>
                🏆 O jogo possui diversos modos de jogo: Gem Grab, Showdown, Brawl Ball, Heist, Bounty e muito mais!
                Cada modo oferece uma experiência única de gameplay.
            </p>
        </section>

        <!-- Grid de Brawlers -->
        <section>
            <h2 style="font-size: 60px; text-align: center; color: #ffd93d; text-shadow: 3px 3px 0 #ff6b6b; margin-bottom: 40px;">
                🎯 TODOS OS BRAWLERS 🎯
            </h2>

            <div class="brawlers-grid">
                <?php foreach ($brawlers as $brawler): ?>
                <div class="brawler-card">
                    <div class="brawler-icon">
                        <img src="images/brawlers/<?php echo htmlspecialchars($brawler['icon']); ?>"
                             alt="<?php echo htmlspecialchars($brawler['name']); ?>"
                             onerror="this.parentElement.innerHTML='🎮'">
                    </div>
                    <h3><?php echo htmlspecialchars($brawler['name']); ?></h3>
                    <?php if (!empty($brawler['description'])): ?>
                    <p style="font-size: 16px; color: #000; margin: 10px 0;">
                        <?php echo htmlspecialchars($brawler['description']); ?>
                    </p>
                    <?php endif; ?>
                    <button class="btn-skins"
                            onclick="openSkinsModal(<?php echo $brawler['id']; ?>, '<?php echo htmlspecialchars($brawler['name']); ?>')">
                        Skins
                    </button>
                </div>
                <?php endforeach; ?>
            </div>
        </section>
    </div>

    <footer>
        <p>✌️ BRAWL STARS - Powered by Groovy Vibes ✌️</p>
        <p>© 2024 | Feito com amor e estilo retrô</p>
    </footer>

    <script src="js/main.js"></script>
</body>
</html>
