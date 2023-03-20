pipeline {
  agent any

    environment
    {
      access_key = credentials('aws_access')
        secret_key = credentials('secret_key')
    }

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform plan
            terraform apply
        '''
      }
    }  
  }
}
