# Docker Exercises
## Prerequisites
1.	Download and install Docker Desktop on your computer from [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop) 
2.	At `Docker/Preferences`, go to `Kubernetes` tab and `enable Kubernetes`
3.	Ensure that both Docker and Kubernetes are running (green) 
4.	Open your terminal and create a directory, dedicated to these exercises
5.	Move in that directory

```
```

## Exercise 1
#### 1.	Check if Docker works, typing the commands
```
    docker
    docker info
    docker version
```    

#### 2.	Let’s run an image, which we know exists in the public registry
```
docker run hello-world
``` 
Read the response on the terminal
Investigate images and running containers on your computer.
```
docker images
docker ps 
```
#### 3.	Simple networking<br>
Load Docker Hub image `nginx`, which contains a basic web server.<br>
`-P` stays for ‘publish’
```
docker run -d -P nginx
docker ps

localhost:<port number>
docker stop
docker ps
docker ps -a
docker rm
```
#### 4.	Mapping ports<br>
`-p` stays for ‘port’
```
docker run -p 80:80 tutum/hello-world
docker run -p 81:80 tutum/hello-world
```
#### 5.	Container as a bridge<br>
```
docker run –rm -ti -p 45678:45678 -p 45679:45679  –name cat ubuntu bash
nc -lp 45678 | nc -lp 45679
```
```
nc localhost 45678
<some text>
nc localhost 45679
… see here …
```
#### 6.	Volumes
create a local folder
```
pwd
mkdir host-volume

docker run -ti -v /Users/tdi/host-volume:/cont-volume my-image bash
touch /cont-volume/shared-data
```
Check both volumes.<br>
If a container is stopped, its volumes still exist and are available
	
## Exercise 2
#### 7.	Create image from container
Until now, we created containers from existing images. Let’s create an image from a container: 
- run image 
- change the container 
- commit a new image
```
docker run -ti ubuntu bash
```
-	creates a container with Ubuntu image and executes command `bash`
-	`-ti` makes it interactive container
```
touch myfile
```
Linux command, creates file
```
exit
docker ps -a
```
Observe the container, get its ID.<br>
Now create an image from this container.
```
docker commit <id>
```
Image is created, but has no name.
```
docker tag <image-id> my-image
docker images
docker run -ti my-image bash
```

#### 8.	Run processes inside the container
```
docker run -ti ubuntu bash -c "sleep 3; echo good morning "

docker rm <container name>
docker kill <container name>
```
## Exercise 3
#### 9.	Create image from Dockerfile
Create Dockerfile.
```
FROM busybox
RUN echo “run from Dockerfile”
CMD echo “hello new container”
```
```
docker build -t fromdfile .
docker images
```
## Exercise 4
#### 10. Docker Compose
Check if it is installed
```
docker-compose –version
```
You can install it with Python `pip`
```
sudo pip install docker-compose
```
Run web app, which uses a `Redis` in-memory DB.<br>
Download it from `$ git clone git://github.com/jpetazzo/trainingwheels`<br>
Move into the directory
```
cd trainingwheels
```
Observe the config files
```
ls
```
This is the contents of `docker-compose.yml`

```
www:
  build: www
  ports:
    - 8000:5000
    links:
    - redis
    user: nobody
    command: python counter.py
    volumes:
      - ./www:/s
```
Run `docker-compose` to build and start the containers
```
docker-compose build
docker-compose up
```
See it running on `localhost:8000`
```
docker-compose ps
docker-compose kill
docker-compose rm
```
## Exercise 5
#### 11.	Kubernetes
You have enabled `Kubernetes` in `Docker/Properties`.
Check if it is installed correct
```
kubectl version
kubectl get pods
kubectl get deployments
```
#### 12. Open Kubernetes dashboard
Download a dashboard on default port 8001
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0beta4/aio/deploy/recommended.yaml
```
#### 13. Create an account and token of a sample user
-	Create namespace for our user
```
kubectl create namespace my-dashboard
```
-	Create service account
```
kubectl -n my-dashboard create serviceaccount my-dashboard-cluster-admin
```
-	Give priviledges to it
```
kubectl create clusterrolebinding my-dashboard-cluster-admin-role --clusterrole=cluster-admin --serviceaccount=my-dashboard:my-dashboard-cluster-admin
```
-	Retrieve a token
```
kubectl -n my-dashboard get secrets
kubectl -n my-dashboard describe secret my-dashboard-cluster-admin-token-7gshj
```
#### 14. Log in the dashboard
-	Run in terminal
```
kubectl proxy
```
-	Open in browser
```
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
```
-	Login with the token<br>
#### 15. Create a Service and a Deployment
In the dashboard create a deployment of 5 instances/containers of image `tutum/hello-world`<br>
Alternativly: create `deployment.yaml` file
```
apiVersion: v1
kind: Service
metadata:
  name: hello-world-service
spec:
  selector:
    app: hello-world
  ports:
    - protocol: "TCP"
      # Port exposed internally and accessible only inside the cluster
      port: 8080
      # The container port to send requests to inside the pod
      targetPort: 80
      # A static port assigned on each node and accessible outside the cluster
      nodePort: 30001
  type: LoadBalancer
 
---
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: hello-world-deployment
spec:
  replicas: 5
  template:
    metadata:
      labels:
        app: hello-world
    spec:
      containers:
        - name: helloworld
          image: tutum/hello-world
          ports:
            - containerPort: 80
```         
Start the deployment of the cluster either by command at the terminal
```
kubectl create –f deployment.yml
kubectl apply –f deployment.yml
```
or inside the dashboard. <br>
Check the deployment in both 
- the terminal  
- the dashboard
- the browser: `localhost:3001`<br>

See `logs` for each pod on the dashboard console.<br>
Delete a pod and observe the reaction of Kubernetes
- terminates this one
- creates a  new one to keep the state<br>

Try scaling the replica sets.<br>
Finally, scale all pods to `0` and delete the `Deployment` and the `Service`, before logging out.









