-include ./User.mk
-include ../User.mk
-include ~/User.mk

.PHONY: all
all:test

.PHONY: test
test:
	npm test


.PHONY: clean
clean:
	rm -rf node_modules

.PHONY: build
build:
	npm i

.PHONY: cover
cover:
	npm run cover
