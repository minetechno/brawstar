-- Atualizar skins no banco de dados
USE brawstar;

-- Limpar skins antigas
DELETE FROM skins;

-- Adicionar skins do Colt (brawler_id = 1)
INSERT INTO skins (brawler_id, name, icon) VALUES
(1, 'Rockstar Colt', 'colt_rockstar.png'),
(1, 'Royal Agent Colt', 'colt_royal.png'),
(1, 'Outlaw Colt', 'colt_outlaw.png'),
(1, 'Corsair Colt', 'colt_corsair.png');

-- Adicionar skins da Amber (brawler_id = 3)
INSERT INTO skins (brawler_id, name, icon) VALUES
(3, 'Amber Padrão', 'amber_default.png'),
(3, 'Amber de la Vega', 'amber_vega.png'),
(3, 'True Silver Amber', 'amber_silver.png'),
(3, 'True Gold Amber', 'amber_gold.png');

-- Adicionar skins da Shelly (brawler_id = 9)
INSERT INTO skins (brawler_id, name, icon) VALUES
(9, 'Bandita Shelly', 'shelly_bandita.png'),
(9, 'Star Shelly', 'shelly_star.png'),
(9, 'Witch Shelly', 'shelly_witch.png');

-- Adicionar skins do El Primo (brawler_id = 7)
INSERT INTO skins (brawler_id, name, icon) VALUES
(7, 'El Rudo Primo', 'elprimo_rudo.png'),
(7, 'El Rey Primo', 'elprimo_rey.png'),
(7, 'El Brown', 'elprimo_brown.png');

-- Verificar total de skins
SELECT COUNT(*) as total_skins FROM skins;

-- Ver todas as skins por brawler
SELECT b.name as brawler, s.name as skin, s.icon
FROM brawlers b
LEFT JOIN skins s ON b.id = s.brawler_id
ORDER BY b.name, s.name;
