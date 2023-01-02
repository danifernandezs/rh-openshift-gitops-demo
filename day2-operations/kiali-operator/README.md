# Resources to be configured or created

- Kiali Subscription

NOTE: The applied configuration have the installPlan approval policy as manual, after the apply of this resources, you need to review the generated installPlan and approve it.

## Folder tree

```bash
.
├── base
│   ├── kustomization.yaml
│   └── subscription
│       └── kiali.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[About OpenShift Service Mesh](https://docs.openshift.com/container-platform/4.11/service_mesh/v2x/ossm-about.html)
