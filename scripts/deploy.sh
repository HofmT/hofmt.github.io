#!/bin/bash

# Deployment script for Jekyll site
# This script has intentional issues that should trigger code review comments

# Start background process without proper monitoring
jekyll build &

export DEPLOY_ENV=production

# Wait for build (problematic: fixed sleep without validation)
sleep 2

# Execute deployment with exec (orphans background process)
exec ./deploy-to-server.sh
