# This project is a example of how you can implement Sentry in RoR.

### Example of success: GET '/'
Execute the request without problems.

### Example of unknown error: GET '/fail'
Execute the request with an unknown problem, in the moment of the of the error raise the event is saved on Sentry;

### Example of success: GET '/send'
Execute the request that could have a problem or not, in the moment that the occurs an error save it on Sentry and continue the request.

### Steps to run Sentry on localmachine with docker

```
docker run -d --name sentry-redis redis
docker run -d --name sentry-postgres -e POSTGRES_PASSWORD=secret -e POSTGRES_USER=sentry postgres
docker run --rm sentry config generate-secret-key # It will generate a secret key. Overwrite all <secret-key> with this.

# This will run the migrations of sentry on postgres
docker run -it --rm -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 upgrade

# This will run the sentry
docker run -d -p 8080:9000 --name my-sentry -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-redis:redis --link sentry-postgres:postgres sentry:9.0

# This will run the sentry cron
docker run -d --name sentry-cron -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 run cron

# This will run the sentry worker
docker run -d --name sentry-worker-1 -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 run worker

# If need to run containers again

docker container start sentry-redis
docker container start sentry-postgres

docker container start my-sentry
docker container start sentry-cron
docker container start sentry-worker-1
```

### Watch on youtube [portuguese]

- [How make Sentry conteineres](https://www.youtube.com/watch?v=FqAXn1WrU_Y)
- [How implement Sentry](https://www.youtube.com/watch?v=N4_z4uSPtJU)

### Contact me

- [Telegram](https://t.me/allan_klaus)
- [Twitter](https://twitter.com/allan_klaus)

# Esse projeto é um exemplo de como você pode implementar o Sentry no RoR.

### Exemplo de sucesso: GET '/'
Executa a requisição sem problemas.

### Exemplo de erro desconhecido: GET '/fail'
Executa uma requisição com problema desconhecido, no momento que acontece o erro esse evento é registrado no Sentry.

### Exemplo de sucesso com envio de erro: GET '/send'
Executa uma requisição que pode ter problema ou não, no momento que acontece o erro tratado o evento é registrado no Sentry e segue a requisição normalmente.

### Passos para rodar o Sentry na máquina local usando docker

```
docker run -d --name sentry-redis redis
docker run -d --name sentry-postgres -e POSTGRES_PASSWORD=secret -e POSTGRES_USER=sentry postgres
docker run --rm sentry config generate-secret-key # Irá gerar um token. Sobrescreva os <secret-key> com esse token.

# Este irá rodar as migrações do sentry no postgres.
docker run -it --rm -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 upgrade

# Este irá rodar o sentry
docker run -d -p 8080:9000 --name my-sentry -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-redis:redis --link sentry-postgres:postgres sentry:9.0

# Este irá rodar o sentry cron
docker run -d --name sentry-cron -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 run cron

# Este irá rodar o sentry worker
docker run -d --name sentry-worker-1 -e SENTRY_SECRET_KEY='<secret-key>' --link sentry-postgres:postgres --link sentry-redis:redis sentry:9.0 run worker

# Se precisar iniciar os container novamente

docker container start sentry-redis
docker container start sentry-postgres

docker container start my-sentry
docker container start sentry-cron
docker container start sentry-worker-1
```

### Assista no youtube

- [Como criar os conteineres do Sentry](https://www.youtube.com/watch?v=FqAXn1WrU_Y)
- [Como implementar o Sentry](https://www.youtube.com/watch?v=N4_z4uSPtJU)

### Fale comigo

- [Telegram](https://t.me/allan_klaus)
- [Twitter](https://twitter.com/allan_klaus)