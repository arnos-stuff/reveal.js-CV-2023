# Publish your revealJS presentation to app engine

The instructions are from [here](https://stackoverflow.com/a/44729749).

## Setup

1. Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstarts)

2. If you already have a App Engine running, then you have to create a .yaml file with specific settings. If you don't have one, then you can create one with the following command:

```bash
    gcloud app create --region=<region>
```