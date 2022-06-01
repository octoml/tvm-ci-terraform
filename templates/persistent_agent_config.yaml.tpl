jenkins:
  nodes:
  %{~ for name,attributes in additional_agents ~}
  - permanent:
      labelString: "${attributes.labels}"
      launcher:
        ssh:
          credentialsId: "jenkins"
          host: "${attributes.host}"
          port: 22
          sshHostKeyVerificationStrategy: "nonVerifyingKeyVerificationStrategy"
      name: "${name}" 
      numExecutors: ${attributes.num_executors}
      remoteFS: "${attributes.remote_fs}"
      retentionStrategy: "always"
  %{~ endfor ~}
