pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Your build steps here
            }
        }

        stage('Test') {
            steps {
                // Your test steps here
            }
        }

        stage('Deploy to Dev') {
            when {
                branch 'dev'
            }
            steps {
                // Deployment to dev environment
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                // Deployment to prod environment
            }
        }
    }
}
