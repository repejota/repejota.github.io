build: clean
	git clone -b master git@github.com:repejota/repejota.github.io.git public
	hugo
	cd public
	git add .
	git comit -am "deploy website"
	git push

clean:
	rm -rf public
