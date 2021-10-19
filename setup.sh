#!/bin/bash

# Setup the Structure
mkdir -p src/main/java

# Re-Install Dependencies from POM.XML. Store them locally.
mvn clean install dependency:copy-dependencies 

# Run it locally
javac -classpath .:target/dependency/* -d . src/main/java/Hello.java
java -classpath .:target/dependency/* Hello