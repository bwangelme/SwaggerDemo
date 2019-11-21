.PHONY: bin chk gen

bin:
	go build -o bin ./cmd/todo-list-server
chk:
	swagger validate ./swagger.yml
gen:
	swagger generate server -A TodoList -f ./swagger.yml
