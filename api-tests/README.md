# API Automation Tests

Este módulo contém testes automatizados de API REST utilizando Robot Framework.

O objetivo é validar operações CRUD de usuários, autenticação e regras de negócio da API.

---

# Tecnologias Utilizadas

- Robot Framework  
- RequestsLibrary  
- Python  
- GitHub Actions (CI)

---

# Estrutura

```
api-tests/
├── tests/
├── resources/
├── data/
└── README.md
```

---

# Cobertura de Testes

Os testes cobrem:

- Criação de usuário  
- Consulta de usuários  
- Atualização de usuário  
- Exclusão de usuário  
- Autenticação com token JWT  
- Cenários positivos e negativos  
- Validação de status codes e mensagens

---

# Pré-requisitos

- Python instalado  
- Robot Framework instalado  

Instalar dependências:

```bash
pip install -r requirements.txt
```

---

# Como Executar

Na raiz do projeto:

```bash
robot -d results api-tests/tests
```

---

# Relatórios

Após a execução:

- report.html  
- log.html  
- output.xml  

Os relatórios ficam na pasta `results/`.

---

# CI/CD

Os testes de API estão integrados ao GitHub Actions.

A cada push ou pull request:

- dependências são instaladas  
- testes são executados  
- relatórios são gerados como artifacts  

---

# Boas Práticas Aplicadas

- Page Object para APIs (keywords reutilizáveis)  
- Testes independentes  
- Dados dinâmicos  
- Cenários positivos e negativos  
- Organização modular

---

# Objetivo

Projeto desenvolvido para prática de automação de testes de API e demonstração de habilidades em QA.






