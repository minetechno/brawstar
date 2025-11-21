-- Adicionar mais brawlers que já possuem imagens
USE brawstar;

-- Brawlers com imagens já baixadas
INSERT INTO brawlers (name, icon, description) VALUES
('Spike', 'spike.png', 'Cacto espinhoso explosivo'),
('Leon', 'leon.png', 'Mestre do disfarce invisível'),
('Crow', 'crow.png', 'Assassino venenoso'),
('Carl', 'carl.png', 'Geólogo com picareta voadora'),
('Gale', 'gale.png', 'Zelador com ventilador de neve'),
('Sprout', 'sprout.png', 'Robô jardineiro protetor');

-- Mais brawlers populares do jogo
INSERT INTO brawlers (name, icon, description) VALUES
('Mortis', 'mortis.png', 'Vampiro coveiro sombrio'),
('Piper', 'piper.png', 'Atiradora elegante de longo alcance'),
('Poco', 'poco.png', 'Músico esqueleto curandeiro'),
('Barley', 'barley.png', 'Bartender robô arremessador'),
('Dynamike', 'dynamike.png', 'Velho mineiro explosivo'),
('Tick', 'tick.png', 'Robô cabeçudo explosivo'),
('Rosa', 'rosa.png', 'Botânica super forte'),
('Jessie', 'jessie.png', 'Engenheira com torre Scrappy'),
('Bull', 'bull.png', 'Tanque furibundo com escopeta'),
('Bibi', 'bibi.png', 'Rebelde de beisebol'),
('Darryl', 'darryl.png', 'Robô pirata barril rolante'),
('Penny', 'penny.png', 'Pirata com canhão mortal'),
('Pam', 'pam.png', 'Mecânica curadora'),
('Frank', 'frank.png', 'Monstro com martelo gigante');

-- Verificar total de brawlers
SELECT COUNT(*) as total_brawlers FROM brawlers;

-- Ver todos os brawlers
SELECT id, name, description FROM brawlers ORDER BY name;
