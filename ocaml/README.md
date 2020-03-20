# Ocaml Custom Runtime for App Engine

Simple HTTP server [Cohttp-async](https://opensource.janestreet.com/async/) app that runs on Google App Engine flexible environment.

## Run locally

	$ dune build app.exe
	$ ./_build/default/app.exe


## Deploy

	$ gcloud app deploy
	
Ocaml takes a while to build its compiler and download dependencies.
If `DEADLINE_EXCEEDED` error was raised, try setting `cloud_build_timeout`
to longer (default is 600 seconds).

	$ gcloud config set app/cloud_build_timeout 1500




