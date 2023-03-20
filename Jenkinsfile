pipeline {
  agent any

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform apply -auto-approve -var access_key="AKIA27ZBNVBRH3JRFDHG" -var secret_key="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"
        '''
      }
    }  
  }
}
