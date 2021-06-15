pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "Maven"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/ShivDj/javaProjectJenkins.git'

                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        } 
        stage('transfer') {
            steps {
                
               sh 'rsync -r -e "ssh -i /var/lib/jenkins/public_instance_key.pem" /var/lib/jenkins/workspace/javaspring/target/SpringBootDemoProject-0.0.1-SNAPSHOT.jar ubuntu@13.127.89.96:/home/ubuntu/'
               
               sh 'rsync -r -e "ssh -i /var/lib/jenkins/public_instance_key.pem" /var/lib/jenkins/workspace/javaspring/javachatapp.service ubuntu@13.127.89.96:/home/ubuntu/'
                      
               sh 'rsync -r -e  "ssh -i /var/lib/jenkins/public_instance_key.pem" /var/lib/jenkins/workspace/javaspring/start.sh ubuntu@13.127.89.96:/home/ubuntu/'
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@13.127.89.96 "bash /home/ubuntu/start.sh"'        
                
            }
        }
        
    }
}
