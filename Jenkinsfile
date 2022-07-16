node {
    
    stage('Git Clone Repo'){
        git branch: 'main', credentialsId: 'git', url: 'https://github.com/stm1510/jenki.git'
    }
    
    stage ('Docker Build'){
        sh "docker build -t tawfiq15/httpd-cent:${build_number} ."
    }

    stage ('Docker Push){
       sh " docker push tawfiq15/httpd-cent:${build_number} "    
    }
}
