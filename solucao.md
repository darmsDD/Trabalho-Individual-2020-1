## Containerização

Para a containerização foi utilizado as ferramentas do docker e docker-compose.
Para a api e o front-end foram criados
dockerfiles em suas respectivas pastas(api e client) e na pasta principal foi criado um docker-compose.yml para administrar a api o fronted e o database, que já possuía uma imagem. Foi também criado um docker.compose.yml para o usuário poder subir apenas o backend com o banco.

### Backend com o Banco
Para rodar apenas o backend com o banco é necessário realizar os seguintes comandos:
1. ```docker-compose -f ./api/docker-compose.yml up --build```
2. Para configurar corretamente o banco na sua primeira execução
    1. Crie o banco com : ```docker-compose -f ./api/docker-compose.yml run api rake db:create```
    2. Realize as migrações com: ```docker-compose -f ./api/docker-compose.yml run api rake db:migrate```
3. Agora a api com o banco deve estar funcionando normalmente.

### Frontend
Para rodar apenas o frontend é necessário realizar os seguintes comandos
1. ```docker build -t vue-app ./client```
2. ```docker run -p 8080:8080 vue-app```

### Rodar o projeto por completo
Para rodar o projeto todo realize os seguintes comandos:
1. ```docker-compose -f ./docker-compose.yml up --build```
2. Caso não tenha configurado o banco realize os comandos:
    1. Crie o banco com : ```docker-compose run api rake db:create```
    2. Realize as migrações com: ```docker-compose run api rake db:migrate```
    
## Integração Contínua
Para a integração contínua eu utilizei 2 ferramentas.
1. SonarCloud
2. Github Actions

Eu criei 2 jobs um para o backend(api) e outra para o frontend(client). O job da api era realizado em 4 etapas
1. Cria e sobe o contâiner
2. Cria e roda as migrações do banco
3. Realiza os testes
4. Avisa o sonar cloud para coletar as métricas do projeto.

O jobs do client era realizado em 3 etapas, não possuindo a etapa 2. 

Para acessar o SonarCloud clique no [link](https://sonarcloud.io/dashboard?id=darmsDD_Trabalho-Individual-2020-1).
