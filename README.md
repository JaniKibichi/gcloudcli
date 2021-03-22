#### GCLOUD CLI RUNNING ON DOCKER

##### Introduction

- This is easier to test gcloud cli on local host without doing too much installations.

- Build the image:

```
$ docker build -t googlecloud-cli .
```

- Run:

```
$ docker run --name googlecloud googlecloud-cli
```

- SSH into the Container:

```
$ docker exec -it googlecloud /bin/bash
```

- Authenticate to Google Cloud By obtaining new credentials.:

```
$ gcloud auth login
```
