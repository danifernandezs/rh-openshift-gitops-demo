# Resources to be configured or created

- Create one machine config resource for each butane file

NOTE: to simplify, you can apply only one machine config resource for the master and workers nodes, because the rest of roles also use workers configuration.

# Bootstrap process

This repository include an install.sh script.

This script requires a value to indicate the folder where the butane files it's stored and will be used to generate the yaml files.

ex:
```bash
./install.sh machineconfig/
```

The script makes the following steps:
- Check if butane it's usable
- Check if kustomization file exists
  - If exists, the script exits
  - If not, a new empty kustomization file it's created
- Read the butane files and generates the yaml one
- Adds a line to the kustomization file with the generated yaml

## Folder tree

```bash
.
├── base
│   ├── install.sh
│   └── machineconfig
│       ├── master.bu
│       └── worker.bu
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Configuring chrony time service](https://docs.openshift.com/container-platform/4.11/post_installation_configuration/machine-configuration-tasks.html#installation-special-config-chrony_post-install-machine-configuration-tasks)
