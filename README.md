# Deploy a docker application to a dockerHost

This project is intended to deploy a docker api to a docker host.

## Pipeline variables that need to be set in the Jenkins file

 '''
  environment {
    registry = "<DOCKER_REGISTRY>"
    registryCredential = ">JENKINS_REGISTRY_CREDENTIAL>"
    dockerImage = <API_IMAGE_NAME:TAG>
    dockerHost="tcp://<DOCKER_HOST>:PORT"
    containerName = "CONTAINER_NAME_RUN"
    apiUrl= "<API_URL>"
    apiPort=<API_PORT>
    gitCredential="<JENKINS_GIT_CREDENTIAL"
  }
'''