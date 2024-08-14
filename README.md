# dockerizing-an-nginx-webserver

Here's a `README.md` file for the project `dockerizing-an-nginx-webserver`:

---

# Dockerizing an NGINX Webserver

This project demonstrates how to containerize an NGINX web server using a Dockerfile based on the Ubuntu image.

## Dockerfile Overview

The Dockerfile used in this project is structured as follows:

```Dockerfile
FROM ubuntu:latest

RUN apt update && apt install -y nginx

EXPOSE 8080

CMD [ "nginx", "-g", "daemon off;" ]
```

### Explanation

- **FROM ubuntu:latest**: This line specifies that the base image for the Docker container will be the latest version of Ubuntu.
- **RUN apt update && apt install -y nginx**: This command updates the package list and installs NGINX in the container.
- **EXPOSE 8080**: This line informs Docker that the container will listen on port 8080 at runtime.
- **CMD [ "nginx", "-g", "daemon off;" ]**: This command starts the NGINX server in the foreground, ensuring that it runs as the main process of the container.

## Building the Docker Image

To build the Docker image from the Dockerfile, navigate to the directory containing the Dockerfile and run the following command:

```bash
docker build -t nginx-webserver .
```

This command will create a Docker image named `nginx-webserver`.

## Running the NGINX Webserver Container

To run a container from the image you just built, use the following command:

```bash
docker run -d -p 8080:8080 nginx-webserver
```

- The `-d` flag runs the container in detached mode.
- The `-p 8080:8080` flag maps port 8080 on your local machine to port 8080 in the container.

## Accessing the NGINX Webserver

Once the container is running, you can access the NGINX web server by opening your web browser and navigating to:

```
http://localhost:8080
```

You should see the default NGINX welcome page.

## Stopping the Container

To stop the running container, first, identify the container ID or name using:

```bash
docker ps
```

Then, stop the container with:

```bash
docker stop <container_id_or_name>
```

## Conclusion

This project provides a simple example of how to dockerize an NGINX web server using a minimal Dockerfile. You can use this as a starting point for more complex web server setups.

---

You can use this text for your `README.md` file.