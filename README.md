# PakVista - CI/CD Pipeline

## Project Purpose

PakVista is a static tourism website showcasing Pakistan's premier destinations with a fully automated CI/CD pipeline. The project demonstrates professional DevOps practices through containerization, automated testing, and continuous deployment to production environments.

## Key Features

- **Automated Code Quality**: HTML and CSS linting on every pull request
- **Containerized Deployment**: Docker-based application with multi-stage builds
- **Continuous Integration**: Automated testing and build verification on develop branch
- **Continuous Deployment**: One-click deployment to Render via webhook triggers
- **Multi-environment Support**: Separate development workflows for staging and production
- **GitHub Actions Automation**: Complete pipeline orchestration with environment-based secrets management

## Project Structure

| Component            | Location                                | Purpose                                 |
| -------------------- | --------------------------------------- | --------------------------------------- |
| Application Code     | `source/index.html`, `styles/style.css` | Static website content and styling      |
| Public Assets        | `public/`                               | Image assets for destination cards      |
| Docker Configuration | `Dockerfile`                            | Container build specification           |
| CI Pipeline          | `.github/workflows/ci-dev.yml`          | Pull request validation and image build |
| CD Pipeline          | `.github/workflows/cd-dev.yml`          | Production deployment trigger           |
| Linting Config       | `.htmlhintrc`, `.stylelintrc.json`      | Code quality standards                  |

## Team Members

| Member   | GitHub Username   | HTML Page    | Workflow File          |
| -------- | ----------------- | ------------ | ---------------------- |
| Member 1 | tajhussain7       | index.html   | ci-dev.yml, cd-dev.yml |
| Member 2 | MeNabeel          | lahore.html  | ci-staging.yml         |
| Member 3 | muhammadmutiullah | hunza.html   | cd-staging.yml         |
| Member 4 | 2004-sabir        | karachi.html | ci-prod.yml            |
| Member 5 | awaisbhadera      | swat.html    | cd-prod.yml            |

## Workflows

### ci-dev.yml

- **Trigger**: Pull request to `develop` branch
- **Actions**: Install dependencies → Lint HTML → Lint CSS → Build with Parcel → Docker login → Build and push image with tags `dev-latest` and `dev-{commit-sha}`

### cd-dev.yml

- **Trigger**: Push to `develop` branch
- **Actions**: Trigger Render deployment hook → Confirm deployment
- **Environment**: Development

## Deployment Links

Access the application in different environments:

- **Development**: https://pakvista-cicd-prod-latest.onrender.com
- **Staging**: https://pakvista-cicd-staging-latest-b1pd.onrender.com
- **Production**: https://pakvista-cicd-prod-latest.onrender.com

## Technologies

- **Build Tool**: Parcel 2.12.0
- **Linting**: HTMLHint 1.1.4, stylelint 16.6.1
- **Containerization**: Docker + nginx
- **Deployment**: Render
- **CI/CD**: GitHub Actions
