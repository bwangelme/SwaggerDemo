#!/bin/bash
#
# Author: bwangel<bwangel.me@gmail.com>
# Date:11,10,2019 12:49


swagger init spec \
	--title "A todo list application" \
	--description "From the todo list tutorial on goswagger.io" \
	--version 1.0.0 \
	--scheme http \
	--consumes application/io.goswagger.examples.todo-list.v1+json \
	--produces application/io.goswagger.examples.todo-list.v1+json

curl -i -v localhost:56055 -d "{\"description\":\"message $RANDOM\"}" -H 'Content-Type: application/io.goswagger.examples.todo-list.v1+json'
