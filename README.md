#### GCLOUD CLI RUNNING ON DOCKER

##### Introduction

- This is easier to test gcloud cli on local host without doing too much installations.

- Build the image:

```
$ docker build -t gcloud-cli .
```

- Run and SSH into the Container:

```
$ docker exec -it gcloud-cli /bin/bash
```
