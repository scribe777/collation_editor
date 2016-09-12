SET BASEDIR="%CD%"
echo %BASEDIR%

start java -jar collatex/collatex-tools-1.8-SNAPSHOT.jar --http

python python/bottle_server.py %BASEDIR%
