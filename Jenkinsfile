pipeline {
  agent any

    environment
    {
      access_key = credentials('aws_access_key')
        secret_key = credentials('aws_secret_key')
    }

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform plan
            terraform apply -auto-approve -var "access_key=${AKIA27ZBNVBRBHPYGJ6P}" -var "secret_key=${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}" 
        '''
      }
    }  
  }
}
