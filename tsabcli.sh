#!/bin/bash

export TSAB_HOME=/tsab/tsabgit/target/tsabtesthome
export TSAB_DB_USERNAME=tsab
export TSAB_DB_PASSWORD=change_to_db_password
export TSAB_DB_HOST=localhost:3306/tsab
export TSAB_CLI=true 

#EXEC="-Dexec.args=-classpath %classpath ee.ioc.phon.tsab.cli.TsabCLI ${1} ${2+\"$2\"}"
#echo $EXEC

./mvnw -q -Dexec.executable=java -Dexec.classpathScope=runtime -DskipTests=true org.codehaus.mojo:exec-maven-plugin:3.0.0:exec "-Dexec.args=-classpath %classpath ee.ioc.phon.tsab.cli.TsabCLI ${1} ${2+\"$2\"} ${3+\"$3\"} ${4+\"$4\"}"

