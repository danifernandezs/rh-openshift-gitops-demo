---
apiVersion: machine.openshift.io/v1beta1
kind: MachineSet
metadata:
  name: ${infraName}-compute-eu-west-1a
  namespace: openshift-machine-api
spec:
  replicas: 1
  selector:
    matchLabels:
      machine.openshift.io/cluster-api-cluster: ${infraName}
      machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1a
  template:
    metadata:
      labels:
        machine.openshift.io/cluster-api-cluster: ${infraName}
        machine.openshift.io/cluster-api-machine-role: compute
        machine.openshift.io/cluster-api-machine-type: compute
        machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1a
    spec:
      metadata:
        labels:
          node-role.kubernetes.io/compute: ""
      providerSpec:
        value:
          userDataSecret:
            name: compute-user-data-managed
          placement:
            availabilityZone: eu-west-1a
            region: eu-west-1
          credentialsSecret:
            name: aws-cloud-credentials
          instanceType: m5.2xlarge
          blockDevices:
            - ebs:
                encrypted: true
                iops: 0
                kmsKey:
                  arn: ''
                volumeSize: 100
                volumeType: gp3
          securityGroups:
            - filters:
                - name: 'tag:Name'
                  values:
                    - ${infraName}-worker-sg
          kind: AWSMachineProviderConfig
          metadataServiceOptions: {}
          tags:
            - name: kubernetes.io/cluster/${infraName}
              value: owned
            - name: node-role
              value: compute
          deviceIndex: 0
          ami:
            id: ami-04e716ae12150f4a6
          subnet:
            filters:
            - name: tag:Name
              values:
              - ${infraName}-private-eu-west-1a
          apiVersion: machine.openshift.io/v1beta1
          iamInstanceProfile:
            id: ${infraName}-worker-profile
---
apiVersion: machine.openshift.io/v1beta1
kind: MachineSet
metadata:
  name: ${infraName}-compute-eu-west-1b
  namespace: openshift-machine-api
spec:
  replicas: 1
  selector:
    matchLabels:
      machine.openshift.io/cluster-api-cluster: ${infraName}
      machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1b
  template:
    metadata:
      labels:
        machine.openshift.io/cluster-api-cluster: ${infraName}
        machine.openshift.io/cluster-api-machine-role: compute
        machine.openshift.io/cluster-api-machine-type: compute
        machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1b
    spec:
      metadata:
        labels:
          node-role.kubernetes.io/compute: ""
      providerSpec:
        value:
          userDataSecret:
            name: compute-user-data-managed
          placement:
            availabilityZone: eu-west-1b
            region: eu-west-1
          credentialsSecret:
            name: aws-cloud-credentials
          instanceType: m5.2xlarge
          blockDevices:
            - ebs:
                encrypted: true
                iops: 0
                kmsKey:
                  arn: ''
                volumeSize: 100
                volumeType: gp3
          securityGroups:
            - filters:
                - name: 'tag:Name'
                  values:
                    - ${infraName}-worker-sg
          kind: AWSMachineProviderConfig
          metadataServiceOptions: {}
          tags:
            - name: kubernetes.io/cluster/${infraName}
              value: owned
            - name: node-role
              value: compute
          deviceIndex: 0
          ami:
            id: ami-04e716ae12150f4a6
          subnet:
            filters:
            - name: tag:Name
              values:
              - ${infraName}-private-eu-west-1b
          apiVersion: machine.openshift.io/v1beta1
          iamInstanceProfile:
            id: ${infraName}-worker-profile
---
apiVersion: machine.openshift.io/v1beta1
kind: MachineSet
metadata:
  name: ${infraName}-compute-eu-west-1c
  namespace: openshift-machine-api
spec:
  replicas: 1
  selector:
    matchLabels:
      machine.openshift.io/cluster-api-cluster: ${infraName}
      machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1c
  template:
    metadata:
      labels:
        machine.openshift.io/cluster-api-cluster: ${infraName}
        machine.openshift.io/cluster-api-machine-role: compute
        machine.openshift.io/cluster-api-machine-type: compute
        machine.openshift.io/cluster-api-machineset: ${infraName}-compute-eu-west-1c
    spec:
      metadata:
        labels:
          node-role.kubernetes.io/compute: ""
      providerSpec:
        value:
          userDataSecret:
            name: compute-user-data-managed
          placement:
            availabilityZone: eu-west-1c
            region: eu-west-1
          credentialsSecret:
            name: aws-cloud-credentials
          instanceType: m5.2xlarge
          blockDevices:
            - ebs:
                encrypted: true
                iops: 0
                kmsKey:
                  arn: ''
                volumeSize: 100
                volumeType: gp3
          securityGroups:
            - filters:
                - name: 'tag:Name'
                  values:
                    - ${infraName}-worker-sg
          kind: AWSMachineProviderConfig
          metadataServiceOptions: {}
          tags:
            - name: kubernetes.io/cluster/${infraName}
              value: owned
            - name: node-role
              value: compute
          deviceIndex: 0
          ami:
            id: ami-04e716ae12150f4a6
          subnet:
            filters:
            - name: tag:Name
              values:
              - ${infraName}-private-eu-west-1c
          apiVersion: machine.openshift.io/v1beta1
          iamInstanceProfile:
            id: ${infraName}-worker-profile
