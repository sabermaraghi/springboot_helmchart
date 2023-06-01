we need create Dockerfile and compose file
we need pass application.properties dynamically using this command: "java -jar -Dspring.config.location=/app/config/default/application.properties app.jar" add this command to deployment.yaml
we need add setting.xml file to this directory: 
we need add logback.xml to config/public/logback.xml and run it using:  java -Dlogging.config="config/public/logback.xml" -jar target/saber-0.0.1-SNAPSHOT.jar


# springboot_helm

docker build --no-cache -t springdemo:spring-demo .
docker image ls |grep springdemo
docker tag springdemo:spring-demo novinrepo:8082/docker/springdemo:0.1.0
docker push  novinrepo:8082/docker/springdemo:0.1.0

helm create springboot
.
.
.
helm template springboot
helm lint springboot
helm install springboot --debug --dry-run springboot
helm install myfirstspringboot springboot
helm list -a
kubectl get all

curl 10.43.48.243:8090/saber


md5sum target/saber-0.0.1-SNAPSHOT.jar

helm template -n test --debug ./helm-chart > myfile.yaml
conftest -p helm-chart/policy/ test myfile.yaml


