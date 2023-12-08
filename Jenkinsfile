pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
               echo "Building"
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
                 echo "Deploy to dev branch"
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploy to Prod branch"
            }
        }
    }
}
