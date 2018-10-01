# Drone Google Storage copy plugin

[![Build Status](https://travis-ci.org/maximelebastard/drone-gstorage-plugin.svg?branch=master)](https://travis-ci.org/maximelebastard/drone-gstorage-plugin)

Lightweight drone plugin to use the copy command from the Google Storage API through SDK.

It uses the official Google Cloud SDK image.

## Usage

```yaml
pipeline:
  copy:
    image: maximelebastard/drone-gstorage-plugin
    source: gs://my.bucket/my.file.xls
    dest: mylocalfile.xls
    cleandest: true
    secrets:
      - source: GCLOUD_SERVICE_ACCOUNT
        target: GCLOUD_SERVICE_ACCOUNT
    when:
      event: deployment
```


## Parameters

* **source** : Source of the copy
* **dest**: Destination of the copy
* **cleandest**: Should the script delete the destination before downloading the source
  * this uses `rm -rf` for a local file and `gsutil rm -r` for a distant file


## Secrets

Create a Google Cloud service account that have the bucket permissions.

Make sure its content is exposed through the GCLOUD_CREDENTIALS secret.