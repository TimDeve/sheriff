pre-push: tests run-example

run-example:
	carp -x example.carp

tests:
	./test.sh

test-watch:
	npx nodemon -e carp -x ./test.sh

