# 🤖 Automação de Testes - Adopet

Este projeto contém cenários de testes automatizados para a aplicação web **Adopet**, focando na validação de cadastro de usuários e integridade da interface.

O projeto foi desenvolvido utilizando **Robot Framework** com a library **Browser** (Playwright), garantindo testes rápidos, estáveis e com suporte moderno a tecnologias web.

## 🚀 Stack Tecnológica

* **Linguagem:** [Python](https://www.python.org/)
* **Framework:** [Robot Framework](https://robotframework.org/)
* **Engine de Testes:** [Browser Library (Playwright)](https://robotframework-browser.org/)
* **Versionamento:** Git & GitHub

## ⚙️ Pré-requisitos

Para executar este projeto localmente, certifique-se de ter instalado:

1.  **Python 3.8+**
2.  **Node.js** (Necessário para a execução do Playwright)

## 📦 Instalação e Configuração

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/gabrielmacedosantos/robot-virtual.git](https://github.com/gabrielmacedosantos/robot-virtual.git)
    cd robot-virtual
    ```

2.  **Instale as dependências:**
    ```bash
    pip install robotframework robotframework-browser
    ```

3.  **Inicialize o Playwright:**
    Este passo é obrigatório para baixar os binários dos navegadores (Chromium, Firefox, WebKit).
    ```bash
    rfbrowser init
    ```

## ▶️ Como Executar os Testes

Para rodar os testes e gerar os relatórios (Log e Report):

```bash
# Executa todos os testes e salva os resultados na pasta 'logs'
robot -d ./logs .