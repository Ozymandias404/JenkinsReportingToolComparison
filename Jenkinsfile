pipeline {
agent any
    stages {
        stage('Script') {
            agent any
            steps {
                dir("features"){
                    sh "behave --junit test1.feature"
                    sh "ls -a"
                    sh "pwd"
                }
            }
        }
    }
    post {
        always {
            junit 'features/reports/*.xml'
            echo 'End of pipeline!'
        }
    }
}