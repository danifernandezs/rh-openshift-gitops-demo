# Resources to be configured or created

- Configure the self-provisioner clusterrolebinding

## Folder tree

```bash
.
├── base
│   ├── clusterrolebinding
│   │   └── selfprovisioner.yaml
│   └── kustomization.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Disabling project self-provisioning](https://docs.openshift.com/container-platform/4.11/applications/projects/configuring-project-creation.html#disabling-project-self-provisioning_configuring-project-creation)
