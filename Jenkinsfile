pipeline {
    agent any

    stages {
         stage('Build') {
            steps {
                docker build -t nginx .
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
