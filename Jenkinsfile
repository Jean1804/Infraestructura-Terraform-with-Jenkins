pipeline {
  agent any

    environment
    {
      access_key = credentials('AKIA27ZBNVBRKMTOZYBV')
        secret_key = credentials('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')
    }

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform plan
            terraform apply  -auto-approve  -var access_key=${access_key} -var secret_key=${secret_key}
        '''
      }
    }  
  }
}
