pipeline {
    agent any

    stages {
        stage('Stage') {
            steps {
		withMaven(maven : 'maven_3_8_1') {
                sh 'mvn clean compile'
        	    }	
		}
        }
    }
}
