# Resources to be configured or created

- Storage classes resources

## Folder tree

```bash
.
├── base
│   ├── kustomization.yaml
│   └── storageclasses
│       ├── gp2-csi.yaml
│       ├── gp2.yaml
│       └── gp3-csi.yaml
├── overlays
│   └── lab
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Changing the default storage class](https://docs.openshift.com/container-platform/4.11/post_installation_configuration/storage-configuration.html#change-default-storage-class_post-install-storage-configuration)
