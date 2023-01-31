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
                    dir("selenium-aws/tests"){
                        junit 'reports/*.xml'
                        script {
                            allure([
                                includeProperties: false,
                                jdk: '',
                                properties: [],
                                reportBuildPolicy: 'ALWAYS',
                                results: [
                                    [path: 'reports']
                                ]
                            ])
                        }
                    }
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