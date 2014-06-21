#! /bin/bash

cd templates

for file in *.haml; do
  hamlet < $file > ${file/.haml}.js
done

for file in *.js; do
  echo "module.exports = " > tmpfile
  cat $file >> tmpfile
  mv tmpfile $file
done
