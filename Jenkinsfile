pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'P8_github_token',
                url: 'https://github.com/ulisesojeda/docker-sample-nginx.git'
         }
      }
      stage('Build') {
          steps {
              sh 'sudo docker build -t mynginx .'
          }
      }
      stage('Lint') {
          steps {
              sh 'echo flake8'
          }
      }
      stage('Test') {
          steps {
              sh 'echo pytest'
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backdend:8000/deploy/?id=P8 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
