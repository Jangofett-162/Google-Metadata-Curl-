#!/bin/bash
Zone=$(curl -s http://metadata.google.internal/computeMetadata/v1/instance/zone -H "Metadata-Flavor: Google")
MachineType=$(curl -s http://metadata.google.internal/computeMetadata/v1/instance/machine-type -H "Metadata-Flavor: Google")
Disk=$(curl -s http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true -H "Metadata-Flavor: Google")
Network=$(curl -s http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces?recursive=true -H "Metadata-Flavor: Google")
echo "********** Cost of CloudShell **********"
echo "Zone is "$Zone
echo ""
echo "MachineType is "$MachineType
echo ""
echo "Disk is "$Disk
echo ""
echo "Network is "$Network
echo ""
