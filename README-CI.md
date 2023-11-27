# CI Project Overview Part 1

## What We're Doing
- In this project, we are using Continuous Integration (CI) to build and test a website.
- Docker is used as a container to ensure consistent environments.

## Purpose
- Introducing containers, using the CI proccess, learning Docker, and understanding how they all work.

## Tools Used
- GitHub
- Docker
- Nginx
- Local Git Repo

# Running Locally

## Installing Docker
- For Mac, I installed Docker Desktop from the App Store.
- Created an account using my school email.
- Used the Mac terminal for running Docker commands and accessing my local Git repo.

## Creating Dockerfile
- Used Docker Desktop to search for different images, I chose Nginx.
- Followed the instructions on Nginx's main page for the Dockerfile.
- Dockerfile included using the latest version of Nginx, setting the working directory, specifying the path to website files, exposing the port, and running Nginx server commands. I also had to add a command to rename my index file becuase I am using a site I made in another class.
- Built the Dockerfile using the command `docker build -t nginximage` or a chosen name.

## Running the Container
- Used the command `docker run -p 8080:80 -d nginximage` to start a new container.
- Mapped port 8080 on the host to port 80 on the container.
- Used `-d` to run the container detached, so you can still have a functioning terminal.
- Then the last part is the image name.

## Viewing the Project
- Ran the command `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 029e48701823069a64d81e5cae47ee54f559d61320bb7b129c157118f0857bad` to get the container's IP address (172.17.0.2).
- Then you can go to your browser and search the ip with :8080 on the end
- Or you can use http://localhost:8080 which is what I chose to do.

# CI Project Part 2

## How to Create a Public DockerHub Repo
- To create a Public Repo you first have to create a DockerHub, then log in, then go to the Repositories tab and click the Create Repo button. Next, you will have to fill out some information such as a name, public or private, and a description.

## Authenticate with DockerHub via CLI
- After you create a repository, you can use the `docker login` command.
- Then you will be prompted for a username and password. For your password, you can use a token or your password. I used my Docker account username and password. May look something like `docker login -u jasonl5550 -p Mypass`.

## Push Container Image to DockerHub
- You first have to build the image using a command like this `docker build -t jasonl5550/ceg3120-byrum:tag .`.
- Next, you can tag your image with a command like this `docker tag jasonl5550/ceg3120-byrum:tag jasonl5550/ceg3120:tag`
- Then you need to push your image `docker push jasonl5550/ceg3120-byrum:tag`.

## GitHub Secrets
