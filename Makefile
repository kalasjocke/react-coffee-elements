PATH := ./node_modules/.bin:${PATH}

.PHONY : clean build test publish install

clean:
	rm -rf lib

build: clean
	coffee -o lib -c src

test: build
	mocha

publish: clean build test
	npm publish

install:
	npm install
