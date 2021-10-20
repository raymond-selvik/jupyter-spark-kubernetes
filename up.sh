docker build -t jupyter:0.1 jupyter/.

kubectl apply -f jupyter/service.yaml
kubectl apply -f jupyter/pod.yaml

kubectl port-forward service/jupyter-service 8888:8888
