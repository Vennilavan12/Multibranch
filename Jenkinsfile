pipeline {
    agent any

    stages {
        stage('Build Dev Image') {
            when {
                branch 'dev'
            }
            steps {
                 
                 docker build -t vennilavan/dev .
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                 docker build -t vennilavan/prod .
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
                 sh 'chmod +x script.sh'
                 sh './script.sh' 
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
