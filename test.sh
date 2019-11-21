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

http GET ':8080?since=0'
http POST :8080 description="Message $RANDOM"
http DELETE ':8080/1'
http PUT ':8080/2' description=xff
http PUT ':8080/2' <<< '{"description": "xff", "completed": false}'
