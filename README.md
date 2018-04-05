# Front-End _Build once run everywhere_ POC

The idea is to be able to build a front end package only once, and to deploy it on any environment. The environment dependand values will be injected by nginx when it serves the file. This is only at a POC stage (no caching, no dynamic variable injection).

# To try

```
docker build -t efavre/envinject .
```
```
docker run -e "API_URL=https://my.api/v1" -it -p 80:80 efavre/envinject
```

Then browse to http://localhost/index.html

Stop the container, change the API_URL url value in the docker command, and refresh the page.
