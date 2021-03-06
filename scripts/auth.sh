[ -z "$GCLOUD_SERVICE_ACCOUNT" ] && echo "Please set and expose the secret \"GCLOUD_SERVICE_ACCOUNT\"" && exit 1;

printf "%s" "${GCLOUD_SERVICE_ACCOUNT}" > /google-service-account.json

gcloud auth activate-service-account --key-file=/google-service-account.json