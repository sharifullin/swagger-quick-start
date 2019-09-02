# Swagger quick start tools

This tools are for following approach:
1. Design first. You have to write you own design on swagger https://app.swaggerhub.com/. When your design
completed you can generate spring or other project. 
2. Update your design and project documentation


## Overview  
1. I prefer to do a design first. When design is ready we can generate code and documentation.
    To generate code just start script 01-init-project.sh. This script call maven and pass `01-init-project-pom.xml`
    file to it. Actual configuration of project location, language etc. are placed into that maven
    pom file. If you want change it (and actually you have to that one is just an example) you can
    refer to swagger documentation at https://github.com/swagger-api/swaggerhub-maven-plugin/ 

    The script will download your design from SwaggerHub and after that generate server code 
    and documentation.
    
    To run a generated application you have to find main class (it would be in _io.swagger_ package
    if you haven't changed anything). Go to the following URL: http://localhost:8080/smkcloud/model2/1.0.0/swagger-ui.html
    
    Actual properties 

2. After you have changed API (added some new endpoints etc) you can update you documentation and
    generate new swagger model from you existing code. Just run `02-update-swagger.sh` script. It will update
    you documentation and generate a new model.
    
    **TODO:** add 03-upload-script.sh - to upload generated model on SwaggerHub instead old one.