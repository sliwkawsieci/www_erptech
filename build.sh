#!/bin/bash
set -e

echo "Installing Node dependencies..."
cd hugo_site
npm install

echo "Building CSS with Tailwind..."
npm run build-css-prod

cd ..

echo "Building Hugo site..."
hugo --config hugo.toml --minify --gc

echo "Build completed successfully!"
