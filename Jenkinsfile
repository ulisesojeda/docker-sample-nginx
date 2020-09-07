pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'nh_33_github_token',
                url: 'https://github.com/ulisesojeda/docker-sample-nginx.git'
         }
      }
      stage('Build') {
          steps {
              sh ''
          }
      }
      stage('Lint') {
          steps {
              sh ''
          }
      }
      stage('Test') {
          steps {
              sh ''
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backend:8000/deploy/?id=nh_33 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
