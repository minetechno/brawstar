-- Adicionar mais Brawlers ao banco de dados
USE brawstar;

-- Mais Brawlers
INSERT INTO brawlers (name, icon, description) VALUES
('Spike', 'spike.png', 'Cacto espinhoso explosivo'),
('Crow', 'crow.png', 'Assassino venenoso'),
('Leon', 'leon.png', 'Mestre do disfarce'),
('Sandy', 'sandy.png', 'Controlador de areia sonolento'),
('Mortis', 'mortis.png', 'Vampiro coveiro'),
('Dynamike', 'dynamike.png', 'Velho mineiro explosivo'),
('Tick', 'tick.png', 'Robô explosivo'),
('Poco', 'poco.png', 'Músico curandeiro'),
('Rosa', 'rosa.png', 'Botânica poderosa'),
('Jessie', 'jessie.png', 'Engenheira e sua torre'),
('Pam', 'pam.png', 'Mecânica curadora'),
('Frank', 'frank.png', 'Monstro com martelo'),
('Bibi', 'bibi.png', 'Rebelde de beisebol'),
('Bull', 'bull.png', 'Tanque com escopeta'),
('Darryl', 'darryl.png', 'Robô pirata rolante'),
('Penny', 'penny.png', 'Pirata com canhão'),
('Carl', 'carl.png', 'Geólogo com picareta'),
('Jacky', 'jacky.png', 'Operária perfuradora'),
('Gale', 'gale.png', 'Zelador com ventilador'),
('Bo', 'bo.png', 'Arqueiro rastreador'),
('Emz', 'emz.png', 'Influencer zumbi'),
('Stu', 'stu.png', 'Dublê acrobático'),
('Piper', 'piper.png', 'Atiradora elegante'),
('Rico', 'rico.png', 'Robô ricochete'),
('Barley', 'barley.png', 'Bartender robô'),
('Sprout', 'sprout.png', 'Robô jardineiro'),
('Byron', 'byron.png', 'Vendedor de poções'),
('Squeak', 'squeak.png', 'Criatura viscosa'),
('Grom', 'grom.png', 'Guarda de segurança'),
('Bonnie', 'bonnie.png', 'Dupla dinâmica'),
('Gus', 'gus.png', 'Fantasma assistente'),
('Belle', 'belle.png', 'Caçadora de recompensas'),
('Sam', 'sam.png', 'Protetor robótico'),
('Mandy', 'mandy.png', 'Rainha do doce'),
('Chester', 'chester.png', 'Palhaço caótico'),
('Gray', 'gray.png', 'Porteiro dimensional'),
('Willow', 'willow.png', 'Controladora mental'),
('Doug', 'doug.png', 'Cachorro-quente'),
('Chuck', 'chuck.png', 'Condutor de trem'),
('Charlie', 'charlie.png', 'Aranha metamorfa'),
('Mico', 'mico.png', 'Macaco acrobático'),
('Kit', 'kit.png', 'Raposa ligeira'),
('Larry & Lawrie', 'larry_lawrie.png', 'Dupla de robôs segurança'),
('Melodie', 'melodie.png', 'Nota musical'),
('Lily', 'lily.png', 'Teleportadora'),
('Clancy', 'clancy.png', 'Atirador de rifles'),
('Moe', 'moe.png', 'Rato escavador'),
('Kenji', 'kenji.png', 'Guerreiro samurai'),
('Draco', 'draco.png', 'Cavaleiro dragão');

-- Adicionar mais skins para outros brawlers
INSERT INTO skins (brawler_id, name, icon) VALUES
-- Shelly (id: 9)
(9, 'Shelly Padrão', 'shelly_default.png'),
(9, 'Shelly Bandida', 'shelly_bandita.png'),
(9, 'Shelly Bruxa', 'shelly_witch.png'),

-- El Primo (id: 7)
(7, 'El Primo Padrão', 'elprimo_default.png'),
(7, 'El Rey Primo', 'elprimo_rey.png'),
(7, 'El Rudo Primo', 'elprimo_rudo.png'),

-- Brock (id: 6)
(6, 'Brock Padrão', 'brock_default.png'),
(6, 'Brock Boom Box', 'brock_boombox.png'),
(6, 'Brock Leão Branco', 'brock_lionking.png');

-- Adicionar mais ícones
INSERT INTO icons (name, category, icon) VALUES
('Spike', 'character', 'icon_spike.png'),
('Crow', 'character', 'icon_crow.png'),
('Leon', 'character', 'icon_leon.png'),
('Mortis', 'character', 'icon_mortis.png'),
('Troféu Master', 'trophy', 'icon_trophy_master.png'),
('Troféu Lendário', 'trophy', 'icon_trophy_legendary.png'),
('Troféu Mítico', 'trophy', 'icon_trophy_mythic.png'),
('INTZ', 'club', 'icon_intz.png'),
('paiN Gaming', 'club', 'icon_pain.png'),
('FURIA', 'club', 'icon_furia.png');
