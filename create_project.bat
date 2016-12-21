@echo off
echo Select a project type
echo 1.Grizzly
echo 2.JavaEE
echo 3.Heroku
set /P ProjectSelection= : %=%
IF %ProjectSelection%==1 set Archetype=jersey-quickstart-grizzly2

IF %ProjectSelection%==2 set Archetype=jersey-quickstart-webapp

IF %ProjectSelection%==3 set Archetype=jersey-heroku-webapp

echo %Archetype%
