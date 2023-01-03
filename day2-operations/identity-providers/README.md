# Resources to be configured or created

- Configure the Cluster OAuth resource
- Create the htpasswd users secret
- ClusterroleBing for the htpasswd users

### Demo users

```
ocpadmin/admin
ocpreader/reader
```

## Folder tree

```bash
.
├── base
│   ├── htpasswd
│   │   ├── htpasswd-secret.yaml
│   │   ├── ocpadmin-clusterrolebinding.yaml
│   │   ├── ocpreader-clusterrolebinding.yaml
│   │   └── users.htpasswd
│   ├── kustomization.yaml
│   └── oauth
│       └── oauth.yaml
├── overlays
│   └── in-cluster
│       └── kustomization.yaml
└── README.md
```

# Official Documentation

[Configuring an LDAP identity provider](https://docs.openshift.com/container-platform/4.11/authentication/identity_providers/configuring-ldap-identity-provider.html)<br>
[Configuring an HTPasswd identity provider](https://docs.openshift.com/container-platform/4.11/authentication/identity_providers/configuring-htpasswd-identity-provider.html)<br>
[Syncing the LDAP server with OpenShift Container Platform](https://docs.openshift.com/container-platform/4.11/authentication/ldap-syncing.html#ldap-syncing-running-all-ldap_ldap-syncing-groups)
