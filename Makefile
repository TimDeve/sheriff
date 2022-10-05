.PHONY: pre-push
pre-push: build-examples test

.PHONY: run-examples
run-examples:
	@./scripts/examples.sh -x

.PHONY: build-examples
build-examples:
	@./scripts/examples.sh -b

.PHONY: test
test:
	@./scripts/tests.sh

