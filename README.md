## Welcome To Employee Details Project
This is a Employee Details project Using SAP Caloud Application Programming model Using NodeJS. [Click here](https://cap.cloud.sap/docs/) to know more about CAP.

### Git Commands
- git init: To initialize teh repository
- git add .: to add all the fiels in teh commit
- git commit -m "<Message>": Create a commit with proper message
- git push: to push the code.


### CAP Events

![alt text](./images/image.png)

### Approuter Implementations
- Add Approuter Into the project: `cds add approuter` (Get help using `cds add --help` command)
- It generates below listed Items
    - New `xs-security.json` file: Roles, Scopes, Role-Collections
    - Update `Package.json` File: Adds `"auth": "xsuaa"`
    - Update `MTA.Yaml` File: 
        > ```yaml
        >- name: EmployeeDetails-auth
        >type: org.cloudfoundry.managed-service
        >parameters:
        > service: xsuaa
        > service-plan: application
        > path: ./xs-security.json
        >
        >   - name: EmployeeDetails
        >type: approuter.nodejs
        >path: app/router
        >parameters:
        >keep-existing-routes: true
        >disk-quota: 256M
        >memory: 256M
        >requires:
        >- name: srv-api
        >group: destinations
        >properties:
        >  name: srv-api # must be used in xs-app.json as well
        >  url: ~{srv-url}
        >  forwardAuthToken: true
        >- name: EmployeeDetails-auth
        >```
    - New `Router Folder` inside App Folder with Package.json, xs-app.json, node_modules and package-lock.json file.