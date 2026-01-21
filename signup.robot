*** Settings ***
Documentation     Cenários de testes de cadastro de usuário
Library           Browser

*** Test Cases ***
Cadastro de Novo Usuário com Sucesso
    
    #Abre o navegador e acessa a página de cadastro
    New Browser    browser=chromium    headless=False    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page       https://adopet-tau.vercel.app/cadastro

    #Checkpoint: Verifica se a página possuí um botão com nome Cadastrar
    Wait For Elements State       xpath=//button[text()='Cadastrar']      visible    5s
    Get Text                      xpath=//button[text()='Cadastrar']       equal  Cadastrar

    #Preenche os campos do formulário de cadastro
    Fill Text                     id=name                  Teste Robot
    Fill Text                     id=email                 teste.robot@email.com
    Fill Text                     id=pass-create           Robot@123456
    Fill Text                     id=pass-confirm          Robot@123456

    #Clica no botão Cadastrar
    Click                         xpath=//button[text()='Cadastrar']
    
    #Checkpoint: Verifica se o usuário foi redirecionado para a página de login
    Get Url                       equal    https://adopet-tau.vercel.app/login
    
    Sleep                         3s

    Take Screenshot

    #Fecha o navegador
    Close Browser