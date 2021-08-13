# FakeRESTApi.Web V1
<img width="770" height="515" src="https://ialui.com.br/wp-content/uploads/2020/11/api-770x515.png" class="attachment-contentberg-main size-contentberg-main wp-post-image" alt="API" loading="lazy" title="API: Podem ser integradas a sua telefonia?" srcset="https://ialui.com.br/wp-content/uploads/2020/11/api-770x515.png 770w, https://ialui.com.br/wp-content/uploads/2020/11/api-270x180.png 270w, https://ialui.com.br/wp-content/uploads/2020/11/api-270x180@2x.png 540w" sizes="(max-width: 770px) 100vw, 770px">

## Motivação
Teste realizado na API com objetivo testar os principais verbos HTTP na rota de Books e realizar um teste de contrato.


<a href="https://fakerestapi.azurewebsites.net/index.html">FakeRESTApi.Web V1</a>


### 🛠️ Ferramentas Utilizadas

Visual Studio Code 
<br>Ruby 2.7
<br>Cmder 1.3

### :gem:Gems Disponíveis em <a href="https://rubygems.org">Rubygems</a>
<br>gem "rspec", "3.10"
<br>gem "httparty", "0.18.1"
<br>gem "json_matchers"
<br>gem "rufo"


### :computer: Preparando o Ambiente

##### Clone o projeto do GitHub em um diretório:

```
cd "seu diretorio"
https://github.com/pauloribeiro93/TestFakeRESTApi.git

```

##### Execute o seguinte comando para instalar as dependências do Gemfile

```
bundle install
```

### :microscope: Cenários de Testes

##### Foram criados os seguintes cenários:

```
- Procurar todos os livros (GET ​/api​/v1​/Books)
- Realizar o registro de um livro (POST​/api​/v1​/Books)
- Procurar um livro especifico (GET​/api​/v1​/Books​/{id})
- Realizar alteração de um registro de um livro (PUT​/api​/v1​/Books​/{id})
- Deletar um livro especifico (DELETE​/api​/v1​/Books​/{id})
- Teste de contrato(GET​/api​/v1​/Books​/{id})
```
##### Validações aplicadas no retorno:
 
```
- Http Status Code
- Validação de teste de contrato para cada campo 
```


## ⚙️ Executando os testes

##### Utilize o seguinte comando para executar todos os cenários de teste: 

`````
rspec
``````

## ✒️ Autor


## Paulo Ribeiro

[![Linkedin Badge](https://img.shields.io/badge/-Paulo-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/ribeiro-paulo/)](https://www.linkedin.com/in/ribeiro-paulo/) 
[![Outlook Badge](https://img.shields.io/badge/-Paulo_Ribeiro-0078d4?style=flat-square&logo=microsoft-outlook&logoColor=white&link=mailto:pauloribeiro93@hotmail.com)](mailto:pauloribeiro93@hotmail.com)
