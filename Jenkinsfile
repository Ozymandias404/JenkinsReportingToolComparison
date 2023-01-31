pipeline {
agent any
    stages {
        stage('Script') {
            agent any
            steps {
                dir("features"){
                    sh "behave test1.feature"
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