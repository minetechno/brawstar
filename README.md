# 🎮 BRAWL STARS - Website Retrô

Site dedicado ao jogo Brawl Stars com design nostálgico anos 70 e 2000.

## 📋 Sobre o Projeto

Este é um website informativo sobre Brawl Stars desenvolvido com **HTML, CSS, JavaScript e PHP** com banco de dados **MariaDB**. O projeto apresenta dois estilos visuais distintos:

- **Homepage:** Design psicodélico anos 70 com cores vibrantes e animações groovy
- **Página de Ícones:** Estilo Y2K anos 2000 com efeitos neon e glassmorphism

## 🛠️ Especificações Técnicas

### Stack de Tecnologia
- **Frontend:** HTML5, CSS3, JavaScript (ES6+)
- **Backend:** PHP 8.x
- **Banco de Dados:** MariaDB (MySQL)
- **Servidor:** Apache 2.4.x via WAMP Server
- **Sistema Operacional:** Windows

### Configuração do Ambiente
- **Servidor:** WAMP Server (`C:\wamp64\`)
- **Diretório do Projeto:** `C:\wamp64\www\brawstar\`
- **Banco de Dados:**
  - Host: `localhost`
  - Usuário: `root`
  - Senha: (vazia)
  - Database: `brawstar`

### Acesso ao Site
- **URL Principal:** http://brawstar.test
- **URL Alternativa:** http://localhost/brawstar/

## 📁 Estrutura do Projeto

```
brawstar/
├── css/
│   ├── style-70s.css          # Estilos anos 70 (Homepage)
│   └── style-2000s.css        # Estilos anos 2000 (Ícones)
├── js/
│   └── main.js                # JavaScript principal (modais, animações)
├── images/
│   ├── brawlers/              # Imagens dos personagens (12 imagens PNG)
│   ├── skins/                 # Imagens das skins (14 imagens PNG)
│   ├── icons/                 # Ícones do jogo (para troféus e clubes)
│   └── README.md              # Guia de organização de imagens
├── includes/
│   ├── config.php             # Configuração do banco de dados
│   └── functions.php          # Funções PHP (queries, helpers)
├── index.php                  # Homepage (Estilo Anos 70)
├── icons.php                  # Página de Ícones (Estilo Anos 2000)
├── get_skins.php              # API AJAX para buscar skins
├── database.sql               # Script SQL principal (estrutura + dados)
├── add_more_brawlers.sql      # Script SQL com mais brawlers
├── update-skins.sql           # Script SQL para atualizar skins
├── download-images.php        # Script automático para baixar imagens
├── DOWNLOAD-IMAGES.md         # Guia completo de download de imagens
├── .htaccess                  # Configurações Apache
├── configurar-hosts.bat       # Script para configurar arquivo hosts
└── vhost-config.txt           # Template de VirtualHost
```

## 🗄️ Estrutura do Banco de Dados

### Tabela: `brawlers`
```sql
id (INT, PK, AUTO_INCREMENT)
name (VARCHAR 100)
icon (VARCHAR 255)
description (TEXT)
created_at (TIMESTAMP)
```

### Tabela: `skins`
```sql
id (INT, PK, AUTO_INCREMENT)
brawler_id (INT, FK -> brawlers.id)
name (VARCHAR 100)
icon (VARCHAR 255)
created_at (TIMESTAMP)
```

### Tabela: `icons`
```sql
id (INT, PK, AUTO_INCREMENT)
name (VARCHAR 100)
category (VARCHAR 50)  # 'club', 'character', 'trophy'
icon (VARCHAR 255)
created_at (TIMESTAMP)
```

## 🎨 Design e Estilos

### Homepage (index.php) - Estilo Anos 70
- **Fontes:** Monoton, Rubik Moonrocks, Passion One
- **Cores:** Gradientes psicodélicos (laranja, amarelo, azul, rosa)
- **Efeitos:**
  - Background animado com `@keyframes groovyBg`
  - Cards com hover 3D (rotação e elevação)
  - Bordas coloridas e sombras dramáticas
  - Modal de skins com grid responsivo
- **Componentes:**
  - Título "BRAWL" com fonte Monoton
  - Seção de curiosidades
  - Grid de brawlers (cards clicáveis)
  - Botão "Skins" que abre modal AJAX

### Página de Ícones (icons.php) - Estilo Anos 2000
- **Fontes:** Orbitron, Play
- **Cores:** Preto com neon cyan (#00ffff) e magenta (#ff00ff)
- **Efeitos:**
  - Background escuro com radial gradients
  - Text-shadow neon pulsante
  - Glassmorphism nos cards (backdrop-filter)
  - Animação de scanline no header
  - Hover com brilho e elevação
- **Componentes:**
  - Título "ÍCONES" com efeito neon
  - Seções por categoria (Clubes, Personagens, Troféus)
  - Grid de ícones com efeitos futuristas

## ⚙️ Funcionalidades Principais

### 1. Sistema de Brawlers
- Exibição de todos os brawlers cadastrados
- Ícones dos personagens
- Descrições curtas
- Botão para visualizar skins

### 2. Modal de Skins (AJAX)
- Carregamento dinâmico via `get_skins.php`
- Requisição assíncrona (Fetch API)
- Grid responsivo de skins
- Fallback para emojis se imagem não existir
- Fechar com ESC ou clique fora

### 3. Sistema de Ícones
- Categorização automática (club, character, trophy)
- Seções separadas por tipo
- Layout responsivo

### 4. Animações e Interatividade
- Cards com animação de entrada escalonada
- Efeitos hover em todos os elementos clicáveis
- Transições suaves (CSS transitions)
- Background animado na homepage

## 🔧 Configuração e Instalação

### 1. Banco de Dados
```bash
# Via phpMyAdmin ou linha de comando:
mysql -u root -e "SOURCE C:/wamp64/www/brawstar/database.sql"
```

### 2. VirtualHost (Opcional)
Adicione ao `httpd-vhosts.conf`:
```apache
<VirtualHost *:80>
    ServerName brawstar.test
    DocumentRoot "C:/wamp64/www/brawstar"
    <Directory "C:/wamp64/www/brawstar">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

### 3. Arquivo Hosts
Adicione a linha:
```
127.0.0.1    brawstar.test
```

## 📊 Dados Iniciais

### Brawlers Cadastrados (10 no banco de dados)
1. **Colt** - Atirador rápido com revólveres duplos
2. **Maisie** - Atiradora de longo alcance
3. **Amber** - Lança-chamas incendiária
4. **Angelo** - Atirador celestial
5. **Fang** - Lutador de kung fu
6. **Brock** - Atirador de foguetes
7. **El Primo** - Lutador mascarado
8. **8-Bit** - Arcade retrô
9. **Shelly** - Atiradora com escopeta
10. **Nita** - Invocadora de urso

### Imagens de Brawlers (12 imagens PNG - 1.7 MB total)
✅ **Com imagens reais:**
- Shelly (307 KB)
- Colt (219 KB)
- Brock (150 KB)
- El Primo (176 KB)
- 8-Bit (105 KB)
- Nita (166 KB)
- Spike (125 KB)
- Leon (88 KB)
- Crow (89 KB)
- Carl (60 KB)
- Gale (61 KB)
- Sprout (97 KB)

**Fontes:** wonder-day.com, pngkey.com

### Skins Cadastradas (14 skins - 908 KB total)
✅ **Colt (4 skins):**
- Rockstar Colt (89 KB)
- Royal Agent Colt (70 KB)
- Outlaw Colt (69 KB)
- Corsair Colt (89 KB)

✅ **Amber (4 skins):**
- Amber Padrão (38 KB)
- Amber de la Vega (27 KB)
- True Silver Amber (45 KB)
- True Gold Amber (42 KB)

✅ **Shelly (3 skins):**
- Bandita Shelly (56 KB)
- Star Shelly (54 KB)
- Witch Shelly (49 KB)

✅ **El Primo (3 skins):**
- El Rudo Primo (86 KB)
- El Rey Primo (90 KB)
- El Brown (73 KB)

**Fonte:** zathong.com

### Ícones Cadastrados (10 no banco de dados)
- **Clubes:** LOUD
- **Personagens:** El Primo, 8-Bit, Colt, Shelly, Nita
- **Troféus:** Bronze, Prata, Ouro, Diamante

**Nota:** Ícones ainda não possuem imagens reais (exibem emojis como fallback)

## 🔄 Fluxo de Dados

### Carregamento da Homepage
1. `index.php` inclui `includes/functions.php`
2. `getAllBrawlers()` consulta o banco
3. Loop PHP renderiza cards dinamicamente
4. JavaScript adiciona animações de entrada

### Modal de Skins
1. Usuário clica em botão "Skins"
2. JavaScript chama `openSkinsModal(brawlerId, brawlerName)`
3. Fetch para `get_skins.php?brawler_id=X`
4. PHP retorna JSON com array de skins
5. JavaScript cria modal dinamicamente
6. Exibe grid de skins com fallback de emoji

### Página de Ícones
1. `icons.php` carrega `getIconsByCategory()`
2. PHP separa ícones por categoria
3. Loop renderiza seções por categoria
4. JavaScript adiciona animações

## 🎯 Casos de Uso Comuns

### Adicionar Novo Brawler
```sql
INSERT INTO brawlers (name, icon, description) VALUES
('Nome', 'arquivo.png', 'Descrição do personagem');
```

### Adicionar Skins para um Brawler
```sql
INSERT INTO skins (brawler_id, name, icon) VALUES
(1, 'Nome da Skin', 'skin_arquivo.png');
```

### Adicionar Novo Ícone
```sql
INSERT INTO icons (name, category, icon) VALUES
('Nome', 'character', 'icon_arquivo.png');
-- Categorias: 'club', 'character', 'trophy'
```

## 🖼️ Gestão de Imagens

### Convenções de Nomenclatura
- **Brawlers:** `nome_em_minusculo.png` (ex: `elprimo.png`, `8bit.png`)
- **Skins:** `brawler_skin.png` (ex: `colt_royal.png`, `amber_ice.png`)
- **Ícones:** `icon_nome.png` (ex: `icon_loud.png`, `icon_trophy_gold.png`)

### Download de Imagens

#### Método Automático (Recomendado)
Execute o script PHP para baixar imagens automaticamente:
```
http://brawstar.test/download-images.php
```

O script vai:
- Baixar 10 imagens de brawlers automaticamente
- Salvar em `images/brawlers/`
- Exibir progresso em tempo real
- Mostrar resumo ao final

#### Método Manual
Consulte o arquivo [DOWNLOAD-IMAGES.md](DOWNLOAD-IMAGES.md) para:
- Links diretos de download de todas as imagens
- Instruções para encontrar mais imagens
- Recursos oficiais (Supercell Fan Kit)
- Sites com PNG transparentes

#### Fontes de Imagens
- **Wonder-Day.com:** 100+ imagens de brawlers PNG transparentes
- **Zathong.com:** Todas as skins com preços e descrições
- **PNGKey/PNGWing:** Imagens alternativas de alta qualidade
- **Supercell Fan Kit:** Recursos oficiais (requer login)

### Fallback
Se a imagem não existir, o sistema exibe emojis:
- Brawlers: 🎮
- Skins: 🎨
- Ícones (club): 🏆
- Ícones (character): 🎮
- Ícones (trophy): 🏆

## 🔒 Segurança

### Medidas Implementadas
- **Prepared Statements:** Todas as queries usam `mysqli::prepare()` para prevenir SQL Injection
- **htmlspecialchars():** Output escapado para prevenir XSS
- **intval():** Validação de IDs numéricos
- **.htaccess:** Previne listagem de diretórios
- **Error Handling:** Conexão de banco com tratamento de erros

### Considerações
- Banco está configurado com usuário `root` sem senha (apenas para desenvolvimento local)
- Em produção, configure usuário e senha específicos

## 🚀 Próximas Melhorias Possíveis

### Conteúdo
- [ ] Adicionar imagens para brawlers restantes (Amber, Maisie, Angelo, Fang)
- [ ] Baixar imagens de ícones de troféus (Bronze, Silver, Gold, etc.)
- [ ] Adicionar ícones de clubes brasileiros (LOUD, FURIA, paiN, INTZ)
- [ ] Adicionar mais skins para outros brawlers
- [x] ~~Imagens reais de brawlers~~ ✅ (12 imagens)
- [x] ~~Imagens reais de skins~~ ✅ (14 skins)

### Funcionalidades
- [ ] Sistema de busca de brawlers
- [ ] Filtros por tipo/raridade
- [ ] Página individual para cada brawler
- [ ] Sistema de favoritos (localStorage)
- [ ] Galeria de imagens ampliável
- [ ] Admin panel para CRUD via interface

### Técnicas
- [ ] Lazy loading de imagens
- [ ] Cache de requisições
- [ ] Service Worker para PWA
- [ ] Minificação de CSS/JS
- [ ] Otimização de imagens (WebP)
- [ ] Dark mode toggle

## 📝 Notas Importantes

### Para Desenvolvedores
- O projeto usa **WAMP** em Windows, não XAMPP/LAMP
- Outros projetos existem em `C:\wamp64\www\`, então o VirtualHost é específico
- O charset é `utf8mb4` para suportar emojis e caracteres especiais
- BASE_URL está hardcoded como `/brawstar/` em `includes/config.php`

### Para Manutenção
- Sempre usar prepared statements ao adicionar queries
- Manter padrão de nomenclatura de arquivos de imagens
- Testar fallbacks de emoji ao adicionar novos recursos
- Validar dados antes de inserir no banco

## 🤝 Contribuindo

Este é um projeto educacional. Sinta-se livre para:
- Adicionar mais brawlers ao banco
- Criar novos estilos visuais
- Melhorar animações e efeitos
- Otimizar queries e performance

## 📄 Licença

Projeto educacional - Brawl Stars é propriedade da Supercell.

## 🔗 Links Úteis

- **Repositório GitHub:** https://github.com/minetechno/brawstar
- **Documentação WAMP:** http://www.wampserver.com/
- **Brawl Stars:** https://supercell.com/en/games/brawlstars/

---

**Desenvolvido com ❤️ usando Claude Code**
