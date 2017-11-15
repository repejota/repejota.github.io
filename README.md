# repejota.github.io

This is the source code for http://repejota.github.io and http://repejota.com.

## How to update content

This is a Hugo based site. Check http://gohugo.io for more information.

Run the embebed HTTP server in developer mode:


```bash
$ make serve
hugo server -D
Started building sites ...

Built site for language en:
[...]
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

Build the final site and store results in *public* folder.

```bash
$ make
rm -rf public
git clone -b master git@github.com:repejota/repejota.github.io.git public
[...]
hugo
[...]
```

Clean the results:

```bash
$ make clean
rm -rf public
```

## How to deploy the site.

The site is currently deployed to github pages at http://repejota.github.io. 
Using the *master* branch. All source code is on the default *develop* branch.

It also has ensabled the custom domain http://repejota.com.

After building the final site just commit and push changes on the *public* 
folder like in a normal repository.

```bash
$ cd public
$ git add .
$ git commit
$ git push
```
