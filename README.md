#### GCLOUD CLI RUNNING ON DOCKER

##### Introduction

- This is easier to test gcloud cli on local host without doing too much installations.

- Build the image:

```
$ docker build -t gcloud-cli .
```

- Run Container & SSH into the Container:

```
$ docker run --name gcloud --rm -it gcloud-cli:latest
```

- Authenticate to Google Cloud By obtaining new credentials.:

```
$ source google-cloud-sdk/path.bash.inc
$ source google-cloud-sdk/completion.bash.inc
$ gcloud auth login
```
