pipeline {
  agent any

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform apply -auto-approve -var access_key=AKIA27ZBNVBRFRLU6SXD -var secret_key=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
        '''
      }
    }  
  }
}
