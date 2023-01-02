#!/usr/bin/env bash

set -o errexit  # exit when a command fails
set -o nounset  # exit when use undeclared variables
set -o pipefail # return the exit code of the last command that threw a non-zero

# Input variables
OCP_ENVIRONMENT="$1"

# Deleting all the machinesets
while true; do
    echo "========================================"
    echo " Do you want to delete all the MachineSets?"
    echo "    - Yes   : Delete all the MachineSet resources"
    echo "    - No    : Skip this step"
    echo "========================================"
    read -p "" machineset
    case $machineset in
        [Yy]* ) echo ""

                oc delete machineset --all -n openshift-machine-api

            break;;
        [Nn]* ) echo "Skipping the step"; break;;
        * ) for run in {1..10}; do
              echo ""
            done
            echo "========================================"
            echo "Please answer Yes or No."
            echo "========================================" ;;
    esac
done

# Deleting all the machineautoscalers
while true; do
    echo "========================================"
    echo " Do you want to delete all the MachineAutoscaler?"
    echo "    - Yes   : Delete all the MachineAutoscaler resources"
    echo "    - No    : Skip this step"
    echo "========================================"
    read -p "" machineautoscaler
    case $machineautoscaler in
        [Yy]* ) echo ""

                oc delete machineautoscaler --all -n openshift-machine-api

            break;;
        [Nn]* ) echo "Skipping the step"; break;;
        * ) for run in {1..10}; do
              echo ""
            done
            echo "========================================"
            echo "Please answer Yes or No."
            echo "========================================" ;;
    esac
done

# Finding the infraName
export infraName="$(oc get -o jsonpath='{.status.infrastructureName}{"\n"}' infrastructure cluster)"

echo "The Cluster infraName is: $infraName"
echo ""

# Find all .tpl files in the machineautoscaler directory
for machineautoscaler_filename in $(find "overlays/${OCP_ENVIRONMENT}/machineautoscaler/" -name "*.tpl"); do

  # Echoing the obtained TPL file
  echo "TPL file found: $machineautoscaler_filename"


  # Remove the .tpl suffix from the filename
  yaml_filename="$(basename "$machineautoscaler_filename" .tpl).yaml"

  # Echoing the yaml file name to create
  echo "YAML file to be created: $yaml_filename"

  envsubst < ${machineautoscaler_filename} > overlays/${OCP_ENVIRONMENT}/machineautoscaler/${yaml_filename}

  echo "File created"
  echo ""

done

# Find all .tpl files in the machineset directory
for machineset_filename in $(find "overlays/${OCP_ENVIRONMENT}/machineset/" -name "*.tpl"); do

  # Echoing the obtained TPL file
  echo "TPL file found: $machineset_filename"


  # Remove the .tpl suffix from the filename
  yaml_filename="$(basename "$machineset_filename" .tpl).yaml"

  # Echoing the yaml file name to create
  echo "YAML file to be created: $yaml_filename"

  envsubst < ${machineset_filename} > overlays/${OCP_ENVIRONMENT}/machineset/${yaml_filename}

  echo "File created"
  echo ""

done

# Time to apply the resources
while true; do
    echo "========================================"
    echo " Do you want to apply the generated resources?"
    echo "    - Yes   : Apply all the resources (including the MachineSet and MachineAutoscaler generated resources)"
    echo "    - No    : Skip this step"
    echo "========================================"
    read -p "" applyall
    case $applyall in
        [Yy]* ) echo ""

                oc apply -k overlays/${OCP_ENVIRONMENT}

            break;;
        [Nn]* ) echo "Skipping the step";echo "REMEMBER: You can apply all this resources when you want";break;;
        * ) for run in {1..10}; do
              echo ""
            done
            echo "========================================"
            echo "Please answer Yes or No."
            echo "========================================" ;;
    esac
done
