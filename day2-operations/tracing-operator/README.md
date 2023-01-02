# Resources to be configured or created

- Required namespace
- Distributed Tracing OperatorGroup and Subscription

NOTE: The applied configuration have the installPlan approval policy as manual, after the apply of this resources, you need to review the generated installPlan and approve it.

## Folder tree

```bash
.
├── base
│   ├── kustomization.yaml
│   ├── namespace
│   │   └── tracing.yaml
│   ├── operatorgroup
│   │   └── tracing.yaml
│   └── subscription
│       └── tracing.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Installing the Red Hat OpenShift distributed tracing platform Operator](https://docs.openshift.com/container-platform/4.11/distr_tracing/distr_tracing_install/distr-tracing-installing.html#distr-tracing-jaeger-operator-install_install-distributed-tracing)
