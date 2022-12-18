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
                stage ("build-image") {
                        steps {
                                sh 'sudo docker build -t python:$BUILD_TAG .'
                                sh 'sudo docker tag python:$BUILD_TAG siddharth121/python-docker:$BUILD_TAG'
                                }
                        }
                stage ("test") {
                        steps {
                                sh 'python3 -V'
                                sh 'python3 cp.py'
                                sh 'python3 test.py'
                                }
                        }
                }
        }
