#!/bin/bash
mkdir -p /var/www/html/
cd /var/www/html/
git clone https://github.com/levensta/todo-app.git
cd todo-app
npm install
# nohup npm run json-server &
npm start