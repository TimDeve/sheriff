.PHONY: pre-push run-example build-example test

pre-push: build-example test

run-example:
	@carp -x example.carp

build-example:
	@echo "Building example..."
	@carp -b example.carp

test:
	@./test.sh

