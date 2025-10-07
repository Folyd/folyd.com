# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website (folyd.com) built with Lektor, a static site generator. The site features blog posts (primarily about Rust programming), project showcases, and an about section. The site uses Bulma CSS for styling and webpack for asset bundling.

## Commands

### Development
```bash
# Install Lektor (first time setup)
pip install lektor

# Run local development server with live reload
lektor serve -p 5000 -f webpack -v

# Access the site at http://localhost:5000
```

### Build
```bash
# Build the static site with webpack processing
lektor build -f webpack --output-path /tmp/dist
```

### Docker
```bash
# Build Docker image
docker build --tag folyd.com .

# Run in Docker
docker run --name folyd -p 5000:5000 -v `pwd`:/source folyd.com:latest
```

### Deployment
The site deploys automatically via GitHub Actions on push to master. The `deploy.sh` script builds the site and pushes to the `gh-pages` branch.

## Architecture

### Lektor Structure
- **content/**: All site content in `.lr` (Lektor) files, organized by section
  - `blog/`: Blog posts with pub_date metadata
  - `projects/`: Project showcases with release_date metadata
  - `about/`: About pages with order metadata
- **templates/**: Jinja2 templates for rendering pages
  - `layout/base.html`: Base layout template
  - `macros/` and `partials/`: Reusable template components
- **models/**: Content type definitions (.ini files)
  - `blog.ini`: Inherits from page, adds pub_date, ordered by -pub_date
  - `project.ini`: Inherits from page, adds release_date
  - `about.ini`: Inherits from page, adds order field
  - `page.ini`: Base model with title and markdown body
- **assets/**: Static assets (images, favicon)
- **webpack/**: Frontend build configuration
  - Uses Bulma CSS framework
  - Webpack 5 with Babel, Sass, and CSS loaders

### Custom Plugins
- **markdown-header-anchors** (packages/): Custom Lektor plugin that adds anchors to markdown headers and generates table of contents. Configured to use "custom" anchor-type, allowing manual anchor specification with `(#anchor-name)` syntax in headers.

### Configuration
- **Folyd.lektorproject**: Main project config
  - Packages: webpack-support, markdown-highlighter, atom feed
  - Deploy target: ghpages with CNAME=folyd.com
- **configs/**: Plugin configuration files

### Content Format
Blog posts and pages use `.lr` files with YAML-style frontmatter:
```
title: Post Title
---
pub_date: 2020-11-20
---
author: Folyd
---
body:

Markdown content here...
```
