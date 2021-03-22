#### GCLOUD CLI RUNNING ON DOCKER

##### Introduction

- This is easier to test gcloud cli on local host without doing too much installations.

- Build the image:

```
$ docker build -t gcloud-cli .
```

- Run:

```
$ docker run --name gcloud gcloud-cli
```

- SSH into the Container:

```
$ docker exec -it gcloud /bin/bash
```
