# vue-docker-basic-app

## Develop

## RUN

##### Image

> build image

```powershell
>cd /vue-docker-basic-app/
>./cmd/build-image-dev.sh # build dev image (basic/platform-app-dev-env:0.0.1)
```

##### Run Container
```powershell
>./cmd/local-start.sh # run container with name (`basic.platform-app.dev`)
```

##### Remove Container
```powershell
>./cmd/clean.sh # remove container with name (`basic.platform-app.dev`)
```

## Deploy

...



## Docker Index

|       -     | Images                      | container         |
| ----------- | --------------------------- | ----------------- |
| development | basic/platform-app-dev-env:0.0.1 | `basic.platform-app.dev` `9999:80` |
| production  | basic/platform-app:0.0.1         |        none      |

