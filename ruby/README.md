# Ruby & Sinatra Custom Runtime for App Engine

Simple sample of a [Sinatra][http://www.sinatrarb.com/] app that runs on [Google App Engine][https://cloud.google.com/appengine] using the [`google/ruby-runtime`][https://github.com/GoogleCloudPlatform/ruby-docker] Docker image.

## Run locally

    $ bundle
    $ bundle exec rackup

## Deploy

    $ gcloud app deploy
