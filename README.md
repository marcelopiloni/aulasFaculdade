# 📚 Blog API - Sistema de Gerenciamento de Conteúdo

Uma API REST completa desenvolvida em Node.js para gerenciamento de blog com autenticação JWT, seguindo os princípios de Clean Architecture.

## 🚀 Funcionalidades

- ✅ **Autenticação JWT** - Sistema seguro de login e autorização
- ✅ **Gerenciamento de Usuários** - CRUD completo com validação
- ✅ **Gerenciamento de Autores** - Sistema de autoria de conteúdo
- ✅ **Gerenciamento de Posts** - CRUD completo com busca avançada
- ✅ **Busca por Palavra-chave** - Pesquisa em títulos e descrições
- ✅ **Arquitetura em Camadas** - Controllers, Services, Repositories, DTOs
- ✅ **Documentação Swagger** - Interface interativa completa
- ✅ **Validação de Dados** - Validação robusta com Mongoose
- ✅ **Criptografia de Senhas** - Hash seguro com bcrypt

## 🛠️ Tecnologias Utilizadas

| Tecnologia | Versão | Propósito |
|------------|--------|-----------|
| **Node.js** | 18+ | Runtime JavaScript |
| **Express** | ^4.21.2 | Framework web |
| **MongoDB** | ^6.14.2 | Banco de dados NoSQL |
| **Mongoose** | ^6.0.0 | ODM para MongoDB |
| **JWT** | ^9.0.2 | Autenticação/Autorização |
| **Bcrypt** | ^3.0.2 | Hash de senhas |
| **Swagger** | ^6.2.8 | Documentação da API |
| **Nodemon** | ^3.1.9 | Desenvolvimento (hot reload) |

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- **Node.js** (versão 18 ou superior)
- **MongoDB** (local ou MongoDB Atlas)
- **Git**
- **npm** ou **yarn**

## 🔧 Instalação e Configuração

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/blog-api.git
cd blog-api
```

### 2. Instale as dependências
```bash
npm install
```

### 3. Configure as variáveis de ambiente
Crie um arquivo `.env` na raiz do projeto:

```env
# Banco de dados
DB_CONNECTION_STRING=mongodb://localhost:27017/blog-api
# ou para MongoDB Atlas:
# DB_CONNECTION_STRING=mongodb+srv://usuario:senha@cluster.mongodb.net/blog-api

# JWT Secret (gere uma chave segura)
JWT_SECRET=sua_chave_secreta_super_segura_aqui

# Ambiente
NODE_ENV=development

# Porta do servidor
PORT=3000
```

### 4. Inicie o servidor
```bash
# Desenvolvimento (com hot reload)
npm run dev

# Produção
npm start
```

## 📖 Documentação da API

### Acesso à Documentação Swagger
Após iniciar o servidor, acesse a documentação interativa em:
```
http://localhost:3000/api-docs
```

### Endpoints Principais

#### 🔐 Autenticação
```http
POST /auth/login
Content-Type: application/json

{
  "email": "usuario@email.com",
  "password": "suasenha123"
}
```

#### 👥 Usuários
| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| `GET` | `/users` | Lista todos os usuários | ❌ |
| `POST` | `/users` | Cria novo usuário | ❌ |
| `GET` | `/users/:id` | Busca usuário por ID | ❌ |
| `PUT` | `/users/:id` | Atualiza usuário | ✅ |
| `DELETE` | `/users/:id` | Remove usuário | ✅ |
| `GET` | `/users/search/:name` | Busca por nome | ❌ |

#### ✍️ Autores
| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| `GET` | `/authors` | Lista todos os autores | ❌ |
| `POST` | `/authors` | Cria novo autor | ✅ |
| `GET` | `/authors/:id` | Busca autor por ID | ❌ |
| `PUT` | `/authors/:id` | Atualiza autor | ✅ |
| `DELETE` | `/authors/:id` | Remove autor | ✅ |
| `GET` | `/authors/search/:name` | Busca por nome | ❌ |

#### 📝 Posts
| Método | Endpoint | Descrição | Autenticação |
|--------|----------|-----------|--------------|
| `GET` | `/posts` | Lista todos os posts | ❌ |
| `POST` | `/posts` | Cria novo post | ✅ |
| `GET` | `/posts/:id` | Busca post por ID | ❌ |
| `PUT` | `/posts/:id` | Atualiza post | ✅ |
| `DELETE` | `/posts/:id` | Remove post | ✅ |
| `GET` | `/posts/search/:keyword` | Busca por palavra-chave | ❌ |

### 🔑 Autenticação

Para acessar endpoints protegidos, inclua o token JWT no header:

```http
Authorization: Bearer seu_token_jwt_aqui
```

## 📁 Estrutura do Projeto

```
API-EXPRESS-JS-MAIN/
│
├── src/
│   ├── config/
│   │   ├── dbConnect.js          # Configuração do MongoDB
│   │   ├── jsonSecret.js         # Configuração do JWT Secret
│   │   └── swagger.js            # Configuração do Swagger
│   │
│   ├── controllers/              # Controladores (recebem requests)
│   │   ├── authController.js     # Autenticação
│   │   ├── authorController.js   # Gestão de autores
│   │   ├── postController.js     # Gestão de posts
│   │   └── userController.js     # Gestão de usuários
│   │
│   ├── dtos/                     # Data Transfer Objects
│   │   ├── authorDto.js          # DTO para autores
│   │   ├── postDto.js            # DTO para posts
│   │   └── userDto.js            # DTO para usuários
│   │
│   ├── middleware/               # Middlewares
│   │   └── authMiddleware.js     # Validação JWT
│   │
│   ├── models/                   # Modelos do Mongoose
│   │   ├── Author.js             # Schema de autores
│   │   ├── Post.js               # Schema de posts
│   │   └── User.js               # Schema de usuários
│   │
│   ├── repositories/             # Camada de acesso a dados
│   │   ├── authorRepository.js   # Repositório de autores
│   │   ├── baseRepository.js     # Repositório base
│   │   ├── postRepository.js     # Repositório de posts
│   │   └── userRepository.js     # Repositório de usuários
│   │
│   ├── routes/                   # Definição de rotas
│   │   ├── authorRoutes.js       # Rotas de autores
│   │   ├── authRoutes.js         # Rotas de autenticação
│   │   ├── index.js              # Configuração geral das rotas
│   │   ├── postRoutes.js         # Rotas de posts
│   │   └── userRoutes.js         # Rotas de usuários
│   │
│   ├── services/                 # Lógica de negócio
│   │   ├── authorService.js      # Serviços de autores
│   │   ├── authService.js        # Serviços de autenticação
│   │   ├── postService.js        # Serviços de posts
│   │   └── userService.js        # Serviços de usuários
│   │
│   └── app.js                    # Configuração principal do Express
│
├── .env                          # Variáveis de ambiente
├── .gitignore                    # Arquivos ignorados pelo Git
├── package.json                  # Dependências e scripts
├── README.md                     # Este arquivo
└── server.js                     # Ponto de entrada da aplicação
```

## 🎯 Exemplos de Uso

### 1. Registrar um novo usuário
```bash
curl -X POST http://localhost:3000/users \
  -H "Content-Type: application/json" \
  -d '{
    "name": "João Silva",
    "email": "joao@email.com",
    "password": "minhasenha123"
  }'
