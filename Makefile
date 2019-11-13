.PHONY: bin validate gen

bin:
	go build -o bin ./cmd/todo-list-server
validate:
	swagger validate ./swagger.yml
gen:
	swagger generate server -A TodoList -f ./swagger.yml
