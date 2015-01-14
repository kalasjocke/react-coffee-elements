PATH := ./node_modules/.bin:${PATH}

.PHONY : clean build test publish

clean:
	rm -rf lib

build: clean
	coffee -o lib -c src

test: build
	mocha

publish: clean build test
	npm publish
