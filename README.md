# QA Automation Challenges

Este repositório contém desafios de automação de testes com foco em boas práticas de QA, organização de projeto e integração contínua.

O projeto contempla:

- Automação de testes de API REST  
- Automação de testes Mobile  
- Integração Contínua (CI) com GitHub Actions  

---

# Estrutura do Projeto
```bash
qa-automation-challenges/
│
├── api-tests/
│   ├── tests/
│   ├── resources/
│   ├── data/
│   └── README.md
│
├── mobile-tests/
│   ├── tests/
│   ├── resources/
│   ├── data/
│   └── README.md
│
├── .github/
│   └── workflows/
│       └── api-tests.yml
│
├── requirements.txt
└── README.md
```

- ***Cada módulo possui README próprio com instruções específicas.***


---

# Tecnologias Utilizadas

- Robot Framework  
- RequestsLibrary  
- AppiumLibrary  
- Python  
- GitHub Actions  

---

# Testes de API

Os testes de API cobrem:

 - CRUD completo de usuários  
 - Autenticação via token  
 - Cenários positivos e negativos  
 - Validação de regras de negócio  
 - Verificação de status codes e respostas  

### Exemplos de cenários negativos

- Login com credenciais inválidas  
- Criação de usuário com email duplicado  
- Busca de usuário inexistente  
- Acesso com token inválido  

---

# Testes Mobile

Os testes mobile utilizam:

- Robot Framework  
- Appium  
- Padrão Page Object Model  

Cobrem fluxos principais da aplicação como:

- Login  
- Navegação entre telas  
- Validações de interface  

---

# Como executar os testes localmente

## Instalar dependências

pip install -r requirements.txt

---

## Executar testes de API

robot -d results api-tests/tests

---

## Executar testes Mobile

robot -d results mobile-tests/tests

---

# Integração Contínua (CI)

O projeto possui pipeline configurado no GitHub Actions.

A cada push ou pull request:

- Dependências são instaladas  
- Testes automatizados são executados  
- Relatórios são gerados  
- Artifacts ficam disponíveis para download  

---

# Relatórios

Após a execução dos testes, são gerados:

- report.html  
- log.html  

Esses relatórios permitem análise detalhada dos testes executados.

---

# Boas práticas aplicadas

- Page Object Model  
- Separação entre testes e keywords  
- Dados dinâmicos para evitar conflito de dados  
- Testes independentes  
- Pipeline de CI configurado  
- Estrutura escalável de projeto  

---

# Objetivo

Projeto desenvolvido para fins de estudo, prática de automação de testes e avaliação técnica em QA.

