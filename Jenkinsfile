pipeline {
  agent any

    environment
    {
      access_key = AKIA27ZBNVBRKMTOZYBV
        secret_key = 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
    }

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform plan
            terraform apply  -auto-approve  -var access_key=AKIA27ZBNVBRKMTOZYBV -var secret_key=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
        '''
      }
    }  
  }
}
