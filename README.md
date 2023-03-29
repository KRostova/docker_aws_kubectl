# docker_aws_kubectl

## Goal
This Docker Image will be useful if you need an image that include AWS Command Line Interface, Kubectl and Helm on alpine.

## Step 1 - Version

Use alpine:3.17 for your image.
```
FROM docker.io/alpine:3.17
```

## Step 2 - Add AWS Command Line Interface
```
RUN apk add aws-cli
```
## Step 3 - Add Kubectl
The Alpine image does not have the standard ability to install kubectl, so using the function.
```
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
```
Install kubectl
```
RUN apk add kubectl
```
## Step 4 - Add Helm
```
RUN apk add helm
```
## Step 6 Building Image
Build an image.
```
docker build -t docker_aws_kubectl:latest ./
```
