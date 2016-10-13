## Google App Engine Custom Runtime Samples

These are samples for creating custom runtimes on Google App Engine Flexible. These samples are typically referenced from the [docs](https://cloud.google.com/appengine/docs).

See our other [Google Cloud Platform github repos](https://github.com/GoogleCloudPlatform) for sample applications and
scaffolding for other frameworks and use cases.

## Deploying

Some samples in this repositories may have special deployment instructions. Refer to the readme in the sample directory.

1. Use the [Google Developers Console](https://console.developer.google.com)  to create a project/app id. (App id and project id are identical)

2. Configure gcloud with your app id.

   ```
   gcloud config set project <your-app-id>
   ```

3. Use gcloud to deploy your app.

   ```
   gcloud app deploy
   ```

4. Congratulations!  Your application is now live at `your-app-id.appspot.com`

## Contributing changes

* See [CONTRIBUTING.md](CONTRIBUTING.md)

## Licensing

* See [LICENSE](LICENSE)
