# skaffold installation

$ curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && sudo install skaffold /usr/local/bin/

# docker installation and login 

$ yum install -y docker
$ systemctl enable docker
$ systemctl start docker
$ systemctl status docker
$ docker login

# git installation

$ yum install -y git
$ git clone https://github.com/Murali90102/my-fastapi-skaffold.git

# kubectl installation and configuring with k8s master

$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
$ ls -lrth
$ chmod +x kubectl
$ mv kubectl /usr/local/bin/
$ mkdir ~/.kube

# Get the config from kubernetes master server by running cat ~/.kube/config 

$ cat > ~/.kube/config
$ kubectl get nodes

# Enter into the source code directory and run the skaffold command 
$ skaffold dev

![image](https://github.com/Murali90102/my-fastapi-skaffold/assets/131275911/f616c997-22cf-44e2-9fd5-183a900ef48a)


![image](https://github.com/Murali90102/my-fastapi-skaffold/assets/131275911/6f69c845-ffdb-4d80-941b-0bc44ee05df8)


![image](https://github.com/Murali90102/my-fastapi-skaffold/assets/131275911/d86e9f9b-e00b-4a71-b0e0-05939363f97a)






