# README

select Git https://github.com/Juliesully/photographynew.git
click ADD, click create,
In workspace after it starts in Terminal cd photography
type bundle install wait for gems to be installed
type rake db:migrate

Run the project navigate to the url navigate to route /photos
following command to get backup imported into db

cp app/assets/backup/development.sqlite3 db/
run rake db:migrate 
photos should appear

if making changes or adding photos to db store new backup with command:
cp db/development.sqlite3 app/assets/backup/development.sqlite3 db/

