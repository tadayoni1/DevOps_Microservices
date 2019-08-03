[![CircleCI](https://circleci.com/gh/tadayoni1/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/tadayoni1/DevOps_Microservices/tree/master)

## Project Overview

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Create a password file
* Create `~/dockerpassword` file and paste your docker password
* Update the user name for `docker push` in `upload_docker.sh` to your own username

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


## Project files
* `app.py` is a python app that creates an api to run machine learning model to predict house prices
* `model_data` folder contains a machine learning model to predict house prices
* `Dockerfile` is the Dockerfile to create the docker image for our Microservice api
* `run_docker.sh` `upload_docker.sh` and `run_kubernetes.sh` are the scripts to create the docker image, upload it to docker repo and deploy it to a kubernetes cluster


