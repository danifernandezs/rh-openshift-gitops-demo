# Resources to be configured or created

- CIS Compliance ScanSettingBinding

```bash
.
├── base
│   ├── kustomization.yaml
│   ├── scansettingbinding
│   │   └── cis-compliance.yaml
│   └── scansettings
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Running compliance scans](https://docs.openshift.com/container-platform/4.11/security/compliance_operator/compliance-scans.html#running-compliance-scans_compliance-operator-scans)
