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
            post {
                always {
                    junit 'features/reports/*.xml'
                    sh 'allure generate features/reports'
                }
            }
        }
    }
    post {
        always {
            echo 'End of pipeline!'
        }
    }
}