1. You push code to GitHub
GitHub is your version control system and the trigger for Jenkins to start the CI/CD process.

2. Jenkins is triggered
-didn't create webhooks manually, but Jenkins created them for you automatically when you connected it to your GitHub repo.
-every time you git push, GitHub notifies Jenkins using that webhook

webhooks-automatic build otherwise "build now"

I used GitHub Webhooks, triggered automatically when Jenkins was linked to my repo. This allowed Jenkins to start a pipeline run immediately on every push, making my CI/CD pipeline fully automated
My CI/CD pipeline pulls code from GitHub into Jenkins, builds the app in Docker, and deploys it to Render using a deploy hook. I trigger builds manually in Jenkins. I haven’t used GitHub webhooks yet — but they can be added to make the build automatic on every push










What Jenkins Does:
Jenkinsfile (CI/CD script) tells it to:
Pull your repo from GitHub

Run tests (e.g., in test.js)

Build Docker image using Dockerfile

Push image to DockerHub (if configured)

Send deploy request to Render via deploy hook

