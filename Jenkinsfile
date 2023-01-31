pipeline {
agent any
    stages {
        stage('Script') {
            agent any
            steps {
                dir("features"){
                    sh "behave test1.feature"
                    sh "behave --junit"
                }
            }
        }
    }
    post {
        always {
            junit 'reports/*.xml'
            echo 'End of pipeline!'
        }
    }
}