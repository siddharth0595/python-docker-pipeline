pipeline {
	agent {
		label 'slave1'
		}
	stages {
		stage ("pull-scm") {
			steps {
				git branch: 'python', url: 'https://github.com/siddharth0595/python-pipeline.git'
				}
			}
		stage ("build") {
			steps {
				sh 'python3 -V'
				sh 'python3 cp.py'
				}
			}
		stage ("test") {
			steps {
				sh 'python3 test.py'
				}
			}
		}
	}

