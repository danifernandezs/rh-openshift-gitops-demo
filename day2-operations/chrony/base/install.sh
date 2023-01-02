#!/bin/bash

set -o errexit  # exit when a command fails
set -o nounset  # exit when use undeclared variables
set -o pipefail # return the exit code of the last command that threw a non-zero

# Checking the requirements

# Check if butane is installed
if ! command -v butane > /dev/null; then
    echo "Error: butane is not installed. Please install butane and try again."
    exit 1
fi

# Input variables
directory="$1"

# Check if a kustomization file exists
if test -f kustomization.yaml; then
    echo "kustomization.yaml exists"

    echo "Exiting"

    exit 1

else
    echo "kustomization.yaml does not exist"
    echo ""
    echo "Create a new one, with the resources section empty"

    touch kustomization.yaml

    echo "---
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

resources:" > kustomization.yaml
fi

# Initialize an empty array to store the .yaml filenames
yaml_filenames=()

# Find all .bu files in the current directory
for bu_filename in $(find "$directory" -name "*.bu"); do

  # Echoing the obtained butane file
  echo "Butane file found: $bu_filename"

  # Remove the .bu suffix from the filename
  yaml_filename="99-$(basename "$bu_filename" .bu)-chrony.yaml"

  # Echoing the yaml file name to create
  echo "YAML file to be created: $yaml_filename"

  butane "$bu_filename" -o "$1/$yaml_filename"

  echo "File created"
  echo ""

  # Add the .yaml filename to the array
  yaml_filenames+=("$yaml_filename")

done

# Update the kustomization.yaml file with the list of .yaml filenames
for yaml_filename in "${yaml_filenames[@]}"; do
  echo "  - $directory/$yaml_filename" >> "kustomization.yaml"
done
