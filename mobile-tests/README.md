# Mobile Automation Tests

Este módulo contém testes automatizados mobile utilizando Robot Framework e Appium.

O objetivo é validar fluxos principais do aplicativo demo mobile, cobrindo login, navegação, interações e mensagens de erro.

---

# Tecnologias Utilizadas

- Robot Framework  
- Appium  
- AppiumLibrary  
- Android Emulator  
- GitHub Actions (estrutura de CI)

---

# Estrutura

```
mobile-tests/
├── tests/
├── resources/
├── data/
├── app/
└── README.md
```

---

# Cobertura de Testes

Os testes cobrem:

- Login válido  
- Login inválido  
- Validação de campos obrigatórios  
- Navegação entre telas  
- Acesso ao menu  
- Abertura de produtos  
- Adição ao carrinho  
- Visualização do carrinho  
- Mensagens de erro  
- Testes independentes com reset de app  

Total: **10 cenários automatizados**

---

# Pré-requisitos

- Node.js instalado  
- Appium instalado  
- Driver UiAutomator2 instalado  
- Android Emulator ou dispositivo físico  
- Python + Robot Framework  

Instalar Appium:

```bash
npm install -g appium
appium driver install uiautomator2
```

Instalar dependências Python:

```bash
pip install -r requirements.txt
```

---

#  Como Executar

1️) Iniciar Appium:

```bash
appium
```

2️) Iniciar emulador Android

3️) Rodar testes:

```bash
robot -d results mobile-tests/tests
```

---

# Evidências e Relatórios

Os testes geram:

- report.html  
- log.html  
- output.xml  
- screenshots automáticos

Arquivos ficam na pasta `results/`.

---

# CI/CD

A estrutura do projeto está preparada para integração com CI.

Testes mobile podem ser integrados a device farms como:

- BrowserStack  
- Sauce Labs  

---

# Boas Práticas Aplicadas

- Page Object Model  
- Separação de locators  
- Waits explícitos  
- Reset do app entre testes  
- Testes independentes  
- Captura automática de evidências

---

# Objetivo

Projeto desenvolvido para prática de automação mobile e demonstração de habilidades em QA Mobile.