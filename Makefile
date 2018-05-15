serve:
	hugo server -D

build: clean
	git clone -b master git@github.com:repejota/repejota.github.io.git public
	hugo

clean:
	rm -rf public

deploy: build
	cd public && git purr origin master && make deploy
