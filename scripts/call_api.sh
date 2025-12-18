#!/bin/bash
# Call protected API using the access token
curl --request GET \
  --url https://YOUR_DOMAIN/api/v2/YOUR_ENDPOINT \
  --header 'authorization: Bearer YOUR_ACCESS_TOKEN'
