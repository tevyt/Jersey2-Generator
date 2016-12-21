@echo off
echo Select a project type
echo 1.Grizzly
echo 2.JavaEE
echo 3.Heroku
set /P ProjectSelection= : %=%
set Archetype=INV
IF %ProjectSelection%==1 set Archetype=jersey-quickstart-grizzly2
IF %ProjectSelection%==2 set Archetype=jersey-quickstart-webapp
IF %ProjectSelection%==3 set Archetype=jersey-heroku-webapp
IF %Archetype%==INV (echo Invalid selection & EXIT)
set /P GroupId= groupId=%=%
set /P ArtifactId= artifactId=%=%
set /P Package= package=%=%
mvn archetype:generate -DarchetypeArtifactId=%Archetype% -DarchetypeGroupId=org.glassfish.jersey.archetypes -DinteractiveMode=false -DgroupId=%GroupId% -DartifactId=%ArtifactId% -Dpackage=%Package% -DarchetypeVersion=2.25
