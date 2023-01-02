# Resources to be configured or created

Sample kustomization folder to create 2 namespaces

- Namespace

## Folder tree

```bash
.
├── base
│   ├── kustomization.yaml
│   └── namespace
│       ├── test1.yaml
│       └── test2.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation
[Namespace [v1]](https://docs.openshift.com/container-platform/4.11/rest_api/metadata_apis/namespace-v1.html)
