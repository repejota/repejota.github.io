build: clean
	git clone -b master git@github.com:repejota/repejota.github.io.git public
	hugo

clean:
	rm -rf public

serve:
	hugo server -D
