#!/bin/bash
echo "This Multi-branch pipeline build"
docker login -u vennilavan -p dckr_pat_S24xwX_73dmdhHpTqKr-3UVNqds
docker tag nginx vennilavan/prod
docker push vennilavan/prod
