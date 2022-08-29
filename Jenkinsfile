pipeline {
	agent none
	stages {
		stage('Estágio Compilando') {
			
			steps {
				withMaven (maven : 'maven_3_8_1') {
					sh 'mvn clean compile'
			}
		}
	}
		stage('Estágio de teste') {
		
			steps {
				withMaven(maven : 'maven_3_8_1') {
				sh "mvn test"
			}
		}
	}

		stage('Estágio de implementação') {
			
			steps {
				withMaven(maven : 'maven_3_8_1') {
					sh 'mvn deploy'
				}
			}
		}
	}
}