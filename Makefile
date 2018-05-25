dev:	## Start development sever
	hugo server -D

build: clean
build:	## Build production static site
	git clone -b master git@github.com:repejota/repejota.github.io.git public
	hugo

clean:	## Clean production buildt static site
	rm -rf public

deploy: build
deploy:	## Build deployment production static site
	cd public && git purr origin master

include Makefile.help.mk
