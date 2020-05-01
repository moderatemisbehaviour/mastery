#!/bin/sh

PROJECT_ID=moderatemisbehaviour
SERVICE_NAME=sorry-cypress

# TODO: Create GitHub Action to re-deploy whenever a new release occurs on sorry-cypress repo.
gcloud builds submit \
  --tag "gcr.io/$PROJECT_ID/$SERVICE_NAME"

RUN_REGION=europe-west1

# TODO: Use Secrets Manager to store MONGODB_URI environment variable rather than adding it in the Google Cloud console.
gcloud run deploy "$SERVICE_NAME" \
  --region "$RUN_REGION" \
  --image "gcr.io/$PROJECT_ID/$SERVICE_NAME" \
  --platform "managed" \
  --allow-unauthenticated