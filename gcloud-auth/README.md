# robotsnacks/actions/gcloud-auth

This action authenticates with Google Cloud using a service account, which must
be provided as a base64 encoded secret.

## Encoding a Secret

First, download the service account's JSON key using the Google Cloud console.
Then, it may be base64 encoded using the command below:
```
base64 ./key-filename.json
```

The output of the above command should be added as a secret to GitHub actions
using the Visual Editor.

## Example Action
```
action "Setup Google Cloud" {
  uses = "robotsnacks/actions/gcloud-auth@master"
  secrets = ["GCLOUD_AUTH"]
}
```
