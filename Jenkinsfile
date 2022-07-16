node {
    
    stage('Git Clone Repo'){
        git branch: 'main', credentialsId: 'git', url: 'https://github.com/stm1510/jenki.git'
    }
    
    stage ('Docker Build'){
        sh "docker build -t tawfiq15/httpd-cent:7 ."
    }

    stage ('Docker Push'){
       sh " docker push tawfiq15/httpd-cent:7 "    
    }

    stage ('Docker Remove Image from Jenkins sever'){
    sh " docker rmi -f tawfiq15/httpd-cent:7"
    }
}
