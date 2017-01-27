# Perl example on Google App Engine

This is a simple guide to running mojolicious on [Google App Engine](https://cloud.google.com/appengine).

1. [Create a new mojolicious app](http://mojolicio.us/)

2. Create an `app.yaml` in the root of your application with the following contents:

    ```yaml
    runtime: custom
    vm: true
    ```

3. Create a [`Dockerfile`](Dockerfile) in the root of your application.

4. Create a project in the [Google Developers Console](https://console.developers.google.com/).

5. Make sure you have the [Google Cloud SDK](https://cloud.google.com/sdk/) installed.  When you're ready, initialize it:

    ```sh
    $ gcloud init
    ```

6. Deploy your app:

    ```sh
    gcloud app deploy
    ```

You are now running perl on App Engine Flexible. How cool is that?
