<?php
require_once 'includes/functions.php';

// Buscar ícones por categoria
$clubIcons = getIconsByCategory('club');
$characterIcons = getIconsByCategory('character');
$trophyIcons = getIconsByCategory('trophy');
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ícones - Brawl Stars</title>
    <link rel="stylesheet" href="css/style-2000s.css">
</head>
<body>
    <header>
        <nav>
            <a href="index.php" class="btn-home">← Voltar para o Park</a>
        </nav>
    </header>

    <h1 class="main-title">ÍCONES</h1>

    <div class="container">
        <!-- Ícones de Clubes -->
        <?php if (count($clubIcons) > 0): ?>
        <section class="category-section">
            <h2>🏅 Ícones de Clubes</h2>
            <div class="icons-grid">
                <?php foreach ($clubIcons as $icon): ?>
                <div class="icon-card">
                    <div class="icon-image">
                        <img src="images/icons/<?php echo htmlspecialchars($icon['icon']); ?>"
                             alt="<?php echo htmlspecialchars($icon['name']); ?>"
                             onerror="this.parentElement.innerHTML='🏆'">
                    </div>
                    <h3><?php echo htmlspecialchars($icon['name']); ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
        </section>
        <?php endif; ?>

        <!-- Ícones de Personagens -->
        <?php if (count($characterIcons) > 0): ?>
        <section class="category-section">
            <h2>👤 Ícones de Personagens</h2>
            <div class="icons-grid">
                <?php foreach ($characterIcons as $icon): ?>
                <div class="icon-card">
                    <div class="icon-image">
                        <img src="images/icons/<?php echo htmlspecialchars($icon['icon']); ?>"
                             alt="<?php echo htmlspecialchars($icon['name']); ?>"
                             onerror="this.parentElement.innerHTML='🎮'">
                    </div>
                    <h3><?php echo htmlspecialchars($icon['name']); ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
        </section>
        <?php endif; ?>

        <!-- Ícones de Troféus -->
        <?php if (count($trophyIcons) > 0): ?>
        <section class="category-section">
            <h2>🏆 Ícones de Troféus</h2>
            <div class="icons-grid">
                <?php foreach ($trophyIcons as $icon): ?>
                <div class="icon-card">
                    <div class="icon-image">
                        <img src="images/icons/<?php echo htmlspecialchars($icon['icon']); ?>"
                             alt="<?php echo htmlspecialchars($icon['name']); ?>"
                             onerror="this.parentElement.innerHTML='🏆'">
                    </div>
                    <h3><?php echo htmlspecialchars($icon['name']); ?></h3>
                </div>
                <?php endforeach; ?>
            </div>
        </section>
        <?php endif; ?>
    </div>

    <footer>
        <p>⚡ BRAWL STARS ICONS - Y2K STYLE ⚡</p>
        <p>© 2024 | Desenvolvido com tecnologia do futuro</p>
    </footer>

    <script src="js/main.js"></script>
</body>
</html>
