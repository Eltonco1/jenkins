node {
    
    stage('Git Clone Repo'){
        git branch: 'main', credentialsId: 'git', url: 'https://github.com/Eltonco1/jenkins.git'
    }
    
    stage ('Docker Build'){
        sh "sudo docker build -t onasanyatobby/elton_image:${BUILD_NUMBER} ."
    }

    stage ('Docker Run'){
       sh "sudo docker run -itd --name elton_${BUILD_NUMBER} -p ${BUILD_NUMBER}:80 onasanyatobby/elton_image:${BUILD_NUMBER}  /bin/bash "    
    }
    stage ('Docker push'){
       sh "sudo docker push onasanyatobby/elton_image:${BUILD_NUMBER} "    
    }
    

}
