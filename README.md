# This project is a example of how you can implement Sentry in RoR.

### Example of success: GET '/'
Execute the request without problems.

### Example of unknown error: GET '/fail'
Execute the request with an unknown problem, in the moment of the of the error raise the event is saved on Sentry;

### Example of success: GET '/send'
Execute the request that could have a problem or not, in the moment that the occurs an error save it on Sentry and continue the request.

# Esse projeto é um exemplo de como você pode implementar o Sentry no RoR.

### Exemplo de sucesso: GET '/'
Executa a requisição sem problemas.

### Exemplo de erro desconhecido: GET '/fail'
Executa uma requisição com problema desconhecido, no momento que acontece o erro esse evento é registrado no Sentry.

### Exemplo de sucesso com envio de erro: GET '/send'
Executa uma requisição que pode ter problema ou não, no momento que acontece o erro tratado o evento é registrado no Sentry e segue a requisição normalmente.
