pipeline{
    
agent () 
    {
        docker 
            {
                label 'raining-lab-2.reed.com'
                image 'centos-with-docker:latest'
                args  '-v /var/run/docker.sock:/var/run/docker.sock --name my-docker -u root'
            }
    }
    
stages
    {
        stage('step-1')
            {
                steps{
                    script
                        {
                            
                        sh 'docker build -f base-images/Dockerfile -t jdk-11-jenkins-build .'
                        sh 'docker logout'
                        sh 'docker login -u testing -p Jaimatadi211@ awsdevopsartifactory.jfrog.io'
                        sh 'docker tag jdk-11-jenkins-build:latest awsdevopsartifactory.jfrog.io/docker-virtual-repo/jdk-11-jenkins-build:latest'
                        sh 'docker push awsdevopsartifactory.jfrog.io/docker-virtual-repo/jdk-11-jenkins-build:latest'
                        }
                    }
                }
            }
    
    }
