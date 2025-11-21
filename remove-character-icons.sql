-- Remover ícones de personagens (brawlers) do banco de dados
USE brawstar;

-- Deletar apenas ícones de categoria 'character'
DELETE FROM icons WHERE category = 'character';

-- Verificar ícones restantes
SELECT COUNT(*) as total_icons FROM icons;

-- Ver ícones por categoria
SELECT category, COUNT(*) as total, GROUP_CONCAT(name SEPARATOR ', ') as names
FROM icons
GROUP BY category
ORDER BY category;

-- Listar todos os ícones restantes
SELECT * FROM icons ORDER BY category, name;
