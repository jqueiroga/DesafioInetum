*** Passos para instalar o Ambiente para reprodução dos testes ***
Crie uma pasta na raiz (c:\DesafioInetum) e decompacte o arquivo zipado

Instalar o Ruby
===============
Se você está no Windows, existe um ótimo projeto para ajudá-lo a instalar o Ruby: RubyInstaller. Ele te dá tudo o que você precisa para configurar um ambiente de desenvolvimento em Ruby completo no Windows.

Apenas baixe, rode e está pronto! O RubrInstaller pode ser baixado no site: https://rubyinstaller.org/
Para verificar acesse um consele (CMD por exemplo) digite 'ruby --version' e verifique se tem alguma versão instalado no seu sistema operacional.

Instalando as bibliotecas(Gem) e dependências do Ruby
=================================================
Para consegue executar todos os testes temos que instalar as bibliotecas(Gem) do Cucumber, Capybara entre outros.

Para a instalação das bibliotecas(Gems) temos dois modos. 

    - Instalar as Gem através do Gemfile
    -------------------------------------
    1. Accesse um Prompt de Comando
    2. Certifique que esteja na raiz do projeto de teste. 
    3. Digite o comando 'gem install bundler'
    4. Aguarde até todas as gems que estão no arquivo Gemfile sejam baixadas.

    - Instalar as Gem através de cada biblioteca
    -------------------------------------
    1. Accesse um Prompt de Comando
    2. Certifique que esteja na raiz do projeto de teste. 
    3. Digite os comandos:
        3.1 'gem install cucumber'
        3.1 'gem install capybara'
        3.1 'gem install selenium-webdriver'
        3.1 'gem install faker'
    4. Aguarde até todas as gems estejam instaladas.
    
Instalando o ChromeDriver
=========================
Para execução no dos testes no browser do Chrome necessitamos que realizar os seguintes passos:
    1. Acesse o help do Browser Chromer e identifique a versão instalado no Windows
    2. Baixar o ChromeDriver referente a mesma versão instalada
        Acesse: https://chromedriver.storage.googleapis.com/index.html
    3. Descompacte o arquivo baixado em uma pasta na pasta raiz do sistema (c:\browsersdriver)
    4. Mapeie a pasta do Chromedriver nas variáveis de ambiente (PATH)
        More info at https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver.

Instalando o geckodriver para Firefox
=========================
Para execução no dos testes no browser do Chrome necessitamos que realizar os seguintes passos:
    1.  Baixar o geckodriver do Firefox referente a mesma versão instalada
        Acesse: https://github.com/mozilla/geckodriver/releases
    2. Descompacte o arquivo baixado em uma pasta na pasta raiz do sistema (c:\browsersdriver)
    3. Mapeie a pasta do geckodriver nas variáveis de ambiente (PATH)
        More info at https://developer.mozilla.org/en-US/docs/Web/WebDriver       


Executando os testes
====================

Uma vez o ambiente instalado para executar os testes é simples.

    Rodar todos os testes de uma só vez (Por Default irá executar no Chromer)
    -----------------------------------
    1. Acesse o prompt de comando (cmd)
    2. Certifique que esteja na pasta raiz do projeto
    3. Digite o comando 'cucumber'
    4. Visualize no prompt o andamento da execução dos testes 
    5. Acesse a pasta 'logs' e verifique o log de execução (report.html)

    Rodar todos os testes individualmente (Por Default irá executar no Chromer)
    -----------------------------------
    1. Acesse o prompt de comando (cmd)
    2. Certifique que esteja na pasta raiz do projeto
    3. Digite o comando 'cucumber -t <@+testeX>', onde o <testeX> é o teste que foi solicitado no email
        3.1 Exemplo: 'cucumber -t @teste1' (Para executar o Teste 1: Registo de Utilizador.)
    4. Visualize no prompt o andamento da execução dos testes 
    5. Acesse a pasta 'logs' e verifique o log de execução (report.html)


    Para rodar no Firefox
    ---------------------
    1. Abra o arquivo cucumber.yml
    2. Na linha 2, "default: --publish-quiet -p html -p bdd -p local -p chrome"
    3. substitua o 'chrome' por 'firefox' e salve o arquivo
    4. Acesse o prompt de comando (cmd)
    5. Certifique que esteja na pasta raiz do projeto
    6. Digite o comando ' cucumber'
    ou
    6. Digite o comando 'cucumber -t <@+testeX>', onde o <testeX> é o teste que foi solicitado no email
        6.1 Exemplo: 'cucumber -t @teste1' (Para executar o Teste 1: Registo de Utilizador.)
    7. Visualize no prompt o andamento da execução dos testes 
    8. Acesse a pasta 'logs' e verifique o log de execução (report.html)