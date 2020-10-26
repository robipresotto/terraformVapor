# terraformVapor
Simple example how to dockerize and terraform locally your vapor app.

### Requirements
- Docker
- Terraform

### Getting Started
Make build to dockerize the app \
Make deploy to terraform the app. 

```shell
make build && \
make deploy
```

The app will be available at: ``http://localhost:8080`` \
Note: Make sure to port forward the docker port 8080.
