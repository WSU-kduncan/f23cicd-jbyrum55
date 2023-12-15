# CD Project Overview
This Continuous Deployment projects goal is to automate the tagging and deployment process for a Docker app using GitHub actions.

# Why
This CD process is important because it automates the tasks which saves the user time, is way more reliable, and is more efficient.

# Tools Used
- **Git**: We use this for our README file.
- **GitHub Actions**: We use this as an automation tool for workflows when triggered by GitHub events.
- **Docker**: This is our container program that runs our images and our tags.

# How to Generate a Tag

1. Update or change your code to include what you want.
2. Be sure to commit your changes to your repository.
3. To generate a tag use the command `git tag -a v1.0.0 -m “First Version”` be sure to up the version which each change. Whether the change is Major, Minor, or a Patch will determine what to bump the number up to.
4. Push the tag using the command `git push origin v1.0.0` use your own version number.

# Behavior of a GitHub Workflow

A GitHub Action is triggered when you push a tag. The workflow generates tags for the Docker Image based on the repositories metadata. Next, it pushes the Docker image to DockerHub with the new tag. It does this to make sure that the Docker images are versioned in sync with our Git tags.

# Docker Link

https://hub.docker.com/repository/docker/jasonl5550/ceg3120-byrum/general

# Installing Docker to an Instance

- First thing to do is to update the package software using `sudo yum update -y`. Then you can install docker using `sudo install docker`. Next you need to start it using `sudo service docker start`. This will give you docker on the instance.

# Container Restart Script

- Justification & Description: This script makes sure that the container is automatically restarted. This is important because if there are errors or instance reboots everything will be fresh.
- Location on Instance: I created a scripts folder and put it in here. This way it is easy to find and it has a clear name for everyone to recognize.

# Setting up a Webhook

- To install adnanh’s Webhook you first have to use the command `git clone https://github.com/adnanh/webhook /pathtothewebhook`
- Then you have to build the Webhook using `go build`
- Then you have to make sure it is executable using `chmod +x /pathtothewebhook`

# Starting the Webhook

-To start the Webhook `/pathtothewebhook -config /webhook-config.yml -hooks /hooks.json`

# Webhook Task Definition File

-The Webhook task definition file is used to tell the Webhooks what it should do. The file may contain id’s, execute commands, and messages.
- This file should be located in the /pathofthewebhook folder, so the Webhook listener can access it.

# Configuring DockerHub to Message the Listener

- First step is to go to the DockerHub repo and click on “Builds”. Next, go to “Build Settings” and go to “Build Triggers” then enable “Build on Git commits”. This will successfully build upon a Git commit.
