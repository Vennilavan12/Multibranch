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
            }
        }

        stage('Deploy to Dev') {
            when {
                branch 'dev'
            }
            steps {
                echo "Deploying to dev branch"
                sh 'chmod +x script.sh'
                sh './script.sh'
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying to Prod branch"
                sh 'chmod +x script.sh'
                sh './script.sh'
            }
        }
    }
}