```

### 2. Fazer login
```bash
curl -X POST http://localhost:3000/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "email": "joao@email.com",
    "password": "minhasenha123"
  }'
```

### 3. Criar um autor (com autenticação)
```bash
curl -X POST http://localhost:3000/authors \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer SEU_TOKEN_AQUI" \
  -d '{
    "name": "Maria Santos",
    "email": "maria@email.com"
  }'
```

### 4. Criar um post (com autenticação)
```bash
curl -X POST http://localhost:3000/posts \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer SEU_TOKEN_AQUI" \
  -d '{
    "title": "Como criar uma API REST",
    "description": "Tutorial completo sobre APIs REST",
    "author": "ID_DO_AUTOR_AQUI"
  }'
```

## 🧪 Testando a API

### Usando o Swagger UI
1. Acesse `http://localhost:3000/api-docs`
2. Experimente os endpoints diretamente na interface
3. Use o botão "Authorize" para inserir seu token JWT

### Usando Postman
1. Importe a collection do Swagger
2. Configure uma variável de ambiente para o token
3. Execute os testes sequencialmente

### Usando cURL
Veja os exemplos de uso acima para comandos cURL específicos.

## 🛡️ Segurança

- **Senhas**: Hash com bcrypt (salt rounds: 8)
- **JWT**: Tokens com expiração de 24 horas
- **Validação**: Validação robusta de dados de entrada
- **CORS**: Configurado para ambiente de desenvolvimento
- **Headers**: Headers de segurança recomendados

## 🚀 Deploy

### Deploy no Heroku
```bash
# Instalar Heroku CLI
npm install -g heroku

# Login no Heroku
heroku login

# Criar aplicação
heroku create sua-api-nome

# Configurar variáveis de ambiente
heroku config:set DB_CONNECTION_STRING=sua_string_mongodb
heroku config:set JWT_SECRET=sua_chave_secreta

# Deploy
git push heroku main
```

### Deploy no Railway
```bash
# Conectar repositório no Railway
# Configurar variáveis de ambiente no dashboard
# Deploy automático via Git
```

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add: amazing feature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Scripts Disponíveis

```bash
# Desenvolvimento com hot reload
npm run dev

# Produção
npm start

# Testes (quando implementados)
npm test

# Lint (quando configurado)
npm run lint
```

## 🐛 Troubleshooting

### Problemas Comuns

#### 1. Erro de conexão com MongoDB
```
Erro: Conexão recusada
Solução: Verifique se o MongoDB está rodando e a string de conexão está correta
```

#### 2. Token JWT inválido
```
Erro: Usuário não autorizado
Solução: Verifique se o token está sendo enviado corretamente no header Authorization
```

#### 3. Porta já em uso
```
Erro: EADDRINUSE :::3000
Solução: Altere a porta no arquivo .env ou mate o processo que está usando a porta 3000
```

## 📊 Status do Projeto

- ✅ Autenticação JWT
- ✅ CRUD Usuários
- ✅ CRUD Autores  
- ✅ CRUD Posts
- ✅ Busca por palavra-chave
- ✅ Documentação Swagger
- ⏳ Testes unitários (planejado)
- ⏳ Validação de dados avançada (planejado)
- ⏳ Rate limiting (planejado)
- ⏳ Upload de imagens (planejado)

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 👨‍💻 Desenvolvedor

Desenvolvido como parte do curso de Arquitetura de Software.

---

**⭐ Se este projeto te ajudou, considere dar uma estrela no repositório!**

**📧 Dúvidas? Abra uma issue ou entre em contato!**