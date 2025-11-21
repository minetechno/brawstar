-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS brawstar CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE brawstar;

-- Tabela de Brawlers
CREATE TABLE IF NOT EXISTS brawlers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    icon VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de Skins
CREATE TABLE IF NOT EXISTS skins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brawler_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    icon VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (brawler_id) REFERENCES brawlers(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de Ícones
CREATE TABLE IF NOT EXISTS icons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL, -- 'club', 'character', 'trophy'
    icon VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserir alguns Brawlers
INSERT INTO brawlers (name, icon, description) VALUES
('Colt', 'colt.png', 'Atirador rápido com revólveres duplos'),
('Maisie', 'maisie.png', 'Atiradora de longo alcance'),
('Amber', 'amber.png', 'Lança-chamas incendiária'),
('Angelo', 'angelo.png', 'Atirador celestial'),
('Fang', 'fang.png', 'Lutador de kung fu'),
('Brock', 'brock.png', 'Atirador de foguetes'),
('El Primo', 'elprimo.png', 'Lutador mascarado'),
('8-Bit', '8bit.png', 'Arcade retrô'),
('Shelly', 'shelly.png', 'Atiradora com escopeta'),
('Nita', 'nita.png', 'Invocadora de urso');

-- Inserir algumas Skins para Colt
INSERT INTO skins (brawler_id, name, icon) VALUES
(1, 'Colt Padrão', 'colt_default.png'),
(1, 'Colt Real', 'colt_royal.png'),
(1, 'Colt Corsário', 'colt_corsair.png'),
(1, 'Colt Outlaw', 'colt_outlaw.png');

-- Inserir algumas Skins para Amber
INSERT INTO skins (brawler_id, name, icon) VALUES
(3, 'Amber Padrão', 'amber_default.png'),
(3, 'Amber de Gelo', 'amber_ice.png'),
(3, 'Amber Dourada', 'amber_gold.png');

-- Inserir alguns Ícones
INSERT INTO icons (name, category, icon) VALUES
('LOUD', 'club', 'icon_loud.png'),
('El Primo', 'character', 'icon_elprimo.png'),
('8-Bit', 'character', 'icon_8bit.png'),
('Troféu Bronze', 'trophy', 'icon_trophy_bronze.png'),
('Troféu Prata', 'trophy', 'icon_trophy_silver.png'),
('Troféu Ouro', 'trophy', 'icon_trophy_gold.png'),
('Troféu Diamante', 'trophy', 'icon_trophy_diamond.png'),
('Colt', 'character', 'icon_colt.png'),
('Shelly', 'character', 'icon_shelly.png'),
('Nita', 'character', 'icon_nita.png');
