# DOCKER 
1.	With Dockerfiles:
-	Create Docker Image of nginx (web.Dockerfile)
-	Create Docker Image of Tomcat 7 (tomcat.Dockerfile)
-	Create Docker Image (Data Volume) with hello world application for Tomcat (application.Dockerfile)
-	Run these Images so that http://localhost/sample shows hello world page
-	Nginx container forwards http requests to Tomcat container; Only nginx container exposes port (80)

2.	With docker-compose:
-	Create docker-compose.yml file to build containers from previos task
-	Run "environment" in daemon mode
-	Create own branch (epam login without @epam.com, in lowercase)
-	Create PR with description of reported task
-	All needed resources (if they are) must be placed into /resources folder

