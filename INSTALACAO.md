# 🎮 BRAWL STARS - Instalação e Configuração

## 📋 Pré-requisitos
- WAMP Server instalado e funcionando
- MariaDB rodando
- Apache rodando

## 🗄️ Passo 1: Criar o Banco de Dados

1. Abra o **phpMyAdmin** (http://localhost/phpmyadmin/)
2. Vá em **SQL** (na aba superior)
3. Copie e cole todo o conteúdo do arquivo `database.sql`
4. Clique em **Executar**

Isso vai criar o banco de dados `brawstar` com as tabelas e dados iniciais.

## 🌐 Passo 2: Configurar o VirtualHost para brawstar.test

### 2.1 - Editar o arquivo hosts do Windows

1. Abra o **Bloco de Notas como Administrador**
2. Vá em **Arquivo > Abrir**
3. Navegue até: `C:\Windows\System32\drivers\etc\`
4. No campo "Tipo de arquivo", selecione **Todos os arquivos (*.*)**
5. Abra o arquivo chamado `hosts` (sem extensão)
6. Adicione esta linha no final do arquivo:

```
127.0.0.1    brawstar.test
```

7. Salve o arquivo (Ctrl+S)

### 2.2 - Configurar o VirtualHost no Apache

1. Abra o ícone do **WAMP** na bandeja do sistema (próximo ao relógio)
2. Clique em **Apache > httpd-vhosts.conf**
3. No final do arquivo, adicione:

```apache
<VirtualHost *:80>
    ServerName brawstar.test
    DocumentRoot "C:/wamp64/www/brawstar"

    <Directory "C:/wamp64/www/brawstar">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog "logs/brawstar-error.log"
    CustomLog "logs/brawstar-access.log" common
</VirtualHost>
```

4. Salve o arquivo (Ctrl+S)

### 2.3 - Reiniciar o WAMP

1. Clique no ícone do **WAMP** na bandeja
2. Clique em **Reiniciar todos os serviços**

## ✅ Passo 3: Testar o Site

Abra seu navegador e acesse:
- **http://brawstar.test** - Homepage estilo Anos 70
- **http://brawstar.test/icons.php** - Página de Ícones estilo Anos 2000

> **Nota:** O acesso via http://localhost/brawstar/ também continuará funcionando!

## 📁 Passo 4: Adicionar Imagens (Opcional)

Para exibir as imagens dos brawlers, skins e ícones, adicione os arquivos PNG nas seguintes pastas:

- `images/brawlers/` - Coloque as imagens dos brawlers (colt.png, amber.png, etc.)
- `images/skins/` - Coloque as imagens das skins (colt_royal.png, amber_ice.png, etc.)
- `images/icons/` - Coloque as imagens dos ícones (icon_loud.png, icon_trophy_gold.png, etc.)

Se não adicionar as imagens, o sistema exibirá emojis como placeholders.

## 🎨 Estrutura do Projeto

```
brawstar/
├── css/
│   ├── style-70s.css      (Estilo anos 70 - Homepage)
│   └── style-2000s.css    (Estilo anos 2000 - Ícones)
├── js/
│   └── main.js            (JavaScript para modais)
├── images/
│   ├── brawlers/          (Imagens dos brawlers)
│   ├── skins/             (Imagens das skins)
│   └── icons/             (Imagens dos ícones)
├── includes/
│   ├── config.php         (Configuração do banco)
│   └── functions.php      (Funções PHP)
├── index.php              (Homepage)
├── icons.php              (Página de ícones)
├── get_skins.php          (API para buscar skins)
└── database.sql           (Script SQL)
```

## 🔧 Solução de Problemas

### O site não abre em brawstar.test
- Verifique se editou o arquivo hosts corretamente
- Verifique se o VirtualHost foi configurado corretamente
- Reinicie o WAMP

### Erro de conexão com banco de dados
- Verifique se o MariaDB está rodando
- Verifique se executou o arquivo database.sql
- Confirme que o usuário é `root` e senha vazia

### As imagens não aparecem
- Verifique se as pastas `images/brawlers`, `images/skins` e `images/icons` existem
- Coloque as imagens PNG nas pastas correspondentes
- Os nomes dos arquivos devem corresponder aos nomes no banco de dados

## 🎉 Pronto!

Seu site Brawl Stars está configurado e funcionando!
