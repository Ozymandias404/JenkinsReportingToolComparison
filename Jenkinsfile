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
                    script {
                        allure([
                            includeProperties: false,
                            jdk: '',
                            properties: [],
                            reportBuildPolicy: 'ALWAYS',
                            results: [
                                [path: 'features/reports']
                            ]
                        ])
                    }
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