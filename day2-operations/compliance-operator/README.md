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
│   │   └── compliance.yaml
│   ├── operatorgroup
│   │   └── compliance.yaml
│   └── subscription
│       └── compliance.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Installing the Compliance Operator using the CLI](https://docs.openshift.com/container-platform/4.11/security/compliance_operator/compliance-operator-installation.html#installing-compliance-operator-cli_compliance-operator-installation)
