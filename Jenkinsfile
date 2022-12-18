ipipeline {
        agent {
                label 'slave1'
                }
        stages {
                stage ("pull-scm-code") {
                        steps {
                                git branch: 'main', url: 'https://github.com/siddharth0595/python-docker-pipeline.git'
                                }
                        }
                stage ("build-image") {
                        steps {
                                sh 'sudo docker build -t python:$BUILD_TAG .'
                                sh 'sudo docker tag python:$BUILD_TAG siddharth121/python-docker:$BUILD_TAG'
                                }
                        }
		stage("Docker Hub") {
			steps {
			withCredentials([string(credentialsId: 'docker_hub', variable: 'docker_hub_password_var')])   {
				sh 'sudo docker login -u siddharth121 -p ${docker_hub_password_var}'
				sh 'sudo docker push siddharth121/python-docker:$BUILD_TAG'
					}
				}
			}
		 stage ("test") {
                        steps {
                                sh 'sudo docker run -dit -p 8081:8080 --name web1 siddharth121/python-docker:$BUILD_TAG'
                                }
                        }
                stage ("Qat-test") {
                        steps {
                                sh 'python3 -V'
                                sh 'python3 cp.py'
                                sh 'python3 test.py'
                                }
                        }
                }
        }
