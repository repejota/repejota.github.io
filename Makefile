deploy:
	git add .
	git ci -m "Deploy changes at `date`"
	git push origin master 
