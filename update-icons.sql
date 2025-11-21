-- Atualizar ícones no banco de dados
USE brawstar;

-- Limpar ícones antigos
DELETE FROM icons;

-- Adicionar ícones de troféus
INSERT INTO icons (name, category, icon) VALUES
('Troféu Bronze', 'trophy', 'icon_trophy_bronze.png'),
('Troféu Prata', 'trophy', 'icon_trophy_silver.png'),
('Troféu Ouro', 'trophy', 'icon_trophy_gold.png'),
('Troféu Diamante', 'trophy', 'icon_trophy_diamond.png');

-- Adicionar ícones de personagens
INSERT INTO icons (name, category, icon) VALUES
('El Primo', 'character', 'icon_elprimo.png'),
('8-Bit', 'character', 'icon_8bit.png'),
('Colt', 'character', 'icon_colt.png'),
('Shelly', 'character', 'icon_shelly.png'),
('Nita', 'character', 'icon_nita.png');

-- Adicionar ícone de clube
INSERT INTO icons (name, category, icon) VALUES
('LOUD', 'club', 'icon_loud.png');

-- Verificar total de ícones
SELECT COUNT(*) as total_icons FROM icons;

-- Ver todos os ícones por categoria
SELECT category, name, icon
FROM icons
ORDER BY category, name;
