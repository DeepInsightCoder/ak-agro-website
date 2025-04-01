#!/bin/bash

# Create a deployment directory
mkdir -p gh-pages-deploy

# Build the application (client-side only)
npx vite build --outDir=gh-pages-deploy

# Copy our static deployment index file as the main index.html
cp static-deploy-index.html gh-pages-deploy/index.html

# Copy the build output to gh-pages branch
npx gh-pages -d gh-pages-deploy

# Clean up
rm -rf gh-pages-deploy

echo "Deployment complete! Your site should be available at https://DeepInsightCoder.github.io/ak-agro-website"
echo "Remember to update the repository name in the URL"