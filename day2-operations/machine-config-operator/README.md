# Resources to be configured or created

- Machine Config Pool
- Cluster Autoscaler
- Machine Set
- Machine Autoscaler

# Bootstrap process

This repository include an install.sh script.

This script requires a value to indicate the overlay environment to generate yaml files and where the resources are going to be applied.

ex: 
```bash
./install.sh in-cluster
```

The script makes the following steps:
- A question to delete or not all the machineset applied to the cluster
- A question to delete or not all the machineautoscaler applied to the cluster
- Generate the machineset yaml files for the indicated env
- Generate the machineautoscaler yaml files for the indicated env
- A question to apply or not the generated yaml files

## Folder tree

```bash
.
├── base
│   ├── clusterautoscaler
│   │   └── clusterautoscaler.yaml
│   ├── kustomization.yaml
│   └── mcp
│       ├── compute-mcp.yaml
│       ├── infra-mcp.yaml
│       └── inframonit-mcp.yaml
├── install.sh
├── overlays
│   └── in-cluster
│       ├── kustomization.yaml
│       ├── machineautoscaler
│       │   ├── compute-machineautoscaler.tpl
│       │   ├── infra-machineautoscaler.tpl
│       │   └── inframonit-machineautoscaler.tpl
│       └── machineset
│           ├── compute-machineset.tpl
│           ├── infra-machineset.tpl
│           └── inframonit-machineset.tpl
└── README.md
```

# Official Documentation

[Understanding the Machine Config Operator](https://docs.openshift.com/container-platform/4.11/post_installation_configuration/machine-configuration-tasks.html#understanding-the-machine-config-operator)
