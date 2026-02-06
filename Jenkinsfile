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
                // Image ka naam 'my-html-web' rakhte hain
                sh 'docker build -t my-html-web .'
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    // Purana container stop aur remove karna taake error na aaye
                    try {
                        sh 'docker stop my-website && docker rm my-website'
                    } catch (e) {
                        echo "No existing container found."
                    }
                    // Port 8080 par website chalana
                    sh 'docker run -d --name my-website -p 8083:80 my-html-web'
                }
            }
        }
    }
}
