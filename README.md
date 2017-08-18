IASDSP
==========
## Prepare
### Install ActiveMQ
Here we use apache-activemq-5.14.0 to realize the communication between the engine and the website.
You can download it on http://activemq.apache.org/activemq-5140-release.html

### Workflow Engine
The website work with CIT Workflow Engine. You can see the detail in README.md in CIT Workflow Engine.

### Environment
Apache Tomcat v8.5, JDK 1.8
The website is based on Maven, the other package can installed by maven.

## Initialize 
### Initialize the database
You can use init.sql to initialize the database.

### Initialize the files
The website have some samples after initialize the database. Some images and files may miss when you use a new environment, you can replace the "sjtu/upload" floder by the IASDSP-upload.zip under Tomcat deployment location.

### Change database setting
The database setting is in src/main/webapp/WEB-INF/spring/spring-hibernate.xml.

### Change log4j setting
The log setting is in src/main/resources/log4j.xml.
