# Resources to be configured or created

- Move the default ingress controller to the infra nodes
- Edge ingress controller
- Internal ingress controller

## Folder tree

```bash
.
├── base
│   ├── ingresscontroller
│   │   ├── default.yaml
│   │   ├── edge.yaml
│   │   ├── internal-nodeport.yaml
│   │   └── internal.yaml
│   └── kustomization.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Configuring Ingress Controller sharding by using route labels](https://docs.openshift.com/container-platform/4.11/networking/configuring_ingress_cluster_traffic/configuring-ingress-cluster-traffic-ingress-controller.html#nw-ingress-sharding-route-labels_configuring-ingress-cluster-traffic-ingress-controller)<br>
[Ingress Controller configuration parameters](https://docs.openshift.com/container-platform/4.11/networking/ingress-operator.html#nw-ingress-controller-configuration-parameters_configuring-ingress)<br>
[Using X-Forwarded headers](https://docs.openshift.com/container-platform/4.11/networking/ingress-operator.html#nw-using-ingress-forwarded_configuring-ingress)<br>
[Customizing HAProxy error code response pages](https://docs.openshift.com/container-platform/4.11/networking/ingress-operator.html#nw-customize-ingress-error-pages_configuring-ingress)<br>
[Healthz router endpoint](https://github.com/openshift/router/blob/master/pkg/router/metrics/health.go#L40)
