pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh '/Users/edwinamoo/.jenkins/projects/apache-maven-3.9.6/bin/mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts..."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "docker build -t tomcatsamplewebapp:${env.BUILD_ID} ."
            }
        }

    }
}