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
            terraform apply -auto-approve -var "access_key=${AKIA27ZBNVBRDPFRZL6R}" -var "secret_key=${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}" 
        '''
      }
    }  
  }
}

