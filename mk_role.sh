#!/bin/bash

echo "1. tasks"
mkdir -p ./roles/$1/tasks
touch ./roles/$1/tasks/main.yml

echo "2. handlers"
mkdir -p ./roles/$1/handlers/
touch ./roles/$1/handlers/main.yml

echo "3. templates"
mkdir -p ./roles/$1/templates/
touch ./roles/$1/templates/template1.conf.j2

echo "4. files"
mkdir -p ./roles/$1/files/

echo "5. vars"
mkdir -p ./roles/$1/vars/
touch ./roles/$1/vars/main.yml

echo "6. defaults"
mkdir -p ./roles/$1/defaults/
touch ./roles/$1/defaults/main.yml

echo "7. meta"
mkdir -p ./roles/$1/meta/
touch ./roles/$1/meta/main.yml

echo "8. library"
mkdir -p ./roles/$1/library/

echo "8. module_utils"
mkdir -p ./roles/$1/module_utils/

echo "8. lookup_plugins"
mkdir -p ./roles/$1/lookup_plugins/
