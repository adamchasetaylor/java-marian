#!/bin/bash

mkdir -p src/main/java
 
mvn clean install dependency:copy-dependencies 