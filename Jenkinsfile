pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t my-html-web .'
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    try {
                        sh 'docker stop my-website && docker rm my-website'
                    } catch (e) {
                        echo "No existing container found."
                    }
                    sh 'docker run -d --name my-website -p 8083:80 my-html-web'
                }
            }
        }
    }
}
