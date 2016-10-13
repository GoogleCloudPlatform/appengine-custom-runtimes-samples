# Perl example on Google App Engine Flexible

This is a simple guide to running mojolicious on Google App Engine Flexible. 

1. [Create a new mojolicious app](http://mojolicio.us/)

2. Create an `app.yaml` in the root of your application with the following contents:

    ```yaml
    runtime: custom
    vm: true
    ```

3. Create a `Dockerfile` in the root of your application with the following contents:

    ```dockerfile
    FROM perl:latest
    RUN curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious
    ENV MOJO_LISTEN http://*:8080
    ADD . /app
    EXPOSE 8080
    WORKDIR /app
    RUN chmod +x main.pl
    CMD ["./main.pl", "daemon"]
    ```
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
