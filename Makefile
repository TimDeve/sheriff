.PHONY: pre-push run-example test

pre-push: test run-example

run-example:
	carp -x example.carp

test:
	./test.sh

