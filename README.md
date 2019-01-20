# morcert-app

## Develop

## RUN

##### Image

> build image

```powershell
>cd /motcert-app/
>./cmd/build-image-dev.sh # build dev image (motcert/platform-app-dev-env:0.0.1)
```

##### Run Container
```powershell
>./cmd/local-start.sh # run container with name (`motcert.platform-app.dev`)
```

##### Remove Container
```powershell
>./cmd/clean.sh # remove container with name (`motcert.platform-app.dev`)
```

## Deploy

...



## Docker Index

|       -     | Images                      | container         |
| ----------- | --------------------------- | ----------------- |
| development | motcert/platform-app-dev-env:0.0.1 | `motcert.platform-app.dev` `9999:80` |
| production  | motcert/platform-app:0.0.1         |        none      |

