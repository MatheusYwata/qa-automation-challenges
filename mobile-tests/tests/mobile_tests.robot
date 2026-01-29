*** Settings ***
Resource    ../resources/Base.resource
Resource    ../resources/LoginPage.resource
Resource    ../resources/ProductsPage.resource
Resource    ../resources/MenuPage.resource

Suite Setup       Abrir App
Suite Teardown    Fechar App

Test Setup        Resetar App
Test Teardown     Capture Page Screenshot

*** Test Cases ***

# ---------- LOGIN ----------

Login válido
    Login Com Credenciais    bob@example.com    10203040
    Validar Login Sucesso

Login inválido
    Login Com Credenciais    errado@qa.com    123456
    Validar Mensagem Login Inválido

Login sem senha
    Login Com Credenciais    bob@example.com    ${EMPTY}
    Validar Campos Obrigatórios

Login sem usuário
    Login Com Credenciais    ${EMPTY}    10203040
    Validar Campos Obrigatórios


# ---------- NAVEGAÇÃO ----------

Abrir menu lateral
    Abrir Menu

Acessar tela About
    Acessar About
    Validar Tela About

Voltar para Products
    Acessar About
    Validar Tela About
    Voltar Para Products


# ---------- PRODUTOS ----------

Abrir primeiro produto
    Abrir Primeiro Produto

Adicionar produto ao carrinho
    Abrir Primeiro Produto
    Adicionar Ao Carrinho

Abrir carrinho
    Abrir Carrinho
    Validar Tela Carrinho
