PATH := ./node_modules/.bin:${PATH}

.PHONY : clean build test

clean:
	rm -rf lib

build: clean
	coffee -o lib -c src

test: build
	mocha
