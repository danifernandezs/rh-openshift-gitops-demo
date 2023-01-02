---
apiVersion: autoscaling.openshift.io/v1beta1
kind: MachineAutoscaler
metadata:
  name: ${infraName}-inframonit-eu-west-1a
  namespace: openshift-machine-api
spec:
  minReplicas: 1
  maxReplicas: 1
  scaleTargetRef:
    apiVersion: machine.openshift.io/v1beta1
    kind: MachineSet
    name: ${infraName}-inframonit-eu-west-1a
---
apiVersion: autoscaling.openshift.io/v1beta1
kind: MachineAutoscaler
metadata:
  name: ${infraName}-inframonit-eu-west-1b
  namespace: openshift-machine-api
spec:
  minReplicas: 1
  maxReplicas: 1
  scaleTargetRef:
    apiVersion: machine.openshift.io/v1beta1
    kind: MachineSet
    name: ${infraName}-inframonit-eu-west-1b
---
apiVersion: autoscaling.openshift.io/v1beta1
kind: MachineAutoscaler
metadata:
  name: ${infraName}-inframonit-eu-west-1c
  namespace: openshift-machine-api
spec:
  minReplicas: 1
  maxReplicas: 1
  scaleTargetRef:
    apiVersion: machine.openshift.io/v1beta1
    kind: MachineSet
    name: ${infraName}-inframonit-eu-west-1c
