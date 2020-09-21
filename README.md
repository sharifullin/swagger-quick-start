# Swagger quick start tools

This tools are for following approach:
1. Design first. You have to write you own design on swagger https://app.swaggerhub.com/. When your design
completed you can generate spring or other project. 
2. Update your design and project documentation


## Overview  
1. I prefer to do a design first. When design is ready we can generate code and documentation.
    To generate code just start script `quick-start.sh i`. This script will call maven and pass `01-init-project-pom.xml`
    file to it. Actual configuration of a project location, language etc. are into that maven
    pom file. If you want to change it (and actually you have to -- that one is just an example) you can
    refer to a swagger documentation at https://github.com/swagger-api/swaggerhub-maven-plugin/ 

    The script will download your design from SwaggerHub and after that generate server code 
    and documentation.
    
    To run a generated application you have to find a main class (it would be in _io.swagger_ package
    if you haven't changed anything). Go to the following URL: http://localhost:8080/<project>/model2/1.0.0/swagger-ui.html
    
2. After you have changed API (added some new endpoints etc) you can update you documentation and
    generate new swagger model from you existing code. Just run `quick-start.sh g` script. It will update
    you documentation and generate a new model.
    
3. To upload a new version (generated) of your project execute `quick-start.sh u`. This command will
    upload generated swagger.json to your SwaggerHub. To execute this command you have to add your
    repository token to a pom file (03-upload-swagger-pom.xml)
    
