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
            terraform apply  -auto-approve  -var "access_key=${access_key}" -var "secret_key=${secret_key}"
        '''
      }
    }  
  }
}
