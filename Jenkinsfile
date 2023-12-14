pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('nginx')
                }
            }
        }

        stage('Test') {
            steps {
                echo "Testing"
                // Add your testing steps here
            }
        }

        stage('Deploy to Dev') {
            agent {
                label 'agent'
            }
            when {
                branch 'dev'
            }
            steps {
                echo "Deploying to dev branch"
                sh 'chmod +x script.sh'
                sh './script.sh'
                // Additional deployment steps for dev
            }
        }

        stage('Deploy to Prod') {
            agent {
                label 'agent'
            }
            when {
                branch 'master'
            }
            steps {
                echo "Deploying to Prod branch"
                // Additional deployment steps for prod
            }
        }
    }
}
