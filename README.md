"# thanos"
##Modified 
It is a simple spring boot application and all the configs are stored in src/main/resources/application.propteries

Default Server Port : 9554 

Deployment Steps:

mvn spring-boot:run -Dserver.port={newServerPort}


Please provide this <serverurl>:<serverport> to cms and msapi in application properties mapping to `spring.boot.admin.client.url`
# Thanos
