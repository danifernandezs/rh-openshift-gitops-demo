# All managed clusters

Here you can find an individual config.json file for each managed cluster.

Remember, you need API remote access to apply the resources at the destination cluster.

# Example file

The following example can have all the info that you want, we only need the name and endpoint to apply it at the ApplicationSet template motor level.

````json
{
  "environment": "Cluster ENV",
  "cloud": "Provider",
  "region": "Location",
  "cluster": {
    "name": "Cluster_Name",
    "address": "OCP_API_Endpoint"
  }
}
````
