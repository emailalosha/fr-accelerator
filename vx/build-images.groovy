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
                            
                           
                           
                        }
                    }
                }
            }
    
    }