# Hello world in python using OpenShift
- This repository contains the source code for a simple web app written in python that displays "hello world". Although typically a backend language, python with the of the flask framework, can be used to make web applications aswell.
- The goal of this project is to allow anyone who has access to an openshift cluster, to be able to deploy their python applications.
- The cli does not always display whats happening in the background. To help with this, these commands help in finding errors:
```
oc get pods
```
- This command shows you the status of the pods that currently deployed in your project
```
oc get events
```
- This command prints out event logs to the console. This is great when you want to know what exactly is causing an error.

## Prerequisites
- OpenShift v4.x Cluster Web Console access with cluster-admin rights<br /><br />


## Installation
### Step 1. Download required files
 - Clone this repository to your personal github

 ### Step 2. Setting up the OpenShift Cluster
 - Login to your OpenShift Cluster Web Console or Terminal and create a new project. This particular guide will focus on the terminal implementation of the app.

```
oc create new-project <projectName>
```
 - This project is now your new namespace!

### Step 3. Create a new app
- Using the create new-app command we are creating a build configuration, which creates a new application from our source code in this repo.

```
oc new-app https://github.com/<username>/<name-of-repository>

ex.
    oc new-app https://github.com/JairoLedezma/helloOpenShift
```
### Step 4. Expose our project to the world
- With the expose command we can expose the route
```
oc expose service helloopenshift
```
- To get the url we can use the following command:
```
oc get route
```
- The console should now give you a link that looks like this `http://helloopenshift-hello-world.apps.na46.prod.nextcle.com/`

If you are using the web console you can do the following to get the route:
<img width="1788" alt="Screen Shot 2021-08-04 at 2 32 20 PM" src="https://user-images.githubusercontent.com/61709408/128243947-1f7ad81e-403b-43c4-a2a9-c0b9c1f6683c.png">


### Step 5. View your Hello world app 
- All thats left is to paste your route in a browser and see your results

<img width="1611" alt="Screen Shot 2021-08-04 at 2 37 33 PM" src="https://user-images.githubusercontent.com/61709408/128244223-f7a8cc75-a6f2-45d5-bec8-63ad8f987c93.png">


	
