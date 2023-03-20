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
        sh
            terraform --version
            terraform init
            terraform apply
      }
    }  
  }
}

