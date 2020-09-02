pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'P4_github_token',
                url: 'https://github.com/ulisesojeda/docker-sample-nginx.git'
         }
      }
      stage('Build') {
          steps {
              sh 'docker build -t mynginx .'
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
              sh 'curl http://backend:8000/deploy/?id=P4 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
