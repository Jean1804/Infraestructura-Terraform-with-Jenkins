pipeline {
  agent any

    environment
    {
      access_key = credentials('Llave_Acceso')
        secret_key = credentials('Llave_Secreta')
    }

  stages {
    stage('terraform') {
      steps {
        sh '''
            terraform --version
            terraform init
            terraform apply -auto-approve -var access_key="AKIA27ZBNVBRBHPYGJ6P" -var secret_key="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" 
        '''
      }
    }  
  }
}
