# Deployment Instructions for A&K Agro E-commerce Website

This document explains how to deploy the A&K Agro website to GitHub Pages.

## Prerequisites

1. Create a GitHub account if you don't have one: https://github.com/join
2. Create a new repository for this project (e.g., `ak-agro-ecommerce`)
3. Install Git on your computer: https://git-scm.com/downloads

## Step-by-Step Deployment Instructions

### 1. Initialize a Git Repository in this Project

```bash
# Initialize a git repository
git init

# Add all files to the repository
git add .

# Commit the files
git commit -m "Initial commit"
```

### 2. Connect to GitHub

```bash
# Connect to your GitHub repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/ak-agro-ecommerce.git

# Push your code to GitHub
git push -u origin main
```

### 3. Deploy to GitHub Pages

Run the deployment script:

```bash
# Run the deployment script
./deploy-to-github.sh
```

This script will:
1. Build your application
2. Create a special `gh-pages` branch that GitHub uses for hosting
3. Push the built site to that branch

### 4. Configure GitHub Pages

1. Go to your repository on GitHub
2. Click on "Settings"
3. Scroll down to "GitHub Pages" section
4. Select the `gh-pages` branch as the source
5. Click "Save"

After a few minutes, your site will be available at:
`https://YOUR_USERNAME.github.io/ak-agro-ecommerce`

## Important Notes

- The site uses localStorage for storing data, which means data is stored on the user's browser
- If you want to connect a custom domain, you can follow GitHub's instructions in the GitHub Pages settings
- For a production site, you would want to use a real database instead of localStorage
- The admin section is accessible but has no authentication in this static version

## Need to Update the Site?

1. Make your changes to the code
2. Commit the changes: `git add . && git commit -m "Description of changes"`
3. Push to GitHub: `git push origin main`
4. Run the deployment script again: `./deploy-to-github.sh`

Your updated site will be deployed to GitHub Pages automatically.

## Connecting a Custom Domain (Hostinger)

1. Buy a domain from Hostinger
2. In your Hostinger control panel, go to "DNS" settings
3. Add the following "A" records pointing to GitHub's IP addresses:
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```
4. Add a "CNAME" record:
   - Host: www
   - Target: YOUR_USERNAME.github.io
5. In your GitHub repository settings, under "GitHub Pages", add your custom domain
6. Check "Enforce HTTPS" for secure connections

It may take up to 24 hours for DNS changes to propagate fully.