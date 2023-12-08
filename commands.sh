               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker container ls

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker container ls -a

CONTAINER ID   IMAGE                                 COMMAND                  CREATED        STATUS                      PORTS     NAMES
0b7e0d813b25   gcr.io/k8s-minikube/kicbase:v0.0.42   "/usr/local/bin/entr…"   28 hours ago   Exited (130) 26 hours ago             minikube
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image ls             
REPOSITORY                    TAG       IMAGE ID       CREATED        SIZE
exam                          latest    d9d1cf047255   3 hours ago    168MB
calculator                    latest    3fbee7fa5a06   23 hours ago   77.9MB
myimage                       latest    b694d3470b37   2 days ago     168MB
172.18.1.51:5000/mysql        latest    a75ea7321a1a   6 days ago     1.1GB
172.18.1.51:5000/node         latest    a75ea7321a1a   6 days ago     1.1GB
172.18.1.51:5000/busybox      latest    a75ea7321a1a   6 days ago     1.1GB
172.18.1.51:5000/mongo        latest    a75ea7321a1a   6 days ago     1.1GB
httpd                         latest    a6ca7b52a415   2 weeks ago    168MB
gcr.io/k8s-minikube/kicbase   v0.0.42   dbc648475405   4 weeks ago    1.2GB
mysql                         latest    a3b6608898d6   6 weeks ago    596MB
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image rm exam        
Error response from daemon: conflict: unable to remove repository reference "exam" (must force) - container 05207af554e8 is using its referenced image d9d1cf047255
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  docker service ls                                                   
ID             NAME        MODE         REPLICAS   IMAGE         PORTS
is7x1qzlzwzc   myservice   replicated   4/5        exam:latest   *:9876->80/tcp
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker service rm myservice
myservice
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker container ls -a     

CONTAINER ID   IMAGE                                 COMMAND                  CREATED        STATUS                      PORTS     NAMES
0b7e0d813b25   gcr.io/k8s-minikube/kicbase:v0.0.42   "/usr/local/bin/entr…"   28 hours ago   Exited (130) 27 hours ago             minikube
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image rm exam  
Untagged: exam:latest
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image build -t dynFrom .
[+] Building 0.0s (0/0)                                                                                         docker:default
ERROR: invalid tag "dynFrom": repository name must be lowercase
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  docker image build -t dynfrom .
[+] Building 0.2s (7/7) FINISHED                                                                                docker:default
 => [internal] load build definition from Dockerfile                                                                      0.1s
 => => transferring dockerfile: 92B                                                                                       0.0s
 => [internal] load .dockerignore                                                                                         0.0s
 => => transferring context: 2B                                                                                           0.0s
 => [internal] load metadata for docker.io/library/httpd:latest                                                           0.0s
 => [internal] load build context                                                                                         0.0s
 => => transferring context: 9.35kB                                                                                       0.0s
 => CACHED [1/2] FROM docker.io/library/httpd                                                                             0.0s
 => [2/2] COPY ./index.html /usr/local/apache2/htdocs/                                                                    0.0s
 => exporting to image                                                                                                    0.0s
 => => exporting layers                                                                                                   0.0s
 => => writing image sha256:8a03a817e09f1b47d38307e5c57dae395a2c5fe94b448b5b2c0b2edcfbb31eb9                              0.0s
 => => naming to docker.io/library/dynfrom                                                                                0.0s
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image tag dynfom meetvasani/dynform
Error response from daemon: No such image: dynfom:latest
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  docker image tag dynform meetvasani/dynform
Error response from daemon: No such image: dynform:latest
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  docker image ls                            
REPOSITORY                    TAG       IMAGE ID       CREATED              SIZE
dynfrom                       latest    8a03a817e09f   About a minute ago   168MB
calculator                    latest    3fbee7fa5a06   23 hours ago         77.9MB
myimage                       latest    b694d3470b37   2 days ago           168MB
172.18.1.51:5000/busybox      latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/mongo        latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/mysql        latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/node         latest    a75ea7321a1a   6 days ago           1.1GB
httpd                         latest    a6ca7b52a415   2 weeks ago          168MB
gcr.io/k8s-minikube/kicbase   v0.0.42   dbc648475405   4 weeks ago          1.2GB
mysql                         latest    a3b6608898d6   6 weeks ago          596MB
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image tag dynfrom meetvasani/dynform
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image ls                            
REPOSITORY                    TAG       IMAGE ID       CREATED              SIZE
dynfrom                       latest    8a03a817e09f   About a minute ago   168MB
meetvasani/dynform            latest    8a03a817e09f   About a minute ago   168MB
calculator                    latest    3fbee7fa5a06   23 hours ago         77.9MB
myimage                       latest    b694d3470b37   2 days ago           168MB
172.18.1.51:5000/busybox      latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/mongo        latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/mysql        latest    a75ea7321a1a   6 days ago           1.1GB
172.18.1.51:5000/node         latest    a75ea7321a1a   6 days ago           1.1GB
httpd                         latest    a6ca7b52a415   2 weeks ago          168MB
gcr.io/k8s-minikube/kicbase   v0.0.42   dbc648475405   4 weeks ago          1.2GB
mysql                         latest    a3b6608898d6   6 weeks ago          596MB
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image push meetvasani/dynform    
Using default tag: latest
The push refers to repository [docker.io/meetvasani/dynform]
f986dc0ba8ca: Preparing 
b9bf93af811f: Preparing 
28f18e7dc61c: Preparing 
27496babc700: Preparing 
fad7e2250d8f: Preparing 
92770f546e06: Waiting 
denied: requested access to the resource is denied
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  docker login                        
Log in with your Docker ID or email address to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com/ to create one.
You can log in with your password or a Personal Access Token (PAT). Using a limited-scope PAT grants better security and is required for organizations using SSO. Learn more at https://docs.docker.com/go/access-tokens/

Username: meetvasani
Password: 
WARNING! Your password will be stored unencrypted in /home/vasani/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker image push meetvasani/dynform
Using default tag: latest
The push refers to repository [docker.io/meetvasani/dynform]
f986dc0ba8ca: Pushed 
b9bf93af811f: Pushed 
28f18e7dc61c: Pushed 
27496babc700: Mounted from library/httpd 
fad7e2250d8f: Mounted from library/httpd 
92770f546e06: Pushed 
latest: digest: sha256:3fbb2fc4926c7af9a75cc27a3ad99504a7a952b36ddd97c70f16310aceb05455 size: 1574
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker service create --name myformservice --replicas 5 -p 9876:80 meetvasani/dynform 
z30dwn9l1arvx5jd8yngitjc4
overall progress: 5 out of 5 tasks 
1/5: running   [==================================================>] 
2/5: running   [==================================================>] 
3/5: running   [==================================================>] 
4/5: running   [==================================================>] 
5/5: running   [==================================================>] 
verify: Service converged 
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker service rm myformservice                                                      
myformservice
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 vasani   main -  docker service las             

Usage:  docker service COMMAND

Manage Swarm services

Commands:
  create      Create a new service
  inspect     Display detailed information on one or more services
  logs        Fetch the logs of a service or task
  ls          List services
  ps          List the tasks of one or more services
  rm          Remove one or more services
  rollback    Revert changes to a service's configuration
  scale       Scale one or multiple replicated services
  update      Update a service

Run 'docker service COMMAND --help' for more information on a command.
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  
               
 [/media/vasani/Sunbeam/1Sunbeam-modules/sdm/deploySiteSwarm]
 ✘  vasani   main -  