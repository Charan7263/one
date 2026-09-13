def call(String imageName, String tag) {

    echo "Pushing Docker image"

    withDockerRegistry(
        credentialsId: 'dockerhub-creds'
    ) {

        sh "docker push ${imageName}:${tag}"

    }

}