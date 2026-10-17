# Static Website CI/CD Automation Project

This repository houses the customized static admin dashboard configuration deployed for **CloudTech Solutions**.

## Built Workflow Features
* Automated image layer optimization using containerized Docker engines.
* Complete 7-stage automated delivery architecture mapped via a Jenkins Declarative Pipeline script.
## Local Docker Testing Workflow

The following commands were utilized to containerize and locally verify the static website application:

```bash
# Build the Docker image using the lightweight Nginx Alpine base image
docker build -t static-website-cicd:v1 .

# Run the container in detached mode and map host port 8080 to container port 80
docker run -d -p 8080:80 --name cloudtech-dashboard static-website-cicd:v1
```

To view the live running instance locally, navigate to `http://localhost:8080` in your web browser.

echo -e "\n## Cloud Image Registry Convention\nImages are tagged and uploaded following this format:\n\`chomolly123/static-website-cicd:TAG\`\nWhere \`TAG\` represents an immutable Git commit SHA." >> README.md
git add README.md && git commit -m "docs: append image registry naming rules to README" && git push origin main
