# Resources to be configured or created

- Required namespace
- OperatorGroup
- Subscription

NOTE: The applied configuration have the installPlan approval policy as manual, after the apply of this resources, you need to review the generated installPlan and approve it.

## Folder tree

```bash
.
├── base
│   ├── kustomization.yaml
│   ├── namespace
│   │   └── file-integrity.yaml
│   ├── operatorgroup
│   │   └── file-integrity.yaml
│   └── subscription
│       └── file-integrity.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Installing the File Integrity Operator using the CLI](https://docs.openshift.com/container-platform/4.11/security/file_integrity_operator/file-integrity-operator-installation.html#installing-file-integrity-operator-using-cli_file-integrity-operator-installation)
