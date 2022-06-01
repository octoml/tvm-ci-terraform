jenkins:
  clouds: 
  
  %{~ for name,attributes in fleet_attributes  ~}
  - ec2Fleet:
      addNodeOnlyIfRunning: false
      alwaysReconnect: false
      cloudStatusIntervalSec: 10
      computerConnector:
        sSHConnector:
          credentialsId: "jenkins"
          launchTimeoutSeconds: 60
          maxNumRetries: 10
          port: 22
          retryWaitTime: 15
          sshHostKeyVerificationStrategy: "nonVerifyingKeyVerificationStrategy"
      disableTaskResubmit: false
      fleet: ${name}
      idleMinutes: 1
      initOnlineCheckIntervalSec: 15
      initOnlineTimeoutSec: 180
      labelString: "${attributes.labels}"
      maxSize: ${attributes.max_size}
      maxTotalUses: 10
      minSize: ${attributes.min_size}
      name: "${name}"
      noDelayProvision: true
      numExecutors: 1
      oldId: "803939ae-c6f8-4c7a-8386-0d1a9af631ad"
      privateIpUsed: true
      region: "us-west-2"
      restrictUsage: true
      scaleExecutorsByWeight: false
  
  %{~ endfor ~}
